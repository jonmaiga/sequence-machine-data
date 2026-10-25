import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A355701: a(n) = Product of prime(k+1) where k runs through the exponents of the positions 2^k of the 1-bits in A354169(n).

The programs for A355701, there is no canonical definition to state claims against.
-/

/-! ## A355701.P16034832411215637198

`A019565(A354169(n))`
-/

namespace A355701.P16034832411215637198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A354169 n).toNat

end

end A355701.P16034832411215637198

/-!
# A355703: a(n) = binomial(n, floor(log(n))).

The programs for A355703, the canonical program `A355703.P13795620908958740707` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355703 has offset 1).

The definition of A355703 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+1, floor(log(n+1)))` (program `A355703.P13795620908958740707`, by `A355703.P13795620908958740707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A355703.P13795620908958740707

`C(n+1, floor(log(n+1)))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A355703

/-- `C(n+1, floor(log(n+1)))` -/
def P13795620908958740707.Spec : Prop :=
  ∀ n, (P13795620908958740707.a n : ℤ) = A355703 (n + 1)

theorem P13795620908958740707.correct : P13795620908958740707.Spec := by
  intro n
  simp only [A355703, Nat.add_sub_cancel]

end A355703

/-! ## A355703.P11101400220057206818

`or(C(n+1, A000195(n+1)), char[1])`
-/

namespace A355703.P11101400220057206818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.choose (n + 1) (A000195 (n + 1)).toNat) (if ∃ j, f1 j = n then 1 else 0)

end

end A355703.P11101400220057206818

namespace A355703

/-- `or(C(n+1, A000195(n+1)), char[1])` -/
def P11101400220057206818.Spec : Prop :=
  ∀ n, (P11101400220057206818.a n : ℤ) = A355703 (n + 1)

end A355703

/-! ## A355703.P17484682617854272786

`A074909(A000195(n+1)+∑[n])`
-/

namespace A355703.P17484682617854272786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A000195 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A355703.P17484682617854272786

namespace A355703

/-- `A074909(A000195(n+1)+∑[n])` -/
def P17484682617854272786.Spec : Prop :=
  ∀ n, P17484682617854272786.a n = A355703 (n + 1)

end A355703

/-! ## A355703.P2697449719672493267

`A007318(A212445(n+1)+∑[n])`
-/

namespace A355703.P2697449719672493267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A212445 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A355703.P2697449719672493267

namespace A355703

/-- `A007318(A212445(n+1)+∑[n])` -/
def P2697449719672493267.Spec : Prop :=
  ∀ n, P2697449719672493267.a n = A355703 (n + 1)

end A355703

/-! ## A355703.P6264541089484502274

`A007318(A000217(n+1)+A000195(n+1))`
-/

namespace A355703.P6264541089484502274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 1) + A000195 (n + 1)).toNat

end

end A355703.P6264541089484502274

namespace A355703

/-- `A007318(A000217(n+1)+A000195(n+1))` -/
def P6264541089484502274.Spec : Prop :=
  ∀ n, P6264541089484502274.a n = A355703 (n + 1)

end A355703

/-! ## A355703.P8839700610125249178

`A000027(C(n+1, A000195(n+1)))`
-/

namespace A355703.P8839700610125249178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose (n + 1) (A000195 (n + 1)).toNat)

end

end A355703.P8839700610125249178

namespace A355703

/-- `A000027(C(n+1, A000195(n+1)))` -/
def P8839700610125249178.Spec : Prop :=
  ∀ n, P8839700610125249178.a n = A355703 (n + 1)

end A355703

/-!
# A355704: Indices k of partition function p where p(k) and p(k) + 2 are twin primes.

The programs for A355704, there is no canonical definition to state claims against.
-/

/-! ## A355704.P1595973832048838095

`A355706(∑{d}[n, #]+1)`
-/

namespace A355704.P1595973832048838095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355706 (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A355704.P1595973832048838095

/-!
# A355706: Indices k of partition function p where p(k) is a twin prime.

The programs for A355706, there is no canonical definition to state claims against.
-/

/-! ## A355706.P17237001352745833235

`A029544(a(n-1))` with `a(0)=3, a(1)=4`
-/

namespace A355706.P17237001352745833235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  A029544 (a (n - 1)).toNat

end

end A355706.P17237001352745833235

/-! ## A355706.P1601469758599431232

`∑[A116619(A046910(n))]+2`
-/

namespace A355706.P1601469758599431232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116619 (A046910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A355706.P1601469758599431232

/-!
# A355708: Irregular triangle read by rows in which row n lists the possible periods for the iterations of the map sum of n-th powers of digits.

The programs for A355708, there is no canonical definition to state claims against.
-/

/-! ## A355708.P8323648623100732862

`A341592(A121030(2*n+3)-A000587(n))`
-/

namespace A355708.P8323648623100732862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341592 (A121030 (2 * n + 3) - A000587 n).toNat

end

end A355708.P8323648623100732862

/-!
# A355709: Numbers k such that k and k+1 have the same number of 3-smooth divisors.

The programs for A355709, the canonical program `A355709.P10371335287816262552` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355709 has offset 1).

The definition of A355709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355709.P10371335287816262552

`eq[A169611(n+1)+1, A169611(A004277(n))]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A355709

/-- `eq[A169611(n+1)+1, A169611(A004277(n))]` -/
def P10371335287816262552.Spec : Prop :=
  ∀ n, (P10371335287816262552.a n : ℤ) = A355709 (n + 1)

theorem P10371335287816262552.correct : P10371335287816262552.Spec := by
  intro n
  simp only [A355709, Nat.add_sub_cancel]

end A355709

/-! ## A355709.P11137927645384533861

`eq[A169611(n+1)+1, A169611(A028310(2*n))]`
-/

namespace A355709.P11137927645384533861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355709.P11137927645384533861

namespace A355709

/-- `eq[A169611(n+1)+1, A169611(A028310(2*n))]` -/
def P11137927645384533861.Spec : Prop :=
  ∀ n, (P11137927645384533861.a n : ℤ) = A355709 (n + 1)

end A355709

/-! ## A355709.P2317160757287494665

`eq[A072078(2*(n+1)), A072078(A257143(2*n))]`
-/

namespace A355709.P2317160757287494665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (A257143 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355709.P2317160757287494665

namespace A355709

/-- `eq[A072078(2*(n+1)), A072078(A257143(2*n))]` -/
def P2317160757287494665.Spec : Prop :=
  ∀ n, (P2317160757287494665.a n : ℤ) = A355709 (n + 1)

end A355709

/-! ## A355709.P9195276470835322235

`eq[A169611(n+1)+1, A169611(A008486(n))]`
-/

namespace A355709.P9195276470835322235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355709.P9195276470835322235

namespace A355709

/-- `eq[A169611(n+1)+1, A169611(A008486(n))]` -/
def P9195276470835322235.Spec : Prop :=
  ∀ n, (P9195276470835322235.a n : ℤ) = A355709 (n + 1)

end A355709

/-! ## A355709.P2990792854092209354

`eq[A169611(n+1)+2, A169611(A008574(n))]`
-/

namespace A355709.P2990792854092209354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355709.P2990792854092209354

namespace A355709

/-- `eq[A169611(n+1)+2, A169611(A008574(n))]` -/
def P2990792854092209354.Spec : Prop :=
  ∀ n, (P2990792854092209354.a n : ℤ) = A355709 (n + 1)

end A355709

/-! ## A355709.P16173573322105076003

`eq[A169611(n+1)+2, A169611(A008458(n))]`
-/

namespace A355709.P16173573322105076003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355709.P16173573322105076003

namespace A355709

/-- `eq[A169611(n+1)+2, A169611(A008458(n))]` -/
def P16173573322105076003.Spec : Prop :=
  ∀ n, (P16173573322105076003.a n : ℤ) = A355709 (n + 1)

end A355709

/-!
# A355710: Numbers k such that k and k+1 have the same number of 5-smooth divisors.

The programs for A355710, the canonical program `A355710.P817791600316360444` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355710 has offset 1).

The definition of A355710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355710.P817791600316360444

`eq[A355583(n+1), A355583(n+2)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A355710

/-- `eq[A355583(n+1), A355583(n+2)]+1` -/
def P817791600316360444.Spec : Prop :=
  ∀ n, (P817791600316360444.a n : ℤ) = A355710 (n + 1)

theorem P817791600316360444.correct : P817791600316360444.Spec := by
  intro n
  simp only [A355710, Nat.add_sub_cancel]

end A355710

/-! ## A355710.P8901026822182167640

`A086263(n+2)%A285102(n)²`
-/

namespace A355710.P8901026822182167640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086263 (n + 2)) (A285102 n ^ 2)

end

end A355710.P8901026822182167640

namespace A355710

/-- `A086263(n+2)%A285102(n)²` -/
def P8901026822182167640.Spec : Prop :=
  ∀ n, P8901026822182167640.a n = A355710 (n + 1)

end A355710

/-! ## A355710.P10572442680006813389

`∩[A086263(n+1), A121996(n+1)]`
-/

namespace A355710.P10572442680006813389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355710.P10572442680006813389

namespace A355710

/-- `∩[A086263(n+1), A121996(n+1)]` -/
def P10572442680006813389.Spec : Prop :=
  ∀ n, (P10572442680006813389.a n : ℤ) = A355710 (n + 1)

end A355710

/-! ## A355710.P10779097085423798761

`A263990(n+1)%A001248(A040977(n))`
-/

namespace A355710.P10779097085423798761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263990 (n + 1)) (A001248 (A040977 n).toNat)

end

end A355710.P10779097085423798761

namespace A355710

/-- `A263990(n+1)%A001248(A040977(n))` -/
def P10779097085423798761.Spec : Prop :=
  ∀ n, P10779097085423798761.a n = A355710 (n + 1)

end A355710

/-! ## A355710.P9048023319437390357

`A263990(A248794(n+1))%A161446(n+1)`
-/

namespace A355710.P9048023319437390357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263990 (A248794 (n + 1)).toNat) (A161446 (n + 1))

end

end A355710.P9048023319437390357

namespace A355710

/-- `A263990(A248794(n+1))%A161446(n+1)` -/
def P9048023319437390357.Spec : Prop :=
  ∀ n, P9048023319437390357.a n = A355710 (n + 1)

end A355710

/-!
# A355711: Starts of runs of 3 consecutive numbers with the same number of 5-smooth divisors.

The programs for A355711, the canonical program `A355711.P17709382275087969844` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355711 has offset 1).

The definition of A355711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1618 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355711.P17709382275087969844

