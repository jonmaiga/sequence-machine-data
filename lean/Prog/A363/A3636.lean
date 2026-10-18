import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A363600: Number of partitions of n into distinct parts where there are k^2+1 kinds of part k.

The programs for A363600, there is no canonical definition to state claims against.
-/

/-! ## A363600.P3619429028324667018

`2*A161207(a(n-1))` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A363600.P3619429028324667018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  2 * A161207 (a (n - 1)).toNat

end

end A363600.P3619429028324667018

/-! ## A363600.P1612184867484230908

`A051742(A086091(n))`
-/

namespace A363600.P1612184867484230908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (A086091 n).toNat

end

end A363600.P1612184867484230908

/-!
# A363601: Number of partitions of n where there are k^2 - 1 kinds of parts k.

The programs for A363601, there is no canonical definition to state claims against.
-/

/-! ## A363601.P4171456885949420536

`xor(A003056(A073992(n+1)), A245169(n))`
-/

namespace A363601.P4171456885949420536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003056 (A073992 (n + 1)).toNat) (A245169 n)

end

end A363601.P4171456885949420536

/-! ## A363601.P7824787266550837251

`A302505(A371863(n+1))-A001222(3*n+1)`
-/

namespace A363601.P7824787266550837251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (A371863 (n + 1)).toNat - A001222 (3 * n + 1)

end

end A363601.P7824787266550837251

/-!
# A363602: Number of partitions of n where there are k^2+1 kinds of parts k.

The programs for A363602, there is no canonical definition to state claims against.
-/

/-! ## A363602.P17560569883166771242

`A282062(A073994(n+1))+A049959(n+1)`
-/

namespace A363602.P17560569883166771242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 (A073994 (n + 1)).toNat + A049959 (n + 1)

end

end A363602.P17560569883166771242

/-! ## A363602.P12384391637972196227

`A298305(A018004(n))`
-/

namespace A363602.P12384391637972196227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298305 (A018004 n).toNat

end

end A363602.P12384391637972196227

/-!
# A363603: Expansion of e.g.f. (1/4)*(exp(x)-x-1)*(exp(x)-1)^2.

The programs for A363603, the canonical program `A363603.P14586502665728925774` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363603 has offset 4).

The definition of A363603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363603.P14586502665728925774

`(3^(n+4)-3*(2^(n+4)-1))/4-(n+4)/2*(2^(n+2)-1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363603

/-- `(3^(n+4)-3*(2^(n+4)-1))/4-(n+4)/2*(2^(n+2)-1)` -/
def P14586502665728925774.Spec : Prop :=
  ∀ n, P14586502665728925774.a n = (A363603 (n + 4) : ℚ)

end A363603

/-!
# A363604: Expansion of Sum_{k>0} x^(2*k)/(1-x^k)^4.

The programs for A363604, the canonical program `A363604.P1742819399348317644` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363604 has offset 1).

The definition of A363604 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092348, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363604.P1742819399348317644

`A092348(n+1)/6`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A363604

/-- `A092348(n+1)/6` -/
def P1742819399348317644.Spec : Prop :=
  ∀ n, P1742819399348317644.a n = (A363604 (n + 1) : ℚ)

end A363604

/-! ## A363604.P14807867773166702066

`∑{d}[n+1, C(#+1, 3)]`
-/

namespace A363604.P14807867773166702066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (d + 1) 3

end

end A363604.P14807867773166702066

namespace A363604

/-- `∑{d}[n+1, C(#+1, 3)]` -/
def P14807867773166702066.Spec : Prop :=
  ∀ n, (P14807867773166702066.a n : ℤ) = A363604 (n + 1)

end A363604

/-! ## A363604.P17203193298933834318

`∑{d}[n+1, #^3-#]/6`
-/

namespace A363604.P17203193298933834318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((d ^ 3 : ℤ) - (d : ℤ)) : ℤ) : ℚ) / 6

end

end A363604.P17203193298933834318

namespace A363604

/-- `∑{d}[n+1, #^3-#]/6` -/
def P17203193298933834318.Spec : Prop :=
  ∀ n, P17203193298933834318.a n = (A363604 (n + 1) : ℚ)

end A363604

/-! ## A363604.P9632979415553590815

`∑{d}[n+1, A000292(#-1)]`
-/

namespace A363604.P9632979415553590815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000292 (d - 1)

end

end A363604.P9632979415553590815

namespace A363604

/-- `∑{d}[n+1, A000292(#-1)]` -/
def P9632979415553590815.Spec : Prop :=
  ∀ n, P9632979415553590815.a n = A363604 (n + 1)

end A363604

/-! ## A363604.P513046227649257792

`A363607(n+1)+A069153(n+1)`
-/

namespace A363604.P513046227649257792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363607 (n + 1) + A069153 (n + 1)

end

end A363604.P513046227649257792

namespace A363604

/-- `A363607(n+1)+A069153(n+1)` -/
def P513046227649257792.Spec : Prop :=
  ∀ n, P513046227649257792.a n = A363604 (n + 1)

end A363604

/-! ## A363604.P1795242945534094294

`A278403(n+1)-A320941(n+1)`
-/

namespace A363604.P1795242945534094294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278403 (n + 1) - A320941 (n + 1)

end

end A363604.P1795242945534094294

namespace A363604

/-- `A278403(n+1)-A320941(n+1)` -/
def P1795242945534094294.Spec : Prop :=
  ∀ n, P1795242945534094294.a n = A363604 (n + 1)

end A363604

/-! ## A363604.P6392612779951667963

`(A320941(n+1)-A007437(n+1))/2`
-/

namespace A363604.P6392612779951667963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320941 (n + 1) - A007437 (n + 1) : ℚ) / 2

end

end A363604.P6392612779951667963

namespace A363604

/-- `(A320941(n+1)-A007437(n+1))/2` -/
def P6392612779951667963.Spec : Prop :=
  ∀ n, P6392612779951667963.a n = (A363604 (n + 1) : ℚ)

end A363604

/-! ## A363604.P4595630284376122248

`∑{d}[n+1, A001157(#)*A057789((n+1)/#)]`
-/

namespace A363604.P4595630284376122248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A057789 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A363604.P4595630284376122248

namespace A363604

/-- `∑{d}[n+1, A001157(#)*A057789((n+1)/#)]` -/
def P4595630284376122248.Spec : Prop :=
  ∀ n, P4595630284376122248.a n = A363604 (n + 1)

end A363604

/-! ## A363604.P13424923963290542560

`A065608(n+1)+A363610(n+1)+A363607(n+1)`
-/

namespace A363604.P13424923963290542560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) + (A363610 (n + 1) + A363607 (n + 1))

end

end A363604.P13424923963290542560

namespace A363604

/-- `A065608(n+1)+A363610(n+1)+A363607(n+1)` -/
def P13424923963290542560.Spec : Prop :=
  ∀ n, P13424923963290542560.a n = A363604 (n + 1)

end A363604

/-! ## A363604.P2609735289094035387

`A069153(n+1)+A363611(n+1)+A363610(n+1)`
-/

namespace A363604.P2609735289094035387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069153 (n + 1) + (A363611 (n + 1) + A363610 (n + 1))

end

end A363604.P2609735289094035387

namespace A363604

/-- `A069153(n+1)+A363611(n+1)+A363610(n+1)` -/
def P2609735289094035387.Spec : Prop :=
  ∀ n, P2609735289094035387.a n = A363604 (n + 1)

end A363604

/-! ## A363604.P8193558323970932060

`A007437(n+1)+A363607(n+1)-A000203(n+1)`
-/

namespace A363604.P8193558323970932060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) + (A363607 (n + 1) - A000203 (n + 1))

end

end A363604.P8193558323970932060

namespace A363604

/-- `A007437(n+1)+A363607(n+1)-A000203(n+1)` -/
def P8193558323970932060.Spec : Prop :=
  ∀ n, P8193558323970932060.a n = A363604 (n + 1)

end A363604

/-! ## A363604.P17047119725348334022

`A116963(n+1)-(A363628(n+1)+A007437(n+1))`
-/

namespace A363604.P17047119725348334022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116963 (n + 1) - (A363628 (n + 1) + A007437 (n + 1))

end

end A363604.P17047119725348334022

namespace A363604

/-- `A116963(n+1)-(A363628(n+1)+A007437(n+1))` -/
def P17047119725348334022.Spec : Prop :=
  ∀ n, P17047119725348334022.a n = A363604 (n + 1)

end A363604

/-! ## A363604.P2065228178790949393

`A059358(n+1)-A007437(n+1)`
-/

namespace A363604.P2065228178790949393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059358 (n + 1) - A007437 (n + 1)

end

end A363604.P2065228178790949393

namespace A363604

/-- `A059358(n+1)-A007437(n+1)` -/
def P2065228178790949393.Spec : Prop :=
  ∀ n, P2065228178790949393.a n = A363604 (n + 1)

end A363604

/-! ## A363604.P6417486325134583197

`A320941(n+1)-A059358(n+1)`
-/

namespace A363604.P6417486325134583197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320941 (n + 1) - A059358 (n + 1)

end

end A363604.P6417486325134583197

namespace A363604

/-- `A320941(n+1)-A059358(n+1)` -/
def P6417486325134583197.Spec : Prop :=
  ∀ n, P6417486325134583197.a n = A363604 (n + 1)

end A363604

/-! ## A363604.P15849640882195562192

`A059358(n+1)+A069153(n+1)-A001157(n+1)`
-/

namespace A363604.P15849640882195562192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059358 (n + 1) + (A069153 (n + 1) - A001157 (n + 1))

end

end A363604.P15849640882195562192

namespace A363604

/-- `A059358(n+1)+A069153(n+1)-A001157(n+1)` -/
def P15849640882195562192.Spec : Prop :=
  ∀ n, P15849640882195562192.a n = A363604 (n + 1)

end A363604

/-!
# A363605: Expansion of Sum_{k>0} x^(2*k)/(1-x^k)^5.

The programs for A363605, the canonical program `A363605.P14207896173042552193` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363605 has offset 1).

The definition of A363605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363605.P14207896173042552193

