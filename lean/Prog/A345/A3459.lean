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
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A345901: a(n) is the largest k such that the tribonacci word A080843 contains a block of length k*n that is an abelian k-th power.

The programs for A345901, there is no canonical definition to state claims against.
-/

/-! ## A345901.P748514212252016394

`A286544(gcd(A000930(n), A270619(n)))`
-/

namespace A345901.P748514212252016394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286544 (Int.gcd (A000930 n) (A270619 n))

end

end A345901.P748514212252016394

/-!
# A345902: a(0) = 1; for n >= 1, a(n) = A004185(a(n-1)*n).

The programs for A345902, there is no canonical definition to state claims against.
-/

/-! ## A345902.P13852552315180830607

`A004185(a(n-1)*n)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345902.P13852552315180830607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A004185 (a (n - 1) * (n : ℤ)).toNat

end

end A345902.P13852552315180830607

/-! ## A345902.P10885178069362538646

`A165370(A055012(n*a(n-1)))` with `a(0)=1`
-/

namespace A345902.P10885178069362538646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165370 (A055012 ((n : ℤ) * a (n - 1)).toNat).toNat

end

end A345902.P10885178069362538646

/-! ## A345902.P4751191113149565411

`A165370(A055012(a(n-1)/n^(-1)))` with `a(0)=1`
-/

namespace A345902.P4751191113149565411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165370 (A055012 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ))).toNat).toNat

end

end A345902.P4751191113149565411

/-! ## A345902.P3136713196244100504

`A004185(n*a(n-1))` with `a(0)=1`
-/

namespace A345902.P3136713196244100504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004185 ((n : ℤ) * a (n - 1)).toNat

end

end A345902.P3136713196244100504

/-! ## A345902.P5289346190732314343

`A004185(a(n-1)/n^(-1))` with `a(0)=1`
-/

namespace A345902.P5289346190732314343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004185 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ))).toNat

end

end A345902.P5289346190732314343

/-!
# A345903: The succession of prime and nonprime terms is kept when you consider the sequence formed by the successive sums a(n) + a(n+1). This is the lexicographically earliest sequence of distinct positive terms with this property.

The programs for A345903, there is no canonical definition to state claims against.
-/

/-! ## A345903.P6055684269185118581

`A262388(n+1)+A121373(A000079(n))`
-/

namespace A345903.P6055684269185118581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262388 (n + 1) + A121373 (A000079 n).toNat

end

end A345903.P6055684269185118581

/-!
# A345905: Primes p such that 11*p is the concatenation of an emirp and its reverse.

The programs for A345905, there is no canonical definition to state claims against.
-/

/-! ## A345905.P17748427781468901023

`record[A240453(A006567(n+3))]`
-/

namespace A345905.P17748427781468901023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240453 (A006567 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345905.P17748427781468901023

/-! ## A345905.P3659172682109429236

`p?[A066492(A006567(n+1))]`
-/

namespace A345905.P3659172682109429236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (A006567 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345905.P3659172682109429236

/-! ## A345905.P12100554247274407671

`p?[A066492(eq[n, A178546(n)])]`
-/

namespace A345905.P12100554247274407671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178546 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345905.P12100554247274407671

/-! ## A345905.P17523124029611210394

`p?[A066492(p?[A068893(n+1)])]`
-/

namespace A345905.P17523124029611210394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345905.P17523124029611210394

/-! ## A345905.P16596914459231770247

`p?[A066492(p?[A350867(n+1)])]`
-/

namespace A345905.P16596914459231770247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345905.P16596914459231770247

/-!
# A345906: Numbers with at least 4 digits such that any 3-digit substring forms a prime number.

The programs for A345906, there is no canonical definition to state claims against.
-/

/-! ## A345906.P8866942486927096591

`A267277(n+1)+A094636(A249335(2*(n+1)))`
-/

namespace A345906.P8866942486927096591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267277 (n + 1) + A094636 (A249335 (2 * (n + 1))).toNat

end

end A345906.P8866942486927096591

/-!
# A345907: Triangle giving the main antidiagonals of the matrices counting integer compositions by length and alternating sum (A345197).

The programs for A345907, there is no canonical definition to state claims against.
-/

/-! ## A345907.P1247232091241488993

`A101979(A333213(n)^A027358(n+1))`
-/

namespace A345907.P1247232091241488993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101979 (SequenceMachineLib.roundAway ((A333213 n : ℚ) ^ (A027358 (n + 1) : ℤ))).toNat

end

end A345907.P1247232091241488993

/-! ## A345907.P15137840384983878405

`and(A005136(A309086(n)), A033185(n+1))`
-/

namespace A345907.P15137840384983878405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005136 (A309086 n).toNat) (A033185 (n + 1))

end

end A345907.P15137840384983878405

/-!
# A345908: Traces of the matrices (A345197) counting integer compositions by length and alternating sum.

The programs for A345908, there is no canonical definition to state claims against.
-/

/-! ## A345908.P7956599547878457949

`Δ[A163493(abs(1-n))%A011557(n)]`
-/

namespace A345908.P7956599547878457949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163493 |1 - (n : ℤ)|.toNat) (A011557 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A345908.P7956599547878457949

/-!
# A345909: Numbers k such that the k-th composition in standard order (row k of A066099) has alternating sum 1.

The programs for A345909, the canonical program `A345909.P9109467703785145948` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345909 has offset 1).

The definition of A345909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345909.P9109467703785145948

`eq[1, A124754(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A345909

/-- `eq[1, A124754(n)]` -/
def P9109467703785145948.Spec : Prop :=
  ∀ n, (P9109467703785145948.a n : ℤ) = A345909 (n + 1)

theorem P9109467703785145948.correct : P9109467703785145948.Spec := by
  intro n
  simp only [A345909, Nat.add_sub_cancel]

end A345909

/-! ## A345909.P12643225449335868647

`eq[1, A145037(A006068(n))]`
-/

namespace A345909.P12643225449335868647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A006068 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345909.P12643225449335868647

namespace A345909

/-- `eq[1, A145037(A006068(n))]` -/
def P12643225449335868647.Spec : Prop :=
  ∀ n, (P12643225449335868647.a n : ℤ) = A345909 (n + 1)

end A345909

/-! ## A345909.P14051939637535419002

`filter[A004442(n), A124754(#)]`
-/

namespace A345909.P14051939637535419002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A124754 (f1 j).toNat = 1) n)

end

end A345909.P14051939637535419002

namespace A345909

/-- `filter[A004442(n), A124754(#)]` -/
def P14051939637535419002.Spec : Prop :=
  ∀ n, P14051939637535419002.a n = A345909 (n + 1)

end A345909

/-! ## A345909.P1361815427084439594

`filter[A153152(n), A124754(#)]`
-/

namespace A345909.P1361815427084439594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A124754 (f1 j).toNat = 1) n)

end

end A345909.P1361815427084439594

namespace A345909

/-- `filter[A153152(n), A124754(#)]` -/
def P1361815427084439594.Spec : Prop :=
  ∀ n, P1361815427084439594.a n = A345909 (n + 1)

end A345909

/-! ## A345909.P10832110903248457741

`eq[-A010059(n), A085144(n)]`
-/

namespace A345909.P10832110903248457741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345909.P10832110903248457741

namespace A345909

/-- `eq[-A010059(n), A085144(n)]` -/
def P10832110903248457741.Spec : Prop :=
  ∀ n, (P10832110903248457741.a n : ℤ) = A345909 (n + 1)

end A345909

/-! ## A345909.P5631047670261365447

`eq[A346633(n)+1, A209281(n+1)]`
-/

namespace A345909.P5631047670261365447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345909.P5631047670261365447

namespace A345909

/-- `eq[A346633(n)+1, A209281(n+1)]` -/
def P5631047670261365447.Spec : Prop :=
  ∀ n, (P5631047670261365447.a n : ℤ) = A345909 (n + 1)

end A345909

/-! ## A345909.P11369961788864915205

`eq[A346633(n)+2, A089215(n+1)]`
-/

namespace A345909.P11369961788864915205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089215 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345909.P11369961788864915205

namespace A345909

/-- `eq[A346633(n)+2, A089215(n+1)]` -/
def P11369961788864915205.Spec : Prop :=
  ∀ n, (P11369961788864915205.a n : ℤ) = A345909 (n + 1)

end A345909

/-! ## A345909.P6403570148464876004

`eq[0, A037861(A038558(n))]`
-/

namespace A345909.P6403570148464876004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A038558 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345909.P6403570148464876004

namespace A345909

/-- `eq[0, A037861(A038558(n))]` -/
def P6403570148464876004.Spec : Prop :=
  ∀ n, (P6403570148464876004.a n : ℤ) = A345909 (n + 1)

end A345909

/-! ## A345909.P423772396790142866

`eq[1, A085144(A000069(n+1))]`
-/

namespace A345909.P423772396790142866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A000069 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345909.P423772396790142866

namespace A345909

/-- `eq[1, A085144(A000069(n+1))]` -/
def P423772396790142866.Spec : Prop :=
  ∀ n, (P423772396790142866.a n : ℤ) = A345909 (n + 1)

end A345909

/-! ## A345909.P12962084962488407152

`eq[1, A085144(eq[1, A010060(n)])]`
-/

namespace A345909.P12962084962488407152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345909.P12962084962488407152

namespace A345909

/-- `eq[1, A085144(eq[1, A010060(n)])]` -/
def P12962084962488407152.Spec : Prop :=
  ∀ n, (P12962084962488407152.a n : ℤ) = A345909 (n + 1)

end A345909

/-! ## A345909.P13447888571792853434

`eq[1, A085144(eq[2, A001285(n)])]`
-/

namespace A345909.P13447888571792853434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345909.P13447888571792853434

namespace A345909

/-- `eq[1, A085144(eq[2, A001285(n)])]` -/
def P13447888571792853434.Spec : Prop :=
  ∀ n, (P13447888571792853434.a n : ℤ) = A345909 (n + 1)

end A345909

/-! ## A345909.P13552591866696124022

`eq[0, A037861(A268716(n))]`
-/

namespace A345909.P13552591866696124022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A268716 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345909.P13552591866696124022

namespace A345909

/-- `eq[0, A037861(A268716(n))]` -/
def P13552591866696124022.Spec : Prop :=
  ∀ n, (P13552591866696124022.a n : ℤ) = A345909 (n + 1)

end A345909

/-!
# A345910: Numbers k such that the k-th composition in standard order (row k of A066099) has alternating sum -1.

The programs for A345910, there is no canonical definition to state claims against.
-/

/-! ## A345910.P5191742223116614398

`eq[1, -A124754(n)]`
-/

namespace A345910.P5191742223116614398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345910.P5191742223116614398

/-! ## A345910.P4352125928708805858

`eq[2, A037861(A268716(n))]`
-/

namespace A345910.P4352125928708805858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A268716 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345910.P4352125928708805858

/-! ## A345910.P4994151929090518971

`eq[A124754(n), A260196(n)]`
-/

namespace A345910.P4994151929090518971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345910.P4994151929090518971

/-! ## A345910.P17933038943155984578

`eq[0, A124754(A000069(n+1))]`
-/

namespace A345910.P17933038943155984578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A000069 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345910.P17933038943155984578

/-! ## A345910.P4383093151465142006

`eq[2, A085144(A001969(n+1))]`
-/

namespace A345910.P4383093151465142006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A001969 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345910.P4383093151465142006

/-! ## A345910.P9858984787178127862

`eq[1, A145037(A006068(n))+2]`
-/

namespace A345910.P9858984787178127862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A006068 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345910.P9858984787178127862

/-! ## A345910.P13837053783885362689

`eq[A124754(n), A153881(n+1)]`
-/

namespace A345910.P13837053783885362689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345910.P13837053783885362689

/-! ## A345910.P18395877454378384449

`eq[A089215(n+1), A346633(n)]`
-/

namespace A345910.P18395877454378384449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345910.P18395877454378384449

/-! ## A345910.P1636391653209390724

`eq[1, A000038(n)-A124754(n)]`
-/

namespace A345910.P1636391653209390724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345910.P1636391653209390724

/-! ## A345910.P5713112638609802233

`eq[2, A113679(n)*A124754(n)]`
-/

namespace A345910.P5713112638609802233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 n * A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345910.P5713112638609802233

/-!
# A345911: Numbers k such that the k-th composition in standard order (row k of A066099) has reverse-alternating sum 1.

The programs for A345911, there is no canonical definition to state claims against.
-/

/-! ## A345911.P6770222177973440436

`eq[0, A124754(2*n+1)]`
-/

namespace A345911.P6770222177973440436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345911.P6770222177973440436

/-! ## A345911.P2685404470845842148

`eq[A010059(n), A085144(n)]`
-/

namespace A345911.P2685404470845842148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345911.P2685404470845842148

/-! ## A345911.P5817117253911907477

`eq[-A124754(n), A106400(n)]`
-/

namespace A345911.P5817117253911907477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A124754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345911.P5817117253911907477

/-! ## A345911.P6091073950487846302

`eq[1, A085144(n)+A010060(n)]`
-/

namespace A345911.P6091073950487846302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n + A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345911.P6091073950487846302

/-! ## A345911.P8681994685378955236

`eq[2, A085144(n)+A001285(n)]`
-/

namespace A345911.P8681994685378955236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n + A001285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345911.P8681994685378955236

/-! ## A345911.P4943083073148198514

`eq[1, A085144(n*A001285(n))]`
-/