`∩[A355710(n+1)-1, A355710(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A355711

/-- `∩[A355710(n+1)-1, A355710(n+1)]` -/
def P17709382275087969844.Spec : Prop :=
  ∀ n, (P17709382275087969844.a n : ℤ) = A355711 (n + 1)

theorem P17709382275087969844.correct : P17709382275087969844.Spec := by
  intro n
  simp only [A355711, Nat.add_sub_cancel]

end A355711

/-! ## A355711.P3824122137012975529

`∩[A355710(n+1), A023443(A355710(n+1))]`
-/

namespace A355711.P3824122137012975529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A355710 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355711.P3824122137012975529

namespace A355711

/-- `∩[A355710(n+1), A023443(A355710(n+1))]` -/
def P3824122137012975529.Spec : Prop :=
  ∀ n, (P3824122137012975529.a n : ℤ) = A355711 (n + 1)

end A355711

/-!
# A355716: a(n) is the smallest number that has exactly n binary palindrome divisors (A006995).

The programs for A355716, there is no canonical definition to state claims against.
-/

/-! ## A355716.P16560484206141780296

`A071053(A185108(n))`
-/

namespace A355716.P16560484206141780296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (A185108 n).toNat

end

end A355716.P16560484206141780296

/-! ## A355716.P16305139755716382203

`A003961(C(A340014(n+1), A100640(n)))`
-/

namespace A355716.P16305139755716382203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Nat.choose (A340014 (n + 1)).toNat (A100640 n).toNat)

end

end A355716.P16305139755716382203

/-! ## A355716.P16382141347275741885

`A071053(A079750(n+3)/A227763(n+1))`
-/

namespace A355716.P16382141347275741885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (SequenceMachineLib.roundAway ((A079750 (n + 3) : ℚ) / (A227763 (n + 1) : ℚ))).toNat

end

end A355716.P16382141347275741885

/-!
# A355717: Smallest number of generalized pentagonal numbers which sum to n.

The programs for A355717, there is no canonical definition to state claims against.
-/

/-! ## A355717.P9542916745507187659

`A061336(3*n)`
-/

namespace A355717.P9542916745507187659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 (3 * n)

end

end A355717.P9542916745507187659

/-! ## A355717.P3171697776590003190

`A061336(A008585(n))%4`
-/

namespace A355717.P3171697776590003190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061336 (A008585 n).toNat) 4

end

end A355717.P3171697776590003190

/-! ## A355717.P10037872932898604951

`A061336(A008486(n))+n²%(n+1)-1`
-/

namespace A355717.P10037872932898604951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 (A008486 n).toNat + (((n ^ 2 % (n + 1) : ℕ) : ℤ) - 1)

end

end A355717.P10037872932898604951

/-! ## A355717.P1728122156688398094

`A061336(A008486(n))-A000007(n)`
-/

namespace A355717.P1728122156688398094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 (A008486 n).toNat - A000007 n

end

end A355717.P1728122156688398094

/-! ## A355717.P4727628410173943110

`gcd(A061336(A008585(n)), A204093(n))`
-/

namespace A355717.P4727628410173943110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061336 (A008585 n).toNat) (A204093 n)

end

end A355717.P4727628410173943110

/-! ## A355717.P2625990566180093288

`A061336(A008486(n))%A171813(n+1)`
-/

namespace A355717.P2625990566180093288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061336 (A008486 n).toNat) (A171813 (n + 1))

end

end A355717.P2625990566180093288

/-! ## A355717.P7616220533905312729

`A061336(A008486(n))+n-A028310(n)`
-/

namespace A355717.P7616220533905312729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 (A008486 n).toNat + ((n : ℤ) - A028310 n)

end

end A355717.P7616220533905312729

/-! ## A355717.P17913371118705868705

`A000040(n+1)%2-(1-A061336(A008486(n)))`
-/

namespace A355717.P17913371118705868705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 - (1 - A061336 (A008486 n).toNat)

end

end A355717.P17913371118705868705

/-!
# A355718: Expansion of e.g.f. exp( x/(1 + log(1-x)) ).

The programs for A355718, there is no canonical definition to state claims against.
-/

/-! ## A355718.P12876529508776595098

`A004396(A113405(n)+A075729(n))`
-/

namespace A355718.P12876529508776595098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A113405 n + A075729 n).toNat

end

end A355718.P12876529508776595098

/-! ## A355718.P13444387372197039859

`A103609(n)+A028310(A300910(n))`
-/

namespace A355718.P13444387372197039859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n + A028310 (A300910 n).toNat

end

end A355718.P13444387372197039859

/-!
# A355719: Expansion of e.g.f. exp( x/(1 - log(1+x)) ).

The programs for A355719, there is no canonical definition to state claims against.
-/

/-! ## A355719.P17564074380939913753

`C(A360924(n!), 2)`
-/

namespace A355719.P17564074380939913753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A360924 (Nat.factorial n)).toNat 2

end

end A355719.P17564074380939913753

/-! ## A355719.P7183724549024504364

`A085181(A055887(n))`
-/

namespace A355719.P7183724549024504364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085181 (A055887 n).toNat

end

end A355719.P7183724549024504364

/-!
# A355720: Expansion of e.g.f. exp( x/(2 - exp(x)) ).

The programs for A355720, there is no canonical definition to state claims against.
-/

/-! ## A355720.P4642104668009113739

`A008619(n*A265954(n))`
-/

namespace A355720.P4642104668009113739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A265954 n).toNat

end

end A355720.P4642104668009113739

/-! ## A355720.P4873727097791072287

`A276798(Δ[Δ[A084784(n)]])`
-/

namespace A355720.P4873727097791072287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084784 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (f1 (n + 1) - f1 n).toNat

end

end A355720.P4873727097791072287

/-!
# A355721: Square table, read by antidiagonals: the g.f. for row n is given recursively by (2*n-1)*x*R(n,x) = 1 + (2*n-3)*x - 1/R(n-1,x) for n >= 1 with the initial value R(0,x) = Sum_{k >= 0} A112934(k+1)*x^k.

The programs for A355721, there is no canonical definition to state claims against.
-/

/-! ## A355721.P17486439461366206985

`A030051(A361600(n))`
-/

namespace A355721.P17486439461366206985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030051 (A361600 n).toNat

end

end A355721.P17486439461366206985

/-! ## A355721.P2857728670669741123

`A129618(A008305(n+1))`
-/

namespace A355721.P2857728670669741123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (A008305 (n + 1)).toNat

end

end A355721.P2857728670669741123

/-! ## A355721.P8438143902457341468

`and(31, A331937(A343863(n)))`
-/

namespace A355721.P8438143902457341468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 31 (A331937 (A343863 n).toNat)

end

end A355721.P8438143902457341468

/-! ## A355721.P8750382425213843038

`A358480(A355793(n))+A008305(n+1)`
-/

namespace A355721.P8750382425213843038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358480 (A355793 n).toNat + A008305 (n + 1)

end

end A355721.P8750382425213843038

/-! ## A355721.P7873572019561843467

`A086582(A360965(n+1))`
-/

namespace A355721.P7873572019561843467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086582 (A360965 (n + 1)).toNat

end

end A355721.P7873572019561843467

/-!
# A355722: Row 2 of table A355721.

The programs for A355722, there is no canonical definition to state claims against.
-/

/-! ## A355722.P15860465537800210986

`ceil(A115974(n+1)/3)`
-/

namespace A355722.P15860465537800210986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A115974 (n + 1) : ℚ) / 3⌉

end

end A355722.P15860465537800210986

/-! ## A355722.P3868824677171687640

`record[round(A115974(A193592(n))/3)]`
-/

namespace A355722.P3868824677171687640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A115974 (A193592 n).toNat : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355722.P3868824677171687640

/-! ## A355722.P14796393377156310483

`A115974(n+1)/(2-A057428(n))`
-/

namespace A355722.P14796393377156310483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115974 (n + 1) : ℚ) / (2 - A057428 n : ℚ)

end

end A355722.P14796393377156310483

/-! ## A355722.P3877740370288899448

`A115974(n+1)/A007413(A000051(n))`
-/

namespace A355722.P3877740370288899448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115974 (n + 1) : ℚ) / (A007413 (A000051 n).toNat : ℚ)

end

end A355722.P3877740370288899448

/-!
# A355723: Row 3 of table A355721.

The programs for A355723, there is no canonical definition to state claims against.
-/

/-! ## A355723.P12417481074915166696

`A355721(C(n+4, 2)+n)`
-/

namespace A355723.P12417481074915166696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355721 (Nat.choose (n + 4) 2 + n)

end

end A355723.P12417481074915166696

/-! ## A355723.P16659223299288459981

`record[A355721(comp[2*(n+1)]+∑[n])]`
-/

namespace A355723.P16659223299288459981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355721 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355723.P16659223299288459981

/-! ## A355723.P3553316853830429137

`A355721(A046691(n+2))`
-/

namespace A355723.P3553316853830429137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355721 (A046691 (n + 2)).toNat

end

end A355723.P3553316853830429137

/-!
# A355724: Row 4 of table A355721.

The programs for A355724, there is no canonical definition to state claims against.
-/

/-! ## A355724.P14590156966647251332

`A355721(A052905(n+2))`
-/

namespace A355724.P14590156966647251332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355721 (A052905 (n + 2)).toNat

end

end A355724.P14590156966647251332

/-! ## A355724.P16251662004083615782

`A355721(A056115(n)+10)`
-/

namespace A355724.P16251662004083615782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355721 (A056115 n + 10).toNat

end

end A355724.P16251662004083615782

/-!
# A355725: Row 5 of table A355721.

The programs for A355725, there is no canonical definition to state claims against.
-/

/-! ## A355725.P1922172671031457245

`record[A355721(A055999(n))]`
-/

namespace A355725.P1922172671031457245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355721 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355725.P1922172671031457245

/-!
# A355726: a(n) = a(n-2) + prime(n-1) for a(0) = a(1) = 0.

The programs for A355726, the canonical program `A355726.P4645939845327956585` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355726 has offset 0).

The definition of A355726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355726.P8832654186651393771

`A008578(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A355726.P8832654186651393771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A008578 n + a (n - 2)

end

end A355726.P8832654186651393771

namespace A355726

/-- `A008578(n)+a(n-2)` -/
def P8832654186651393771.Spec : Prop :=
  ∀ n, P8832654186651393771.a n = A355726 n

end A355726

/-! ## A355726.P4645939845327956585

`A182986(n)+a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A355726

/-- `A182986(n)+a(n-2)` -/
def P4645939845327956585.Spec : Prop :=
  ∀ n, P4645939845327956585.a n = A355726 n

theorem P4645939845327956585.correct : P4645939845327956585.Spec := by
  intro n
  simp only [A355726]

end A355726

/-! ## A355726.P10136307940452459174

`∑[A008347((n-1)*floor(atan(n)))]`
-/

namespace A355726.P10136307940452459174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (((n : ℤ) - 1) * ⌊Real.arctan (n : ℝ)⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355726.P10136307940452459174

namespace A355726

/-- `∑[A008347((n-1)*floor(atan(n)))]` -/
def P10136307940452459174.Spec : Prop :=
  ∀ n, P10136307940452459174.a n = A355726 n

end A355726

/-! ## A355726.P9913187033064649152

`A007504(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A355726.P9913187033064649152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007504 (n - 1) - a (n - 1)

end

end A355726.P9913187033064649152

namespace A355726

/-- `A007504(n-1)-a(n-1)` -/
def P9913187033064649152.Spec : Prop :=
  ∀ n, P9913187033064649152.a n = A355726 n

end A355726

/-! ## A355726.P14575725653071707040

`A036439(n)-2-a(n-1)` with `a(0)=0`
-/

namespace A355726.P14575725653071707040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A036439 n - 2 - a (n - 1)

end

end A355726.P14575725653071707040

namespace A355726

/-- `A036439(n)-2-a(n-1)` -/
def P14575725653071707040.Spec : Prop :=
  ∀ n, P14575725653071707040.a n = A355726 n

end A355726

/-! ## A355726.P17077781738978904080

`A158611(n+1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A355726.P17077781738978904080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A158611 (n + 1) + a (n - 2)

end

end A355726.P17077781738978904080

namespace A355726

/-- `A158611(n+1)+a(n-2)` -/
def P17077781738978904080.Spec : Prop :=
  ∀ n, P17077781738978904080.a n = A355726 n

end A355726

/-! ## A355726.P10976485906541146529

`A000040(n-1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A355726.P10976485906541146529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000040 (n - 1) + a (n - 2)

end

end A355726.P10976485906541146529

namespace A355726

/-- `A000040(n-1)+a(n-2)` -/
def P10976485906541146529.Spec : Prop :=
  ∀ n, P10976485906541146529.a n = A355726 n

end A355726

/-! ## A355726.P10923996042478418072

`∑[A000040(abs(1-n))-a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A355726.P10923996042478418072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A000040 |1 - (n : ℤ)|.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355726.P10923996042478418072

namespace A355726

/-- `∑[A000040(abs(1-n))-a(n-1)]` -/
def P10923996042478418072.Spec : Prop :=
  ∀ n, P10923996042478418072.a n = A355726 n

end A355726

/-! ## A355726.P11561638051122356163

`A007504(n)-∑[A008347(n)]`
-/

namespace A355726.P11561638051122356163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355726.P11561638051122356163

namespace A355726

/-- `A007504(n)-∑[A008347(n)]` -/
def P11561638051122356163.Spec : Prop :=
  ∀ n, P11561638051122356163.a n = A355726 n

end A355726

/-!
# A355728: Indices k of partition function where consecutive p(k) and p(k+1) are prime.

The programs for A355728, there is no canonical definition to state claims against.
-/

/-! ## A355728.P7756108743737116154

`(C(∑[n], n)+3+n)*a(n-1)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A355728.P7756108743737116154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 5] fun n a =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n + 3 + n) * a (n - 1)

end

end A355728.P7756108743737116154

/-!
# A355729: Tournament standing, under standard rules double elimination, of the participant whose elimination leaves n participants still in the tournament.

The programs for A355729, there is no canonical definition to state claims against.
-/

/-! ## A355729.P7734642389611888448

`2*a(floor(n/2))-1` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A355729.P7734642389611888448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat - 1

end

end A355729.P7734642389611888448

/-! ## A355729.P2341714311110477717

`and(n, -A072376(n))+1`
-/

namespace A355729.P2341714311110477717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-A072376 n) + 1

end

end A355729.P2341714311110477717

/-! ## A355729.P12721175481079845885

`A051755(a(floor(n/2)))+1` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A355729.P12721175481079845885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A051755 (a ⌊(n : ℚ) / 2⌋.toNat).toNat + 1

end

end A355729.P12721175481079845885

/-! ## A355729.P16452643283729322332

`and(n, A117120(abs(1-n)+1))+1`
-/

namespace A355729.P16452643283729322332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A117120 (|1 - (n : ℤ)| + 1).toNat) + 1

end

end A355729.P16452643283729322332

/-! ## A355729.P1465090659564549755

`A028242(2*and(n, -A072376(n)))`
-/

namespace A355729.P1465090659564549755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * Int.land (n : ℤ) (-A072376 n)).toNat

end

end A355729.P1465090659564549755

/-! ## A355729.P17397903796659891358

`and(n, A187601(A072376(2*n)))+1`
-/

namespace A355729.P17397903796659891358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A187601 (A072376 (2 * n)).toNat) + 1

end

end A355729.P17397903796659891358

/-! ## A355729.P7350263611364594535

`A209688(A000217(a(floor(n/2))))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A355729.P7350263611364594535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A209688 (A000217 (a ⌊(n : ℚ) / 2⌋.toNat).toNat).toNat

end

end A355729.P7350263611364594535

/-! ## A355729.P14484032964014230213

`A008619(xor(A048724(n), A153153(n)))`
-/

namespace A355729.P14484032964014230213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor (A048724 n) (A153153 n)).toNat

end

end A355729.P14484032964014230213

/-! ## A355729.P5816236319379010849

`A008619(and(A004277(n), A117120(2*n+1)))`
-/

namespace A355729.P5816236319379010849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.land (A004277 n) (A117120 (2 * n + 1))).toNat

end

end A355729.P5816236319379010849

/-! ## A355729.P14714935878876635206

`A008619(and(A005843(n), A117120(2*n+1)))`
-/

namespace A355729.P14714935878876635206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.land (A005843 n) (A117120 (2 * n + 1))).toNat

end

end A355729.P14714935878876635206

/-!
# A355731: Number of ways to choose a sequence of divisors, one of each element of the multiset of prime indices of n (row n of A112798).

The programs for A355731, there is no canonical definition to state claims against.
-/

/-! ## A355731.P4644975913579896195

`A064553(A353394(n+1))`
-/

namespace A355731.P4644975913579896195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A353394 (n + 1)).toNat

end

end A355731.P4644975913579896195

/-! ## A355731.P10480099995445397603

`∏{e}[A181821(n+1), A000005(#)]`
-/

namespace A355731.P10480099995445397603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p)

end

end A355731.P10480099995445397603

/-! ## A355731.P18247401238130445826

`∏{e}[A304660(n+1), A000005(#)]`
-/

namespace A355731.P18247401238130445826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p)

end

end A355731.P18247401238130445826

/-! ## A355731.P6740989456787763214

`∏{e}[A181821(n+1), A335519(#)]`
-/

namespace A355731.P6740989456787763214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A335519 (Nat.factorization (f1 n).natAbs p)

end

end A355731.P6740989456787763214

/-! ## A355731.P16795638242551792707

`A092601(A353394(n+1)%A308193(n+1))`
-/

namespace A355731.P16795638242551792707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092601 (Int.tmod (A353394 (n + 1)) (A308193 (n + 1))).toNat

end

end A355731.P16795638242551792707

/-!
# A355732: Least k such that there are exactly n ways to choose a sequence of divisors, one of each element of the multiset of prime indices of k (with multiplicity).

The programs for A355732, there is no canonical definition to state claims against.
-/

/-! ## A355732.P4630340898294003348

`∏{e}[A361615(n+1), A000040(2^#)]`
-/

namespace A355732.P4630340898294003348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (2 ^ Nat.factorization (f1 n).natAbs p)

end

end A355732.P4630340898294003348

/-! ## A355732.P10436465266260715444

`A353397(A064554((n+1)²))/A353397(A064554(n+1))`
-/

namespace A355732.P10436465266260715444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353397 (A064554 ((n + 1) ^ 2)).toNat : ℚ) / (A353397 (A064554 (n + 1)).toNat : ℚ)

end

end A355732.P10436465266260715444

/-! ## A355732.P5390152058961877739

`A353397(A290641((n+1)²))/A353397(A290641(n+1))`
-/

