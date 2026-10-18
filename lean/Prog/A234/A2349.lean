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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A234900: Primes p with P(p+1) also prime, where P(.) is the partition function (A000041).

The programs for A234900, there is no canonical definition to state claims against.
-/

/-! ## A234900.P10799812157746458483

`p?[A046063(n+1)-1]`
-/

namespace A234900.P10799812157746458483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046063 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234900.P10799812157746458483

/-! ## A234900.P1670909774407708789

`p?[record[A046063(A292266(n))-1]]`
-/

namespace A234900.P1670909774407708789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046063 (A292266 n).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234900.P1670909774407708789

/-! ## A234900.P15277284491280791225

`p?[record[A046063(A324346(n))-1]]`
-/

namespace A234900.P15277284491280791225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046063 (A324346 n).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234900.P15277284491280791225

/-! ## A234900.P6184990298454272496

`p?[record[A046063(A324347(n))-1]]`
-/

namespace A234900.P6184990298454272496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046063 (A324347 n).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234900.P6184990298454272496

/-! ## A234900.P4708769725894338143

`p?[record[A046063(A328395(n))-1]]`
-/

namespace A234900.P4708769725894338143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046063 (A328395 n).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234900.P4708769725894338143

/-!
# A234902: a(n)*Pi is the total length of irregular spiral (center points: 1, 2, 3) after n rotations.

The programs for A234902, the canonical program `A234902.P13512425376406213525` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234902 has offset 1).

The definition of A234902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234902.P13512425376406213525

`∑[floor(a(n-5))]` with `a(0)=2, a(1)=7, a(2)=4, a(3)=4, a(4)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A234902

/-- `∑[floor(a(n-5))]` -/
def P13512425376406213525.Spec : Prop :=
  ∀ n, (P13512425376406213525.a n : ℤ) = A234902 (n + 1)

theorem P13512425376406213525.correct : P13512425376406213525.Spec := by
  intro n
  simp only [A234902, Nat.add_sub_cancel]

end A234902

/-! ## A234902.P3584831467345494987

`∑[ceil(a(n-5))]` with `a(0)=2, a(1)=7, a(2)=4, a(3)=4, a(4)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A234902.P3584831467345494987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7, 4, 4, 7] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234902.P3584831467345494987

namespace A234902

/-- `∑[ceil(a(n-5))]` -/
def P3584831467345494987.Spec : Prop :=
  ∀ n, (P3584831467345494987.a n : ℤ) = A234902 (n + 1)

theorem P3584831467345494987.correct : P3584831467345494987.Spec := by
  intro n
  simp only [A234902, Nat.add_sub_cancel, A234902.P3584831467345494987.f1, A234902.P3584831467345494987.a, A234902.P13512425376406213525.f1, A234902.P13512425376406213525.a, SequenceMachineLib.memo_apply]

end A234902

/-! ## A234902.P8347061492620751096

`∑[a(n-5)%8]` with `a(0)=2, a(1)=7, a(2)=4, a(3)=4, a(4)=7`
-/

namespace A234902.P8347061492620751096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7, 4, 4, 7] fun n f1 =>
  f1 (n - 5) % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234902.P8347061492620751096

namespace A234902

/-- `∑[a(n-5)%8]` -/
def P8347061492620751096.Spec : Prop :=
  ∀ n, (P8347061492620751096.a n : ℤ) = A234902 (n + 1)

end A234902

/-! ## A234902.P12824205491146158089

`∑[A059717(a(n-5))]` with `a(0)=2, a(1)=7, a(2)=4, a(3)=4, a(4)=7`
-/

namespace A234902.P12824205491146158089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 7, 4, 4, 7] fun n f1 =>
  A059717 (f1 (n - 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234902.P12824205491146158089

namespace A234902

/-- `∑[A059717(a(n-5))]` -/
def P12824205491146158089.Spec : Prop :=
  ∀ n, P12824205491146158089.a n = A234902 (n + 1)

end A234902

/-! ## A234902.P16841032999455058666

`∑[A180130(Δ[A250120(n+2)])]`
-/

namespace A234902.P16841032999455058666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180130 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234902.P16841032999455058666

namespace A234902

/-- `∑[A180130(Δ[A250120(n+2)])]` -/
def P16841032999455058666.Spec : Prop :=
  ∀ n, P16841032999455058666.a n = A234902 (n + 1)

end A234902

/-! ## A234902.P8641614477040361700

`A047486(n+1)+A047466(A047488(n+3))`
-/

namespace A234902.P8641614477040361700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + A047466 (A047488 (n + 3)).toNat

end

end A234902.P8641614477040361700

namespace A234902

/-- `A047486(n+1)+A047466(A047488(n+3))` -/
def P8641614477040361700.Spec : Prop :=
  ∀ n, P8641614477040361700.a n = A234902 (n + 1)

end A234902

/-! ## A234902.P10580299735765588134

`A042965(A265227(2*(n+1))+1)+1`
-/

namespace A234902.P10580299735765588134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A265227 (2 * (n + 1)) + 1).toNat + 1

end

end A234902.P10580299735765588134

namespace A234902

/-- `A042965(A265227(2*(n+1))+1)+1` -/
def P10580299735765588134.Spec : Prop :=
  ∀ n, P10580299735765588134.a n = A234902 (n + 1)

end A234902

/-! ## A234902.P12910988203626292233

`A058207(2*n)+A312475(2*n+1)/2`
-/

namespace A234902.P12910988203626292233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058207 (2 * n) : ℚ) + (A312475 (2 * n + 1) : ℚ) / 2

end

end A234902.P12910988203626292233

namespace A234902

/-- `A058207(2*n)+A312475(2*n+1)/2` -/
def P12910988203626292233.Spec : Prop :=
  ∀ n, P12910988203626292233.a n = (A234902 (n + 1) : ℚ)

end A234902

/-! ## A234902.P14578471031333225901

`Δ[A032766(A033437(2*n))]+1`
-/

namespace A234902.P14578471031333225901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A033437 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A234902.P14578471031333225901

namespace A234902

/-- `Δ[A032766(A033437(2*n))]+1` -/
def P14578471031333225901.Spec : Prop :=
  ∀ n, P14578471031333225901.a n = A234902 (n + 1)

end A234902

/-!
# A234903: a(n)*Pi is the total length of irregular spiral (center points: 1, 3, 2) after n rotations.

The programs for A234903, the canonical program `A234903.P10261037135916965102` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234903 has offset 1).

The definition of A234903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234903.P10261037135916965102

`∑[floor(a(n-5))]` with `a(0)=4, a(1)=7, a(2)=2, a(3)=7, a(4)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A234903

/-- `∑[floor(a(n-5))]` -/
def P10261037135916965102.Spec : Prop :=
  ∀ n, (P10261037135916965102.a n : ℤ) = A234903 (n + 1)

theorem P10261037135916965102.correct : P10261037135916965102.Spec := by
  intro n
  simp only [A234903, Nat.add_sub_cancel]

end A234903

/-! ## A234903.P11195629998735481257

`∑[ceil(a(n-5))]` with `a(0)=4, a(1)=7, a(2)=2, a(3)=7, a(4)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A234903.P11195629998735481257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 7, 2, 7, 4] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234903.P11195629998735481257

namespace A234903

/-- `∑[ceil(a(n-5))]` -/
def P11195629998735481257.Spec : Prop :=
  ∀ n, (P11195629998735481257.a n : ℤ) = A234903 (n + 1)

theorem P11195629998735481257.correct : P11195629998735481257.Spec := by
  intro n
  simp only [A234903, Nat.add_sub_cancel, A234903.P11195629998735481257.f1, A234903.P11195629998735481257.a, A234903.P10261037135916965102.f1, A234903.P10261037135916965102.a, SequenceMachineLib.memo_apply]

end A234903

/-! ## A234903.P11253925826970263498

`∑[round(a(n-5))]` with `a(0)=4, a(1)=7, a(2)=2, a(3)=7, a(4)=4`

`round` is left out, it is the identity on integers.
-/

namespace A234903.P11253925826970263498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 7, 2, 7, 4] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234903.P11253925826970263498

namespace A234903

/-- `∑[round(a(n-5))]` -/
def P11253925826970263498.Spec : Prop :=
  ∀ n, (P11253925826970263498.a n : ℤ) = A234903 (n + 1)

theorem P11253925826970263498.correct : P11253925826970263498.Spec := by
  intro n
  simp only [A234903, Nat.add_sub_cancel, A234903.P11253925826970263498.f1, A234903.P11253925826970263498.a, A234903.P10261037135916965102.f1, A234903.P10261037135916965102.a, SequenceMachineLib.memo_apply]

end A234903

/-! ## A234903.P1926512378513530991

`∑[a(n-5)%8]` with `a(0)=4, a(1)=7, a(2)=2, a(3)=7, a(4)=4`
-/

namespace A234903.P1926512378513530991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 7, 2, 7, 4] fun n f1 =>
  f1 (n - 5) % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234903.P1926512378513530991

namespace A234903

/-- `∑[a(n-5)%8]` -/
def P1926512378513530991.Spec : Prop :=
  ∀ n, (P1926512378513530991.a n : ℤ) = A234903 (n + 1)

end A234903

/-! ## A234903.P1952181774314388300

`A359376(n+1)+A359376(n+3)`
-/

namespace A234903.P1952181774314388300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359376 (n + 1) + A359376 (n + 3)

end

end A234903.P1952181774314388300

namespace A234903

/-- `A359376(n+1)+A359376(n+3)` -/
def P1952181774314388300.Spec : Prop :=
  ∀ n, P1952181774314388300.a n = A234903 (n + 1)

end A234903

/-! ## A234903.P17894318222957020409

`A234902(n+4)-13`
-/

namespace A234903.P17894318222957020409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234902 (n + 4) - 13

end

end A234903.P17894318222957020409

namespace A234903

/-- `A234902(n+4)-13` -/
def P17894318222957020409.Spec : Prop :=
  ∀ n, P17894318222957020409.a n = A234903 (n + 1)

end A234903

/-! ## A234903.P5923632184505864204

`A064429(A313568(n+1))`
-/

namespace A234903.P5923632184505864204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A313568 (n + 1)).toNat

end

end A234903.P5923632184505864204

namespace A234903

/-- `A064429(A313568(n+1))` -/
def P5923632184505864204.Spec : Prop :=
  ∀ n, P5923632184505864204.a n = A234903 (n + 1)

end A234903

/-! ## A234903.P7752127384889945238

`A159966(A313232(n+1))`
-/

namespace A234903.P7752127384889945238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A313232 (n + 1)).toNat

end

end A234903.P7752127384889945238

namespace A234903

/-- `A159966(A313232(n+1))` -/
def P7752127384889945238.Spec : Prop :=
  ∀ n, P7752127384889945238.a n = A234903 (n + 1)

end A234903

/-! ## A234903.P1204206189617314570

`Δ[A359376(n²+1+n)]`
-/

namespace A234903.P1204206189617314570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359376 (n ^ 2 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A234903.P1204206189617314570

namespace A234903

/-- `Δ[A359376(n²+1+n)]` -/
def P1204206189617314570.Spec : Prop :=
  ∀ n, P1204206189617314570.a n = A234903 (n + 1)

end A234903

/-! ## A234903.P8875047930104362700

`Δ[A032766(A033437(Δ[n²]))]`
-/

namespace A234903.P8875047930104362700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A033437 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A234903.P8875047930104362700

namespace A234903

/-- `Δ[A032766(A033437(Δ[n²]))]` -/
def P8875047930104362700.Spec : Prop :=
  ∀ n, P8875047930104362700.a n = A234903 (n + 1)

end A234903

/-!
# A234904: a(n)*Pi is the total length of irregular spiral (center points: 2, 1, 3) after n rotations.

The programs for A234904, the canonical program `A234904.P5560855042467268817` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234904 has offset 1).

The definition of A234904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234904.P5560855042467268817

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=12, a(2)=18, a(3)=21`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A234904

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P5560855042467268817.Spec : Prop :=
  ∀ n, P5560855042467268817.a n = A234904 (n + 1)

theorem P5560855042467268817.correct : P5560855042467268817.Spec := by
  intro n
  simp only [A234904, Nat.add_sub_cancel]

end A234904

/-! ## A234904.P7830664310057823437

`6*(n+1)-3*floor((n+3)/3)+3*floor((n+2)/3)`
-/

namespace A234904.P7830664310057823437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - 3 * ⌊(n + 3 : ℚ) / 3⌋ + 3 * ⌊(n + 2 : ℚ) / 3⌋

end

end A234904.P7830664310057823437

namespace A234904

/-- `6*(n+1)-3*floor((n+3)/3)+3*floor((n+2)/3)` -/
def P7830664310057823437.Spec : Prop :=
  ∀ n, P7830664310057823437.a n = A234904 (n + 1)

end A234904

/-! ## A234904.P5870339548193194533

`3*A047234(n+2)`
-/

namespace A234904.P5870339548193194533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047234 (n + 2)

end

end A234904.P5870339548193194533

namespace A234904

/-- `3*A047234(n+2)` -/
def P5870339548193194533.Spec : Prop :=
  ∀ n, P5870339548193194533.a n = A234904 (n + 1)

end A234904

/-! ## A234904.P12151853576291377272

`∑[dr(6*(n+2))]`
-/

namespace A234904.P12151853576291377272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (6 * (n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234904.P12151853576291377272

namespace A234904

/-- `∑[dr(6*(n+2))]` -/
def P12151853576291377272.Spec : Prop :=
  ∀ n, (P12151853576291377272.a n : ℤ) = A234904 (n + 1)

end A234904

/-! ## A234904.P5817538779183823866

`∑[(6*n)%9+3]`
-/

namespace A234904.P5817538779183823866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n % 9 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234904.P5817538779183823866

namespace A234904

/-- `∑[(6*n)%9+3]` -/
def P5817538779183823866.Spec : Prop :=
  ∀ n, (P5817538779183823866.a n : ℤ) = A234904 (n + 1)

end A234904

/-! ## A234904.P10536963642756339400

`∑[abs(a(n-3))]` with `a(0)=3, a(1)=9, a(2)=6`
-/

namespace A234904.P10536963642756339400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 9, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234904.P10536963642756339400

namespace A234904

/-- `∑[abs(a(n-3))]` -/
def P10536963642756339400.Spec : Prop :=
  ∀ n, (P10536963642756339400.a n : ℤ) = A234904 (n + 1)

end A234904

/-! ## A234904.P7841993095516385450

`∑[floor(a(n-3))]` with `a(0)=3, a(1)=9, a(2)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A234904.P7841993095516385450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 9, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234904.P7841993095516385450