namespace A345911.P4943083073148198514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 ((n : ℤ) * A001285 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345911.P4943083073148198514

/-! ## A345911.P9681857624322402102

`eq[1, A085144(A001969(2*(n+1)))]`
-/

namespace A345911.P9681857624322402102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A001969 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345911.P9681857624322402102

/-! ## A345911.P6035229872641304214

`eq[1, A037861(A268716(2*n+1))]`
-/

namespace A345911.P6035229872641304214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A268716 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345911.P6035229872641304214

/-! ## A345911.P4155489065879862784

`lt[abs(A145037(A006068(2*n+1))), 1]`
-/

namespace A345911.P4155489065879862784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145037 (A006068 (2 * n + 1)).toNat|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345911.P4155489065879862784

/-! ## A345911.P15572268131412339972

`eq[A209281(2*(n+1)), A346633(2*n+1)]`
-/

namespace A345911.P15572268131412339972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345911.P15572268131412339972

/-!
# A345912: Numbers k such that the k-th composition in standard order (row k of A066099) has reverse-alternating sum -1.

The programs for A345912, there is no canonical definition to state claims against.
-/

/-! ## A345912.P13484537422054175202

`eq[floor(acot(n)), A124754(2*n)]`
-/

namespace A345912.P13484537422054175202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345912.P13484537422054175202

/-! ## A345912.P4097594024932819424

`eq[0, A124754(A004277(n))]`
-/

namespace A345912.P4097594024932819424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345912.P4097594024932819424

/-! ## A345912.P5020245306527031891

`eq[0, A124754(A017077(n))]`
-/

namespace A345912.P5020245306527031891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A017077 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345912.P5020245306527031891

/-! ## A345912.P9013436412742220444

`eq[A106400(n), A124754(n)]`
-/

namespace A345912.P9013436412742220444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345912.P9013436412742220444

/-! ## A345912.P869104395424596660

`eq[-A001285(n), A085144(n)]`
-/

namespace A345912.P869104395424596660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345912.P869104395424596660

/-! ## A345912.P14324656689254450695

`eq[A085144(n)+2, A010059(n)]`
-/

namespace A345912.P14324656689254450695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345912.P14324656689254450695

/-! ## A345912.P2570743195188922039

`eq[A000007(n), A124754(2*n)]`
-/

namespace A345912.P2570743195188922039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345912.P2570743195188922039

/-! ## A345912.P325059612031907163

`eq[A000038(n), A124754(2*n)]`
-/

namespace A345912.P325059612031907163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345912.P325059612031907163

/-! ## A345912.P12363116520301235625

`lt[A037861(A006068(2*n))², 1]`
-/

namespace A345912.P12363116520301235625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A006068 (2 * n)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345912.P12363116520301235625

/-! ## A345912.P11548926200992495552

`eq[1, A085144(A001969(2*n+1))]`
-/

namespace A345912.P11548926200992495552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A001969 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345912.P11548926200992495552

/-!
# A345913: Numbers k such that the k-th composition in standard order (row k of A066099) has alternating sum >= 0.

The programs for A345913, there is no canonical definition to state claims against.
-/

/-! ## A345913.P3500601508409132344

`lt[-1, A124754(n)]`
-/

namespace A345913.P3500601508409132344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345913.P3500601508409132344

/-! ## A345913.P4754882422800312198

`comp[A345919(n+1)]`
-/

namespace A345913.P4754882422800312198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345913.P4754882422800312198

/-! ## A345913.P5083158644500273276

`lt[n/3, A089215(n+1)!]`
-/

namespace A345913.P5083158644500273276
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A089215 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A345913.P5083158644500273276

/-! ## A345913.P13156258526126738850

`comp[lt[4^A209281(n+1), n]]`
-/

namespace A345913.P13156258526126738850
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A209281 (n + 1) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℚ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A345913.P13156258526126738850

/-! ## A345913.P2491325693586336557

`lt[0, a(floor(n/2))-A106400(n)]` with `a(0)=1`
-/

namespace A345913.P2491325693586336557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat - A106400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345913.P2491325693586336557

/-! ## A345913.P3092743741340331695

`lt[A037861(A268716(n)), 2]`
-/

namespace A345913.P3092743741340331695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A268716 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345913.P3092743741340331695

/-! ## A345913.P12220220105913103964

`lt[n, A255302(A006068(n))]`
-/

namespace A345913.P12220220105913103964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255302 (A006068 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345913.P12220220105913103964

/-! ## A345913.P17287817175378255677

`lt[A085144(A001969(n+1)), 2]`
-/

namespace A345913.P17287817175378255677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A001969 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345913.P17287817175378255677

/-! ## A345913.P10514040219947864546

`lt[n, A000302(A209281(n+1))]`
-/

namespace A345913.P10514040219947864546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A209281 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345913.P10514040219947864546

/-! ## A345913.P4088130316120378897

`∪[A344619(n+1), A345917(n+1)]`
-/

namespace A345913.P4088130316120378897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345913.P4088130316120378897

/-!
# A345914: Numbers k such that the k-th composition in standard order (row k of A066099) has reverse-alternating sum >= 0.

The programs for A345914, there is no canonical definition to state claims against.
-/

/-! ## A345914.P8644614562020067810

`lt[-1, (-1)^n*a(floor(n/2))+1]` with `a(0)=0`
-/

namespace A345914.P8644614562020067810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (-1) ^ n * f2 ⌊(n : ℚ) / 2⌋.toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345914.P8644614562020067810

/-! ## A345914.P2320111917615415610

`comp[lt[a(floor(n/2))/(-1)^n+1, 0]]` with `a(0)=0`
-/

namespace A345914.P2320111917615415610
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat / ((-1) ^ n : ℚ) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℚ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A345914.P2320111917615415610

/-! ## A345914.P15323389817776418709

`comp[lt[1, (-1)^n*a(floor(n/2))-2]]` with `a(0)=0`
-/

namespace A345914.P15323389817776418709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  (-1) ^ n * f3 ⌊(n : ℚ) / 2⌋.toNat - 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A345914.P15323389817776418709

/-! ## A345914.P12339029285669309564

`comp[A345920(n+1)]`
-/

namespace A345914.P12339029285669309564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345914.P12339029285669309564

/-! ## A345914.P9318082168949713212

`lt[-1, a(floor(n/2))*A033999(n)+1]` with `a(0)=0`
-/

namespace A345914.P9318082168949713212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat * A033999 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345914.P9318082168949713212

/-! ## A345914.P2570296396667301525

`lt[n, A102376(A341916(n))]`
-/

namespace A345914.P2570296396667301525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (A341916 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345914.P2570296396667301525

/-! ## A345914.P9120329705454433547

`comp[record[A345920(A286622(n))]]`
-/

namespace A345914.P9120329705454433547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345920 (A286622 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345914.P9120329705454433547

/-! ## A345914.P15340500850656357347

`comp[record[A345920(A328477(n))]]`
-/

namespace A345914.P15340500850656357347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345920 (A328477 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345914.P15340500850656357347

/-! ## A345914.P10136438932856592271

`lt[-A001285(n), A085144(n)]`
-/

namespace A345914.P10136438932856592271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345914.P10136438932856592271

/-! ## A345914.P18322756555196545468

`lt[-A085144(n), A268727(n)]`
-/

namespace A345914.P18322756555196545468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A085144 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268727 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345914.P18322756555196545468

/-!
# A345915: Numbers k such that the k-th composition in standard order (row k of A066099) has alternating sum <= 0.

The programs for A345915, there is no canonical definition to state claims against.
-/

/-! ## A345915.P14915185089709736410

`lt[A124754(n), 1]`
-/

namespace A345915.P14915185089709736410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345915.P14915185089709736410

/-! ## A345915.P14308579537680292101

`lt[a(floor(n/2))-A106400(n), 1]` with `a(0)=0`
-/

namespace A345915.P14308579537680292101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - A106400 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345915.P14308579537680292101

/-! ## A345915.P822410538195348011

`record[∑{e}[or(7, -A124754(n+1)), (n+1)/#]]`
-/

namespace A345915.P822410538195348011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (-A124754 (n + 1))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (n + 1 : ℚ) / (Nat.factorization (f2 n).natAbs p : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345915.P822410538195348011

/-! ## A345915.P15869666477422487001

`lt[0, A037861(A268716(n))]`
-/

namespace A345915.P15869666477422487001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A268716 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345915.P15869666477422487001

/-! ## A345915.P4712751794255232762

`lt[A145037(A006068(n)), 1]`
-/

namespace A345915.P4712751794255232762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A006068 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345915.P4712751794255232762

/-! ## A345915.P8953806804979248317

`comp[A003188(A072600(n+1))]`
-/

namespace A345915.P8953806804979248317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A072600 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345915.P8953806804979248317

/-! ## A345915.P1579208826462919010

`lt[A085144(lt[A106400(n), 0]), 1]`
-/

namespace A345915.P1579208826462919010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A345915.P1579208826462919010

/-! ## A345915.P8103080768438870535

`lt[A085144(lt[1, A001285(n)]), 1]`
-/

namespace A345915.P8103080768438870535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A345915.P8103080768438870535

/-! ## A345915.P16252540686675843474

`lt[A085144(lt[A010059(n), 1]), 1]`
-/

namespace A345915.P16252540686675843474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A345915.P16252540686675843474

/-! ## A345915.P11247341152074568179

`∪[A344619(n+1), A345919(n+1)]`
-/

namespace A345915.P11247341152074568179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345915.P11247341152074568179

/-!
# A345916: Numbers k such that the k-th composition in standard order (row k of A066099) has reverse-alternating sum <= 0.

The programs for A345916, there is no canonical definition to state claims against.
-/

/-! ## A345916.P4383245463920812347

`lt[(-1)^n*a(floor(n/2))+1, 1]` with `a(0)=0`
-/

namespace A345916.P4383245463920812347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (-1) ^ n * f1 ⌊(n : ℚ) / 2⌋.toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345916.P4383245463920812347

/-! ## A345916.P12176275377043832064

`lt[a(floor(n/2))/(-1)^n+1, 1]` with `a(0)=0`
-/

namespace A345916.P12176275377043832064
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat / ((-1) ^ n : ℚ) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A345916.P12176275377043832064

/-! ## A345916.P6383368470186693749

`lt[A085144(n), char[xor(n, 2*n)]]`
-/

namespace A345916.P6383368470186693749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345916.P6383368470186693749

/-! ## A345916.P7629918426161515644

`lt[a(floor(n/2))*A033999(n)+1, 1]` with `a(0)=0`
-/

namespace A345916.P7629918426161515644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat * A033999 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345916.P7629918426161515644

/-! ## A345916.P10461375069383719325

`lt[1-a(floor(n/2))*A165326(n), 1]` with `a(0)=0`
-/

namespace A345916.P10461375069383719325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 ⌊(n : ℚ) / 2⌋.toNat * A165326 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345916.P10461375069383719325

/-! ## A345916.P15959357454572180276

`lt[A145037(A153154(n)), 1]`
-/

namespace A345916.P15959357454572180276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A153154 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345916.P15959357454572180276

/-! ## A345916.P2503995918305758709

`lt[A085144(n), A010059(n)]`
-/

namespace A345916.P2503995918305758709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345916.P2503995918305758709

/-! ## A345916.P14928733674034365165

`lt[A085144(n), cos(A001285(n))]`
-/

namespace A345916.P14928733674034365165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A001285 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A345916.P14928733674034365165

/-! ## A345916.P9406516247823802875

`lt[A085144(n), sin(A106400(n))]`
-/

namespace A345916.P9406516247823802875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A106400 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A345916.P9406516247823802875

/-! ## A345916.P822874545497090963

`lt[A085144(n)+A010060(n), 1]`
-/

namespace A345916.P822874545497090963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n + A010060 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345916.P822874545497090963

/-!
# A345917: Numbers k such that the k-th composition in standard order (row k of A066099) has alternating sum > 0.

The programs for A345917, there is no canonical definition to state claims against.
-/

/-! ## A345917.P622103559827882107

`lt[0, A124754(n)]`
-/

namespace A345917.P622103559827882107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345917.P622103559827882107

/-! ## A345917.P14187292202420239137

`comp[A345915(1+n)]`
-/

namespace A345917.P14187292202420239137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345915 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345917.P14187292202420239137

/-! ## A345917.P5629919432617324363

`record[n-or(7, -A124754(n+1))]`
-/

namespace A345917.P5629919432617324363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor 7 (-A124754 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345917.P5629919432617324363

/-! ## A345917.P13461619961213186974

`lt[0, a(floor(n/2))-A106400(n)]` with `a(0)=0`
-/

namespace A345917.P13461619961213186974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat - A106400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345917.P13461619961213186974

/-! ## A345917.P366288238895670574

`lt[A037861(A006068(n)), 0]`
-/

namespace A345917.P366288238895670574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A006068 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345917.P366288238895670574

/-! ## A345917.P9945726778185596679

`lt[0, A195017(A057335(n))]`
-/

namespace A345917.P9945726778185596679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A057335 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345917.P9945726778185596679

/-! ## A345917.P3924140636371905894

`lt[A037861(A268716(n)), 1]`
-/

namespace A345917.P3924140636371905894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A268716 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345917.P3924140636371905894

/-! ## A345917.P16101042242571451321

`lt[1, A085144(lt[2, A268727(n)])]`
-/

namespace A345917.P16101042242571451321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268727 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345917.P16101042242571451321

/-! ## A345917.P16000094645507467237

`comp[A003188(comp[A072600(n+1)])]`
-/

namespace A345917.P16000094645507467237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345917.P16000094645507467237

/-! ## A345917.P11603970383881242210

`eq[1, ceil(A124754(n)/A000010(n+1))]`
-/

namespace A345917.P11603970383881242210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124754 n : ℚ) / (A000010 (n + 1) : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345917.P11603970383881242210

/-!
# A345918: Numbers k such that the k-th composition in standard order (row k of A066099) has reverse-alternating sum > 0.

The programs for A345918, there is no canonical definition to state claims against.
-/

/-! ## A345918.P8360854850388057639

`lt[0, (-1)^n*a(floor(n/2))+1]` with `a(0)=0`
-/

namespace A345918.P8360854850388057639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (-1) ^ n * f2 ⌊(n : ℚ) / 2⌋.toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345918.P8360854850388057639

/-! ## A345918.P3986652042285703274

`lt[0, a(floor(n/2))/(-1)^n+1]` with `a(0)=0`
-/

namespace A345918.P3986652042285703274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat / ((-1) ^ n : ℚ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A345918.P3986652042285703274

/-! ## A345918.P3359845616283206041

`comp[A345916(n+1)]`
-/

namespace A345918.P3359845616283206041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345918.P3359845616283206041

/-! ## A345918.P9717038231376971252

`lt[0, a(floor(n/2))*A033999(n)+1]` with `a(0)=0`
-/

namespace A345918.P9717038231376971252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat * A033999 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345918.P9717038231376971252

/-! ## A345918.P12720952338323139259

`lt[0, 1-a(floor(n/2))*A062157(n)]` with `a(0)=0`
-/

namespace A345918.P12720952338323139259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 ⌊(n : ℚ) / 2⌋.toNat * A062157 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345918.P12720952338323139259

/-! ## A345918.P3368225152289731297

`lt[0, 1-a(floor(n/2))*A165326(n)]` with `a(0)=0`
-/

namespace A345918.P3368225152289731297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 ⌊(n : ℚ) / 2⌋.toNat * A165326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345918.P3368225152289731297

/-! ## A345918.P5381255117987687427

`lt[0, A085144(A124108(n))]`
-/

namespace A345918.P5381255117987687427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A124108 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345918.P5381255117987687427

/-! ## A345918.P10399930014783160535

`comp[record[A345916(A328388(n))]]`
-/

namespace A345918.P10399930014783160535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345916 (A328388 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345918.P10399930014783160535

/-! ## A345918.P1323757409936499057

`comp[record[A345916(A328576(n))]]`
-/

namespace A345918.P1323757409936499057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345916 (A328576 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345918.P1323757409936499057

/-! ## A345918.P16176630562788314357

`lt[-A010060(n), A085144(n)]`
-/

namespace A345918.P16176630562788314357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345918.P16176630562788314357

/-!
# A345919: Numbers k such that the k-th composition in standard order (row k of A066099) has alternating sum < 0.

The programs for A345919, there is no canonical definition to state claims against.
-/

/-! ## A345919.P8084840679565092442

`lt[A124754(n), 0]`
-/

namespace A345919.P8084840679565092442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345919.P8084840679565092442

/-! ## A345919.P10696032438474138938

`lt[4^A209281(n+1), n]`
-/

namespace A345919.P10696032438474138938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A209281 (n + 1) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A345919.P10696032438474138938

/-! ## A345919.P597720701939465102

`lt[A085144(comp[xor(n, 2*n)]), 0]`
-/

namespace A345919.P597720701939465102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A345919.P597720701939465102

/-! ## A345919.P13018249284960089716

`lt[a(floor(n/2))-A106400(n), 0]` with `a(0)=0`
-/

namespace A345919.P13018249284960089716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - A106400 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345919.P13018249284960089716

/-! ## A345919.P13269121036399896298

`lt[A145037(A006068(n)), 0]`
-/

namespace A345919.P13269121036399896298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A006068 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345919.P13269121036399896298

/-! ## A345919.P7606501579957007010

`lt[1, A037861(A268716(n))]`
-/

namespace A345919.P7606501579957007010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A268716 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345919.P7606501579957007010

/-! ## A345919.P7446373505959345647

`lt[1, A085144(A001969(n+1))]`
-/

namespace A345919.P7446373505959345647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A001969 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345919.P7446373505959345647

/-! ## A345919.P336622814594172042

`lt[1, A037861(2*A006068(n))]`
-/

namespace A345919.P336622814594172042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * A006068 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345919.P336622814594172042

/-! ## A345919.P9622633450203141973

`lt[A000302(A209281(n+1)), n]`
-/

namespace A345919.P9622633450203141973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A209281 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345919.P9622633450203141973

/-! ## A345919.P1693946286377210072

`eq[1, A000005(floor(2^A124754(n))+1)]`
-/

namespace A345919.P1693946286377210072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (⌊(2 : ℚ) ^ (A124754 n : ℤ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345919.P1693946286377210072

/-!
# A345920: Numbers k such that the k-th composition in standard order (row k of A066099) has reverse-alternating sum < 0.

The programs for A345920, there is no canonical definition to state claims against.
-/

/-! ## A345920.P13379967221933288435

`lt[(-1)^n*a(floor(n/2))+1, 0]` with `a(0)=0`
-/

namespace A345920.P13379967221933288435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (-1) ^ n * f1 ⌊(n : ℚ) / 2⌋.toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345920.P13379967221933288435

/-! ## A345920.P6093454401002449175

`lt[a(floor(n/2))/(-1)^n+1, 0]` with `a(0)=0`
-/

namespace A345920.P6093454401002449175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat / ((-1) ^ n : ℚ) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A345920.P6093454401002449175

/-! ## A345920.P16742768544049657562

`lt[1, (-1)^n*a(floor(n/2))-2]` with `a(0)=0`
-/

namespace A345920.P16742768544049657562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (-1) ^ n * f2 ⌊(n : ℚ) / 2⌋.toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345920.P16742768544049657562

/-! ## A345920.P17810530879646441723

`lt[1, a(floor(n/2))/(-1)^n-2]` with `a(0)=0`
-/

namespace A345920.P17810530879646441723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat / ((-1) ^ n : ℚ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A345920.P17810530879646441723

/-! ## A345920.P15556825320029469585

`lt[a(floor(n/2))*A033999(n)+1, 0]` with `a(0)=0`
-/

namespace A345920.P15556825320029469585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat * A033999 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345920.P15556825320029469585

/-! ## A345920.P18046082806686294441

`lt[A102376(A341916(n)), n]`
-/

namespace A345920.P18046082806686294441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (A341916 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345920.P18046082806686294441

/-! ## A345920.P3071055103442433244

`lt[A010060(n), -A085144(n)]`
-/

namespace A345920.P3071055103442433244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A085144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345920.P3071055103442433244

/-! ## A345920.P16649703876532393663

`lt[A085144(A048678(n))+2, 1]`
-/

namespace A345920.P16649703876532393663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A048678 n).toNat + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345920.P16649703876532393663

/-! ## A345920.P16692937464917058990

`lt[A085144(n)+A001285(n), 1]`
-/

namespace A345920.P16692937464917058990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n + A001285 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345920.P16692937464917058990

/-! ## A345920.P3308048135762963547

`lt[A085144(n)+1, A010059(n)]`
-/

namespace A345920.P3308048135762963547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345920.P3308048135762963547

/-!
# A345921: Numbers k such that the k-th composition in standard order (row k of A066099) has alternating sum != 0.

The programs for A345921, there is no canonical definition to state claims against.
-/

/-! ## A345921.P9884094069856383825

`comp[eq[0, (-1)^n*a(floor(n/2))+1]]` with `a(0)=0`
-/

namespace A345921.P9884094069856383825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  (-1) ^ n * f3 ⌊(n : ℚ) / 2⌋.toNat + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A345921.P9884094069856383825

/-! ## A345921.P1697401013111940397

`comp[eq[0, a(floor(n/2))/(-1)^n+1]]` with `a(0)=0`
-/

namespace A345921.P1697401013111940397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 ⌊(n : ℚ) / 2⌋.toNat / ((-1) ^ n : ℚ) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A345921.P1697401013111940397

/-! ## A345921.P5564441608126636772

`comp[A344619(n+1)]`
-/

namespace A345921.P5564441608126636772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345921.P5564441608126636772

/-! ## A345921.P16733662269777067233

`lt[0, abs(A124754(n))]`
-/

namespace A345921.P16733662269777067233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124754 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345921.P16733662269777067233

/-! ## A345921.P7890157188996663286

`comp[floor(A345911(n+1)/2)]`
-/

namespace A345921.P7890157188996663286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A345911 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345921.P7890157188996663286

/-! ## A345921.P7139611866754895777

`comp[record[A344619(A000119(n))]]`
-/

namespace A345921.P7139611866754895777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344619 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345921.P7139611866754895777

/-! ## A345921.P6927370426101898793

`comp[A004526(A345911(n+1))]`
-/

namespace A345921.P6927370426101898793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A345911 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345921.P6927370426101898793

/-! ## A345921.P15318049250839850633

`eq[0, A000007(abs(A124754(n)))]`
-/

namespace A345921.P15318049250839850633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 |A124754 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345921.P15318049250839850633

/-! ## A345921.P5669625548921380266

`lt[0, abs(A145037(A006068(n)))]`
-/

namespace A345921.P5669625548921380266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145037 (A006068 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345921.P5669625548921380266

/-! ## A345921.P16227735771341831233

`eq[0, A000007(A124754(n)²)]`
-/

namespace A345921.P16227735771341831233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A124754 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345921.P16227735771341831233

/-!
# A345922: Numbers k such that the k-th composition in standard order (row k of A066099) has reverse-alternating sum 2.

The programs for A345922, there is no canonical definition to state claims against.
-/

/-! ## A345922.P224014181157178297

`xor(1, A344619(n+2))`
-/

namespace A345922.P224014181157178297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A344619 (n + 2))

end

end A345922.P224014181157178297

/-! ## A345922.P1371316854633256859

`eq[0, A124754(4*n+2)]`
-/

namespace A345922.P1371316854633256859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345922.P1371316854633256859

/-! ## A345922.P6040506820185124684

`A004442(A344619(n+2))`
-/

namespace A345922.P6040506820185124684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A344619 (n + 2)).toNat

end

end A345922.P6040506820185124684

/-! ## A345922.P4501289194240199156

`record[gcd(n, A124754(A016825(n)))]`
-/

namespace A345922.P4501289194240199156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A124754 (A016825 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345922.P4501289194240199156

/-! ## A345922.P16763966083678674704

`eq[A010059(n)+1, A085144(n)]`
-/

namespace A345922.P16763966083678674704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345922.P16763966083678674704

/-! ## A345922.P457928237945201870

`eq[2, A085144(n)+A010060(n)]`
-/

namespace A345922.P457928237945201870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n + A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345922.P457928237945201870

/-! ## A345922.P18352226068729519730

`eq[2, A085144(n*A001285(n))]`
-/

namespace A345922.P18352226068729519730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 ((n : ℤ) * A001285 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345922.P18352226068729519730

/-! ## A345922.P1184888736401798272

`eq[3-A001285(n), A085144(n)]`
-/

namespace A345922.P1184888736401798272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A001285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345922.P1184888736401798272

/-! ## A345922.P18190075487211026084

`xor(1, eq[A000007(n), A124754(n)])`
-/

namespace A345922.P18190075487211026084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A345922.P18190075487211026084

/-! ## A345922.P8190207413109557500

`eq[A085144(2*n+1)+2, A254377(2*n+1)]`
-/

namespace A345922.P8190207413109557500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345922.P8190207413109557500

/-!
# A345923: Numbers k such that the k-th composition in standard order (row k of A066099) has reverse-alternating sum -2.

The programs for A345923, there is no canonical definition to state claims against.
-/

/-! ## A345923.P8066411168150263658

`eq[floor(acot(n)), A124754(4*n)]`
-/

namespace A345923.P8066411168150263658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345923.P8066411168150263658

/-! ## A345923.P7386162595822024224

`eq[0, A124754(A008574(n))]`
-/

namespace A345923.P7386162595822024224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345923.P7386162595822024224

/-! ## A345923.P8916570381197943319

`eq[2, A106400(n)*A124754(n)]`
-/

namespace A345923.P8916570381197943319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n * A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345923.P8916570381197943319

/-! ## A345923.P2270566284543623233

`eq[A010059(n), A085144(8*n)]`
-/

namespace A345923.P2270566284543623233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345923.P2270566284543623233

/-! ## A345923.P4852503394173345925

`eq[A001285(n)+1, A085144(2*n+1)]`
-/

namespace A345923.P4852503394173345925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345923.P4852503394173345925

/-! ## A345923.P1374453020087415018

`eq[A010060(n)+2, A085144(2*n+1)]`
-/

namespace A345923.P1374453020087415018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345923.P1374453020087415018

/-! ## A345923.P14281897233932742921

`eq[A254377(2*n+1)+2, A085144(2*n+1)]`
-/

namespace A345923.P14281897233932742921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345923.P14281897233932742921

/-! ## A345923.P13478853829771109156

`eq[A001285(n), A085144(A008586(n)+1)]`
-/

namespace A345923.P13478853829771109156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A008586 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345923.P13478853829771109156

/-! ## A345923.P2959243095320526098

`eq[2, A085144(A005408(n))-A010060(n)]`
-/

namespace A345923.P2959243095320526098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A005408 n).toNat - A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345923.P2959243095320526098

/-! ## A345923.P16250489193478595196

`eq[2*A124754(A004277(n)), A124754(n)]`
-/

namespace A345923.P16250489193478595196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124754 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345923.P16250489193478595196

/-!
# A345924: Numbers k such that the k-th composition in standard order (row k of A066099) has alternating sum -2.

The programs for A345924, there is no canonical definition to state claims against.
-/

/-! ## A345924.P2564784023941049811

`eq[2, -A124754(n)]`
-/

namespace A345924.P2564784023941049811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345924.P2564784023941049811

/-! ## A345924.P2376844179834597158

`eq[2, A037861(A006068(n))]`
-/

namespace A345924.P2376844179834597158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A006068 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345924.P2376844179834597158

/-! ## A345924.P13529173450108250018

`eq[3, A037861(A268716(n))]`
-/

namespace A345924.P13529173450108250018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A268716 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345924.P13529173450108250018

/-! ## A345924.P6265334368109556272

`eq[A113679(n), A124754(n)]`
-/

namespace A345924.P6265334368109556272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345924.P6265334368109556272

/-! ## A345924.P6678031866188496763

`eq[3, A085144(A001969(n+1))]`
-/

namespace A345924.P6678031866188496763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A001969 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345924.P6678031866188496763

/-! ## A345924.P5304738257229684387

`eq[A124754(n)+2, A000007(n)]`
-/

namespace A345924.P5304738257229684387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345924.P5304738257229684387

/-! ## A345924.P12735270172649521136

`eq[2, A124754(n)*A260196(n)]`
-/

namespace A345924.P12735270172649521136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n * A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345924.P12735270172649521136

/-! ## A345924.P13355570676117626975

`eq[A124754(n)+2, A000038(n)²]`
-/

namespace A345924.P13355570676117626975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345924.P13355570676117626975

/-! ## A345924.P8986200238898782753

`eq[A089215(n+1)+1, A346633(n)]`
-/

namespace A345924.P8986200238898782753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089215 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345924.P8986200238898782753

/-! ## A345924.P15879758932069523316

`eq[A209281(n+1)+2, A346633(n)]`
-/

namespace A345924.P15879758932069523316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345924.P15879758932069523316

/-!
# A345925: Numbers k such that the k-th composition in standard order (row k of A066099) has alternating sum 2.

The programs for A345925, there is no canonical definition to state claims against.
-/

/-! ## A345925.P5731966015286568086

`eq[2, A124754(n)]`
-/

namespace A345925.P5731966015286568086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345925.P5731966015286568086

/-! ## A345925.P6047814916302183800

`eq[2, A145037(A006068(n))]`
-/

namespace A345925.P6047814916302183800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A006068 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345925.P6047814916302183800

/-! ## A345925.P2902607597572891024

`eq[2, A085144(A000069(n+1))]`
-/

namespace A345925.P2902607597572891024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A000069 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345925.P2902607597572891024

/-! ## A345925.P14036706178157900991

`eq[1, A037861(A268716(n))+2]`
-/

namespace A345925.P14036706178157900991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A268716 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345925.P14036706178157900991

/-! ## A345925.P17474747357813517402

`eq[2, A037861(2*A038558(n))]`
-/

namespace A345925.P17474747357813517402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * A038558 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345925.P17474747357813517402

/-! ## A345925.P3808488206253563140

`eq[2, A085144(eq[1, A010060(n)])]`
-/

namespace A345925.P3808488206253563140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345925.P3808488206253563140

/-! ## A345925.P9502779627838316632

`eq[2, A085144(eq[2, A001285(n)])]`
-/

namespace A345925.P9502779627838316632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345925.P9502779627838316632

/-! ## A345925.P381660549518233064

`eq[1, A085144(A001969(n+1))+2]`
-/

namespace A345925.P381660549518233064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A001969 (n + 1)).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345925.P381660549518233064

/-! ## A345925.P1804469136608378022

`eq[A346633(n)+2, A209281(n+1)]`
-/

namespace A345925.P1804469136608378022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345925.P1804469136608378022

/-! ## A345925.P9867433281168946643

`eq[2, A085144(A010059(n)+2*n)]`
-/

namespace A345925.P9867433281168946643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A010059 n + (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345925.P9867433281168946643

/-!
# A345927: Alternating sum of the binary expansion of n (row n of A030190). Replace 2^k with (-1)^(A070939(n)-k) in the binary expansion of n (compare to the definition of A065359).

The programs for A345927, the canonical program `A345927.P11668894418822586614` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345927 has offset 0).

The definition of A345927 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345927.P11668894418822586614

`(-1)^(A070939(n)-1)*A065359(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A345927

/-- `(-1)^(A070939(n)-1)*A065359(n)` -/
def P11668894418822586614.Spec : Prop :=
  ∀ n, P11668894418822586614.a n = (A345927 n : ℚ)

end A345927

/-! ## A345927.P15568707786924153860

`A065359(A030101(n))`
-/

namespace A345927.P15568707786924153860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A030101 n).toNat

end

end A345927.P15568707786924153860

namespace A345927

/-- `A065359(A030101(n))` -/
def P15568707786924153860.Spec : Prop :=
  ∀ n, P15568707786924153860.a n = A345927 n

end A345927

/-! ## A345927.P14704949945305780284

`A065359(A055944(n)-n)`
-/

namespace A345927.P14704949945305780284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A055944 n - (n : ℤ)).toNat

end

end A345927.P14704949945305780284

namespace A345927

/-- `A065359(A055944(n)-n)` -/
def P14704949945305780284.Spec : Prop :=
  ∀ n, P14704949945305780284.a n = A345927 n

end A345927

/-! ## A345927.P202150447304819807

`A065359(n-A055945(n))`
-/

namespace A345927.P202150447304819807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 ((n : ℤ) - A055945 n).toNat

end

end A345927.P202150447304819807

namespace A345927

/-- `A065359(n-A055945(n))` -/
def P202150447304819807.Spec : Prop :=
  ∀ n, P202150447304819807.a n = A345927 n

end A345927

/-! ## A345927.P2390371168466070785

`A065359(xor(n, A175919(n)))`
-/

namespace A345927.P2390371168466070785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (Int.xor (n : ℤ) (A175919 n)).toNat

end

end A345927.P2390371168466070785

namespace A345927

/-- `A065359(xor(n, A175919(n)))` -/
def P2390371168466070785.Spec : Prop :=
  ∀ n, P2390371168466070785.a n = A345927 n

end A345927

/-! ## A345927.P5278050131055364652

`-(A065359(n)/A065359(2^ceil(log2(n+1))))`
-/

namespace A345927.P5278050131055364652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A065359 n : ℚ) / (A065359 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat : ℚ))

end

end A345927.P5278050131055364652

namespace A345927

/-- `-(A065359(n)/A065359(2^ceil(log2(n+1))))` -/
def P5278050131055364652.Spec : Prop :=
  ∀ n, P5278050131055364652.a n = (A345927 n : ℚ)

end A345927

/-! ## A345927.P5781811240634665013

`A065359(A053644(n))*A065359(n)`
-/

namespace A345927.P5781811240634665013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A053644 n).toNat * A065359 n

end

end A345927.P5781811240634665013

namespace A345927

/-- `A065359(A053644(n))*A065359(n)` -/
def P5781811240634665013.Spec : Prop :=
  ∀ n, P5781811240634665013.a n = A345927 n

end A345927

/-! ## A345927.P11959776376863969460

`A401409(A378299(n))`
-/

namespace A345927.P11959776376863969460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401409 (A378299 n).toNat

end

end A345927.P11959776376863969460

namespace A345927

/-- `A401409(A378299(n))` -/
def P11959776376863969460.Spec : Prop :=
  ∀ n, P11959776376863969460.a n = A345927 n

end A345927

/-! ## A345927.P12177810348402831078

`A065359(A325401(2*n))`
-/

namespace A345927.P12177810348402831078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A325401 (2 * n)).toNat

end

end A345927.P12177810348402831078

namespace A345927

/-- `A065359(A325401(2*n))` -/
def P12177810348402831078.Spec : Prop :=
  ∀ n, P12177810348402831078.a n = A345927 n

end A345927

/-! ## A345927.P7918276339364286661

`A065359(A057889(A004767(n)))`
-/

namespace A345927.P7918276339364286661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A057889 (A004767 n).toNat).toNat

end

end A345927.P7918276339364286661

namespace A345927

/-- `A065359(A057889(A004767(n)))` -/
def P7918276339364286661.Spec : Prop :=
  ∀ n, P7918276339364286661.a n = A345927 n

end A345927

/-! ## A345927.P12207063456962329575

`A065359(A057889(A017101(n)))`
-/

namespace A345927.P12207063456962329575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A057889 (A017101 n).toNat).toNat

end

end A345927.P12207063456962329575

namespace A345927

/-- `A065359(A057889(A017101(n)))` -/
def P12207063456962329575.Spec : Prop :=
  ∀ n, P12207063456962329575.a n = A345927 n

end A345927

/-! ## A345927.P880897923353291621

`A065359(n*A053644(n))`
-/

namespace A345927.P880897923353291621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 ((n : ℤ) * A053644 n).toNat

end

end A345927.P880897923353291621

namespace A345927

/-- `A065359(n*A053644(n))` -/
def P880897923353291621.Spec : Prop :=
  ∀ n, P880897923353291621.a n = A345927 n

end A345927

/-! ## A345927.P9184087062675986620

`A131851(A030101(A000695(n)))`
-/

namespace A345927.P9184087062675986620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A030101 (A000695 n).toNat).toNat

end

end A345927.P9184087062675986620

namespace A345927

/-- `A131851(A030101(A000695(n)))` -/
def P9184087062675986620.Spec : Prop :=
  ∀ n, P9184087062675986620.a n = A345927 n

end A345927

/-!
# A345930: a(n) = A344756(A276086(n)).

The programs for A345930, there is no canonical definition to state claims against.
-/

/-! ## A345930.P11954797019686071225

`A327860(n+1)/A346469(n+1)`
-/

namespace A345930.P11954797019686071225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327860 (n + 1) : ℚ) / (A346469 (n + 1) : ℚ)

end

end A345930.P11954797019686071225

/-! ## A345930.P11142328128075043462

`A327860(n+1)/gcd(A327860(n+1), A329029(n+1))`
-/

namespace A345930.P11142328128075043462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327860 (n + 1) : ℚ) / (Int.gcd (A327860 (n + 1)) (A329029 (n + 1)) : ℚ)

end

end A345930.P11142328128075043462

/-! ## A345930.P2374197204490005909

`A344756(A276086(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345930.P2374197204490005909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344756 (A276086 (n + 1)).toNat

end

end A345930.P2374197204490005909

/-! ## A345930.P12244462137002771073

`A327860(n+1)/A340070(A276086(n+1))`
-/

namespace A345930.P12244462137002771073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327860 (n + 1) : ℚ) / (A340070 (A276086 (n + 1)).toNat : ℚ)

end

end A345930.P12244462137002771073

/-! ## A345930.P17795171737227500658

`A344756(A351225(n+1)+n+1)`
-/

namespace A345930.P17795171737227500658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344756 (A351225 (n + 1) + (n + 1 : ℤ)).toNat

end

end A345930.P17795171737227500658

/-!
# A345931: a(n) = gcd(n, A002034(n)), where A002034(n) gives the smallest positive integer k such that n divides k!.

The programs for A345931, there is no canonical definition to state claims against.
-/

/-! ## A345931.P17431994501249768998

`(n+1)/A345933(n+1)`
-/

namespace A345931.P17431994501249768998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A345933 (n + 1) : ℚ)

end

end A345931.P17431994501249768998

/-! ## A345931.P4931393582440994572

`gcd(n+1, A002034(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345931.P4931393582440994572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002034 (n + 1))

end

end A345931.P4931393582440994572

/-! ## A345931.P11159594171980712029

`A002034(n+1)/A345932(n+1)`
-/

namespace A345931.P11159594171980712029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (n + 1) : ℚ) / (A345932 (n + 1) : ℚ)

end

end A345931.P11159594171980712029

/-! ## A345931.P15312753943086901508

`gcd(A002034(n+1), A005915(n))`
-/

namespace A345931.P15312753943086901508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002034 (n + 1)) (A005915 n)

end

end A345931.P15312753943086901508

/-! ## A345931.P2642133351939370257

`gcd(A000027(n+1), A061243(n+1))`
-/

namespace A345931.P2642133351939370257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A061243 (n + 1))

end

end A345931.P2642133351939370257

/-! ## A345931.P2727496949121681344

`gcd(1-A000027(n+2), A072480(n+1))`
-/

namespace A345931.P2727496949121681344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A000027 (n + 2)) (A072480 (n + 1))

end

end A345931.P2727496949121681344

/-! ## A345931.P4580024968131439812

`(A034699(n+1)-A057110(n+1))/A345932(n+1)`
-/

namespace A345931.P4580024968131439812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034699 (n + 1) - A057110 (n + 1) : ℚ) / (A345932 (n + 1) : ℚ)

end

end A345931.P4580024968131439812

/-! ## A345931.P8016145996417087318

`gcd(A064760(n+1), A220556(n+1))`
-/

namespace A345931.P8016145996417087318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064760 (n + 1)) (A220556 (n + 1))

end

end A345931.P8016145996417087318

/-! ## A345931.P5786565015954876491

`gcd(A062776(n+1), A064760(n+1))`
-/

namespace A345931.P5786565015954876491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062776 (n + 1)) (A064760 (n + 1))

end

end A345931.P5786565015954876491

/-! ## A345931.P14467331601433932262

`gcd(A061243(n+1)+A224327(n+1)², A224327(n+1))`
-/

namespace A345931.P14467331601433932262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061243 (n + 1) + A224327 (n + 1) ^ 2) (A224327 (n + 1))

end

end A345931.P14467331601433932262

/-!
# A345932: a(n) = A002034(n) / gcd(n, A002034(n)), where A002034(n) gives the smallest positive integer k such that n divides k!.

The programs for A345932, there is no canonical definition to state claims against.
-/

/-! ## A345932.P3020696052792791549

`A002034(n+1)/A345931(n+1)`
-/

namespace A345932.P3020696052792791549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (n + 1) : ℚ) / (A345931 (n + 1) : ℚ)

end

end A345932.P3020696052792791549

/-! ## A345932.P6801029697729056955

`A002034(n+1)/gcd(n+1, A002034(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345932.P6801029697729056955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A002034 (n + 1)) : ℚ)

end

end A345932.P6801029697729056955

/-! ## A345932.P16481679788564686027

`(A122416(n+1)-1)/A345931(n+1)`
-/

namespace A345932.P16481679788564686027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122416 (n + 1) - 1 : ℚ) / (A345931 (n + 1) : ℚ)

end

end A345932.P16481679788564686027

/-! ## A345932.P8820451736668503297

`∑[A029717(C(2, n)+n)]/A345931(n+1)`
-/

namespace A345932.P8820451736668503297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029717 (Nat.choose 2 n + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A345931 (n + 1) : ℚ)

end

end A345932.P8820451736668503297

/-! ## A345932.P17755607604248975203

`(A061243(n+1)-(n+1))/A345931(n+1)`
-/

namespace A345932.P17755607604248975203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061243 (n + 1) - (n + 1 : ℤ) : ℚ) / (A345931 (n + 1) : ℚ)

end

end A345932.P17755607604248975203

/-! ## A345932.P1943016343698188217

`(A064760(n+1)+A000007(n))/A345931(n+1)`
-/

namespace A345932.P1943016343698188217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064760 (n + 1) + A000007 n : ℚ) / (A345931 (n + 1) : ℚ)

end

end A345932.P1943016343698188217

/-! ## A345932.P9208027775258168529

`(A034699(n+1)-A057110(n+1))/A345931(n+1)`
-/

namespace A345932.P9208027775258168529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034699 (n + 1) - A057110 (n + 1) : ℚ) / (A345931 (n + 1) : ℚ)

end

end A345932.P9208027775258168529

/-! ## A345932.P11158926224924899875

`(Δ[A029716(n+1)]-A029717(n+1))/A345931(n+1)`
-/

namespace A345932.P11158926224924899875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029716 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A029717 (n + 1) : ℚ) / (A345931 (n + 1) : ℚ)

end

end A345932.P11158926224924899875

/-! ## A345932.P3075758421196863349

`gcd(A002034(n+1), A038610(n+1))`
-/

namespace A345932.P3075758421196863349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002034 (n + 1)) (A038610 (n + 1))

end

end A345932.P3075758421196863349

/-! ## A345932.P8548777937085666789

`gcd(A064760(n+1), A069220(n+1))`
-/

namespace A345932.P8548777937085666789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064760 (n + 1)) (A069220 (n + 1))

end

end A345932.P8548777937085666789

/-! ## A345932.P17133631134685147903

`A055231(lcm(A002034(n+1), A053143(n+1)))`
-/

namespace A345932.P17133631134685147903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (Int.lcm (A002034 (n + 1)) (A053143 (n + 1)))

end

end A345932.P17133631134685147903

/-! ## A345932.P10550590030837473110

`gcd(A002034(n+1), A122852(n))`
-/

namespace A345932.P10550590030837473110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002034 (n + 1)) (A122852 n)

end

end A345932.P10550590030837473110

/-!
# A345933: a(n) = n / gcd(n, A002034(n)), where A002034(n) gives the smallest positive integer k such that n divides k!.

The programs for A345933, there is no canonical definition to state claims against.
-/

/-! ## A345933.P15937604779129775223

`(n+1)/A345931(n+1)`
-/

namespace A345933.P15937604779129775223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A345931 (n + 1) : ℚ)

end

end A345933.P15937604779129775223

/-! ## A345933.P15462201834557391095

`(n+1)/gcd(n+1, A002034(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345933.P15462201834557391095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A002034 (n + 1)) : ℚ)

end

end A345933.P15462201834557391095

/-! ## A345933.P10203209191907631299

`(n+1)/gcd(A002034(n+1), A005915(n))`
-/

namespace A345933.P10203209191907631299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A002034 (n + 1)) (A005915 n) : ℚ)

end

end A345933.P10203209191907631299

/-! ## A345933.P5124051463203659494

`(n+1)/A002034(n+1)*A345932(n+1)`
-/

namespace A345933.P5124051463203659494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002034 (n + 1) : ℚ) * (A345932 (n + 1) : ℚ)

end

end A345933.P5124051463203659494

/-! ## A345933.P1822020450512841326

`lcm(n+1, A061243(n+1))/A061243(n+1)`
-/

namespace A345933.P1822020450512841326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A061243 (n + 1)) : ℚ) / (A061243 (n + 1) : ℚ)

end

end A345933.P1822020450512841326

/-! ## A345933.P14368931111707413461

`A000027(n+1)/gcd(A000027(n+1), A061243(n+1))`
-/

namespace A345933.P14368931111707413461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A061243 (n + 1)) : ℚ)

end

end A345933.P14368931111707413461

/-! ## A345933.P3152042383606753917

`A126988(A345931(n+1)+A000217(n))`
-/

namespace A345933.P3152042383606753917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A345931 (n + 1) + A000217 n).toNat

end

end A345933.P3152042383606753917

/-!
# A345934: Ordinal transform of Kempner numbers, A002034.

The programs for A345934, there is no canonical definition to state claims against.
-/

/-! ## A345934.P15158271982132045632

`gcd(A060775(n+1), A174431(A174438(n+1)))`
-/

namespace A345934.P15158271982132045632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060775 (n + 1)) (A174431 ((A174438 (n + 1)).toNat + 1753))

end

end A345934.P15158271982132045632

/-! ## A345934.P12851497180851038702

`gcd(A058348(n+4), A060775(n+1))`
-/

namespace A345934.P12851497180851038702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058348 (n + 4)) (A060775 (n + 1))

end

end A345934.P12851497180851038702

/-! ## A345934.P13690888742892442136

`gcd(A060775(n+1), A290870(A102480(n)))`
-/

namespace A345934.P13690888742892442136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060775 (n + 1)) (A290870 (A102480 n).toNat)

end

end A345934.P13690888742892442136

/-! ## A345934.P17937317276244425728

`A060775(n+1)^A262124(A295028(n+1))`
-/

namespace A345934.P17937317276244425728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060775 (n + 1) : ℚ) ^ (A262124 (A295028 (n + 1)).toNat : ℤ)

end

end A345934.P17937317276244425728

/-! ## A345934.P14661724314578267819

`gcd(A060775(n+1), A382638(n+1))`
-/

namespace A345934.P14661724314578267819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060775 (n + 1)) (A382638 (n + 1))

end

end A345934.P14661724314578267819

/-!
# A345935: Number of divisors d of n for which A002034(d) = A002034(n), where A002034(n) is the smallest positive integer k such that n divides k!.

The programs for A345935, there is no canonical definition to state claims against.
-/

/-! ## A345935.P16474974839181909908

`A000005(n+1)-A345936(n+1)`
-/

namespace A345935.P16474974839181909908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A345936 (n + 1)

end

end A345935.P16474974839181909908

/-! ## A345935.P15490384779372001630

`Δ[A006218(n)]-A345936(n+1)`
-/

namespace A345935.P15490384779372001630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A345936 (n + 1)

end

end A345935.P15490384779372001630

/-! ## A345935.P7164911593495904894

`Δ[A054519(n)]-A345936(n+1)`
-/

namespace A345935.P7164911593495904894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A345936 (n + 1)

end

end A345935.P7164911593495904894

/-! ## A345935.P7912573529193895884

`A008619(A114003(n+1))-A345936(n+1)`
-/

namespace A345935.P7912573529193895884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A114003 (n + 1)).toNat - A345936 (n + 1)

end

end A345935.P7912573529193895884

/-! ## A345935.P13765458837171522048

`A344589(n+1)+A344590(n+1)-A345936(n+1)`
-/

namespace A345935.P13765458837171522048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344589 (n + 1) + (A344590 (n + 1) - A345936 (n + 1))

end

end A345935.P13765458837171522048

/-! ## A345935.P7163271405189865751

`A354991(n+1)+A354992(n+1)-A345936(n+1)`
-/

namespace A345935.P7163271405189865751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354991 (n + 1) + (A354992 (n + 1) - A345936 (n + 1))

end

end A345935.P7163271405189865751

/-! ## A345935.P17533801392165443726

`A001227(n+1)*A001511(n+1)-A345936(n+1)`
-/

namespace A345935.P17533801392165443726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A345936 (n + 1)

end

end A345935.P17533801392165443726

/-! ## A345935.P10410811380964888932

`A000005(A346089(n+1))*A010054(A000217(n))`
-/

namespace A345935.P10410811380964888932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A346089 (n + 1)).toNat * A010054 (A000217 n).toNat

end

end A345935.P10410811380964888932

/-! ## A345935.P11226552621600918234

`A000005(A346089(n+1)%A026810(A167487(n)))`
-/

namespace A345935.P11226552621600918234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A346089 (n + 1)) (A026810 (A167487 n).toNat)).toNat

end

end A345935.P11226552621600918234

/-! ## A345935.P5756099252304107330

`A000005(A001222(2^A346089(n+1)))`
-/

namespace A345935.P5756099252304107330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A346089 (n + 1) : ℤ))).toNat).toNat

end

end A345935.P5756099252304107330

/-! ## A345935.P10741488699552220792

`A345936((n+1)*A000040(n+1))-A345936(n+1)`
-/

namespace A345935.P10741488699552220792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345936 ((n + 1 : ℤ) * A000040 (n + 1)).toNat - A345936 (n + 1)

end

end A345935.P10741488699552220792

/-! ## A345935.P2263145892835661280

`∑{d}[A346089(n+1), A005420(A005420(#+2)+2)%2]`
-/

namespace A345935.P2263145892835661280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A005420 (A005420 (d + 2) + 2).toNat) 2

end

end A345935.P2263145892835661280

/-!
# A345936: Number of divisors d of n for which A002034(d) < A002034(n), where A002034(n) is the smallest positive integer k such that n divides k!.

The programs for A345936, there is no canonical definition to state claims against.
-/

/-! ## A345936.P15897861855581906997

`A000005(n+1)-A345935(n+1)`
-/

namespace A345936.P15897861855581906997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A345935 (n + 1)

end

end A345936.P15897861855581906997

/-! ## A345936.P610064634492615746

`Δ[A006218(n)]-A345935(n+1)`
-/

namespace A345936.P610064634492615746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A345935 (n + 1)

end

end A345936.P610064634492615746

/-! ## A345936.P7177245984138012614

`Δ[A054519(n)]-A345935(n+1)`
-/

namespace A345936.P7177245984138012614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A345935 (n + 1)

end

end A345936.P7177245984138012614

/-! ## A345936.P13913015851549657401

`sqrt(A035116(n+1))-A345935(n+1)`
-/

namespace A345936.P13913015851549657401
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035116 (n + 1) : ℝ) - (A345935 (n + 1) : ℝ)

end

end A345936.P13913015851549657401

/-! ## A345936.P15379143290719057231

`A062011(n+1)/2-A345935(n+1)`
-/

namespace A345936.P15379143290719057231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (n + 1) : ℚ) / 2 - (A345935 (n + 1) : ℚ)

end

end A345936.P15379143290719057231

/-! ## A345936.P4090423371881178353

`A110654(A062011(n+1))-A345935(n+1)`
-/

namespace A345936.P4090423371881178353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A062011 (n + 1)).toNat - A345935 (n + 1)

end

end A345936.P4090423371881178353

/-! ## A345936.P1680855362917017655

`A344589(n+1)+A344590(n+1)-A345935(n+1)`
-/

namespace A345936.P1680855362917017655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344589 (n + 1) + (A344590 (n + 1) - A345935 (n + 1))

end

end A345936.P1680855362917017655

/-! ## A345936.P2495285084247989980

`A354991(n+1)+A354992(n+1)-A345935(n+1)`
-/

namespace A345936.P2495285084247989980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354991 (n + 1) + (A354992 (n + 1) - A345935 (n + 1))

end

end A345936.P2495285084247989980

/-! ## A345936.P13977750091242205462

`A001227(n+1)*A001511(n+1)-A345935(n+1)`
-/

namespace A345936.P13977750091242205462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A345935 (n + 1)

end

end A345936.P13977750091242205462

/-! ## A345936.P14535676505634334516

`A345935(A033286(n+1))-A345935(n+1)`
-/

namespace A345936.P14535676505634334516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345935 (A033286 (n + 1)).toNat - A345935 (n + 1)

end

end A345936.P14535676505634334516

/-! ## A345936.P1168396262243133339

`A114896(A000217(n))-A345935(n+1)`
-/

namespace A345936.P1168396262243133339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114896 (A000217 n).toNat - A345935 (n + 1)

end

end A345936.P1168396262243133339

/-!
# A345937: a(n) = gcd(n-1, uphi(n)), where uphi is unitary totient (or unitary phi) function, A047994.

The programs for A345937, the canonical program `A345937.P12534204901955045802` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345937 has offset 1).

The definition of A345937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345937.P12534204901955045802

`gcd(n, A047994(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A345937

/-- `gcd(n, A047994(n+1))` -/
def P12534204901955045802.Spec : Prop :=
  ∀ n, (P12534204901955045802.a n : ℤ) = A345937 (n + 1)

theorem P12534204901955045802.correct : P12534204901955045802.Spec := by
  intro n
  simp only [A345937, Nat.add_sub_cancel]

end A345937

/-! ## A345937.P13812385097625473852

`A047994(n+1)/A345938(n+1)`
-/

namespace A345937.P13812385097625473852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A345938 (n + 1) : ℚ)

end

end A345937.P13812385097625473852

namespace A345937

/-- `A047994(n+1)/A345938(n+1)` -/
def P13812385097625473852.Spec : Prop :=
  ∀ n, P13812385097625473852.a n = (A345937 (n + 1) : ℚ)

end A345937

/-! ## A345937.P17476668571274955959

`gcd(A047994(1+n), n)`
-/

namespace A345937.P17476668571274955959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047994 (1 + n)) (n : ℤ)

end

end A345937.P17476668571274955959

namespace A345937

/-- `gcd(A047994(1+n), n)` -/
def P17476668571274955959.Spec : Prop :=
  ∀ n, (P17476668571274955959.a n : ℤ) = A345937 (n + 1)

end A345937

/-! ## A345937.P10251431589938213653

`gcd(1-A323410(n+1), n%(n+1))`
-/

namespace A345937.P10251431589938213653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A323410 (n + 1)) ((n % (n + 1) : ℕ) : ℤ)

end

end A345937.P10251431589938213653

namespace A345937

/-- `gcd(1-A323410(n+1), n%(n+1))` -/
def P10251431589938213653.Spec : Prop :=
  ∀ n, (P10251431589938213653.a n : ℤ) = A345937 (n + 1)

end A345937

/-! ## A345937.P13950928125499029528

`A008458(n)/A008458(A345939(n+1))`
-/

namespace A345937.P13950928125499029528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n : ℚ) / (A008458 (A345939 (n + 1)).toNat : ℚ)

end

end A345937.P13950928125499029528

namespace A345937

/-- `A008458(n)/A008458(A345939(n+1))` -/
def P13950928125499029528.Spec : Prop :=
  ∀ n, P13950928125499029528.a n = (A345937 (n + 1) : ℚ)

end A345937

/-! ## A345937.P3860392408615803123

`A008486(n)/A008486(A345939(n+1))`
-/

namespace A345937.P3860392408615803123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 n : ℚ) / (A008486 (A345939 (n + 1)).toNat : ℚ)

end

end A345937.P3860392408615803123

namespace A345937

/-- `A008486(n)/A008486(A345939(n+1))` -/
def P3860392408615803123.Spec : Prop :=
  ∀ n, P3860392408615803123.a n = (A345937 (n + 1) : ℚ)

end A345937

/-! ## A345937.P5134899151738099857

`A008574(n)/A008574(A345939(n+1))`
-/

namespace A345937.P5134899151738099857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 n : ℚ) / (A008574 (A345939 (n + 1)).toNat : ℚ)

end

end A345937.P5134899151738099857

namespace A345937

/-- `A008574(n)/A008574(A345939(n+1))` -/
def P5134899151738099857.Spec : Prop :=
  ∀ n, P5134899151738099857.a n = (A345937 (n + 1) : ℚ)

end A345937

/-! ## A345937.P16103129177926407218

`lcm(A319676(n+1), A345938(n+1))/A345938(n+1)`
-/

namespace A345937.P16103129177926407218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A319676 (n + 1)) (A345938 (n + 1)) : ℚ) / (A345938 (n + 1) : ℚ)

end

end A345937.P16103129177926407218

namespace A345937

/-- `lcm(A319676(n+1), A345938(n+1))/A345938(n+1)` -/
def P16103129177926407218.Spec : Prop :=
  ∀ n, P16103129177926407218.a n = (A345937 (n + 1) : ℚ)

end A345937

/-! ## A345937.P14213590258746417565

`gcd(A026741(2*n), A344875(A026741(n+1)))`
-/

namespace A345937.P14213590258746417565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 (2 * n)) (A344875 (A026741 (n + 1)).toNat)

end

end A345937.P14213590258746417565

namespace A345937

/-- `gcd(A026741(2*n), A344875(A026741(n+1)))` -/
def P14213590258746417565.Spec : Prop :=
  ∀ n, (P14213590258746417565.a n : ℤ) = A345937 (n + 1)

end A345937

/-! ## A345937.P4242973119411544342

`A047994(n+1)/A164306(A161680(n)+A047994(n+1))`
-/

namespace A345937.P4242973119411544342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A164306 (A161680 n + A047994 (n + 1)).toNat : ℚ)

end

end A345937.P4242973119411544342

namespace A345937

/-- `A047994(n+1)/A164306(A161680(n)+A047994(n+1))` -/
def P4242973119411544342.Spec : Prop :=
  ∀ n, P4242973119411544342.a n = (A345937 (n + 1) : ℚ)

end A345937

/-! ## A345937.P15374831942037144500

`A109004(A047994(n+1)+∑[n])`
-/

namespace A345937.P15374831942037144500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A047994 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A345937.P15374831942037144500

namespace A345937

/-- `A109004(A047994(n+1)+∑[n])` -/
def P15374831942037144500.Spec : Prop :=
  ∀ n, P15374831942037144500.a n = A345937 (n + 1)

end A345937

/-!
# A345938: a(n) = uphi(n) / gcd(n-1, uphi(n)), where uphi is unitary totient (or unitary phi) function, A047994.

The programs for A345938, the canonical program `A345938.P13711634937950283158` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345938 has offset 1).

The definition of A345938 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345938.P13711634937950283158

`A047994(n+1)/A345937(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A345938

/-- `A047994(n+1)/A345937(n+1)` -/
def P13711634937950283158.Spec : Prop :=
  ∀ n, P13711634937950283158.a n = (A345938 (n + 1) : ℚ)

end A345938

/-! ## A345938.P16634567521577740180

`(n+1-A323410(n+1))/A345937(n+1)`
-/

namespace A345938.P16634567521577740180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A323410 (n + 1) : ℚ) / (A345937 (n + 1) : ℚ)

end

end A345938.P16634567521577740180

namespace A345938

/-- `(n+1-A323410(n+1))/A345937(n+1)` -/
def P16634567521577740180.Spec : Prop :=
  ∀ n, P16634567521577740180.a n = (A345938 (n + 1) : ℚ)

end A345938

/-! ## A345938.P5817871361868628040

`A344875(A026741(n+1))/A345937(n+1)`
-/

namespace A345938.P5817871361868628040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (A026741 (n + 1)).toNat : ℚ) / (A345937 (n + 1) : ℚ)