namespace A355732.P5390152058961877739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353397 (A290641 ((n + 1) ^ 2)).toNat : ℚ) / (A353397 (A290641 (n + 1)).toNat : ℚ)

end

end A355732.P5390152058961877739

/-!
# A355733: Number of multisets that can be obtained by choosing a divisor of each prime index of n.

The programs for A355733, there is no canonical definition to state claims against.
-/

/-! ## A355733.P16034834981690963173

`A071521(A381453(n+1)%A295507(n+1))`
-/

namespace A355733.P16034834981690963173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (Int.tmod (A381453 (n + 1)) (A295507 (n + 1))).toNat

end

end A355733.P16034834981690963173

/-! ## A355733.P4419797243182342700

`A381453(n+1)-A355432(A059618(n+3))`
-/

namespace A355733.P4419797243182342700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381453 (n + 1) - A355432 (A059618 (n + 3)).toNat

end

end A355733.P4419797243182342700

/-! ## A355733.P4153503713961842244

`A355735(A352257(n+1))`
-/

namespace A355733.P4153503713961842244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355735 (A352257 (n + 1)).toNat

end

end A355733.P4153503713961842244

/-! ## A355733.P12153522392924647461

`A000005(A003963(n+1)*A340102(3*n+2))`
-/

namespace A355733.P12153522392924647461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003963 (n + 1) * A340102 (3 * n + 2)).toNat

end

end A355733.P12153522392924647461

/-! ## A355733.P9129716325817347561

`A374736(A381453(n+1))%A374758(3*n+4)`
-/

namespace A355733.P9129716325817347561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374736 (A381453 (n + 1)).toNat) (A374758 (3 * n + 4))

end

end A355733.P9129716325817347561

/-!
# A355735: Number of ways to choose a divisor of each prime index of n (taken in weakly increasing order) such that the result is weakly increasing.

The programs for A355735, there is no canonical definition to state claims against.
-/

/-! ## A355735.P10892800796848245297

`A290105(A324922(n+1))+∑{e}[A003963(n+1), #]`
-/

namespace A355735.P10892800796848245297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (A324922 (n + 1)).toNat + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A355735.P10892800796848245297

/-! ## A355735.P3251856429589643400

`A290105(A324922(n+1))+A252736(2*A003963(n+1))`
-/

namespace A355735.P3251856429589643400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (A324922 (n + 1)).toNat + A252736 (2 * A003963 (n + 1)).toNat

end

end A355735.P3251856429589643400

/-! ## A355735.P3164129943074332241

`A355733(n+1)-A122840(A299458(2*(n+1)))`
-/

namespace A355735.P3164129943074332241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355733 (n + 1) - A122840 (A299458 (2 * (n + 1))).toNat

end

end A355735.P3164129943074332241

/-! ## A355735.P15136853251129727777

`A355733(n+1)-A083916(A191667(n+1))`
-/

namespace A355735.P15136853251129727777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355733 (n + 1) - A083916 (A191667 (n + 1)).toNat

end

end A355735.P15136853251129727777

/-! ## A355735.P3918214198801109956

`A355733(n+1)-A010054(A136259(2*n+3))`
-/

namespace A355735.P3918214198801109956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355733 (n + 1) - A010054 (A136259 (2 * n + 3)).toNat

end

end A355735.P3918214198801109956

/-!
# A355736: Least k such that there are exactly n ways to choose a divisor of each prime index of k (taken in weakly increasing order) such that the result is also weakly increasing.

The programs for A355736, there is no canonical definition to state claims against.
-/

/-! ## A355736.P17665442263752238054

`A355734(n+1)+A000122(A260729(n))`
-/

namespace A355736.P17665442263752238054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355734 (n + 1) + A000122 (A260729 n).toNat

end

end A355736.P17665442263752238054

/-! ## A355736.P5014130633427591492

`A355734(n+1)+A256580(A005578(n))`
-/

namespace A355736.P5014130633427591492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355734 (n + 1) + A256580 (A005578 n).toNat

end

end A355736.P5014130633427591492

/-!
# A355737: Number of ways to choose a sequence of divisors, one of each prime index of n (with multiplicity), such that the result has no common divisor > 1.

The programs for A355737, there is no canonical definition to state claims against.
-/

/-! ## A355737.P5141316696897485958

`gcd(∏{p}[n+1, (n+1)/#]%(n+1), A090048(A052952(n)))`
-/

namespace A355737.P5141316696897485958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ)) (A090048 (A052952 n).toNat)

end

end A355737.P5141316696897485958

/-! ## A355737.P16679228704879962779

`A001222(A067231(n+1)+A001222(3*n+1))`
-/

namespace A355737.P16679228704879962779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A067231 (n + 1) + A001222 (3 * n + 1)).toNat

end

end A355737.P16679228704879962779

/-! ## A355737.P6498008223546363032

`A096863(A007422(2*n+1))`
-/

namespace A355737.P6498008223546363032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096863 (A007422 (2 * n + 1)).toNat

end

end A355737.P6498008223546363032

/-! ## A355737.P2150186929119133214

`A279061(A006727(n)-A328171(2*n))`
-/

namespace A355737.P2150186929119133214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (A006727 n - A328171 (2 * n)).toNat

end

end A355737.P2150186929119133214

/-! ## A355737.P12152448360289252015

`A014082(A297180(n+1))+A001221(n+1)`
-/

namespace A355737.P12152448360289252015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A297180 (n + 1)).toNat + A001221 (n + 1)

end

end A355737.P12152448360289252015

/-!
# A355739: Number of ways to choose a sequence of all different divisors, one of each prime index of n (with multiplicity).

The programs for A355739, there is no canonical definition to state claims against.
-/

/-! ## A355739.P14620604216392651582

`A354578(A278657(n)*A333220(n+1))`
-/

namespace A355739.P14620604216392651582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354578 (A278657 n * A333220 (n + 1)).toNat

end

end A355739.P14620604216392651582

/-! ## A355739.P18424394814881572686

`A354578(A233249(n+1)^A138904(2*(n+1)))`
-/

namespace A355739.P18424394814881572686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354578 (SequenceMachineLib.roundAway ((A233249 (n + 1) : ℚ) ^ (A138904 (2 * (n + 1)) : ℤ))).toNat

end

end A355739.P18424394814881572686

/-! ## A355739.P10488429000929352977

`A381453(n+1)-A086971(A077168(n))`
-/

namespace A355739.P10488429000929352977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381453 (n + 1) - A086971 (A077168 n).toNat

end

end A355739.P10488429000929352977

/-! ## A355739.P1713731413387679684

`lcm(∏{e}[(n+1)²+1, #+1]/2, A010892(A135094(n)))`
-/

namespace A355739.P1713731413387679684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2)) (A010892 (A135094 n).toNat)

end

end A355739.P1713731413387679684

/-! ## A355739.P9986203965985972299

`A304096(A000045(n+4)*A044813(n+5))`
-/

namespace A355739.P9986203965985972299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304096 (A000045 (n + 4) * A044813 (n + 5)).toNat

end

end A355739.P9986203965985972299

/-!
# A355740: Numbers of which it is not possible to choose a different divisor of each prime index.

The programs for A355740, there is no canonical definition to state claims against.
-/

/-! ## A355740.P2317928619884334338

`∪[A370348(n+1), A387180(n+1)]`
-/

namespace A355740.P2317928619884334338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A355740.P2317928619884334338

/-! ## A355740.P4060565400445896992

`∪[A031397(n+1), A387113(n+1)]`
-/

namespace A355740.P4060565400445896992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A355740.P4060565400445896992

/-! ## A355740.P13365468775129990119

`∪[A241609(n+1), A387113(n+1)]`
-/

namespace A355740.P13365468775129990119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A355740.P13365468775129990119

/-! ## A355740.P12409207735967704003

`∪[A361073(n+1), A387113(n+1)]`
-/

namespace A355740.P12409207735967704003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A355740.P12409207735967704003

/-! ## A355740.P4305551484511840377

`∪[A370348(n+1), A387113(n+1)]`
-/

namespace A355740.P4305551484511840377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A355740.P4305551484511840377

/-! ## A355740.P17301779189755717348

`∪[A370406(n+1), A387113(n+1)]`
-/

namespace A355740.P17301779189755717348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A355740.P17301779189755717348

/-!
# A355741: Number of ways to choose a sequence of prime factors, one of each prime index of n.

The programs for A355741, the canonical program `A355741.P16289151213451749189` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355741 has offset 1).

The definition of A355741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355741.P3538155104030015709

`∏{p}[n+1, A303975(#)]*A001222(A069489(n+1))`
-/

namespace A355741.P3538155104030015709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A303975 p) * A001222 (A069489 (n + 1)).toNat

end

end A355741.P3538155104030015709

namespace A355741

/-- `∏{p}[n+1, A303975(#)]*A001222(A069489(n+1))` -/
def P3538155104030015709.Spec : Prop :=
  ∀ n, P3538155104030015709.a n = A355741 (n + 1)

end A355741

/-! ## A355741.P16289151213451749189

`A154955(A064194(2*n+5))+∏{p}[n+1, A303975(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A355741

/-- `A154955(A064194(2*n+5))+∏{p}[n+1, A303975(#)]` -/
def P16289151213451749189.Spec : Prop :=
  ∀ n, P16289151213451749189.a n = A355741 (n + 1)

theorem P16289151213451749189.correct : P16289151213451749189.Spec := by
  intro n
  simp only [A355741, Nat.add_sub_cancel]

end A355741

/-!
# A355742: Number of ways to choose a sequence of prime-power divisors, one of each prime index of n. Product of bigomega over the prime indices of n, with multiplicity.

The programs for A355742, there is no canonical definition to state claims against.
-/

/-! ## A355742.P335027828266731728

`∏{e}[A181821(n+1), A001222(#)]`
-/

namespace A355742.P335027828266731728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p)

end

end A355742.P335027828266731728

/-! ## A355742.P14887080518905747964

`∏{e}[A304660(n+1), A001222(#)]`
-/

namespace A355742.P14887080518905747964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p)

end

end A355742.P14887080518905747964

/-! ## A355742.P4739022811062552399

`∏{e}[A181821(n+1), A305822(#)]`
-/

namespace A355742.P4739022811062552399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A305822 (Nat.factorization (f1 n).natAbs p)

end

end A355742.P4739022811062552399

/-! ## A355742.P920614906906078759

`∏{e}[A181821(n+1), A000720(A181819(#))]`
-/

namespace A355742.P920614906906078759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 (A181819 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A355742.P920614906906078759

/-! ## A355742.P15396095381468600511

`∏{e}[A181821(n+1), A001221(A181821(#))]`
-/

namespace A355742.P15396095381468600511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 (A181821 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A355742.P15396095381468600511

/-!
# A355743: Numbers whose prime indices are all prime-powers.

The programs for A355743, the canonical program `A355743.P16103552336498318608` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355743 has offset 1).

The definition of A355743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1410 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355743.P16103552336498318608

`eq[1, A355741(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A355743

/-- `eq[1, A355741(n+1)]+1` -/
def P16103552336498318608.Spec : Prop :=
  ∀ n, (P16103552336498318608.a n : ℤ) = A355743 (n + 1)

theorem P16103552336498318608.correct : P16103552336498318608.Spec := by
  intro n
  simp only [A355743, Nat.add_sub_cancel]

end A355743

/-! ## A355743.P14030957963940132840

`A004442(eq[1, A355741(n+1)])`
-/

namespace A355743.P14030957963940132840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355743.P14030957963940132840

namespace A355743

/-- `A004442(eq[1, A355741(n+1)])` -/
def P14030957963940132840.Spec : Prop :=
  ∀ n, P14030957963940132840.a n = A355743 (n + 1)

end A355743

/-! ## A355743.P10236999149684657492

`eq[1, A355741(A103889(n+1))]`
-/

namespace A355743.P10236999149684657492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (A103889 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A355743.P10236999149684657492

namespace A355743

/-- `eq[1, A355741(A103889(n+1))]` -/
def P10236999149684657492.Spec : Prop :=
  ∀ n, (P10236999149684657492.a n : ℤ) = A355743 (n + 1)

end A355743

/-! ## A355743.P14033145912746578784

`lt[(1-A355741(3*(n+1)))², 1]+1`
-/

namespace A355743.P14033145912746578784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A355741 (3 * (n + 1))) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A355743.P14033145912746578784

namespace A355743

/-- `lt[(1-A355741(3*(n+1)))², 1]+1` -/
def P14033145912746578784.Spec : Prop :=
  ∀ n, (P14033145912746578784.a n : ℤ) = A355743 (n + 1)

end A355743

/-! ## A355743.P3206754478701625255

`∩[2*n+1, A302492(n+1)]`
-/

namespace A355743.P3206754478701625255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355743.P3206754478701625255

namespace A355743

/-- `∩[2*n+1, A302492(n+1)]` -/
def P3206754478701625255.Spec : Prop :=
  ∀ n, (P3206754478701625255.a n : ℤ) = A355743 (n + 1)

end A355743

/-! ## A355743.P15660314570376988172

`record[A000265(A302492(n+1))]`
-/

namespace A355743.P15660314570376988172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A302492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355743.P15660314570376988172

namespace A355743

/-- `record[A000265(A302492(n+1))]` -/
def P15660314570376988172.Spec : Prop :=
  ∀ n, P15660314570376988172.a n = A355743 (n + 1)

end A355743

/-! ## A355743.P16874490721255399271

`filter[A302492(n+1), A000035(#)]`
-/

namespace A355743.P16874490721255399271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A355743.P16874490721255399271

namespace A355743

/-- `filter[A302492(n+1), A000035(#)]` -/
def P16874490721255399271.Spec : Prop :=
  ∀ n, P16874490721255399271.a n = A355743 (n + 1)

end A355743

/-! ## A355743.P5401191055067941415

`∩[A302492(n+1), A004273(n)]`
-/

namespace A355743.P5401191055067941415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355743.P5401191055067941415

namespace A355743

/-- `∩[A302492(n+1), A004273(n)]` -/
def P5401191055067941415.Spec : Prop :=
  ∀ n, (P5401191055067941415.a n : ℤ) = A355743 (n + 1)

end A355743

/-! ## A355743.P1154572267869936219

`∩[A302492(n+1), A005408(n)]`
-/

namespace A355743.P1154572267869936219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355743.P1154572267869936219

namespace A355743

/-- `∩[A302492(n+1), A005408(n)]` -/
def P1154572267869936219.Spec : Prop :=
  ∀ n, (P1154572267869936219.a n : ℤ) = A355743 (n + 1)

end A355743

/-! ## A355743.P12136127831311837154

`∩[A302492(n+1), A060747(n)]`
-/

namespace A355743.P12136127831311837154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355743.P12136127831311837154

namespace A355743

/-- `∩[A302492(n+1), A060747(n)]` -/
def P12136127831311837154.Spec : Prop :=
  ∀ n, (P12136127831311837154.a n : ℤ) = A355743 (n + 1)

end A355743

/-!
# A355745: Number of ways to choose a prime factor of each prime index of n (with multiplicity, in weakly increasing order) such that the result is also weakly increasing.

The programs for A355745, there is no canonical definition to state claims against.
-/

/-! ## A355745.P15820463191175301241

`A355741(n+1)-A048720(A035211(n+1))`
-/

namespace A355745.P15820463191175301241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (n + 1) - A048720 (A035211 (n + 1)).toNat

end

end A355745.P15820463191175301241

/-! ## A355745.P17244552505017360302

`A355741(n+1)+A054525(A005384(3*n+5))`
-/

namespace A355745.P17244552505017360302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (n + 1) + A054525 (A005384 (3 * n + 5)).toNat

end

end A355745.P17244552505017360302

/-! ## A355745.P15711040441079002759

`C(A355741(n+1), A027642(A134754(n+2)))`
-/

namespace A355745.P15711040441079002759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A355741 (n + 1)).toNat (A027642 (A134754 (n + 2)).toNat).toNat

end

end A355745.P15711040441079002759

/-! ## A355745.P17285790326010627808

`A355741(and(1, A006538(n+1))+n)`
-/

namespace A355745.P17285790326010627808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (Int.land 1 (A006538 (n + 1)) + (n : ℤ)).toNat

end

end A355745.P17285790326010627808

/-! ## A355745.P3566223064803404524

`A355741(n+1)-A328959(A324698(n+1))`
-/

namespace A355745.P3566223064803404524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (n + 1) - A328959 (A324698 (n + 1)).toNat

end

end A355745.P3566223064803404524

/-! ## A355745.P15307588501482317798

`and(A351653(A338251(n)), A355741(n+1))`
-/

namespace A355745.P15307588501482317798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A351653 (A338251 n).toNat) (A355741 (n + 1))

end

end A355745.P15307588501482317798

/-! ## A355745.P10884908452340414660

`C(A355741(n+1), A355531(A355529(n+1)))`
-/

namespace A355745.P10884908452340414660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A355741 (n + 1)).toNat (A355531 (A355529 (n + 1)).toNat).toNat