namespace A234904

/-- `∑[floor(a(n-3))]` -/
def P7841993095516385450.Spec : Prop :=
  ∀ n, (P7841993095516385450.a n : ℤ) = A234904 (n + 1)

end A234904

/-! ## A234904.P13377747462997284999

`∑[ceil(a(n-3))]` with `a(0)=3, a(1)=9, a(2)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A234904.P13377747462997284999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 9, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234904.P13377747462997284999

namespace A234904

/-- `∑[ceil(a(n-3))]` -/
def P13377747462997284999.Spec : Prop :=
  ∀ n, (P13377747462997284999.a n : ℤ) = A234904 (n + 1)

end A234904

/-! ## A234904.P14747223433220457040

`∑[round(a(n-3))]` with `a(0)=3, a(1)=9, a(2)=6`

`round` is left out, it is the identity on integers.
-/

namespace A234904.P14747223433220457040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 9, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234904.P14747223433220457040

namespace A234904

/-- `∑[round(a(n-3))]` -/
def P14747223433220457040.Spec : Prop :=
  ∀ n, (P14747223433220457040.a n : ℤ) = A234904 (n + 1)

end A234904

/-! ## A234904.P8582879118039779111

`∑[a(n-3)%10]` with `a(0)=3, a(1)=9, a(2)=6`
-/

namespace A234904.P8582879118039779111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 9, 6] fun n f1 =>
  f1 (n - 3) % 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234904.P8582879118039779111

namespace A234904

/-- `∑[a(n-3)%10]` -/
def P8582879118039779111.Spec : Prop :=
  ∀ n, (P8582879118039779111.a n : ℤ) = A234904 (n + 1)

end A234904

/-! ## A234904.P16307402843097730267

`∑[7-4/(a(n-1)-5)]` with `a(0)=3`
-/

namespace A234904.P16307402843097730267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  7 - 4 / (f1 (n - 1) - 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234904.P16307402843097730267

namespace A234904

/-- `∑[7-4/(a(n-1)-5)]` -/
def P16307402843097730267.Spec : Prop :=
  ∀ n, P16307402843097730267.a n = (A234904 (n + 1) : ℚ)

end A234904

/-! ## A234904.P17871056846673739651

`∑[A070403(n)+2]`
-/

namespace A234904.P17871056846673739651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070403 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234904.P17871056846673739651

namespace A234904

/-- `∑[A070403(n)+2]` -/
def P17871056846673739651.Spec : Prop :=
  ∀ n, P17871056846673739651.a n = A234904 (n + 1)

end A234904

/-! ## A234904.P6386044710719006506

`∑[3*A130784(n)]`
-/

namespace A234904.P6386044710719006506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A130784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234904.P6386044710719006506

namespace A234904

/-- `∑[3*A130784(n)]` -/
def P6386044710719006506.Spec : Prop :=
  ∀ n, P6386044710719006506.a n = A234904 (n + 1)

end A234904

/-! ## A234904.P1532063655443265655

`∑[3*(2-A008683(a(n-1)))]` with `a(0)=3`
-/

namespace A234904.P1532063655443265655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  3 * (2 - A008683 (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234904.P1532063655443265655

namespace A234904

/-- `∑[3*(2-A008683(a(n-1)))]` -/
def P1532063655443265655.Spec : Prop :=
  ∀ n, P1532063655443265655.a n = A234904 (n + 1)

end A234904

/-! ## A234904.P13534974534111301264

`Δ[3*A240438(n+1)]`
-/

namespace A234904.P13534974534111301264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A240438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A234904.P13534974534111301264

namespace A234904

/-- `Δ[3*A240438(n+1)]` -/
def P13534974534111301264.Spec : Prop :=
  ∀ n, P13534974534111301264.a n = A234904 (n + 1)

end A234904

/-!
# A234905: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234905, there is no canonical definition to state claims against.
-/

/-! ## A234905.P18058565395986498668

`A234911(∑[n]+1)`
-/

namespace A234905.P18058565395986498668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234905.P18058565395986498668

/-! ## A234905.P28127856503404494

`lcm(2, A234911(A000124(n)))`
-/

namespace A234905.P28127856503404494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234911 (A000124 n).toNat)

end

end A234905.P28127856503404494

/-! ## A234905.P12969622212419295212

`record[A234911(A056534(n+1))]`
-/

namespace A234905.P12969622212419295212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234905.P12969622212419295212

/-! ## A234905.P17895075081507705482

`record[A234911(A246276(n+1))]`
-/

namespace A234905.P17895075081507705482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234905.P17895075081507705482

/-! ## A234905.P15125912569735054056

`record[A010054(n)*A234911(n+1)]`
-/

namespace A234905.P15125912569735054056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234905.P15125912569735054056

/-!
# A234906: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234906, there is no canonical definition to state claims against.
-/

/-! ## A234906.P11282284147484515467

`A234911(∑[n+1]+2)`
-/

namespace A234906.P11282284147484515467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234906.P11282284147484515467

/-! ## A234906.P2537160917251314414

`record[A234911(A091018(n)+2)]`
-/

namespace A234906.P2537160917251314414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (A091018 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234906.P2537160917251314414

/-! ## A234906.P14735043950076272320

`record[A010054(n)*A234911(n+2)]`
-/

namespace A234906.P14735043950076272320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234911 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234906.P14735043950076272320

/-! ## A234906.P4316756710040555586

`record[gcd(A002262(n), A234911(n+2))]`
-/

namespace A234906.P4316756710040555586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234911 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234906.P4316756710040555586

/-! ## A234906.P13685639497092194991

`record[root(A234911(n+2), A002260(n+1))]`
-/

namespace A234906.P13685639497092194991
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234911 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234906.P13685639497092194991

/-!
# A234907: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234907, there is no canonical definition to state claims against.
-/

/-! ## A234907.P13365568656232474844

`A234911(∑[n+2]+4)`
-/

namespace A234907.P13365568656232474844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234907.P13365568656232474844

/-! ## A234907.P10026516154941642488

`lcm(2, A234911(A167614(n+1)))`
-/

namespace A234907.P10026516154941642488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234911 (A167614 (n + 1)).toNat)

end

end A234907.P10026516154941642488

/-! ## A234907.P16969461645045970700

`record[root(A234911(n+4), A287376(n+1))]`
-/

namespace A234907.P16969461645045970700
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234911 (n + 4) : ℝ) ^ (1 / (A287376 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234907.P16969461645045970700

/-! ## A234907.P3409880566899889172

`A234911(A167614(n+1))+A025442(n)`
-/

namespace A234907.P3409880566899889172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (A167614 (n + 1)).toNat + A025442 n

end

end A234907.P3409880566899889172

/-! ## A234907.P9142723660316626877

`A234911(A167614(n+1))+A025444(n)`
-/

namespace A234907.P9142723660316626877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (A167614 (n + 1)).toNat + A025444 n

end

end A234907.P9142723660316626877

/-!
# A234908: Number of (n+1) X (4+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234908, there is no canonical definition to state claims against.
-/

/-! ## A234908.P730496005435852861

`A234911(∑[n+3]+7)`
-/

namespace A234908.P730496005435852861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234908.P730496005435852861

/-! ## A234908.P12085136595032961390

`lcm(2, A234911(A141214(n+1)))`
-/

namespace A234908.P12085136595032961390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234911 (A141214 (n + 1)).toNat)

end

end A234908.P12085136595032961390

/-! ## A234908.P413121943338408525

`A234911(A141214(n+1))+A010894(n+1)`
-/

namespace A234908.P413121943338408525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (A141214 (n + 1)).toNat + A010894 (n + 1 + 21)

end

end A234908.P413121943338408525

/-! ## A234908.P12595519840751370612

`A234911(A141214(n+1))+A134667(2*n)`
-/

namespace A234908.P12595519840751370612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (A141214 (n + 1)).toNat + A134667 (2 * n)

end

end A234908.P12595519840751370612

/-! ## A234908.P2362052294641465631

`A000034(2*n)*A234911(A141214(n+1))`
-/

namespace A234908.P2362052294641465631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A234911 (A141214 (n + 1)).toNat

end

end A234908.P2362052294641465631

/-!
# A234909: Number of (n+1) X (5+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234909, there is no canonical definition to state claims against.
-/

/-! ## A234909.P6987389661663133703

`A234911(A374005(n+1))`
-/

namespace A234909.P6987389661663133703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (A374005 (n + 1)).toNat

end

end A234909.P6987389661663133703

/-! ## A234909.P15300112268595708981

`A234911(A167499(n+3))`
-/

namespace A234909.P15300112268595708981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (A167499 (n + 3)).toNat

end

end A234909.P15300112268595708981

/-! ## A234909.P7125784653136640075

`A234911(A155212(n)+13)`
-/

namespace A234909.P7125784653136640075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (A155212 n + 13).toNat

end

end A234909.P7125784653136640075

/-! ## A234909.P13309219291536789090

`A234911(A056000(n)+15)`
-/

namespace A234909.P13309219291536789090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (A056000 n + 15).toNat

end

end A234909.P13309219291536789090

/-! ## A234909.P6741712461957088769

`A234911(eq[7, A066657(n)])`
-/

namespace A234909.P6741712461957088769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234909.P6741712461957088769

/-!
# A234910: Number of (n+1) X (6+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234910, there is no canonical definition to state claims against.
-/

/-! ## A234910.P6663052774269810050

`A234911(A374007(n+1))`
-/

namespace A234910.P6663052774269810050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (A374007 (n + 1)).toNat

end

end A234910.P6663052774269810050

/-! ## A234910.P9097320076974849805

`A234911(A056115(n)+21)`
-/

namespace A234910.P9097320076974849805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (A056115 n + 21).toNat

end

end A234910.P9097320076974849805

/-! ## A234910.P16672838591845890300

`A234911(A167499(n+4)+1)`
-/

namespace A234910.P16672838591845890300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (A167499 (n + 4) + 1).toNat

end

end A234910.P16672838591845890300

/-! ## A234910.P16587674756967881654

`A234911(A167614(n+4)+3)`
-/

namespace A234910.P16587674756967881654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234911 (A167614 (n + 4) + 3).toNat

end

end A234910.P16587674756967881654

/-!
# A234913: Number of (n+1) X (n+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234913, there is no canonical definition to state claims against.
-/

/-! ## A234913.P6925732468068604036

`A234921(∑[4*n]+1)`
-/

namespace A234913.P6925732468068604036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234913.P6925732468068604036

/-! ## A234913.P12529575842071314313

`record[root(A234921(n+1), abs(round(sqrt(2*(n+1)))²-(2*n+1))+1)]`
-/

namespace A234913.P12529575842071314313
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234921 (n + 1) : ℝ) ^ (1 / (|SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| + 1 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234913.P12529575842071314313

/-! ## A234913.P4468703813174197216

`lcm(2, A234921(A001844(n)))`
-/

namespace A234913.P4468703813174197216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234921 (A001844 n).toNat)

end

end A234913.P4468703813174197216

/-! ## A234913.P17095406438083093882

`record[A234921(A330613(n+1))]`
-/

namespace A234913.P17095406438083093882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234913.P17095406438083093882

/-! ## A234913.P465115616837538123

`record[gcd(A003987(n), A234921(n+1))]`
-/

namespace A234913.P465115616837538123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A234921 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234913.P465115616837538123

/-!
# A234914: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234914, the canonical program `A234914.P9419333935807630534` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234914 has offset 1).

The definition of A234914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234914.P2521721263275531961

`8*A287275(n+3)`
-/

namespace A234914.P2521721263275531961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A287275 (n + 3)

end

end A234914.P2521721263275531961

namespace A234914

/-- `8*A287275(n+3)` -/
def P2521721263275531961.Spec : Prop :=
  ∀ n, P2521721263275531961.a n = A234914 (n + 1)

end A234914

/-! ## A234914.P9419333935807630534

`4*(A061534(n+2)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A234914

/-- `4*(A061534(n+2)+1)` -/
def P9419333935807630534.Spec : Prop :=
  ∀ n, P9419333935807630534.a n = A234914 (n + 1)

theorem P9419333935807630534.correct : P9419333935807630534.Spec := by
  intro n
  simp only [A234914, Nat.add_sub_cancel]

end A234914

/-! ## A234914.P8342712613988464320

`A234921(∑[n]+1)`
-/

namespace A234914.P8342712613988464320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234914.P8342712613988464320

namespace A234914

/-- `A234921(∑[n]+1)` -/
def P8342712613988464320.Spec : Prop :=
  ∀ n, P8342712613988464320.a n = A234914 (n + 1)

end A234914

/-! ## A234914.P3236172510257482923

`lcm(2, A234921(A000124(n)))`
-/

namespace A234914.P3236172510257482923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234921 (A000124 n).toNat)

end

end A234914.P3236172510257482923

namespace A234914

/-- `lcm(2, A234921(A000124(n)))` -/
def P3236172510257482923.Spec : Prop :=
  ∀ n, (P3236172510257482923.a n : ℤ) = A234914 (n + 1)

end A234914

/-! ## A234914.P16298127741301505661

`record[A010054(n)*A234921(n+1)]`
-/

namespace A234914.P16298127741301505661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234914.P16298127741301505661

namespace A234914

/-- `record[A010054(n)*A234921(n+1)]` -/
def P16298127741301505661.Spec : Prop :=
  ∀ n, P16298127741301505661.a n = A234914 (n + 1)

end A234914

/-!
# A234915: Number of (n+1) X (2+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234915, there is no canonical definition to state claims against.
-/

/-! ## A234915.P9786256227187036043

`A234921(∑[n+1]+2)`
-/

namespace A234915.P9786256227187036043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234915.P9786256227187036043