end

end A345938.P5817871361868628040

namespace A345938

/-- `A344875(A026741(n+1))/A345937(n+1)` -/
def P5817871361868628040.Spec : Prop :=
  ∀ n, P5817871361868628040.a n = (A345938 (n + 1) : ℚ)

end A345938

/-! ## A345938.P11534668819380695399

`(A344874(n+1)+A011772(n+1))/A345937(n+1)`
-/

namespace A345938.P11534668819380695399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344874 (n + 1) + A011772 (n + 1) : ℚ) / (A345937 (n + 1) : ℚ)

end

end A345938.P11534668819380695399

namespace A345938

/-- `(A344874(n+1)+A011772(n+1))/A345937(n+1)` -/
def P11534668819380695399.Spec : Prop :=
  ∀ n, P11534668819380695399.a n = (A345938 (n + 1) : ℚ)

end A345938

/-! ## A345938.P16491822413022684850

`(A346607(n+1)+A344005(n+1))/A345937(n+1)`
-/

namespace A345938.P16491822413022684850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346607 (n + 1) + A344005 (n + 1) : ℚ) / (A345937 (n + 1) : ℚ)

end

end A345938.P16491822413022684850

namespace A345938

/-- `(A346607(n+1)+A344005(n+1))/A345937(n+1)` -/
def P16491822413022684850.Spec : Prop :=
  ∀ n, P16491822413022684850.a n = (A345938 (n + 1) : ℚ)

end A345938

/-! ## A345938.P16555814505086625174

`(A323408(n+1)-A323407(n+1))/A345937(n+1)`
-/

namespace A345938.P16555814505086625174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323408 (n + 1) - A323407 (n + 1) : ℚ) / (A345937 (n + 1) : ℚ)

end

end A345938.P16555814505086625174

namespace A345938

/-- `(A323408(n+1)-A323407(n+1))/A345937(n+1)` -/
def P16555814505086625174.Spec : Prop :=
  ∀ n, P16555814505086625174.a n = (A345938 (n + 1) : ℚ)

end A345938

/-! ## A345938.P6746637145571341187

`A191414(n+1)/(A034448(n+1)*A345937(n+1))`
-/

namespace A345938.P6746637145571341187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191414 (n + 1) : ℚ) / (A034448 (n + 1) * A345937 (n + 1) : ℚ)

end

end A345938.P6746637145571341187

namespace A345938

/-- `A191414(n+1)/(A034448(n+1)*A345937(n+1))` -/
def P6746637145571341187.Spec : Prop :=
  ∀ n, P6746637145571341187.a n = (A345938 (n + 1) : ℚ)

end A345938

/-! ## A345938.P11521725558568024421

`A173557(n+1)*A335341(n+1)/A345937(n+1)`
-/

namespace A345938.P11521725558568024421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) * A335341 (n + 1) : ℚ) / (A345937 (n + 1) : ℚ)

end

end A345938.P11521725558568024421

namespace A345938

/-- `A173557(n+1)*A335341(n+1)/A345937(n+1)` -/
def P11521725558568024421.Spec : Prop :=
  ∀ n, P11521725558568024421.a n = (A345938 (n + 1) : ℚ)

end A345938

/-! ## A345938.P3064075734036724012

`A164306(A161680(n)+A047994(n+1))`
-/

namespace A345938.P3064075734036724012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A161680 n + A047994 (n + 1)).toNat

end

end A345938.P3064075734036724012

namespace A345938

/-- `A164306(A161680(n)+A047994(n+1))` -/
def P3064075734036724012.Spec : Prop :=
  ∀ n, P3064075734036724012.a n = A345938 (n + 1)

end A345938

/-! ## A345938.P2897520948616484949

`A164306(A047994(n+1)+A000217(n)-n)`
-/

namespace A345938.P2897520948616484949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A047994 (n + 1) + (A000217 n - (n : ℤ))).toNat

end

end A345938.P2897520948616484949

namespace A345938

/-- `A164306(A047994(n+1)+A000217(n)-n)` -/
def P2897520948616484949.Spec : Prop :=
  ∀ n, P2897520948616484949.a n = A345938 (n + 1)

end A345938

/-!
# A345939: a(n) = (n-1) / gcd(n-1, uphi(n)), where uphi is unitary totient (or unitary phi) function, A047994.

The programs for A345939, the canonical program `A345939.P16885342451554269271` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345939 has offset 1).

The definition of A345939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345939.P16885342451554269271