end

end A355745.P10884908452340414660

/-!
# A355747: Number of multisets that can be obtained by choosing a divisor of each positive integer from 1 to n.

The programs for A355747, there is no canonical definition to state claims against.
-/

/-! ## A355747.P9710581908412952973

`or(A104442(n), A183063(A083379(n+1)))`
-/

namespace A355747.P9710581908412952973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104442 n) (A183063 (A083379 (n + 1)).toNat)

end

end A355747.P9710581908412952973

/-! ## A355747.P2412104948849756966

`A124762(A075829(n+1))+A104442(n)`
-/

namespace A355747.P2412104948849756966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A075829 (n + 1)).toNat + A104442 n

end

end A355747.P2412104948849756966

/-! ## A355747.P9528757944666773531

`A336225(A325694(n+1))+A104442(n)`
-/

namespace A355747.P9528757944666773531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336225 (A325694 (n + 1)).toNat + A104442 n

end

end A355747.P9528757944666773531

/-! ## A355747.P8354305278999933098

`A003056(A120541(n)*A120567(n+1))`
-/

namespace A355747.P8354305278999933098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A120541 n * A120567 (n + 1)).toNat

end

end A355747.P8354305278999933098

/-!
# A355748: Number of ways to choose a sequence of divisors, one of each part of the n-th composition in standard order.

The programs for A355748, there is no canonical definition to state claims against.
-/

/-! ## A355748.P7024787479558429760

`A353394(A333219(n+1))`
-/

namespace A355748.P7024787479558429760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353394 (A333219 (n + 1)).toNat

end

end A355748.P7024787479558429760

/-! ## A355748.P13777045005324341301

`∏{e}[A057335(n), A000005(#)]`
-/

namespace A355748.P13777045005324341301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p)

end

end A355748.P13777045005324341301

/-! ## A355748.P278228707979144754

`∏{e}[A057335(n), A073184(#)]`
-/

namespace A355748.P278228707979144754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A073184 (Nat.factorization (f1 n).natAbs p)

end

end A355748.P278228707979144754

/-! ## A355748.P3543755663303778663

`∏{e}[A057335(n), A101296(#)]`
-/

namespace A355748.P3543755663303778663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A101296 (Nat.factorization (f1 n).natAbs p)

end

end A355748.P3543755663303778663

/-! ## A355748.P203155666011365990

`∏{e}[A057335(n), A114102(#)]`
-/

namespace A355748.P203155666011365990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A114102 (Nat.factorization (f1 n).natAbs p)

end

end A355748.P203155666011365990

/-! ## A355748.P12363421223387982004

`∏{e}[A057335(n), A181819(#)]`
-/

namespace A355748.P12363421223387982004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A181819 (Nat.factorization (f1 n).natAbs p)

end

end A355748.P12363421223387982004

/-! ## A355748.P16367705171616231026

`∏{e}[A057335(n), A300229(#)]`
-/

namespace A355748.P16367705171616231026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A300229 (Nat.factorization (f1 n).natAbs p)

end

end A355748.P16367705171616231026

/-! ## A355748.P18229736402707761998

`∏{e}[A057335(n), A323157(#)]`
-/

namespace A355748.P18229736402707761998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A323157 (Nat.factorization (f1 n).natAbs p)

end

end A355748.P18229736402707761998

/-! ## A355748.P11253345358989035054

`∏{e}[A057335(n), A323168(#)]`
-/

namespace A355748.P11253345358989035054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A323168 (Nat.factorization (f1 n).natAbs p)

end

end A355748.P11253345358989035054

/-!
# A355749: Number of ways to choose a weakly decreasing sequence of divisors, one of each prime index of n (with multiplicity, taken in weakly increasing order).

The programs for A355749, there is no canonical definition to state claims against.
-/

/-! ## A355749.P2647174591028208254

`A282625(A019428(n+1))`
-/

namespace A355749.P2647174591028208254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282625 (A019428 (n + 1)).toNat

end

end A355749.P2647174591028208254

/-! ## A355749.P11656507865445516554

`A099774(A049785(n+5)^A007814(3*n+4))`
-/

namespace A355749.P11656507865445516554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (SequenceMachineLib.roundAway ((A049785 (n + 5) : ℚ) ^ (A007814 (3 * n + 4) : ℤ))).toNat

end

end A355749.P11656507865445516554

/-! ## A355749.P99279818215029503

`A182134(A027642(3*n+4)%A108370(3*(n+1)))`
-/

namespace A355749.P99279818215029503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (Int.tmod (A027642 (3 * n + 4)) (A108370 (3 * (n + 1)))).toNat

end

end A355749.P99279818215029503

/-! ## A355749.P15910738847674441242

`A046951(A099316(2*(n+1))+A022998(n))`
-/

namespace A355749.P15910738847674441242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A099316 (2 * (n + 1)) + A022998 n).toNat

end

end A355749.P15910738847674441242

/-!
# A355750: Sum of the divisors of 2n minus the number of divisors of 2n.

The programs for A355750, the canonical program `A355750.P5981996292456239035` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355750 has offset 1).

The definition of A355750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355750.P14131073200133915973

`A065608(2*(n+1))`
-/

namespace A355750.P14131073200133915973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (2 * (n + 1))

end

end A355750.P14131073200133915973

namespace A355750

/-- `A065608(2*(n+1))` -/
def P14131073200133915973.Spec : Prop :=
  ∀ n, P14131073200133915973.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P5981996292456239035

`A062731(n+1)-A099777(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A355750

/-- `A062731(n+1)-A099777(n+1)` -/
def P5981996292456239035.Spec : Prop :=
  ∀ n, P5981996292456239035.a n = A355750 (n + 1)

theorem P5981996292456239035.correct : P5981996292456239035.Spec := by
  intro n
  simp only [A355750, Nat.add_sub_cancel]

end A355750

/-! ## A355750.P7392587582789033332

`A000203(2*(n+1))-A000005(2*(n+1))`
-/

namespace A355750.P7392587582789033332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) - A000005 (2 * (n + 1))

end

end A355750.P7392587582789033332

namespace A355750

/-- `A000203(2*(n+1))-A000005(2*(n+1))` -/
def P7392587582789033332.Spec : Prop :=
  ∀ n, P7392587582789033332.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P9612528722840054536

`∑{d}[2*(n+1), #-1]`
-/

namespace A355750.P9612528722840054536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1)

end

end A355750.P9612528722840054536

namespace A355750

/-- `∑{d}[2*(n+1), #-1]` -/
def P9612528722840054536.Spec : Prop :=
  ∀ n, P9612528722840054536.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P5348486889076233404

`abs(∑{d}[n+2+n, 1-#])`
-/

namespace A355750.P5348486889076233404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ))|

end

end A355750.P5348486889076233404

namespace A355750

/-- `abs(∑{d}[n+2+n, 1-#])` -/
def P5348486889076233404.Spec : Prop :=
  ∀ n, P5348486889076233404.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P3717451706259202705

`-∑{d}[n+2+n, 1-#]`
-/

namespace A355750.P3717451706259202705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)))

end

end A355750.P3717451706259202705

namespace A355750

/-- `-∑{d}[n+2+n, 1-#]` -/
def P3717451706259202705.Spec : Prop :=
  ∀ n, P3717451706259202705.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P1153286101410484954

`A062731(n+1)-A000005(2*(n+1))`
-/

namespace A355750.P1153286101410484954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (n + 1) - A000005 (2 * (n + 1))

end

end A355750.P1153286101410484954

namespace A355750

/-- `A062731(n+1)-A000005(2*(n+1))` -/
def P1153286101410484954.Spec : Prop :=
  ∀ n, P1153286101410484954.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P13702667569846414862

`A000203(2*(n+1))-A099777(n+1)`
-/

namespace A355750.P13702667569846414862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) - A099777 (n + 1)

end

end A355750.P13702667569846414862

namespace A355750

/-- `A000203(2*(n+1))-A099777(n+1)` -/
def P13702667569846414862.Spec : Prop :=
  ∀ n, P13702667569846414862.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P12815678886869198162

`A065608(n+1)+A348915(n+1)+A065608(n+1)`
-/

namespace A355750.P12815678886869198162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) + (A348915 (n + 1) + A065608 (n + 1))

end

end A355750.P12815678886869198162

namespace A355750

/-- `A065608(n+1)+A348915(n+1)+A065608(n+1)` -/
def P12815678886869198162.Spec : Prop :=
  ∀ n, P12815678886869198162.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P12663852568129161296

`A158901(2*(n+1))-1`
-/

namespace A355750.P12663852568129161296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (2 * (n + 1)) - 1

end

end A355750.P12663852568129161296

namespace A355750

/-- `A158901(2*(n+1))-1` -/
def P12663852568129161296.Spec : Prop :=
  ∀ n, P12663852568129161296.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P5895536192256469648

`A152770(2*(n+1))+Δ[n²]`
-/

namespace A355750.P5895536192256469648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A355750.P5895536192256469648

namespace A355750

/-- `A152770(2*(n+1))+Δ[n²]` -/
def P5895536192256469648.Spec : Prop :=
  ∀ n, P5895536192256469648.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P7188259994646622912

`A046520(2*(n+1))+A000010(2*(n+1))`
-/

namespace A355750.P7188259994646622912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046520 (2 * (n + 1)) + A000010 (2 * (n + 1))

end

end A355750.P7188259994646622912

namespace A355750

/-- `A046520(2*(n+1))+A000010(2*(n+1))` -/
def P7188259994646622912.Spec : Prop :=
  ∀ n, P7188259994646622912.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P16652644820729699664

`A152992(2*(n+1))+A000720(2*(n+1))`
-/

namespace A355750.P16652644820729699664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152992 (2 * (n + 1)) + A000720 (2 * (n + 1))

end

end A355750.P16652644820729699664

namespace A355750

/-- `A152992(2*(n+1))+A000720(2*(n+1))` -/
def P16652644820729699664.Spec : Prop :=
  ∀ n, P16652644820729699664.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P16358874686413328938

`A007503(2*(n+1))-A062011(2*(n+1))`
-/

namespace A355750.P16358874686413328938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (2 * (n + 1)) - A062011 (2 * (n + 1))

end

end A355750.P16358874686413328938

namespace A355750

/-- `A007503(2*(n+1))-A062011(2*(n+1))` -/
def P16358874686413328938.Spec : Prop :=
  ∀ n, P16358874686413328938.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P5142304651892455495

`A006218(2*n+1)-A098798(2*(n+1))`
-/

namespace A355750.P5142304651892455495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (2 * n + 1) - A098798 (2 * (n + 1))

end

end A355750.P5142304651892455495

namespace A355750

/-- `A006218(2*n+1)-A098798(2*(n+1))` -/
def P5142304651892455495.Spec : Prop :=
  ∀ n, P5142304651892455495.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P6912839249364462114

`A063038(2*(n+1))-A055682(2*(n+1))`
-/

namespace A355750.P6912839249364462114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063038 (2 * (n + 1)) - A055682 (2 * (n + 1))

end

end A355750.P6912839249364462114

namespace A355750

/-- `A063038(2*(n+1))-A055682(2*(n+1))` -/
def P6912839249364462114.Spec : Prop :=
  ∀ n, P6912839249364462114.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P16919280915845430943

`A038040(2*(n+1))-A081307(2*(n+1))`
-/

namespace A355750.P16919280915845430943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (2 * (n + 1)) - A081307 (2 * (n + 1))

end

end A355750.P16919280915845430943

namespace A355750

/-- `A038040(2*(n+1))-A081307(2*(n+1))` -/
def P16919280915845430943.Spec : Prop :=
  ∀ n, P16919280915845430943.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P15825229411881210080

`A255385(2*(n+1))-A000010(2*(n+1))`
-/

namespace A355750.P15825229411881210080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255385 (2 * (n + 1)) - A000010 (2 * (n + 1))

end

end A355750.P15825229411881210080

namespace A355750

/-- `A255385(2*(n+1))-A000010(2*(n+1))` -/
def P15825229411881210080.Spec : Prop :=
  ∀ n, P15825229411881210080.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P15014568067735706263

`A088580(2*(n+1))-A334954(2*(n+1))`
-/

namespace A355750.P15014568067735706263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (2 * (n + 1)) - A334954 (2 * (n + 1))

