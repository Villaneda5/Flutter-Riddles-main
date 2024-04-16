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
      const LayOutOption(text: "Lo que tienes menos lo que debes.", isCorrect: true),
      const LayOutOption(text: "Todos los ingresos.", isCorrect: false),
      const LayOutOption(text: "El valor en una cuenta bancaria.", isCorrect: false),
      const LayOutOption(text: "Los bienes y propiedades de una persona.", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
        const LayOutOption(text: "Lo que tienes menos lo que debes.", isCorrect: true),
  ),
  LayOutQuestion(
    text:
        "\t¿Cuál de las siguientes opciones es un pasivo?",
    options: [
      const LayOutOption(text: "Acciones de una empresa.", isCorrect: false),
      const LayOutOption(text: "Cuenta de ahorros.", isCorrect: false),
      const LayOutOption(text: "Préstamo estudiantil.", isCorrect: true),
      const LayOutOption(text: "Ingresos mensuales.", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const LayOutOption(text: "Préstamo estudiantil.", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "¿Qué es el presupuesto?",
    options: [
      const LayOutOption(text: "Un plan para gestionar el dinero.", isCorrect: true),
      const LayOutOption(text: "Ahorro en cuenta bancaria.", isCorrect: false),
      const LayOutOption(text: "préstamo para comprar casa.", isCorrect: false),
      const LayOutOption(text: "Documento legal para impuestos.", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const LayOutOption(text: "Un plan para gestionar el dinero.", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "\t¿Cuál de las siguientes opciones es una forma de ingreso variable?",
    options: [
      const LayOutOption(text: "Salario mensual.", isCorrect: false),
      const LayOutOption(text: "Trabajos temporales.", isCorrect: true),
      const LayOutOption(text: "Inversiones bursátiles.", isCorrect: false),
      const LayOutOption(text: "Dinero ganado en una lotería.", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const LayOutOption(text: "Trabajos temporales.", isCorrect: true),
  ),
  // other 4
  LayOutQuestion(
    text:
        "\t¿Qué es el valor temporal del \ndinero?",
    options: [
      const LayOutOption(text: "Dinero por bienes y servicios.", isCorrect: false),
      const LayOutOption(text: "Ahorros en cuenta bancaria.", isCorrect: false),
      const LayOutOption(text: "El valor de los ingresos mensuales.", isCorrect: false),
      const LayOutOption(text: "El dinero hoy vale más que mañana.", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const LayOutOption(text: "El dinero hoy vale más que mañana\n jajajajajajjajajajajepepepepepep.", isCorrect: true),
  ),
  
];