`∑{d}[n+1, C(#+2, 4)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363605

/-- `∑{d}[n+1, C(#+2, 4)]` -/
def P14207896173042552193.Spec : Prop :=
  ∀ n, (P14207896173042552193.a n : ℤ) = A363605 (n + 1)

theorem P14207896173042552193.correct : P14207896173042552193.Spec := by
  intro n
  simp only [A363605, Nat.add_sub_cancel]

end A363605

/-! ## A363605.P12909427096778258900

`A363604(n+1)+A363608(n+1)+A363607(n+1)`
-/

namespace A363605.P12909427096778258900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363604 (n + 1) + (A363608 (n + 1) + A363607 (n + 1))

end

end A363605.P12909427096778258900

namespace A363605

/-- `A363604(n+1)+A363608(n+1)+A363607(n+1)` -/
def P12909427096778258900.Spec : Prop :=
  ∀ n, P12909427096778258900.a n = A363605 (n + 1)

end A363605

/-! ## A363605.P3395774508641371030

`A073570(n+1)-(A363604(n+1)+A007437(n+1))`
-/

namespace A363605.P3395774508641371030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073570 (n + 1) - (A363604 (n + 1) + A007437 (n + 1))

end

end A363605.P3395774508641371030

namespace A363605

/-- `A073570(n+1)-(A363604(n+1)+A007437(n+1))` -/
def P3395774508641371030.Spec : Prop :=
  ∀ n, P3395774508641371030.a n = A363605 (n + 1)

end A363605

/-! ## A363605.P15129967143923812641

`A073570(n+1)-A059358(n+1)`
-/

namespace A363605.P15129967143923812641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073570 (n + 1) - A059358 (n + 1)

end

end A363605.P15129967143923812641

namespace A363605

/-- `A073570(n+1)-A059358(n+1)` -/
def P15129967143923812641.Spec : Prop :=
  ∀ n, P15129967143923812641.a n = A363605 (n + 1)

end A363605

/-! ## A363605.P12769966817173303641

`∑{d}[n+1, A000332(#+2)]`
-/

namespace A363605.P12769966817173303641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000332 (d + 2)

end

end A363605.P12769966817173303641

namespace A363605

/-- `∑{d}[n+1, A000332(#+2)]` -/
def P12769966817173303641.Spec : Prop :=
  ∀ n, P12769966817173303641.a n = A363605 (n + 1)

end A363605

/-!
# A363606: Expansion of Sum_{k>0} x^(2*k)/(1-x^k)^6.

The programs for A363606, the canonical program `A363606.P2113737696874946693` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363606 has offset 1).

The definition of A363606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363606.P2113737696874946693

`∑{d}[n+1, C(#+3, 5)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363606

/-- `∑{d}[n+1, C(#+3, 5)]` -/
def P2113737696874946693.Spec : Prop :=
  ∀ n, (P2113737696874946693.a n : ℤ) = A363606 (n + 1)

theorem P2113737696874946693.correct : P2113737696874946693.Spec := by
  intro n
  simp only [A363606, Nat.add_sub_cancel]

end A363606

/-! ## A363606.P15429848529187796511

`A101289(n+1)-A073570(n+1)`
-/

namespace A363606.P15429848529187796511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101289 (n + 1) - A073570 (n + 1)

end

end A363606.P15429848529187796511

namespace A363606

/-- `A101289(n+1)-A073570(n+1)` -/
def P15429848529187796511.Spec : Prop :=
  ∀ n, P15429848529187796511.a n = A363606 (n + 1)

end A363606

/-! ## A363606.P9421199579409580294

`A101289(n+1)+A116963(n+1)-A363695(n+1)`
-/

namespace A363606.P9421199579409580294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101289 (n + 1) + (A116963 (n + 1) - A363695 (n + 1))

end

end A363606.P9421199579409580294

namespace A363606

/-- `A101289(n+1)+A116963(n+1)-A363695(n+1)` -/
def P9421199579409580294.Spec : Prop :=
  ∀ n, P9421199579409580294.a n = A363606 (n + 1)

end A363606

/-! ## A363606.P8673654055380527441

`A363696(n+1)-A363695(n+1)-A073570(n+1)`
-/

namespace A363606.P8673654055380527441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363696 (n + 1) - A363695 (n + 1) - A073570 (n + 1)

end

end A363606.P8673654055380527441

namespace A363606

/-- `A363696(n+1)-A363695(n+1)-A073570(n+1)` -/
def P8673654055380527441.Spec : Prop :=
  ∀ n, P8673654055380527441.a n = A363606 (n + 1)

end A363606

/-! ## A363606.P4576262578980033418

`∑{d}[n+1, A145127(#)-(#+1)]-A073570(n+1)`
-/

namespace A363606.P4576262578980033418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A145127 d - (d + 1 : ℤ)) - A073570 (n + 1)

end

end A363606.P4576262578980033418

namespace A363606

/-- `∑{d}[n+1, A145127(#)-(#+1)]-A073570(n+1)` -/
def P4576262578980033418.Spec : Prop :=
  ∀ n, P4576262578980033418.a n = A363606 (n + 1)

end A363606

/-!
# A363607: Expansion of Sum_{k>0} x^(3*k)/(1-x^k)^4.

The programs for A363607, the canonical program `A363607.P17371313829661087830` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363607 has offset 1).

The definition of A363607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363607.P17371313829661087830

`∑{d}[n+1, C(#, 3)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363607

/-- `∑{d}[n+1, C(#, 3)]` -/
def P17371313829661087830.Spec : Prop :=
  ∀ n, (P17371313829661087830.a n : ℤ) = A363607 (n + 1)

theorem P17371313829661087830.correct : P17371313829661087830.Spec := by
  intro n
  simp only [A363607, Nat.add_sub_cancel]

end A363607

/-! ## A363607.P14155620421672322506

`A363611(n+1)+A363610(n+1)`
-/

namespace A363607.P14155620421672322506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363611 (n + 1) + A363610 (n + 1)

end

end A363607.P14155620421672322506

namespace A363607

/-- `A363611(n+1)+A363610(n+1)` -/
def P14155620421672322506.Spec : Prop :=
  ∀ n, P14155620421672322506.a n = A363607 (n + 1)

end A363607

/-! ## A363607.P13264151237815924103

`A363604(n+1)-A069153(n+1)`
-/

namespace A363607.P13264151237815924103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363604 (n + 1) - A069153 (n + 1)

end

end A363607.P13264151237815924103

namespace A363607

/-- `A363604(n+1)-A069153(n+1)` -/
def P13264151237815924103.Spec : Prop :=
  ∀ n, P13264151237815924103.a n = A363607 (n + 1)

end A363607

/-! ## A363607.P13666821819366319336

`∑{d}[n+1, A000005(#)*A346760((n+1)/#)]`
-/

namespace A363607.P13666821819366319336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A346760 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A363607.P13666821819366319336

namespace A363607

/-- `∑{d}[n+1, A000005(#)*A346760((n+1)/#)]` -/
def P13666821819366319336.Spec : Prop :=
  ∀ n, P13666821819366319336.a n = A363607 (n + 1)

end A363607

/-! ## A363607.P9926795784766614459

`A069153(n+1)+A363611(n+1)-A065608(n+1)`
-/

namespace A363607.P9926795784766614459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069153 (n + 1) + (A363611 (n + 1) - A065608 (n + 1))

end

end A363607.P9926795784766614459

namespace A363607

/-- `A069153(n+1)+A363611(n+1)-A065608(n+1)` -/
def P9926795784766614459.Spec : Prop :=
  ∀ n, P9926795784766614459.a n = A363607 (n + 1)

end A363607

/-! ## A363607.P8334881214626150719

`A363604(n+1)-(A363610(n+1)+A065608(n+1))`
-/

namespace A363607.P8334881214626150719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363604 (n + 1) - (A363610 (n + 1) + A065608 (n + 1))

end

end A363607.P8334881214626150719

namespace A363607

/-- `A363604(n+1)-(A363610(n+1)+A065608(n+1))` -/
def P8334881214626150719.Spec : Prop :=
  ∀ n, P8334881214626150719.a n = A363607 (n + 1)

end A363607

/-! ## A363607.P15797048166164643115

`A059358(n+1)-A001157(n+1)`
-/

namespace A363607.P15797048166164643115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059358 (n + 1) - A001157 (n + 1)

end

end A363607.P15797048166164643115

namespace A363607

/-- `A059358(n+1)-A001157(n+1)` -/
def P15797048166164643115.Spec : Prop :=
  ∀ n, P15797048166164643115.a n = A363607 (n + 1)

end A363607

/-!
# A363608: Expansion of Sum_{k>0} x^(4*k)/(1-x^k)^5.

The programs for A363608, the canonical program `A363608.P3122353585843606420` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363608 has offset 1).

The definition of A363608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363608.P3122353585843606420

`∑{d}[n+1, C(#, 4)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363608

/-- `∑{d}[n+1, C(#, 4)]` -/
def P3122353585843606420.Spec : Prop :=
  ∀ n, (P3122353585843606420.a n : ℤ) = A363608 (n + 1)

theorem P3122353585843606420.correct : P3122353585843606420.Spec := by
  intro n
  simp only [A363608, Nat.add_sub_cancel]

end A363608

/-! ## A363608.P2830221014502630097

`∑{d}[n+1, A000005(#)*A346761((n+1)/#)]`
-/

namespace A363608.P2830221014502630097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A346761 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A363608.P2830221014502630097

namespace A363608

/-- `∑{d}[n+1, A000005(#)*A346761((n+1)/#)]` -/
def P2830221014502630097.Spec : Prop :=
  ∀ n, P2830221014502630097.a n = A363608 (n + 1)

end A363608

/-! ## A363608.P11320878130524151198

`A363605(n+1)-(A363607(n+1)+A363604(n+1))`
-/

namespace A363608.P11320878130524151198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363605 (n + 1) - (A363607 (n + 1) + A363604 (n + 1))

end

end A363608.P11320878130524151198

namespace A363608

/-- `A363605(n+1)-(A363607(n+1)+A363604(n+1))` -/
def P11320878130524151198.Spec : Prop :=
  ∀ n, P11320878130524151198.a n = A363608 (n + 1)

end A363608

/-! ## A363608.P11534049993496575575

`∑{d}[n+1, A000332(#)]`
-/

namespace A363608.P11534049993496575575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000332 d

end

end A363608.P11534049993496575575

namespace A363608

/-- `∑{d}[n+1, A000332(#)]` -/
def P11534049993496575575.Spec : Prop :=
  ∀ n, P11534049993496575575.a n = A363608 (n + 1)

end A363608

/-! ## A363608.P16027429399721302636

`or(A000332(n+1), A059053(A227549(n+1)))`
-/

namespace A363608.P16027429399721302636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000332 (n + 1)) (A059053 (A227549 (n + 1)).toNat)

end

end A363608.P16027429399721302636

namespace A363608

/-- `or(A000332(n+1), A059053(A227549(n+1)))` -/
def P16027429399721302636.Spec : Prop :=
  ∀ n, P16027429399721302636.a n = A363608 (n + 1)

end A363608

/-!
# A363610: Expansion of Sum_{k>0} x^(3*k)/(1-x^k)^3.

The programs for A363610, the canonical program `A363610.P3014432330695070700` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363610 has offset 1).

The definition of A363610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363610.P3014432330695070700

`∑{d}[n+1, C(#-1, 2)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363610

/-- `∑{d}[n+1, C(#-1, 2)]` -/
def P3014432330695070700.Spec : Prop :=
  ∀ n, (P3014432330695070700.a n : ℤ) = A363610 (n + 1)

theorem P3014432330695070700.correct : P3014432330695070700.Spec := by
  intro n
  simp only [A363610, Nat.add_sub_cancel]

end A363610

/-! ## A363610.P1729185248900262009

`∑{d}[n+1, A161680(#-1)]`
-/

namespace A363610.P1729185248900262009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161680 (d - 1)

end

end A363610.P1729185248900262009

namespace A363610

/-- `∑{d}[n+1, A161680(#-1)]` -/
def P1729185248900262009.Spec : Prop :=
  ∀ n, P1729185248900262009.a n = A363610 (n + 1)

end A363610

/-! ## A363610.P17806142046013197537

`A069153(n+1)-A065608(n+1)`
-/

namespace A363610.P17806142046013197537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069153 (n + 1) - A065608 (n + 1)

end

end A363610.P17806142046013197537

namespace A363610

/-- `A069153(n+1)-A065608(n+1)` -/
def P17806142046013197537.Spec : Prop :=
  ∀ n, P17806142046013197537.a n = A363610 (n + 1)

end A363610

/-! ## A363610.P12603388219008059298

`A007437(n+1)-A129235(n+1)`
-/

namespace A363610.P12603388219008059298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) - A129235 (n + 1)

end

end A363610.P12603388219008059298

namespace A363610

/-- `A007437(n+1)-A129235(n+1)` -/
def P12603388219008059298.Spec : Prop :=
  ∀ n, P12603388219008059298.a n = A363610 (n + 1)

end A363610

/-! ## A363610.P8131599819134522847

`A309730(n+1)-A001157(n+1)`
-/

namespace A363610.P8131599819134522847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309730 (n + 1) - A001157 (n + 1)

end

end A363610.P8131599819134522847

namespace A363610

/-- `A309730(n+1)-A001157(n+1)` -/
def P8131599819134522847.Spec : Prop :=
  ∀ n, P8131599819134522847.a n = A363610 (n + 1)

end A363610

/-! ## A363610.P2236421055672012416

`A363628(n+1)-A272027(n+1)`
-/

namespace A363610.P2236421055672012416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363628 (n + 1) - A272027 (n + 1)

end

end A363610.P2236421055672012416

namespace A363610

/-- `A363628(n+1)-A272027(n+1)` -/
def P2236421055672012416.Spec : Prop :=
  ∀ n, P2236421055672012416.a n = A363610 (n + 1)

end A363610

/-! ## A363610.P6054616939120346074

`A363607(n+1)-A363611(n+1)`
-/

namespace A363610.P6054616939120346074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363607 (n + 1) - A363611 (n + 1)

end

end A363610.P6054616939120346074

namespace A363610

/-- `A363607(n+1)-A363611(n+1)` -/
def P6054616939120346074.Spec : Prop :=
  ∀ n, P6054616939120346074.a n = A363610 (n + 1)

end A363610

/-! ## A363610.P4282465337905625747

`∑{d}[n+1, A000005(#)*A000741((n+1)/#)]`
-/

namespace A363610.P4282465337905625747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A000741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A363610.P4282465337905625747

namespace A363610

/-- `∑{d}[n+1, A000005(#)*A000741((n+1)/#)]` -/
def P4282465337905625747.Spec : Prop :=
  ∀ n, P4282465337905625747.a n = A363610 (n + 1)

end A363610

/-! ## A363610.P8194294833645337122

`A007437(n+1)-(A065608(n+1)+A000203(n+1))`
-/

namespace A363610.P8194294833645337122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) - (A065608 (n + 1) + A000203 (n + 1))

end

end A363610.P8194294833645337122

namespace A363610

/-- `A007437(n+1)-(A065608(n+1)+A000203(n+1))` -/
def P8194294833645337122.Spec : Prop :=
  ∀ n, P8194294833645337122.a n = A363610 (n + 1)

end A363610

/-! ## A363610.P2963112402917547369

`A001157(n+1)-(A065608(n+1)+A007437(n+1))`
-/

namespace A363610.P2963112402917547369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - (A065608 (n + 1) + A007437 (n + 1))

end

end A363610.P2963112402917547369

namespace A363610

/-- `A001157(n+1)-(A065608(n+1)+A007437(n+1))` -/
def P2963112402917547369.Spec : Prop :=
  ∀ n, P2963112402917547369.a n = A363610 (n + 1)

end A363610

/-! ## A363610.P8233040975928708482

`A363604(n+1)-(A363607(n+1)+A065608(n+1))`
-/

namespace A363610.P8233040975928708482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363604 (n + 1) - (A363607 (n + 1) + A065608 (n + 1))

end

end A363610.P8233040975928708482

namespace A363610

/-- `A363604(n+1)-(A363607(n+1)+A065608(n+1))` -/
def P8233040975928708482.Spec : Prop :=
  ∀ n, P8233040975928708482.a n = A363610 (n + 1)

end A363610

/-! ## A363610.P2285831050684011697

`A363604(n+1)-(A363611(n+1)+A069153(n+1))`
-/

namespace A363610.P2285831050684011697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363604 (n + 1) - (A363611 (n + 1) + A069153 (n + 1))

end

end A363610.P2285831050684011697

namespace A363610

/-- `A363604(n+1)-(A363611(n+1)+A069153(n+1))` -/
def P2285831050684011697.Spec : Prop :=
  ∀ n, P2285831050684011697.a n = A363610 (n + 1)

end A363610

/-! ## A363610.P431919788576153889

`A059358(n+1)-(A363611(n+1)+A001157(n+1))`
-/

namespace A363610.P431919788576153889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059358 (n + 1) - (A363611 (n + 1) + A001157 (n + 1))

end

end A363610.P431919788576153889

namespace A363610

/-- `A059358(n+1)-(A363611(n+1)+A001157(n+1))` -/
def P431919788576153889.Spec : Prop :=
  ∀ n, P431919788576153889.a n = A363610 (n + 1)

end A363610

/-!
# A363611: Expansion of Sum_{k>0} x^(4*k)/(1-x^k)^4.

The programs for A363611, the canonical program `A363611.P8996532261412631993` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363611 has offset 1).

The definition of A363611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363611.P8996532261412631993

`∑{d}[n+1, C(#-1, 3)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363611

/-- `∑{d}[n+1, C(#-1, 3)]` -/
def P8996532261412631993.Spec : Prop :=
  ∀ n, (P8996532261412631993.a n : ℤ) = A363611 (n + 1)

theorem P8996532261412631993.correct : P8996532261412631993.Spec := by
  intro n
  simp only [A363611, Nat.add_sub_cancel]

end A363611

/-! ## A363611.P18097229258045028031

`A363607(n+1)-A363610(n+1)`
-/

namespace A363611.P18097229258045028031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363607 (n + 1) - A363610 (n + 1)

end

end A363611.P18097229258045028031

namespace A363611

/-- `A363607(n+1)-A363610(n+1)` -/
def P18097229258045028031.Spec : Prop :=
  ∀ n, P18097229258045028031.a n = A363611 (n + 1)

end A363611

/-! ## A363611.P7053709218505847749

`A363604(n+1)-A086666(n+1)/2-A363610(n+1)`
-/

namespace A363611.P7053709218505847749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363604 (n + 1) : ℚ) - (A086666 (n + 1) : ℚ) / 2 - (A363610 (n + 1) : ℚ)

end

end A363611.P7053709218505847749

namespace A363611

/-- `A363604(n+1)-A086666(n+1)/2-A363610(n+1)` -/
def P7053709218505847749.Spec : Prop :=
  ∀ n, P7053709218505847749.a n = (A363611 (n + 1) : ℚ)

end A363611

/-! ## A363611.P15148033529226356853

`∑{d}[n+1, A050407(#)-1]`
-/

namespace A363611.P15148033529226356853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A050407 d - 1)

end

end A363611.P15148033529226356853

namespace A363611

/-- `∑{d}[n+1, A050407(#)-1]` -/
def P15148033529226356853.Spec : Prop :=
  ∀ n, P15148033529226356853.a n = A363611 (n + 1)

end A363611

/-! ## A363611.P3860387231889063505

`A059358(n+1)-A309730(n+1)`
-/

namespace A363611.P3860387231889063505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059358 (n + 1) - A309730 (n + 1)

end

end A363611.P3860387231889063505

namespace A363611

/-- `A059358(n+1)-A309730(n+1)` -/
def P3860387231889063505.Spec : Prop :=
  ∀ n, P3860387231889063505.a n = A363611 (n + 1)

end A363611

/-! ## A363611.P11474567633130172693

`A059358(n+1)-A001157(n+1)-A363610(n+1)`
-/

namespace A363611.P11474567633130172693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059358 (n + 1) - A001157 (n + 1) - A363610 (n + 1)

end

end A363611.P11474567633130172693

namespace A363611

/-- `A059358(n+1)-A001157(n+1)-A363610(n+1)` -/
def P11474567633130172693.Spec : Prop :=
  ∀ n, P11474567633130172693.a n = A363611 (n + 1)

end A363611

/-!
# A363615: Expansion of Sum_{k>0} x^(3*k)/(1+x^k)^3.

The programs for A363615, the canonical program `A363615.P15240525384775454564` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363615 has offset 1).