end

end A355750.P15014568067735706263

namespace A355750

/-- `A088580(2*(n+1))-A334954(2*(n+1))` -/
def P15014568067735706263.Spec : Prop :=
  ∀ n, P15014568067735706263.a n = A355750 (n + 1)

end A355750

/-! ## A355750.P5786524490296792571

`A236632(2*(n+1))-A236632(2*n+1)`
-/

namespace A355750.P5786524490296792571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236632 (2 * (n + 1)) - A236632 (2 * n + 1)

end

end A355750.P5786524490296792571

namespace A355750

/-- `A236632(2*(n+1))-A236632(2*n+1)` -/
def P5786524490296792571.Spec : Prop :=
  ∀ n, P5786524490296792571.a n = A355750 (n + 1)

end A355750

/-!
# A355751: Positive numbers k such that the centered cube number k^3 + (k+1)^3 is equal to the difference of two positive cubes and to A352759(n).

The programs for A355751, the canonical program `A355751.P16066944130714536049` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355751 has offset 1).

The definition of A355751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355751.P6830481255346304976

`(9*(2*(n+1)-1)^3-1)/2`
-/

namespace A355751.P6830481255346304976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * ((2 * (n + 1) : ℤ) - 1) ^ 3 - 1 : ℚ) / 2

end

end A355751.P6830481255346304976

namespace A355751

/-- `(9*(2*(n+1)-1)^3-1)/2` -/
def P6830481255346304976.Spec : Prop :=
  ∀ n, P6830481255346304976.a n = (A355751 (n + 1) : ℚ)

theorem P6830481255346304976.correct : P6830481255346304976.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A355751, Nat.add_sub_cancel, A355751.P6830481255346304976.a, A355751.P16066944130714536049.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A355751, Nat.add_sub_cancel, A355751.P6830481255346304976.a, A355751.P16066944130714536049.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A355751

/-! ## A355751.P16066944130714536049

`3*a(n-1)-3*a(n-2)+a(n-3)+216` with `a(0)=4, a(1)=121, a(2)=562`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A355751

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+216` -/
def P16066944130714536049.Spec : Prop :=
  ∀ n, P16066944130714536049.a n = A355751 (n + 1)

theorem P16066944130714536049.correct : P16066944130714536049.Spec := by
  intro n
  simp only [A355751, Nat.add_sub_cancel]

end A355751

/-! ## A355751.P1461885770185278689

`C(6*n+4, 3)+n`
-/

namespace A355751.P1461885770185278689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (6 * n + 4) 3 + n

end

end A355751.P1461885770185278689

namespace A355751

/-- `C(6*n+4, 3)+n` -/
def P1461885770185278689.Spec : Prop :=
  ∀ n, (P1461885770185278689.a n : ℤ) = A355751 (n + 1)

end A355751

/-! ## A355751.P15523240851253773905

`A352756(n+1)+A193252(n+1)`
-/

namespace A355751.P15523240851253773905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352756 (n + 1) + A193252 (n + 1)

end

end A355751.P15523240851253773905

namespace A355751

/-- `A352756(n+1)+A193252(n+1)` -/
def P15523240851253773905.Spec : Prop :=
  ∀ n, P15523240851253773905.a n = A355751 (n + 1)

end A355751

/-! ## A355751.P17861922019839558255

`A228887(Δ[n²])+n`
-/

namespace A355751.P17861922019839558255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228887 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A355751.P17861922019839558255

namespace A355751

/-- `A228887(Δ[n²])+n` -/
def P17861922019839558255.Spec : Prop :=
  ∀ n, P17861922019839558255.a n = A355751 (n + 1)

end A355751

/-! ## A355751.P16746457075471218729

`(3*n+1)*A049451(2*n+1)+n`
-/

namespace A355751.P16746457075471218729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A049451 (2 * n + 1) + (n : ℤ)

end

end A355751.P16746457075471218729

namespace A355751

/-- `(3*n+1)*A049451(2*n+1)+n` -/
def P16746457075471218729.Spec : Prop :=
  ∀ n, P16746457075471218729.a n = A355751 (n + 1)

end A355751

/-! ## A355751.P738164352344399474

`A049450(2*n+1)*(3*n+2)+n`
-/

namespace A355751.P738164352344399474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 (2 * n + 1) * (3 * n + 2 : ℤ) + (n : ℤ)

end

end A355751.P738164352344399474

namespace A355751

/-- `A049450(2*n+1)*(3*n+2)+n` -/
def P738164352344399474.Spec : Prop :=
  ∀ n, P738164352344399474.a n = A355751 (n + 1)

end A355751

/-! ## A355751.P4669024064388366549

`A000326(2*n+1)*(6*n+4)+n`
-/

namespace A355751.P4669024064388366549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (2 * n + 1) * (6 * n + 4 : ℤ) + (n : ℤ)

end

end A355751.P4669024064388366549

namespace A355751

/-- `A000326(2*n+1)*(6*n+4)+n` -/
def P4669024064388366549.Spec : Prop :=
  ∀ n, P4669024064388366549.a n = A355751 (n + 1)

end A355751

/-! ## A355751.P1998253566121206781

`(6*n+4)*A249127(2*n+1)+n`
-/

namespace A355751.P1998253566121206781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 4 : ℤ) * A249127 (2 * n + 1) + (n : ℤ)

end

end A355751.P1998253566121206781

namespace A355751

/-- `(6*n+4)*A249127(2*n+1)+n` -/
def P1998253566121206781.Spec : Prop :=
  ∀ n, P1998253566121206781.a n = A355751 (n + 1)

end A355751

/-! ## A355751.P13862060564614060598

`A268201(n+1)+A033430(2*n+1)`
-/

namespace A355751.P13862060564614060598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268201 (n + 1) + A033430 (2 * n + 1)

end

end A355751.P13862060564614060598

namespace A355751

/-- `A268201(n+1)+A033430(2*n+1)` -/
def P13862060564614060598.Spec : Prop :=
  ∀ n, P13862060564614060598.a n = A355751 (n + 1)

end A355751

/-! ## A355751.P3970159209034507641

`A062124(2*n)+A081267(2*n)+n`
-/

namespace A355751.P3970159209034507641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062124 (2 * n) + (A081267 (2 * n) + (n : ℤ))

end

end A355751.P3970159209034507641

namespace A355751

/-- `A062124(2*n)+A081267(2*n)+n` -/
def P3970159209034507641.Spec : Prop :=
  ∀ n, P3970159209034507641.a n = A355751 (n + 1)

end A355751

/-! ## A355751.P7106403647795863763

`A036487(2*n+1)+A033430(2*n+1)`
-/

namespace A355751.P7106403647795863763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 (2 * n + 1) + A033430 (2 * n + 1)

end

end A355751.P7106403647795863763

namespace A355751

/-- `A036487(2*n+1)+A033430(2*n+1)` -/
def P7106403647795863763.Spec : Prop :=
  ∀ n, P7106403647795863763.a n = A355751 (n + 1)

end A355751

/-! ## A355751.P11128780264502341621

`A142962(2*n+1)+A281381(2*n)+n`
-/

namespace A355751.P11128780264502341621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142962 (2 * n + 1) + (A281381 (2 * n) + (n : ℤ))

end

end A355751.P11128780264502341621

namespace A355751

/-- `A142962(2*n+1)+A281381(2*n)+n` -/
def P11128780264502341621.Spec : Prop :=
  ∀ n, P11128780264502341621.a n = A355751 (n + 1)

end A355751

/-! ## A355751.P16162175583300320963

`A005449(2*n+1)*A016789(2*n)+n`
-/

namespace A355751.P16162175583300320963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (2 * n + 1) * A016789 (2 * n) + (n : ℤ)

end

end A355751.P16162175583300320963

namespace A355751

/-- `A005449(2*n+1)*A016789(2*n)+n` -/
def P16162175583300320963.Spec : Prop :=
  ∀ n, P16162175583300320963.a n = A355751 (n + 1)

end A355751

/-! ## A355751.P159405677261426586

`A283394(2*n)+n*A157872(2*n+1)`
-/

namespace A355751.P159405677261426586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283394 (2 * n) + (n : ℤ) * A157872 (2 * n + 1)

end

end A355751.P159405677261426586

namespace A355751

/-- `A283394(2*n)+n*A157872(2*n+1)` -/
def P159405677261426586.Spec : Prop :=
  ∀ n, P159405677261426586.a n = A355751 (n + 1)

end A355751

/-! ## A355751.P7553370664095909495

`A006003(2*n+1)+A035328(2*n+1)+n`
-/

namespace A355751.P7553370664095909495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (2 * n + 1) + (A035328 (2 * n + 1) + (n : ℤ))

end

end A355751.P7553370664095909495

namespace A355751

/-- `A006003(2*n+1)+A035328(2*n+1)+n` -/
def P7553370664095909495.Spec : Prop :=
  ∀ n, P7553370664095909495.a n = A355751 (n + 1)

end A355751

/-! ## A355751.P3597570757732995720

`A024215(2*n+1)+A085789(2*n+1)+n`
-/

namespace A355751.P3597570757732995720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024215 (2 * n + 1) + (A085789 (2 * n + 1) + (n : ℤ))

end

end A355751.P3597570757732995720

namespace A355751

/-- `A024215(2*n+1)+A085789(2*n+1)+n` -/
def P3597570757732995720.Spec : Prop :=
  ∀ n, P3597570757732995720.a n = A355751 (n + 1)

end A355751

/-! ## A355751.P17846265231877049673

`A006564(2*n+1)+A126335(2*n+1)+n`
-/

namespace A355751.P17846265231877049673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006564 (2 * n + 1) + (A126335 (2 * n + 1) + (n : ℤ))

end

end A355751.P17846265231877049673

namespace A355751

/-- `A006564(2*n+1)+A126335(2*n+1)+n` -/
def P17846265231877049673.Spec : Prop :=
  ∀ n, P17846265231877049673.a n = A355751 (n + 1)

end A355751

/-! ## A355751.P13460317517966174398

`A036487(4*n+2)+A036487(2*n+1)`
-/

namespace A355751.P13460317517966174398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 (4 * n + 2) + A036487 (2 * n + 1)

end

end A355751.P13460317517966174398

namespace A355751

/-- `A036487(4*n+2)+A036487(2*n+1)` -/
def P13460317517966174398.Spec : Prop :=
  ∀ n, P13460317517966174398.a n = A355751 (n + 1)

end A355751

/-! ## A355751.P14960535784970997444

`A000292(A016789(2*n))+n`
-/

namespace A355751.P14960535784970997444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A016789 (2 * n)).toNat + (n : ℤ)

end

end A355751.P14960535784970997444

namespace A355751

/-- `A000292(A016789(2*n))+n` -/
def P14960535784970997444.Spec : Prop :=
  ∀ n, P14960535784970997444.a n = A355751 (n + 1)

end A355751

/-!
# A355752: a(n) = 3*(2*n - 1)*(3*(2*n - 1)^3 + 1) / 2.

The programs for A355752, the canonical program `A355752.P14568209550650075275` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355752 has offset 1).

The definition of A355752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355752.P14568209550650075275

`3*(2*(n+1)-1)*(3*(2*(n+1)-1)^3+1)/2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A355752

/-- `3*(2*(n+1)-1)*(3*(2*(n+1)-1)^3+1)/2` -/
def P14568209550650075275.Spec : Prop :=
  ∀ n, P14568209550650075275.a n = (A355752 (n + 1) : ℚ)

end A355752

/-! ## A355752.P5516563022768478859

`A355753(n+1)+A016945(n)`
-/

namespace A355752.P5516563022768478859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355753 (n + 1) + A016945 n

end

end A355752.P5516563022768478859

namespace A355752

/-- `A355753(n+1)+A016945(n)` -/
def P5516563022768478859.Spec : Prop :=
  ∀ n, P5516563022768478859.a n = A355752 (n + 1)

end A355752

/-! ## A355752.P7786739758136579440

`A355753(n+1)+A016933(n)+1`
-/

namespace A355752.P7786739758136579440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355753 (n + 1) + (A016933 n + 1)

end

end A355752.P7786739758136579440

namespace A355752

/-- `A355753(n+1)+A016933(n)+1` -/
def P7786739758136579440.Spec : Prop :=
  ∀ n, P7786739758136579440.a n = A355752 (n + 1)

end A355752

/-! ## A355752.P3252340123097160179

`A016945(n)+(2*n+1)*(A355751(n+1)-1)`
-/

namespace A355752.P3252340123097160179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n + (2 * n + 1 : ℤ) * (A355751 (n + 1) - 1)

end

end A355752.P3252340123097160179

namespace A355752

/-- `A016945(n)+(2*n+1)*(A355751(n+1)-1)` -/
def P3252340123097160179.Spec : Prop :=
  ∀ n, P3252340123097160179.a n = A355752 (n + 1)

end A355752

/-! ## A355752.P3290702888239973867

`floor(A141326(2*n+1)/2)`
-/

namespace A355752.P3290702888239973867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141326 (2 * n + 1) : ℚ) / 2⌋

end

end A355752.P3290702888239973867

namespace A355752

/-- `floor(A141326(2*n+1)/2)` -/
def P3290702888239973867.Spec : Prop :=
  ∀ n, P3290702888239973867.a n = A355752 (n + 1)

end A355752

/-! ## A355752.P18119599130044350672

`A003215(2*n+1)*A005448(2*n+1)-1`
-/

namespace A355752.P18119599130044350672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (2 * n + 1) * A005448 (2 * n + 1) - 1

end

end A355752.P18119599130044350672

namespace A355752

/-- `A003215(2*n+1)*A005448(2*n+1)-1` -/
def P18119599130044350672.Spec : Prop :=
  ∀ n, P18119599130044350672.a n = A355752 (n + 1)

end A355752

/-!
# A355753: a(n) = 3*(2*n - 1)*(3*(2*n - 1)^3 - 1) / 2 for n > 0.

The programs for A355753, the canonical program `A355753.P238210124698001519` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355753 has offset 1).

The definition of A355753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355753.P11529091407380835795