`n/A345937(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A345939

/-- `n/A345937(n+1)` -/
def P16885342451554269271.Spec : Prop :=
  ∀ n, P16885342451554269271.a n = (A345939 (n + 1) : ℚ)

end A345939

/-! ## A345939.P1195610917392634230

`n/gcd(n, A047994(n+1))`
-/

namespace A345939.P1195610917392634230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (n : ℤ) (A047994 (n + 1)) : ℚ)

end

end A345939.P1195610917392634230

namespace A345939

/-- `n/gcd(n, A047994(n+1))` -/
def P1195610917392634230.Spec : Prop :=
  ∀ n, P1195610917392634230.a n = (A345939 (n + 1) : ℚ)

end A345939

/-! ## A345939.P13347541857732719110

`∑[n]/gcd(∑[n], A333576(n+1))`
-/

namespace A345939.P13347541857732719110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Int.gcd ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A333576 (n + 1)) : ℚ)

end

end A345939.P13347541857732719110

namespace A345939

/-- `∑[n]/gcd(∑[n], A333576(n+1))` -/
def P13347541857732719110.Spec : Prop :=
  ∀ n, P13347541857732719110.a n = (A345939 (n + 1) : ℚ)

end A345939

/-! ## A345939.P6687696761139101562

`n/gcd(1-A323410(n+1), n%(n+1))`
-/

namespace A345939.P6687696761139101562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (1 - A323410 (n + 1)) ((n % (n + 1) : ℕ) : ℤ) : ℚ)

end

end A345939.P6687696761139101562

namespace A345939

/-- `n/gcd(1-A323410(n+1), n%(n+1))` -/
def P6687696761139101562.Spec : Prop :=
  ∀ n, P6687696761139101562.a n = (A345939 (n + 1) : ℚ)

end A345939

/-! ## A345939.P8690521064384473685

`n/gcd(A028310(n), A319676(n+1))`
-/

namespace A345939.P8690521064384473685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (A028310 n) (A319676 (n + 1)) : ℚ)

end

end A345939.P8690521064384473685

namespace A345939

/-- `n/gcd(A028310(n), A319676(n+1))` -/
def P8690521064384473685.Spec : Prop :=
  ∀ n, P8690521064384473685.a n = (A345939 (n + 1) : ℚ)

end A345939

/-! ## A345939.P7212966134410945731

`n/A047994(n+1)*A345938(n+1)`
-/

namespace A345939.P7212966134410945731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A047994 (n + 1) : ℚ) * (A345938 (n + 1) : ℚ)

end

end A345939.P7212966134410945731

namespace A345939

/-- `n/A047994(n+1)*A345938(n+1)` -/
def P7212966134410945731.Spec : Prop :=
  ∀ n, P7212966134410945731.a n = (A345939 (n + 1) : ℚ)

end A345939

/-! ## A345939.P1661396857706499254

`A022998(n)/A022998(A047994(n+1)/A345938(n+1))`
-/

namespace A345939.P1661396857706499254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022998 n : ℚ) / (A022998 (SequenceMachineLib.roundAway ((A047994 (n + 1) : ℚ) / (A345938 (n + 1) : ℚ))).toNat : ℚ)

end

end A345939.P1661396857706499254

namespace A345939

/-- `A022998(n)/A022998(A047994(n+1)/A345938(n+1))` -/
def P1661396857706499254.Spec : Prop :=
  ∀ n, P1661396857706499254.a n = (A345939 (n + 1) : ℚ)

end A345939

/-! ## A345939.P1681732656444065039

`n/gcd(A233583(n+1), A344875(A026741(n+1)))`
-/

namespace A345939.P1681732656444065039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (A233583 (n + 1)) (A344875 (A026741 (n + 1)).toNat) : ℚ)

end

end A345939.P1681732656444065039

namespace A345939

/-- `n/gcd(A233583(n+1), A344875(A026741(n+1)))` -/
def P1681732656444065039.Spec : Prop :=
  ∀ n, P1681732656444065039.a n = (A345939 (n + 1) : ℚ)

end A345939

/-!
# A345940: Factorial of the largest prime factor of n, read modulo n: a(n) = A006530(n)! mod n.

The programs for A345940, the canonical program `A345940.P6958556155531305771` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345940 has offset 1).

The definition of A345940 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345940.P6958556155531305771

`A006530(n+1)!%(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A345940

/-- `A006530(n+1)!%(n+1)` -/
def P6958556155531305771.Spec : Prop :=
  ∀ n, (P6958556155531305771.a n : ℤ) = A345940 (n + 1)

theorem P6958556155531305771.correct : P6958556155531305771.Spec := by
  intro n
  simp only [A345940, Nat.add_sub_cancel]

end A345940

/-! ## A345940.P1186355815265533705

`A062169(A006530(n+1)+∑[n])`
-/

namespace A345940.P1186355815265533705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062169 (A006530 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A345940.P1186355815265533705

namespace A345940

/-- `A062169(A006530(n+1)+∑[n])` -/
def P1186355815265533705.Spec : Prop :=
  ∀ n, P1186355815265533705.a n = A345940 (n + 1)

end A345940

/-! ## A345940.P2297767960582780275

`A062169(A000217(n)+A006530(n+1))`
-/

namespace A345940.P2297767960582780275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062169 (A000217 n + A006530 (n + 1)).toNat

end

end A345940.P2297767960582780275

namespace A345940

/-- `A062169(A000217(n)+A006530(n+1))` -/
def P2297767960582780275.Spec : Prop :=
  ∀ n, P2297767960582780275.a n = A345940 (n + 1)

end A345940

/-! ## A345940.P8744360776175327812

`A062169(A327398(n+1)+A000217(n))`
-/

namespace A345940.P8744360776175327812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062169 (A327398 (n + 1) + A000217 n).toNat

end

end A345940.P8744360776175327812

namespace A345940

/-- `A062169(A327398(n+1)+A000217(n))` -/
def P8744360776175327812.Spec : Prop :=
  ∀ n, P8744360776175327812.a n = A345940 (n + 1)

end A345940

/-! ## A345940.P17896111120950811122

`A102068(n+1)%(n+1)`
-/

namespace A345940.P17896111120950811122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102068 (n + 1)) (n + 1 : ℤ)

end

end A345940.P17896111120950811122

namespace A345940

/-- `A102068(n+1)%(n+1)` -/
def P17896111120950811122.Spec : Prop :=
  ∀ n, P17896111120950811122.a n = A345940 (n + 1)

end A345940

/-! ## A345940.P3158201729414494279

`A111089(n+1)!%(n+1)`
-/

namespace A345940.P3158201729414494279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A111089 (n + 1)).toNat % (n + 1)

end

end A345940.P3158201729414494279

namespace A345940

/-- `A111089(n+1)!%(n+1)` -/
def P3158201729414494279.Spec : Prop :=
  ∀ n, (P3158201729414494279.a n : ℤ) = A345940 (n + 1)

end A345940

/-! ## A345940.P14016617270342868378

`A020639(A053585(n+1))!%(n+1)`
-/

namespace A345940.P14016617270342868378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A020639 (A053585 (n + 1)).toNat).toNat % (n + 1)

end

end A345940.P14016617270342868378

namespace A345940

/-- `A020639(A053585(n+1))!%(n+1)` -/
def P14016617270342868378.Spec : Prop :=
  ∀ n, (P14016617270342868378.a n : ℤ) = A345940 (n + 1)

end A345940

/-! ## A345940.P14506224635895519094

`A000142(A006530(n+1))%A000027(n+1)`
-/

namespace A345940.P14506224635895519094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (A006530 (n + 1)).toNat) (A000027 (n + 1))

end

end A345940.P14506224635895519094

namespace A345940

/-- `A000142(A006530(n+1))%A000027(n+1)` -/
def P14506224635895519094.Spec : Prop :=
  ∀ n, P14506224635895519094.a n = A345940 (n + 1)

end A345940

/-!
# A345941: a(n) = gcd(n, A329044(n)).

The programs for A345941, there is no canonical definition to state claims against.
-/

/-! ## A345941.P3000945341342694053

`(n+1)/A345942(n+1)`
-/

namespace A345941.P3000945341342694053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A345942 (n + 1) : ℚ)

end

end A345941.P3000945341342694053

/-! ## A345941.P17027685943590020725

`A006530(n+1)^A346087(n+1)`
-/

namespace A345941.P17027685943590020725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (A346087 (n + 1) : ℤ)

end

end A345941.P17027685943590020725

/-! ## A345941.P4597041121172982434

`gcd(n+1, A329044(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345941.P4597041121172982434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A329044 (n + 1))

end

end A345941.P4597041121172982434

/-! ## A345941.P6585975819844512928

`A329044(n+1)/A345943(n+1)`
-/

namespace A345941.P6585975819844512928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329044 (n + 1) : ℚ) / (A345943 (n + 1) : ℚ)

end

end A345941.P6585975819844512928

/-! ## A345941.P6527058518807560435

`A064989(gcd(A003961(n+1), A324886(n+1)))`
-/

namespace A345941.P6527058518807560435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.gcd (A003961 (n + 1)) (A324886 (n + 1)))

end

end A345941.P6527058518807560435

/-! ## A345941.P12825357144819683086

`lcm(A345943(n+1), A346097(n+1))/A345943(n+1)`
-/

namespace A345941.P12825357144819683086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A345943 (n + 1)) (A346097 (n + 1)) : ℚ) / (A345943 (n + 1) : ℚ)

end

end A345941.P12825357144819683086

/-! ## A345941.P11159931036060199151

`A219158(A345942(n+1)+A000217(n))`
-/

namespace A345941.P11159931036060199151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A345942 (n + 1) + A000217 n).toNat

end

end A345941.P11159931036060199151

/-! ## A345941.P9703885987619620655

`gcd(A108951(n+1), A346097(n+1))`
-/

namespace A345941.P9703885987619620655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108951 (n + 1)) (A346097 (n + 1))

end

end A345941.P9703885987619620655

/-! ## A345941.P12874879611243427298

`A126988(A345942(n+1)+∑[n])`
-/

namespace A345941.P12874879611243427298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A345942 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A345941.P12874879611243427298

/-! ## A345941.P11466151874986530708

`A054531(A345942(n+1)+A000217(n))`
-/

namespace A345941.P11466151874986530708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A345942 (n + 1) + A000217 n).toNat

end

end A345941.P11466151874986530708

/-!
# A345942: a(n) = n / gcd(n, A329044(n)).

The programs for A345942, there is no canonical definition to state claims against.
-/

/-! ## A345942.P15733958934274612711

`(n+1)/A345941(n+1)`
-/

namespace A345942.P15733958934274612711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A345941 (n + 1) : ℚ)

end

end A345942.P15733958934274612711

/-! ## A345942.P2797040894458210040

`(n+1)/gcd(n+1, A329044(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345942.P2797040894458210040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A329044 (n + 1)) : ℚ)

end

end A345942.P2797040894458210040

/-! ## A345942.P16513436267346283807

`(n+1)/A006530(n+1)^A346087(n+1)`
-/

namespace A345942.P16513436267346283807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ) ^ (A346087 (n + 1) : ℤ)

end

end A345942.P16513436267346283807

/-! ## A345942.P4568464444413710423

`A219158(A345941(n+1)+A000217(n))`
-/

namespace A345942.P4568464444413710423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A345941 (n + 1) + A000217 n).toNat

end

end A345942.P4568464444413710423

/-! ## A345942.P11781338839880883988

`(n+1)*A345941(n+1)^(A278482(A000096(n))-1)`
-/

namespace A345942.P11781338839880883988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A345941 (n + 1) : ℚ) ^ (A278482 (A000096 n).toNat - 1 : ℤ)

end

end A345942.P11781338839880883988

/-! ## A345942.P4713082977179438131

`A051537(A345941(n+1)+∑[n])`
-/

namespace A345942.P4713082977179438131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A345941 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A345942.P4713082977179438131

/-! ## A345942.P6878033295354952334

`A277227(A345941(n+1)+∑[n]+1)`
-/

namespace A345942.P6878033295354952334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A345941 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A345942.P6878033295354952334

/-! ## A345942.P2022044272885180763

`A010766(A345941(n+1)+A000217(n))`
-/

namespace A345942.P2022044272885180763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A345941 (n + 1) + A000217 n).toNat

end

end A345942.P2022044272885180763

/-! ## A345942.P14422316998212163051

`A049834(A345941(n+1)+A000217(n))`
-/

namespace A345942.P14422316998212163051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A345941 (n + 1) + A000217 n).toNat

end

end A345942.P14422316998212163051

/-! ## A345942.P15019857253802172236

`A054531(A345941(n+1)+A000217(n))`
-/

namespace A345942.P15019857253802172236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A345941 (n + 1) + A000217 n).toNat

end

end A345942.P15019857253802172236

/-!
# A345943: a(n) = A329044(n) / gcd(n, A329044(n)).

The programs for A345943, there is no canonical definition to state claims against.
-/

/-! ## A345943.P8739857852180618223

`A329044(n+1)/A345941(n+1)`
-/

namespace A345943.P8739857852180618223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329044 (n + 1) : ℚ) / (A345941 (n + 1) : ℚ)

end

end A345943.P8739857852180618223

/-! ## A345943.P5539942774953292618

`A329044(n+1)/gcd(n+1, A329044(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345943.P5539942774953292618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329044 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A329044 (n + 1)) : ℚ)

end

end A345943.P5539942774953292618

/-! ## A345943.P15310168142140393639

`A329044(n+1)/(n+1)*A345942(n+1)`
-/

namespace A345943.P15310168142140393639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329044 (n + 1) : ℚ) / (n + 1 : ℚ) * (A345942 (n + 1) : ℚ)

end

end A345943.P15310168142140393639

/-! ## A345943.P6621458821465990589

`lcm(A103517(n), A329044(n+1))/A103517(n)`
-/

namespace A345943.P6621458821465990589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A103517 n) (A329044 (n + 1)) : ℚ) / (A103517 n : ℚ)

end

end A345943.P6621458821465990589

/-! ## A345943.P5383946707122289849

`A346095(n+1)/A345941(n+1)*A346097(n+1)`
-/

namespace A345943.P5383946707122289849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346095 (n + 1) : ℚ) / (A345941 (n + 1) : ℚ) * (A346097 (n + 1) : ℚ)

end

end A345943.P5383946707122289849

/-! ## A345943.P11363976131438488479

`A329044(n+1)/A006530(n+1)^A346087(n+1)`
-/

namespace A345943.P11363976131438488479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329044 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ) ^ (A346087 (n + 1) : ℤ)

end

end A345943.P11363976131438488479

/-!
# A345944: Numbers k such that A002034(d) < A002034(k) for all the proper divisors d of k.

The programs for A345944, there is no canonical definition to state claims against.
-/

/-! ## A345944.P10200367239435612228

`record[(n+1)*A345950(n+1)]`
-/

namespace A345944.P10200367239435612228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A345950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345944.P10200367239435612228

/-! ## A345944.P10903510041019606774

`record[(n+1)/A345935(n+1)]`
-/

namespace A345944.P10903510041019606774
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A345935 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345944.P10903510041019606774

/-! ## A345944.P11845108626109049102

`filter[A000961(n+1), A345950(#)]`
-/

namespace A345944.P11845108626109049102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P11845108626109049102

/-! ## A345944.P4163318034429512605

`filter[A072303(n+1), A345950(#)]`
-/

namespace A345944.P4163318034429512605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P4163318034429512605

/-! ## A345944.P5293988901020329546

`filter[A073491(n+1), A345950(#)]`
-/

namespace A345944.P5293988901020329546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P5293988901020329546

/-! ## A345944.P15651886222813070968

`filter[A081061(n+1), A345950(#)]`
-/

namespace A345944.P15651886222813070968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P15651886222813070968

/-! ## A345944.P6793320706346731955

`filter[A081306(n+1), A345950(#)]`
-/

namespace A345944.P6793320706346731955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P6793320706346731955

/-! ## A345944.P10886337757956346689

`filter[A087441(n+1), A345950(#)]`
-/

namespace A345944.P10886337757956346689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P10886337757956346689

/-! ## A345944.P13221962316416095319

`filter[A133810(n+1), A345950(#)]`
-/

namespace A345944.P13221962316416095319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P13221962316416095319

/-! ## A345944.P7704594025016540902

`filter[A133811(n+1), A345950(#)]`
-/

namespace A345944.P7704594025016540902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P7704594025016540902

/-! ## A345944.P7655155078681828319

`filter[A133812(n+1), A345950(#)]`
-/

namespace A345944.P7655155078681828319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P7655155078681828319

/-! ## A345944.P4380543203183858909

`filter[A133813(n+1), A345950(#)]`
-/

namespace A345944.P4380543203183858909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P4380543203183858909

/-! ## A345944.P8211262327834724283

`filter[A141807(n+1), A345950(#)]`
-/

namespace A345944.P8211262327834724283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P8211262327834724283

/-! ## A345944.P5303881973786295745

`filter[A166401(n+1), A345950(#)]`
-/

namespace A345944.P5303881973786295745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P5303881973786295745

/-! ## A345944.P9651596551897821270

`filter[A225657(n+1), A345950(#)]`
-/

namespace A345944.P9651596551897821270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P9651596551897821270

/-! ## A345944.P15562971889899734764

`filter[A242413(n+1), A345950(#)]`
-/

namespace A345944.P15562971889899734764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P15562971889899734764

/-! ## A345944.P14900217713304022260

`filter[A242417(n+1), A345950(#)]`
-/

namespace A345944.P14900217713304022260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P14900217713304022260

/-! ## A345944.P2063726070313186671

`filter[A247199(n+1), A345950(#)]`
-/

namespace A345944.P2063726070313186671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P2063726070313186671

/-! ## A345944.P13399143761717548075

`filter[A268082(n+1), A345950(#)]`
-/

namespace A345944.P13399143761717548075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P13399143761717548075

/-! ## A345944.P7316483520766007223

`filter[A274222(n+1), A345950(#)]`
-/

namespace A345944.P7316483520766007223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A345944.P7316483520766007223

/-!
# A345945: Numbers k that have such a proper divisor d for which A002034(d) = A002034(k).

The programs for A345945, there is no canonical definition to state claims against.
-/

/-! ## A345945.P6178758932706138252

`comp[C(A346088(n+1), n)]`
-/

namespace A345945.P6178758932706138252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A346088 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A345945.P6178758932706138252

/-! ## A345945.P9295307211573263000

`eq[0, A345950(n+1)]+1`
-/

namespace A345945.P9295307211573263000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A345945.P9295307211573263000

/-! ## A345945.P4185525117750031522

`lt[1, A345935(n+1)]+1`
-/

namespace A345945.P4185525117750031522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345935 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A345945.P4185525117750031522

/-! ## A345945.P9065199469967830215

`lt[1, A346089(n+1)]+1`
-/

namespace A345945.P9065199469967830215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346089 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A345945.P9065199469967830215

/-! ## A345945.P13037785563457622715

`lt[A346088(n+2), n]+2`
-/

namespace A345945.P13037785563457622715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346088 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A345945.P13037785563457622715

/-! ## A345945.P4247339364522380925

`eq[0, A345950(A028310(n))]`
-/

namespace A345945.P4247339364522380925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345950 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345945.P4247339364522380925

/-! ## A345945.P16365745124063866301

`A020725(eq[0, A345950(n+1)])`
-/

namespace A345945.P16365745124063866301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345945.P16365745124063866301

/-! ## A345945.P2856459745628496442

`A065475(eq[0, A345950(n+1)])`
-/

namespace A345945.P2856459745628496442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345945.P2856459745628496442

/-! ## A345945.P2174646867159903324

`A181569(eq[0, A345950(n+1)])`
-/

namespace A345945.P2174646867159903324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345945.P2174646867159903324

/-! ## A345945.P5928765592002344200

`eq[0, A345950(A233583(n+1))]`
-/

namespace A345945.P5928765592002344200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345950 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345945.P5928765592002344200

/-!
# A345946: Prime powers k that have such a proper divisor d for which A002034(d) = A002034(k).

The programs for A345946, there is no canonical definition to state claims against.
-/

/-! ## A345946.P660738899932838302

`record[A332815(A332811(3*n+5))]`
-/

namespace A345946.P660738899932838302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 (A332811 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345946.P660738899932838302

/-! ## A345946.P13268430268551399770

`record[A332817(A332816(3*n+5))]`
-/

namespace A345946.P13268430268551399770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332817 (A332816 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345946.P13268430268551399770

/-!
# A345947: a(n) = gcd(A153151(n), A344875(n)).

The programs for A345947, the canonical program `A345947.P5146707115355177484` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345947 has offset 1).

The definition of A345947 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153151, A344875, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345947.P2473188418101412868

`A344875(n+1)/A345948(n+1)`
-/

namespace A345947.P2473188418101412868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) : ℚ) / (A345948 (n + 1) : ℚ)

end

end A345947.P2473188418101412868

namespace A345947

/-- `A344875(n+1)/A345948(n+1)` -/
def P2473188418101412868.Spec : Prop :=
  ∀ n, P2473188418101412868.a n = (A345947 (n + 1) : ℚ)

end A345947

/-! ## A345947.P11490381237639240827

`A153151(n+1)/A345949(n+1)`
-/

namespace A345947.P11490381237639240827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153151 (n + 1) : ℚ) / (A345949 (n + 1) : ℚ)

end

end A345947.P11490381237639240827

namespace A345947

/-- `A153151(n+1)/A345949(n+1)` -/
def P11490381237639240827.Spec : Prop :=
  ∀ n, P11490381237639240827.a n = (A345947 (n + 1) : ℚ)

end A345947

/-! ## A345947.P5146707115355177484