The definition of A363615 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048272, A321543, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363615.P15240525384775454564

`(A321543(n+1)-3*A002129(n+1)+2*A048272(n+1))/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A363615

/-- `(A321543(n+1)-3*A002129(n+1)+2*A048272(n+1))/2` -/
def P15240525384775454564.Spec : Prop :=
  ∀ n, P15240525384775454564.a n = (A363615 (n + 1) : ℚ)

end A363615

/-! ## A363615.P15097388687050086918

`A363617(n+1)+A363616(n+1)`
-/

namespace A363615.P15097388687050086918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363617 (n + 1) + A363616 (n + 1)

end

end A363615.P15097388687050086918

namespace A363615

/-- `A363617(n+1)+A363616(n+1)` -/
def P15097388687050086918.Spec : Prop :=
  ∀ n, P15097388687050086918.a n = A363615 (n + 1)

end A363615

/-! ## A363615.P5737401455837978759

`A325940(n+1)-A363022(n+1)`
-/

namespace A363615.P5737401455837978759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325940 (n + 1) - A363022 (n + 1)

end

end A363615.P5737401455837978759

namespace A363615

/-- `A325940(n+1)-A363022(n+1)` -/
def P5737401455837978759.Spec : Prop :=
  ∀ n, P5737401455837978759.a n = A363615 (n + 1)

end A363615

/-! ## A363615.P6578182462363134950

`A048272(n+1)-(A363022(n+1)+A002129(n+1))`
-/

namespace A363615.P6578182462363134950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) - (A363022 (n + 1) + A002129 (n + 1))

end

end A363615.P6578182462363134950

namespace A363615

/-- `A048272(n+1)-(A363022(n+1)+A002129(n+1))` -/
def P6578182462363134950.Spec : Prop :=
  ∀ n, P6578182462363134950.a n = A363615 (n + 1)

end A363615

/-! ## A363615.P13092216400599995430

`A320900(n+1)+A325940(n+1)-A002129(n+1)`
-/

namespace A363615.P13092216400599995430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320900 (n + 1) + (A325940 (n + 1) - A002129 (n + 1))

end

end A363615.P13092216400599995430

namespace A363615

/-- `A320900(n+1)+A325940(n+1)-A002129(n+1)` -/
def P13092216400599995430.Spec : Prop :=
  ∀ n, P13092216400599995430.a n = A363615 (n + 1)

end A363615

/-! ## A363615.P14664677102164135851

`A321543(n+1)+A325940(n+1)-A320900(n+1)`
-/

namespace A363615.P14664677102164135851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321543 (n + 1) + (A325940 (n + 1) - A320900 (n + 1))

end

end A363615.P14664677102164135851

namespace A363615

/-- `A321543(n+1)+A325940(n+1)-A320900(n+1)` -/
def P14664677102164135851.Spec : Prop :=
  ∀ n, P14664677102164135851.a n = A363615 (n + 1)

end A363615

/-! ## A363615.P11069474481067133917

`A363022(n+1)+A363616(n+1)-A363598(n+1)`
-/

namespace A363615.P11069474481067133917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363022 (n + 1) + (A363616 (n + 1) - A363598 (n + 1))

end

end A363615.P11069474481067133917

namespace A363615

/-- `A363022(n+1)+A363616(n+1)-A363598(n+1)` -/
def P11069474481067133917.Spec : Prop :=
  ∀ n, P11069474481067133917.a n = A363615 (n + 1)

end A363615

/-!
# A363616: Expansion of Sum_{k>0} x^(4*k)/(1+x^k)^4.

The programs for A363616, the canonical program `A363616.P384024628921417800` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363616 has offset 1).

The definition of A363616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363616.P384024628921417800

`A363615(n+1)-A363617(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A363616

/-- `A363615(n+1)-A363617(n+1)` -/
def P384024628921417800.Spec : Prop :=
  ∀ n, P384024628921417800.a n = A363616 (n + 1)

theorem P384024628921417800.correct : P384024628921417800.Spec := by
  intro n
  simp only [A363616, Nat.add_sub_cancel]

end A363616

/-! ## A363616.P4277285385475722515

`A325940(n+1)-(A363617(n+1)+A363022(n+1))`
-/

namespace A363616.P4277285385475722515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325940 (n + 1) - (A363617 (n + 1) + A363022 (n + 1))

end

end A363616.P4277285385475722515

namespace A363616

/-- `A325940(n+1)-(A363617(n+1)+A363022(n+1))` -/
def P4277285385475722515.Spec : Prop :=
  ∀ n, P4277285385475722515.a n = A363616 (n + 1)

end A363616

/-! ## A363616.P7179565027617464712

`A363598(n+1)+A363615(n+1)-A363022(n+1)`
-/

namespace A363616.P7179565027617464712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363598 (n + 1) + (A363615 (n + 1) - A363022 (n + 1))

end

end A363616.P7179565027617464712

namespace A363616

/-- `A363598(n+1)+A363615(n+1)-A363022(n+1)` -/
def P7179565027617464712.Spec : Prop :=
  ∀ n, P7179565027617464712.a n = A363616 (n + 1)

end A363616

/-! ## A363616.P14568862696669615055

`A363615(n+1)-(A320901(n+1)-A321543(n+1))`
-/

namespace A363616.P14568862696669615055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363615 (n + 1) - (A320901 (n + 1) - A321543 (n + 1))

end

end A363616.P14568862696669615055

namespace A363616

/-- `A363615(n+1)-(A320901(n+1)-A321543(n+1))` -/
def P14568862696669615055.Spec : Prop :=
  ∀ n, P14568862696669615055.a n = A363616 (n + 1)

end A363616

/-! ## A363616.P14149939205175300397

`A363615(n+1)-(A320901(n+1)+A363022(n+1)-A320900(n+1))`
-/

namespace A363616.P14149939205175300397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363615 (n + 1) - (A320901 (n + 1) + (A363022 (n + 1) - A320900 (n + 1)))

end

end A363616.P14149939205175300397

namespace A363616

/-- `A363615(n+1)-(A320901(n+1)+A363022(n+1)-A320900(n+1))` -/
def P14149939205175300397.Spec : Prop :=
  ∀ n, P14149939205175300397.a n = A363616 (n + 1)

end A363616

/-! ## A363616.P12254938680610801191

`A363615(n+1)-(A325940(n+1)-(A363615(n+1)+A363598(n+1)))`
-/

namespace A363616.P12254938680610801191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363615 (n + 1) - (A325940 (n + 1) - (A363615 (n + 1) + A363598 (n + 1)))

end

end A363616.P12254938680610801191

namespace A363616

/-- `A363615(n+1)-(A325940(n+1)-(A363615(n+1)+A363598(n+1)))` -/
def P12254938680610801191.Spec : Prop :=
  ∀ n, P12254938680610801191.a n = A363616 (n + 1)

end A363616

/-!
# A363617: Expansion of Sum_{k>0} x^(3*k)/(1+x^k)^4.

The programs for A363617, the canonical program `A363617.P16340407410721929330` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363617 has offset 1).

The definition of A363617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363617.P16340407410721929330

`-∑{d}[n+1, (-1)^#*C(#, 3)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363617

/-- `-∑{d}[n+1, (-1)^#*C(#, 3)]` -/
def P16340407410721929330.Spec : Prop :=
  ∀ n, P16340407410721929330.a n = A363617 (n + 1)

theorem P16340407410721929330.correct : P16340407410721929330.Spec := by
  intro n
  simp only [A363617, Nat.add_sub_cancel]

end A363617

/-! ## A363617.P14474920783089210373

`A320901(n+1)-A321543(n+1)`
-/

namespace A363617.P14474920783089210373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320901 (n + 1) - A321543 (n + 1)

end

end A363617.P14474920783089210373

namespace A363617

/-- `A320901(n+1)-A321543(n+1)` -/
def P14474920783089210373.Spec : Prop :=
  ∀ n, P14474920783089210373.a n = A363617 (n + 1)

end A363617

/-! ## A363617.P2937076044222873079

`A363022(n+1)-A363598(n+1)`
-/

namespace A363617.P2937076044222873079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363022 (n + 1) - A363598 (n + 1)

end

end A363617.P2937076044222873079

namespace A363617

/-- `A363022(n+1)-A363598(n+1)` -/
def P2937076044222873079.Spec : Prop :=
  ∀ n, P2937076044222873079.a n = A363617 (n + 1)

end A363617

/-! ## A363617.P5299710604331511382

`A363615(n+1)-A363616(n+1)`
-/

namespace A363617.P5299710604331511382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363615 (n + 1) - A363616 (n + 1)

end

end A363617.P5299710604331511382

namespace A363617

/-- `A363615(n+1)-A363616(n+1)` -/
def P5299710604331511382.Spec : Prop :=
  ∀ n, P5299710604331511382.a n = A363617 (n + 1)

end A363617

/-! ## A363617.P10121091444382249139

`A320901(n+1)+A363022(n+1)-A320900(n+1)`
-/

namespace A363617.P10121091444382249139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320901 (n + 1) + (A363022 (n + 1) - A320900 (n + 1))

end

end A363617.P10121091444382249139

namespace A363617

/-- `A320901(n+1)+A363022(n+1)-A320900(n+1)` -/
def P10121091444382249139.Spec : Prop :=
  ∀ n, P10121091444382249139.a n = A363617 (n + 1)

end A363617

/-! ## A363617.P2232743349397260120

`A325940(n+1)-(A363616(n+1)+A363022(n+1))`
-/

namespace A363617.P2232743349397260120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325940 (n + 1) - (A363616 (n + 1) + A363022 (n + 1))

end

end A363617.P2232743349397260120

namespace A363617

/-- `A325940(n+1)-(A363616(n+1)+A363022(n+1))` -/
def P2232743349397260120.Spec : Prop :=
  ∀ n, P2232743349397260120.a n = A363617 (n + 1)

end A363617

/-! ## A363617.P5409956295488347151

`A325940(n+1)-(A363615(n+1)+A363598(n+1))`
-/

namespace A363617.P5409956295488347151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325940 (n + 1) - (A363615 (n + 1) + A363598 (n + 1))

end

end A363617.P5409956295488347151

namespace A363617

/-- `A325940(n+1)-(A363615(n+1)+A363598(n+1))` -/
def P5409956295488347151.Spec : Prop :=
  ∀ n, P5409956295488347151.a n = A363617 (n + 1)

end A363617

/-!
# A363618: Expansion of Sum_{k>0} x^(4*k)/(1+x^k)^5.

The programs for A363618, the canonical program `A363618.P4080202908679199302` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363618 has offset 1).

The definition of A363618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363618.P4080202908679199302

`∑{d}[n+1, (-1)^#*C(#, 4)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363618

/-- `∑{d}[n+1, (-1)^#*C(#, 4)]` -/
def P4080202908679199302.Spec : Prop :=
  ∀ n, P4080202908679199302.a n = A363618 (n + 1)

theorem P4080202908679199302.correct : P4080202908679199302.Spec := by
  intro n
  simp only [A363618, Nat.add_sub_cancel]

end A363618

/-!
# A363619: Weighted alternating sum of the multiset of prime indices of n.

The programs for A363619, there is no canonical definition to state claims against.
-/

/-! ## A363619.P1721041136257407487

`-(-1)^∑{e}[n+1, #]*A363625(n+1)`
-/

namespace A363619.P1721041136257407487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A363625 (n + 1))

end

end A363619.P1721041136257407487

/-! ## A363619.P7686733963204572852

`A008836(2*(n+1))*A363625(n+1)`
-/

namespace A363619.P7686733963204572852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (2 * (n + 1)) * A363625 (n + 1)

end

end A363619.P7686733963204572852

/-!
# A363620: Reverse-weighted alternating sum of the multiset of prime indices of n.

The programs for A363620, there is no canonical definition to state claims against.
-/

/-! ## A363620.P7429905509950406633

`-(-1)^∑{e}[n+1, #]*A363624(n+1)`
-/

namespace A363620.P7429905509950406633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A363624 (n + 1))

end

end A363620.P7429905509950406633

/-! ## A363620.P14985513578230713508

`-A008836(n+1)*A363624(n+1)`
-/

namespace A363620.P14985513578230713508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A008836 (n + 1) * A363624 (n + 1))

end

end A363620.P14985513578230713508

/-! ## A363620.P4263890264002716788

`A008836(2*(n+1))*A363624(n+1)`
-/

namespace A363620.P4263890264002716788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (2 * (n + 1)) * A363624 (n + 1)

end

end A363620.P4263890264002716788

/-! ## A363620.P3131050705383293290

`A346700(A187829(n+1))+A316524(n+1)`
-/

namespace A363620.P3131050705383293290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A187829 (n + 1)).toNat + A316524 (n + 1)

end

end A363620.P3131050705383293290

/-!
# A363622: Irregular triangle read by rows where T(n,k) is the number of integer partitions of n with weighted alternating sum k (leading and trailing 0's omitted).

The programs for A363622, there is no canonical definition to state claims against.
-/

/-! ## A363622.P16367172381634952342

`A328682(and(A234950(n), A289780(n)))`
-/

namespace A363622.P16367172381634952342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (Int.land (A234950 n) (A289780 n)).toNat

end

end A363622.P16367172381634952342

/-! ## A363622.P9091858399894362835

`C(A014710(3*n+1), A014710(A025475(3*(n+1))))`
-/

namespace A363622.P9091858399894362835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014710 (3 * n + 1)).toNat (A014710 (A025475 (3 * (n + 1))).toNat).toNat

end

end A363622.P9091858399894362835

/-! ## A363622.P4792063747055986458

