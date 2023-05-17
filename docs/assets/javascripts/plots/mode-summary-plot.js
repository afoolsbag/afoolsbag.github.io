document$.subscribe(() => {
  const elem = document.getElementById('mode-summary-plot')
  if (elem?.tagName !== 'DIV')
    return;

  // [Plotly.newPlot](https://plotly.com/javascript/plotlyjs-function-reference/#plotlynewplot)
  Plotly.newPlot(elem, [
    {
      name: '伊奥尼亚 Ionian、自然大调 Natural Major',
      y: [0, 2, 4, 5, 7, 9, 11, 12]
    },
    {
      name: '多利亚 Dorian',
      y: [0, 2, 3, 5, 7, 9, 11, 12]
    },
    {
      name: '弗里吉亚 Phrygian',
      y: [0, 1, 3, 5, 7, 8, 10, 12]
    },
    {
      name: '利底亚 Lydian',
      y: [0, 2, 4, 6, 7, 9, 11, 12]
    },
    {
      name: '混合利底亚 Mixolydian',
      y: [0, 2, 4, 5, 7, 9, 10, 12]
    },
    {
      name: '爱奥尼亚 Aeolian、自然小调 Natural Minor',
      y: [0, 2, 3, 5, 7, 8, 10, 12]
    },
    {
      name: '洛克里亚 Locrian ',
      y: [0, 1, 3, 5, 6, 8, 10, 12]
    },
    {
      name: '和声大调 Harmonic Major',
      y: [0, 2, 4, 5, 7, 8, 11, 12]
    },
    {
      name: '和声小调 Harmonic Minor',
      y: [0, 2, 3, 5, 7, 8, 11, 12]
    },
    {
      name: '旋律大调 Melodic Major',
      y: [0, 2, 4, 5, 7, 8, 10, 12]
    },
    {
      name: '旋律小调 Melodic Minor',
      y: [0, 2, 3, 5, 7, 9, 11, 12]
    },
  ], {
    title: '调式概要',
    xaxis: {
      title: '音级',
      tickvals: [0, 1, 2, 3, 4, 5, 6, 7],
      ticktext: ['Ⅰ', 'Ⅱ', 'Ⅲ', 'Ⅳ', 'Ⅴ', 'Ⅵ', 'Ⅶ', 'Ⅷ'],
      zeroline: false
    },
    yaxis: {
      title: '音高',
      dtick: 1,
      tickvals: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      ticktext: ['纯一度（+0）', '小二度（+1）', '大二度（+2）', '小三度（+3）', '大三度（+4）', '纯四度（+5）', '增四度、减五度（+6）', '纯五度（+7）', '小六度（+8）', '大六度（+9）', '小七度（+10）', '大七度（+11）', '纯八度（+12）'],
      zeroline: false
    }
  })
});