/-! ## A234915.P8864691456515552226

`lcm(2, A234921(A133263(n+1)))`
-/

namespace A234915.P8864691456515552226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234921 (A133263 (n + 1)).toNat)

end

end A234915.P8864691456515552226

/-! ## A234915.P10509258054394229474

`record[gcd(A002262(n), A234921(n+2))]`
-/

namespace A234915.P10509258054394229474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234921 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234915.P10509258054394229474

/-! ## A234915.P2144631474459920589

`A234921(A133263(n+1))+A122180(n+1)`
-/

namespace A234915.P2144631474459920589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (A133263 (n + 1)).toNat + A122180 (n + 1)

end

end A234915.P2144631474459920589

/-! ## A234915.P5593328387894713614

`record[A132382(n+2)*A234921(n+2)]`
-/

namespace A234915.P5593328387894713614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132382 (n + 2) * A234921 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234915.P5593328387894713614

/-!
# A234916: Number of (n+1) X (3+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234916, there is no canonical definition to state claims against.
-/

/-! ## A234916.P11544851928551024849

`A234921(∑[n+2]+4)`
-/

namespace A234916.P11544851928551024849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234916.P11544851928551024849

/-! ## A234916.P3121946710310221391

`lcm(2, A234921(A167614(n+1)))`
-/

namespace A234916.P3121946710310221391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234921 (A167614 (n + 1)).toNat)

end

end A234916.P3121946710310221391

/-! ## A234916.P15851820457648792021

`A236417(n+1)+A234921(A167614(n+1))`
-/

namespace A234916.P15851820457648792021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236417 (n + 1) + A234921 (A167614 (n + 1)).toNat

end

end A234916.P15851820457648792021

/-! ## A234916.P5695954623341738154

`A032545(n+1)*A234921(A167614(n+1))`
-/

namespace A234916.P5695954623341738154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032545 (n + 1) * A234921 (A167614 (n + 1)).toNat

end

end A234916.P5695954623341738154

/-! ## A234916.P18367490114078213770

`A234921(A167614(n+1))/A032545(n+3)`
-/

namespace A234916.P18367490114078213770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234921 (A167614 (n + 1)).toNat : ℚ) / (A032545 (n + 3) : ℚ)

end

end A234916.P18367490114078213770

/-!
# A234917: Number of (n+1) X (4+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234917, there is no canonical definition to state claims against.
-/

/-! ## A234917.P16484452942232865111

`A234921(∑[n+3]+7)`
-/

namespace A234917.P16484452942232865111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234917.P16484452942232865111

/-! ## A234917.P7145003514226248531

`lcm(2, A234921(A167614(n+1)+A005408(n)))`
-/

namespace A234917.P7145003514226248531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234921 (A167614 (n + 1) + A005408 n).toNat)

end

end A234917.P7145003514226248531

/-! ## A234917.P11387270005608363802

`A234921(A167614(n+1)+A005408(n))%A234918(n+1)`
-/

namespace A234917.P11387270005608363802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234921 (A167614 (n + 1) + A005408 n).toNat) (A234918 (n + 1))

end

end A234917.P11387270005608363802

/-!
# A234918: Number of (n+1) X (5+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234918, there is no canonical definition to state claims against.
-/

/-! ## A234918.P3509641326930324332

`A234921(∑[n+4]+11)`
-/

namespace A234918.P3509641326930324332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A234918.P3509641326930324332

/-! ## A234918.P7040070659093633209

`lcm(2, A234921(A155212(n)+13))`
-/

namespace A234918.P7040070659093633209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234921 (A155212 n + 13).toNat)

end

end A234918.P7040070659093633209

/-! ## A234918.P415927529666974082

`A000041(C(2, n+2))*A234921(A155212(n)+13)`
-/

namespace A234918.P415927529666974082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A234921 (A155212 n + 13).toNat

end

end A234918.P415927529666974082

/-! ## A234918.P5919715548574269382

`A007318(A007318(2*n))*A234921(A155212(n)+13)`
-/

namespace A234918.P5919715548574269382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (2 * n)).toNat * A234921 (A155212 n + 13).toNat

end

end A234918.P5919715548574269382

/-! ## A234918.P18179730717871426580

`A234921(A155212(n)+13)^A007318(A001222(n+1))`
-/

namespace A234918.P18179730717871426580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234921 (A155212 n + 13).toNat : ℚ) ^ (A007318 (A001222 (n + 1)).toNat : ℤ)

end

end A234918.P18179730717871426580

/-!
# A234919: Number of (n+1) X (6+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234919, there is no canonical definition to state claims against.
-/

/-! ## A234919.P17379409660248983509

`A234921(A374007(n+1))`
-/

namespace A234919.P17379409660248983509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (A374007 (n + 1)).toNat

end

end A234919.P17379409660248983509

/-! ## A234919.P1650670143467492912

`A234921(A056115(n)+21)`
-/

namespace A234919.P1650670143467492912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (A056115 n + 21).toNat

end

end A234919.P1650670143467492912

/-! ## A234919.P12794433328473980970

`A234921(A167499(n+4)+1)`
-/

namespace A234919.P12794433328473980970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (A167499 (n + 4) + 1).toNat

end

end A234919.P12794433328473980970

/-! ## A234919.P2434776997215161636

`A234921(A000217(n+5)+6)`
-/

namespace A234919.P2434776997215161636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (A000217 (n + 5) + 6).toNat

end

end A234919.P2434776997215161636

/-! ## A234919.P979305004270811190

`A234921(A052905(n+2)+11)`
-/

namespace A234919.P979305004270811190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (A052905 (n + 2) + 11).toNat

end

end A234919.P979305004270811190

/-!
# A234920: Number of (n+1) X (7+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234920, there is no canonical definition to state claims against.
-/

/-! ## A234920.P7586484070380523210

`A234921(A374008(n+1))`
-/

namespace A234920.P7586484070380523210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (A374008 (n + 1)).toNat

end

end A234920.P7586484070380523210

/-! ## A234920.P8866410027750309890

`A234921(eq[11, A066657(n)])`
-/

namespace A234920.P8866410027750309890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234920.P8866410027750309890

/-! ## A234920.P12439043547705413129

`A234921(A167614(n+5)+4)`
-/

namespace A234920.P12439043547705413129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (A167614 (n + 5) + 4).toNat

end

end A234920.P12439043547705413129

/-! ## A234920.P2267361450670324332

`A234921(eq[6, A002262(n)]+1)`
-/

namespace A234920.P2267361450670324332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A234920.P2267361450670324332

/-! ## A234920.P3229567499934015603

`A234921(eq[8, A131818(n+1)])`
-/

namespace A234920.P3229567499934015603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234920.P3229567499934015603

/-!
# A234921: T(n,k) is the number of (n+1) X (k+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234921, there is no canonical definition to state claims against.
-/

/-! ## A234921.P4726520209947776167

`A187211(12*A208872(n+1))`
-/

namespace A234921.P4726520209947776167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187211 (12 * A208872 (n + 1)).toNat

end

end A234921.P4726520209947776167

/-! ## A234921.P4668552560342232000

`A188156(lcm(2, A048744(n+1)))`
-/

namespace A234921.P4668552560342232000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188156 (Int.lcm 2 (A048744 (n + 1)))

end

end A234921.P4668552560342232000

/-!
# A234922: Array w(n,h), in which row n shows the weights (defined in Comments) of the partitions of n, arranged in reverse Mathematica order.

The programs for A234922, there is no canonical definition to state claims against.
-/

/-! ## A234922.P18114148231131867039

`A304818(A334434(n+1))`
-/

namespace A234922.P18114148231131867039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (A334434 (n + 1)).toNat

end

end A234922.P18114148231131867039

/-!
# A234923: Array w(n,h), in which row n shows the weights, as defined in Comments, of the distinct-parts partitions of n, arranged in Mathematica order.

The programs for A234923, there is no canonical definition to state claims against.
-/

/-! ## A234923.P6988505830708031840

`A359042(A333256(n+2))`
-/

namespace A234923.P6988505830708031840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359042 (A333256 (n + 2)).toNat

end

end A234923.P6988505830708031840

/-! ## A234923.P18265619314393927553

`A359042(eq[1, A124769(n)])`
-/

namespace A234923.P18265619314393927553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234923.P18265619314393927553

/-! ## A234923.P3091040837267859809

`or(A124762(A064038(n+1)), A146288(n+1))`
-/

namespace A234923.P3091040837267859809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124762 (A064038 (n + 1)).toNat) (A146288 (n + 1))

end

end A234923.P3091040837267859809

/-!
# A234926: Primes which become squares when the digits are rotated once to the left.

The programs for A234926, there is no canonical definition to state claims against.
-/

/-! ## A234926.P267748540844941693

`p?[A102837(n+1)]`
-/

namespace A234926.P267748540844941693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234926.P267748540844941693

/-! ## A234926.P4113528651711400112

`record[p?[A102837(A141256(n))]]`
-/

namespace A234926.P4113528651711400112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102837 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234926.P4113528651711400112

/-! ## A234926.P12586028322581183099

`record[p?[A102837(A242112(n))]]`
-/

namespace A234926.P12586028322581183099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102837 (A242112 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234926.P12586028322581183099

/-! ## A234926.P1764782126551949040

`record[p?[A102837(A291769(n))]]`
-/

namespace A234926.P1764782126551949040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102837 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234926.P1764782126551949040

/-! ## A234926.P10783942623824948597

`record[p?[A102837(A102885(n))]]`
-/

namespace A234926.P10783942623824948597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102837 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234926.P10783942623824948597

/-!
# A234931: Number of tilings of a 5 X n rectangle using n pentominoes of shapes F, U, N.

The programs for A234931, there is no canonical definition to state claims against.
-/

/-! ## A234931.P6267300091956778872

`and(A126869(n), A283314(A008619(n)))`
-/

namespace A234931.P6267300091956778872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126869 n) (A283314 (A008619 n).toNat)

end

end A234931.P6267300091956778872

/-! ## A234931.P5561414625530955275

`A285781(n)%A000010(A302340(n+3))`
-/

namespace A234931.P5561414625530955275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285781 n) (A000010 (A302340 (n + 3)).toNat)

end

end A234931.P5561414625530955275

/-! ## A234931.P6932799858880588512

`and(A004736(A177794(n+1)), A126869(n))`
-/

namespace A234931.P6932799858880588512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004736 (A177794 (n + 1)).toNat) (A126869 n)

end

end A234931.P6932799858880588512

/-! ## A234931.P912734660831665286

`lcm(A083891(n+4), A162401(A286645(n)))`
-/

namespace A234931.P912734660831665286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083891 (n + 4)) (A162401 (A286645 n).toNat)

end

end A234931.P912734660831665286

/-! ## A234931.P11168240237005556534

`C(A053150(A000079(n)), A000265(n+4))`
-/

namespace A234931.P11168240237005556534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053150 (A000079 n).toNat).toNat (A000265 (n + 4)).toNat

end

end A234931.P11168240237005556534

/-!
# A234933: The number of binary sequences that contain at least two consecutive 1's and contain at least two consecutive 0's.

The programs for A234933, the canonical program `A234933.P16982172301096733624` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234933 has offset 0).

The definition of A234933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234933.P16982172301096733624