`A345374(A055292(n+7))`
-/

namespace A363622.P4792063747055986458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345374 (A055292 (n + 7)).toNat

end

end A363622.P4792063747055986458

/-! ## A363622.P10433804925266031706

`A105385(A242726(n+1))+1`
-/

namespace A363622.P10433804925266031706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105385 (A242726 (n + 1)).toNat + 1

end

end A363622.P10433804925266031706

/-! ## A363622.P6702674641663358608

`val(∏{digits}[A231575(A289441(n+2)+2), #!], 7)`
-/

namespace A363622.P6702674641663358608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231575 (A289441 (n + 2) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial x).prod 7

end

end A363622.P6702674641663358608

/-!
# A363624: Weighted alternating sum of the integer partition with Heinz number n.

The programs for A363624, there is no canonical definition to state claims against.
-/

/-! ## A363624.P14278207503580413540

`-A008836(n+1)*A363620(n+1)`
-/

namespace A363624.P14278207503580413540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A008836 (n + 1) * A363620 (n + 1))

end

end A363624.P14278207503580413540

/-! ## A363624.P12010904031495327583

`A008836(2*(n+1))*A363620(n+1)`
-/

namespace A363624.P12010904031495327583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (2 * (n + 1)) * A363620 (n + 1)

end

end A363624.P12010904031495327583

/-! ## A363624.P2166535177512699903

`∑{e}[A108951(n+1), A001057(#)]`
-/

namespace A363624.P2166535177512699903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001057 (Nat.factorization (f1 n).natAbs p)

end

end A363624.P2166535177512699903

/-! ## A363624.P14282811129179670782

`A358758(A140253(n+3))+A350941(n)`
-/

namespace A363624.P14282811129179670782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358758 (A140253 (n + 3)).toNat + A350941 n

end

end A363624.P14282811129179670782

/-! ## A363624.P10352447273608612285

`A350941(n)+A025426(A083839(n+4))`
-/

namespace A363624.P10352447273608612285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350941 n + A025426 (A083839 (n + 4)).toNat

end

end A363624.P10352447273608612285

/-!
# A363625: Reverse-weighted alternating sum of the integer partition with Heinz number n.

The programs for A363625, there is no canonical definition to state claims against.
-/

/-! ## A363625.P14255519877831344597

`abs(A363619(n+1))`
-/

namespace A363625.P14255519877831344597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A363619 (n + 1)|

end

end A363625.P14255519877831344597

/-! ## A363625.P10150438892548922319

`A331362(A363619(n+1)²)`
-/

namespace A363625.P10150438892548922319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331362 (A363619 (n + 1) ^ 2).toNat

end

end A363625.P10150438892548922319

/-! ## A363625.P10253963135192851107

`A037213(A363619(n+1)^2)`
-/

namespace A363625.P10253963135192851107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A363619 (n + 1) ^ 2).toNat

end

end A363625.P10253963135192851107

/-! ## A363625.P8339309018629773615

`gcd(A119944(n), A363619(n+1))`
-/

namespace A363625.P8339309018629773615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119944 n) (A363619 (n + 1))

end

end A363625.P8339309018629773615

/-! ## A363625.P7384555801731716449

`lcm(A057077(n), A363619(n+1))`
-/

namespace A363625.P7384555801731716449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A363619 (n + 1))

end

end A363625.P7384555801731716449

/-! ## A363625.P6099190668124803454

`∑{d}[A363619(n+1), A000010(#)]`
-/

namespace A363625.P6099190668124803454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A363625.P6099190668124803454

/-!
# A363627: a(n) = greatest product < n of some subset of the divisors of n, or if n is in A008578 then a(n) = n.

The programs for A363627, there is no canonical definition to state claims against.
-/

/-! ## A363627.P4012607784733294818

`A033677(n+1)*A368248(A328546(2*n))`
-/

namespace A363627.P4012607784733294818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A368248 (A328546 (2 * n)).toNat

end

end A363627.P4012607784733294818

/-! ## A363627.P10726266064831457751

`A033677(n+1)*A053797(A080510(2*n+5))`
-/

namespace A363627.P10726266064831457751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A053797 (A080510 (2 * n + 5)).toNat

end

end A363627.P10726266064831457751

/-! ## A363627.P2007234475692113447

`A116548(A115060(n+1))%A000043(3*n+1)`
-/

namespace A363627.P2007234475692113447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116548 (A115060 (n + 1)).toNat) (A000043 (3 * n + 1))

end

end A363627.P2007234475692113447

/-! ## A363627.P9985261935341321652

`A033677(n+1)*A321455(A141199(n))`
-/

namespace A363627.P9985261935341321652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A321455 (A141199 n).toNat

end

end A363627.P9985261935341321652

/-!
# A363628: Expansion of Sum_{k>0} (1/(1-x^k)^3 - 1).

The programs for A363628, the canonical program `A363628.P256454717514951201` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363628 has offset 1).

The definition of A363628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363628.P256454717514951201

`∑{d}[n+1, C(#+2, 2)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363628

/-- `∑{d}[n+1, C(#+2, 2)]` -/
def P256454717514951201.Spec : Prop :=
  ∀ n, (P256454717514951201.a n : ℤ) = A363628 (n + 1)

theorem P256454717514951201.correct : P256454717514951201.Spec := by
  intro n
  simp only [A363628, Nat.add_sub_cancel]

end A363628

/-! ## A363628.P12005408836425509867

`∑{d}[n+1, A000096(#)+1]`
-/

namespace A363628.P12005408836425509867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000096 d + 1)

end

end A363628.P12005408836425509867

namespace A363628

/-- `∑{d}[n+1, A000096(#)+1]` -/
def P12005408836425509867.Spec : Prop :=
  ∀ n, P12005408836425509867.a n = A363628 (n + 1)

end A363628

/-! ## A363628.P1587865885173354758

`∑{d}[n+1, A000217(#+1)]`
-/

namespace A363628.P1587865885173354758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 (d + 1)

end

end A363628.P1587865885173354758

namespace A363628

/-- `∑{d}[n+1, A000217(#+1)]` -/
def P1587865885173354758.Spec : Prop :=
  ∀ n, P1587865885173354758.a n = A363628 (n + 1)

end A363628

/-! ## A363628.P7296205170274570785

`3/(n+1)*A343544(n+1)`
-/

namespace A363628.P7296205170274570785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A343544 (n + 1) : ℚ)

end

end A363628.P7296205170274570785

namespace A363628

/-- `3/(n+1)*A343544(n+1)` -/
def P7296205170274570785.Spec : Prop :=
  ∀ n, P7296205170274570785.a n = (A363628 (n + 1) : ℚ)

end A363628

/-! ## A363628.P15642402494071416363

`A007503(n+1)+A007437(n+1)`
-/

namespace A363628.P15642402494071416363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) + A007437 (n + 1)

end

end A363628.P15642402494071416363

namespace A363628

/-- `A007503(n+1)+A007437(n+1)` -/
def P15642402494071416363.Spec : Prop :=
  ∀ n, P15642402494071416363.a n = A363628 (n + 1)

end A363628

/-! ## A363628.P17249715796682890352

`A363610(n+1)+A272027(n+1)`
-/

namespace A363628.P17249715796682890352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363610 (n + 1) + A272027 (n + 1)

end

end A363628.P17249715796682890352

namespace A363628

/-- `A363610(n+1)+A272027(n+1)` -/
def P17249715796682890352.Spec : Prop :=
  ∀ n, P17249715796682890352.a n = A363628 (n + 1)

end A363628

/-! ## A363628.P13322191355841836967

`A000005(n+1)+A007437(n+1)+A000203(n+1)`
-/

namespace A363628.P13322191355841836967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A007437 (n + 1) + A000203 (n + 1))

end

end A363628.P13322191355841836967

namespace A363628

/-- `A000005(n+1)+A007437(n+1)+A000203(n+1)` -/
def P13322191355841836967.Spec : Prop :=
  ∀ n, P13322191355841836967.a n = A363628 (n + 1)

end A363628

/-! ## A363628.P5154292405409732629

`A116963(n+1)-(A363607(n+1)+A001157(n+1))`
-/

namespace A363628.P5154292405409732629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116963 (n + 1) - (A363607 (n + 1) + A001157 (n + 1))

end

end A363628.P5154292405409732629

namespace A363628

/-- `A116963(n+1)-(A363607(n+1)+A001157(n+1))` -/
def P5154292405409732629.Spec : Prop :=
  ∀ n, P5154292405409732629.a n = A363628 (n + 1)

end A363628

/-! ## A363628.P15975218900437329147

`A116963(n+1)-(A363604(n+1)+A007437(n+1))`
-/

namespace A363628.P15975218900437329147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116963 (n + 1) - (A363604 (n + 1) + A007437 (n + 1))

end

end A363628.P15975218900437329147

namespace A363628

/-- `A116963(n+1)-(A363604(n+1)+A007437(n+1))` -/
def P15975218900437329147.Spec : Prop :=
  ∀ n, P15975218900437329147.a n = A363628 (n + 1)

end A363628

/-! ## A363628.P15988167528947810264

`∑{d}[n+1, A253145(#)]`
-/

namespace A363628.P15988167528947810264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A253145 d

end

end A363628.P15988167528947810264

namespace A363628

/-- `∑{d}[n+1, A253145(#)]` -/
def P15988167528947810264.Spec : Prop :=
  ∀ n, P15988167528947810264.a n = A363628 (n + 1)

end A363628

/-! ## A363628.P10249130636061758200

`A116963(n+1)-A059358(n+1)`
-/

namespace A363628.P10249130636061758200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116963 (n + 1) - A059358 (n + 1)

end

end A363628.P10249130636061758200

namespace A363628

/-- `A116963(n+1)-A059358(n+1)` -/
def P10249130636061758200.Spec : Prop :=
  ∀ n, P10249130636061758200.a n = A363628 (n + 1)

end A363628

/-!
# A363629: Expansion of Sum_{k>0} (1/(1+x^k)^2 - 1).

The programs for A363629, the canonical program `A363629.P1618946847333743156` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363629 has offset 1).

The definition of A363629 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048272, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363629.P2251598169352133102

`∑{d}[n+1, (-1)^#*(#+1)]`
-/

namespace A363629.P2251598169352133102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1) ^ d * (d + 1 : ℤ)

end

end A363629.P2251598169352133102

namespace A363629

/-- `∑{d}[n+1, (-1)^#*(#+1)]` -/
def P2251598169352133102.Spec : Prop :=
  ∀ n, P2251598169352133102.a n = A363629 (n + 1)

end A363629

/-! ## A363629.P1618946847333743156

`-(A002129(n+1)+A048272(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A363629

/-- `-(A002129(n+1)+A048272(n+1))` -/
def P1618946847333743156.Spec : Prop :=
  ∀ n, P1618946847333743156.a n = A363629 (n + 1)

theorem P1618946847333743156.correct : P1618946847333743156.Spec := by
  intro n
  simp only [A363629, Nat.add_sub_cancel]

end A363629

/-! ## A363629.P15040844064686621529

`A363630(n+1)+A320900(n+1)`
-/

namespace A363629.P15040844064686621529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363630 (n + 1) + A320900 (n + 1)

end

end A363629.P15040844064686621529

namespace A363629

/-- `A363630(n+1)+A320900(n+1)` -/
def P15040844064686621529.Spec : Prop :=
  ∀ n, P15040844064686621529.a n = A363629 (n + 1)

end A363629

/-! ## A363629.P741928934026665684

`A325940(n+1)-2*A048272(n+1)`
-/

namespace A363629.P741928934026665684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325940 (n + 1) - 2 * A048272 (n + 1)

end

end A363629.P741928934026665684

namespace A363629

/-- `A325940(n+1)-2*A048272(n+1)` -/
def P741928934026665684.Spec : Prop :=
  ∀ n, P741928934026665684.a n = A363629 (n + 1)

end A363629

/-! ## A363629.P934506171015625576

`A320900(n+1)+A363631(n+1)+A320901(n+1)`
-/

namespace A363629.P934506171015625576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320900 (n + 1) + (A363631 (n + 1) + A320901 (n + 1))

end

end A363629.P934506171015625576

namespace A363629

/-- `A320900(n+1)+A363631(n+1)+A320901(n+1)` -/
def P934506171015625576.Spec : Prop :=
  ∀ n, P934506171015625576.a n = A363629 (n + 1)

end A363629

/-! ## A363629.P8464150681248659812

`A320901(n+1)+A363630(n+1)+A363598(n+1)`
-/

namespace A363629.P8464150681248659812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320901 (n + 1) + (A363630 (n + 1) + A363598 (n + 1))

end

end A363629.P8464150681248659812

namespace A363629

/-- `A320901(n+1)+A363630(n+1)+A363598(n+1)` -/
def P8464150681248659812.Spec : Prop :=
  ∀ n, P8464150681248659812.a n = A363629 (n + 1)

end A363629

/-! ## A363629.P8049484549215471047

`A002129(n+1)+A363630(n+1)-A363022(n+1)`
-/

namespace A363629.P8049484549215471047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1) + (A363630 (n + 1) - A363022 (n + 1))

end

end A363629.P8049484549215471047

namespace A363629

/-- `A002129(n+1)+A363630(n+1)-A363022(n+1)` -/
def P8049484549215471047.Spec : Prop :=
  ∀ n, P8049484549215471047.a n = A363629 (n + 1)

end A363629

/-!
# A363630: Expansion of Sum_{k>0} (1/(1+x^k)^3 - 1).

The programs for A363630, the canonical program `A363630.P14594292375729000675` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363630 has offset 1).

The definition of A363630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363630.P14229846502808357954

`A363631(n+1)+A320901(n+1)`
-/

namespace A363630.P14229846502808357954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363631 (n + 1) + A320901 (n + 1)

end

end A363630.P14229846502808357954

namespace A363630

/-- `A363631(n+1)+A320901(n+1)` -/
def P14229846502808357954.Spec : Prop :=
  ∀ n, P14229846502808357954.a n = A363630 (n + 1)

end A363630

/-! ## A363630.P14594292375729000675

`A363629(n+1)-A320900(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A363630

/-- `A363629(n+1)-A320900(n+1)` -/
def P14594292375729000675.Spec : Prop :=
  ∀ n, P14594292375729000675.a n = A363630 (n + 1)

theorem P14594292375729000675.correct : P14594292375729000675.Spec := by
  intro n
  simp only [A363630, Nat.add_sub_cancel]

end A363630

/-! ## A363630.P616131832545899226

`A363022(n+1)+A363629(n+1)-A002129(n+1)`
-/

namespace A363630.P616131832545899226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363022 (n + 1) + (A363629 (n + 1) - A002129 (n + 1))

end

end A363630.P616131832545899226

namespace A363630

/-- `A363022(n+1)+A363629(n+1)-A002129(n+1)` -/
def P616131832545899226.Spec : Prop :=
  ∀ n, P616131832545899226.a n = A363630 (n + 1)

end A363630

/-! ## A363630.P16574261038536592336

`A320900(n+1)+A363631(n+1)-A363598(n+1)`
-/

namespace A363630.P16574261038536592336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320900 (n + 1) + (A363631 (n + 1) - A363598 (n + 1))

end

end A363630.P16574261038536592336

namespace A363630

/-- `A320900(n+1)+A363631(n+1)-A363598(n+1)` -/
def P16574261038536592336.Spec : Prop :=
  ∀ n, P16574261038536592336.a n = A363630 (n + 1)

end A363630

/-! ## A363630.P9943999379126011094

`A363629(n+1)-(A363598(n+1)+A320901(n+1))`
-/

namespace A363630.P9943999379126011094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363629 (n + 1) - (A363598 (n + 1) + A320901 (n + 1))

end

end A363630.P9943999379126011094

namespace A363630

/-- `A363629(n+1)-(A363598(n+1)+A320901(n+1))` -/
def P9943999379126011094.Spec : Prop :=
  ∀ n, P9943999379126011094.a n = A363630 (n + 1)

end A363630

/-!
# A363631: Expansion of Sum_{k>0} (1/(1+x^k)^4 - 1).

The programs for A363631, the canonical program `A363631.P17820446628079016110` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363631 has offset 1).

