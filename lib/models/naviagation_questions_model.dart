class NavigateQuestion {
  final int id;
  final String text;
  final List<NavigationsOption> options;
  bool isLocked;
  NavigationsOption? selectedWiidgetOption;
  NavigationsOption? correctAnswer;

  NavigateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  NavigateQuestion copyWith() {
    return NavigateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              NavigationsOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class NavigationsOption {
  final String text;
  final bool isCorrect;

  const NavigationsOption({
    required this.text,
    required this.isCorrect,
  });
}

final navigateQuestionsList = [
  NavigateQuestion(
    text:
        "¿Por qué es importante la planificación financiera a largo plazo?",
    options: [
      const NavigationsOption(text: "Estabilidad financiera.", isCorrect: true),
      const NavigationsOption(text: "Compras de lujo.", isCorrect: false),
      const NavigationsOption(text: "Decisiones impulsivas.", isCorrect: false),
      const NavigationsOption(text: "Gasto excesivo.", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const NavigationsOption(text: "Es importante planificar financieramente a largo plazo para garantizar estabilidad y alcanzar objetivos como la jubilación.", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "¿Qué es un fondo de emergencia?",
    options: [
      const NavigationsOption(text: "Para compras de lujo.", isCorrect: false),
      const NavigationsOption(text: "Para gastos diarios.", isCorrect: false),
      const NavigationsOption(text: "Para imprevistos financieros.", isCorrect: true),
      const NavigationsOption(text: "Para vacaciones.", isCorrect: false),
      
      
    ],
    id: 1,
    correctAnswer:
        const NavigationsOption(text:  "Un fondo de emergencia es un ahorro reservado específicamente para situaciones imprevistas, como gastos médicos inesperados o pérdida de empleo.", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "¿Por qué es importante diversificar las inversiones?",
    options: [
      const NavigationsOption(text: "Reducir el riesgo.", isCorrect: true),
      const NavigationsOption(text: "Aumentar el riesgo.", isCorrect: false),
      const NavigationsOption(text: "Gastar más dinero.", isCorrect: false),
      const NavigationsOption(text: "Invertir en una sola opción.", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const NavigationsOption(text: "Diversificar las inversiones reduce el riesgo al distribuir los fondos en diferentes activos.", isCorrect: true),
  ),

  NavigateQuestion(
    text:
        "¿Qué es un objetivo financiero a corto plazo?",
    options: [
      const NavigationsOption(text: "Comprar una casa.", isCorrect: false),
      const NavigationsOption(text: "Ahorrar para la jubilación.", isCorrect: false),
      const NavigationsOption(text: "Planificar unas vacaciones.", isCorrect: false),
      const NavigationsOption(text: "Pagar la deuda estudiantil.", isCorrect: true),
    ],
    id: 3,
    correctAnswer:
        const NavigationsOption(text: "Un objetivo financiero a corto plazo es una meta financiera que se espera alcanzar en un período relativamente corto, generalmente dentro de un año.", isCorrect: true),
  ),
  
  NavigateQuestion(
    text:
        "¿Qué es el interés compuesto?",
    options: [
      const NavigationsOption(text: "Interés inicial.", isCorrect: false),
      const NavigationsOption(text: "Interés único.", isCorrect: false),
      const NavigationsOption(text: "Interés total.", isCorrect: true),
      const NavigationsOption(text: "Interés sobre inflación.", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const NavigationsOption(
      text: "El interés compuesto es cuando los intereses se calculan sobre el capital inicial y los intereses acumulados anteriormente.",
      isCorrect: true,
    ),
  ),

];