`4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A234933

/-- `4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` -/
def P16982172301096733624.Spec : Prop :=
  ∀ n, P16982172301096733624.a n = A234933 n

theorem P16982172301096733624.correct : P16982172301096733624.Spec := by
  intro n
  simp only [A234933]

end A234933

/-! ## A234933.P14858854870252834633

`∑[A167821(abs(2-n)+1)]-2`
-/

namespace A234933.P14858854870252834633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167821 (|2 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A234933.P14858854870252834633

namespace A234933

/-- `∑[A167821(abs(2-n)+1)]-2` -/
def P14858854870252834633.Spec : Prop :=
  ∀ n, P14858854870252834633.a n = A234933 n

end A234933

/-! ## A234933.P16368787017259435171

`A132045(n)-A131269(n)`
-/

namespace A234933.P16368787017259435171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132045 n - A131269 n

end

end A234933.P16368787017259435171

namespace A234933

/-- `A132045(n)-A131269(n)` -/
def P16368787017259435171.Spec : Prop :=
  ∀ n, P16368787017259435171.a n = A234933 n

end A234933

/-! ## A234933.P1112854335740645610

`A052548(n)-A068922(n+1)`
-/

namespace A234933.P1112854335740645610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n - A068922 (n + 1)

end

end A234933.P1112854335740645610

namespace A234933

/-- `A052548(n)-A068922(n+1)` -/
def P1112854335740645610.Spec : Prop :=
  ∀ n, P1112854335740645610.a n = A234933 n

end A234933

/-! ## A234933.P15417877315089076100

`2*(A131577(n)-∑[A000045(n)])`
-/

namespace A234933.P15417877315089076100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131577 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234933.P15417877315089076100

namespace A234933

/-- `2*(A131577(n)-∑[A000045(n)])` -/
def P15417877315089076100.Spec : Prop :=
  ∀ n, P15417877315089076100.a n = A234933 n

end A234933

/-! ## A234933.P474660058874275348

`A155559(n)-∑[2*A000045(n)]`
-/

namespace A234933.P474660058874275348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234933.P474660058874275348

namespace A234933

/-- `A155559(n)-∑[2*A000045(n)]` -/
def P474660058874275348.Spec : Prop :=
  ∀ n, P474660058874275348.a n = A234933 n

end A234933

/-! ## A234933.P60914904044337526

`A155559(n)-2*A000071(n+2)`
-/

namespace A234933.P60914904044337526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n - 2 * A000071 (n + 2)

end

end A234933.P60914904044337526

namespace A234933

/-- `A155559(n)-2*A000071(n+2)` -/
def P60914904044337526.Spec : Prop :=
  ∀ n, P60914904044337526.a n = A234933 n

end A234933

/-! ## A234933.P7763164798146316573

`2*(A034008(n+1)-A000071(n+2))`
-/

namespace A234933.P7763164798146316573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034008 (n + 1) - A000071 (n + 2))

end

end A234933.P7763164798146316573

namespace A234933

/-- `2*(A034008(n+1)-A000071(n+2))` -/
def P7763164798146316573.Spec : Prop :=
  ∀ n, P7763164798146316573.a n = A234933 n

end A234933

/-! ## A234933.P1081416335894709615

`A131403(n)-A132736(n)`
-/

namespace A234933.P1081416335894709615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131403 n - A132736 n

end

end A234933.P1081416335894709615

namespace A234933

/-- `A131403(n)-A132736(n)` -/
def P1081416335894709615.Spec : Prop :=
  ∀ n, P1081416335894709615.a n = A234933 n

end A234933

/-! ## A234933.P10114487674809762623

`A377728(n)%A140253(n)`
-/

namespace A234933.P10114487674809762623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377728 n) (A140253 n)

end

end A234933.P10114487674809762623

namespace A234933

/-- `A377728(n)%A140253(n)` -/
def P10114487674809762623.Spec : Prop :=
  ∀ n, P10114487674809762623.a n = A234933 n

end A234933

/-! ## A234933.P16777272463104112974

`A074878(n+1)-A095121(n)`
-/

namespace A234933.P16777272463104112974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074878 (n + 1) - A095121 n

end

end A234933.P16777272463104112974

namespace A234933

/-- `A074878(n+1)-A095121(n)` -/
def P16777272463104112974.Spec : Prop :=
  ∀ n, P16777272463104112974.a n = A234933 n

end A234933

/-! ## A234933.P6375391383639120263

`A051633(n)%A101353(n)`
-/

namespace A234933.P6375391383639120263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051633 n) (A101353 n)

end

end A234933.P6375391383639120263

namespace A234933

/-- `A051633(n)%A101353(n)` -/
def P6375391383639120263.Spec : Prop :=
  ∀ n, P6375391383639120263.a n = A234933 n

end A234933

/-! ## A234933.P10021552087952573650

`A134062(n)%A101353(n)`
-/

namespace A234933.P10021552087952573650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134062 n) (A101353 n)

end

end A234933.P10021552087952573650

namespace A234933

/-- `A134062(n)%A101353(n)` -/
def P10021552087952573650.Spec : Prop :=
  ∀ n, P10021552087952573650.a n = A234933 n

end A234933

/-!
# A234937: Triangle read by rows of coefficients of polynomials generated by the Han/Nekrasov-Okounkov formula.

The programs for A234937, there is no canonical definition to state claims against.
-/

/-! ## A234937.P10162419009522762907

`A033999(A002262(n))*A210590(n)`
-/

namespace A234937.P10162419009522762907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A210590 n

end

end A234937.P10162419009522762907

/-! ## A234937.P17989650993936673346

`A097807(A061579(n))*A210590(n)`
-/

namespace A234937.P17989650993936673346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A210590 n

end

end A234937.P17989650993936673346

/-! ## A234937.P6996711361615793794

`A097807(A112367(n))*A210590(n)`
-/

namespace A234937.P6996711361615793794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A112367 n).toNat * A210590 n

end

end A234937.P6996711361615793794

/-! ## A234937.P17730358845752889814

`A033999(A294317(n))*A210590(n)`
-/

namespace A234937.P17730358845752889814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A294317 n).toNat * A210590 n

end

end A234937.P17730358845752889814

/-! ## A234937.P3699039688267199195

`A062157(A002260(n+1))*A210590(n)`
-/

namespace A234937.P3699039688267199195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A210590 n

end

end A234937.P3699039688267199195

/-! ## A234937.P9823720100211707586

`A210590(A233583(n+1))/A033999(A294317(n))`
-/

namespace A234937.P9823720100211707586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210590 (A233583 (n + 1)).toNat : ℚ) / (A033999 (A294317 n).toNat : ℚ)

end

end A234937.P9823720100211707586

/-! ## A234937.P16349684611721714401

`A165586(A059268(n))*A210590(n)`
-/

namespace A234937.P16349684611721714401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165586 (A059268 n).toNat * A210590 n

end

end A234937.P16349684611721714401

/-!
# A234938: Coefficients of Hilbert series for the suboperad of bicolored noncrossing configurations generated by a fully colored triangle and a fully uncolored triangle.

The programs for A234938, there is no canonical definition to state claims against.
-/

/-! ## A234938.P14060592240363098762

`A225087(A005183(n))+A004524(n)`
-/

namespace A234938.P14060592240363098762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225087 (A005183 n).toNat + A004524 n

end

end A234938.P14060592240363098762

/-! ## A234938.P12026351738427701667

`A004396(A017924(n)*A027826(n))`
-/

namespace A234938.P12026351738427701667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A017924 n * A027826 n).toNat

end

end A234938.P12026351738427701667

/-!
# A234939: Coefficients of Hilbert series for suboperad of bicolored noncrossing configurations generated by a triangle with colored base and at least one more colored edge and a triangle with one colored non-base edge.

The programs for A234939, there is no canonical definition to state claims against.
-/

/-! ## A234939.P10716539660555636500

`ceil(A054872(n+2)/3)`
-/

namespace A234939.P10716539660555636500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054872 (n + 2) : ℚ) / 3⌉

end

end A234939.P10716539660555636500

/-! ## A234939.P4473727447943788072

`ceil(cosh(sin(n)))*A007564(n)`
-/

namespace A234939.P4473727447943788072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A007564 n

end

end A234939.P4473727447943788072

/-! ## A234939.P1624153813551973695

`ceil(A121576(∑[n+1])/3)`
-/

namespace A234939.P1624153813551973695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121576 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3⌉

end

end A234939.P1624153813551973695

/-! ## A234939.P2733193811698067745

`A025231(n+1)-A007564(n)`
-/

namespace A234939.P2733193811698067745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025231 (n + 1) - A007564 n

end

end A234939.P2733193811698067745

/-! ## A234939.P9440477126187349431

`A155069(n+1)/A001003(n)*A007564(n)`
-/

namespace A234939.P9440477126187349431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155069 (n + 1) : ℚ) / (A001003 n : ℚ) * (A007564 n : ℚ)

end

end A234939.P9440477126187349431

/-!
# A234941: A001212(n-1)+2.

The programs for A234941, there is no canonical definition to state claims against.
-/

/-! ## A234941.P17956085480207933627

`A123509(n+1)+1`
-/

namespace A234941.P17956085480207933627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123509 (n + 1) + 1

end

end A234941.P17956085480207933627

/-! ## A234941.P15247386001167314527

`A014681(A123509(n+1))`
-/

namespace A234941.P15247386001167314527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A123509 (n + 1)).toNat

end

end A234941.P15247386001167314527

/-! ## A234941.P14087481751773029785

`∑{e}[A007283(n), A001212(#)]`
-/

namespace A234941.P14087481751773029785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001212 (Nat.factorization (f1 n).natAbs p)

end

end A234941.P14087481751773029785

/-! ## A234941.P11697275577655644221

`∑{e}[A020714(n), A001212(#)]`
-/

namespace A234941.P11697275577655644221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001212 (Nat.factorization (f1 n).natAbs p)

end

end A234941.P11697275577655644221

/-!
# A234945: Number of different optimal triangle difference sets M(n,3).

The programs for A234945, there is no canonical definition to state claims against.
-/

/-! ## A234945.P6406243449900963019

`A234944(∑[n+2]+4)`
-/

namespace A234945.P6406243449900963019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234944 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234945.P6406243449900963019

/-! ## A234945.P18148093283303154091

`record[A234944(∑[2-char[n²]])]`
-/

namespace A234945.P18148093283303154091
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234944 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234945.P18148093283303154091

/-! ## A234945.P8783697563951838775

`record[A234944(n+4)/A122432(n)]`
-/

namespace A234945.P8783697563951838775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234944 (n + 4) : ℚ) / (A122432 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234945.P8783697563951838775

/-!
# A234946: Number of different optimal triangle difference sets M(n,4).

The programs for A234946, there is no canonical definition to state claims against.
-/

/-! ## A234946.P2605474541869857510

`A234944(∑[n+3]+7)`
-/

namespace A234946.P2605474541869857510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234944 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234946.P2605474541869857510

/-!
# A234947: Number of different optimal triangle difference sets M(n,2).

The programs for A234947, there is no canonical definition to state claims against.
-/

/-! ## A234947.P14656503359237294399

`A002848(∑[C(2, and(3, n))+2])`
-/

namespace A234947.P14656503359237294399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 3 n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002848 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234947.P14656503359237294399

/-! ## A234947.P5382078523839172008

`A002848(∑[sin(n*asin(1))+3])`
-/

namespace A234947.P5382078523839172008
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((n : ℝ) * Real.arcsin (1 : ℝ)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002848 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A234947.P5382078523839172008

/-! ## A234947.P14619352229610841971

`A002848(∑[6-a(n-2)])` with `a(0)=3, a(1)=4`
-/

namespace A234947.P14619352229610841971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002848 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A234947.P14619352229610841971

/-! ## A234947.P4327087829546305662

`A002848(∑[∑[1-and(2, n)]+2])`
-/

namespace A234947.P4327087829546305662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002848 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A234947.P4327087829546305662

/-! ## A234947.P1574274612992913476

`A002848(∑[2-∑[and(2, n)-1]])`
-/

namespace A234947.P1574274612992913476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002848 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A234947.P1574274612992913476

/-!
# A234948: Minimal order of a *-free dissection of an equilateral triangle of side n into pieces whose sides do not have a common factor.

The programs for A234948, there is no canonical definition to state claims against.
-/

/-! ## A234948.P1028441741723972251

`A213711(or(A000328(n), A103609(n)))`
-/

namespace A234948.P1028441741723972251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213711 (Int.lor (A000328 n) (A103609 n)).toNat

end

end A234948.P1028441741723972251

/-! ## A234948.P11564303979551910090

`A213711(A052938(∑[A181123(n+1)]))`
-/

namespace A234948.P11564303979551910090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213711 (A052938 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A234948.P11564303979551910090

/-! ## A234948.P3243679018529086863

`A130253(A062550(∑[n]))`
-/

namespace A234948.P3243679018529086863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130253 (A062550 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A234948.P3243679018529086863

/-! ## A234948.P16996848686817867829

`A199769(A088003(n+1))`
-/

namespace A234948.P16996848686817867829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199769 (A088003 (n + 1)).toNat

end

end A234948.P16996848686817867829

/-! ## A234948.P11833518542443528495

`A199769(A177853(n+1))`
-/

namespace A234948.P11833518542443528495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199769 (A177853 (n + 1)).toNat

end

end A234948.P11833518542443528495

/-!
# A234949: Smallest k such that A234948(k) = n.

The programs for A234949, there is no canonical definition to state claims against.
-/

/-! ## A234949.P9049415728658516571

`∑[∑[A196563(A014210(n))]]`
-/

namespace A234949.P9049415728658516571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A014210 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234949.P9049415728658516571

/-! ## A234949.P7063956644536444759

`A367193(A164001(n+1))+1`
-/

namespace A234949.P7063956644536444759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367193 (A164001 (n + 1)).toNat + 1

end

end A234949.P7063956644536444759

/-! ## A234949.P2682715976502053397

`∑[A070939(∑[A202037(n+1)])]`
-/

namespace A234949.P2682715976502053397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202037 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234949.P2682715976502053397

/-! ## A234949.P16509602204045544758

`record[A000931(A299755(n+1))+1]`
-/

namespace A234949.P16509602204045544758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A299755 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234949.P16509602204045544758

/-! ## A234949.P3940510214445268625

`A130130(A052992(n))+A023434(n)`
-/

namespace A234949.P3940510214445268625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A052992 n).toNat + A023434 n

end

end A234949.P3940510214445268625

/-!
# A234950: Borel's triangle read by rows: T(n,k) = Sum_{s=k..n} binomial(s,k)*C(n,s), where C(n,s) is an entry in Catalan's triangle A009766.

The programs for A234950, the canonical program `A234950.P739346460351679352` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234950 has offset 0).

The definition of A234950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6836 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234950.P739346460351679352

`A088617(n)/A001263(n+1)*A120986(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A234950

/-- `A088617(n)/A001263(n+1)*A120986(n)` -/
def P739346460351679352.Spec : Prop :=
  ∀ n, P739346460351679352.a n = (A234950 n : ℚ)

end A234950

/-! ## A234950.P3447787146102119579

`abs(A062991(n))`
-/

namespace A234950.P3447787146102119579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062991 n|

end

end A234950.P3447787146102119579

namespace A234950

/-- `abs(A062991(n))` -/
def P3447787146102119579.Spec : Prop :=
  ∀ n, P3447787146102119579.a n = A234950 n

end A234950

/-! ## A234950.P6196712390363696976

`gcd(A000038(n), A062991(n))`
-/

namespace A234950.P6196712390363696976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A062991 n)

end

end A234950.P6196712390363696976

namespace A234950

/-- `gcd(A000038(n), A062991(n))` -/
def P6196712390363696976.Spec : Prop :=
  ∀ n, (P6196712390363696976.a n : ℤ) = A234950 n

end A234950

/-! ## A234950.P6618994391680361307

`lcm(A020985(n), A062991(n))`
-/

namespace A234950.P6618994391680361307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A062991 n)

end

end A234950.P6618994391680361307

namespace A234950

/-- `lcm(A020985(n), A062991(n))` -/
def P6618994391680361307.Spec : Prop :=
  ∀ n, (P6618994391680361307.a n : ℤ) = A234950 n

end A234950

/-! ## A234950.P13853462536343310508

`gcd(A062991(A028310(n)), A130706(n))`
-/

namespace A234950.P13853462536343310508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062991 (A028310 n).toNat) (A130706 n)

end

end A234950.P13853462536343310508

namespace A234950

/-- `gcd(A062991(A028310(n)), A130706(n))` -/
def P13853462536343310508.Spec : Prop :=
  ∀ n, (P13853462536343310508.a n : ℤ) = A234950 n

end A234950

/-!
# A234951: Array read by antidiagonals upwards: T(n,k) (n>=1, k>=1) is the solution to the (n,k) stick problem.

The programs for A234951, there is no canonical definition to state claims against.
-/

/-! ## A234951.P950876160069969276

`A098200(A049600(comp[∑[n]]))-2`
-/

namespace A234951.P950876160069969276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098200 (A049600 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat - 2

end

end A234951.P950876160069969276

/-! ## A234951.P8001552724922278793

`A374758(A013609(n))`
-/

namespace A234951.P8001552724922278793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 (A013609 n).toNat

end

end A234951.P8001552724922278793

/-! ## A234951.P10194085315136190508

`A110591(A013609(n)²)`
-/

namespace A234951.P10194085315136190508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A013609 n ^ 2).toNat

end

end A234951.P10194085315136190508

/-! ## A234951.P18111423477654096487

`A077429(5*A178301(n))`
-/

namespace A234951.P18111423477654096487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077429 (5 * A178301 n).toNat

end

end A234951.P18111423477654096487

/-! ## A234951.P12262576192416342419

`A004216(A155495(n))+A002260(n+1)`
-/

namespace A234951.P12262576192416342419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A155495 n).toNat + A002260 (n + 1)

end

end A234951.P12262576192416342419

/-!
# A234953: Normalized total height of all rooted trees on n labeled nodes.

The programs for A234953, there is no canonical definition to state claims against.
-/

/-! ## A234953.P6178150532678636825

`A001854(n+1)/(n+1)`
-/

namespace A234953.P6178150532678636825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001854 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A234953.P6178150532678636825

/-! ## A234953.P18191234032515570468

`A047486(A000079(n)*A005189(n))`
-/

namespace A234953.P18191234032515570468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A000079 n * A005189 n).toNat

end

end A234953.P18191234032515570468

/-!
# A234954: Number of totally symmetric 6-dimensional partitions of n.

The programs for A234954, there is no canonical definition to state claims against.
-/

/-! ## A234954.P17414554876821976825

`A279760(A047450(n+1))^A339005(n+1)`
-/

namespace A234954.P17414554876821976825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (A047450 (n + 1)).toNat : ℚ) ^ (A339005 (n + 1) : ℤ)

end

end A234954.P17414554876821976825

/-! ## A234954.P17949543710860576319

`A279760(A047450(n+1))^A381433(n+1)`
-/

namespace A234954.P17949543710860576319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (A047450 (n + 1)).toNat : ℚ) ^ (A381433 (n + 1) : ℤ)

end

end A234954.P17949543710860576319

/-! ## A234954.P6727319435300403363

`A279760(A047450(n+1))^A291788(n+4)`
-/

namespace A234954.P6727319435300403363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (A047450 (n + 1)).toNat : ℚ) ^ (A291788 (n + 4) : ℤ)

end

end A234954.P6727319435300403363

/-! ## A234954.P16015503879164597414

`A079978(A130782(floor(4*n/5))+A006578(2*(n+2)))`
-/

namespace A234954.P16015503879164597414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A130782 ⌊4 * ((n : ℚ) / 5)⌋.toNat + A006578 (2 * (n + 2))).toNat

end

end A234954.P16015503879164597414

/-! ## A234954.P16164333587555438239

`A279760(A047450(n+1))^A325265(A256450(n))`
-/

namespace A234954.P16164333587555438239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (A047450 (n + 1)).toNat : ℚ) ^ (A325265 (A256450 n).toNat : ℤ)

end

end A234954.P16164333587555438239

/-! ## A234954.P16147305975968782768

`A279760(A047450(n+1))^A171123(n+1)`
-/

namespace A234954.P16147305975968782768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (A047450 (n + 1)).toNat : ℚ) ^ (A171123 (n + 1) : ℤ)

end

end A234954.P16147305975968782768

/-! ## A234954.P9195166909168435302

`A279760(A047450(n+1))^A263008(n+1)`
-/

namespace A234954.P9195166909168435302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (A047450 (n + 1)).toNat : ℚ) ^ (A263008 (n + 1) : ℤ)

end

end A234954.P9195166909168435302

/-! ## A234954.P18032560134680086928

`A279760(A047450(n+1))%A333919(n+1)`
-/

namespace A234954.P18032560134680086928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279760 (A047450 (n + 1)).toNat) (A333919 (n + 1))

end

end A234954.P18032560134680086928

/-! ## A234954.P14806820008755021186

`A279760(A047450(n+1))^∑[A343648(n+1)]`
-/

namespace A234954.P14806820008755021186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343648 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (A047450 (n + 1)).toNat : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A234954.P14806820008755021186

/-!
# A234955: Trisection of A107926: The least number k such that there are primes p and q with p - q = 6*n+2, p + q = k, and p the least such prime >= k/2.

The programs for A234955, there is no canonical definition to state claims against.
-/

/-! ## A234955.P32239526881687316

`A107926(3*(n+1)-2)`
-/

namespace A234955.P32239526881687316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107926 (3 * (n + 1) - 2)

end

end A234955.P32239526881687316

/-! ## A234955.P12065922750562736547

`lcm(2, A107926(n+1+n+n))`
-/

namespace A234955.P12065922750562736547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A107926 (n + 1 + n + n))

end

end A234955.P12065922750562736547

/-! ## A234955.P1286028008780060794

`A107926(A016777(n))%A016962(n)`
-/

namespace A234955.P1286028008780060794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107926 (A016777 n).toNat) (A016962 n)

end

end A234955.P1286028008780060794

/-! ## A234955.P3223689692707076695

`A107926(A016777(n))+A000007(A017617(n))`
-/

namespace A234955.P3223689692707076695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107926 (A016777 n).toNat + A000007 (A017617 n).toNat

end

end A234955.P3223689692707076695

/-! ## A234955.P4476775725482384249

`2*A103147(3*n+1)`
-/

namespace A234955.P4476775725482384249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103147 (3 * n + 1)

end

end A234955.P4476775725482384249

/-! ## A234955.P14476095753371613243

`A107926(A016777(n))/A040001(A064132(n)+1)`
-/

namespace A234955.P14476095753371613243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107926 (A016777 n).toNat : ℚ) / (A040001 (A064132 n + 1).toNat : ℚ)

end

end A234955.P14476095753371613243

/-!
# A234956: Trisection of A107926: The least number k such that there are primes p and q with p - q = 6*n+4, p + q = k, and p the least such prime >= k/2.

The programs for A234956, there is no canonical definition to state claims against.
-/

/-! ## A234956.P4553291813106954511

`A107926(3*(n+1)-1)`
-/

namespace A234956.P4553291813106954511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107926 (3 * (n + 1) - 1)

end

end A234956.P4553291813106954511

/-! ## A234956.P5335921972325085498

`lcm(2, A107926(A016789(n)))`
-/

namespace A234956.P5335921972325085498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A107926 (A016789 n).toNat)

end

end A234956.P5335921972325085498

/-! ## A234956.P4083710509254775619

`A107926(A016789(n))-A000035(2*n)`
-/

namespace A234956.P4083710509254775619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107926 (A016789 n).toNat - A000035 (2 * n)

end

end A234956.P4083710509254775619

/-! ## A234956.P15839817736150002902

`A107926(A016789(n))%A001232(n+1)`
-/

namespace A234956.P15839817736150002902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107926 (A016789 n).toNat) (A001232 (n + 1))

end

end A234956.P15839817736150002902

/-! ## A234956.P15089380318815218669

`2*A103147(3*n+2)`
-/

namespace A234956.P15089380318815218669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103147 (3 * n + 2)

end

end A234956.P15089380318815218669

/-!
# A234957: Highest power of 4 dividing n.

The programs for A234957, the canonical program `A234957.P3331265301523506354` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234957 has offset 1).

The definition of A234957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234957.P12277064054968205017

`4^val(n+1, 4)`
-/

namespace A234957.P12277064054968205017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.valuation (n + 1) 4

end

end A234957.P12277064054968205017

namespace A234957

/-- `4^val(n+1, 4)` -/
def P12277064054968205017.Spec : Prop :=
  ∀ n, (P12277064054968205017.a n : ℤ) = A234957 (n + 1)

end A234957

/-! ## A234957.P3331265301523506354

`4^A004526(A007814(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A234957

/-- `4^A004526(A007814(n+1))` -/
def P3331265301523506354.Spec : Prop :=
  ∀ n, P3331265301523506354.a n = (A234957 (n + 1) : ℚ)

end A234957

/-! ## A234957.P13220875544669516647

`(2^val(2*n-(n-1), 4))²`
-/

namespace A234957.P13220875544669516647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 4) ^ 2

end

end A234957.P13220875544669516647

namespace A234957

/-- `(2^val(2*n-(n-1), 4))²` -/
def P13220875544669516647.Spec : Prop :=
  ∀ n, (P13220875544669516647.a n : ℤ) = A234957 (n + 1)

end A234957

/-! ## A234957.P3278374837685511652

`4^dr(val(2*n-(n-1), 4))`
-/

namespace A234957.P3278374837685511652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 4 : ℤ)

end

end A234957.P3278374837685511652

namespace A234957

/-- `4^dr(val(2*n-(n-1), 4))` -/
def P3278374837685511652.Spec : Prop :=
  ∀ n, (P3278374837685511652.a n : ℤ) = A234957 (n + 1)

end A234957

/-! ## A234957.P6625536047037825555

`4^Δ[A054893(n)]`
-/

namespace A234957.P6625536047037825555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054893 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A234957.P6625536047037825555

namespace A234957

/-- `4^Δ[A054893(n)]` -/
def P6625536047037825555.Spec : Prop :=
  ∀ n, P6625536047037825555.a n = (A234957 (n + 1) : ℚ)

end A234957

/-! ## A234957.P12170878152215764375

`4^A235127(n+1)`
-/

namespace A234957.P12170878152215764375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A235127 (n + 1) : ℤ)

end

end A234957.P12170878152215764375

namespace A234957

/-- `4^A235127(n+1)` -/
def P12170878152215764375.Spec : Prop :=
  ∀ n, P12170878152215764375.a n = (A234957 (n + 1) : ℚ)

end A234957

/-! ## A234957.P14415805983968508033

`A213173(val(n+1, 2))`
-/

namespace A234957.P14415805983968508033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 (SequenceMachineLib.valuation (n + 1) 2)

end

end A234957.P14415805983968508033

namespace A234957

/-- `A213173(val(n+1, 2))` -/
def P14415805983968508033.Spec : Prop :=
  ∀ n, P14415805983968508033.a n = A234957 (n + 1)

end A234957

/-! ## A234957.P3584787849211684227

`A000302(val(n+1, 4))`
-/

namespace A234957.P3584787849211684227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (SequenceMachineLib.valuation (n + 1) 4)

end

end A234957.P3584787849211684227

namespace A234957

/-- `A000302(val(n+1, 4))` -/
def P3584787849211684227.Spec : Prop :=
  ∀ n, P3584787849211684227.a n = A234957 (n + 1)

end A234957

/-! ## A234957.P5178044282064909647

`(n+1)/A065883(n+1)`
-/

namespace A234957.P5178044282064909647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065883 (n + 1) : ℚ)

end

end A234957.P5178044282064909647

namespace A234957

/-- `(n+1)/A065883(n+1)` -/
def P5178044282064909647.Spec : Prop :=
  ∀ n, P5178044282064909647.a n = (A234957 (n + 1) : ℚ)

end A234957

/-! ## A234957.P4707336910732847195

`A240226(A152271(n))`
-/

namespace A234957.P4707336910732847195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240226 (A152271 n).toNat

end

end A234957.P4707336910732847195

namespace A234957

/-- `A240226(A152271(n))` -/
def P4707336910732847195.Spec : Prop :=
  ∀ n, P4707336910732847195.a n = A234957 (n + 1)

end A234957

/-! ## A234957.P5000369357180709130

`A008833(A006519(n+1))`
-/

namespace A234957.P5000369357180709130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A006519 (n + 1)).toNat