The definition of A363631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363631.P17820446628079016110

`A363630(n+1)-A320901(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A363631

/-- `A363630(n+1)-A320901(n+1)` -/
def P17820446628079016110.Spec : Prop :=
  ∀ n, P17820446628079016110.a n = A363631 (n + 1)

theorem P17820446628079016110.correct : P17820446628079016110.Spec := by
  intro n
  simp only [A363631, Nat.add_sub_cancel]

end A363631

/-! ## A363631.P14916783360814127410

`A363629(n+1)-(A320901(n+1)+A320900(n+1))`
-/

namespace A363631.P14916783360814127410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363629 (n + 1) - (A320901 (n + 1) + A320900 (n + 1))

end

end A363631.P14916783360814127410

namespace A363631

/-- `A363629(n+1)-(A320901(n+1)+A320900(n+1))` -/
def P14916783360814127410.Spec : Prop :=
  ∀ n, P14916783360814127410.a n = A363631 (n + 1)

end A363631

/-! ## A363631.P91005806860727846

`A363630(n+1)-(A363617(n+1)+A321543(n+1))`
-/

namespace A363631.P91005806860727846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363630 (n + 1) - (A363617 (n + 1) + A321543 (n + 1))

end

end A363631.P91005806860727846

namespace A363631

/-- `A363630(n+1)-(A363617(n+1)+A321543(n+1))` -/
def P91005806860727846.Spec : Prop :=
  ∀ n, P91005806860727846.a n = A363631 (n + 1)

end A363631

/-! ## A363631.P10084955749206037054

`A363630(n+1)-(A320900(n+1)-A363598(n+1))`
-/

namespace A363631.P10084955749206037054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363630 (n + 1) - (A320900 (n + 1) - A363598 (n + 1))

end

end A363631.P10084955749206037054

namespace A363631

/-- `A363630(n+1)-(A320900(n+1)-A363598(n+1))` -/
def P10084955749206037054.Spec : Prop :=
  ∀ n, P10084955749206037054.a n = A363631 (n + 1)

end A363631

/-! ## A363631.P1256183179063421222

`A363629(n+1)-(A363598(n+1)+A320901(n+1))-A320901(n+1)`
-/

namespace A363631.P1256183179063421222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363629 (n + 1) - (A363598 (n + 1) + A320901 (n + 1)) - A320901 (n + 1)

end

end A363631.P1256183179063421222

namespace A363631

/-- `A363629(n+1)-(A363598(n+1)+A320901(n+1))-A320901(n+1)` -/
def P1256183179063421222.Spec : Prop :=
  ∀ n, P1256183179063421222.a n = A363631 (n + 1)

end A363631

/-! ## A363631.P5175096878959364630

`A363630(n+1)-(A321543(n+1)+A363615(n+1)-A363616(n+1))`
-/

namespace A363631.P5175096878959364630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363630 (n + 1) - (A321543 (n + 1) + (A363615 (n + 1) - A363616 (n + 1)))

end

end A363631.P5175096878959364630

namespace A363631

/-- `A363630(n+1)-(A321543(n+1)+A363615(n+1)-A363616(n+1))` -/
def P5175096878959364630.Spec : Prop :=
  ∀ n, P5175096878959364630.a n = A363631 (n + 1)

end A363631

/-! ## A363631.P2771207999939439080

`A363630(n+1)-(A363629(n+1)-(A363630(n+1)+A363598(n+1)))`
-/

namespace A363631.P2771207999939439080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363630 (n + 1) - (A363629 (n + 1) - (A363630 (n + 1) + A363598 (n + 1)))

end

end A363631.P2771207999939439080

namespace A363631

/-- `A363630(n+1)-(A363629(n+1)-(A363630(n+1)+A363598(n+1)))` -/
def P2771207999939439080.Spec : Prop :=
  ∀ n, P2771207999939439080.a n = A363631 (n + 1)

end A363631

/-! ## A363631.P3015536289371323866

`A363630(n+1)-∑{d}[n+1, A053122(A000124(#))]`
-/

namespace A363631.P3015536289371323866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363630 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A053122 (A000124 d).toNat

end

end A363631.P3015536289371323866

namespace A363631

/-- `A363630(n+1)-∑{d}[n+1, A053122(A000124(#))]` -/
def P3015536289371323866.Spec : Prop :=
  ∀ n, P3015536289371323866.a n = A363631 (n + 1)

end A363631

/-!
# A363635: Ludic numbers that are products of smaller ludic numbers.

The programs for A363635, there is no canonical definition to state claims against.
-/

/-! ## A363635.P616185890390888419

`A192504(A180648(n+1)%A048055(3*n+4))`
-/

namespace A363635.P616185890390888419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192504 (Int.tmod (A180648 (n + 1)) (A048055 (3 * n + 4))).toNat

end

end A363635.P616185890390888419

/-!
# A363641: Expansion of Sum_{k>0} x^(2*k)/(1 - k*x^k)^2.

The programs for A363641, the canonical program `A363641.P6300134254327852227` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363641 has offset 1).

The definition of A363641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363641.P6300134254327852227

`∑{d}[n+1, ((n+1)/#)^(#-2)*(#-1)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363641

/-- `∑{d}[n+1, ((n+1)/#)^(#-2)*(#-1)]` -/
def P6300134254327852227.Spec : Prop :=
  ∀ n, P6300134254327852227.a n = (A363641 (n + 1) : ℚ)

end A363641

/-!
# A363643: Expansion of Sum_{k>0} x^(2*k)/(1 - k*x^k)^3.

The programs for A363643, the canonical program `A363643.P2033099758502730068` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363643 has offset 1).

The definition of A363643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363643.P2033099758502730068

`∑{d}[n+1, ((n+1)/#)^(#-2)*C(#, 2)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363643

/-- `∑{d}[n+1, ((n+1)/#)^(#-2)*C(#, 2)]` -/
def P2033099758502730068.Spec : Prop :=
  ∀ n, P2033099758502730068.a n = (A363643 (n + 1) : ℚ)

end A363643

/-!
# A363644: Expansion of Sum_{k>0} x^(3*k)/(1 - k*x^k)^3.

The programs for A363644, there is no canonical definition to state claims against.
-/

/-! ## A363644.P16106674332763949725

`A045778(ceil(A001250(n)/2))+∑[n-1]`
-/

namespace A363644.P16106674332763949725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 ⌈(A001250 n : ℚ) / 2⌉.toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363644.P16106674332763949725

/-! ## A363644.P3514417568904641049

`A045778(A229892(∑[n]+1))+∑[n-1]`
-/

namespace A363644.P3514417568904641049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A229892 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A363644.P3514417568904641049

/-! ## A363644.P17441953438923246564

`A045778(A008281(∑[n]+n))+∑[n-1]`
-/

namespace A363644.P17441953438923246564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A008281 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A363644.P17441953438923246564

/-!
# A363645: Expansion of Sum_{k>0} x^k/(1 - k*x^k)^4.

The programs for A363645, there is no canonical definition to state claims against.
-/

/-! ## A363645.P14527984233671683131

`A282864(A205596(n))`
-/

namespace A363645.P14527984233671683131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282864 (A205596 n).toNat

end

end A363645.P14527984233671683131

/-!
# A363646: Expansion of Sum_{k>0} (1/(1 - (k*x)^k)^2 - 1).

The programs for A363646, the canonical program `A363646.P16722167700892869752` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363646 has offset 1).

The definition of A363646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363646.P16722167700892869752

`∑{d}[n+1, ((n+1)/#)^(n+1)*(#+1)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363646

/-- `∑{d}[n+1, ((n+1)/#)^(n+1)*(#+1)]` -/
def P16722167700892869752.Spec : Prop :=
  ∀ n, P16722167700892869752.a n = (A363646 (n + 1) : ℚ)

end A363646

/-!
# A363649: Expansion of Sum_{k>0} x^(2*k)/(1 - (k*x)^k)^2.

The programs for A363649, the canonical program `A363649.P8915722165232699316` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363649 has offset 1).

The definition of A363649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363649.P8915722165232699316

`∑{d}[n+1, ((n+1)/#)^(n+1-2*(n+1)/#)*(#-1)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363649

/-- `∑{d}[n+1, ((n+1)/#)^(n+1-2*(n+1)/#)*(#-1)]` -/
def P8915722165232699316.Spec : Prop :=
  ∀ n, P8915722165232699316.a n = (A363649 (n + 1) : ℝ)

end A363649

/-!
# A363650: Expansion of Sum_{k>0} x^k/(1 - (k*x)^k)^3.

The programs for A363650, there is no canonical definition to state claims against.
-/

/-! ## A363650.P8691687854119854527

`A231549(A134984(n))+record[xor(n, 2*n)]`
-/

namespace A363650.P8691687854119854527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231549 (A134984 n).toNat + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A363650.P8691687854119854527

/-!
# A363651: Expansion of Sum_{k>0} x^(2*k)/(1 - (k*x)^k)^3.

The programs for A363651, the canonical program `A363651.P17408446645111978784` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363651 has offset 1).

The definition of A363651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363651.P17408446645111978784

`∑{d}[n+1, ((n+1)/#)^(n+1-2*(n+1)/#)*C(#, 2)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363651

/-- `∑{d}[n+1, ((n+1)/#)^(n+1-2*(n+1)/#)*C(#, 2)]` -/
def P17408446645111978784.Spec : Prop :=
  ∀ n, P17408446645111978784.a n = (A363651 (n + 1) : ℝ)

end A363651

/-!
# A363654: Lexicographically earliest sequence of positive integers such that the n-th pair of identical terms encloses exactly a(n) terms.

The programs for A363654, there is no canonical definition to state claims against.
-/

/-! ## A363654.P354666953490122433

`A246359(A225490(2*n+1)+comp[n*n%2+3])`
-/

namespace A363654.P354666953490122433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A225490 (2 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A363654.P354666953490122433

/-! ## A363654.P3072470183874242381

`A246359(A353864(n)+A225490(2*n+1))`
-/

namespace A363654.P3072470183874242381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A353864 n + A225490 (2 * n + 1)).toNat

end

end A363654.P3072470183874242381

/-! ## A363654.P8290486810524173159

`A139351(or(A345270(n+1), A368823(n+4)))`
-/

namespace A363654.P8290486810524173159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (Int.lor (A345270 (n + 1)) (A368823 (n + 4))).toNat

end

end A363654.P8290486810524173159

/-! ## A363654.P5617803278949130240

`A064692(A147298(2*(n+2))*A316313(2*(n+1)))`
-/

namespace A363654.P5617803278949130240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A147298 (2 * (n + 2)) * A316313 (2 * (n + 1))).toNat

end

end A363654.P5617803278949130240

/-! ## A363654.P6050434167181476650

`∑{e}[A181532(2*(n+2)), A124767(#)]`
-/

namespace A363654.P6050434167181476650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181532 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A124767 (Nat.factorization (f1 n).natAbs p)

end

end A363654.P6050434167181476650

/-!
# A363655: a(0) = 1; for n > 0, a(n) = prime( Sum_{k=0..n-1} a(k) * a(n-k-1) ).

The programs for A363655, there is no canonical definition to state claims against.
-/

/-! ## A363655.P666300045942833421

`A225659(a(n-1)+n)` with `a(0)=1, a(1)=2`
-/

namespace A363655.P666300045942833421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A225659 (a (n - 1) + (n : ℤ)).toNat

end

end A363655.P666300045942833421

/-!
# A363656: Number of bounded affine permutations of size n.

The programs for A363656, there is no canonical definition to state claims against.
-/

/-! ## A363656.P3843203960528065818

`or(1, A035250(A231554(n)))`
-/

namespace A363656.P3843203960528065818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A035250 (A231554 n).toNat)

end

end A363656.P3843203960528065818

/-!
# A363657: Numbers m where A217854(m) is a record minimum.

The programs for A363657, there is no canonical definition to state claims against.
-/

/-! ## A363657.P8659225823922465623

`∩[A216500(n+1), A332622(n+1)]`
-/

namespace A363657.P8659225823922465623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363657.P8659225823922465623

/-! ## A363657.P1334442561407083713

`∩[A272266(n+1), A332622(n+1)]`
-/

namespace A363657.P1334442561407083713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363657.P1334442561407083713

/-! ## A363657.P8346823395524570571

`∩[A331221(n+1), A332622(n+1)]`
-/

namespace A363657.P8346823395524570571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363657.P8346823395524570571

/-! ## A363657.P3742030705767523431

`∩[A332622(n+1), A363284(n+1)]`
-/

namespace A363657.P3742030705767523431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363657.P3742030705767523431

/-! ## A363657.P1936998718515003422

`∩[A332622(n+1), A378253(n+1)]`
-/

namespace A363657.P1936998718515003422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363657.P1936998718515003422

/-!
# A363658: Positive numbers m where A217854(m) is positive and increases to a record.

The programs for A363658, there is no canonical definition to state claims against.
-/

/-! ## A363658.P12349371100254959616

`∩[A028812(n+1), A158292(n+1)]`
-/

namespace A363658.P12349371100254959616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363658.P12349371100254959616

/-! ## A363658.P3955604404568862484

`∩[A158292(n+1), comp[n²]]`
-/

namespace A363658.P3955604404568862484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158292 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A363658.P3955604404568862484

/-! ## A363658.P12452298780183404208

`∩[A000037(n+1), A158292(n+1)]`
-/

namespace A363658.P12452298780183404208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363658.P12452298780183404208

/-! ## A363658.P8879377273449773022

`∩[A028777(n+1), A158292(n+1)]`
-/

namespace A363658.P8879377273449773022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363658.P8879377273449773022

/-! ## A363658.P1761885226412980900

`∩[A028962(n+1), A158292(n+1)]`
-/

namespace A363658.P1761885226412980900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363658.P1761885226412980900

/-!
# A363660: a(n) = Sum_{d|n} binomial(d+n,n).

The programs for A363660, the canonical program `A363660.P14935907042977675298` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363660 has offset 1).

The definition of A363660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363660.P14935907042977675298

`A343549(n+1)+A343548(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A363660

/-- `A343549(n+1)+A343548(n+1)` -/
def P14935907042977675298.Spec : Prop :=
  ∀ n, P14935907042977675298.a n = A363660 (n + 1)

theorem P14935907042977675298.correct : P14935907042977675298.Spec := by
  intro n
  simp only [A363660, Nat.add_sub_cancel]

end A363660

/-! ## A363660.P942227364357913673

`∑{d}[n+1, C(n+1+#, #)]`
-/

namespace A363660.P942227364357913673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (n + 1 + d) d

end

end A363660.P942227364357913673

namespace A363660

/-- `∑{d}[n+1, C(n+1+#, #)]` -/
def P942227364357913673.Spec : Prop :=
  ∀ n, (P942227364357913673.a n : ℤ) = A363660 (n + 1)

end A363660

/-! ## A363660.P9585169489492968291

`A343549(n+1)+∑{d}[n+1, A007318(A000217(#+n)+n+1)]`
-/

namespace A363660.P9585169489492968291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343549 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A007318 (A000217 (d + n) + (n + 1 : ℤ)).toNat

end

end A363660.P9585169489492968291

namespace A363660

/-- `A343549(n+1)+∑{d}[n+1, A007318(A000217(#+n)+n+1)]` -/
def P9585169489492968291.Spec : Prop :=
  ∀ n, P9585169489492968291.a n = A363660 (n + 1)

end A363660

/-!
# A363661: a(n) = Sum_{d|n} (n/d)^d * binomial(d+n,n).

The programs for A363661, there is no canonical definition to state claims against.
-/

/-! ## A363661.P2673069144429809452

`∑[∑[A263410(A000726(2*(n+1)))]]`
-/

namespace A363661.P2673069144429809452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263410 (A000726 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363661.P2673069144429809452

/-!
# A363663: a(n) = Sum_{d|n} (n/d)^(d-1) * binomial(d+n-1,n).

The programs for A363663, there is no canonical definition to state claims against.
-/

/-! ## A363663.P5178146006137695217

`A230980(C(A337978(3*(n+1)), A230980(2*(n+1))))`
-/

namespace A363663.P5178146006137695217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Nat.choose (A337978 (3 * (n + 1))).toNat (A230980 (2 * (n + 1))).toNat)

end

end A363663.P5178146006137695217

/-!
# A363664: a(n) = Sum_{d|n} (n/d)^(n-n/d) * binomial(d+n-1,n).

The programs for A363664, there is no canonical definition to state claims against.
-/

/-! ## A363664.P17570248362665444744

`A242409(A122854(n))`
-/

namespace A363664.P17570248362665444744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242409 (A122854 n).toNat

end

end A363664.P17570248362665444744

/-!
# A363666: a(n) = Sum_{d|n} (n/d)^(d-1) * binomial(d+n-2,n-1).

The programs for A363666, there is no canonical definition to state claims against.
-/

/-! ## A363666.P14531928649434579708

`record[gcd(A003369(3*(n+1)), A061443(n+1))]`
-/

namespace A363666.P14531928649434579708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003369 (3 * (n + 1))) (A061443 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363666.P14531928649434579708

/-! ## A363666.P6682105353801276069

`A101163(n)+A069905(A029519(n+1))`
-/

namespace A363666.P6682105353801276069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101163 n + A069905 (A029519 (n + 1)).toNat

end

end A363666.P6682105353801276069

/-!
# A363668: a(n) = Sum_{d|n} (n/d)^d * binomial(d+n-1,d).

The programs for A363668, there is no canonical definition to state claims against.
-/

/-! ## A363668.P7410368990513271239

`A216527(A032309(n))`
-/

namespace A363668.P7410368990513271239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216527 (A032309 n).toNat

end

end A363668.P7410368990513271239

/-!
# A363670: Natural numbers k divisible by all natural numbers < log(k) + log(1 + log(k)).

The programs for A363670, there is no canonical definition to state claims against.
-/

/-! ## A363670.P14140352869323278978

`A214570(A369003(n+1)+1)`
-/

namespace A363670.P14140352869323278978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214570 (A369003 (n + 1) + 1).toNat

end

end A363670.P14140352869323278978

/-! ## A363670.P9611818141880641624

`filter[A294342(n+1), A204441(#)]`
-/

namespace A363670.P9611818141880641624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204441 (f1 j).toNat = 1) n)

end

end A363670.P9611818141880641624

/-! ## A363670.P4001141393944983376

`A214570(lt[A008949(3*n+4), A005563(n)])`
-/

namespace A363670.P4001141393944983376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214570 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A363670.P4001141393944983376

/-! ## A363670.P253461585097889321

`record[A096111(A209859(n))]`
-/

namespace A363670.P253461585097889321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096111 (A209859 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363670.P253461585097889321

/-! ## A363670.P2459791058809668187

`eq[A002852(n), A286515(n)]`
-/

namespace A363670.P2459791058809668187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363670.P2459791058809668187

/-!
# A363671: Triangular array: row n lists the numbers k such that prime(n+2)-2*k is a prime.

The programs for A363671, there is no canonical definition to state claims against.
-/

/-! ## A363671.P16407328019475447010

`A090321(comp[∑[n]])/2`
-/

namespace A363671.P16407328019475447010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090321 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A363671.P16407328019475447010

/-! ## A363671.P10774205572382670313

`A205558(∑[char[∑[n]]]²-n)`
-/

namespace A363671.P10774205572382670313
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205558 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A363671.P10774205572382670313

/-! ## A363671.P16239021735212915521

`(n%2)!*A205558(A038722(n+1))`
-/

namespace A363671.P16239021735212915521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A205558 (A038722 (n + 1)).toNat

end

end A363671.P16239021735212915521

/-! ## A363671.P2834526920805013706

`A205558(A038722(n+1))%A038826(n)`
-/

namespace A363671.P2834526920805013706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205558 (A038722 (n + 1)).toNat) (A038826 n)

end

end A363671.P2834526920805013706

/-! ## A363671.P10585130154452359896

`A205558(A038722(n+1))/A230405(∑[n])`
-/

namespace A363671.P10585130154452359896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205558 (A038722 (n + 1)).toNat : ℚ) / (A230405 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A363671.P10585130154452359896

/-! ## A363671.P1663345173342559174

`A205558(A061579(n)+1)%A000040(n+1)`
-/

namespace A363671.P1663345173342559174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205558 (A061579 n + 1).toNat) (A000040 (n + 1))

end

end A363671.P1663345173342559174

/-! ## A363671.P13785927572646513875

`A205558(A038722(n+1))+A000035(2*(n+2))`
-/

namespace A363671.P13785927572646513875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205558 (A038722 (n + 1)).toNat + A000035 (2 * (n + 2))

end

end A363671.P13785927572646513875

/-! ## A363671.P2618388375559606597

`A205558(A038722(n+1))+A000007(2*n+3)`
-/

namespace A363671.P2618388375559606597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205558 (A038722 (n + 1)).toNat + A000007 (2 * n + 3)

end

end A363671.P2618388375559606597

/-! ## A363671.P3241669435136081297

`A000720(A363672(n+1))`
-/

namespace A363671.P3241669435136081297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A363672 (n + 1)).toNat

end

end A363671.P3241669435136081297

/-! ## A363671.P7587270931143536909

`A064839(A363672(n+1)²)`
-/

namespace A363671.P7587270931143536909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A363672 (n + 1) ^ 2).toNat

end

end A363671.P7587270931143536909

/-!
# A363672: Triangular array: row n lists the primes indexed by the array in A363671.

The programs for A363672, there is no canonical definition to state claims against.
-/

/-! ## A363672.P15995387474053629266

`A000040(A363671(n+1))`
-/

namespace A363672.P15995387474053629266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A363671 (n + 1)).toNat

end

end A363672.P15995387474053629266

/-! ## A363672.P7869246880599786650

`A008578(A363671(n+1)+1)`
-/

namespace A363672.P7869246880599786650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A363671 (n + 1) + 1).toNat