`gcd(A153151(n+1), A344875(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A345947

/-- `gcd(A153151(n+1), A344875(n+1))` -/
def P5146707115355177484.Spec : Prop :=
  ∀ n, (P5146707115355177484.a n : ℤ) = A345947 (n + 1)

theorem P5146707115355177484.correct : P5146707115355177484.Spec := by
  intro n
  simp only [A345947, Nat.add_sub_cancel]

end A345947

/-! ## A345947.P15388640214027326685

`(2*(n+1)-A323410(2*(n+1)))/A345948(n+1)`
-/

namespace A345947.P15388640214027326685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A323410 (2 * (n + 1)) : ℚ) / (A345948 (n + 1) : ℚ)

end

end A345947.P15388640214027326685

namespace A345947

/-- `(2*(n+1)-A323410(2*(n+1)))/A345948(n+1)` -/
def P15388640214027326685.Spec : Prop :=
  ∀ n, P15388640214027326685.a n = (A345947 (n + 1) : ℚ)

end A345947

/-! ## A345947.P9626961364309186135

`(A344876(n+1)+A011772(n+1))/A345948(n+1)`
-/

namespace A345947.P9626961364309186135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344876 (n + 1) + A011772 (n + 1) : ℚ) / (A345948 (n + 1) : ℚ)

end

end A345947.P9626961364309186135

namespace A345947

/-- `(A344876(n+1)+A011772(n+1))/A345948(n+1)` -/
def P9626961364309186135.Spec : Prop :=
  ∀ n, P9626961364309186135.a n = (A345947 (n + 1) : ℚ)

end A345947

/-! ## A345947.P18249904049315323641

`A047994(2*(n+1))/A345948(n+1)`
-/

namespace A345947.P18249904049315323641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (2 * (n + 1)) : ℚ) / (A345948 (n + 1) : ℚ)

end

end A345947.P18249904049315323641

namespace A345947

/-- `A047994(2*(n+1))/A345948(n+1)` -/
def P18249904049315323641.Spec : Prop :=
  ∀ n, P18249904049315323641.a n = (A345947 (n + 1) : ℚ)

end A345947

/-!
# A345948: a(n) = A344875(n) / gcd(A153151(n), A344875(n)).

The programs for A345948, the canonical program `A345948.P11405303974706039683` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345948 has offset 1).

The definition of A345948 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344875, A345947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345948.P11405303974706039683

`A344875(n+1)/A345947(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A345948

/-- `A344875(n+1)/A345947(n+1)` -/
def P11405303974706039683.Spec : Prop :=
  ∀ n, P11405303974706039683.a n = (A345948 (n + 1) : ℚ)

end A345948

/-! ## A345948.P13975252923445553558

`A344875(n+1)/gcd(A153151(n+1), A344875(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345948.P13975252923445553558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) : ℚ) / (Int.gcd (A153151 (n + 1)) (A344875 (n + 1)) : ℚ)

end

end A345948.P13975252923445553558

namespace A345948

/-- `A344875(n+1)/gcd(A153151(n+1), A344875(n+1))` -/
def P13975252923445553558.Spec : Prop :=
  ∀ n, P13975252923445553558.a n = (A345948 (n + 1) : ℚ)

end A345948

/-! ## A345948.P14125141759795699287

`(2*(n+1)-A323410(2*(n+1)))/A345947(n+1)`
-/

namespace A345948.P14125141759795699287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A323410 (2 * (n + 1)) : ℚ) / (A345947 (n + 1) : ℚ)

end

end A345948.P14125141759795699287

namespace A345948

/-- `(2*(n+1)-A323410(2*(n+1)))/A345947(n+1)` -/
def P14125141759795699287.Spec : Prop :=
  ∀ n, P14125141759795699287.a n = (A345948 (n + 1) : ℚ)

end A345948

/-! ## A345948.P16665885650868995795

`(A344876(n+1)+A011772(n+1))/A345947(n+1)`
-/

namespace A345948.P16665885650868995795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344876 (n + 1) + A011772 (n + 1) : ℚ) / (A345947 (n + 1) : ℚ)

end

end A345948.P16665885650868995795

namespace A345948

/-- `(A344876(n+1)+A011772(n+1))/A345947(n+1)` -/
def P16665885650868995795.Spec : Prop :=
  ∀ n, P16665885650868995795.a n = (A345948 (n + 1) : ℚ)

end A345948

/-! ## A345948.P16114236345997275582

`A344878(n+1)*A344879(n+1)/A345947(n+1)`
-/

namespace A345948.P16114236345997275582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344878 (n + 1) * A344879 (n + 1) : ℚ) / (A345947 (n + 1) : ℚ)

end

end A345948.P16114236345997275582

namespace A345948

/-- `A344878(n+1)*A344879(n+1)/A345947(n+1)` -/
def P16114236345997275582.Spec : Prop :=
  ∀ n, P16114236345997275582.a n = (A345948 (n + 1) : ℚ)

end A345948

/-! ## A345948.P9245625141152404589

`A344875(n+1)/A153151(n+1)*A345949(n+1)`
-/

namespace A345948.P9245625141152404589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) : ℚ) / (A153151 (n + 1) : ℚ) * (A345949 (n + 1) : ℚ)

end

end A345948.P9245625141152404589

namespace A345948

/-- `A344875(n+1)/A153151(n+1)*A345949(n+1)` -/
def P9245625141152404589.Spec : Prop :=
  ∀ n, P9245625141152404589.a n = (A345948 (n + 1) : ℚ)

end A345948

/-! ## A345948.P2500698414526274958

`A047994(2*(n+1))/A345947(n+1)`
-/

namespace A345948.P2500698414526274958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (2 * (n + 1)) : ℚ) / (A345947 (n + 1) : ℚ)

end

end A345948.P2500698414526274958

namespace A345948

/-- `A047994(2*(n+1))/A345947(n+1)` -/
def P2500698414526274958.Spec : Prop :=
  ∀ n, P2500698414526274958.a n = (A345948 (n + 1) : ℚ)

end A345948

/-!
# A345949: a(n) = A153151(n) / gcd(A153151(n), A344875(n)).

The programs for A345949, the canonical program `A345949.P4435719406221485100` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345949 has offset 1).

The definition of A345949 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153151, A345947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345949.P4435719406221485100

`A153151(n+1)/A345947(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A345949

/-- `A153151(n+1)/A345947(n+1)` -/
def P4435719406221485100.Spec : Prop :=
  ∀ n, P4435719406221485100.a n = (A345949 (n + 1) : ℚ)

end A345949

/-! ## A345949.P7304995457638861910

`A153151(n+1)/gcd(A153151(n+1), A344875(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345949.P7304995457638861910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153151 (n + 1) : ℚ) / (Int.gcd (A153151 (n + 1)) (A344875 (n + 1)) : ℚ)

end

end A345949.P7304995457638861910

namespace A345949

/-- `A153151(n+1)/gcd(A153151(n+1), A344875(n+1))` -/
def P7304995457638861910.Spec : Prop :=
  ∀ n, P7304995457638861910.a n = (A345949 (n + 1) : ℚ)

end A345949

/-! ## A345949.P11427355484984809944

`A028310(ceil(n/A345947(n+1)))`
-/

namespace A345949.P11427355484984809944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌈(n : ℚ) / (A345947 (n + 1) : ℚ)⌉.toNat

end

end A345949.P11427355484984809944

namespace A345949

/-- `A028310(ceil(n/A345947(n+1)))` -/
def P11427355484984809944.Spec : Prop :=
  ∀ n, P11427355484984809944.a n = A345949 (n + 1)

end A345949

/-! ## A345949.P13802432630346960818

`ceil(A000007(n)+n/A345947(n+1))`
-/

namespace A345949.P13802432630346960818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000007 n : ℚ) + (n : ℚ) / (A345947 (n + 1) : ℚ)⌉

end

end A345949.P13802432630346960818

namespace A345949

/-- `ceil(A000007(n)+n/A345947(n+1))` -/
def P13802432630346960818.Spec : Prop :=
  ∀ n, P13802432630346960818.a n = A345949 (n + 1)

end A345949

/-! ## A345949.P200594452817272401

`ceil((1-A057427(n)+n)/A345947(n+1))`
-/

namespace A345949.P200594452817272401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - A057427 n + (n : ℤ) : ℚ) / (A345947 (n + 1) : ℚ)⌉

end

end A345949.P200594452817272401

namespace A345949

/-- `ceil((1-A057427(n)+n)/A345947(n+1))` -/
def P200594452817272401.Spec : Prop :=
  ∀ n, P200594452817272401.a n = A345949 (n + 1)

end A345949

/-! ## A345949.P5334754085990314842

`A153151(n+1)/A344875(n+1)*A345948(n+1)`
-/

namespace A345949.P5334754085990314842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153151 (n + 1) : ℚ) / (A344875 (n + 1) : ℚ) * (A345948 (n + 1) : ℚ)

end

end A345949.P5334754085990314842

namespace A345949

/-- `A153151(n+1)/A344875(n+1)*A345948(n+1)` -/
def P5334754085990314842.Spec : Prop :=
  ∀ n, P5334754085990314842.a n = (A345949 (n + 1) : ℚ)

end A345949

/-! ## A345949.P1609498163193553437

`A008619(floor(A004273(n)/A345947(n+1)))`
-/

namespace A345949.P1609498163193553437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌊(A004273 n : ℚ) / (A345947 (n + 1) : ℚ)⌋.toNat

end

end A345949.P1609498163193553437

namespace A345949

/-- `A008619(floor(A004273(n)/A345947(n+1)))` -/
def P1609498163193553437.Spec : Prop :=
  ∀ n, P1609498163193553437.a n = A345949 (n + 1)

end A345949

/-! ## A345949.P10515398918554922662

`A051537(A345947(n+1)+A161680(n))`
-/

namespace A345949.P10515398918554922662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A345947 (n + 1) + A161680 n).toNat

end

end A345949.P10515398918554922662

namespace A345949

/-- `A051537(A345947(n+1)+A161680(n))` -/
def P10515398918554922662.Spec : Prop :=
  ∀ n, P10515398918554922662.a n = A345949 (n + 1)

end A345949

/-!
# A345950: a(n) = 1 if for all proper divisors d of n, A002034(d) < A002034(n), otherwise 0.

The programs for A345950, there is no canonical definition to state claims against.
-/

/-! ## A345950.P15869617963275169411

`round(acot(A346089(n+1)))`
-/

namespace A345950.P15869617963275169411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A346089 (n + 1) : ℝ))

end

end A345950.P15869617963275169411

/-! ## A345950.P15168417784707058385

`floor(1/A345935(n+1))`
-/

namespace A345950.P15168417784707058385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A345935 (n + 1) : ℚ)⌋

end

end A345950.P15168417784707058385

/-! ## A345950.P15956894226149132793

`char[A345944(n+1)-1]`
-/

namespace A345950.P15956894226149132793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345944 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A345950.P15956894226149132793

/-! ## A345950.P8070057578497291823

`char[A346088(n+1)-1]`
-/

namespace A345950.P8070057578497291823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346088 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A345950.P8070057578497291823

/-! ## A345950.P3821761303806744900

`A008683(A345935(n+1)²)`
-/

namespace A345950.P3821761303806744900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A345935 (n + 1) ^ 2).toNat

end

end A345950.P3821761303806744900

/-! ## A345950.P18221231243166986295

`A000007(A345935(n+1)-1)`
-/

namespace A345950.P18221231243166986295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A345935 (n + 1) - 1).toNat

end

end A345950.P18221231243166986295

/-! ## A345950.P3924709337870376694

`A000007(A346089(n+1)-1)`
-/

namespace A345950.P3924709337870376694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A346089 (n + 1) - 1).toNat

end

end A345950.P3924709337870376694

/-! ## A345950.P12354861245599264053

`A010051(2*A345935(n+1))`
-/

namespace A345950.P12354861245599264053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A345935 (n + 1)).toNat

end

end A345950.P12354861245599264053

/-! ## A345950.P10460614656607547918

`A328845(C(2, A346089(n+1)))`
-/

namespace A345950.P10460614656607547918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328845 (Nat.choose 2 (A346089 (n + 1)).toNat)

end

end A345950.P10460614656607547918

/-! ## A345950.P17269378528100393626

`∏{e}[A346089(n+1), A056620(#)]`
-/

namespace A345950.P17269378528100393626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056620 (Nat.factorization (f1 n).natAbs p)

end

end A345950.P17269378528100393626

/-! ## A345950.P5568083556898308398

`∏{p}[A346089(n+1), 1-A346089(#)]`
-/

namespace A345950.P5568083556898308398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - A346089 p)

end

end A345950.P5568083556898308398

/-! ## A345950.P10809110503596060268

`∏{e}[A345935(n+1), 1-A345935(#)]`
-/

namespace A345950.P10809110503596060268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - A345935 (Nat.factorization (f1 n).natAbs p))

end

end A345950.P10809110503596060268

/-! ## A345950.P6526124801992575872

`∏{e}[A345935(n+1), A263658(A180424(#))]`
-/

namespace A345950.P6526124801992575872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A263658 (A180424 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A345950.P6526124801992575872

/-! ## A345950.P14216429998653731807

`A010051(A345935(n+1)+A345935(n+1))`
-/

namespace A345950.P14216429998653731807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A345935 (n + 1) + A345935 (n + 1)).toNat

end

end A345950.P14216429998653731807

/-! ## A345950.P10929024147990018770

`C(A046523(A346088(n+1)), A046523(n+1))`
-/

namespace A345950.P10929024147990018770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046523 (A346088 (n + 1)).toNat).toNat (A046523 (n + 1)).toNat

end

end A345950.P10929024147990018770

/-! ## A345950.P8714867905199104567

`C(A346068(A346088(n+1)), A346068(n+1))`
-/

namespace A345950.P8714867905199104567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A346068 (A346088 (n + 1)).toNat).toNat (A346068 (n + 1)).toNat

end

end A345950.P8714867905199104567

/-! ## A345950.P11491759194296633201

`C(A346089(A346088(n+1)), A346089(n+1))`
-/

namespace A345950.P11491759194296633201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A346089 (A346088 (n + 1)).toNat).toNat (A346089 (n + 1)).toNat

end

end A345950.P11491759194296633201

/-! ## A345950.P14751057306856178027

`C(A346111(A346088(n+1)), A346111(n+1))`
-/

namespace A345950.P14751057306856178027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A346111 (A346088 (n + 1)).toNat).toNat (A346111 (n + 1)).toNat

end

end A345950.P14751057306856178027

/-! ## A345950.P16003720073252728135

`val(A346072(A346088(n+1)), A346072(n+1))`
-/

namespace A345950.P16003720073252728135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A346072 (A346088 (n + 1)).toNat).toNat (A346072 (n + 1)).toNat

end

end A345950.P16003720073252728135

/-!
# A345951: a(n) = 1 if A002034(n), the smallest positive integer k such that n divides k!, is larger than A006530(n), the greatest prime factor of n, otherwise 0.

The programs for A345951, the canonical program `A345951.P4678603625690562333` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345951 has offset 1).

The definition of A345951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345951.P7324740094578225849

`char[A057109(n+1)-1]`
-/

namespace A345951.P7324740094578225849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A345951.P7324740094578225849

namespace A345951

/-- `char[A057109(n+1)-1]` -/
def P7324740094578225849.Spec : Prop :=
  ∀ n, (P7324740094578225849.a n : ℤ) = A345951 (n + 1)

end A345951

/-! ## A345951.P4678603625690562333

`char[lt[0, A345940(n+1)]]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A345951

/-- `char[lt[0, A345940(n+1)]]` -/
def P4678603625690562333.Spec : Prop :=
  ∀ n, (P4678603625690562333.a n : ℤ) = A345951 (n + 1)

theorem P4678603625690562333.correct : P4678603625690562333.Spec := by
  intro n
  simp only [A345951, Nat.add_sub_cancel]

end A345951

/-! ## A345951.P11606738707668283875

`ceil(sqrt(A057108(n+1)/(n+1)))`
-/

namespace A345951.P11606738707668283875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A057108 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)⌉

end

end A345951.P11606738707668283875

namespace A345951

/-- `ceil(sqrt(A057108(n+1)/(n+1)))` -/
def P11606738707668283875.Spec : Prop :=
  ∀ n, P11606738707668283875.a n = A345951 (n + 1)

end A345951

/-! ## A345951.P17846447688108770200

`A066247(A002034(n+1))`
-/

namespace A345951.P17846447688108770200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A002034 (n + 1)).toNat

end

end A345951.P17846447688108770200

namespace A345951

/-- `A066247(A002034(n+1))` -/
def P17846447688108770200.Spec : Prop :=
  ∀ n, P17846447688108770200.a n = A345951 (n + 1)

end A345951

/-! ## A345951.P1818958421126010332

`A056170(A346088(n+1))`
-/

namespace A345951.P1818958421126010332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A346088 (n + 1)).toNat

end

end A345951.P1818958421126010332

namespace A345951

/-- `A056170(A346088(n+1))` -/
def P1818958421126010332.Spec : Prop :=
  ∀ n, P1818958421126010332.a n = A345951 (n + 1)

end A345951

/-! ## A345951.P12946563606712127284

`1-A000007(A057108(n+1))`
-/

namespace A345951.P12946563606712127284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A057108 (n + 1)).toNat

end

end A345951.P12946563606712127284

namespace A345951

/-- `1-A000007(A057108(n+1))` -/
def P12946563606712127284.Spec : Prop :=
  ∀ n, P12946563606712127284.a n = A345951 (n + 1)

end A345951

/-! ## A345951.P18048963402876937461

`∑{e}[∑{e}[A002034(n+1), #], A000045(#)]`
-/

namespace A345951.P18048963402876937461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000045 (Nat.factorization (f1 n) p)

end

end A345951.P18048963402876937461

namespace A345951

/-- `∑{e}[∑{e}[A002034(n+1), #], A000045(#)]` -/
def P18048963402876937461.Spec : Prop :=
  ∀ n, P18048963402876937461.a n = A345951 (n + 1)

end A345951

/-! ## A345951.P17637562724245607139

`A001045(∑{e}[∑{e}[A002034(n+1), #], #])`
-/

namespace A345951.P17637562724245607139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A345951.P17637562724245607139

namespace A345951

/-- `A001045(∑{e}[∑{e}[A002034(n+1), #], #])` -/
def P17637562724245607139.Spec : Prop :=
  ∀ n, P17637562724245607139.a n = A345951 (n + 1)

end A345951

/-! ## A345951.P10618021057734743132

`∑{e}[∑{e}[A002034(n+1), #], A112197(#)]`
-/

namespace A345951.P10618021057734743132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A112197 (Nat.factorization (f1 n) p)

end

end A345951.P10618021057734743132

namespace A345951

/-- `∑{e}[∑{e}[A002034(n+1), #], A112197(#)]` -/
def P10618021057734743132.Spec : Prop :=
  ∀ n, P10618021057734743132.a n = A345951 (n + 1)

end A345951

/-! ## A345951.P4180194327177679761

`A122416(n+1)%A217581(A002034(n+1))`
-/

namespace A345951.P4180194327177679761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122416 (n + 1)) (A217581 (A002034 (n + 1)).toNat)

end

end A345951.P4180194327177679761

namespace A345951

/-- `A122416(n+1)%A217581(A002034(n+1))` -/
def P4180194327177679761.Spec : Prop :=
  ∀ n, P4180194327177679761.a n = A345951 (n + 1)

end A345951

/-! ## A345951.P8383425873319713955

`A001221(A346088(n+1)/A020639(A346088(n+1)))`
-/

namespace A345951.P8383425873319713955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A346088 (n + 1) : ℚ) / (A020639 (A346088 (n + 1)).toNat : ℚ))).toNat

end

end A345951.P8383425873319713955

namespace A345951

/-- `A001221(A346088(n+1)/A020639(A346088(n+1)))` -/
def P8383425873319713955.Spec : Prop :=
  ∀ n, P8383425873319713955.a n = A345951 (n + 1)

end A345951

/-! ## A345951.P15212983706663177173

`A057078(A057078(3*n+1)^A057108(n+1))`
-/

namespace A345951.P15212983706663177173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (SequenceMachineLib.roundAway ((A057078 (3 * n + 1) : ℚ) ^ (A057108 (n + 1) : ℤ))).toNat

end

end A345951.P15212983706663177173

namespace A345951

/-- `A057078(A057078(3*n+1)^A057108(n+1))` -/
def P15212983706663177173.Spec : Prop :=
  ∀ n, P15212983706663177173.a n = A345951 (n + 1)

end A345951

/-! ## A345951.P7076169862030618273

`A345952((A345940(n+1)+1)²)`
-/

namespace A345951.P7076169862030618273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345952 ((A345940 (n + 1) + 1) ^ 2).toNat

end

end A345951.P7076169862030618273

namespace A345951

/-- `A345952((A345940(n+1)+1)²)` -/
def P7076169862030618273.Spec : Prop :=
  ∀ n, P7076169862030618273.a n = A345951 (n + 1)

end A345951

/-! ## A345951.P3726176785855187229

`A362333(A345940(n+1)+1)`
-/

namespace A345951.P3726176785855187229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362333 (A345940 (n + 1) + 1).toNat

end

end A345951.P3726176785855187229

namespace A345951

/-- `A362333(A345940(n+1)+1)` -/
def P3726176785855187229.Spec : Prop :=
  ∀ n, P3726176785855187229.a n = A345951 (n + 1)

end A345951

/-! ## A345951.P15127643728314830737

`A057078(3^A057108(n+1))`
-/

namespace A345951.P15127643728314830737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A057108 (n + 1) : ℤ))).toNat

end

end A345951.P15127643728314830737

namespace A345951

/-- `A057078(3^A057108(n+1))` -/
def P15127643728314830737.Spec : Prop :=
  ∀ n, P15127643728314830737.a n = A345951 (n + 1)

end A345951

/-! ## A345951.P7645862870498705096

`1-A010057(A345940(n+1)²)`
-/

namespace A345951.P7645862870498705096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010057 (A345940 (n + 1) ^ 2).toNat

end

end A345951.P7645862870498705096

namespace A345951

/-- `1-A010057(A345940(n+1)²)` -/
def P7645862870498705096.Spec : Prop :=
  ∀ n, P7645862870498705096.a n = A345951 (n + 1)

end A345951

/-!
# A345952: a(n) = 1 if the largest prime power divisor of n (A034699) is greater than the largest prime divisor of n (A006530).

The programs for A345952, there is no canonical definition to state claims against.
-/

/-! ## A345952.P4682520014272308300

`char[A122145(n+1)-1]`
-/

namespace A345952.P4682520014272308300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A345952.P4682520014272308300

/-! ## A345952.P12619325752492335626

`char[lt[1, A088388(n+1)]]`
-/

namespace A345952.P12619325752492335626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A345952.P12619325752492335626

/-! ## A345952.P14603445707211798210

`A056170(A034699(n+1))`
-/

namespace A345952.P14603445707211798210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A034699 (n + 1)).toNat

end

end A345952.P14603445707211798210

/-! ## A345952.P4121570892039841732

`A249442(A088388(n+1)²)`
-/

namespace A345952.P4121570892039841732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 (A088388 (n + 1) ^ 2).toNat

end

end A345952.P4121570892039841732

/-! ## A345952.P1924965973033179137

`A088388(∏{p}[A088388(n+1), #])`
-/

namespace A345952.P1924965973033179137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A345952.P1924965973033179137

/-! ## A345952.P17875483726145889703

`A109606(A088388(n+1)+1)%2`
-/

namespace A345952.P17875483726145889703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109606 (A088388 (n + 1) + 1).toNat) 2

end

end A345952.P17875483726145889703

/-! ## A345952.P15712412289891474853

`A268340(A034699(2*n+1-n))`
-/

namespace A345952.P15712412289891474853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268340 (A034699 (2 * n + 1 - n)).toNat

end

end A345952.P15712412289891474853

/-! ## A345952.P3054953046813441226

`∑{e}[∑{e}[A034699(n+1), A006530(#)], #]`
-/

namespace A345952.P3054953046813441226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A006530 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A345952.P3054953046813441226

/-! ## A345952.P12373816193246921771

`A001221(∑{e}[∑{e}[A034699(n+1), #], #]+1)`
-/

namespace A345952.P12373816193246921771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)

end

end A345952.P12373816193246921771

/-! ## A345952.P17485764995462261178

`A345951(A057110(n+1)+A002034(n+1))`
-/

namespace A345952.P17485764995462261178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345951 (A057110 (n + 1) + A002034 (n + 1)).toNat

end

end A345952.P17485764995462261178

/-! ## A345952.P11455730889400302049

`A089026(n+1)%A285707(A034699(n+1))`
-/

namespace A345952.P11455730889400302049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089026 (n + 1)) (A285707 (A034699 (n + 1)).toNat)

end

end A345952.P11455730889400302049

/-! ## A345952.P10224965457879029238

`A345951((A345951(n+1)+1)*A034699(n+1))`
-/

namespace A345952.P10224965457879029238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345951 ((A345951 (n + 1) + 1) * A034699 (n + 1)).toNat

end

end A345952.P10224965457879029238

/-! ## A345952.P10501510726862933907

`A249442(2*A088388(n+1)*A088388(n+1))`
-/

namespace A345952.P10501510726862933907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 (2 * A088388 (n + 1) * A088388 (n + 1)).toNat

end

end A345952.P10501510726862933907

/-! ## A345952.P5678859121662085431

`1-gcd(A008683(n+1), A008683(A034699(n+1)))`
-/

namespace A345952.P5678859121662085431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Int.gcd (A008683 (n + 1)) (A008683 (A034699 (n + 1)).toNat) : ℤ)

end

end A345952.P5678859121662085431

/-! ## A345952.P12904301940343864353

`A345951(A006530(n+1))+A345951(A034699(n+1))`
-/

namespace A345952.P12904301940343864353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345951 (A006530 (n + 1)).toNat + A345951 (A034699 (n + 1)).toNat

end

end A345952.P12904301940343864353

/-! ## A345952.P7201266001251898103

`A028310(2*n+3)%A032742(A034699(n+1))`
-/

namespace A345952.P7201266001251898103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (2 * n + 3)) (A032742 (A034699 (n + 1)).toNat)

end

end A345952.P7201266001251898103

/-! ## A345952.P3258207974346243771

`1-A322353(A034699(n+1)²)`
-/

namespace A345952.P3258207974346243771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A322353 (A034699 (n + 1) ^ 2).toNat

end

end A345952.P3258207974346243771

/-! ## A345952.P10144464563700444684

`1-A322353(A034699((n+1)²))`
-/

namespace A345952.P10144464563700444684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A322353 (A034699 ((n + 1) ^ 2)).toNat

end

end A345952.P10144464563700444684

/-! ## A345952.P2979078777273418629

`A268340(A034699((n+1)²))*A268340(A034699(n+1))`
-/

namespace A345952.P2979078777273418629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268340 (A034699 ((n + 1) ^ 2)).toNat * A268340 (A034699 (n + 1)).toNat

end

end A345952.P2979078777273418629

/-! ## A345952.P15946904304693690546

`A345951(A045966(n+1))`
-/

namespace A345952.P15946904304693690546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345951 (A045966 (n + 1)).toNat

end

end A345952.P15946904304693690546

/-!
# A345953: Number of ways to tile a 2 X n strip with squares and P-shaped pentominos.

The programs for A345953, the canonical program `A345953.P6029380624100609068` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345953 has offset 0).

The definition of A345953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345953.P12093453996978965949

`ogf(1/(1-x-4x^3-2x^5))`
-/

namespace A345953.P12093453996978965949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, -4, 0, -2] n

end

end A345953.P12093453996978965949

namespace A345953

/-- `ogf(1/(1-x-4x^3-2x^5))` -/
def P12093453996978965949.Spec : Prop :=
  ∀ n, P12093453996978965949.a n = A345953 n

end A345953

/-! ## A345953.P6029380624100609068

`a(n-1)+4*a(n-3)+2*a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5, a(4)=9`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A345953

/-- `a(n-1)+4*a(n-3)+2*a(n-5)` -/
def P6029380624100609068.Spec : Prop :=
  ∀ n, (P6029380624100609068.a n : ℤ) = A345953 n

theorem P6029380624100609068.correct : P6029380624100609068.Spec := by
  intro n
  simp only [A345953]

end A345953

/-!
# A345954: a(n) is the number of ternary strings of length n with at least three 0's.

The programs for A345954, the canonical program `A345954.P11297615328595743091` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345954 has offset 0).

The definition of A345954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345954.P11297615328595743091

`3^n-2^(n-3)*(n*(n+3)+8)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A345954

/-- `3^n-2^(n-3)*(n*(n+3)+8)` -/
def P11297615328595743091.Spec : Prop :=
  ∀ n, P11297615328595743091.a n = (A345954 n : ℚ)

end A345954

/-! ## A345954.P8499624842325801078

`ogf(x^3/(1-9x+30x^2-44x^3+24x^4))`
-/

namespace A345954.P8499624842325801078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -9, 30, -44, 24] n

end

end A345954.P8499624842325801078

namespace A345954

/-- `ogf(x^3/(1-9x+30x^2-44x^3+24x^4))` -/
def P8499624842325801078.Spec : Prop :=
  ∀ n, P8499624842325801078.a n = A345954 n

end A345954

/-! ## A345954.P11139857757446842356

`∑{#}[n, C(n, #)*A002662(#)]`
-/

namespace A345954.P11139857757446842356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A002662 k

end

end A345954.P11139857757446842356

namespace A345954

/-- `∑{#}[n, C(n, #)*A002662(#)]` -/
def P11139857757446842356.Spec : Prop :=
  ∀ n, P11139857757446842356.a n = A345954 n

end A345954

/-! ## A345954.P14238929003237910883

`abs(A000244(n)-A072863(n))`
-/

namespace A345954.P14238929003237910883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A072863 n|

end

end A345954.P14238929003237910883

namespace A345954

/-- `abs(A000244(n)-A072863(n))` -/
def P14238929003237910883.Spec : Prop :=
  ∀ n, P14238929003237910883.a n = A345954 n

end A345954

/-! ## A345954.P5325093544506091378

`∑[A025192(n)-A190050(n)]`
-/

namespace A345954.P5325093544506091378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n - A190050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345954.P5325093544506091378

namespace A345954

/-- `∑[A025192(n)-A190050(n)]` -/
def P5325093544506091378.Spec : Prop :=
  ∀ n, P5325093544506091378.a n = A345954 n

end A345954

/-! ## A345954.P6363622757389548604

`Δ[A003462(n)-A081908(n)]`
-/

namespace A345954.P6363622757389548604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - A081908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A345954.P6363622757389548604

namespace A345954

/-- `Δ[A003462(n)-A081908(n)]` -/
def P6363622757389548604.Spec : Prop :=
  ∀ n, P6363622757389548604.a n = A345954 n

end A345954

/-! ## A345954.P5744203496928149657

`Δ[A007051(n)-A081908(n)]`
-/

namespace A345954.P5744203496928149657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A081908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A345954.P5744203496928149657

namespace A345954

/-- `Δ[A007051(n)-A081908(n)]` -/
def P5744203496928149657.Spec : Prop :=
  ∀ n, P5744203496928149657.a n = A345954 n

end A345954

/-! ## A345954.P11979029374151435548

`Δ[A124302(n+1)-A081908(n)]`
-/

namespace A345954.P11979029374151435548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 1) - A081908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A345954.P11979029374151435548

namespace A345954

/-- `Δ[A124302(n+1)-A081908(n)]` -/
def P11979029374151435548.Spec : Prop :=
  ∀ n, P11979029374151435548.a n = A345954 n

end A345954

/-! ## A345954.P13622087821977910004

`∑{#}[n, (-1)^(n-#)*C(n, #)*A384415(#)]`
-/

namespace A345954.P13622087821977910004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A384415 k : ℚ)

end

end A345954.P13622087821977910004

namespace A345954

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A384415(#)]` -/
def P13622087821977910004.Spec : Prop :=
  ∀ n, P13622087821977910004.a n = (A345954 n : ℚ)

end A345954

/-!
# A345955: Number of isomorphism classes of indecomposable Fano Bott manifolds of complex dimension n.

The programs for A345955, there is no canonical definition to state claims against.
-/

/-! ## A345955.P7798491457720267655

`A214701(or(n, A025235(n)))`
-/

namespace A345955.P7798491457720267655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (Int.lor (n : ℤ) (A025235 n)).toNat

end

end A345955.P7798491457720267655

/-! ## A345955.P11669640684546670573

`A111854(or(A046974(n), A289780(n)))`
-/

namespace A345955.P11669640684546670573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111854 (Int.lor (A046974 n) (A289780 n)).toNat

end

end A345955.P11669640684546670573

/-! ## A345955.P11157669541974602258

`A061017(A150148(n))-A183096(n+1)`
-/

namespace A345955.P11157669541974602258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A150148 n).toNat - A183096 (n + 1)

end

end A345955.P11157669541974602258

/-! ## A345955.P17842688133063774469

`A061017(A150148(n))+1-A073180(n+1)`
-/

namespace A345955.P17842688133063774469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A150148 n).toNat + (1 - A073180 (n + 1))

end

end A345955.P17842688133063774469

/-!
# A345957: Number of divisors of n with exactly half as many prime factors as n, counting multiplicity.

