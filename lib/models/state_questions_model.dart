class StateQuestion {
  final int id;
  final String text;
  final List<StateOption> options;
  bool isLocked;
  StateOption? selectedWiidgetOption;
  StateOption? correctAnswer;

  StateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  StateQuestion copyWith() {
    return StateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              StateOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class StateOption {
  final String text;
  final bool isCorrect;

  const StateOption({
    required this.text,
    required this.isCorrect,
  });
}

final stateQuestionsList = [
  StateQuestion(
    text:
        "¿Qué es un dividendo?",
    options: [
      const StateOption(text: "Ganancia de capital.", isCorrect: false),
      const StateOption(text: "Pago periódico a accionistas.", isCorrect: true),
      const StateOption(text: "Valoración de acciones.", isCorrect: false),
      const StateOption(text: "Costo de transacción.", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const StateOption(text: "Un dividendo es un pago periódico a los accionistas de una empresa, que representa una parte de las ganancias distribuidas entre los inversores.", isCorrect: true),
  ),
  StateQuestion(
    text:
        "¿Qué es el riesgo diversificable?",
    options: [
      const StateOption(text: "Riesgo específico.", isCorrect: true),
      const StateOption(text: "Riesgo de mercado.", isCorrect: false),
      const StateOption(text: " Riesgo sistemático.", isCorrect: false),
      const StateOption(text: "Riesgo de tasa de interés.", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const StateOption(text: "El riesgo diversificable se puede reducir mediante la inversión en una variedad de activos debido a su asociación con factores específicos de una empresa o activo individual.", isCorrect: true),
  ),
  StateQuestion(
    text:
        "¿Qué son los bonos del gobierno?",
    options: [
      const StateOption(text: "Deuda corporativa.", isCorrect: false),
      const StateOption(text: "Valores de renta variable.", isCorrect: false),
      const StateOption(text: "deuda soberana.", isCorrect: true),
      const StateOption(text: "Acciones preferentes.", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const StateOption(text: "Los bonos del gobierno son instrumentos de deuda soberana emitidos por un gobierno para financiar sus operaciones y proyectos.", isCorrect: true),
  ),

  StateQuestion(
    text:
        "¿Qué es el análisis fundamental?",
    options: [
      const StateOption(text: "Evaluación de precio histórico.", isCorrect: false),
      const StateOption(text: "Estudio de gráficos de precios.", isCorrect: false),
      const StateOption(text: "valuación del valor intrínseco.", isCorrect: true),
      const StateOption(text: "Predicciones en noticias.", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const StateOption(text: "El análisis fundamental es una evaluación de inversiones que estudia los fundamentos financieros de una empresa para determinar su valor y potencial de crecimiento.", isCorrect: true),
  ),
  
  StateQuestion(
    text:
        "¿Qué es la volatilidad en el contexto financiero?",
    options: [
      const StateOption(text: "Riesgo de mercado.", isCorrect: false),
      const StateOption(text: "Fluctuación de precios.", isCorrect: true),
      const StateOption(text: "entabilidad de una inversión.", isCorrect: false),
      const StateOption(text: " Tendencia alcista del mercado.", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const StateOption(text: "La volatilidad en el contexto financiero se refiere a la medida de la variabilidad de los precios de un activo o mercado en un período de tiempo específico.", isCorrect: true),
  ),
  
];