end

end A363672.P7869246880599786650

/-!
# A363673: a(n) is the least prime factor (> 3) in the factorization of 2^(2*prime(n))-1.

The programs for A363673, there is no canonical definition to state claims against.
-/

/-! ## A363673.P1911116949063033931

`A112092(A000040(n+1))`
-/

namespace A363673.P1911116949063033931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112092 (A000040 (n + 1)).toNat

end

end A363673.P1911116949063033931

/-! ## A363673.P2420606178405858248

`A112092(A049551(n+1))`
-/

namespace A363673.P2420606178405858248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112092 (A049551 (n + 1)).toNat

end

end A363673.P2420606178405858248

/-! ## A363673.P9075615243913160489

`A112092(A057448(n+1))`
-/

namespace A363673.P9075615243913160489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112092 (A057448 (n + 1)).toNat

end

end A363673.P9075615243913160489

/-! ## A363673.P6869285387241482310

`A112092(A058853(n+1))`
-/

namespace A363673.P6869285387241482310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112092 (A058853 (n + 1)).toNat

end

end A363673.P6869285387241482310

/-! ## A363673.P9735854323393915295

`A186522(A100484(n+1))`
-/

namespace A363673.P9735854323393915295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186522 (A100484 (n + 1)).toNat

end

end A363673.P9735854323393915295

/-!
# A363674: T(n,k) is the decimal equivalent of the n-bit inverted Gray code for k; triangle T(n,k), n>=0, 0<=k<=2^n-1, read by rows.

The programs for A363674, the canonical program `A363674.P14481479446995928057` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363674 has offset 0).

The definition of A363674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363674.P14481479446995928057

`A035327(A233280(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A363674

/-- `A035327(A233280(n+1))` -/
def P14481479446995928057.Spec : Prop :=
  ∀ n, P14481479446995928057.a n = A363674 n

theorem P14481479446995928057.correct : P14481479446995928057.Spec := by
  intro n
  simp only [A363674]

end A363674

/-! ## A363674.P3532484640919463996

`A038554(A258746(n+1))`
-/

namespace A363674.P3532484640919463996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A258746 (n + 1)).toNat

end

end A363674.P3532484640919463996

namespace A363674

/-- `A038554(A258746(n+1))` -/
def P3532484640919463996.Spec : Prop :=
  ∀ n, P3532484640919463996.a n = A363674 n

end A363674

/-! ## A363674.P13961851041860884115

`A279645(A054429(n+1))`
-/

namespace A363674.P13961851041860884115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279645 (A054429 (n + 1)).toNat

end

end A363674.P13961851041860884115

namespace A363674

/-- `A279645(A054429(n+1))` -/
def P13961851041860884115.Spec : Prop :=
  ∀ n, P13961851041860884115.a n = A363674 n

end A363674

/-! ## A363674.P5480104778988598161

`A279645(A335133(A334727(n+1)))`
-/

namespace A363674.P5480104778988598161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279645 (A335133 (A334727 (n + 1)).toNat).toNat

end

end A363674.P5480104778988598161

namespace A363674

/-- `A279645(A335133(A334727(n+1)))` -/
def P5480104778988598161.Spec : Prop :=
  ∀ n, P5480104778988598161.a n = A363674 n

end A363674

/-! ## A363674.P3916593504336038846

`A279645(A055010(A070939(n+1))-(n+1))`
-/

namespace A363674.P3916593504336038846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279645 (A055010 (A070939 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A363674.P3916593504336038846

namespace A363674

/-- `A279645(A055010(A070939(n+1))-(n+1))` -/
def P3916593504336038846.Spec : Prop :=
  ∀ n, P3916593504336038846.a n = A363674 n

end A363674

/-! ## A363674.P10832958734279206544

`A279645(A065266(n+1))`
-/

namespace A363674.P10832958734279206544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279645 (A065266 (n + 1)).toNat

end

end A363674.P10832958734279206544

namespace A363674

/-- `A279645(A065266(n+1))` -/
def P10832958734279206544.Spec : Prop :=
  ∀ n, P10832958734279206544.a n = A363674 n

end A363674

/-! ## A363674.P15696447158992936294

`A279645(A004754(n+1))`
-/

namespace A363674.P15696447158992936294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279645 (A004754 (n + 1)).toNat

end

end A363674.P15696447158992936294

namespace A363674

/-- `A279645(A004754(n+1))` -/
def P15696447158992936294.Spec : Prop :=
  ∀ n, P15696447158992936294.a n = A363674 n

end A363674

/-! ## A363674.P5881835709980913544

`A279645(A065271(n+1))`
-/

namespace A363674.P5881835709980913544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279645 (A065271 (n + 1)).toNat

end

end A363674.P5881835709980913544

namespace A363674

/-- `A279645(A065271(n+1))` -/
def P5881835709980913544.Spec : Prop :=
  ∀ n, P5881835709980913544.a n = A363674 n

end A363674

/-! ## A363674.P2191383474013581409

`A053645(A154436(n+1))`
-/

namespace A363674.P2191383474013581409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A154436 (n + 1)).toNat

end

end A363674.P2191383474013581409

namespace A363674

/-- `A053645(A154436(n+1))` -/
def P2191383474013581409.Spec : Prop :=
  ∀ n, P2191383474013581409.a n = A363674 n

end A363674

/-! ## A363674.P14961217442186440173

`A154436(n+1)-A053644(n+1)`
-/

namespace A363674.P14961217442186440173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (n + 1) - A053644 (n + 1)

end

end A363674.P14961217442186440173

namespace A363674

/-- `A154436(n+1)-A053644(n+1)` -/
def P14961217442186440173.Spec : Prop :=
  ∀ n, P14961217442186440173.a n = A363674 n

end A363674

/-! ## A363674.P5205714803308977317

`A154436(n+1)-A072376(A059893(2*(n+1)))`
-/

namespace A363674.P5205714803308977317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (n + 1) - A072376 (A059893 (2 * (n + 1))).toNat

end

end A363674.P5205714803308977317

namespace A363674

/-- `A154436(n+1)-A072376(A059893(2*(n+1)))` -/
def P5205714803308977317.Spec : Prop :=
  ∀ n, P5205714803308977317.a n = A363674 n

end A363674

/-!
# A363675: Numbers k such that the least common multiple of the degrees of the irreducible characters of S_k equals |S_k| = k!.

The programs for A363675, there is no canonical definition to state claims against.
-/

/-! ## A363675.P10575352927391238066

`lt[1, A005882(n)*A010054(n)]`
-/

namespace A363675.P10575352927391238066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n * A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A363675.P10575352927391238066

/-! ## A363675.P16183238300094648449

`filter[A363676(n+1), A010054(#)]`
-/

namespace A363675.P16183238300094648449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A363675.P16183238300094648449

/-! ## A363675.P3747968977270738418

`eq[A243202(n), A359326(n+1)]`
-/

namespace A363675.P3747968977270738418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243202 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363675.P3747968977270738418

/-! ## A363675.P5412420880901590819

`eq[A243203(n), A359326(n+1)]`
-/

namespace A363675.P5412420880901590819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243203 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363675.P5412420880901590819

/-! ## A363675.P10766604810114656937

`eq[A244124(n), A359326(n+1)]`
-/

namespace A363675.P10766604810114656937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363675.P10766604810114656937

/-!
# A363678: Start with the list of positive integers. For each m = 1, 2, 3, ..., insert a copy of the number m after each of the next m-1 terms.

The programs for A363678, there is no canonical definition to state claims against.
-/

/-! ## A363678.P12665228639302195694

`A296658(A007090(n+1)+2)`
-/

namespace A363678.P12665228639302195694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296658 (A007090 (n + 1) + 2).toNat

end

end A363678.P12665228639302195694

/-!
# A363680: Number of iterations of phi(x) at n needed to reach a cube.

The programs for A363680, there is no canonical definition to state claims against.
-/

/-! ## A363680.P11694102972863968041

`A003434(n+1)*A285515(A172316(n))`
-/

namespace A363680.P11694102972863968041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (n + 1) * A285515 (A172316 n).toNat

end

end A363680.P11694102972863968041

/-! ## A363680.P6492687649356128228

`A003434(n+1)%A349814(A007590(n))`
-/

namespace A363680.P6492687649356128228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003434 (n + 1)) (A349814 (A007590 n).toNat)

end

end A363680.P6492687649356128228

/-! ## A363680.P6845502360797488027

`A003434(n+1)*A316829(A100185(n+1))`
-/

namespace A363680.P6845502360797488027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (n + 1) * A316829 (A100185 (n + 1)).toNat

end

end A363680.P6845502360797488027

/-! ## A363680.P315903168792176792

`A003434(n+1)*A188470(A258939(3*n))`
-/

namespace A363680.P315903168792176792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (n + 1) * A188470 (A258939 (3 * n)).toNat

end

end A363680.P315903168792176792

/-! ## A363680.P16919474148753063765

`C(A003434(n+1), A057909(A284099(n+1)))`
-/

namespace A363680.P16919474148753063765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003434 (n + 1)).toNat (A057909 (A284099 (n + 1)).toNat).toNat

