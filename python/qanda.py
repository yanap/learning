questions = [
    "We don't serve strings around here. Are you a string?", "What is said on Father's Day in the forest?",
    "What makes the sound 'Sis! Boom! Bah!'?"
]
answers = [
    "An exploding sheep.", "No, I'm a frayed knot.", "'Pop!' goes the weasel."
]

q_a = ((0, 1), (1, 2), (2, 0))
for q, a in q_a:
    print("Q:", questions[q])
    print("A:", answers[a])
    print()