`3*(2*(n+1)-1)*(3*(2*(n+1)-1)^3-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355753.P11529091407380835795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((2 * (n + 1) : ℤ) - 1) * (3 * ((2 * (n + 1) : ℤ) - 1) ^ 3 - 1) : ℚ) / 2

end

end A355753.P11529091407380835795

namespace A355753

/-- `3*(2*(n+1)-1)*(3*(2*(n+1)-1)^3-1)/2` -/
def P11529091407380835795.Spec : Prop :=
  ∀ n, P11529091407380835795.a n = (A355753 (n + 1) : ℚ)

end A355753

/-! ## A355753.P238210124698001519

`A355752(n+1)-3*(2*(n+1)-1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A355753

/-- `A355752(n+1)-3*(2*(n+1)-1)` -/
def P238210124698001519.Spec : Prop :=
  ∀ n, P238210124698001519.a n = A355753 (n + 1)

theorem P238210124698001519.correct : P238210124698001519.Spec := by
  intro n
  simp only [A355753, Nat.add_sub_cancel]

end A355753

/-! ## A355753.P6364201844021381244

`A094159(n+1)+A195319(n)*A386477(n+1)`
-/

namespace A355753.P6364201844021381244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094159 (n + 1) + A195319 n * A386477 (n + 1)

end

end A355753.P6364201844021381244

namespace A355753

/-- `A094159(n+1)+A195319(n)*A386477(n+1)` -/
def P6364201844021381244.Spec : Prop :=
  ∀ n, P6364201844021381244.a n = A355753 (n + 1)

end A355753

/-! ## A355753.P13891821425207694019

`A141326(Δ[n²])/2-A016945(n)`
-/

namespace A355753.P13891821425207694019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141326 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2 - (A016945 n : ℚ)

end

end A355753.P13891821425207694019

namespace A355753

/-- `A141326(Δ[n²])/2-A016945(n)` -/
def P13891821425207694019.Spec : Prop :=
  ∀ n, P13891821425207694019.a n = (A355753 (n + 1) : ℚ)

end A355753

/-! ## A355753.P10148717284376158876

`A003215(2*n)*A005448(2*(n+1))-1`
-/

namespace A355753.P10148717284376158876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (2 * n) * A005448 (2 * (n + 1)) - 1

end

end A355753.P10148717284376158876

namespace A355753

/-- `A003215(2*n)*A005448(2*(n+1))-1` -/
def P10148717284376158876.Spec : Prop :=
  ∀ n, P10148717284376158876.a n = A355753 (n + 1)

end A355753

/-! ## A355753.P11739774049209175677

`1/2*A141326(2*n+1)-A016945(n)`
-/

namespace A355753.P11739774049209175677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A141326 (2 * n + 1) : ℚ) - (A016945 n : ℚ)

end

end A355753.P11739774049209175677

namespace A355753

/-- `1/2*A141326(2*n+1)-A016945(n)` -/
def P11739774049209175677.Spec : Prop :=
  ∀ n, P11739774049209175677.a n = (A355753 (n + 1) : ℚ)

end A355753

/-! ## A355753.P9537527608776705379

`A050791(A145383(2*n+1))/2-A016945(n)`
-/

namespace A355753.P9537527608776705379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050791 (A145383 (2 * n + 1)).toNat : ℚ) / 2 - (A016945 n : ℚ)

end

end A355753.P9537527608776705379

namespace A355753

/-- `A050791(A145383(2*n+1))/2-A016945(n)` -/
def P9537527608776705379.Spec : Prop :=
  ∀ n, P9537527608776705379.a n = (A355753 (n + 1) : ℚ)

end A355753

/-! ## A355753.P9250188124670269500

`A139271(Δ[n^3])+ceil((2*n+1)/acot(3*n))`
-/

namespace A355753.P9250188124670269500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ⌈(2 * n + 1 : ℝ) / SequenceMachineLib.acot (3 * n : ℝ)⌉

end

end A355753.P9250188124670269500

namespace A355753

/-- `A139271(Δ[n^3])+ceil((2*n+1)/acot(3*n))` -/
def P9250188124670269500.Spec : Prop :=
  ∀ n, P9250188124670269500.a n = A355753 (n + 1)

end A355753

/-! ## A355753.P6327843498662409131

`A139271(Δ[n^3])+A085473(n)`
-/

namespace A355753.P6327843498662409131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A085473 n

end

end A355753.P6327843498662409131

namespace A355753

/-- `A139271(Δ[n^3])+A085473(n)` -/
def P6327843498662409131.Spec : Prop :=
  ∀ n, P6327843498662409131.a n = A355753 (n + 1)

end A355753

/-!
# A355755: Irregular triangle read by rows: T(n,k) is the number of unlabeled connected n-node graphs with intersection number (or edge clique cover number) k; n >= 1, 0 <= k <= floor(n^2/4).

The programs for A355755, there is no canonical definition to state claims against.
-/

/-! ## A355755.P2542439662197578699

`A003056(A373428(n))%A326977(3*n+2)`
-/

namespace A355755.P2542439662197578699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A373428 n).toNat) (A326977 (3 * n + 2))

end

end A355755.P2542439662197578699

/-! ## A355755.P285121880086336508

`A003056(A373428(n)%A069700(n+5))`
-/

namespace A355755.P285121880086336508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A373428 n) (A069700 (n + 5))).toNat

end

end A355755.P285121880086336508

/-! ## A355755.P12129396381936474925

`A335474(2*A337107(n+1))`
-/

namespace A355755.P12129396381936474925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 (2 * A337107 (n + 1)).toNat

end

end A355755.P12129396381936474925

/-! ## A355755.P11213545217976659228

`A370167(eq[1, A037291(3*n+5)])`
-/

namespace A355755.P11213545217976659228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037291 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355755.P11213545217976659228

/-! ## A355755.P5312375180581334241

`A052344(A347445(n)+A000079(n))`
-/

namespace A355755.P5312375180581334241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (A347445 n + A000079 n).toNat

end

end A355755.P5312375180581334241

/-!
# A355756: Triangle read by rows: A(n,k) is the intersection number of the Turán graph T(n,k), 1 <= k <= n.

The programs for A355756, there is no canonical definition to state claims against.
-/

/-! ## A355756.P1742451890014025054

`∑{e}[A338600(A200272(n+1)), #]`
-/

namespace A355756.P1742451890014025054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338600 (A200272 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A355756.P1742451890014025054

/-! ## A355756.P6713404184182233315

`A209434(n)%A355386(A124927(n))`
-/

namespace A355756.P6713404184182233315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209434 n) (A355386 (A124927 n).toNat)

end

end A355756.P6713404184182233315

/-! ## A355756.P5945565566930695602

`xor(A010060(A257610(n)), A302996(n))`
-/

namespace A355756.P5945565566930695602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010060 (A257610 n).toNat) (A302996 n)

end

end A355756.P5945565566930695602

/-! ## A355756.P3697178903595213792

`A137679(n+1)%A063489(A284861(n))`
-/

namespace A355756.P3697178903595213792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137679 (n + 1)) (A063489 (A284861 n).toNat)

end

end A355756.P3697178903595213792

/-! ## A355756.P4309287192248544665

`A152072(n+1)%A001615(A157397(n+1))`
-/

namespace A355756.P4309287192248544665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152072 (n + 1)) (A001615 (A157397 (n + 1)).toNat)

end

end A355756.P4309287192248544665

/-!
# A355757: Smallest n-layered number.

The programs for A355757, there is no canonical definition to state claims against.
-/

/-! ## A355757.P15567761604091902551

`A061799(∑[∑[A352410(n)]])`
-/

namespace A355757.P15567761604091902551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352410 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355757.P15567761604091902551

/-!
# A355758: Irregular triangle read by rows in which row n lists the divisors of n that are Fibonacci numbers.

The programs for A355758, there is no canonical definition to state claims against.
-/

/-! ## A355758.P17612785222612317965

`A005181(A394854(n+1))`
-/

namespace A355758.P17612785222612317965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 (A394854 (n + 1)).toNat

end

end A355758.P17612785222612317965

/-! ## A355758.P10498650276725765761

`A000045(A394854(n+1)+1)`
-/

namespace A355758.P10498650276725765761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A394854 (n + 1) + 1).toNat

end

end A355758.P10498650276725765761

/-! ## A355758.P7949229469090704493

`filter[A027750(n+1), A010056(#)]`
-/

namespace A355758.P7949229469090704493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A355758.P7949229469090704493

/-! ## A355758.P14300023209883066584

`gcd(5*A098661(n+1), A106466(n))`
-/

namespace A355758.P14300023209883066584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (5 * A098661 (n + 1)) (A106466 n)

end

end A355758.P14300023209883066584

/-! ## A355758.P11601233416478598476

`A206778(n+1)%A247600(2*(n+4))`
-/

namespace A355758.P11601233416478598476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206778 (n + 1)) (A247600 (2 * (n + 4)))

end

end A355758.P11601233416478598476

/-!
# A355759: Sums of the first ceiling((n+1)/2) entries on the diagonals of a square spiral with a starting value of 1 in the center, where the diagonal and the antidiagonal are used alternately.

The programs for A355759, the canonical program `A355759.P6668375112368553834` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355759 has offset 1).

The definition of A355759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355759.P6668375112368553834