end

end A234957.P5000369357180709130

namespace A234957

/-- `A008833(A006519(n+1))` -/
def P5000369357180709130.Spec : Prop :=
  ∀ n, P5000369357180709130.a n = A234957 (n + 1)

end A234957

/-! ## A234957.P10544436480870648238

`A055975(A008833(n+1))`
-/

namespace A234957.P10544436480870648238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A008833 (n + 1)).toNat

end

end A234957.P10544436480870648238

namespace A234957

/-- `A055975(A008833(n+1))` -/
def P10544436480870648238.Spec : Prop :=
  ∀ n, P10544436480870648238.a n = A234957 (n + 1)

end A234957

/-! ## A234957.P14016175217694273263

`A006519(A085731(n+1))`
-/

namespace A234957.P14016175217694273263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A085731 (n + 1)).toNat

end

end A234957.P14016175217694273263

namespace A234957

/-- `A006519(A085731(n+1))` -/
def P14016175217694273263.Spec : Prop :=
  ∀ n, P14016175217694273263.a n = A234957 (n + 1)

end A234957

/-! ## A234957.P3744768416757986212

`A053644(A088840(n+1))`
-/

namespace A234957.P3744768416757986212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A088840 (n + 1)).toNat

end

end A234957.P3744768416757986212

namespace A234957

/-- `A053644(A088840(n+1))` -/
def P3744768416757986212.Spec : Prop :=
  ∀ n, P3744768416757986212.a n = A234957 (n + 1)

end A234957

/-! ## A234957.P8809121192442546381

`A006519(A214682(n+1))`
-/

namespace A234957.P8809121192442546381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A214682 (n + 1)).toNat

end

end A234957.P8809121192442546381

namespace A234957

/-- `A006519(A214682(n+1))` -/
def P8809121192442546381.Spec : Prop :=
  ∀ n, P8809121192442546381.a n = A234957 (n + 1)

end A234957

/-! ## A234957.P15990180357259709941

`A006519(A327939(n+1))`
-/

namespace A234957.P15990180357259709941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A327939 (n + 1)).toNat

end

end A234957.P15990180357259709941

namespace A234957

/-- `A006519(A327939(n+1))` -/
def P15990180357259709941.Spec : Prop :=
  ∀ n, P15990180357259709941.a n = A234957 (n + 1)

end A234957

/-! ## A234957.P5884722399858755410

`A008833(A327512(n+1))`
-/

namespace A234957.P5884722399858755410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A327512 (n + 1)).toNat

end

end A234957.P5884722399858755410

