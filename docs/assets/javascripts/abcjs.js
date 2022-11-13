document$.subscribe(function() {
  var abcTexts = document.querySelectorAll("pre.abctext")
  abcTexts.forEach(function(abcText) {
    if (!abcText.parentNode)
      return;

    var abcRendered = document.createElement("div");
    var abcPaper = document.createElement("div")
    abcRendered.appendChild(abcPaper)
    if (ABCJS.synth.supportsAudio()) {
      var abcAudio = document.createElement("div")
      abcRendered.appendChild(abcAudio)
      var abcAudioButton = document.createElement("button")
      abcAudioButton.className = "md-button"
      abcAudioButton.textContent = "Activate Audio"
      abcAudio.appendChild(abcAudioButton)
    }
    abcText.parentNode.replaceChild(abcRendered, abcText)

    // paper
    var abcObject = ABCJS.renderAbc(abcPaper, abcText.textContent, { responsive: 'resize' })
    // audio
    if (ABCJS.synth.supportsAudio()) {

      function CursorControl(root) {
        var self = this;
        // This demonstrates two methods of indicating where the music is.
        // 1) An element is created that is moved along for each note.
        // 2) The currently being played note is given a class so that it can be transformed.
        self.cursor = null; // This is the svg element that will move with the music.
        self.root = root; // This is the same selector as the renderAbc call uses.
        self.onStart = function() {
          // This is called when the timer starts so we know the svg has been drawn by now.
          // Create the cursor and add it to the sheet music's svg.
          var svg = self.root.querySelector(" svg");
          self.cursor = document.createElementNS("http://www.w3.org/2000/svg", "line");
          self.cursor.setAttribute("class", "abcjs-cursor");
          self.cursor.setAttributeNS(null, 'x1', 0);
          self.cursor.setAttributeNS(null, 'y1', 0);
          self.cursor.setAttributeNS(null, 'x2', 0);
          self.cursor.setAttributeNS(null, 'y2', 0);
          svg.appendChild(self.cursor);
        };
        self.removeSelection = function() {
          // Unselect any previously selected notes.
          var lastSelection = self.root.querySelectorAll(" .abcjs-highlight");
          for (var k = 0; k < lastSelection.length; k++)
              lastSelection[k].classList.remove("abcjs-highlight");
        };
        self.onEvent = function(ev) {
          // This is called every time a note or a rest is reached and contains the coordinates of it.
          if (ev.measureStart && ev.left === null)
              return; // this was the second part of a tie across a measure line. Just ignore it.
          self.removeSelection();
          // Select the currently selected notes.
          for (var i = 0; i < ev.elements.length; i++ ) {
            var note = ev.elements[i];
            for (var j = 0; j < note.length; j++) {
                note[j].classList.add("abcjs-highlight");
            }
          }
          // Move the cursor to the location of the current note.
          if (self.cursor) {
            self.cursor.setAttribute("x1", ev.left - 2);
            self.cursor.setAttribute("x2", ev.left - 2);
            self.cursor.setAttribute("y1", ev.top);
            self.cursor.setAttribute("y2", ev.top + ev.height);
          }
        };
        self.onFinished = function() {
          self.removeSelection();
          if (self.cursor) {
            self.cursor.setAttribute("x1", 0);
            self.cursor.setAttribute("x2", 0);
            self.cursor.setAttribute("y1", 0);
            self.cursor.setAttribute("y2", 0);
          }
        };
      }

      var cursorControl = new CursorControl(abcPaper);

      var onAbcAudioButtonClick = function () {
        abcAudio.removeChild(abcAudioButton)
        var abcSynthControl = new ABCJS.synth.SynthController();
        abcSynthControl.load(abcAudio, cursorControl, { displayLoop: true, displayRestart: true, displayPlay: true, displayProgress: true, displayWarp: true, displayClock: true });
        abcSynthControl.disable(true);
        var midiBuffer = new ABCJS.synth.CreateSynth();
        midiBuffer.init({ visualObj: abcObject[0], options: {} }).then(function () {
          abcSynthControl.setTune(abcObject[0], true).then(function (response) {
            document.querySelector(".abcjs-inline-audio").classList.remove("disabled");
          })
        });
      }

      abcAudioButton.addEventListener("click", onAbcAudioButtonClick)
    };
  })
})