`A008619(n+1)+∑[A007590(A008619(n+1))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A355759

/-- `A008619(n+1)+∑[A007590(A008619(n+1))]` -/
def P6668375112368553834.Spec : Prop :=
  ∀ n, P6668375112368553834.a n = A355759 (n + 1)

theorem P6668375112368553834.correct : P6668375112368553834.Spec := by
  intro n
  simp only [A355759, Nat.add_sub_cancel]

end A355759

/-! ## A355759.P1277930388170727194

`A008610(n+1)+ceil(n/4)`
-/

namespace A355759.P1277930388170727194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 (n + 1) + ⌈(n : ℚ) / 4⌉

end

end A355759.P1277930388170727194

namespace A355759

/-- `A008610(n+1)+ceil(n/4)` -/
def P1277930388170727194.Spec : Prop :=
  ∀ n, P1277930388170727194.a n = A355759 (n + 1)

end A355759

/-! ## A355759.P5095067048949782424

`A106607(n+1)+A008733(A004442(n))`
-/

namespace A355759.P5095067048949782424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106607 (n + 1) + A008733 (A004442 n).toNat

end

end A355759.P5095067048949782424

namespace A355759

/-- `A106607(n+1)+A008733(A004442(n))` -/
def P5095067048949782424.Spec : Prop :=
  ∀ n, P5095067048949782424.a n = A355759 (n + 1)

end A355759

/-! ## A355759.P1894948372067188376

`A053307(n+1)+A053307(n)-A008610(n)`
-/

namespace A355759.P1894948372067188376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053307 (n + 1) + (A053307 n - A008610 n)

end

end A355759.P1894948372067188376

namespace A355759

/-- `A053307(n+1)+A053307(n)-A008610(n)` -/
def P1894948372067188376.Spec : Prop :=
  ∀ n, P1894948372067188376.a n = A355759 (n + 1)

end A355759

/-! ## A355759.P17153979768530979330

`A208971(n+1)+∑[A002265(n+3)]`
-/

namespace A355759.P17153979768530979330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208971 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355759.P17153979768530979330

namespace A355759

/-- `A208971(n+1)+∑[A002265(n+3)]` -/
def P17153979768530979330.Spec : Prop :=
  ∀ n, P17153979768530979330.a n = A355759 (n + 1)

end A355759

/-! ## A355759.P646765913128151460

`A110654(n)+1+A014557(n+5)`
-/

namespace A355759.P646765913128151460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + 1 + A014557 (n + 5)

end

end A355759.P646765913128151460

namespace A355759

/-- `A110654(n)+1+A014557(n+5)` -/
def P646765913128151460.Spec : Prop :=
  ∀ n, P646765913128151460.a n = A355759 (n + 1)

end A355759

/-! ## A355759.P582732647893886071

`A080513(n)+∑[A004526(A080513(n)²)]`
-/

namespace A355759.P582732647893886071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A080513 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355759.P582732647893886071

namespace A355759

/-- `A080513(n)+∑[A004526(A080513(n)²)]` -/
def P582732647893886071.Spec : Prop :=
  ∀ n, P582732647893886071.a n = A355759 (n + 1)

end A355759

/-! ## A355759.P16093310929096527455

`A183409(n+1)-A293821(n+4)`
-/

namespace A355759.P16093310929096527455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183409 (n + 1) - A293821 (n + 4)

end

end A355759.P16093310929096527455

namespace A355759

/-- `A183409(n+1)-A293821(n+4)` -/
def P16093310929096527455.Spec : Prop :=
  ∀ n, P16093310929096527455.a n = A355759 (n + 1)

end A355759

/-!
# A355760: a(n) is the number of grid points in a square lattice covered by the area enclosed by n loops of an Archimedean spiral with starting point (0, 0) and endpoint (n, 0).

The programs for A355760, there is no canonical definition to state claims against.
-/

/-! ## A355760.P7019878334307353055

`A000328(n)-A355761(n)`
-/

namespace A355760.P7019878334307353055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n - A355761 n

end

end A355760.P7019878334307353055

/-! ## A355760.P11386384462438621861

`∑[A036693(n)]-A355761(n)`
-/

namespace A355760.P11386384462438621861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A355761 n

end

end A355760.P11386384462438621861

/-! ## A355760.P7906394517789455571

`A049735(∑[n])-A355761(n)`
-/

namespace A355760.P7906394517789455571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049735 (∑ j ∈ Finset.range (n + 1), f1 j) - A355761 n

end

end A355760.P7906394517789455571

/-! ## A355760.P10191468855429492131

`A053411(2*n)-A355761(n)`
-/

namespace A355760.P10191468855429492131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (2 * n) - A355761 n

end

end A355760.P10191468855429492131

/-! ## A355760.P10454162539468964526

`A014198(n²)+1-A355761(n)`
-/

namespace A355760.P10454162539468964526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (n ^ 2) + 1 - A355761 n

end

end A355760.P10454162539468964526

/-! ## A355760.P7168089981071869653

`4*A036698(n)+1-A355761(n)`
-/

namespace A355760.P7168089981071869653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A036698 n + 1 - A355761 n

end

end A355760.P7168089981071869653

/-! ## A355760.P610754429197863148

`∑[4*A036694(n)]+1-A355761(n)`
-/

namespace A355760.P610754429197863148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A036694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A355761 n

end

end A355760.P610754429197863148

/-! ## A355760.P4592391379710405527

`∑[2*(A036696(n)-1)]+1-A355761(n)`
-/

namespace A355760.P4592391379710405527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A036696 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A355761 n

end

end A355760.P4592391379710405527

/-! ## A355760.P1488837609211768353

`A016813(A014200(n²))-A355761(n)`
-/

namespace A355760.P1488837609211768353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A014200 (n ^ 2)).toNat - A355761 n

end

end A355760.P1488837609211768353

/-! ## A355760.P12374179275874808807

`A051132(n+1)-(A355761(n)+A077770(n))`
-/

namespace A355760.P12374179275874808807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 (n + 1) - (A355761 n + A077770 n)

end

end A355760.P12374179275874808807

/-!
# A355761: a(n) is the number of grid points in a square lattice strictly outside of the area enclosed by n loops of an Archimedean spiral and inside (or on the boundary) of a circle with radius n.

The programs for A355761, there is no canonical definition to state claims against.
-/

/-! ## A355761.P3335496572328141272

`A000328(n)-A355760(n)`
-/

namespace A355761.P3335496572328141272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n - A355760 n

end

end A355761.P3335496572328141272

/-! ## A355761.P5323207270754723662

`∑[A036693(n)]-A355760(n)`
-/

namespace A355761.P5323207270754723662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A355760 n

end

end A355761.P5323207270754723662

/-! ## A355761.P11086576776123186004

`A049735(∑[n])-A355760(n)`
-/

namespace A355761.P11086576776123186004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049735 (∑ j ∈ Finset.range (n + 1), f1 j) - A355760 n

end

end A355761.P11086576776123186004

/-! ## A355761.P1765195647588350525

`A053411(2*n)-A355760(n)`
-/

namespace A355761.P1765195647588350525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (2 * n) - A355760 n

end

end A355761.P1765195647588350525

/-! ## A355761.P4172161249714346180

`A014198(n²)+1-A355760(n)`
-/

namespace A355761.P4172161249714346180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (n ^ 2) + 1 - A355760 n

end

end A355761.P4172161249714346180

/-! ## A355761.P6660142774279254577

`4*A036698(n)+1-A355760(n)`
-/

namespace A355761.P6660142774279254577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A036698 n + 1 - A355760 n

end

end A355761.P6660142774279254577

/-! ## A355761.P11282796245631708737

`∑[4*A036694(n)]+1-A355760(n)`
-/

namespace A355761.P11282796245631708737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A036694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A355760 n

end

end A355761.P11282796245631708737

/-! ## A355761.P5978902502775481446

`∑[2*(A036696(n)-1)]+1-A355760(n)`
-/

namespace A355761.P5978902502775481446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A036696 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A355760 n

end

end A355761.P5978902502775481446

/-! ## A355761.P844874825714624209

`A016813(A014200(n²))-A355760(n)`
-/

namespace A355761.P844874825714624209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A014200 (n ^ 2)).toNat - A355760 n

end

end A355761.P844874825714624209

/-! ## A355761.P8436315263532119559

`A046109(n)+A051132(n)-A355760(n)`
-/

namespace A355761.P8436315263532119559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n + (A051132 n - A355760 n)

end

end A355761.P8436315263532119559

/-!
# A355763: E.g.f. satisfies A(x)^2 * log(A(x)) = exp(x*A(x)) - 1.

The programs for A355763, there is no canonical definition to state claims against.
-/

/-! ## A355763.P5546565036407118545

`A256470(A324694(2*n+1)+A036679(n))`
-/

namespace A355763.P5546565036407118545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256470 (A324694 (2 * n + 1) + A036679 n).toNat

end

end A355763.P5546565036407118545

/-! ## A355763.P15162494273358285041

`A137762(A227038(n))-A350797(3*n+2)`
-/

namespace A355763.P15162494273358285041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137762 (A227038 n).toNat - A350797 (3 * n + 2)

end

end A355763.P15162494273358285041

/-!
# A355764: E.g.f. satisfies log(A(x)) = (1 - exp(-x*A(x))) * A(x)^2.

The programs for A355764, there is no canonical definition to state claims against.
-/

/-! ## A355764.P11770533807222847903

`A379116(A366141(∑[n]))+1`
-/

namespace A355764.P11770533807222847903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379116 (A366141 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 1

end

end A355764.P11770533807222847903

/-!
# A355766: E.g.f. satisfies A(x) = 1/(1 - x*A(x))^(A(x)^2).

The programs for A355766, there is no canonical definition to state claims against.
-/

/-! ## A355766.P14655875681987444433

`A131503(A275763(n))+1`
-/

namespace A355766.P14655875681987444433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (A275763 n).toNat + 1

end

end A355766.P14655875681987444433

/-!
# A355768: E.g.f. satisfies A(x)^(A(x)^2) = 1 + x*A(x).

The programs for A355768, there is no canonical definition to state claims against.
-/

/-! ## A355768.P4890342146675901262

`xor(A067146(n+1), A337108(A001142(n)))`
-/

namespace A355768.P4890342146675901262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A067146 (n + 1)) (A337108 (A001142 n).toNat)

end

end A355768.P4890342146675901262

/-!
# A355769: Numbers k such that both k and k+1 can be written as the sum of two nonzero squares.

The programs for A355769, the canonical program `A355769.P9165720454597640322` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355769 has offset 1).

The definition of A355769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355769.P9165720454597640322

`∩[A000404(n+1)-1, A000404(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A355769

/-- `∩[A000404(n+1)-1, A000404(n+1)]` -/
def P9165720454597640322.Spec : Prop :=
  ∀ n, (P9165720454597640322.a n : ℤ) = A355769 (n + 1)

theorem P9165720454597640322.correct : P9165720454597640322.Spec := by
  intro n
  simp only [A355769, Nat.add_sub_cancel]

end A355769

/-! ## A355769.P923520222685449818

`lt[3-sqrt(A063725(n+1)*A347801(n)), 2]`
-/

namespace A355769.P923520222685449818
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 - Real.sqrt (A063725 (n + 1) * A347801 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A355769.P923520222685449818

namespace A355769

/-- `lt[3-sqrt(A063725(n+1)*A347801(n)), 2]` -/
def P923520222685449818.Spec : Prop :=
  ∀ n, (P923520222685449818.a n : ℤ) = A355769 (n + 1)

end A355769

/-! ## A355769.P13434328977195127767

`∩[A000404(n+1), A023443(A000404(n+1))]`
-/

namespace A355769.P13434328977195127767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000404 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355769.P13434328977195127767

namespace A355769

/-- `∩[A000404(n+1), A023443(A000404(n+1))]` -/
def P13434328977195127767.Spec : Prop :=
  ∀ n, (P13434328977195127767.a n : ℤ) = A355769 (n + 1)

end A355769

/-! ## A355769.P3801799643013846976

`lt[A000122(n+1), A000925(n+1)*A025435(2*n)]`
-/

namespace A355769.P3801799643013846976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (n + 1) * A025435 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355769.P3801799643013846976

namespace A355769

/-- `lt[A000122(n+1), A000925(n+1)*A025435(2*n)]` -/
def P3801799643013846976.Spec : Prop :=
  ∀ n, (P3801799643013846976.a n : ℤ) = A355769 (n + 1)

end A355769

/-! ## A355769.P2690804026121494284

`lt[A025426(n+1), A000925(2*n)*A025426(n+1)]`
-/

namespace A355769.P2690804026121494284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (2 * n) * A025426 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355769.P2690804026121494284

namespace A355769

/-- `lt[A025426(n+1), A000925(2*n)*A025426(n+1)]` -/
def P2690804026121494284.Spec : Prop :=
  ∀ n, (P2690804026121494284.a n : ℤ) = A355769 (n + 1)

end A355769

/-! ## A355769.P7395654204756337087

`∩[A233583(A000404(n+1)), A097268(n+1)]`
-/

namespace A355769.P7395654204756337087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A000404 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355769.P7395654204756337087

namespace A355769

/-- `∩[A233583(A000404(n+1)), A097268(n+1)]` -/
def P7395654204756337087.Spec : Prop :=
  ∀ n, (P7395654204756337087.a n : ℤ) = A355769 (n + 1)

end A355769

/-! ## A355769.P14296469945613295941

`∩[A000404(n+1), A233583(A000404(n+2))]`
-/

namespace A355769.P14296469945613295941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A000404 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355769.P14296469945613295941

namespace A355769

/-- `∩[A000404(n+1), A233583(A000404(n+2))]` -/
def P14296469945613295941.Spec : Prop :=
  ∀ n, (P14296469945613295941.a n : ℤ) = A355769 (n + 1)

end A355769

/-! ## A355769.P4608880434920859953

`∩[A097268(n+1), A233583(A339273(n+1)/4)]`
-/

namespace A355769.P4608880434920859953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.roundAway ((A339273 (n + 1) : ℚ) / 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355769.P4608880434920859953

namespace A355769

/-- `∩[A097268(n+1), A233583(A339273(n+1)/4)]` -/
def P4608880434920859953.Spec : Prop :=
  ∀ n, (P4608880434920859953.a n : ℤ) = A355769 (n + 1)

end A355769

/-!
# A355770: a(n) is the number of terms of A333369 that divide n.

The programs for A355770, there is no canonical definition to state claims against.
-/

/-! ## A355770.P10711705751789771237

`A001227(n+1)-A024326(A124795(n+1))`
-/

namespace A355770.P10711705751789771237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A024326 (A124795 (n + 1)).toNat

end

end A355770.P10711705751789771237

/-! ## A355770.P5313120703133841054

`A001227(n+1)-A187946(A032815(n+1))`
-/

namespace A355770.P5313120703133841054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A187946 (A032815 (n + 1)).toNat

end

end A355770.P5313120703133841054

/-! ## A355770.P18385050352849357948

`gcd(∑{d}[n+1, #%2], A089870(∑{d}[n+1, (n+1)*#%2]))`
-/

namespace A355770.P18385050352849357948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ) (A089870 (∑ d ∈ Nat.divisors (f2 n), (n + 1) * (d % 2)))

end

end A355770.P18385050352849357948

/-! ## A355770.P6712636855173262750

`gcd(A001227(n+1), A101817(2*(n+1)))`
-/

namespace A355770.P6712636855173262750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001227 (n + 1)) (A101817 (2 * (n + 1)))

end

end A355770.P6712636855173262750

/-! ## A355770.P14630349722952626682

`∑{d}[n+1, #%2]-A025469(A186757(n))`
-/

namespace A355770.P14630349722952626682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ) - A025469 (A186757 n).toNat

end

end A355770.P14630349722952626682

/-!
# A355771: a(n) is the smallest integer that has exactly n divisors from A333369.

The programs for A355771, there is no canonical definition to state claims against.
-/

/-! ## A355771.P1790942974495409489

`A355772(A010352(n+1))`
-/

namespace A355771.P1790942974495409489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355772 (A010352 (n + 1)).toNat

end

end A355771.P1790942974495409489

/-! ## A355771.P10627141387190825608

`A355772(A010353(n+1))`
-/

namespace A355771.P10627141387190825608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355772 (A010353 (n + 1)).toNat

end

end A355771.P10627141387190825608

/-! ## A355771.P8757067294183197470

`A355772(A024652(n+1))`
-/

namespace A355771.P8757067294183197470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355772 (A024652 (n + 1)).toNat

end

end A355771.P8757067294183197470

/-! ## A355771.P7160606200256977568

`A355772(A024653(n+1))`
-/

namespace A355771.P7160606200256977568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355772 (A024653 (n + 1)).toNat

end

end A355771.P7160606200256977568

/-!
# A355772: Positions of records in A355770.

The programs for A355772, there is no canonical definition to state claims against.
-/

/-! ## A355772.P5515101307116598146

`filter[A355771(n+1), A187944(#)]`
-/

namespace A355772.P5515101307116598146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187944 (f1 j).toNat = 1) n)

end

end A355772.P5515101307116598146

/-! ## A355772.P4890450633256286949

`filter[A355771(n+1), A188470(#)]`
-/

namespace A355772.P4890450633256286949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188470 (f1 j).toNat = 1) n)

end

end A355772.P4890450633256286949

/-! ## A355772.P3911797909706202653

`A355771(A093641(n+1)^A053164(n+4))`
-/

namespace A355772.P3911797909706202653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355771 (SequenceMachineLib.roundAway ((A093641 (n + 1) : ℚ) ^ (A053164 (n + 4) : ℤ))).toNat

end

end A355772.P3911797909706202653

/-! ## A355772.P11699829748007256768

`A355771(A055649(n)+A029131(n))`
-/

namespace A355772.P11699829748007256768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355771 (A055649 n + A029131 n).toNat

end

end A355772.P11699829748007256768

/-! ## A355772.P9090320416278819125

`A355771(A087027(n+1))`
-/

namespace A355772.P9090320416278819125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355771 (A087027 (n + 1)).toNat

end

end A355772.P9090320416278819125

/-!
# A355773: Numbers all of whose divisors are members of A333369.

The programs for A355773, there is no canonical definition to state claims against.
-/

/-! ## A355773.P10155415341806163061

`∩[A333369(n+1), A349150(n+1)]`
-/

namespace A355773.P10155415341806163061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355773.P10155415341806163061

/-! ## A355773.P8687295356128722417

`lt[A196563(n), A228813(A078709(2*n+1))]`
-/