namespace A234957

/-- `A008833(A327512(n+1))` -/
def P5884722399858755410.Spec : Prop :=
  ∀ n, P5884722399858755410.a n = A234957 (n + 1)

end A234957

/-! ## A234957.P1266919359265120249

`A240226(A106615(n+1))`
-/

namespace A234957.P1266919359265120249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240226 (A106615 (n + 1)).toNat

end

end A234957.P1266919359265120249

namespace A234957

/-- `A240226(A106615(n+1))` -/
def P1266919359265120249.Spec : Prop :=
  ∀ n, P1266919359265120249.a n = A234957 (n + 1)

end A234957

/-! ## A234957.P10953169723777130147

`A006519(A000188(n+1)²)`
-/

namespace A234957.P10953169723777130147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000188 (n + 1) ^ 2).toNat

end

end A234957.P10953169723777130147

namespace A234957

/-- `A006519(A000188(n+1)²)` -/
def P10953169723777130147.Spec : Prop :=
  ∀ n, P10953169723777130147.a n = A234957 (n + 1)

end A234957

/-! ## A234957.P5539136859751923075

`A016116(A007814(n+1))²`
-/

namespace A234957.P5539136859751923075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A007814 (n + 1)).toNat ^ 2

end

end A234957.P5539136859751923075

namespace A234957

/-- `A016116(A007814(n+1))²` -/
def P5539136859751923075.Spec : Prop :=
  ∀ n, P5539136859751923075.a n = A234957 (n + 1)

end A234957

/-!
# A234958: Number of composite k-Lehmer numbers up to 10^n.

The programs for A234958, there is no canonical definition to state claims against.
-/

/-! ## A234958.P4507070715928024915

`A160738(A212247(n))+A119366(n)`
-/

namespace A234958.P4507070715928024915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160738 (A212247 n).toNat + A119366 n

end

end A234958.P4507070715928024915

/-!
# A234959: Highest power of 6 dividing n.

The programs for A234959, the canonical program `A234959.P12234400082203346417` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234959 has offset 1).

The definition of A234959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234959.P7007859911729426341

`6^val(n+1, 6)`
-/

namespace A234959.P7007859911729426341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ SequenceMachineLib.valuation (n + 1) 6

end

end A234959.P7007859911729426341

namespace A234959

/-- `6^val(n+1, 6)` -/
def P7007859911729426341.Spec : Prop :=
  ∀ n, (P7007859911729426341.a n : ℤ) = A234959 (n + 1)

end A234959

/-! ## A234959.P12234400082203346417

`6^A122841(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A234959

/-- `6^A122841(n+1)` -/
def P12234400082203346417.Spec : Prop :=
  ∀ n, P12234400082203346417.a n = (A234959 (n + 1) : ℚ)

end A234959

/-! ## A234959.P6252798117504440572

`A000400(val(n+1, 6))`
-/

namespace A234959.P6252798117504440572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (SequenceMachineLib.valuation (n + 1) 6)

end

end A234959.P6252798117504440572

namespace A234959

/-- `A000400(val(n+1, 6))` -/
def P6252798117504440572.Spec : Prop :=
  ∀ n, P6252798117504440572.a n = A234959 (n + 1)

end A234959

/-! ## A234959.P9710838522921391282

`A007275(val(n+1, 6))`
-/

namespace A234959.P9710838522921391282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007275 (SequenceMachineLib.valuation (n + 1) 6)

end

end A234959.P9710838522921391282

namespace A234959

/-- `A007275(val(n+1, 6))` -/
def P9710838522921391282.Spec : Prop :=
  ∀ n, P9710838522921391282.a n = A234959 (n + 1)

end A234959

/-! ## A234959.P3711191554139267649

`A097681(val(n+1, 6))`
-/

namespace A234959.P3711191554139267649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097681 (SequenceMachineLib.valuation (n + 1) 6)

end

end A234959.P3711191554139267649

namespace A234959

/-- `A097681(val(n+1, 6))` -/
def P3711191554139267649.Spec : Prop :=
  ∀ n, P3711191554139267649.a n = A234959 (n + 1)

end A234959

/-! ## A234959.P4381324121293224163

`(n+1)/A244414(n+1)`
-/

namespace A234959.P4381324121293224163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A244414 (n + 1) : ℚ)

end

end A234959.P4381324121293224163

namespace A234959

/-- `(n+1)/A244414(n+1)` -/
def P4381324121293224163.Spec : Prop :=
  ∀ n, P4381324121293224163.a n = (A234959 (n + 1) : ℚ)

end A234959

/-! ## A234959.P654369952733155593

`A214681(A065331(n+1))`
-/

namespace A234959.P654369952733155593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214681 (A065331 (n + 1)).toNat

end

end A234959.P654369952733155593

namespace A234959

/-- `A214681(A065331(n+1))` -/
def P654369952733155593.Spec : Prop :=
  ∀ n, P654369952733155593.a n = A234959 (n + 1)

end A234959

/-! ## A234959.P11143446433316414306

`A244416(A318668(n+1))`
-/

namespace A234959.P11143446433316414306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244416 (A318668 (n + 1)).toNat

end

end A234959.P11143446433316414306

namespace A234959

/-- `A244416(A318668(n+1))` -/
def P11143446433316414306.Spec : Prop :=
  ∀ n, P11143446433316414306.a n = A234959 (n + 1)

end A234959

/-! ## A234959.P13617275107692312710

`A214681(gcd(n+1, A017322(n)))`
-/

namespace A234959.P13617275107692312710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214681 (Int.gcd (n + 1 : ℤ) (A017322 n))

end

end A234959.P13617275107692312710

namespace A234959

/-- `A214681(gcd(n+1, A017322(n)))` -/
def P13617275107692312710.Spec : Prop :=
  ∀ n, P13617275107692312710.a n = A234959 (n + 1)

end A234959

/-! ## A234959.P18080523839422683097

`gcd(A017454(n), A214681(n+1))`
-/

namespace A234959.P18080523839422683097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017454 n) (A214681 (n + 1))

end

end A234959.P18080523839422683097

namespace A234959

/-- `gcd(A017454(n), A214681(n+1))` -/
def P18080523839422683097.Spec : Prop :=
  ∀ n, (P18080523839422683097.a n : ℤ) = A234959 (n + 1)

end A234959

/-! ## A234959.P10570329183248774137

`A214681((n+1)/A065330(n+1))`
-/

namespace A234959.P10570329183248774137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214681 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065330 (n + 1) : ℚ))).toNat

end

end A234959.P10570329183248774137

namespace A234959

/-- `A214681((n+1)/A065330(n+1))` -/
def P10570329183248774137.Spec : Prop :=
  ∀ n, P10570329183248774137.a n = A234959 (n + 1)

end A234959

/-! ## A234959.P11465256797282623178

`gcd(A061898(n+1), A065331(n+1))`
-/

namespace A234959.P11465256797282623178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061898 (n + 1)) (A065331 (n + 1))

end

end A234959.P11465256797282623178

namespace A234959

/-- `gcd(A061898(n+1), A065331(n+1))` -/
def P11465256797282623178.Spec : Prop :=
  ∀ n, (P11465256797282623178.a n : ℤ) = A234959 (n + 1)

end A234959

/-! ## A234959.P8731506111005425896

`A025610(A322316(A214681(n+1)))`
-/

namespace A234959.P8731506111005425896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025610 (A322316 (A214681 (n + 1)).toNat).toNat

end

end A234959.P8731506111005425896

namespace A234959

/-- `A025610(A322316(A214681(n+1)))` -/
def P8731506111005425896.Spec : Prop :=
  ∀ n, P8731506111005425896.a n = A234959 (n + 1)

end A234959

/-! ## A234959.P11197734519426210294

`A151784(A037471(n+1)-A037471(n))`
-/

namespace A234959.P11197734519426210294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151784 (A037471 (n + 1) - A037471 n).toNat

end

end A234959.P11197734519426210294

namespace A234959

/-- `A151784(A037471(n+1)-A037471(n))` -/
def P11197734519426210294.Spec : Prop :=
  ∀ n, P11197734519426210294.a n = A234959 (n + 1)

end A234959

/-! ## A234959.P9632982308590399192

`(n+1)/A030105(A030105(n+1))`
-/

namespace A234959.P9632982308590399192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A030105 (A030105 (n + 1)).toNat : ℚ)

end

end A234959.P9632982308590399192

namespace A234959

/-- `(n+1)/A030105(A030105(n+1))` -/
def P9632982308590399192.Spec : Prop :=
  ∀ n, P9632982308590399192.a n = (A234959 (n + 1) : ℚ)

end A234959

/-! ## A234959.P12173276073116306295

`ratio[A243758(n)]`
-/

namespace A234959.P12173276073116306295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243758 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A234959.P12173276073116306295

namespace A234959

/-- `ratio[A243758(n)]` -/
def P12173276073116306295.Spec : Prop :=
  ∀ n, P12173276073116306295.a n = (A234959 (n + 1) : ℚ)

end A234959

/-! ## A234959.P2473207143177615240

`ratio[6^A054895(n)]`
-/

namespace A234959.P2473207143177615240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A054895 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) / f1 n

end

end A234959.P2473207143177615240

namespace A234959

/-- `ratio[6^A054895(n)]` -/
def P2473207143177615240.Spec : Prop :=
  ∀ n, P2473207143177615240.a n = (A234959 (n + 1) : ℚ)

end A234959

/-! ## A234959.P1264000664608830307

`A243758(n+1)/A243758(n)`
-/

namespace A234959.P1264000664608830307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243758 (n + 1) : ℚ) / (A243758 n : ℚ)

end

end A234959.P1264000664608830307

namespace A234959

/-- `A243758(n+1)/A243758(n)` -/
def P1264000664608830307.Spec : Prop :=
  ∀ n, P1264000664608830307.a n = (A234959 (n + 1) : ℚ)

end A234959

/-! ## A234959.P16981860756155596938

`A254730(∑[n+1]+1)`
-/

namespace A234959.P16981860756155596938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234959.P16981860756155596938

namespace A234959

/-- `A254730(∑[n+1]+1)` -/
def P16981860756155596938.Spec : Prop :=
  ∀ n, P16981860756155596938.a n = A234959 (n + 1)

end A234959

/-!
# A234960: Sequence (or tree) T of primes generated by these rules: 2 is in T; if p is in T, then the greatest prime < 2*p is in T; if p is in T, then the least prime > 2*p is in T; duplicates are deleted as they occur.

The programs for A234960, there is no canonical definition to state claims against.
-/

/-! ## A234960.P13484111904689479293

`A000040(lt[A062051(n), A000010(2*(n+1))])`
-/

namespace A234960.P13484111904689479293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A234960.P13484111904689479293

/-! ## A234960.P4174276517325409943

`lt[A066049(A062584(n)), A000010(3*n+2)]`
-/

namespace A234960.P4174276517325409943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (A062584 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A234960.P4174276517325409943

/-! ## A234960.P11325413449380025086

`record[or(A007918(n), A343640(n))]`
-/

namespace A234960.P11325413449380025086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007918 n) (A343640 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234960.P11325413449380025086

/-! ## A234960.P16365027701103960862

`p?[A323048(n+1)]`
-/

namespace A234960.P16365027701103960862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234960.P16365027701103960862

/-! ## A234960.P336284921053996935

`∩[A069679(n+1), A129350(n+1)]`
-/

namespace A234960.P336284921053996935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234960.P336284921053996935

/-!
# A234961: Number of primes in level n of the tree generated at A234960.

The programs for A234961, there is no canonical definition to state claims against.
-/

/-! ## A234961.P7375721713682923630

`A322554(∑[A228577(n)]+1)`
-/

namespace A234961.P7375721713682923630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A234961.P7375721713682923630

/-! ## A234961.P5463403690025226650

`A353866(A066806(n)+A000045(n))`
-/

namespace A234961.P5463403690025226650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353866 (A066806 n + A000045 n).toNat

end

end A234961.P5463403690025226650

/-! ## A234961.P2587796877102045972

`or(A000122(n), A284263(A018027(n)))`
-/

namespace A234961.P2587796877102045972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A284263 (A018027 n).toNat)

end

end A234961.P2587796877102045972

/-! ## A234961.P2116015713040266813

`A050342(n)+A000194(A185306(n+1))`
-/

namespace A234961.P2116015713040266813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050342 n + A000194 (A185306 (n + 1)).toNat

end

end A234961.P2116015713040266813

/-! ## A234961.P9587058778181130070

`A333382(A107433(n))+A000045(A087036(n)+1)`
-/

namespace A234961.P9587058778181130070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A107433 n).toNat + A000045 (A087036 n + 1).toNat

end

end A234961.P9587058778181130070

/-!
# A234962: Primes missing from the tree generated at A234960.

The programs for A234962, there is no canonical definition to state claims against.
-/

/-! ## A234962.P15945991688577744212

`record[A166252(n+1)-A034432(3*n+5)]`
-/

namespace A234962.P15945991688577744212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166252 (n + 1) - A034432 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234962.P15945991688577744212

/-! ## A234962.P17491537974035385705

`A166252(n+1)-A034432(p?[A007989(n)])`
-/

namespace A234962.P17491537974035385705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166252 (n + 1) - A034432 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234962.P17491537974035385705

/-! ## A234962.P4913890714935351859

`A166252(n+1)-A034432(A000040(n+1))`
-/

namespace A234962.P4913890714935351859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166252 (n + 1) - A034432 (A000040 (n + 1)).toNat

end

end A234962.P4913890714935351859

/-! ## A234962.P17552537627473550601

`A166252(n+1)-A034432(A006005(n+1))`
-/

namespace A234962.P17552537627473550601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166252 (n + 1) - A034432 (A006005 (n + 1)).toNat

end

end A234962.P17552537627473550601

/-! ## A234962.P15785736021288929726

`A166252(n+1)-A034432(A234960(n+1))`
-/

namespace A234962.P15785736021288929726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166252 (n + 1) - A034432 (A234960 (n + 1)).toNat

end

end A234962.P15785736021288929726

/-!
# A234964: Numbers of the form 123...n - (n+1).

The programs for A234964, there is no canonical definition to state claims against.
-/

/-! ## A234964.P13159485328664830608

`A007908(n+2)-(n+3)`
-/

namespace A234964.P13159485328664830608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (n + 2) - (n + 3 : ℤ)

end

end A234964.P13159485328664830608

/-! ## A234964.P3917374840909662764

`A359124(n+2)-4-n`
-/

namespace A234964.P3917374840909662764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359124 (n + 2) - 4 - (n : ℤ)

end

end A234964.P3917374840909662764

/-! ## A234964.P11273694125248366724

`A252043(A033061(n+2))-(n+3)`
-/

namespace A234964.P11273694125248366724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252043 (A033061 (n + 2)).toNat - (n + 3 : ℤ)

end

end A234964.P11273694125248366724

/-! ## A234964.P11638488814343636673

`A252043(A058183(n+2))-(n+3)`
-/

namespace A234964.P11638488814343636673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252043 (A058183 (n + 2)).toNat - (n + 3 : ℤ)

end

end A234964.P11638488814343636673

/-! ## A234964.P2022295775462004803

`A322762(A026905(n+2))-(n+3)`
-/

namespace A234964.P2022295775462004803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322762 (A026905 (n + 2)).toNat - (n + 3 : ℤ)

end

end A234964.P2022295775462004803

/-!
# A234965: Numbers k such that 123...k - (k+1) is prime.

The programs for A234965, there is no canonical definition to state claims against.
-/

/-! ## A234965.P8405395467308187083

`∪[A014574(n+1), A007425(A029542(3*n+5))]`
-/

namespace A234965.P8405395467308187083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A029542 (3 * n + 5)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A234965.P8405395467308187083

/-!
# A234966: Least number k with at least one zero such that k^n contains no zero, or 0 if no such number exists.

The programs for A234966, there is no canonical definition to state claims against.
-/

/-! ## A234966.P17347231659077396425

`A134808(n+1)+A052409(A054338(n))`
-/

namespace A234966.P17347231659077396425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1) + A052409 (A054338 n).toNat

end

end A234966.P17347231659077396425

/-!
# A234970: Deficient numbers whose aliquot sequence is deficient, abundant, deficient, ..., etc.

The programs for A234970, there is no canonical definition to state claims against.
-/

/-! ## A234970.P11418876065075628091

`A121507(A121519(2*(n+1))-A121480(n+2))`
-/

namespace A234970.P11418876065075628091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121507 (A121519 (2 * (n + 1)) - A121480 (n + 2)).toNat

end

end A234970.P11418876065075628091

/-!
# A234973: Primes that are 6 plus the sum of three consecutive primes.

The programs for A234973, the canonical program `A234973.P16340142227347976092` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234973 has offset 1).

The definition of A234973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234973.P16340142227347976092

`p?[A034961(n+1)+6]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A234973