The programs for A345957, there is no canonical definition to state claims against.
-/

/-! ## A345957.P3371494225331777359

`A065043(n+1)*A096825(n+1)`
-/

namespace A345957.P3371494225331777359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A096825 (n + 1)

end

end A345957.P3371494225331777359

/-! ## A345957.P13036549196608292471

`log2(A007421(n+1))*A096825(n+1)`
-/

namespace A345957.P13036549196608292471
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A007421 (n + 1) : ℝ) * (A096825 (n + 1) : ℝ)

end

end A345957.P13036549196608292471

/-! ## A345957.P4820693294649642622

`C(A096825(n+1), A209634(A061142(n+1)))`
-/

namespace A345957.P4820693294649642622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A096825 (n + 1)).toNat (A209634 (A061142 (n + 1)).toNat).toNat

end

end A345957.P4820693294649642622

/-! ## A345957.P8130150984990780777

`A023416(gcd(2, ∑{e}[n+1, #])^A096825(n+1))`
-/

namespace A345957.P8130150984990780777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway ((Nat.gcd 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) ^ (A096825 (n + 1) : ℤ))).toNat

end

end A345957.P8130150984990780777

/-! ## A345957.P4542805429464298755

`A320655((n+1)*∏{p}[n+1, #]*∏{p}[n+1, #])`
-/

namespace A345957.P4542805429464298755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) * (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A345957.P4542805429464298755

/-!
# A345958: Numbers whose prime indices have reverse-alternating sum 1.

The programs for A345958, the canonical program `A345958.P4294255501086429643` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345958 has offset 1).

The definition of A345958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345958.P4294255501086429643