end

end A363680.P16919474148753063765

/-!
# A363681: Sphenic numbers sandwiched between two squarefree semiprimes.

The programs for A363681, the canonical program `A363681.P12776241071175054138` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363681 has offset 1).

The definition of A363681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1052 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363681.P11241484802338212936

`∩[A090502(n+1), A362811(n+1)]`
-/

namespace A363681.P11241484802338212936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363681.P11241484802338212936

namespace A363681

/-- `∩[A090502(n+1), A362811(n+1)]` -/
def P11241484802338212936.Spec : Prop :=
  ∀ n, (P11241484802338212936.a n : ℤ) = A363681 (n + 1)

end A363681

/-! ## A363681.P2498520122432176610

`∩[A189974(n+1), A362811(n+1)]`
-/

namespace A363681.P2498520122432176610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363681.P2498520122432176610

namespace A363681

/-- `∩[A189974(n+1), A362811(n+1)]` -/
def P2498520122432176610.Spec : Prop :=
  ∀ n, (P2498520122432176610.a n : ℤ) = A363681 (n + 1)

end A363681

/-! ## A363681.P14522872486202075667

`∩[A090502(n+1), A179876(n+1)]`
-/

namespace A363681.P14522872486202075667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363681.P14522872486202075667

namespace A363681

/-- `∩[A090502(n+1), A179876(n+1)]` -/
def P14522872486202075667.Spec : Prop :=
  ∀ n, (P14522872486202075667.a n : ℤ) = A363681 (n + 1)

end A363681

/-! ## A363681.P2496255073010209229

`∩[A179876(n+1), A362811(n+1)]`
-/

namespace A363681.P2496255073010209229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363681.P2496255073010209229

namespace A363681

/-- `∩[A179876(n+1), A362811(n+1)]` -/
def P2496255073010209229.Spec : Prop :=
  ∀ n, (P2496255073010209229.a n : ℤ) = A363681 (n + 1)

end A363681

/-! ## A363681.P12776241071175054138

`∩[A280469(n+1), A362811(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A363681

/-- `∩[A280469(n+1), A362811(n+1)]` -/
def P12776241071175054138.Spec : Prop :=
  ∀ n, (P12776241071175054138.a n : ℤ) = A363681 (n + 1)

theorem P12776241071175054138.correct : P12776241071175054138.Spec := by
  intro n
  simp only [A363681, Nat.add_sub_cancel]

end A363681

/-! ## A363681.P13688921485304249298

`∩[A061715(n+1), A362811(n+1)]`
-/

namespace A363681.P13688921485304249298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363681.P13688921485304249298

namespace A363681

/-- `∩[A061715(n+1), A362811(n+1)]` -/
def P13688921485304249298.Spec : Prop :=
  ∀ n, (P13688921485304249298.a n : ℤ) = A363681 (n + 1)

end A363681

/-! ## A363681.P12294900977962274653

`∩[A074998(n+1), A362811(n+1)]`
-/

namespace A363681.P12294900977962274653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363681.P12294900977962274653

namespace A363681

/-- `∩[A074998(n+1), A362811(n+1)]` -/
def P12294900977962274653.Spec : Prop :=
  ∀ n, (P12294900977962274653.a n : ℤ) = A363681 (n + 1)

end A363681

/-! ## A363681.P3910646535332314902

`∩[A074997(n+1), A362811(n+1)]`
-/

namespace A363681.P3910646535332314902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363681.P3910646535332314902

namespace A363681

/-- `∩[A074997(n+1), A362811(n+1)]` -/
def P3910646535332314902.Spec : Prop :=
  ∀ n, (P3910646535332314902.a n : ℤ) = A363681 (n + 1)

end A363681

/-! ## A363681.P4604987833075605811

`∩[A176687(n+1), A362811(n+1)]`
-/

namespace A363681.P4604987833075605811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363681.P4604987833075605811

namespace A363681

/-- `∩[A176687(n+1), A362811(n+1)]` -/
def P4604987833075605811.Spec : Prop :=
  ∀ n, (P4604987833075605811.a n : ℤ) = A363681 (n + 1)

end A363681

/-! ## A363681.P16645623154636772149

`∩[A280383(n+1), A362811(n+1)]`
-/

namespace A363681.P16645623154636772149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363681.P16645623154636772149

namespace A363681

/-- `∩[A280383(n+1), A362811(n+1)]` -/
def P16645623154636772149.Spec : Prop :=
  ∀ n, (P16645623154636772149.a n : ℤ) = A363681 (n + 1)

end A363681

/-! ## A363681.P12277677430177876425

`∩[A228649(n+1), A362811(n+1)]`
-/

namespace A363681.P12277677430177876425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363681.P12277677430177876425

namespace A363681

/-- `∩[A228649(n+1), A362811(n+1)]` -/
def P12277677430177876425.Spec : Prop :=
  ∀ n, (P12277677430177876425.a n : ℤ) = A363681 (n + 1)

end A363681

/-! ## A363681.P5158665086438294541

`∩[A067888(n+1), A362811(n+1)]`
-/

namespace A363681.P5158665086438294541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363681.P5158665086438294541

namespace A363681

/-- `∩[A067888(n+1), A362811(n+1)]` -/
def P5158665086438294541.Spec : Prop :=
  ∀ n, (P5158665086438294541.a n : ℤ) = A363681 (n + 1)

end A363681

/-! ## A363681.P11185915145499990704

`filter[A362811(n+1), A379971(#)]`
-/

namespace A363681.P11185915145499990704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A363681.P11185915145499990704

namespace A363681

/-- `filter[A362811(n+1), A379971(#)]` -/
def P11185915145499990704.Spec : Prop :=
  ∀ n, P11185915145499990704.a n = A363681 (n + 1)

end A363681

/-! ## A363681.P10676034001859261725

`∩[A245289(n+1), A362811(n+1)]`
-/

namespace A363681.P10676034001859261725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363681.P10676034001859261725

namespace A363681

/-- `∩[A245289(n+1), A362811(n+1)]` -/
def P10676034001859261725.Spec : Prop :=
  ∀ n, (P10676034001859261725.a n : ℤ) = A363681 (n + 1)

end A363681

/-! ## A363681.P8883750318256193689

`∩[A275418(n+1), A362811(n+1)]`
-/

namespace A363681.P8883750318256193689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363681.P8883750318256193689

namespace A363681

/-- `∩[A275418(n+1), A362811(n+1)]` -/
def P8883750318256193689.Spec : Prop :=
  ∀ n, (P8883750318256193689.a n : ℤ) = A363681 (n + 1)

end A363681

/-! ## A363681.P428934582257840355

`∩[A088070(n+1), A362811(n+1)]`
-/

namespace A363681.P428934582257840355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363681.P428934582257840355

namespace A363681

/-- `∩[A088070(n+1), A362811(n+1)]` -/
def P428934582257840355.Spec : Prop :=
  ∀ n, (P428934582257840355.a n : ℤ) = A363681 (n + 1)

end A363681

/-! ## A363681.P4131407211582467469

`∩[A067874(n+1), A362811(n+1)]`
-/

namespace A363681.P4131407211582467469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363681.P4131407211582467469

namespace A363681

/-- `∩[A067874(n+1), A362811(n+1)]` -/
def P4131407211582467469.Spec : Prop :=
  ∀ n, (P4131407211582467469.a n : ℤ) = A363681 (n + 1)

end A363681

/-! ## A363681.P16071136899517141477

`∩[A190612(n+1), A362811(n+1)]`
-/

namespace A363681.P16071136899517141477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363681.P16071136899517141477

namespace A363681

/-- `∩[A190612(n+1), A362811(n+1)]` -/
def P16071136899517141477.Spec : Prop :=
  ∀ n, (P16071136899517141477.a n : ℤ) = A363681 (n + 1)

end A363681

/-! ## A363681.P5449690404214461545

`filter[A362811(n+1), A267525(#)]`
-/

namespace A363681.P5449690404214461545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267525 (f1 j).toNat = 1) n)

end

end A363681.P5449690404214461545

namespace A363681

/-- `filter[A362811(n+1), A267525(#)]` -/
def P5449690404214461545.Spec : Prop :=
  ∀ n, P5449690404214461545.a n = A363681 (n + 1)

end A363681

/-! ## A363681.P17107697350532962917

`filter[A362811(n+1), A267621(#)]`
-/

namespace A363681.P17107697350532962917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267621 (f1 j).toNat = 1) n)

end

end A363681.P17107697350532962917

namespace A363681

/-- `filter[A362811(n+1), A267621(#)]` -/
def P17107697350532962917.Spec : Prop :=
  ∀ n, P17107697350532962917.a n = A363681 (n + 1)

end A363681

/-!
# A363685: Irregular triangle read by rows: T(n,k) is the number of descending plane partitions of order n with the sum of the parts equal to k.

The programs for A363685, there is no canonical definition to state claims against.
-/

/-! ## A363685.P1510120696717304501

`A004248(and(A004248(n), A098289(n+3)))`
-/

namespace A363685.P1510120696717304501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (Int.land (A004248 n) (A098289 (n + 3))).toNat

end

end A363685.P1510120696717304501

/-! ## A363685.P7516771854591406420

`C(A135663(n+1), A359893(A122037(n+1)))`
-/

namespace A363685.P7516771854591406420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135663 (n + 1)).toNat (A359893 (A122037 (n + 1)).toNat).toNat

end

end A363685.P7516771854591406420

/-! ## A363685.P11664388617543514380

`A330935(A334658(n))`
-/

namespace A363685.P11664388617543514380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330935 (A334658 n).toNat

end

end A363685.P11664388617543514380

/-! ## A363685.P11406100809840642163

`A392629(A250757(n+1))`
-/

namespace A363685.P11406100809840642163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392629 (A250757 (n + 1)).toNat

end

end A363685.P11406100809840642163

/-! ## A363685.P15451971619918684127

`A230000(A120192(n+2))`
-/

namespace A363685.P15451971619918684127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230000 (A120192 (n + 2)).toNat

end

end A363685.P15451971619918684127

/-!
# A363689: Number of alternating sign matrices of size n which are indecomposable by direct and skew sums.

The programs for A363689, there is no canonical definition to state claims against.
-/

/-! ## A363689.P3340611951696132558

`and((n+1)^4+n^4, ∑[A160600(n+1)])`
-/

namespace A363689.P3340611951696132558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) ^ 4 + n ^ 4 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363689.P3340611951696132558

/-! ## A363689.P8442762878121482960

`A248663(A356637(3*n+1)+1)`
-/

namespace A363689.P8442762878121482960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A356637 (3 * n + 1) + 1).toNat

end

end A363689.P8442762878121482960

/-!
# A363690: Numbers k such that A246600(k) = 2.

The programs for A363690, the canonical program `A363690.P7555013278972641171` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363690 has offset 1).

The definition of A363690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363690.P7555013278972641171