namespace A355773.P8687295356128722417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228813 (A078709 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355773.P8687295356128722417

/-! ## A355773.P7408659573005390420

`∩[A066640(n+1), A102234(n+1)]`
-/

namespace A355773.P7408659573005390420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355773.P7408659573005390420

/-! ## A355773.P12370182959303251181

`eq[A000005(n+1), A355770(n+1)]+1`
-/

namespace A355773.P12370182959303251181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A355773.P12370182959303251181

/-! ## A355773.P3233874243646494715

`eq[A181819(n+1), A355770(n+1)]+1`
-/

namespace A355773.P3233874243646494715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A355773.P3233874243646494715

/-!
# A355774: An extension of the generalized pentagonal numbers such that every positive integer can be represented as the sum of at most two terms of the sequence.

The programs for A355774, there is no canonical definition to state claims against.
-/

/-! ## A355774.P6841552265336171446

`eq[A133607(3*n+2)+1, A387381(2*n+1)]`
-/

namespace A355774.P6841552265336171446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133607 (3 * n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387381 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355774.P6841552265336171446

/-! ## A355774.P12168503497447861183

`eq[1, A008683(A178522(3*n+1))]`
-/

namespace A355774.P12168503497447861183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A178522 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A355774.P12168503497447861183

/-! ## A355774.P8781839582389609263

`eq[1, A072458(A339160(3*n+1))]`
-/

namespace A355774.P8781839582389609263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072458 (A339160 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A355774.P8781839582389609263

/-! ## A355774.P6070227674964281039

`lt[A267019(3*n+1), A062028(A000041(n))]`
-/

namespace A355774.P6070227674964281039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267019 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A000041 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355774.P6070227674964281039

/-! ## A355774.P15454063241310659484

`lt[A267019(3*n+1), A210186(A000009(n))]`
-/

namespace A355774.P15454063241310659484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267019 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210186 (A000009 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355774.P15454063241310659484

/-!
# A355776: Partition triangle read by rows. A statistic of permutations whose Lehmer code is nonmonotonic, refining triangle A356116.

The programs for A355776, there is no canonical definition to state claims against.
-/

/-! ## A355776.P15138904702847649849

`A356113(n)-A355777(n)`
-/

namespace A355776.P15138904702847649849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356113 n - A355777 n

end

end A355776.P15138904702847649849

/-! ## A355776.P8847479436317236752

`A355777(n)-A134264(n+1)`
-/

namespace A355776.P8847479436317236752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355777 n - A134264 (n + 1)

end

end A355776.P8847479436317236752

/-! ## A355776.P16684553009140052129

`(A356113(n)-A134264(n+1))/2`
-/

namespace A355776.P16684553009140052129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356113 n - A134264 (n + 1) : ℚ) / 2

end

end A355776.P16684553009140052129

/-! ## A355776.P9305709188978142809

`A355777(n)-A298941(A344122(n+2)/2)`
-/

namespace A355776.P9305709188978142809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355777 n - A298941 (SequenceMachineLib.roundAway ((A344122 (n + 2) : ℚ) / 2)).toNat

end

end A355776.P9305709188978142809

/-! ## A355776.P7640376122904610813

`A004526(A356113(n)-A134264(n+1))`
-/

namespace A355776.P7640376122904610813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A356113 n - A134264 (n + 1)).toNat

end

end A355776.P7640376122904610813

/-! ## A355776.P5933212612088316802

`A356113(n)%A004526(A356113(n)+A134264(n+1))`
-/

namespace A355776.P5933212612088316802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356113 n) (A004526 (A356113 n + A134264 (n + 1)).toNat)

end

end A355776.P5933212612088316802

/-!
# A355777: Partition triangle read by rows. A statistic of permutations given by their Lehmer code refining Euler's triangle A173018.

The programs for A355777, there is no canonical definition to state claims against.
-/

/-! ## A355777.P1546367730546035655

`A356113(n)-A355776(n)`
-/

namespace A355777.P1546367730546035655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356113 n - A355776 n

end

end A355777.P1546367730546035655

/-! ## A355777.P11602137924740305818

`A190015(n)/A134133(n)`
-/

namespace A355777.P11602137924740305818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190015 n : ℚ) / (A134133 n : ℚ)

end

end A355777.P11602137924740305818

/-! ## A355777.P13884310729424696029

`A355776(n)+A134264(n+1)`
-/

namespace A355777.P13884310729424696029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355776 n + A134264 (n + 1)

end

end A355777.P13884310729424696029

/-! ## A355777.P16037284434053179211

`(A356113(n)+A134264(n+1))/2`
-/

namespace A355777.P16037284434053179211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356113 n + A134264 (n + 1) : ℚ) / 2

end

end A355777.P16037284434053179211

/-! ## A355777.P7001160886474366486

`A355776(n)+A298941(A344122(n+2)/2)`
-/

namespace A355777.P7001160886474366486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355776 n + A298941 (SequenceMachineLib.roundAway ((A344122 (n + 2) : ℚ) / 2)).toNat

end

end A355777.P7001160886474366486

/-! ## A355777.P1984877158619177075

`A134264(n+1)+A004526(A356113(n)-A134264(n+1))`
-/

namespace A355777.P1984877158619177075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134264 (n + 1) + A004526 (A356113 n - A134264 (n + 1)).toNat

end

end A355777.P1984877158619177075

/-! ## A355777.P7757527785261117370

`A004526(A356113(n)+A134264(n+1))`
-/

namespace A355777.P7757527785261117370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A356113 n + A134264 (n + 1)).toNat

end

end A355777.P7757527785261117370

/-!
# A355778: Numbers k such that both k and k^2 + 2 can be written as the sum of two nonzero squares.

The programs for A355778, there is no canonical definition to state claims against.
-/

/-! ## A355778.P16900843651037309328

`∩[A000404(n+1), A274595(n+1)]`
-/

namespace A355778.P16900843651037309328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355778.P16900843651037309328

/-! ## A355778.P6637663240984485885

`∩[A085989(n+1), A274595(n+1)]`
-/

namespace A355778.P6637663240984485885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355778.P6637663240984485885

/-! ## A355778.P14437928346930435306

`∩[A097268(n+1), A274595(n+1)]`
-/

namespace A355778.P14437928346930435306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355778.P14437928346930435306

/-! ## A355778.P1103281127703144018

`∩[A274595(n+1), A339273(n+1)]`
-/

namespace A355778.P1103281127703144018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355778.P1103281127703144018

/-!
# A355779: E.g.f. satisfies A(x) = 1/(1 - x)^(2 * A(x)).

The programs for A355779, there is no canonical definition to state claims against.
-/

/-! ## A355779.P3355865811072212205

`A189792(A043096((n+1)*a(n-1)))` with `a(0)=1`
-/

namespace A355779.P3355865811072212205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189792 (A043096 ((n + 1 : ℤ) * a (n - 1)).toNat).toNat

end

end A355779.P3355865811072212205

/-!
# A355780: E.g.f. satisfies A(x) = (1 + x)^(2 * A(x)).

The programs for A355780, there is no canonical definition to state claims against.
-/

/-! ## A355780.P13065416592731211609

`ceil(2^(n-1))*A277852(2^n)`
-/

namespace A355780.P13065416592731211609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A277852 (2 ^ n)

end

end A355780.P13065416592731211609

/-!
# A355781: E.g.f. satisfies log(A(x)) = 2 * (exp(x) - 1) * A(x).

The programs for A355781, there is no canonical definition to state claims against.
-/

/-! ## A355781.P11297331264497246422

`A112886(∑[A346984(n)])`
-/

namespace A355781.P11297331264497246422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355781.P11297331264497246422

/-!
# A355782: E.g.f. satisfies log(A(x)) = 2 * (1 - exp(-x)) * A(x).

The programs for A355782, there is no canonical definition to state claims against.
-/

/-! ## A355782.P4925300987471403948

`A145393(A212072(n))`
-/

namespace A355782.P4925300987471403948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145393 (A212072 n).toNat

end

end A355782.P4925300987471403948

/-!
# A355783: Triangular array read by rows. T(n,k) is the number of labeled transitive relations on [n] that have exactly k symmetric points.

The programs for A355783, there is no canonical definition to state claims against.
-/

/-! ## A355783.P16623208452281906143

`A086009(A096655(n))*A328923(n)`
-/

namespace A355783.P16623208452281906143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086009 (A096655 n).toNat * A328923 n

end

end A355783.P16623208452281906143

/-! ## A355783.P13581720141872024753

`A204065(A220910(n))*A220916(n+1)`
-/

namespace A355783.P13581720141872024753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204065 (A220910 n).toNat * A220916 (n + 1)

end

end A355783.P13581720141872024753

/-! ## A355783.P7349084734398429162

`A360201(n+1)%A039512(A000108(n))`
-/

namespace A355783.P7349084734398429162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360201 (n + 1)) (A039512 (A000108 n).toNat)

end

end A355783.P7349084734398429162

/-!
# A355784: a(n) is the number of distinct primes of the form k*(n-k)+n where 1 <= k < n.

The programs for A355784, there is no canonical definition to state claims against.
-/

/-! ## A355784.P13900034802422532045

`A109909(n+3)-A010051(n+1)`
-/

namespace A355784.P13900034802422532045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109909 (n + 3) - A010051 (n + 1)

end

end A355784.P13900034802422532045

/-!
# A355786: E.g.f. satisfies A(x) = 1/(1 - 2*x)^(A(x)/2).

The programs for A355786, there is no canonical definition to state claims against.
-/

/-! ## A355786.P13584198676343039936

`A347015(n)-A339123(A000041(n))`
-/

namespace A355786.P13584198676343039936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347015 n - A339123 (A000041 n).toNat

end

end A355786.P13584198676343039936

/-!
# A355787: E.g.f. satisfies A(x) = (1 + 2*x)^(A(x)/2).

The programs for A355787, there is no canonical definition to state claims against.
-/

/-! ## A355787.P9115582752528642158

`A211354(A084858(n))`
-/

namespace A355787.P9115582752528642158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211354 (A084858 n).toNat

end

end A355787.P9115582752528642158

/-! ## A355787.P13241693712493417723

`filter[A014833(n), A177444(#)]`
-/

namespace A355787.P13241693712493417723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A177444 (f1 j).toNat = 1) n)

end

end A355787.P13241693712493417723

/-!
# A355788: E.g.f. satisfies log(A(x)) = (exp(2*x) - 1) * A(x)/2.

The programs for A355788, there is no canonical definition to state claims against.
-/

/-! ## A355788.P11761560400119408114

`ceil(∑[A028234(A144097(n))]/2)`
-/

namespace A355788.P11761560400119408114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A144097 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A355788.P11761560400119408114

/-!
# A355789: E.g.f. satisfies log(A(x)) = (1 - exp(-2*x)) * A(x)/2.

The programs for A355789, there is no canonical definition to state claims against.
-/

/-! ## A355789.P14006336658864951634

`ceil(A330624(n)/comp[∑[n-1]])`
-/

namespace A355789.P14006336658864951634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330624 n : ℚ) / (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ)⌉

end

end A355789.P14006336658864951634

/-! ## A355789.P3271892474631851604

`A002266(A033062(n!))+1`
-/

namespace A355789.P3271892474631851604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A033062 (Nat.factorial n)).toNat + 1

end

end A355789.P3271892474631851604

/-! ## A355789.P11260216367589493755

`A138997(A005315(n)-A370589(n))`
-/

namespace A355789.P11260216367589493755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A005315 n - A370589 n).toNat

end

end A355789.P11260216367589493755

/-!
# A355791: Numbers that can be written as the product of two divisors greater than 1 such that the number in binary is contained in the string concatenation of the divisors in binary.

The programs for A355791, there is no canonical definition to state claims against.
-/

/-! ## A355791.P15228936590085587141

`record[A155750(A257251(n+1)+1)]`
-/

namespace A355791.P15228936590085587141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (A257251 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355791.P15228936590085587141

/-! ## A355791.P10806361723832647361

`A363171(record[A074215(n+1)-A079262(n)])`
-/

namespace A355791.P10806361723832647361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074215 (n + 1) - A079262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363171 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A355791.P10806361723832647361

/-!
# A355792: Triangular array, read by rows. The rules of the construction are described in the Comments section.

The programs for A355792, there is no canonical definition to state claims against.
-/

/-! ## A355792.P4898914687537757682

`gcd(A020492(A000413(n)), A088177(n+1))`
-/

namespace A355792.P4898914687537757682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020492 (A000413 n).toNat) (A088177 (n + 1))

end

end A355792.P4898914687537757682

/-!
# A355794: Row 1 of A355793.

The programs for A355794, there is no canonical definition to state claims against.
-/

/-! ## A355794.P6032959384284344194

`A355793(∑[n+2]-1)`
-/

namespace A355794.P6032959384284344194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355793 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A355794.P6032959384284344194

/-! ## A355794.P13009758691637516312

`record[gcd(A153585(n), A355793(n))]`
-/

namespace A355794.P13009758691637516312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153585 n) (A355793 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355794.P13009758691637516312

/-! ## A355794.P9662641056862832284

`record[A355793(and(n, A111967(n)))]`
-/

namespace A355794.P9662641056862832284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355793 (Int.land (n : ℤ) (A111967 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355794.P9662641056862832284

/-! ## A355794.P2227837172731463227

`record[A355793(record[A351153(n+1)])]`
-/

namespace A355794.P2227837172731463227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351153 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355793 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355794.P2227837172731463227

/-!
# A355795: Row 2 of A355793.

The programs for A355795, there is no canonical definition to state claims against.
-/

/-! ## A355795.P8037056802927271430

`A355793(∑[n+3])`
-/

namespace A355795.P8037056802927271430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355793 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355795.P8037056802927271430

/-! ## A355795.P4703720334189555770

`or(1, A355793(A141214(n)))`
-/

namespace A355795.P4703720334189555770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A355793 (A141214 n).toNat)

end

end A355795.P4703720334189555770

/-! ## A355795.P14697664553319502711

`record[A355793(n)/A286718(n+2)]`
-/

namespace A355795.P14697664553319502711
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355793 n : ℚ) / (A286718 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355795.P14697664553319502711

/-!
# A355796: Row 3 of A355793.

The programs for A355796, there is no canonical definition to state claims against.
-/

/-! ## A355796.P14447143090340278910

`A355793(∑[n+4]+2)`
-/

namespace A355796.P14447143090340278910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355793 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A355796.P14447143090340278910

/-! ## A355796.P2285452727541729691

`record[A355793(abs(A046691(n)))]`
-/

namespace A355796.P2285452727541729691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355793 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355796.P2285452727541729691

/-!
# A355797: Row 4 of A355793.

The programs for A355797, there is no canonical definition to state claims against.
-/

/-! ## A355797.P11815868317858812987

`A355793(A052905(n+2))`
-/

namespace A355797.P11815868317858812987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355793 (A052905 (n + 2)).toNat

end

end A355797.P11815868317858812987

/-! ## A355797.P7106684556317633180

`A355793(A000217(n+5)-5)`
-/

namespace A355797.P7106684556317633180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355793 (A000217 (n + 5) - 5).toNat

end

end A355797.P7106684556317633180

/-!
# A355798: Number of regions formed in a square by straight line segments when connecting the n-1 points between each corner that divide each edge into n equal parts to the n-1 points on the edge on the opposite side of the square.

The programs for A355798, there is no canonical definition to state claims against.
-/

/-! ## A355798.P4201183503177232758

`A355800(n+1)-A355799(n+1)+1`
-/

namespace A355798.P4201183503177232758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355800 (n + 1) - A355799 (n + 1) + 1

end

end A355798.P4201183503177232758

/-! ## A355798.P96994383818769373

`A015906(A355800(n+1)-A355799(n+1))`
-/

namespace A355798.P96994383818769373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A355800 (n + 1) - A355799 (n + 1)).toNat

end

end A355798.P96994383818769373

/-!
# A355799: Number of vertices formed in a square by straight line segments when connecting the n-1 points between each corner that divide each edge into n equal parts to the n-1 points on the edge on the opposite side of the square.

The programs for A355799, there is no canonical definition to state claims against.
-/

/-! ## A355799.P2619756640707587348

`A355800(n+1)-A355798(n+1)+1`
-/

namespace A355799.P2619756640707587348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355800 (n + 1) - A355798 (n + 1) + 1

end

end A355799.P2619756640707587348

/-! ## A355799.P5496948886395657940

`A355800(n+1)-A023443(A355798(n+1))`
-/

namespace A355799.P5496948886395657940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355800 (n + 1) - A023443 (A355798 (n + 1)).toNat

end

end A355799.P5496948886395657940

