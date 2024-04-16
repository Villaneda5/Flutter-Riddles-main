class LayOutQuestion {
  final int id;
  final String text;
  final List<LayOutOption> options;
  bool isLocked;
  LayOutOption? selectedWiidgetOption;
  LayOutOption? correctAnswer;
  // final int timeSeconds;

  LayOutQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
    //  required this.timeSeconds
  });

  LayOutQuestion copyWith() {
    return LayOutQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
                LayOutOption(text: option.text, isCorrect: option.isCorrect),
          )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final layOutQuestionsList = [
  LayOutQuestion(
    text: "\t¿Qué es el patrimonio neto?",
    options: [
      const LayOutOption(text: "Activos menos pasivos.", isCorrect: true),
      const LayOutOption(text: "Valor financiero.", isCorrect: false),
      const LayOutOption(text: "Salud económica.", isCorrect: false),
      const LayOutOption(text: "Capital propio.", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
        const LayOutOption(text: "El patrimonio neto es la diferencia entre lo que una entidad posee (activos) y lo que debe (pasivos), representando su valor financiero.", isCorrect: true),
  ),
  LayOutQuestion(
    text:
        "\t¿Cuál de las siguientes opciones es un pasivo?",
    options: [
      const LayOutOption(text: "Edificio.", isCorrect: false),
      const LayOutOption(text: "Inventario.", isCorrect: false),
      const LayOutOption(text: "Préstamo bancario.", isCorrect: true),
      const LayOutOption(text: "Ingresos.", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const LayOutOption(text: "Un préstamo bancario es un pasivo, ya que representa una obligación financiera que una entidad tiene con una institución financiera y debe ser devuelta en el futuro.", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "¿Qué es el presupuesto?",
    options: [
      const LayOutOption(text: "Proyección financiera.", isCorrect: false),
      const LayOutOption(text: "ingresos y gastos.", isCorrect: false),
      const LayOutOption(text: "Control económico.", isCorrect: false),
      const LayOutOption(text: "Plan financiero.", isCorrect: true),
    ],
    id: 2,
    correctAnswer: const LayOutOption(text: "El presupuesto es un plan financiero que estima los ingresos y gastos futuros durante un período específico.", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "\t¿Cuál de las siguientes opciones es una forma de ingreso variable?",
    options: [
      const LayOutOption(text: "Bonos por rendimiento.", isCorrect: true),
      const LayOutOption(text: "Salario fijo.", isCorrect: false),
      const LayOutOption(text: "Alquiler mensual.", isCorrect: false),
      const LayOutOption(text: "Pensión de jubilación.", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const LayOutOption(text: "Una forma de ingreso variable es aquella que fluctúa según ciertos factores, como el desempeño de un negocio, las ventas de productos o servicios, o las comisiones por ventas.", isCorrect: true),
  ),
  // other 4
  LayOutQuestion(
    text:
        "\t¿Qué es el valor temporal del dinero?",
    options: [
      const LayOutOption(text: "el Dinero del hoy", isCorrect: false),
      const LayOutOption(text: "Importancia actual.", isCorrect: false),
      const LayOutOption(text: "Valor en el tiempo.", isCorrect: true),
      const LayOutOption(text: "Capacidad de ganancias.", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const LayOutOption(text: "El valor temporal del dinero es la idea de que un dólar hoy vale más que un dólar en el futuro debido a su potencial para generar ganancias adicionales a lo largo del tiempo.", isCorrect: true),
  ),
  
];