`eq[1, A344616(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A345958

/-- `eq[1, A344616(n+1)]+1` -/
def P4294255501086429643.Spec : Prop :=
  ∀ n, (P4294255501086429643.a n : ℤ) = A345958 (n + 1)

theorem P4294255501086429643.correct : P4294255501086429643.Spec := by
  intro n
  simp only [A345958, Nat.add_sub_cancel]

end A345958

/-! ## A345958.P11164360312639348765

`eq[2, A043531(a(A344616(n)))]` with `a(0)=1, a(1)=7`
-/

namespace A345958.P11164360312639348765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f2 =>
  A043531 (f2 (A344616 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345958.P11164360312639348765

namespace A345958

/-- `eq[2, A043531(a(A344616(n)))]` -/
def P11164360312639348765.Spec : Prop :=
  ∀ n, (P11164360312639348765.a n : ℤ) = A345958 (n + 1)

end A345958

/-! ## A345958.P3471376977288294965

`eq[2, A084127(a(A344616(n)))]` with `a(0)=7, a(1)=1`
-/

namespace A345958.P3471376977288294965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7, 1] fun n f2 =>
  A084127 (f2 (A344616 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345958.P3471376977288294965

namespace A345958

/-- `eq[2, A084127(a(A344616(n)))]` -/
def P3471376977288294965.Spec : Prop :=
  ∀ n, (P3471376977288294965.a n : ℤ) = A345958 (n + 1)

end A345958

/-! ## A345958.P4554627870985554519

`eq[1, abs(A316524(n+1))]+1`
-/

namespace A345958.P4554627870985554519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316524 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A345958.P4554627870985554519

namespace A345958

/-- `eq[1, abs(A316524(n+1))]+1` -/
def P4554627870985554519.Spec : Prop :=
  ∀ n, (P4554627870985554519.a n : ℤ) = A345958 (n + 1)

end A345958

/-! ## A345958.P14240524736858301419

`eq[2, A000040(a(A344616(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A345958.P14240524736858301419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A000040 (f2 (A344616 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345958.P14240524736858301419

namespace A345958

/-- `eq[2, A000040(a(A344616(n)))]` -/
def P14240524736858301419.Spec : Prop :=
  ∀ n, (P14240524736858301419.a n : ℤ) = A345958 (n + 1)

end A345958

/-! ## A345958.P11915275126624598848

`record[A000037(n+1)/A344616(A000037(n+1))]`
-/

namespace A345958.P11915275126624598848
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000037 (n + 1) : ℚ) / (A344616 (A000037 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345958.P11915275126624598848

namespace A345958

/-- `record[A000037(n+1)/A344616(A000037(n+1))]` -/
def P11915275126624598848.Spec : Prop :=
  ∀ n, P11915275126624598848.a n = (A345958 (n + 1) : ℚ)

end A345958

/-! ## A345958.P13484236938449692281

`eq[1, A344616(A028310(n))]`
-/

namespace A345958.P13484236938449692281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345958.P13484236938449692281

namespace A345958

/-- `eq[1, A344616(A028310(n))]` -/
def P13484236938449692281.Spec : Prop :=
  ∀ n, (P13484236938449692281.a n : ℤ) = A345958 (n + 1)

end A345958

/-! ## A345958.P12053909190801194761

`A020725(eq[1, A344616(n+1)])`
-/

namespace A345958.P12053909190801194761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345958.P12053909190801194761

namespace A345958

/-- `A020725(eq[1, A344616(n+1)])` -/
def P12053909190801194761.Spec : Prop :=
  ∀ n, P12053909190801194761.a n = A345958 (n + 1)

end A345958

/-! ## A345958.P9407407557734274516

`eq[1, A344616(A008574(n))]`
-/

namespace A345958.P9407407557734274516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345958.P9407407557734274516

namespace A345958

/-- `eq[1, A344616(A008574(n))]` -/
def P9407407557734274516.Spec : Prop :=
  ∀ n, (P9407407557734274516.a n : ℤ) = A345958 (n + 1)

end A345958

/-! ## A345958.P10224842718865773420

`eq[1, A316524(A316571(2*n+1))²]`
-/

namespace A345958.P10224842718865773420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A316571 (2 * n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345958.P10224842718865773420

namespace A345958

/-- `eq[1, A316524(A316571(2*n+1))²]` -/
def P10224842718865773420.Spec : Prop :=
  ∀ n, (P10224842718865773420.a n : ℤ) = A345958 (n + 1)

end A345958

/-!
# A345959: Numbers whose prime indices have alternating sum -1.

The programs for A345959, the canonical program `A345959.P3579620303235481699` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345959 has offset 1).

The definition of A345959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345959.P3579620303235481699

`filter[A345958(n+1), A065043(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A345959

/-- `filter[A345958(n+1), A065043(#)]` -/
def P3579620303235481699.Spec : Prop :=
  ∀ n, P3579620303235481699.a n = A345959 (n + 1)

theorem P3579620303235481699.correct : P3579620303235481699.Spec := by
  intro n
  simp only [A345959, Nat.add_sub_cancel]

end A345959

/-! ## A345959.P17809087032241412062

`filter[A345958(n+1), A353669(#)]`
-/

namespace A345959.P17809087032241412062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A345959.P17809087032241412062

namespace A345959

/-- `filter[A345958(n+1), A353669(#)]` -/
def P17809087032241412062.Spec : Prop :=
  ∀ n, P17809087032241412062.a n = A345959 (n + 1)

end A345959

/-! ## A345959.P12002796632374485348

`eq[3, A335424(n+1)]+1`
-/

namespace A345959.P12002796632374485348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335424 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A345959.P12002796632374485348

namespace A345959

/-- `eq[3, A335424(n+1)]+1` -/
def P12002796632374485348.Spec : Prop :=
  ∀ n, (P12002796632374485348.a n : ℤ) = A345959 (n + 1)

end A345959

/-! ## A345959.P1322003489222180715

`∩[A119899(n+1), A345958(n+1)]`
-/

namespace A345959.P1322003489222180715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345959.P1322003489222180715

namespace A345959

/-- `∩[A119899(n+1), A345958(n+1)]` -/
def P1322003489222180715.Spec : Prop :=
  ∀ n, (P1322003489222180715.a n : ℤ) = A345959 (n + 1)

end A345959

/-! ## A345959.P7008192705542535149

`∩[A028260(n+1), A345958(n+1)]`
-/

namespace A345959.P7008192705542535149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345959.P7008192705542535149

namespace A345959

/-- `∩[A028260(n+1), A345958(n+1)]` -/
def P7008192705542535149.Spec : Prop :=
  ∀ n, (P7008192705542535149.a n : ℤ) = A345959 (n + 1)

end A345959

/-! ## A345959.P12176839997554673560

`eq[2, 1-A316524(n+1)]+1`
-/

namespace A345959.P12176839997554673560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A316524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A345959.P12176839997554673560

namespace A345959

/-- `eq[2, 1-A316524(n+1)]+1` -/
def P12176839997554673560.Spec : Prop :=
  ∀ n, (P12176839997554673560.a n : ℤ) = A345959 (n + 1)

end A345959

/-! ## A345959.P17147422519250762344

`∩[A229153(n+1), A345958(n+1)]`
-/

namespace A345959.P17147422519250762344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345959.P17147422519250762344

namespace A345959

/-- `∩[A229153(n+1), A345958(n+1)]` -/
def P17147422519250762344.Spec : Prop :=
  ∀ n, (P17147422519250762344.a n : ℤ) = A345959 (n + 1)

end A345959

/-! ## A345959.P16857453555838715816

`∩[A233182(n+1), A345958(n+1)]`
-/

namespace A345959.P16857453555838715816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345959.P16857453555838715816

namespace A345959

/-- `∩[A233182(n+1), A345958(n+1)]` -/
def P16857453555838715816.Spec : Prop :=
  ∀ n, (P16857453555838715816.a n : ℤ) = A345959 (n + 1)

end A345959

/-! ## A345959.P1149503854469572614

`∩[A248150(n+1), A345958(n+1)]`
-/

namespace A345959.P1149503854469572614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345959.P1149503854469572614

namespace A345959

/-- `∩[A248150(n+1), A345958(n+1)]` -/
def P1149503854469572614.Spec : Prop :=
  ∀ n, (P1149503854469572614.a n : ℤ) = A345959 (n + 1)

end A345959

/-! ## A345959.P12965008929159064552

`∩[A028983(n+1), A345958(n+1)]`
-/

namespace A345959.P12965008929159064552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345959.P12965008929159064552

namespace A345959

/-- `∩[A028983(n+1), A345958(n+1)]` -/
def P12965008929159064552.Spec : Prop :=
  ∀ n, (P12965008929159064552.a n : ℤ) = A345959 (n + 1)

end A345959

/-! ## A345959.P17712697135304754538

`eq[3, A335424(A008574(n))]`
-/

namespace A345959.P17712697135304754538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335424 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345959.P17712697135304754538

namespace A345959

/-- `eq[3, A335424(A008574(n))]` -/
def P17712697135304754538.Spec : Prop :=
  ∀ n, (P17712697135304754538.a n : ℤ) = A345959 (n + 1)

end A345959

/-! ## A345959.P17838422277036728635

`eq[3, A335424(A028310(n))]`
-/

namespace A345959.P17838422277036728635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335424 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345959.P17838422277036728635

namespace A345959

/-- `eq[3, A335424(A028310(n))]` -/
def P17838422277036728635.Spec : Prop :=
  ∀ n, (P17838422277036728635.a n : ℤ) = A345959 (n + 1)

end A345959

/-! ## A345959.P4381266357379397600

`∩[A119847(n+1), A345958(n+1)]`
-/

namespace A345959.P4381266357379397600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345959.P4381266357379397600

namespace A345959

/-- `∩[A119847(n+1), A345958(n+1)]` -/
def P4381266357379397600.Spec : Prop :=
  ∀ n, (P4381266357379397600.a n : ℤ) = A345959 (n + 1)

end A345959

/-! ## A345959.P4341265793655373498

`∩[A183300(n+1), A345958(n+1)]`
-/

namespace A345959.P4341265793655373498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345959.P4341265793655373498

namespace A345959

/-- `∩[A183300(n+1), A345958(n+1)]` -/
def P4341265793655373498.Spec : Prop :=
  ∀ n, (P4341265793655373498.a n : ℤ) = A345959 (n + 1)

end A345959

/-! ## A345959.P5190375289527083302

`eq[A008836(n+1), A344616(n+1)]+1`
-/

namespace A345959.P5190375289527083302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A345959.P5190375289527083302

namespace A345959

/-- `eq[A008836(n+1), A344616(n+1)]+1` -/
def P5190375289527083302.Spec : Prop :=
  ∀ n, (P5190375289527083302.a n : ℤ) = A345959 (n + 1)

end A345959

/-! ## A345959.P16753522470857074782

`eq[2, A316524(2*(n+1))]+1`
-/

namespace A345959.P16753522470857074782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A345959.P16753522470857074782

namespace A345959

/-- `eq[2, A316524(2*(n+1))]+1` -/
def P16753522470857074782.Spec : Prop :=
  ∀ n, (P16753522470857074782.a n : ℤ) = A345959 (n + 1)

end A345959

/-!
# A345960: Numbers whose prime indices have alternating sum 2.

The programs for A345960, there is no canonical definition to state claims against.
-/

/-! ## A345960.P7093271144449922712

`eq[2, A316524(n+1)]+1`
-/

namespace A345960.P7093271144449922712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A345960.P7093271144449922712

/-! ## A345960.P14558599770700911251

`eq[3, A335424(A004277(n))]`
-/

namespace A345960.P14558599770700911251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335424 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345960.P14558599770700911251

/-! ## A345960.P8530347117009537901

`eq[3, A335424(A022144(n))]`
-/

namespace A345960.P8530347117009537901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335424 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345960.P8530347117009537901

/-! ## A345960.P8161759477794553779

`eq[3, A335424(A008574(2*n))]`
-/

namespace A345960.P8161759477794553779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335424 (A008574 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345960.P8161759477794553779

/-! ## A345960.P12521123547648801683

`filter[A345961(n+1), A066829(#)]`
-/

namespace A345960.P12521123547648801683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A345960.P12521123547648801683

/-! ## A345960.P16029880736854375326

`∩[A026422(n+1), A345961(n+1)]`
-/

namespace A345960.P16029880736854375326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345960.P16029880736854375326

/-! ## A345960.P832023062194439371

`∩[A026424(n+1), A345961(n+1)]`
-/

namespace A345960.P832023062194439371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345960.P832023062194439371

/-! ## A345960.P16860499653773964693

`∩[A344609(n+1), A345961(n+1)]`
-/

namespace A345960.P16860499653773964693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345960.P16860499653773964693

/-! ## A345960.P6849186821697732916

`eq[A008836(2*(n+1)), A344616(2*(n+1))]+1`
-/

namespace A345960.P6849186821697732916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A345960.P6849186821697732916

/-!
# A345961: Numbers whose prime indices have reverse-alternating sum 2.

The programs for A345961, the canonical program `A345961.P15610581827653911778` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345961 has offset 1).

The definition of A345961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345961.P15610581827653911778

`eq[2, A344616(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A345961

/-- `eq[2, A344616(n+1)]+1` -/
def P15610581827653911778.Spec : Prop :=
  ∀ n, (P15610581827653911778.a n : ℤ) = A345961 (n + 1)

theorem P15610581827653911778.correct : P15610581827653911778.Spec := by
  intro n
  simp only [A345961, Nat.add_sub_cancel]

end A345961

/-! ## A345961.P10332804986239349397

`A344180(eq[2, A344616(A344180(n))])`
-/

namespace A345961.P10332804986239349397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345961.P10332804986239349397

namespace A345961

/-- `A344180(eq[2, A344616(A344180(n))])` -/
def P10332804986239349397.Spec : Prop :=
  ∀ n, P10332804986239349397.a n = A345961 (n + 1)

end A345961

/-! ## A345961.P4581546128712319117

`eq[2, abs(A316524(n+1))]+1`
-/

namespace A345961.P4581546128712319117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316524 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A345961.P4581546128712319117

namespace A345961

/-- `eq[2, abs(A316524(n+1))]+1` -/
def P4581546128712319117.Spec : Prop :=
  ∀ n, (P4581546128712319117.a n : ℤ) = A345961 (n + 1)

end A345961

/-! ## A345961.P13096912393420754535

`eq[2, A344616(A028310(n))]`
-/

namespace A345961.P13096912393420754535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345961.P13096912393420754535

namespace A345961

/-- `eq[2, A344616(A028310(n))]` -/
def P13096912393420754535.Spec : Prop :=
  ∀ n, (P13096912393420754535.a n : ℤ) = A345961 (n + 1)

end A345961

/-! ## A345961.P5950163408732582098

`A020725(eq[2, A344616(n+1)])`
-/

namespace A345961.P5950163408732582098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345961.P5950163408732582098

namespace A345961

/-- `A020725(eq[2, A344616(n+1)])` -/
def P5950163408732582098.Spec : Prop :=
  ∀ n, P5950163408732582098.a n = A345961 (n + 1)

end A345961

/-! ## A345961.P8335284372039401569

`A065475(eq[2, A344616(n+1)])`
-/

namespace A345961.P8335284372039401569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345961.P8335284372039401569

namespace A345961

/-- `A065475(eq[2, A344616(n+1)])` -/
def P8335284372039401569.Spec : Prop :=
  ∀ n, P8335284372039401569.a n = A345961 (n + 1)

end A345961

/-! ## A345961.P6356847249066505352

`A153152(eq[2, A344616(n+1)])`
-/

namespace A345961.P6356847249066505352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345961.P6356847249066505352

namespace A345961

/-- `A153152(eq[2, A344616(n+1)])` -/
def P6356847249066505352.Spec : Prop :=
  ∀ n, P6356847249066505352.a n = A345961 (n + 1)

end A345961

/-! ## A345961.P7555042767656629606

`eq[2, A344616(A008574(n))]`
-/

namespace A345961.P7555042767656629606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345961.P7555042767656629606

namespace A345961

/-- `eq[2, A344616(A008574(n))]` -/
def P7555042767656629606.Spec : Prop :=
  ∀ n, (P7555042767656629606.a n : ℤ) = A345961 (n + 1)

end A345961

/-! ## A345961.P6882931658880062344

`∪[A345960(n+1), A345962(n+1)]`
-/

namespace A345961.P6882931658880062344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345961.P6882931658880062344

namespace A345961

/-- `∪[A345960(n+1), A345962(n+1)]` -/
def P6882931658880062344.Spec : Prop :=
  ∀ n, (P6882931658880062344.a n : ℤ) = A345961 (n + 1)

end A345961

/-! ## A345961.P18052191120076771998

`eq[2, A344616(A233583(n+1))]`
-/

namespace A345961.P18052191120076771998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345961.P18052191120076771998

namespace A345961

/-- `eq[2, A344616(A233583(n+1))]` -/
def P18052191120076771998.Spec : Prop :=
  ∀ n, (P18052191120076771998.a n : ℤ) = A345961 (n + 1)

end A345961

/-!
# A345962: Numbers whose prime indices have alternating sum -2.

The programs for A345962, there is no canonical definition to state claims against.
-/

/-! ## A345962.P15936014815436873914

`eq[-2, A316524(round(acot(n)+n))]`
-/

namespace A345962.P15936014815436873914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345962.P15936014815436873914

/-! ## A345962.P2965746579015718916

`eq[-2, A316524(n+1)]+1`
-/

namespace A345962.P2965746579015718916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A345962.P2965746579015718916

/-! ## A345962.P13028890755923317862

`eq[3, A316524(A316571(n+1))]`
-/

namespace A345962.P13028890755923317862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A316571 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345962.P13028890755923317862

/-! ## A345962.P867506619017988160

`filter[A345961(n+1), A065043(#)]`
-/

namespace A345962.P867506619017988160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A345962.P867506619017988160

/-! ## A345962.P10662812830351076010

`filter[A345961(n+1), A353331(#)]`
-/

namespace A345962.P10662812830351076010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A345962.P10662812830351076010

/-! ## A345962.P4025011034637701382

`filter[A345961(n+1), A353669(#)]`
-/

namespace A345962.P4025011034637701382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A345962.P4025011034637701382

/-! ## A345962.P17920559927860386623

`eq[-2, A316524(abs(A024000(n))+1)]`
-/

namespace A345962.P17920559927860386623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (|A024000 n| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345962.P17920559927860386623

/-! ## A345962.P13691683764309137852

`∩[A028260(n+1), A345961(n+1)]`
-/

namespace A345962.P13691683764309137852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345962.P13691683764309137852

/-! ## A345962.P3439118194589363081

`∩[A119899(n+1), A345961(n+1)]`
-/

namespace A345962.P3439118194589363081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345962.P3439118194589363081

/-! ## A345962.P86723929221975702

`∩[A322014(n+1), A345961(n+1)]`
-/

namespace A345962.P86723929221975702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345962.P86723929221975702

/-!
# A345963: a(n) = (q^2-q+1)/3 where q = 2^(2*n+1) = A004171(n).

The programs for A345963, the canonical program `A345963.P14092494992791698507` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345963 has offset 0).

The definition of A345963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345963.P4851418404866805004

`ogf((1-2x+16x^2)/(1-21x+84x^2-64x^3))`
-/

namespace A345963.P4851418404866805004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 16] [1, -21, 84, -64] n

end

end A345963.P4851418404866805004

namespace A345963

/-- `ogf((1-2x+16x^2)/(1-21x+84x^2-64x^3))` -/
def P4851418404866805004.Spec : Prop :=
  ∀ n, P4851418404866805004.a n = A345963 n

end A345963

/-! ## A345963.P14092494992791698507

`(2^(4*n+2)-2^(2*n+1)+1)/3`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A345963

/-- `(2^(4*n+2)-2^(2*n+1)+1)/3` -/
def P14092494992791698507.Spec : Prop :=
  ∀ n, P14092494992791698507.a n = (A345963 n : ℚ)

end A345963

/-! ## A345963.P13266901557092027863

`(4^n)²+4*a(n-1)-1` with `a(0)=1`
-/

namespace A345963.P13266901557092027863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((4 ^ n) ^ 2 : ℤ) + (4 * a (n - 1) - 1)

end

end A345963.P13266901557092027863

namespace A345963

/-- `(4^n)²+4*a(n-1)-1` -/
def P13266901557092027863.Spec : Prop :=
  ∀ n, P13266901557092027863.a n = A345963 n

end A345963

/-! ## A345963.P13900397300783008913

`or(4*a(n-1), (4^n)²)-1` with `a(0)=1`
-/

namespace A345963.P13900397300783008913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (4 * a (n - 1)) ((4 ^ n) ^ 2 : ℤ) - 1

end

end A345963.P13900397300783008913

namespace A345963

/-- `or(4*a(n-1), (4^n)²)-1` -/
def P13900397300783008913.Spec : Prop :=
  ∀ n, P13900397300783008913.a n = A345963 n

end A345963

/-! ## A345963.P3940031615068665787

`xor(4*a(n-1), (4^n)²)-1` with `a(0)=1`
-/

namespace A345963.P3940031615068665787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (4 * a (n - 1)) ((4 ^ n) ^ 2 : ℤ) - 1

end

end A345963.P3940031615068665787

namespace A345963

/-- `xor(4*a(n-1), (4^n)²)-1` -/
def P3940031615068665787.Spec : Prop :=
  ∀ n, P3940031615068665787.a n = A345963 n

end A345963

/-! ## A345963.P11533601332015308089

`A129362(4*n)`
-/

namespace A345963.P11533601332015308089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129362 (4 * n)

end

end A345963.P11533601332015308089

namespace A345963

/-- `A129362(4*n)` -/
def P11533601332015308089.Spec : Prop :=
  ∀ n, P11533601332015308089.a n = A345963 n

end A345963

/-! ## A345963.P3661406885610103690

`A245489(Δ[n²])`
-/

namespace A345963.P3661406885610103690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245489 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A345963.P3661406885610103690

namespace A345963

/-- `A245489(Δ[n²])` -/
def P3661406885610103690.Spec : Prop :=
  ∀ n, P3661406885610103690.a n = A345963 n

end A345963

/-! ## A345963.P1148943222672440153

`∑[A084213(2*n)]`
-/

namespace A345963.P1148943222672440153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084213 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345963.P1148943222672440153

namespace A345963

/-- `∑[A084213(2*n)]` -/
def P1148943222672440153.Spec : Prop :=
  ∀ n, P1148943222672440153.a n = A345963 n

end A345963

/-! ## A345963.P7193254198281461947

`A279260(2*n)+1`
-/

namespace A345963.P7193254198281461947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279260 (2 * n) + 1

end

end A345963.P7193254198281461947

namespace A345963

/-- `A279260(2*n)+1` -/
def P7193254198281461947.Spec : Prop :=
  ∀ n, P7193254198281461947.a n = A345963 n

end A345963

/-! ## A345963.P17187196864948050970

`A166984(n)-A002450(n)`
-/

namespace A345963.P17187196864948050970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166984 n - A002450 n

end

end A345963.P17187196864948050970

namespace A345963

/-- `A166984(n)-A002450(n)` -/
def P17187196864948050970.Spec : Prop :=
  ∀ n, P17187196864948050970.a n = A345963 n

end A345963

/-!
# A345964: At digit-position a(n) in the sequence starts the sum a(n) + 1. This is the lexicographically earliest sequence of distinct positive terms with this property. See the Comments section for more explanations.

The programs for A345964, there is no canonical definition to state claims against.
-/

/-! ## A345964.P13151890765757950471

`(n+2)^2^C(n, 8)`
-/

namespace A345964.P13151890765757950471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 ^ Nat.choose n 8

end

end A345964.P13151890765757950471

/-! ## A345964.P14916117295664981974

`(n+2)^∏{e}[1-(n+1)!, #]`
-/

namespace A345964.P14916117295664981974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.factorial (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A345964.P14916117295664981974

/-! ## A345964.P7528367336094421049

`∑[A205295(2*n)+1]`
-/

namespace A345964.P7528367336094421049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205295 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345964.P7528367336094421049

/-! ## A345964.P492124535485560811

`(n+2)^A059053(n)!`
-/

namespace A345964.P492124535485560811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.factorial (A059053 n).toNat

end

end A345964.P492124535485560811

/-! ## A345964.P759997869439693830

`A088472(a(n-1)+1)` with `a(0)=2`
-/

namespace A345964.P759997869439693830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A088472 (a (n - 1) + 1).toNat

end

end A345964.P759997869439693830

/-!
# A345965: a(1) = 1; for n>1, a(n) = phi(n) + a(n/p) where p is the least prime divisor of n.

The programs for A345965, there is no canonical definition to state claims against.
-/

/-! ## A345965.P17364265781863704333

`A000010(n+1)+a(A089196(n))` with `a(0)=1`
-/

namespace A345965.P17364265781863704333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (n + 1) + a (A089196 n).toNat

end

end A345965.P17364265781863704333

/-! ## A345965.P1893416142593559394

`A109606(n+1)+a(A089196(n))+1` with `a(0)=1`
-/

namespace A345965.P1893416142593559394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109606 (n + 1) + (a (A089196 n).toNat + 1)

end

end A345965.P1893416142593559394

/-! ## A345965.P8372814729182348844

`A000010(n+1)+a(A032742(n+1)-1)` with `a(0)=1`
-/

namespace A345965.P8372814729182348844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (n + 1) + a (A032742 (n + 1) - 1).toNat

end

end A345965.P8372814729182348844

/-! ## A345965.P7119909760220040325

`A000010(n+1)+a(floor(n/A020639(n+1)))` with `a(0)=1`
-/

namespace A345965.P7119909760220040325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (n + 1) + a ⌊(n : ℚ) / (A020639 (n + 1) : ℚ)⌋.toNat

end

end A345965.P7119909760220040325

/-! ## A345965.P6859651111287306548

`a(n-A060681(n+1))+A005728(n+1)-A005728(n)` with `a(0)=1`
-/

namespace A345965.P6859651111287306548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A060681 (n + 1)).toNat + (A005728 (n + 1) - A005728 n)

end

end A345965.P6859651111287306548

/-!
# A345966: The succession of nonprime and prime terms is kept when you consider the sequence formed by the successive sums a(n) + a(n+1). This is the lexicographically earliest sequence of distinct positive terms with this property.

The programs for A345966, there is no canonical definition to state claims against.
-/

/-! ## A345966.P17921005926078420496

`A072794(A084493(n+1)%A050682(n+1))`
-/

namespace A345966.P17921005926078420496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072794 (Int.tmod (A084493 (n + 1)) (A050682 (n + 1))).toNat

end

end A345966.P17921005926078420496

/-! ## A345966.P2630168662706729684

`A072794(A084497(n+1)%A050682(n+1))`
-/

namespace A345966.P2630168662706729684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072794 (Int.tmod (A084497 (n + 1)) (A050682 (n + 1))).toNat

end

end A345966.P2630168662706729684

/-! ## A345966.P16914914268948180220

`A072794(A084493(n+1))%A005496(3*n+4)`
-/

namespace A345966.P16914914268948180220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072794 (A084493 (n + 1)).toNat) (A005496 (3 * n + 4))

end

end A345966.P16914914268948180220

/-!
# A345967: Lexicographically first sequence of distinct positive integers such that the alternating partial sums p(n) = Sum_{k=1..n} -(-1)^k a(k), n >= 1, are distinct positive integers.

The programs for A345967, there is no canonical definition to state claims against.
-/

/-! ## A345967.P11013615756921710450

`abs(Δ[A343611(n)])`
-/

namespace A345967.P11013615756921710450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A345967.P11013615756921710450

/-! ## A345967.P7169381801824906263

`A000188(Δ[A343611(n)]²)`
-/

namespace A345967.P7169381801824906263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A345967.P7169381801824906263

/-! ## A345967.P5832722864011253525

`A000196(Δ[A343611(n)]²)`
-/

namespace A345967.P5832722864011253525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A345967.P5832722864011253525

/-! ## A345967.P12210761898824682837

`A004739(Δ[A343611(n)]²)`
-/

namespace A345967.P12210761898824682837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A345967.P12210761898824682837

/-! ## A345967.P15790432861567771399

`gcd(Δ[A343611(n)], A000038(n))`
-/

namespace A345967.P15790432861567771399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A345967.P15790432861567771399

/-! ## A345967.P7459248218027127151

`∑{d}[Δ[A343611(n)], A000010(#)]`
-/

namespace A345967.P7459248218027127151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A345967.P7459248218027127151

/-! ## A345967.P9650762070657640757

`∏{d}[Δ[A343611(n)], A014963(#)]`
-/

namespace A345967.P9650762070657640757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A345967.P9650762070657640757

/-! ## A345967.P9812401381982091138

`abs(A343611(n+1)-A343611(n))`
-/

namespace A345967.P9812401381982091138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A343611 (n + 1) - A343611 n|

end

end A345967.P9812401381982091138

/-!
# A345969: Expansion of the e.g.f. 1 / sqrt(3 - 2 / ((1 - x)*exp(x))).

The programs for A345969, there is no canonical definition to state claims against.
-/

/-! ## A345969.P16436376249498631285

`A270890(a(n-1))+1` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=18`
-/

namespace A345969.P16436376249498631285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2, 18] fun n a =>
  A270890 (a (n - 1)).toNat + 1

end

end A345969.P16436376249498631285

/-! ## A345969.P16931685763391006378

`A083290(A340635(n+1))`
-/

namespace A345969.P16931685763391006378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083290 (A340635 (n + 1)).toNat

end

end A345969.P16931685763391006378

/-!
# A345970: Irregular triangle T(n,k) read by rows in which n-th row lists in colex order all series-reduced tree degree sequences D of n nodes encoded as t = Product_{d in D} prime(d); n >= 4, 1 <= k <= A002865(n-2).

The programs for A345970, there is no canonical definition to state claims against.
-/

/-! ## A345970.P14192982563732305017

`filter[A344122(n+3), A120325(#)]`
-/

namespace A345970.P14192982563732305017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344122 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A345970.P14192982563732305017

/-! ## A345970.P15318223556445764377

`filter[A344122(n+3), A187074(#)]`
-/

namespace A345970.P15318223556445764377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344122 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A345970.P15318223556445764377

/-! ## A345970.P88341500032305138

`filter[A344122(n+3), A355453(#)]`
-/

namespace A345970.P88341500032305138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344122 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A345970.P88341500032305138

/-! ## A345970.P11605334978851875765

`filter[A344122(n+3), A168185(#)]`
-/

namespace A345970.P11605334978851875765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344122 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A345970.P11605334978851875765

/-! ## A345970.P15697329514521011539

`filter[A344122(n+3), A097325(#)]`
-/

namespace A345970.P15697329514521011539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344122 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A345970.P15697329514521011539

/-!
# A345972: Numbers that are integer multiples of the count of active segments in their 7-segment-display form where '6', '7' and '9' use 6, 3 and 6 segments, respectively.

The programs for A345972, the canonical program `A345972.P17123868671711489657` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345972 has offset 1).

The definition of A345972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345972.P17123868671711489657

`eq[0, n%A006942(n)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A345972

/-- `eq[0, n%A006942(n)]` -/
def P17123868671711489657.Spec : Prop :=
  ∀ n, (P17123868671711489657.a n : ℤ) = A345972 (n + 1)

theorem P17123868671711489657.correct : P17123868671711489657.Spec := by
  intro n
  simp only [A345972, Nat.add_sub_cancel]

end A345972

/-! ## A345972.P10622404056498592529

`eq[n, lcm(A006942(n), A258071(n+1))]`
-/

namespace A345972.P10622404056498592529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006942 n) (A258071 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345972.P10622404056498592529

namespace A345972

/-- `eq[n, lcm(A006942(n), A258071(n+1))]` -/
def P10622404056498592529.Spec : Prop :=
  ∀ n, (P10622404056498592529.a n : ℤ) = A345972 (n + 1)

end A345972

/-! ## A345972.P8885436933873496806

`A351870(eq[n, lcm(n, A006942(n))])`
-/

namespace A345972.P8885436933873496806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A006942 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A345972.P8885436933873496806

namespace A345972

/-- `A351870(eq[n, lcm(n, A006942(n))])` -/
def P8885436933873496806.Spec : Prop :=
  ∀ n, P8885436933873496806.a n = A345972 (n + 1)

end A345972

/-! ## A345972.P7778253261155930290

`eq[n, lcm(A277116(n), A351870(n))]`
-/

namespace A345972.P7778253261155930290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A277116 n) (A351870 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345972.P7778253261155930290

namespace A345972

/-- `eq[n, lcm(A277116(n), A351870(n))]` -/
def P7778253261155930290.Spec : Prop :=
  ∀ n, (P7778253261155930290.a n : ℤ) = A345972 (n + 1)

end A345972

/-!
# A345973: G.f.: x + x^2 / Product_{n>=1} (1 - a(n)*x^n).

The programs for A345973, there is no canonical definition to state claims against.
-/

/-! ## A345973.P17346002304923914750

`A210736(n)+A181834(A184943(n))`
-/

namespace A345973.P17346002304923914750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n + A181834 (A184943 n).toNat

end

end A345973.P17346002304923914750

/-! ## A345973.P17403212654277918316

`A326033(A157726(n))+A210736(n)`
-/

namespace A345973.P17403212654277918316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326033 (A157726 n).toNat + A210736 n

end

end A345973.P17403212654277918316

/-! ## A345973.P4373653360286297397

`ceil(A088218(n)/A233583(A026010(n)))`
-/

namespace A345973.P4373653360286297397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088218 n : ℚ) / (A233583 (A026010 n).toNat : ℚ)⌉

end

end A345973.P4373653360286297397

/-! ## A345973.P3917128044485144599

`A073490(A056323(n))+A007562(n+1)`
-/

namespace A345973.P3917128044485144599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A056323 n).toNat + A007562 (n + 1)

end

end A345973.P3917128044485144599

/-! ## A345973.P9108072742138807971

`A055641(A231426(n))+A007562(n+1)`
-/

namespace A345973.P9108072742138807971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A231426 n).toNat + A007562 (n + 1)

end

end A345973.P9108072742138807971

/-!
# A345975: a(n) = A345765(n)/1806.

The programs for A345975, there is no canonical definition to state claims against.
-/

/-! ## A345975.P9023983886272795724

`∏[A345765(n+1)/A345765(A028310(n))]`
-/

namespace A345975.P9023983886272795724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345765 (n + 1) : ℚ) / (A345765 (A028310 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A345975.P9023983886272795724

/-! ## A345975.P15853126637306281801

`A345765(n+1)/A345765(A009001(2*n)²)`
-/

namespace A345975.P15853126637306281801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345765 (n + 1) : ℚ) / (A345765 (A009001 (2 * n) ^ 2).toNat : ℚ)

end

end A345975.P15853126637306281801

/-! ## A345975.P15855302109979407413

`A345765(n+1)/A345765(A075180(2*(n+1)))`
-/

namespace A345975.P15855302109979407413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345765 (n + 1) : ℚ) / (A345765 (A075180 (2 * (n + 1))).toNat : ℚ)

end

end A345975.P15855302109979407413

/-! ## A345975.P16513314065894672833

`A345765(n+1)/A345765(A287378(n))`
-/

namespace A345975.P16513314065894672833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345765 (n + 1) : ℚ) / (A345765 (A287378 n).toNat : ℚ)

end

end A345975.P16513314065894672833

/-! ## A345975.P16875006743836976529

`A345765(n+1)/A345765(A248776(n+1))`
-/

namespace A345975.P16875006743836976529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345765 (n + 1) : ℚ) / (A345765 (A248776 (n + 1)).toNat : ℚ)

end

end A345975.P16875006743836976529

/-!
# A345978: Third coordinate of the points of a counterclockwise spiral on a hexagonal grid in a symmetric redundant hexagonal coordinate system.

The programs for A345978, the canonical program `A345978.P5377370654684222569` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345978 has offset 0).

The definition of A345978 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307013, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345978.P5377370654684222569

`-A307013(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A345978

/-- `-A307013(n)` -/
def P5377370654684222569.Spec : Prop :=
  ∀ n, P5377370654684222569.a n = A345978 n

theorem P5377370654684222569.correct : P5377370654684222569.Spec := by
  intro n
  simp only [A345978]

end A345978

/-! ## A345978.P12672857201658028600

`-(A307011(n)+A307012(n))`
-/

namespace A345978.P12672857201658028600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A307011 n + A307012 n)

end

end A345978.P12672857201658028600

namespace A345978

/-- `-(A307011(n)+A307012(n))` -/
def P12672857201658028600.Spec : Prop :=
  ∀ n, P12672857201658028600.a n = A345978 n

end A345978

/-! ## A345978.P8590685594313070281

`-A307012(comp[Δ[n^3]])`
-/

namespace A345978.P8590685594313070281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A307012 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A345978.P8590685594313070281

namespace A345978

/-- `-A307012(comp[Δ[n^3]])` -/
def P8590685594313070281.Spec : Prop :=
  ∀ n, P8590685594313070281.a n = A345978 n

end A345978

/-! ## A345978.P14891492910895810276

`A307013(A307013(n)+75)`
-/

namespace A345978.P14891492910895810276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307013 (A307013 n + 75).toNat

end

end A345978.P14891492910895810276

namespace A345978

/-- `A307013(A307013(n)+75)` -/
def P14891492910895810276.Spec : Prop :=
  ∀ n, P14891492910895810276.a n = A345978 n

end A345978

/-! ## A345978.P13459227065960287919

`A307013(90-A307013(n))`
-/

namespace A345978.P13459227065960287919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307013 (90 - A307013 n).toNat

end

end A345978.P13459227065960287919

namespace A345978

/-- `A307013(90-A307013(n))` -/
def P13459227065960287919.Spec : Prop :=
  ∀ n, P13459227065960287919.a n = A345978 n

end A345978

/-! ## A345978.P10168645548408795344

`A307011(n)-A328818(n)`
-/

namespace A345978.P10168645548408795344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307011 n - A328818 n

end

end A345978.P10168645548408795344

namespace A345978

/-- `A307011(n)-A328818(n)` -/
def P10168645548408795344.Spec : Prop :=
  ∀ n, P10168645548408795344.a n = A345978 n

theorem P10168645548408795344.correct : P10168645548408795344.Spec := by
  intro n
  simp only [A345978, Nat.add_sub_cancel, A345978.P10168645548408795344.a, A345978.P5377370654684222569.a, A307011, A307011.P16481018969621470149.a, A307013, A307013.P16025431409212704238.a, A328818, A328818.P2352908255522347692.a, A184010, A184010.P2278318878043054188.a, A307012, A307012.P6050295120128097672.f1, A307012.P6050295120128097672.a, A036496, A036496.P11965980265745924204.f1, A036496.P11965980265745924204.a, A128834, A128834.P4430347604004376390.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A345978

/-! ## A345978.P17105665100690564047

`A057428(n)*A307013(n)`
-/

namespace A345978.P17105665100690564047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A307013 n

end

end A345978.P17105665100690564047

namespace A345978

/-- `A057428(n)*A307013(n)` -/
def P17105665100690564047.Spec : Prop :=
  ∀ n, P17105665100690564047.a n = A345978 n

end A345978

/-! ## A345978.P9249438743195749822

`∑[A010892(A036496(n))]-1`
-/

namespace A345978.P9249438743195749822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A036496 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A345978.P9249438743195749822

namespace A345978

/-- `∑[A010892(A036496(n))]-1` -/
def P9249438743195749822.Spec : Prop :=
  ∀ n, P9249438743195749822.a n = A345978 n

end A345978

/-!
# A345982: Numbers k such that prime(2^k) - prime(2^(k-1)) + 1 is prime.

The programs for A345982, there is no canonical definition to state claims against.
-/

/-! ## A345982.P7752063921485389708

`eq[0, A284500(A008345(n))]`
-/

namespace A345982.P7752063921485389708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284500 (A008345 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345982.P7752063921485389708

/-! ## A345982.P10885068759293515384

`A328242(lt[A328171(n), A328228(n)])`
-/

namespace A345982.P10885068759293515384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328171 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328242 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345982.P10885068759293515384

/-! ## A345982.P4721073962320064935

`eq[A043284(A017545(3*n+1)), A054991(2*(n+1))]`
-/

namespace A345982.P4721073962320064935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A017545 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345982.P4721073962320064935

/-!
# A345983: Partial sums of A344005.

The programs for A345983, there is no canonical definition to state claims against.
-/

/-! ## A345983.P2902789243634347672

`∑[A344005(1+n)]`
-/

namespace A345983.P2902789243634347672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345983.P2902789243634347672

/-! ## A345983.P46053573397523514

`∑[floor(sqrt(A345988(n+1)))]`
-/

namespace A345983.P46053573397523514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A345988 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345983.P46053573397523514

/-! ## A345983.P6896607527148583379

`∑[1-A182665(n+1)+n]`
-/

namespace A345983.P6896607527148583379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A182665 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345983.P6896607527148583379

/-! ## A345983.P3707549361912284605

`∑[∑{d}[n+1, A346615(#-1)]]`
-/

namespace A345983.P3707549361912284605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A346615 (d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345983.P3707549361912284605

/-! ## A345983.P4737791400074029314

`A344005(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A345983.P4737791400074029314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A344005 (n + 1) + a (n - 1)

end

end A345983.P4737791400074029314

/-! ## A345983.P12489217867203185100

`∑[A011772(floor(n/(n%2+1))+1)]`
-/

namespace A345983.P12489217867203185100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345983.P12489217867203185100

/-! ## A345983.P4292105296027238318

`∑[A011772(A026741(n+1))]`
-/

namespace A345983.P4292105296027238318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345983.P4292105296027238318

/-! ## A345983.P6629484890348503624

`∑[A047994(n+1)-A346607(n+1)]`
-/

namespace A345983.P6629484890348503624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) - A346607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345983.P6629484890348503624

/-! ## A345983.P13830578642851960996

`∑[A345992(n+1)*A345998(n+1)]`
-/

namespace A345983.P13830578642851960996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345992 (n + 1) * A345998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345983.P13830578642851960996

/-! ## A345983.P7964334553979423120

`∑[A011772(A344764(∑[n+1]))]`
-/

namespace A345983.P7964334553979423120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A344764 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345983.P7964334553979423120

/-! ## A345983.P11511187492052143459

`∑[A000196(A345988(n+1))]`
-/

namespace A345983.P11511187492052143459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A345988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345983.P11511187492052143459

/-!
# A345984: Partial sums of A011772.

The programs for A345984, there is no canonical definition to state claims against.
-/

/-! ## A345984.P5867718995104209117

`∑[A011772(1+n)]`
-/

namespace A345984.P5867718995104209117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P5867718995104209117

/-! ## A345984.P13428990651792075669

`∑[row(A066561(n+1))]`
-/

namespace A345984.P13428990651792075669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A066561 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P13428990651792075669

/-! ## A345984.P9928644738686927040

`∑[A321366(1+n)-1]`
-/

namespace A345984.P9928644738686927040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 (1 + n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P9928644738686927040

/-! ## A345984.P14357068826132402976

`∑[A081467(n+1)-(n+1)]`
-/

namespace A345984.P14357068826132402976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081467 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P14357068826132402976

/-! ## A345984.P15214414682659925286

`∑[1-A344763(n+1)+n]`
-/

namespace A345984.P15214414682659925286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A344763 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P15214414682659925286

/-! ## A345984.P4910760179388391343

`∑[A000203(n+1)-A344765(n+1)]`
-/

namespace A345984.P4910760179388391343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A344765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P4910760179388391343

/-! ## A345984.P4309287396067679292

`∑[A047994(n+1)-A344874(n+1)]`
-/

namespace A345984.P4309287396067679292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) - A344874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P4309287396067679292

/-! ## A345984.P16632406134388521710

`∑[A343997(n+1)-A343999(n+1)]`
-/

namespace A345984.P16632406134388521710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343997 (n + 1) - A343999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P16632406134388521710

/-! ## A345984.P15880384736846645022

`∑[A344875(n+1)-A344876(n+1)]`
-/

namespace A345984.P15880384736846645022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (n + 1) - A344876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P15880384736846645022

/-! ## A345984.P3497796113088430511

`∑[A001065(n+1)+n+1-A344765(n+1)]`
-/

namespace A345984.P3497796113088430511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (n + 1 : ℤ) - A344765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P3497796113088430511

/-! ## A345984.P10838816376997053117

`∑[A155085(n+1)-(n+1)-A344765(n+1)]`
-/

namespace A345984.P10838816376997053117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ) - A344765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P10838816376997053117

/-! ## A345984.P3872394645251492825

`∑[A064987(n+1)/(n+1)-A344765(n+1)]`
-/

namespace A345984.P3872394645251492825
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A344765 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P3872394645251492825

/-! ## A345984.P3146053211376326326

`∑[A344005(A022998(n+1))]`
-/

namespace A345984.P3146053211376326326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (A022998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P3146053211376326326

/-! ## A345984.P3353596515795734289

`∑[A344005(A257088(n+1))]`
-/

namespace A345984.P3353596515795734289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (A257088 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P3353596515795734289

/-! ## A345984.P10076609151213736356

`∑[A344005(2*(n+1))]`
-/

namespace A345984.P10076609151213736356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P10076609151213736356

/-! ## A345984.P12247104788002843667

`∑[floor(sqrt(A345988(2*(n+1))))]`
-/

namespace A345984.P12247104788002843667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A345988 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P12247104788002843667

/-! ## A345984.P1207024596649420528

`∑[A047994(2*(n+1))-A346607(2*(n+1))]`
-/

namespace A345984.P1207024596649420528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (2 * (n + 1)) - A346607 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P1207024596649420528

/-! ## A345984.P2483963287977147357

`∑[A345992(2*(n+1))*A345998(2*(n+1))]`
-/

namespace A345984.P2483963287977147357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345992 (2 * (n + 1)) * A345998 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P2483963287977147357

/-! ## A345984.P7650356489712343075

`∑[A383972((n+1)²)]`
-/

namespace A345984.P7650356489712343075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383972 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345984.P7650356489712343075

/-!
# A345985: Hamming distance between prime(n) and prime(n+1) in base 10.

The programs for A345985, there is no canonical definition to state claims against.
-/

/-! ## A345985.P11201293846999651639

`A055642(A335301(n+1)%A112841(n))`
-/

namespace A345985.P11201293846999651639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A335301 (n + 1)) (A112841 n)).toNat

end

end A345985.P11201293846999651639

/-! ## A345985.P1822736257951175897

`A055642(A335301(n+1)-A170957(n+6))`
-/

namespace A345985.P1822736257951175897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A335301 (n + 1) - A170957 (n + 6)).toNat

end

end A345985.P1822736257951175897

/-! ## A345985.P2864355741466269006

`gcd(A055642(A335301(n+1)), A229953(n+1))`
-/

namespace A345985.P2864355741466269006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055642 (A335301 (n + 1)).toNat) (A229953 (n + 1))

end

end A345985.P2864355741466269006

/-! ## A345985.P14647909754725475459

`A003557(A144845(n))*A055642(A335301(n+1))`
-/

namespace A345985.P14647909754725475459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A144845 n).toNat * A055642 (A335301 (n + 1)).toNat

end

end A345985.P14647909754725475459

/-! ## A345985.P3467347124260738413

`A131816(Δ[A250408(A185322(n+1))]²)`
-/

namespace A345985.P3467347124260738413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250408 (A185322 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A345985.P3467347124260738413

/-!
# A345988: Smallest oblong number m*(m+1) that is divisible by n.

The programs for A345988, there is no canonical definition to state claims against.
-/

/-! ## A345988.P17252911045955633109

`(1+n)*A344006(n+1)`
-/

namespace A345988.P17252911045955633109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A344006 (n + 1)

end

end A345988.P17252911045955633109

/-! ## A345988.P17364746077872095144

`A002378(A344005(n+1))`
-/

namespace A345988.P17364746077872095144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A344005 (n + 1)).toNat

end

end A345988.P17364746077872095144

/-! ## A345988.P5337313036652344456

`A002378(A011772(gcd(n+1, ∑[n])))`
-/

namespace A345988.P5337313036652344456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A011772 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A345988.P5337313036652344456

/-! ## A345988.P11903234161356924218

`A002061(A344005(n+1)+1)-1`
-/

namespace A345988.P11903234161356924218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A344005 (n + 1) + 1).toNat - 1

end

end A345988.P11903234161356924218

/-! ## A345988.P11708123500200162353

`A002378(1-A182665(n+1)+n)`
-/

namespace A345988.P11708123500200162353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (1 - A182665 (n + 1) + (n : ℤ)).toNat

end

end A345988.P11708123500200162353

/-! ## A345988.P10787004477866191122

`A002378(A354876(n+1)-A354875(n+1))`
-/

namespace A345988.P10787004477866191122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A354876 (n + 1) - A354875 (n + 1)).toNat

end

end A345988.P10787004477866191122

/-! ## A345988.P2124544237682224555

`A002378(A345992(n+1)*A345998(n+1))`
-/

namespace A345988.P2124544237682224555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A345992 (n + 1) * A345998 (n + 1)).toNat

end

end A345988.P2124544237682224555

/-! ## A345988.P17053884227651921556

`A344005(A000027(n+1))+A344005(n+1)²`
-/

namespace A345988.P17053884227651921556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (A000027 (n + 1)).toNat + A344005 (n + 1) ^ 2

end

end A345988.P17053884227651921556

/-! ## A345988.P3179050543724627962

`A344005(n+1)+A344005(A354998(n+1))²`
-/

namespace A345988.P3179050543724627962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1) + A344005 (A354998 (n + 1)).toNat ^ 2

end

end A345988.P3179050543724627962

/-! ## A345988.P1149810557813729180

`A328399(2*A344005(n+1))*A344005(n+1)`
-/

namespace A345988.P1149810557813729180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * A344005 (n + 1)).toNat * A344005 (n + 1)

end

end A345988.P1149810557813729180

/-! ## A345988.P3399206645465150680

`A344005(n+1)+(A158388(n)*A344005(n+1))²`
-/

namespace A345988.P3399206645465150680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1) + (A158388 n * A344005 (n + 1)) ^ 2

end

end A345988.P3399206645465150680

/-! ## A345988.P17212076696373511623

`A344005(n+1)*A345993(n+1)*A345999(n+1)`
-/

namespace A345988.P17212076696373511623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1) * A345993 (n + 1) * A345999 (n + 1)

end

end A345988.P17212076696373511623

/-! ## A345988.P12822051592904001246

`lcm(A344005(n+1)+A344005(n+1)², A344006(n+1))`
-/

namespace A345988.P12822051592904001246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A344005 (n + 1) + A344005 (n + 1) ^ 2) (A344006 (n + 1))

end

end A345988.P12822051592904001246

/-! ## A345988.P1104691203007851220

`(A344005(n+1)+A003557(A007913(n+1)))*A344005(n+1)`
-/

namespace A345988.P1104691203007851220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) + A003557 (A007913 (n + 1)).toNat) * A344005 (n + 1)

end

end A345988.P1104691203007851220

/-! ## A345988.P5318933741699703604

`(A344005(n+1)+A051119(A028233(n+1)))*A344005(n+1)`
-/

namespace A345988.P5318933741699703604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) + A051119 (A028233 (n + 1)).toNat) * A344005 (n + 1)

end

end A345988.P5318933741699703604

/-! ## A345988.P4895595412591845009

`(A344005(n+1)+A051119(A100994(n+1)))*A344005(n+1)`
-/

namespace A345988.P4895595412591845009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) + A051119 (A100994 (n + 1)).toNat) * A344005 (n + 1)

end

end A345988.P4895595412591845009

/-! ## A345988.P13488205216532977776

`(A344005(n+1)+A054977(A345998(n+1)))*A344005(n+1)`
-/

namespace A345988.P13488205216532977776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) + A054977 (A345998 (n + 1)).toNat) * A344005 (n + 1)

end

end A345988.P13488205216532977776

/-! ## A345988.P2440017754565838284

`A008619(2*A344005(n+1))*A344005(n+1)`
-/

namespace A345988.P2440017754565838284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A344005 (n + 1)).toNat * A344005 (n + 1)

end

end A345988.P2440017754565838284

/-! ## A345988.P10809156028251776156

`A029579(2*A344005(n+1))*A344005(n+1)`
-/

namespace A345988.P10809156028251776156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A344005 (n + 1)).toNat * A344005 (n + 1)

end

end A345988.P10809156028251776156

/-! ## A345988.P10886138801074381458

`(A344005(n+1)+A000034(A146076(n+1)))*A344005(n+1)`
-/

namespace A345988.P10886138801074381458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) + A000034 (A146076 (n + 1)).toNat) * A344005 (n + 1)

end

end A345988.P10886138801074381458

/-!
# A345989: Smallest tetrahedral number m*(m+1)*(m+2)/6 that is divisible by n.

The programs for A345989, there is no canonical definition to state claims against.
-/

/-! ## A345989.P2218914004171488998

`C(A265647(n+1)+2, 3)`
-/

namespace A345989.P2218914004171488998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A265647 (n + 1) + 2).toNat 3

end

end A345989.P2218914004171488998

/-! ## A345989.P1297980336887487153

`C(A345990(6*(n+1))+2, 3)`
-/

namespace A345989.P1297980336887487153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A345990 (6 * (n + 1)) + 2).toNat 3

end

end A345989.P1297980336887487153

/-! ## A345989.P385269358715483719

`A000292(A265647(n+1))`
-/

namespace A345989.P385269358715483719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A265647 (n + 1)).toNat

end

end A345989.P385269358715483719

/-! ## A345989.P11139206934030315175

`A000292(A345990(6*(n+1)))`
-/

namespace A345989.P11139206934030315175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A345990 (6 * (n + 1))).toNat

end

end A345989.P11139206934030315175

/-! ## A345989.P17772861307798177427

`A094415(C(A265647(n+1), 2))`
-/

namespace A345989.P17772861307798177427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094415 (Nat.choose (A265647 (n + 1)).toNat 2)

end

end A345989.P17772861307798177427

/-! ## A345989.P1477831094728810333

`A000292(A085766(n+1)+ceil(sin(n)²))`
-/

namespace A345989.P1477831094728810333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A085766 (n + 1) + ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A345989.P1477831094728810333

/-! ## A345989.P2793746580859557915

`A000292(A085766(n+1)-(floor(acot(n))-1))`
-/

namespace A345989.P2793746580859557915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A085766 (n + 1) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A345989.P2793746580859557915

/-! ## A345989.P4841199672855448142

`A027480(A085766(n+1)+floor(atan(n+1)))/3`
-/

namespace A345989.P4841199672855448142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027480 (A085766 (n + 1) + ⌊Real.arctan (n + 1 : ℝ)⌋).toNat : ℚ) / 3

end

end A345989.P4841199672855448142

/-! ## A345989.P9484998630778046190

`A210440(A085766(n+1)+floor(atan(n+1)))/4`
-/

namespace A345989.P9484998630778046190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210440 (A085766 (n + 1) + ⌊Real.arctan (n + 1 : ℝ)⌋).toNat : ℚ) / 4

end

end A345989.P9484998630778046190

/-! ## A345989.P5839320696645926937

`A000292(A085766(n+1)+A000040(n+1)%2)`
-/

namespace A345989.P5839320696645926937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A085766 (n + 1) + Int.tmod (A000040 (n + 1)) 2).toNat

end

end A345989.P5839320696645926937

/-!
# A345990: Smallest m such that n divides m*(m+1)*(m+2).

The programs for A345990, there is no canonical definition to state claims against.
-/

/-! ## A345990.P4460805914331678437

`A265647(A060789(n+1))`
-/

namespace A345990.P4460805914331678437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265647 (A060789 (n + 1)).toNat

end

end A345990.P4460805914331678437

/-! ## A345990.P8138449545693397243

`A265647(A129202(n)/(n+1))`
-/

namespace A345990.P8138449545693397243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265647 (SequenceMachineLib.roundAway ((A129202 n : ℚ) / (n + 1 : ℚ))).toNat

end

end A345990.P8138449545693397243

/-! ## A345990.P59182748625800365

`A265647(gcd(n+1, A000292(n)))`
-/

namespace A345990.P59182748625800365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265647 (Int.gcd (n + 1 : ℤ) (A000292 n))

end

end A345990.P59182748625800365

/-! ## A345990.P9534534339202338924

`A265647(gcd(A000330(n), A079097(n)))`
-/

namespace A345990.P9534534339202338924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265647 (Int.gcd (A000330 n) (A079097 n))

end

end A345990.P9534534339202338924

/-! ## A345990.P7575559118648102991

`A265647(gcd(A000292(n), A129202(n)))`
-/

namespace A345990.P7575559118648102991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265647 (Int.gcd (A000292 n) (A129202 n))

end

end A345990.P7575559118648102991

/-! ## A345990.P4339182325398855401

`floor(root(A345991(n+1), 3))`
-/

namespace A345990.P4339182325398855401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A345991 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A345990.P4339182325398855401

/-!
# A345991: Smallest number of the form m*(m+1)*(m+2) that is divisible by n.

The programs for A345991, there is no canonical definition to state claims against.
-/

/-! ## A345991.P3980697594550584130

`A007531(A345990(n+1)+2)`
-/

namespace A345991.P3980697594550584130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A345990 (n + 1) + 2).toNat

end

end A345991.P3980697594550584130

/-! ## A345991.P11491272436396802192

`A225566(3*A345990(n+1))`
-/

namespace A345991.P11491272436396802192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225566 (3 * A345990 (n + 1)).toNat

end

end A345991.P11491272436396802192

/-! ## A345991.P7822893833327149867

`6*A345989(A060789(n+1))`
-/

namespace A345991.P7822893833327149867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A345989 (A060789 (n + 1)).toNat

end

end A345991.P7822893833327149867

/-! ## A345991.P11097363789390938068

`A020639(2*(n+1))*A027480(A345990(n+1))`
-/

namespace A345991.P11097363789390938068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) * A027480 (A345990 (n + 1)).toNat

end

end A345991.P11097363789390938068

/-! ## A345991.P5508139295296145092

`2*(A027480(A345990(n+1))+val(A018252(n+1), 43))`
-/

namespace A345991.P5508139295296145092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A027480 (A345990 (n + 1)).toNat + (SequenceMachineLib.valuation (A018252 (n + 1)).toNat 43 : ℤ))

end

end A345991.P5508139295296145092

/-! ## A345991.P17917978282898584427

`(A000041(and(1, n)^n)+1)*A027480(A345990(n+1))`
-/

namespace A345991.P17917978282898584427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 (Nat.land 1 n ^ n) + 1) * A027480 (A345990 (n + 1)).toNat

end

end A345991.P17917978282898584427

/-! ## A345991.P6011612959862988151

`(A000108(val(n²+1, 2))+1)*A027480(A345990(n+1))`
-/

namespace A345991.P6011612959862988151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000108 (SequenceMachineLib.valuation (n ^ 2 + 1) 2) + 1) * A027480 (A345990 (n + 1)).toNat

end

end A345991.P6011612959862988151

/-! ## A345991.P9804717586379609542

`A000005(A007918(n))*A027480(A345990(n+1))`
-/

namespace A345991.P9804717586379609542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007918 n).toNat * A027480 (A345990 (n + 1)).toNat

end

end A345991.P9804717586379609542

/-! ## A345991.P14744309881024886257

`A000040(A304042(n))*A027480(A345990(n+1))`
-/

namespace A345991.P14744309881024886257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A304042 n).toNat * A027480 (A345990 (n + 1)).toNat

end

end A345991.P14744309881024886257

/-! ## A345991.P6279845692430888467

`A000005(A002144(n+1))*A027480(A345990(n+1))`
-/

namespace A345991.P6279845692430888467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002144 (n + 1)).toNat * A027480 (A345990 (n + 1)).toNat

end

end A345991.P6279845692430888467

/-!
# A345992: Let m = A344005(n) = smallest m such that n divides m*(m+1); a(n) = gcd(n,m).

The programs for A345992, there is no canonical definition to state claims against.
-/

/-! ## A345992.P13524566567202130634

`gcd(n+1, A182665(n+1))`
-/

namespace A345992.P13524566567202130634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A182665 (n + 1))

end

end A345992.P13524566567202130634

/-! ## A345992.P5258396191786311353

`(n+1)/A345993(n+1)`
-/

namespace A345992.P5258396191786311353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A345993 (n + 1) : ℚ)

end

end A345992.P5258396191786311353

/-! ## A345992.P5591510127518913688

`gcd(A131738(n), A344005(n+1))`
-/

namespace A345992.P5591510127518913688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A344005 (n + 1))

end

end A345992.P5591510127518913688

/-! ## A345992.P1938019671583607438

`A345993(n+1)-A354988(n+1)`
-/

namespace A345992.P1938019671583607438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1) - A354988 (n + 1)

end

end A345992.P1938019671583607438

/-! ## A345992.P12231930128283639404

`A344005(n+1)/A345998(n+1)`
-/

namespace A345992.P12231930128283639404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) : ℚ) / (A345998 (n + 1) : ℚ)

end

end A345992.P12231930128283639404

/-! ## A345992.P17631159876295241291

`A345994(n+1)+A346596(n+1)-A345993(n+1)`
-/

namespace A345992.P17631159876295241291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345994 (n + 1) + (A346596 (n + 1) - A345993 (n + 1))

end

end A345992.P17631159876295241291

/-! ## A345992.P6018686412908988068

`A345994(n+1)-A354988(n+1)*A354989(n+1)`
-/

namespace A345992.P6018686412908988068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345994 (n + 1) - A354988 (n + 1) * A354989 (n + 1)

end

end A345992.P6018686412908988068

/-! ## A345992.P17414868234460334945

`A344005(n+1)/A344006(n+1)*A345999(n+1)`
-/

namespace A345992.P17414868234460334945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) : ℚ) / (A344006 (n + 1) : ℚ) * (A345999 (n + 1) : ℚ)

end

end A345992.P17414868234460334945

/-! ## A345992.P2744330041068923072

`A354985(n+1)/A345998(n+1)*A354987(n+1)`
-/

namespace A345992.P2744330041068923072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354985 (n + 1) : ℚ) / (A345998 (n + 1) : ℚ) * (A354987 (n + 1) : ℚ)

end

end A345992.P2744330041068923072

/-! ## A345992.P1619190309198754320

`A345994((n+1)*A345999(n+1))`
-/

namespace A345992.P1619190309198754320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345994 ((n + 1 : ℤ) * A345999 (n + 1)).toNat

end

end A345992.P1619190309198754320

/-! ## A345992.P13671595564003122432

`A345994(A345988(n+1)/A345998(n+1))`
-/

namespace A345992.P13671595564003122432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345994 (SequenceMachineLib.roundAway ((A345988 (n + 1) : ℚ) / (A345998 (n + 1) : ℚ))).toNat

end

end A345992.P13671595564003122432

/-!
# A345993: Let m = A344005(n) = smallest m such that n divides m*(m+1); a(n) = gcd(n,m+1).

The programs for A345993, there is no canonical definition to state claims against.
-/

/-! ## A345993.P13371317324984825531

`(n+1)/A345992(n+1)`
-/

namespace A345993.P13371317324984825531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A345992 (n + 1) : ℚ)

end

end A345993.P13371317324984825531

/-! ## A345993.P6441703204591174932

`gcd(n+1, A344005(n+1)+1)`
-/

namespace A345993.P6441703204591174932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A344005 (n + 1) + 1)

end

end A345993.P6441703204591174932

/-! ## A345993.P1888959644999785881

`A354988(n+1)+A345992(n+1)`
-/

namespace A345993.P1888959644999785881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354988 (n + 1) + A345992 (n + 1)

end

end A345993.P1888959644999785881

/-! ## A345993.P3443121640817905214

`gcd(n+1, A020725(A344005(n+1)))`
-/

namespace A345993.P3443121640817905214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A020725 (A344005 (n + 1)).toNat)

end

end A345993.P3443121640817905214

/-! ## A345993.P18091084447661049853

`gcd(A344005(n+1)-n, A131738(n))`
-/

namespace A345993.P18091084447661049853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A344005 (n + 1) - (n : ℤ)) (A131738 n)

end

end A345993.P18091084447661049853

/-! ## A345993.P11156075834689792769

`(A344005(n+1)+1)/A345999(n+1)`
-/

namespace A345993.P11156075834689792769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) + 1 : ℚ) / (A345999 (n + 1) : ℚ)

end

end A345993.P11156075834689792769

/-! ## A345993.P1505335282192206692

`A345994(n+1)+A346596(n+1)-A345992(n+1)`
-/

namespace A345993.P1505335282192206692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345994 (n + 1) + (A346596 (n + 1) - A345992 (n + 1))

end

end A345993.P1505335282192206692

/-! ## A345993.P11067435044358098568

`gcd(n+1, A321366(Δ[A001318(n)]))`
-/

namespace A345993.P11067435044358098568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A321366 (f1 (n + 1) - f1 n).toNat)

end

end A345993.P11067435044358098568

/-! ## A345993.P10635895386359269344

`gcd(n+1, A292787(n+2))`
-/

namespace A345993.P10635895386359269344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A292787 (n + 2))

end

end A345993.P10635895386359269344

/-!
# A345994: Let m = A344005(n) = smallest m such that n divides m*(m+1); a(n) = min(gcd(n,m), gcd(n,m+1)).

The programs for A345994, there is no canonical definition to state claims against.
-/

/-! ## A345994.P15260167797090437663

`(n+1)/A346596(n+1)`
-/

namespace A345994.P15260167797090437663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A346596 (n + 1) : ℚ)

end

end A345994.P15260167797090437663

/-! ## A345994.P14452291590834498631

`A346596(n+1)-abs(A354988(n+1))`
-/

namespace A345994.P14452291590834498631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346596 (n + 1) - |A354988 (n + 1)|

end

end A345994.P14452291590834498631

/-! ## A345994.P5721728563742151701

`A345992(n+1)+A345993(n+1)-A346596(n+1)`
-/

namespace A345994.P5721728563742151701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345992 (n + 1) + (A345993 (n + 1) - A346596 (n + 1))

end

end A345994.P5721728563742151701

/-! ## A345994.P14779239496842545577

`A219158(A346596(n+1)+∑[n])`
-/

namespace A345994.P14779239496842545577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A346596 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A345994.P14779239496842545577

/-! ## A345994.P1713103895597812809

`A234575(A346596(n+1)+∑[n])`
-/

namespace A345994.P1713103895597812809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A346596 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A345994.P1713103895597812809

/-! ## A345994.P16710730572929185694

`A010766(A346596(n+1)+∑[n])`
-/

namespace A345994.P16710730572929185694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A346596 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A345994.P16710730572929185694

/-! ## A345994.P8015848530360500987

`A126988(A346596(n+1)+A000217(n))`
-/

namespace A345994.P8015848530360500987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A346596 (n + 1) + A000217 n).toNat

end

end A345994.P8015848530360500987

/-!
# A345995: Numbers k such that A345992(k) > A345993(k).

The programs for A345995, there is no canonical definition to state claims against.
-/

/-! ## A345995.P17089246311234725076

`A345996(n)+a(n-1)` with `a(0)=6`
-/

namespace A345995.P17089246311234725076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A345996 n + a (n - 1)

end

end A345995.P17089246311234725076

/-! ## A345995.P3295451191276363427

`∑[A345996(A028310(n))]+2`
-/

namespace A345995.P3295451191276363427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345996 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A345995.P3295451191276363427

/-! ## A345995.P12162660970944761037

`∑[A345996(A000007(n)+n)]+2`
-/

namespace A345995.P12162660970944761037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345996 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A345995.P12162660970944761037

/-! ## A345995.P7214979451200335406

`∑[A345996(n+1)]+6-A345996(n+1)`
-/

namespace A345995.P7214979451200335406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (6 - A345996 (n + 1))

end

end A345995.P7214979451200335406

/-! ## A345995.P4455203564131809889

`∑[A345996(A123108(2*n))]+2`
-/

namespace A345995.P4455203564131809889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345996 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A345995.P4455203564131809889

/-!
# A345996: First differences of A345995.

The programs for A345996, there is no canonical definition to state claims against.
-/

/-! ## A345996.P14857804009771621751

`Δ[A345995(n+1)]`
-/

namespace A345996.P14857804009771621751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A345996.P14857804009771621751

/-! ## A345996.P16722650602797213695

`Δ[record[A345995(A328399(n))]]`
-/

namespace A345996.P16722650602797213695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345995 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A345996.P16722650602797213695

/-! ## A345996.P8276795741972594077

`A345995(n+2)-A345995(n+1)`
-/

namespace A345996.P8276795741972594077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345995 (n + 2) - A345995 (n + 1)

end

end A345996.P8276795741972594077

/-! ## A345996.P643474179702520434

`A345995(gcd(n+1, n²)+n+1)%A345995(n+1)`
-/

namespace A345996.P643474179702520434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345995 (Nat.gcd (n + 1) (n ^ 2) + (n + 1))) (A345995 (n + 1))

end

end A345996.P643474179702520434

/-! ## A345996.P12498341427379227023

`A038770(A345995(n+2)%A345995(n+1))`
-/

namespace A345996.P12498341427379227023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038770 (Int.tmod (A345995 (n + 2)) (A345995 (n + 1))).toNat

end

end A345996.P12498341427379227023

/-!
# A345997: Let m = A344005(n) be the smallest number such that n|m*(m+1); let X = A345992(n) = gcd(n,m); Y = A345993(n) = gcd(n,m+1). Sequence lists n such that neither X nor Y is equal to n/p^k, where p = largest prime divisor of n and k is its exponent in n.

The programs for A345997, there is no canonical definition to state claims against.
-/

/-! ## A345997.P8100366869817631819

`A051283(round(log2(A051236(n+5))))`
-/

namespace A345997.P8100366869817631819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051283 (SequenceMachineLib.roundAway (Real.logb 2 (A051236 (n + 5) : ℝ))).toNat

end

end A345997.P8100366869817631819

/-! ## A345997.P744531314856868773

`filter[A125006(2*n+1), A354996(#)]`
-/

namespace A345997.P744531314856868773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125006 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A345997.P744531314856868773

/-!
# A345998: a(n) = m/gcd(m,n), where m = A344005(n).

The programs for A345998, there is no canonical definition to state claims against.
-/

/-! ## A345998.P18333892270244928380

`A344005(n+1)/A345992(n+1)`
-/

namespace A345998.P18333892270244928380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) : ℚ) / (A345992 (n + 1) : ℚ)

end

end A345998.P18333892270244928380

/-! ## A345998.P11683073159255043206

`A344006(n+1)/A345999(n+1)`
-/

namespace A345998.P11683073159255043206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344006 (n + 1) : ℚ) / (A345999 (n + 1) : ℚ)

end

end A345998.P11683073159255043206

/-! ## A345998.P12677257975149231017

`gcd(A344005(n+1), A344006(n+1))`
-/

namespace A345998.P12677257975149231017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A344005 (n + 1)) (A344006 (n + 1))

end

end A345998.P12677257975149231017

/-! ## A345998.P6882774880294918475

`floor(sqrt(A345988(n+1)))/A345992(n+1)`
-/

namespace A345998.P6882774880294918475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A345988 (n + 1)) : ℚ) / (A345992 (n + 1) : ℚ)

end

end A345998.P6882774880294918475

/-! ## A345998.P6515905128263408960

`A011772(gcd(n+1, ∑[n]))/A345992(n+1)`
-/

namespace A345998.P6515905128263408960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011772 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)) : ℚ) / (A345992 (n + 1) : ℚ)

end

end A345998.P6515905128263408960

/-! ## A345998.P11542433342182132841

`A344005(n+1)/(n+1)*A345993(n+1)`
-/

namespace A345998.P11542433342182132841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) : ℚ) / (n + 1 : ℚ) * (A345993 (n + 1) : ℚ)

end

end A345998.P11542433342182132841

/-! ## A345998.P14197351786977778091

`(A047994(n+1)-A346607(n+1))/A345992(n+1)`
-/

namespace A345998.P14197351786977778091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) - A346607 (n + 1) : ℚ) / (A345992 (n + 1) : ℚ)

end

end A345998.P14197351786977778091

/-! ## A345998.P9867599971885378299

`A345993(n+1)-A182665(n+1)/A345992(n+1)`
-/

namespace A345998.P9867599971885378299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345993 (n + 1) : ℚ) - (A182665 (n + 1) : ℚ) / (A345992 (n + 1) : ℚ)

end

end A345998.P9867599971885378299

/-! ## A345998.P13317215923747620130

`A344005(n+1)/(A345993(n+1)-A354988(n+1))`
-/

namespace A345998.P13317215923747620130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) : ℚ) / (A345993 (n + 1) - A354988 (n + 1) : ℚ)

