class WidgetQuestion {
  final int id;
  final String text;
  final List<WiidgetOption> options;
  bool isLocked;
  WiidgetOption? selectedWiidgetOption;
  WiidgetOption correctAnswer;

  WidgetQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  WidgetQuestion copyWith() {
    return WidgetQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              WiidgetOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class WiidgetOption {
  final String? text;
  final bool? isCorrect;

  const WiidgetOption({
    this.text,
    this.isCorrect,
  });
}

final widgetQuestionsList = [
  WidgetQuestion(
    text:
        "¿Qué es un presupuesto?",
    options: [
      const WiidgetOption(text: "Un Plan.", isCorrect: true),
      const WiidgetOption(text: "Un Deseo.", isCorrect: false),
      const WiidgetOption(text: "Un Ahorro.", isCorrect: false),
      const WiidgetOption(text: "Un Gasto.", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const WiidgetOption(text: "Un presupuesto es un plan financiero que detalla los ingresos y gastos esperados durante un período específico.", isCorrect: true),
  ),
  WidgetQuestion(
      text:
          "¿Qué es un fondo mutuo?",
      options: [
        const WiidgetOption(text: "Inversión individual.", isCorrect: false),
        const WiidgetOption(text: "Gestión de riesgos.", isCorrect: false),
        const WiidgetOption(text: "Compartir ganancias.", isCorrect: false),
        const WiidgetOption(text: "Una inversión colectiva", isCorrect: true),
      ],
      id: 1,
      correctAnswer: const WiidgetOption(text: "Un fondo mutuo es una inversión conjunta donde múltiples inversores combinan su dinero para comprar una cartera diversificada de activos administrados por profesionales.", isCorrect: true)),
  WidgetQuestion(
      text:
          "¿Cuál es una forma común de ahorrar dinero para el futuro?",
      options: [
        const WiidgetOption(text: "Caja de ahorro", isCorrect: true),
        const WiidgetOption(text: "Debajo del colchón", isCorrect: false),
        const WiidgetOption(text: "En un tarro de cristal", isCorrect: false),
        const WiidgetOption(text: "En una alcancía", isCorrect: false),
      ],
      id: 2,
      correctAnswer:
          const WiidgetOption(text: "Una forma común de ahorrar dinero para el futuro es mediante una cuenta de ahorros.", isCorrect: true)),
  WidgetQuestion(
      text:
          "¿Cuál de las siguientes NO es una forma común de invertir dinero?",
      options: [
        const WiidgetOption(text: "Acciones.", isCorrect: false),
        const WiidgetOption(text: "Bienes raíces.", isCorrect: false),
        const WiidgetOption(text: "Ahorros en cuenta corriente.", isCorrect: true),
        const WiidgetOption(text: "Fondos mutuos.", isCorrect: false),
      ],
      id: 3,
      correctAnswer: const WiidgetOption(text: "Una forma común de invertir dinero es a través de la compra de acciones en el mercado de valores.", isCorrect: true)),
  WidgetQuestion(
      text:
          "¿Cuál es una forma común de pagar por bienes y servicios sin usar efectivo?",
      options: [
        const WiidgetOption(text: "Monedas.", isCorrect: false),
        const WiidgetOption(text: "Intercambio de productos.", isCorrect: false),
        const WiidgetOption(text: "Cheque personal.", isCorrect: false),
        const WiidgetOption(text: "Tarjeta de crédito.", isCorrect: true),
      ],
      id: 4,
      correctAnswer: const WiidgetOption(text: "Las tarjetas de crédito permiten pagar sin efectivo, comprar ahora y pagar después, ofreciendo conveniencia y recompensas por las compras.", isCorrect: true)),
     
];