/-- `p?[A034961(n+1)+6]` -/
def P16340142227347976092.Spec : Prop :=
  ∀ n, P16340142227347976092.a n = A234973 (n + 1)

theorem P16340142227347976092.correct : P16340142227347976092.Spec := by
  intro n
  simp only [A234973, Nat.add_sub_cancel]

end A234973

/-! ## A234973.P7984821327931901052

`p?[∑[A031165(n+1)]+16]`
-/

namespace A234973.P7984821327931901052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234973.P7984821327931901052

namespace A234973

/-- `p?[∑[A031165(n+1)]+16]` -/
def P7984821327931901052.Spec : Prop :=
  ∀ n, P7984821327931901052.a n = A234973 (n + 1)

end A234973

/-! ## A234973.P3919539871642979198

`p?[A175222(n+1)+A076273(n)+2]`
-/

namespace A234973.P3919539871642979198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) + (A076273 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234973.P3919539871642979198

namespace A234973

/-- `p?[A175222(n+1)+A076273(n)+2]` -/
def P3919539871642979198.Spec : Prop :=
  ∀ n, P3919539871642979198.a n = A234973 (n + 1)

end A234973

/-! ## A234973.P13255662926136230587

`p?[A001043(n+2)+A000040(n+1)+6]`
-/

namespace A234973.P13255662926136230587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 2) + (A000040 (n + 1) + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234973.P13255662926136230587

namespace A234973

/-- `p?[A001043(n+2)+A000040(n+1)+6]` -/
def P13255662926136230587.Spec : Prop :=
  ∀ n, P13255662926136230587.a n = A234973 (n + 1)

end A234973

/-! ## A234973.P12055750594364806241

`p?[A344132(A000040(n+1))+A076273(n)]`
-/

namespace A234973.P12055750594364806241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344132 (A000040 (n + 1)).toNat + A076273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234973.P12055750594364806241

namespace A234973

/-- `p?[A344132(A000040(n+1))+A076273(n)]` -/
def P12055750594364806241.Spec : Prop :=
  ∀ n, P12055750594364806241.a n = A234973 (n + 1)

end A234973

/-! ## A234973.P8642850120727750003

`p?[A146308(A004139(n+1))+A001043(n+1)]`
-/

namespace A234973.P8642850120727750003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146308 (A004139 (n + 1)).toNat + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234973.P8642850120727750003

namespace A234973

/-- `p?[A146308(A004139(n+1))+A001043(n+1)]` -/
def P8642850120727750003.Spec : Prop :=
  ∀ n, P8642850120727750003.a n = A234973 (n + 1)

end A234973

/-! ## A234973.P17763079780228826768

`p?[A146308(A008578(n+1))+A001043(n+1)]`
-/

namespace A234973.P17763079780228826768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146308 (A008578 (n + 1)).toNat + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234973.P17763079780228826768

namespace A234973

/-- `p?[A146308(A008578(n+1))+A001043(n+1)]` -/
def P17763079780228826768.Spec : Prop :=
  ∀ n, P17763079780228826768.a n = A234973 (n + 1)

end A234973

/-! ## A234973.P14633934396266979644

`p?[A146308(A034961(n+1))]`
-/

namespace A234973.P14633934396266979644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146308 (A034961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234973.P14633934396266979644

namespace A234973

/-- `p?[A146308(A034961(n+1))]` -/
def P14633934396266979644.Spec : Prop :=
  ∀ n, P14633934396266979644.a n = A234973 (n + 1)

end A234973

/-!
# A234975: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having the sum of the absolute values of the edge differences equal to 8.

The programs for A234975, there is no canonical definition to state claims against.
-/

/-! ## A234975.P3393343392101010877

`A234982(∑[n]+1)`
-/

namespace A234975.P3393343392101010877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234982 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234975.P3393343392101010877

/-! ## A234975.P6326369256880369353

`record[A010054(n)*A234982(n+1)]`
-/

namespace A234975.P6326369256880369353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234975.P6326369256880369353

/-! ## A234975.P12162431477490091288

`record[root(A234982(n+1), A059268(n))]`
-/

namespace A234975.P12162431477490091288
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234982 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234975.P12162431477490091288

/-! ## A234975.P6154111860319430185

`record[root(A234982(n+1), A157751(n))]`
-/

namespace A234975.P6154111860319430185
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234982 (n + 1) : ℝ) ^ (1 / (A157751 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234975.P6154111860319430185

/-! ## A234975.P1486973512658873359

`record[gcd(A004247(n), A234982(n+1))]`
-/

namespace A234975.P1486973512658873359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n) (A234982 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234975.P1486973512658873359

/-!
# A234976: Number of (n+1)X(2+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 8.

The programs for A234976, there is no canonical definition to state claims against.
-/

/-! ## A234976.P4926699471689502897

`A234982(∑[n+1]+2)`
-/

namespace A234976.P4926699471689502897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234982 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234976.P4926699471689502897

/-! ## A234976.P17574498938370137826

`record[A010054(n)*A234982(n+2)]`
-/

namespace A234976.P17574498938370137826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234976.P17574498938370137826

/-! ## A234976.P7411032730939803760

`record[root(A234982(n+2), A059268(n))]`
-/

namespace A234976.P7411032730939803760
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234982 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234976.P7411032730939803760

/-! ## A234976.P3624074180239058177

`record[root(A234982(n+2), A157751(n))]`
-/

namespace A234976.P3624074180239058177
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234982 (n + 2) : ℝ) ^ (1 / (A157751 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234976.P3624074180239058177

/-!
# A234977: Number of (n+1) X (3+1) 0..4 arrays with every 2 X 2 subblock having the sum of the absolute values of the edge differences equal to 8.

The programs for A234977, there is no canonical definition to state claims against.
-/

/-! ## A234977.P14961798772848012240

`A234982(∑[n+2]+4)`
-/

namespace A234977.P14961798772848012240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234982 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234977.P14961798772848012240

/-! ## A234977.P11950291204383652781

`lcm(2, A234982(A167614(n+1)))`
-/

namespace A234977.P11950291204383652781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234982 (A167614 (n + 1)).toNat)

end

end A234977.P11950291204383652781

/-! ## A234977.P9863030419639176153

`A234982(A167614(n+1))+A185037(n)`
-/

namespace A234977.P9863030419639176153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234982 (A167614 (n + 1)).toNat + A185037 n

end

end A234977.P9863030419639176153

/-! ## A234977.P5848840762218211631

`A234982(A167614(n+1))*A294775(n)`
-/

namespace A234977.P5848840762218211631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234982 (A167614 (n + 1)).toNat * A294775 n

end

end A234977.P5848840762218211631

/-! ## A234977.P11869076620773100051

`A234982(A167614(n+1))+A007394(n+1)`
-/

namespace A234977.P11869076620773100051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234982 (A167614 (n + 1)).toNat + A007394 (n + 1)

end

end A234977.P11869076620773100051

/-!
# A234978: Number of (n+1)X(4+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 8.

The programs for A234978, there is no canonical definition to state claims against.
-/

/-! ## A234978.P6251796722304820193

`A234982(A167614(n+2)+1)`
-/

namespace A234978.P6251796722304820193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234982 (A167614 (n + 2) + 1).toNat

end

end A234978.P6251796722304820193

/-! ## A234978.P8106671727992357588

`A234982(eq[2, A057728(n+1)-2])`
-/

namespace A234978.P8106671727992357588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234978.P8106671727992357588

/-!
# A234979: Number of (n+1)X(5+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 8.

The programs for A234979, there is no canonical definition to state claims against.
-/

/-! ## A234979.P5416994560023931984

`A234982(A374005(n+1))`
-/

namespace A234979.P5416994560023931984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234982 (A374005 (n + 1)).toNat

end

end A234979.P5416994560023931984

/-! ## A234979.P3343497176502999169

`A234982(eq[8, A057728(n+1)])`
-/

namespace A234979.P3343497176502999169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234979.P3343497176502999169

/-!
# A234981: 

The programs for A234981, there is no canonical definition to state claims against.
-/

/-! ## A234981.P14444313413044952595

`A234982(A055999(n+4))`
-/

namespace A234981.P14444313413044952595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234982 (A055999 (n + 4)).toNat

end

end A234981.P14444313413044952595

/-!
# A234983: Number of (n+1) X (n+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234983, there is no canonical definition to state claims against.
-/

/-! ## A234983.P10316889671336611867

`A234991(∑[4*n]+1)`
-/

namespace A234983.P10316889671336611867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234983.P10316889671336611867

/-! ## A234983.P14977202593142968326

`lcm(2, A234991(A001844(n)))`
-/

namespace A234983.P14977202593142968326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234991 (A001844 n).toNat)

end

end A234983.P14977202593142968326

/-! ## A234983.P13653313838133149356

`record[A003982(n)*A234991(n+1)]`
-/

namespace A234983.P13653313838133149356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A234991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234983.P13653313838133149356

/-! ## A234983.P8925283876452986353

`record[root(A234991(n+1), A027420(n))]`
-/

namespace A234983.P8925283876452986353
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234991 (n + 1) : ℝ) ^ (1 / (A027420 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234983.P8925283876452986353

/-!
# A234984: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234984, there is no canonical definition to state claims against.
-/

/-! ## A234984.P13679363494102409992

`A234991(∑[n]+1)`
-/

namespace A234984.P13679363494102409992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234984.P13679363494102409992

/-! ## A234984.P5348238677520480955

`record[A010054(n)*A234991(n+1)]`
-/

namespace A234984.P5348238677520480955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234984.P5348238677520480955

/-! ## A234984.P2561377063286064694

`record[A234991(n+1)/A085478(n)]`
-/

namespace A234984.P2561377063286064694
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234991 (n + 1) : ℚ) / (A085478 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234984.P2561377063286064694

/-! ## A234984.P11252828991164414212

`record[gcd(A002262(n), A234991(n+1))]`
-/

namespace A234984.P11252828991164414212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234991 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234984.P11252828991164414212

/-! ## A234984.P796118085088415189

`record[A234991(n+1)/A296115(n+1)]`
-/

namespace A234984.P796118085088415189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234991 (n + 1) : ℚ) / (A296115 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234984.P796118085088415189

/-!
# A234985: Number of (n+1) X (2+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234985, there is no canonical definition to state claims against.
-/

/-! ## A234985.P3386113917202836808

`A234991(∑[n+1]+2)`
-/

namespace A234985.P3386113917202836808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234985.P3386113917202836808

/-! ## A234985.P13570478780932954730

`record[A010054(n)*A234991(n+2)]`
-/

namespace A234985.P13570478780932954730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234991 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234985.P13570478780932954730

/-! ## A234985.P11282873853681340371

`record[gcd(A002262(n), A234991(n+2))]`
-/

namespace A234985.P11282873853681340371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234991 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234985.P11282873853681340371

/-! ## A234985.P1659797562152638239

`or(floor(acot(n)²), A234991(A000096(n+1)))`
-/

namespace A234985.P1659797562152638239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ (A234991 (A000096 (n + 1)).toNat)

end

end A234985.P1659797562152638239

/-! ## A234985.P16722627084156996813

`record[A234991(A000096(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A234985.P16722627084156996813
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (A000096 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234985.P16722627084156996813

/-!
# A234986: Number of (n+1) X (3+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234986, there is no canonical definition to state claims against.
-/

/-! ## A234986.P2077169882992758757

`A234991(∑[n+2]+4)`
-/

namespace A234986.P2077169882992758757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234986.P2077169882992758757

/-! ## A234986.P12898714803706137404

`lcm(2, A234991(A167614(n+1)))`
-/

namespace A234986.P12898714803706137404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234991 (A167614 (n + 1)).toNat)

end

end A234986.P12898714803706137404

/-! ## A234986.P11637675770807506738

`record[A234991(n+4)/A218592(n+1)]`
-/

namespace A234986.P11637675770807506738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234991 (n + 4) : ℚ) / (A218592 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234986.P11637675770807506738

/-! ## A234986.P10165356456808487492

`record[A234991(n+4)/A343510(n+2)]`
-/

namespace A234986.P10165356456808487492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234991 (n + 4) : ℚ) / (A343510 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234986.P10165356456808487492

/-! ## A234986.P8755295669939209726

`A234991(A034856(n+1)+5)+A185036(n)`
-/

namespace A234986.P8755295669939209726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (A034856 (n + 1) + 5).toNat + A185036 n

end

end A234986.P8755295669939209726

/-!
# A234987: Number of (n+1) X (4+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234987, there is no canonical definition to state claims against.
-/

/-! ## A234987.P243202961840368473

`A234991(∑[n+3]+7)`
-/

namespace A234987.P243202961840368473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234987.P243202961840368473

/-!
# A234988: Number of (n+1) X (5+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234988, there is no canonical definition to state claims against.
-/

/-! ## A234988.P16680748604015819107

`A234991(A167499(n+3))`
-/

namespace A234988.P16680748604015819107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (A167499 (n + 3)).toNat

end

end A234988.P16680748604015819107

/-! ## A234988.P8274852385383313984

`A234991(A155212(n)+13)`
-/

namespace A234988.P8274852385383313984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (A155212 n + 13).toNat

end

end A234988.P8274852385383313984

/-! ## A234988.P8956691274566954983

`A234991(A056000(n)+15)`
-/

namespace A234988.P8956691274566954983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (A056000 n + 15).toNat

end

end A234988.P8956691274566954983

/-! ## A234988.P310397000030231700

`A234991(eq[7, A066657(n)])`
-/

namespace A234988.P310397000030231700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234988.P310397000030231700

/-! ## A234988.P1401369919330677954

`A234991(eq[6, A131818(n+1)])`
-/

namespace A234988.P1401369919330677954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234988.P1401369919330677954

/-!
# A234989: Number of (n+1) X (6+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234989, there is no canonical definition to state claims against.
-/

/-! ## A234989.P8874910039211016467

`A234991(A166136(n+4))`
-/

namespace A234989.P8874910039211016467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (A166136 (n + 4)).toNat

end

end A234989.P8874910039211016467

/-! ## A234989.P3641343344133340975

`A234991(A056115(n)+21)`
-/

namespace A234989.P3641343344133340975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (A056115 n + 21).toNat

end

end A234989.P3641343344133340975

/-! ## A234989.P3108333791735499143

`A234991(eq[7, A131818(n+1)])`
-/

namespace A234989.P3108333791735499143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234989.P3108333791735499143

/-! ## A234989.P15618598679213388343

`A234991(Δ[A023545(n+1)]+10)`
-/

namespace A234989.P15618598679213388343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (f1 (n + 1) - f1 n + 10).toNat

end

end A234989.P15618598679213388343

/-! ## A234989.P8394561320298399397

`A234991(A374007(n+1))`
-/

namespace A234989.P8394561320298399397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (A374007 (n + 1)).toNat

end

end A234989.P8394561320298399397

/-!
# A234990: Number of (n+1) X (7+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234990, there is no canonical definition to state claims against.
-/

/-! ## A234990.P8528726055835076162

`A234991(A167487(n+5))`
-/

namespace A234990.P8528726055835076162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (A167487 (n + 5)).toNat

end

end A234990.P8528726055835076162

/-! ## A234990.P7096195521765562383

`A234991(eq[11, A066657(n)])`
-/

namespace A234990.P7096195521765562383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234990.P7096195521765562383

/-! ## A234990.P5272791176459279422

`A234991(A167499(n+5)+2)`
-/

namespace A234990.P5272791176459279422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (A167499 (n + 5) + 2).toNat

end

end A234990.P5272791176459279422

/-! ## A234990.P10219738944504899382

`A234991(eq[8, A131818(n+1)])`
-/

namespace A234990.P10219738944504899382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234990.P10219738944504899382

/-! ## A234990.P17582330907120158629

`A234991(A374008(n+1))`
-/

namespace A234990.P17582330907120158629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234991 (A374008 (n + 1)).toNat

end

end A234990.P17582330907120158629

/-!
# A234992: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234992, there is no canonical definition to state claims against.
-/

/-! ## A234992.P14557072426090053929

`A234998(∑[n]+1)`
-/

namespace A234992.P14557072426090053929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234992.P14557072426090053929

/-! ## A234992.P14376285158111384988

`lcm(2, A234998(A000124(n)))`
-/

namespace A234992.P14376285158111384988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234998 (A000124 n).toNat)

end

end A234992.P14376285158111384988

/-! ## A234992.P1435782043586528929

`record[A234998(A056536(n+1))]`
-/

namespace A234992.P1435782043586528929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234992.P1435782043586528929

/-! ## A234992.P17641903895347376738

`record[A234998(A166017(n+1))]`
-/

namespace A234992.P17641903895347376738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A166017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234992.P17641903895347376738

/-! ## A234992.P1043763704281751821

`record[A234998(A257504(n+1))]`
-/

namespace A234992.P1043763704281751821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A257504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234992.P1043763704281751821

/-!
# A234993: Number of (n+1) X (2+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234993, there is no canonical definition to state claims against.
-/

/-! ## A234993.P10657293342529902493

`A234998(∑[n+1]+2)`
-/

namespace A234993.P10657293342529902493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234993.P10657293342529902493

/-! ## A234993.P18074208286448815

`lcm(2, A234998(A000096(n)+3))`
-/

namespace A234993.P18074208286448815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234998 (A000096 n + 3).toNat)

end

end A234993.P18074208286448815

/-! ## A234993.P11594354738302214429

`record[gcd(A213191(n), A234998(n+2))]`
-/

namespace A234993.P11594354738302214429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213191 n) (A234998 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234993.P11594354738302214429

/-! ## A234993.P13323703679239498443

`A234998(A000096(n)+3)+A185238(n)`
-/

namespace A234993.P13323703679239498443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A000096 n + 3).toNat + A185238 n

end

end A234993.P13323703679239498443

/-! ## A234993.P6215988607788222871

`A234998(A000096(n)+3)+A185284(n)`
-/

namespace A234993.P6215988607788222871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A000096 n + 3).toNat + A185284 n

end

end A234993.P6215988607788222871

/-!
# A234994: Number of (n+1) X (3+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234994, there is no canonical definition to state claims against.
-/

/-! ## A234994.P6274850967833796985

`A234998(∑[n+2]+4)`
-/

namespace A234994.P6274850967833796985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234994.P6274850967833796985

/-! ## A234994.P17550638369608452243

`lcm(2, A234998(A167614(n+1)))`
-/

namespace A234994.P17550638369608452243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234998 (A167614 (n + 1)).toNat)

end

end A234994.P17550638369608452243

/-! ## A234994.P13291764536713956614

`record[A234998(A056536(n+2)+2)]`
-/

namespace A234994.P13291764536713956614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A056536 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234994.P13291764536713956614

/-! ## A234994.P11022248449926118792

`record[A234998(A257504(n+2)+2)]`
-/

namespace A234994.P11022248449926118792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A257504 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234994.P11022248449926118792

/-! ## A234994.P17365054478802671112

`A234998(A167614(n+1))+A025443(n)`
-/

namespace A234994.P17365054478802671112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A167614 (n + 1)).toNat + A025443 n

end

end A234994.P17365054478802671112

/-!
# A234995: Number of (n+1) X (4+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234995, there is no canonical definition to state claims against.
-/

/-! ## A234995.P9297455541768667402

`A234998(A374004(n+1))`
-/

namespace A234995.P9297455541768667402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A374004 (n + 1)).toNat

end

end A234995.P9297455541768667402

/-! ## A234995.P14481863600038973666

`A234998(A141214(n)+7)`
-/

namespace A234995.P14481863600038973666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A141214 n + 7).toNat

end

end A234995.P14481863600038973666

/-! ## A234995.P9220378500106042175

`A234998(A052905(n)+9)`
-/

namespace A234995.P9220378500106042175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A052905 n + 9).toNat

end

end A234995.P9220378500106042175

/-! ## A234995.P3822963743036225915

`A234998(A055999(n)+10)`
-/

namespace A234995.P3822963743036225915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A055999 n + 10).toNat

end

end A234995.P3822963743036225915

/-! ## A234995.P5621795839707718766

`A234998(eq[5, A066657(n)])`
-/

namespace A234995.P5621795839707718766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234995.P5621795839707718766

/-!
# A234996: Number of (n+1) X (5+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234996, there is no canonical definition to state claims against.
-/

/-! ## A234996.P10900246045338740637

`A234998(A374005(n+1))`
-/

namespace A234996.P10900246045338740637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A374005 (n + 1)).toNat

end

end A234996.P10900246045338740637

/-! ## A234996.P3170797816249674988

`A234998(A167499(n+3))`
-/

namespace A234996.P3170797816249674988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A167499 (n + 3)).toNat

end

end A234996.P3170797816249674988

/-! ## A234996.P11468921770774833573

`A234998(A155212(n)+13)`
-/

namespace A234996.P11468921770774833573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A155212 n + 13).toNat

end

end A234996.P11468921770774833573

/-! ## A234996.P10085598967435268688

`A234998(A056000(n)+15)`
-/

namespace A234996.P10085598967435268688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A056000 n + 15).toNat

end

end A234996.P10085598967435268688

/-! ## A234996.P15975128958729224793

`A234998(eq[7, A066657(n)])`
-/

namespace A234996.P15975128958729224793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234996.P15975128958729224793

/-!
# A234997: Number of (n+1) X (6+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234997, there is no canonical definition to state claims against.
-/

/-! ## A234997.P12184673346912784405

`A234998(A374007(n+1))`
-/

namespace A234997.P12184673346912784405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A374007 (n + 1)).toNat

end

end A234997.P12184673346912784405

/-! ## A234997.P17567897219259536968

`A234998(A167499(n+4)+1)`
-/

namespace A234997.P17567897219259536968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A167499 (n + 4) + 1).toNat

end

end A234997.P17567897219259536968

/-! ## A234997.P8632897854184431382

`A234998(A167614(n+4)+3)`
-/

namespace A234997.P8632897854184431382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A167614 (n + 4) + 3).toNat

end

end A234997.P8632897854184431382

/-! ## A234997.P5561855169578399785

`A234998(A000217(n+5)+6)`
-/

namespace A234997.P5561855169578399785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234998 (A000217 (n + 5) + 6).toNat

end

end A234997.P5561855169578399785

/-!
# A234999: Primes p such that the p-th evil number is prime; 2 together with evil primes p such that 2p - 1 is prime.

The programs for A234999, the canonical program `A234999.P3604876205550161988` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234999 has offset 1).

The definition of A234999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 532 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234999.P3604876205550161988

`p?[ceil(A027699(n+1)/2)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A234999

/-- `p?[ceil(A027699(n+1)/2)]` -/
def P3604876205550161988.Spec : Prop :=
  ∀ n, P3604876205550161988.a n = A234999 (n + 1)

theorem P3604876205550161988.correct : P3604876205550161988.Spec := by
  intro n
  simp only [A234999, Nat.add_sub_cancel]

end A234999

/-! ## A234999.P14450760946582661953

`filter[A005382(n+1), A254377(#)]`
-/

namespace A234999.P14450760946582661953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254377 (f1 j).toNat = 1) n)

end

end A234999.P14450760946582661953

namespace A234999

/-- `filter[A005382(n+1), A254377(#)]` -/
def P14450760946582661953.Spec : Prop :=
  ∀ n, P14450760946582661953.a n = A234999 (n + 1)

end A234999

/-! ## A234999.P9403756421788875434

`p?[A174568(n+1)*A254377(A174568(n+1))]`
-/

namespace A234999.P9403756421788875434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1) * A254377 (A174568 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234999.P9403756421788875434

namespace A234999

/-- `p?[A174568(n+1)*A254377(A174568(n+1))]` -/
def P9403756421788875434.Spec : Prop :=
  ∀ n, P9403756421788875434.a n = A234999 (n + 1)

end A234999

/-! ## A234999.P2781006744852186837

`p?[A111333(A027700(n+1))]`
-/

namespace A234999.P2781006744852186837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (A027700 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234999.P2781006744852186837

namespace A234999

/-- `p?[A111333(A027700(n+1))]` -/
def P2781006744852186837.Spec : Prop :=
  ∀ n, P2781006744852186837.a n = A234999 (n + 1)

end A234999

/-! ## A234999.P16257656410637314214

`p?[A143579(A005382(n+1))]`
-/

namespace A234999.P16257656410637314214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 (A005382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234999.P16257656410637314214

namespace A234999

/-- `p?[A143579(A005382(n+1))]` -/
def P16257656410637314214.Spec : Prop :=
  ∀ n, P16257656410637314214.a n = A234999 (n + 1)

end A234999

/-! ## A234999.P7458869662403451192

`filter[A005382(n+1), A095190(#)]`
-/

namespace A234999.P7458869662403451192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095190 (f1 j).toNat = 1) n)

end

end A234999.P7458869662403451192

namespace A234999

/-- `filter[A005382(n+1), A095190(#)]` -/
def P7458869662403451192.Spec : Prop :=
  ∀ n, P7458869662403451192.a n = A234999 (n + 1)

end A234999

/-! ## A234999.P6495960241984631914

`A246425(record[A090368(A065079(n+1))])`
-/

namespace A234999.P6495960241984631914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A065079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A234999.P6495960241984631914

namespace A234999

/-- `A246425(record[A090368(A065079(n+1))])` -/
def P6495960241984631914.Spec : Prop :=
  ∀ n, P6495960241984631914.a n = A234999 (n + 1)

end A234999