end

end A345998.P13317215923747620130

/-! ## A345998.P5990916088303470924

`(A354876(n+1)-A354875(n+1))/A345992(n+1)`
-/

namespace A345998.P5990916088303470924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354876 (n + 1) - A354875 (n + 1) : ℚ) / (A345992 (n + 1) : ℚ)

end

end A345998.P5990916088303470924

/-! ## A345998.P7777430099214384625

`A354985(n+1)/A345992(n+1)*A354987(n+1)`
-/

namespace A345998.P7777430099214384625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354985 (n + 1) : ℚ) / (A345992 (n + 1) : ℚ) * (A354987 (n + 1) : ℚ)

end

end A345998.P7777430099214384625

/-! ## A345998.P4846440800040242197

`A344006((n+1)*A345999(n+1))`
-/

namespace A345998.P4846440800040242197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 ((n + 1 : ℤ) * A345999 (n + 1)).toNat

end

end A345998.P4846440800040242197

/-! ## A345998.P4140062561318115907

`A344006((A344005(n+1)+1)*A345992(n+1))`
-/

namespace A345998.P4140062561318115907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 ((A344005 (n + 1) + 1) * A345992 (n + 1)).toNat

end

end A345998.P4140062561318115907

/-! ## A345998.P6697336238104197378

`A345992(A345988(n+1))/A345992(n+1)`
-/

namespace A345998.P6697336238104197378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345992 (A345988 (n + 1)).toNat : ℚ) / (A345992 (n + 1) : ℚ)

end

end A345998.P6697336238104197378

/-!
# A345999: a(n) = (m+1)/gcd(m+1,n), where m = A344005(n).

The programs for A345999, there is no canonical definition to state claims against.
-/

/-! ## A345999.P8231189392590923789

`A344006(n+1)/A345998(n+1)`
-/

namespace A345999.P8231189392590923789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344006 (n + 1) : ℚ) / (A345998 (n + 1) : ℚ)

end

end A345999.P8231189392590923789

/-! ## A345999.P12164314790190511702

`(A344005(n+1)+1)/A345993(n+1)`
-/

namespace A345999.P12164314790190511702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) + 1 : ℚ) / (A345993 (n + 1) : ℚ)

end

end A345999.P12164314790190511702

/-! ## A345999.P7640819956352384430

`gcd(A344005(n+1)+1, A344006(n+1))`
-/

namespace A345999.P7640819956352384430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A344005 (n + 1) + 1) (A344006 (n + 1))

end

end A345999.P7640819956352384430

/-! ## A345999.P13466567346500051433

`gcd(A321366(A026741(n+1)), A344006(n+1))`
-/

namespace A345999.P13466567346500051433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321366 (A026741 (n + 1)).toNat) (A344006 (n + 1))

end

end A345999.P13466567346500051433

/-! ## A345999.P5185959551503613511

`A344006(n+1)/A344005(n+1)*A345992(n+1)`
-/

namespace A345999.P5185959551503613511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344006 (n + 1) : ℚ) / (A344005 (n + 1) : ℚ) * (A345992 (n + 1) : ℚ)

end

end A345999.P5185959551503613511

/-! ## A345999.P7140503921447881440

`A321366(Δ[A001318(n)])/A345993(n+1)`
-/

namespace A345999.P7140503921447881440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321366 (f1 (n + 1) - f1 n).toNat : ℚ) / (A345993 (n + 1) : ℚ)

end

end A345999.P7140503921447881440

/-! ## A345999.P15123299505597993790

`A076942(A008574(n+1))/A345998(n+1)`
-/

namespace A345999.P15123299505597993790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076942 (A008574 (n + 1)).toNat : ℚ) / (A345998 (n + 1) : ℚ)

end

end A345999.P15123299505597993790

/-! ## A345999.P17405832323490563273

`A344006((n+1)*A345998(n+1))`
-/

namespace A345999.P17405832323490563273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 ((n + 1 : ℤ) * A345998 (n + 1)).toNat

end

end A345999.P17405832323490563273

/-! ## A345999.P4993767406951274511

`A344006(lcm(n+1, A344005(n+1)))`
-/

namespace A345999.P4993767406951274511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (Int.lcm (n + 1 : ℤ) (A344005 (n + 1)))

end

end A345999.P4993767406951274511

/-! ## A345999.P4979106128186564592

`A344006(A344005(n+1)*A345993(n+1))`
-/

namespace A345999.P4979106128186564592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (A344005 (n + 1) * A345993 (n + 1)).toNat

end

end A345999.P4979106128186564592

/-! ## A345999.P8322110272262707070

`A345993(A345988(n+1))/A345993(n+1)`
-/

namespace A345999.P8322110272262707070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345993 (A345988 (n + 1)).toNat : ℚ) / (A345993 (n + 1) : ℚ)

end

end A345999.P8322110272262707070

/-! ## A345999.P14182962407019972744

`A344006(n+1)/A345992(A345988(n+1))*A345992(n+1)`
-/

namespace A345999.P14182962407019972744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344006 (n + 1) : ℚ) / (A345992 (A345988 (n + 1)).toNat : ℚ) * (A345992 (n + 1) : ℚ)

end

end A345999.P14182962407019972744