`eq[2, A246600(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A363690

/-- `eq[2, A246600(n+1)]+1` -/
def P7555013278972641171.Spec : Prop :=
  ∀ n, (P7555013278972641171.a n : ℤ) = A363690 (n + 1)

theorem P7555013278972641171.correct : P7555013278972641171.Spec := by
  intro n
  simp only [A363690, Nat.add_sub_cancel]

end A363690

/-! ## A363690.P6939721694122007724

`eq[2, A246600(A028310(n))]`
-/

namespace A363690.P6939721694122007724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246600 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363690.P6939721694122007724

namespace A363690

/-- `eq[2, A246600(A028310(n))]` -/
def P6939721694122007724.Spec : Prop :=
  ∀ n, (P6939721694122007724.a n : ℤ) = A363690 (n + 1)

end A363690

/-! ## A363690.P18053491130440707805

`eq[2, A246600(A004277(n))]`
-/

namespace A363690.P18053491130440707805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246600 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363690.P18053491130440707805

namespace A363690

/-- `eq[2, A246600(A004277(n))]` -/
def P18053491130440707805.Spec : Prop :=
  ∀ n, (P18053491130440707805.a n : ℤ) = A363690 (n + 1)

end A363690

/-! ## A363690.P11743244686644776471

`eq[2, A246600(A123108(2*n))]`
-/

namespace A363690.P11743244686644776471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246600 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363690.P11743244686644776471

namespace A363690

/-- `eq[2, A246600(A123108(2*n))]` -/
def P11743244686644776471.Spec : Prop :=
  ∀ n, (P11743244686644776471.a n : ℤ) = A363690 (n + 1)

end A363690

/-! ## A363690.P6443668354403195332

`∩[A080943(n+1), A329133(n+1)]`
-/

namespace A363690.P6443668354403195332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363690.P6443668354403195332

namespace A363690

/-- `∩[A080943(n+1), A329133(n+1)]` -/
def P6443668354403195332.Spec : Prop :=
  ∀ n, (P6443668354403195332.a n : ℤ) = A363690 (n + 1)

end A363690

/-!
# A363691: Odd numbers k such that A246600(k) = 2.

The programs for A363691, the canonical program `A363691.P18289426642684890876` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363691 has offset 1).

The definition of A363691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4908 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363691.P18289426642684890876

`∩[2*n+1, A363690(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A363691

/-- `∩[2*n+1, A363690(n+1)]` -/
def P18289426642684890876.Spec : Prop :=
  ∀ n, (P18289426642684890876.a n : ℤ) = A363691 (n + 1)

theorem P18289426642684890876.correct : P18289426642684890876.Spec := by
  intro n
  simp only [A363691, Nat.add_sub_cancel]

end A363691

/-! ## A363691.P347504446756910372

`∩[A363690(n+1), A004273(n)]`
-/

namespace A363691.P347504446756910372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363691.P347504446756910372

namespace A363691

/-- `∩[A363690(n+1), A004273(n)]` -/
def P347504446756910372.Spec : Prop :=
  ∀ n, (P347504446756910372.a n : ℤ) = A363691 (n + 1)

end A363691

/-! ## A363691.P7747356565573080024

`∩[A363690(n+1), A004274(n)]`
-/

namespace A363691.P7747356565573080024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363691.P7747356565573080024

namespace A363691

/-- `∩[A363690(n+1), A004274(n)]` -/
def P7747356565573080024.Spec : Prop :=
  ∀ n, (P7747356565573080024.a n : ℤ) = A363691 (n + 1)

end A363691

/-! ## A363691.P3548371401173041549

`∩[A363690(n+1), A004276(n)]`
-/

namespace A363691.P3548371401173041549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363691.P3548371401173041549

namespace A363691

/-- `∩[A363690(n+1), A004276(n)]` -/
def P3548371401173041549.Spec : Prop :=
  ∀ n, (P3548371401173041549.a n : ℤ) = A363691 (n + 1)

end A363691

/-! ## A363691.P397353361009927338

`∩[A363690(n+1), A004281(n)]`
-/

namespace A363691.P397353361009927338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363691.P397353361009927338

namespace A363691

/-- `∩[A363690(n+1), A004281(n)]` -/
def P397353361009927338.Spec : Prop :=
  ∀ n, (P397353361009927338.a n : ℤ) = A363691 (n + 1)

end A363691

/-! ## A363691.P1777500939720290686

`∩[A363690(n+1), A060747(n)]`
-/

namespace A363691.P1777500939720290686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363691.P1777500939720290686

namespace A363691

/-- `∩[A363690(n+1), A060747(n)]` -/
def P1777500939720290686.Spec : Prop :=
  ∀ n, (P1777500939720290686.a n : ℤ) = A363691 (n + 1)

end A363691

/-! ## A363691.P15301689634377746269

`filter[A363690(n+1), A000035(#)]`
-/

namespace A363691.P15301689634377746269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A363691.P15301689634377746269

namespace A363691

/-- `filter[A363690(n+1), A000035(#)]` -/
def P15301689634377746269.Spec : Prop :=
  ∀ n, P15301689634377746269.a n = A363691 (n + 1)

end A363691

/-! ## A363691.P1831007170072258462

`filter[A363690(n+1), A266070(#)]`
-/

namespace A363691.P1831007170072258462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A363691.P1831007170072258462

namespace A363691

/-- `filter[A363690(n+1), A266070(#)]` -/
def P1831007170072258462.Spec : Prop :=
  ∀ n, P1831007170072258462.a n = A363691 (n + 1)

end A363691

/-! ## A363691.P3794547788359378196

`filter[A363690(n+1), A266719(#)]`
-/

namespace A363691.P3794547788359378196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A363691.P3794547788359378196

namespace A363691

/-- `filter[A363690(n+1), A266719(#)]` -/
def P3794547788359378196.Spec : Prop :=
  ∀ n, P3794547788359378196.a n = A363691 (n + 1)

end A363691

/-! ## A363691.P4694844700927867397

`filter[A363690(n+1), A296066(#)]`
-/

namespace A363691.P4694844700927867397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A363691.P4694844700927867397

namespace A363691

/-- `filter[A363690(n+1), A296066(#)]` -/
def P4694844700927867397.Spec : Prop :=
  ∀ n, P4694844700927867397.a n = A363691 (n + 1)

end A363691

/-!
# A363692: Terms of A363690 with a record number of divisors.

The programs for A363692, there is no canonical definition to state claims against.
-/

/-! ## A363692.P473409853366982461

`A096135(A307252(n+2))`
-/

namespace A363692.P473409853366982461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096135 (A307252 (n + 2)).toNat

end

end A363692.P473409853366982461

/-! ## A363692.P14818017724287161496

`A001615(A064375(2*n+1))`
-/

namespace A363692.P14818017724287161496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A064375 (2 * n + 1)).toNat

end

end A363692.P14818017724287161496

/-! ## A363692.P14579432150843976653

`∑[∏[A374740(A001359(n+1))]]`
-/

namespace A363692.P14579432150843976653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374740 (A001359 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363692.P14579432150843976653

/-! ## A363692.P4487407140417043197

`∩[A122378(n+1), A120688(n)]`
-/

namespace A363692.P4487407140417043197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120688 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363692.P4487407140417043197

/-!
# A363693: Terms of A363691 with a record number of divisors.

The programs for A363693, there is no canonical definition to state claims against.
-/

/-! ## A363693.P6967293092891966870

`∩[A192488(n+1), A231716(n+1)]`
-/

namespace A363693.P6967293092891966870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363693.P6967293092891966870

/-! ## A363693.P6443486388600703785

`A048691(A001700(n)*A160731(n+1))`
-/

namespace A363693.P6443486388600703785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A001700 n * A160731 (n + 1)).toNat

end

end A363693.P6443486388600703785

/-!
# A363694: Number of edges in the prime (Gruenberg-Kegel) graph of the symmetric group, S_n, on n elements.

The programs for A363694, there is no canonical definition to state claims against.
-/

/-! ## A363694.P3027693511581184374

`∑[A117929(n+1)]`
-/

namespace A363694.P3027693511581184374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363694.P3027693511581184374

/-! ## A363694.P10241867569371638976

`∑[floor(A073610(n+1)/2)]`
-/

namespace A363694.P10241867569371638976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073610 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363694.P10241867569371638976

/-! ## A363694.P16891114374013120410

`∑[A004526(A073610(n+1))]`
-/

namespace A363694.P16891114374013120410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A073610 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363694.P16891114374013120410

/-! ## A363694.P13095863621092962372

`∑[A004526(n)-A295630(n+1)]`
-/

namespace A363694.P13095863621092962372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A295630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363694.P13095863621092962372

/-! ## A363694.P5953508666631935347

`∑[A123108(A073610(n+1)+2)-1]`
-/

namespace A363694.P5953508666631935347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A073610 (n + 1) + 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363694.P5953508666631935347

/-! ## A363694.P16112577912831963765

`∑[A004526(A098983(n+1)-A282318(n+1))]`
-/

namespace A363694.P16112577912831963765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A098983 (n + 1) - A282318 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363694.P16112577912831963765

/-!
# A363695: Expansion of Sum_{k>0} (1/(1-x^k)^5 - 1).

The programs for A363695, the canonical program `A363695.P13154534921793747753` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363695 has offset 1).

The definition of A363695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363695.P13154534921793747753

`∑{d}[n+1, C(#+4, 4)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363695

/-- `∑{d}[n+1, C(#+4, 4)]` -/
def P13154534921793747753.Spec : Prop :=
  ∀ n, (P13154534921793747753.a n : ℤ) = A363695 (n + 1)

theorem P13154534921793747753.correct : P13154534921793747753.Spec := by
  intro n
  simp only [A363695, Nat.add_sub_cancel]

end A363695

/-! ## A363695.P9931277980001632952

`5/(n+1)*A343546(n+1)`
-/

namespace A363695.P9931277980001632952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 / (n + 1 : ℚ) * (A343546 (n + 1) : ℚ)

end

end A363695.P9931277980001632952

namespace A363695

/-- `5/(n+1)*A343546(n+1)` -/
def P9931277980001632952.Spec : Prop :=
  ∀ n, P9931277980001632952.a n = (A363695 (n + 1) : ℚ)

end A363695

/-! ## A363695.P656292564352635481

`A116963(n+1)+A073570(n+1)`
-/

namespace A363695.P656292564352635481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116963 (n + 1) + A073570 (n + 1)

end

end A363695.P656292564352635481

namespace A363695

/-- `A116963(n+1)+A073570(n+1)` -/
def P656292564352635481.Spec : Prop :=
  ∀ n, P656292564352635481.a n = A363695 (n + 1)

end A363695

/-! ## A363695.P875151084637330677

`A363696(n+1)-A101289(n+1)`
-/

namespace A363695.P875151084637330677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363696 (n + 1) - A101289 (n + 1)

end

end A363695.P875151084637330677

namespace A363695

/-- `A363696(n+1)-A101289(n+1)` -/
def P875151084637330677.Spec : Prop :=
  ∀ n, P875151084637330677.a n = A363695 (n + 1)

end A363695

/-! ## A363695.P5370494449910177932

`A101289(n+1)+A116963(n+1)-A363606(n+1)`
-/

namespace A363695.P5370494449910177932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101289 (n + 1) + (A116963 (n + 1) - A363606 (n + 1))

end

end A363695.P5370494449910177932

namespace A363695

/-- `A101289(n+1)+A116963(n+1)-A363606(n+1)` -/
def P5370494449910177932.Spec : Prop :=
  ∀ n, P5370494449910177932.a n = A363695 (n + 1)

end A363695

/-! ## A363695.P350277460675218993

`∑{d}[n+1, A000332(#+4)]`
-/

namespace A363695.P350277460675218993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000332 (d + 4)

end

end A363695.P350277460675218993

namespace A363695

/-- `∑{d}[n+1, A000332(#+4)]` -/
def P350277460675218993.Spec : Prop :=
  ∀ n, P350277460675218993.a n = A363695 (n + 1)

end A363695

/-!
# A363696: Expansion of Sum_{k>0} (1/(1-x^k)^6 - 1).

The programs for A363696, the canonical program `A363696.P17132601747171377047` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363696 has offset 1).

The definition of A363696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363696.P17132601747171377047

`∑{d}[n+1, C(#+5, 5)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363696

/-- `∑{d}[n+1, C(#+5, 5)]` -/
def P17132601747171377047.Spec : Prop :=
  ∀ n, (P17132601747171377047.a n : ℤ) = A363696 (n + 1)

theorem P17132601747171377047.correct : P17132601747171377047.Spec := by
  intro n
  simp only [A363696, Nat.add_sub_cancel]

end A363696

/-! ## A363696.P2490873840971042034

`A363695(n+1)+A101289(n+1)`
-/

namespace A363696.P2490873840971042034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363695 (n + 1) + A101289 (n + 1)

end

end A363696.P2490873840971042034

namespace A363696

/-- `A363695(n+1)+A101289(n+1)` -/
def P2490873840971042034.Spec : Prop :=
  ∀ n, P2490873840971042034.a n = A363696 (n + 1)

end A363696

/-! ## A363696.P1485712588231285751

`A073570(n+1)+A116963(n+1)+A101289(n+1)`
-/

namespace A363696.P1485712588231285751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073570 (n + 1) + (A116963 (n + 1) + A101289 (n + 1))

end

end A363696.P1485712588231285751

namespace A363696

/-- `A073570(n+1)+A116963(n+1)+A101289(n+1)` -/
def P1485712588231285751.Spec : Prop :=
  ∀ n, P1485712588231285751.a n = A363696 (n + 1)

end A363696

/-! ## A363696.P2136148358416602960

`A101289(n+1)+A101289(n+1)+A116963(n+1)-A363606(n+1)`
-/

namespace A363696.P2136148358416602960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101289 (n + 1) + (A101289 (n + 1) + (A116963 (n + 1) - A363606 (n + 1)))

end

end A363696.P2136148358416602960

namespace A363696

/-- `A101289(n+1)+A101289(n+1)+A116963(n+1)-A363606(n+1)` -/
def P2136148358416602960.Spec : Prop :=
  ∀ n, P2136148358416602960.a n = A363696 (n + 1)

end A363696

/-! ## A363696.P9745963602537403387

`∑{d}[n+1, A000389(#+5)]`
-/

namespace A363696.P9745963602537403387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000389 (d + 5)

end

end A363696.P9745963602537403387

namespace A363696

/-- `∑{d}[n+1, A000389(#+5)]` -/
def P9745963602537403387.Spec : Prop :=
  ∀ n, P9745963602537403387.a n = A363696 (n + 1)

end A363696

/-!
# A363697: a(n) = -n! * Sum_{d|n} (-n/d)^d / d!.

The programs for A363697, there is no canonical definition to state claims against.
-/

/-! ## A363697.P17437948228361200857

`A154457(xor(gcd(n, n%2)+1, A074022(n+1)))`
-/

namespace A363697.P17437948228361200857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154457 (Int.xor (Nat.gcd n (n % 2) + 1 : ℤ) (A074022 (n + 1))).toNat

end

end A363697.P17437948228361200857

/-!
# A363698: a(n) = n! * Sum_{d|n} (-1)^(d+1) * (n/d)^n / d!.

The programs for A363698, the canonical program `A363698.P16132342490940921978` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363698 has offset 1).

The definition of A363698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363698.P16132342490940921978

`(n+1)!*∑{d}[n+1, (-1)^(#+1)*((n+1)/#)^(n+1)/#!]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A363698

/-- `(n+1)!*∑{d}[n+1, (-1)^(#+1)*((n+1)/#)^(n+1)/#!]` -/
def P16132342490940921978.Spec : Prop :=
  ∀ n, P16132342490940921978.a n = (A363698 (n + 1) : ℚ)

end A363698

