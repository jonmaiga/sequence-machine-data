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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
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
import Seq.B001.C010
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A073300: If n=pqr...st in ternary, a(n)=value of the continuant [p,q,r,...,s,t].

The programs for A073300, there is no canonical definition to state claims against.
-/

/-! ## A073300.P15918089165996452870

`A119994(gcd(n, A007814(A280154(n))))`
-/

namespace A073300.P15918089165996452870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119994 (Int.gcd (n : ℤ) (A007814 (A280154 n).toNat))

end

end A073300.P15918089165996452870

/-! ## A073300.P5469178947748351414

`A084556(A220661(n+1)^(A340378(round(24^(n/5)))%(2^(n%3))))`
-/

namespace A073300.P5469178947748351414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (SequenceMachineLib.roundAway ((A220661 (n + 1) : ℚ) ^ (Int.tmod (A340378 (SequenceMachineLib.roundAway ((24 : ℝ) ^ ((n : ℚ) / 5 : ℝ))).toNat) (2 ^ (n % 3) : ℤ) : ℤ))).toNat

end

end A073300.P5469178947748351414

/-! ## A073300.P5888289503639358695

`gcd(A119994(n), A127285(A026008(n)))`
-/

namespace A073300.P5888289503639358695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119994 n) (A127285 (A026008 n).toNat)

end

end A073300.P5888289503639358695

/-! ## A073300.P18416853028484441854

`A166866(lt[A166866(n+4), A166853(n+1)])`
-/

namespace A073300.P18416853028484441854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166866 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166866 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073300.P18416853028484441854

/-! ## A073300.P4879980991951532139

`A007913(A119994(n)^A004396(n))`
-/

namespace A073300.P4879980991951532139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A119994 n : ℚ) ^ (A004396 n : ℤ))).toNat

end

end A073300.P4879980991951532139

/-!
# A073301: a(n) is the n-th new record value in A073300.

The programs for A073301, the canonical program `A073301.P17524349592475400275` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073301 has offset 1).

The definition of A073301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 781 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073301.P17524349592475400275

`record[Δ[A249576(A267186(n+1))]]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A073301

/-- `record[Δ[A249576(A267186(n+1))]]` -/
def P17524349592475400275.Spec : Prop :=
  ∀ n, P17524349592475400275.a n = A073301 (n + 1)

theorem P17524349592475400275.correct : P17524349592475400275.Spec := by
  intro n
  simp only [A073301, Nat.add_sub_cancel]

end A073301

/-! ## A073301.P15557501020843903344

`record[A073300(n)]`
-/

namespace A073301.P15557501020843903344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073301.P15557501020843903344

namespace A073301

/-- `record[A073300(n)]` -/
def P15557501020843903344.Spec : Prop :=
  ∀ n, P15557501020843903344.a n = A073301 (n + 1)

end A073301

/-! ## A073301.P1652986598061443902

`record[A071585(A138587(n))]`
-/

namespace A073301.P1652986598061443902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A138587 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073301.P1652986598061443902

namespace A073301

/-- `record[A071585(A138587(n))]` -/
def P1652986598061443902.Spec : Prop :=
  ∀ n, P1652986598061443902.a n = A073301 (n + 1)

end A073301

/-! ## A073301.P9738541996039613345

`record[A245327(A191666(n+1))]`
-/

namespace A073301.P9738541996039613345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A191666 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073301.P9738541996039613345

namespace A073301

/-- `record[A245327(A191666(n+1))]` -/
def P9738541996039613345.Spec : Prop :=
  ∀ n, P9738541996039613345.a n = A073301 (n + 1)

end A073301

/-! ## A073301.P15964615009493769874

`record[A020651(A347834(n+1))]`
-/

namespace A073301.P15964615009493769874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A347834 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073301.P15964615009493769874

namespace A073301

/-- `record[A020651(A347834(n+1))]` -/
def P15964615009493769874.Spec : Prop :=
  ∀ n, P15964615009493769874.a n = A073301 (n + 1)

end A073301

/-!
# A073302: Indices of prime digits (2, 3, 5, 7) in the decimal expansion of e.

The programs for A073302, there is no canonical definition to state claims against.
-/

/-! ## A073302.P1029600197393396461

`∑[A244075(floor(acot(n)+n))]+n`
-/

namespace A073302.P1029600197393396461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244075 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A073302.P1029600197393396461

/-! ## A073302.P5106121898102868833

`∑[A244075(floor(sqrt(n²+1)))]+n`
-/

namespace A073302.P5106121898102868833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244075 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A073302.P5106121898102868833

/-! ## A073302.P14530465297606159150

`∑[A244075(n+1)]-A244075(n+1)+n`
-/

namespace A073302.P14530465297606159150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A244075 (n + 1) + (n : ℤ)

end

end A073302.P14530465297606159150

/-! ## A073302.P17774479751816053055

`eq[2, A032741(A001113(n)^A020639(2*(n+1)))]`
-/

namespace A073302.P17774479751816053055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((A001113 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073302.P17774479751816053055

/-! ## A073302.P2113942940938125264

`eq[0, A007920(A073212(n)-A000796(n))]`
-/

namespace A073302.P2113942940938125264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A073212 n - A000796 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073302.P2113942940938125264

/-! ## A073302.P17592720202465560590

`eq[0, A237053(A073212(n)-A000796(n))]`
-/

namespace A073302.P17592720202465560590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A073212 n - A000796 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073302.P17592720202465560590

/-! ## A073302.P7219563306265507292

`eq[0, A237053(A000796(n)-A187747(n))]`
-/

namespace A073302.P7219563306265507292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A000796 (n + 1) - A187747 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073302.P7219563306265507292

/-! ## A073302.P11782956924837220628

`eq[1, A003415(A073212(n)-A000796(n))]`
-/

namespace A073302.P11782956924837220628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A073212 n - A000796 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073302.P11782956924837220628

/-! ## A073302.P8163945318432081014

`eq[1, A032741(A073212(n)-A000796(n))]`
-/

namespace A073302.P8163945318432081014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A073212 n - A000796 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073302.P8163945318432081014

/-!
# A073303: Indices of prime digits in the decimal expansion of Pi.

The programs for A073303, there is no canonical definition to state claims against.
-/

/-! ## A073303.P18398063297333056808

`A153031(n+1)-1`
-/

namespace A073303.P18398063297333056808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153031 (n + 1) - 1

end

end A073303.P18398063297333056808

/-! ## A073303.P17198489860426550642

`abs(A153031(n+1)+A064179(A000028(n+1)))`
-/

namespace A073303.P17198489860426550642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A153031 (n + 1) + A064179 (A000028 (n + 1)).toNat|

end

end A073303.P17198489860426550642

/-! ## A073303.P18068751141264081396

`A153881(n+2)+A153031(n+1)`
-/

namespace A073303.P18068751141264081396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A153031 (n + 1)

end

end A073303.P18068751141264081396

/-! ## A073303.P6853812734979632756

`A023443(A153031(n+1))`
-/

namespace A073303.P6853812734979632756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A153031 (n + 1)).toNat

end

end A073303.P6853812734979632756

/-! ## A073303.P1300565856248627357

`A289207(A153031(n+1)+1)`
-/

namespace A073303.P1300565856248627357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A153031 (n + 1) + 1).toNat

end

end A073303.P1300565856248627357

/-! ## A073303.P16089492532840366552

`A023446(A153031(n+1)+1)+2`
-/

namespace A073303.P16089492532840366552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A153031 (n + 1) + 1).toNat + 2

end

end A073303.P16089492532840366552

/-! ## A073303.P935523265830984449

`A024000(A153031(n+1))*A057428(n)`
-/

namespace A073303.P935523265830984449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A153031 (n + 1)).toNat * A057428 n

end

end A073303.P935523265830984449

/-! ## A073303.P766755601808707086

`A023446(A153031(n+1)+3)`
-/

namespace A073303.P766755601808707086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A153031 (n + 1) + 3).toNat

end

end A073303.P766755601808707086

/-! ## A073303.P9659521167123448914

`eq[A179104(n+1)%4, 3]`
-/

namespace A073303.P9659521167123448914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179104 (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A073303.P9659521167123448914

/-! ## A073303.P15383174239689989951

`eq[1, ∑{e}[Δ[A059582(n)], #]]`
-/

namespace A073303.P15383174239689989951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073303.P15383174239689989951

/-! ## A073303.P13652848781351570027

`A307445(A000040(n+1))+A153031(n+1)`
-/

namespace A073303.P13652848781351570027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A000040 (n + 1)).toNat + A153031 (n + 1)

end

end A073303.P13652848781351570027

/-! ## A073303.P2421988912332963962

`A233583(A153031(n+1))%A190991(n)`
-/

namespace A073303.P2421988912332963962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (A153031 (n + 1)).toNat) (A190991 n)

end

end A073303.P2421988912332963962

/-! ## A073303.P5733653252366162729

`eq[3, A074206(A123153(n+1))]`
-/

namespace A073303.P5733653252366162729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A123153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073303.P5733653252366162729

/-!
# A073304: Remaining days in non-leap year at end of n-th month.

The programs for A073304, there is no canonical definition to state claims against.
-/

/-! ## A073304.P1118142406542582440

`A073305(n)-C(n, n²)`
-/

namespace A073304.P1118142406542582440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073305 n - (Nat.choose n (n ^ 2) : ℤ)

end

end A073304.P1118142406542582440

/-! ## A073304.P15778867780698863013

`A073305(n)-A291551(n)`
-/

namespace A073304.P15778867780698863013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073305 n - A291551 n

end

end A073304.P15778867780698863013

/-! ## A073304.P15984225954803464795

`A073305(n)-A292547(n)`
-/

namespace A073304.P15984225954803464795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073305 n - A292547 n

end

end A073304.P15984225954803464795

/-! ## A073304.P474839072317450414

`A073305(n)-A298859(n)`
-/

namespace A073304.P474839072317450414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073305 n - A298859 n

end

end A073304.P474839072317450414

/-! ## A073304.P749451188657828417

`A073305(n)-A240328(n)²`
-/

namespace A073304.P749451188657828417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073305 n - A240328 n ^ 2

end

end A073304.P749451188657828417

/-!
# A073305: Remaining days in leap year at end of n-th month.

The programs for A073305, there is no canonical definition to state claims against.
-/

/-! ## A073305.P2507814964873519238

`A073304(n)+char[n^6]`
-/

namespace A073305.P2507814964873519238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073304 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A073305.P2507814964873519238

/-! ## A073305.P732184009661197127

`A291551(n)+A073304(n)`
-/

namespace A073305.P732184009661197127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291551 n + A073304 n

end

end A073305.P732184009661197127

/-! ## A073305.P14158540516355495708

`A292547(n)+A073304(n)`
-/

namespace A073305.P14158540516355495708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292547 n + A073304 n

end

end A073305.P14158540516355495708

/-! ## A073305.P1634553923966135653

`A298859(n)+A073304(n)`
-/

namespace A073305.P1634553923966135653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298859 n + A073304 n

end

end A073305.P1634553923966135653

/-! ## A073305.P17978713350313675511

`A245811(2*n+1)+A073304(n)`
-/

namespace A073305.P17978713350313675511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245811 (2 * n + 1) + A073304 n

end

end A073305.P17978713350313675511

/-!
# A073306: a(n) = Product_{2i<n} binomial(2*n-2*i-1, 2*i).

The programs for A073306, there is no canonical definition to state claims against.
-/

/-! ## A073306.P2617416386585942307

`C(2*n-3, n-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A073306.P2617416386585942307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.choose ((2 * n : ℤ) - 3).toNat ((n : ℤ) - 1).toNat * a (n - 2)

end

end A073306.P2617416386585942307

/-! ## A073306.P11015929404368301906

`A055068(∑[n]+n)`
-/

namespace A073306.P11015929404368301906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055068 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A073306.P11015929404368301906

/-! ## A073306.P15218870964115110417

`a(n-2)*A001700(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A073306.P15218870964115110417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A001700 (n - 2)

end

end A073306.P15218870964115110417

/-! ## A073306.P5577323383708941816

`∏[A088218(n-1)/a(n-1)]` with `a(0)=1`
-/

namespace A073306.P5577323383708941816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A088218 (n - 1) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A073306.P5577323383708941816

/-! ## A073306.P17599278612239167999

`A007318(2*(1-n)²)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A073306.P17599278612239167999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007318 (2 * (1 - (n : ℤ)) ^ 2).toNat * a (n - 2)

end

end A073306.P17599278612239167999

/-!
# A073307: Numbers k such that S(k)=d(k), where S(k) is the Kempner function (A002034) and d(k) is the number of divisors of k (A000005).

The programs for A073307, there is no canonical definition to state claims against.
-/

/-! ## A073307.P13434838725957329649

`∩[A073413(n+1), A173340(n+1)]`
-/

namespace A073307.P13434838725957329649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073307.P13434838725957329649

/-! ## A073307.P121664865535502944

`∩[A073413(n+1), A175495(n+1)]`
-/

namespace A073307.P121664865535502944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073307.P121664865535502944

/-! ## A073307.P3881194362009618048

`eq[A000005(n+1), A002034(n+1)]+1`
-/

namespace A073307.P3881194362009618048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073307.P3881194362009618048

/-! ## A073307.P7171227436570207923

`eq[A061243(n+1)-(n+1), A000005(n+1)]+1`
-/

namespace A073307.P7171227436570207923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061243 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073307.P7171227436570207923

/-! ## A073307.P13699448936468831733

`eq[A000005(n+1), A023443(A122416(n+1))]+1`
-/

namespace A073307.P13699448936468831733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A122416 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073307.P13699448936468831733

/-!
# A073308: Numbers k such that k! + k + 1 is prime.

The programs for A073308, there is no canonical definition to state claims against.
-/

/-! ## A073308.P1993909352688586644

`A092791(n+1)-1`
-/

namespace A073308.P1993909352688586644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092791 (n + 1) - 1

end

end A073308.P1993909352688586644

/-! ## A073308.P3183043935336748484

`record[Δ[A092791(A152271(n))]]`
-/

namespace A073308.P3183043935336748484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092791 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073308.P3183043935336748484

/-! ## A073308.P14930370871076581639

`record[Δ[A092791(A193592(n))]]`
-/

namespace A073308.P14930370871076581639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092791 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073308.P14930370871076581639

/-! ## A073308.P3385648632388095866

`record[Δ[A092791(A193739(n))]]`
-/

namespace A073308.P3385648632388095866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092791 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073308.P3385648632388095866

/-! ## A073308.P18123102302014327556

`∑{p}[A092791(n+1), A000010(#)]`
-/

namespace A073308.P18123102302014327556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p

end

end A073308.P18123102302014327556

/-!
# A073309: Primes of the form k! + k + 1.

The programs for A073309, there is no canonical definition to state claims against.
-/

/-! ## A073309.P8237455475554051694

`A073308(n+1)!+A073308(n+1)+1`
-/

namespace A073309.P8237455475554051694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A073308 (n + 1)).toNat : ℤ) + A073308 (n + 1) + 1

end

end A073309.P8237455475554051694

/-! ## A073309.P13806252308418469051

`A100858(floor(n/a(n-1)+n))` with `a(0)=2`
-/

namespace A073309.P13806252308418469051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A100858 ⌊(n : ℚ) / (a (n - 1) : ℚ) + (n : ℚ)⌋.toNat

end

end A073309.P13806252308418469051

/-! ## A073309.P6473787588931697974

`A005095(A073308(n+1))+1`
-/

namespace A073309.P6473787588931697974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005095 (A073308 (n + 1)).toNat + 1

end

end A073309.P6473787588931697974

/-!
# A073310: a(n) is the smallest number k such that 2+k and 2n+k are both prime.

The programs for A073310, there is no canonical definition to state claims against.
-/

/-! ## A073310.P8242806996235914232

`or(1, A020483(n)-2)`
-/

namespace A073310.P8242806996235914232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020483 n - 2)

end

end A073310.P8242806996235914232

/-! ## A073310.P960270830968340478

`or(1, A087711(n)-(n+2))`
-/

namespace A073310.P960270830968340478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A087711 n - (n + 2 : ℤ))

end

end A073310.P960270830968340478

/-! ## A073310.P7903016280532463563

`or(1, A020484(n)%(n+1))`
-/

namespace A073310.P7903016280532463563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.tmod (A020484 n) (n + 1 : ℤ))

end

end A073310.P7903016280532463563

/-! ## A073310.P904202824196895391

`A020483(abs(1-n)+1)-2`
-/

namespace A073310.P904202824196895391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (|1 - (n : ℤ)| + 1).toNat - 2

end

end A073310.P904202824196895391

/-! ## A073310.P17859063624393677516

`A020484(abs(1-n)+1)%(2*(n+1))`
-/

namespace A073310.P17859063624393677516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020484 (|1 - (n : ℤ)| + 1).toNat) (2 * (n + 1) : ℤ)

end

end A073310.P17859063624393677516

/-! ## A073310.P14860135459305111338

`A002472(A020483(n))`
-/

namespace A073310.P14860135459305111338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (A020483 n).toNat

end

end A073310.P14860135459305111338

/-! ## A073310.P12108795481823492340

`A028310(A020483(n)-2)`
-/

namespace A073310.P12108795481823492340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A020483 n - 2).toNat

end

end A073310.P12108795481823492340

/-! ## A073310.P15898169250124334827

`A029579(A020483(n)-2)`
-/

namespace A073310.P15898169250124334827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A020483 n - 2).toNat

end

end A073310.P15898169250124334827

/-! ## A073310.P1606327824490214753

`A219209(A020483(n)-2)`
-/

namespace A073310.P1606327824490214753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219209 (A020483 n - 2).toNat

end

end A073310.P1606327824490214753

/-! ## A073310.P8382409182150941382

`A020484(n)-A103517(n)`
-/

namespace A073310.P8382409182150941382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 n - A103517 n

end

end A073310.P8382409182150941382

/-! ## A073310.P11220680783108128288

`A000010(2*A020483(n))-1`
-/

namespace A073310.P11220680783108128288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A020483 n).toNat - 1

end

end A073310.P11220680783108128288

/-! ## A073310.P11563941336657188414

`A087711(n)-A065475(n+1)`
-/

namespace A073310.P11563941336657188414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 n - A065475 (n + 1)

end

end A073310.P11563941336657188414

/-! ## A073310.P8493251598291266111

`gcd(A020483(n)-2, A001222(C(2, n+1)+1))`
-/

namespace A073310.P8493251598291266111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020483 n - 2) (A001222 (Nat.choose 2 (n + 1) + 1))

end

end A073310.P8493251598291266111

/-! ## A073310.P15682788987357965350

`A000010(A020483(n))-A000040(n+1)%2`
-/

namespace A073310.P15682788987357965350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A020483 n).toNat - Int.tmod (A000040 (n + 1)) 2

end

end A073310.P15682788987357965350

/-! ## A073310.P13101596481723225130

`A020639(A020483(n))-A000032(C(2, n+2))`
-/

namespace A073310.P13101596481723225130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020483 n).toNat - A000032 (Nat.choose 2 (n + 2))

end

end A073310.P13101596481723225130

/-! ## A073310.P14241322424425904407

`A020484(n)-(n+1)*A020639(A000010(n+2))`
-/

namespace A073310.P14241322424425904407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 n - (n + 1 : ℤ) * A020639 (A000010 (n + 2)).toNat

end

end A073310.P14241322424425904407

/-! ## A073310.P10282277918481298889

`A020484(n)-2*n-A020639(eq[1, A001222(n+1)])`
-/

namespace A073310.P10282277918481298889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 n - (2 * n : ℤ) - A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073310.P10282277918481298889

/-! ## A073310.P12095418431709135720

`A271353(2*(n+1))-2`
-/

namespace A073310.P12095418431709135720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (2 * (n + 1)) - 2

end

end A073310.P12095418431709135720

/-! ## A073310.P1645624719223575949

`A270753(2*(n+1))-2*(n+1)`
-/

namespace A073310.P1645624719223575949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270753 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A073310.P1645624719223575949

/-!
# A073311: Number of squarefree numbers in the reduced residue system of n.

The programs for A073311, the canonical program `A073311.P3389041860886676273` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073311 has offset 1).

The definition of A073311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073311.P3389041860886676273

`∑{d}[n+1, A008683(#)*A304575((n+1)/#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073311

/-- `∑{d}[n+1, A008683(#)*A304575((n+1)/#)]` -/
def P3389041860886676273.Spec : Prop :=
  ∀ n, P3389041860886676273.a n = A073311 (n + 1)

theorem P3389041860886676273.correct : P3389041860886676273.Spec := by
  intro n
  simp only [A073311, Nat.add_sub_cancel]

end A073311

/-! ## A073311.P637113226896939127

`Δ[A002088(n)]-A073312(n+1)`
-/

namespace A073311.P637113226896939127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073312 (n + 1)

end

end A073311.P637113226896939127

namespace A073311

/-- `Δ[A002088(n)]-A073312(n+1)` -/
def P637113226896939127.Spec : Prop :=
  ∀ n, P637113226896939127.a n = A073311 (n + 1)

end A073311

/-! ## A073311.P9610433553191919171

`Δ[A005728(n)]-A073312(n+1)`
-/

namespace A073311.P9610433553191919171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073312 (n + 1)

end

end A073311.P9610433553191919171

namespace A073311

/-- `Δ[A005728(n)]-A073312(n+1)` -/
def P9610433553191919171.Spec : Prop :=
  ∀ n, P9610433553191919171.a n = A073311 (n + 1)

end A073311

/-! ## A073311.P15207994866155712428

`A000010(n+1)-A073312(n+1)`
-/

namespace A073311.P15207994866155712428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A073312 (n + 1)

end

end A073311.P15207994866155712428

namespace A073311

/-- `A000010(n+1)-A073312(n+1)` -/
def P15207994866155712428.Spec : Prop :=
  ∀ n, P15207994866155712428.a n = A073311 (n + 1)

theorem P15207994866155712428.correct : P15207994866155712428.Spec := by
  intro n
  simp only [A073311, Nat.add_sub_cancel, A073311.P15207994866155712428.a, A073311.P3389041860886676273.f1, A073311.P3389041860886676273.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A073312, A073312.P8312468748278412465.a, A304575, A304575.P11043063185275291156.f1, A304575.P11043063185275291156.a, A003557, A003557.P6364735403900941810.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073311

/-! ## A073311.P5404763112750977200

`A109606(n+1)+1-A073312(n+1)`
-/

namespace A073311.P5404763112750977200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A073312 (n + 1))

end

end A073311.P5404763112750977200

namespace A073311

/-- `A109606(n+1)+1-A073312(n+1)` -/
def P5404763112750977200.Spec : Prop :=
  ∀ n, P5404763112750977200.a n = A073311 (n + 1)

theorem P5404763112750977200.correct : P5404763112750977200.Spec := by
  intro n
  simp only [A073311, Nat.add_sub_cancel, A073311.P5404763112750977200.a, A073311.P3389041860886676273.f1, A073311.P3389041860886676273.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A073312, A073312.P8312468748278412465.a, A109606, A109606.P2415810041766612210.a, A304575, A304575.P11043063185275291156.f1, A304575.P11043063185275291156.a, A000010, A000010.P4673923239450215316.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073311

/-! ## A073311.P7000586083721246901

`A000010(n+1)+A057428(n)*A073312(n+1)`
-/

namespace A073311.P7000586083721246901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A057428 n * A073312 (n + 1)

end

end A073311.P7000586083721246901

namespace A073311

/-- `A000010(n+1)+A057428(n)*A073312(n+1)` -/
def P7000586083721246901.Spec : Prop :=
  ∀ n, P7000586083721246901.a n = A073311 (n + 1)

end A073311

/-! ## A073311.P6476659445891939131

`A048864(n+1)+A048865(n+1)-A073312(n+1)`
-/

namespace A073311.P6476659445891939131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1) + (A048865 (n + 1) - A073312 (n + 1))

end

end A073311.P6476659445891939131

namespace A073311

/-- `A048864(n+1)+A048865(n+1)-A073312(n+1)` -/
def P6476659445891939131.Spec : Prop :=
  ∀ n, P6476659445891939131.a n = A073311 (n + 1)

theorem P6476659445891939131.correct : P6476659445891939131.Spec := by
  intro n
  simp only [A073311, Nat.add_sub_cancel, A073311.P6476659445891939131.a, A073311.P3389041860886676273.f1, A073311.P3389041860886676273.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A048864, A048864.P16915682539637834600.a, A048865, A048865.P11145010694177444749.a, A073312, A073312.P8312468748278412465.a, A304575, A304575.P11043063185275291156.f1, A304575.P11043063185275291156.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A036997, A036997.P9898190539809888575.a, A003557, A003557.P6364735403900941810.a, A037228, A037228.P4220557198165153324.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073311

/-! ## A073311.P13108600405195588517

`A067541(A005408(n))-A073312(n+1)`
-/

namespace A073311.P13108600405195588517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (A005408 n).toNat - A073312 (n + 1)

end

end A073311.P13108600405195588517

namespace A073311

/-- `A067541(A005408(n))-A073312(n+1)` -/
def P13108600405195588517.Spec : Prop :=
  ∀ n, P13108600405195588517.a n = A073311 (n + 1)

end A073311

/-! ## A073311.P15623208203519961991

`∑{#}[n, A008683(#+1)²*floor(1/gcd(n+1, #+1))]`
-/

namespace A073311.P15623208203519961991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A008683 (k + 1) ^ 2 * ⌊1 / (Nat.gcd (n + 1) (k + 1) : ℚ)⌋

end

end A073311.P15623208203519961991

namespace A073311

/-- `∑{#}[n, A008683(#+1)²*floor(1/gcd(n+1, #+1))]` -/
def P15623208203519961991.Spec : Prop :=
  ∀ n, P15623208203519961991.a n = A073311 (n + 1)

end A073311

/-! ## A073311.P6904661293885848748

`A368705(n+1)+1`
-/

namespace A073311.P6904661293885848748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368705 (n + 1) + 1

end

end A073311.P6904661293885848748

namespace A073311

/-- `A368705(n+1)+1` -/
def P6904661293885848748.Spec : Prop :=
  ∀ n, P6904661293885848748.a n = A073311 (n + 1)

end A073311

/-!
# A073312: Number of nonsquarefree numbers in the reduced residue system of n.

The programs for A073312, the canonical program `A073312.P8312468748278412465` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073312 has offset 1).

The definition of A073312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073312.P8312468748278412465

`A000010(n+1)-A073311(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073312

/-- `A000010(n+1)-A073311(n+1)` -/
def P8312468748278412465.Spec : Prop :=
  ∀ n, P8312468748278412465.a n = A073312 (n + 1)

theorem P8312468748278412465.correct : P8312468748278412465.Spec := by
  intro n
  simp only [A073312, Nat.add_sub_cancel]

end A073312

/-! ## A073312.P16786508869546489126

`A109606(n+1)+1-A073311(n+1)`
-/

namespace A073312.P16786508869546489126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A073311 (n + 1))

end

end A073312.P16786508869546489126

namespace A073312

/-- `A109606(n+1)+1-A073311(n+1)` -/
def P16786508869546489126.Spec : Prop :=
  ∀ n, P16786508869546489126.a n = A073312 (n + 1)

theorem P16786508869546489126.correct : P16786508869546489126.Spec := by
  intro n
  simp only [A073312, Nat.add_sub_cancel, A073312.P16786508869546489126.a, A073312.P8312468748278412465.a, A000010, A000010.P4673923239450215316.a, A073311, A073311.P3389041860886676273.f1, A073311.P3389041860886676273.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A304575, A304575.P11043063185275291156.f1, A304575.P11043063185275291156.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073312

/-! ## A073312.P4158642533737398214

`n+1-(A073311(n+1)+A051953(n+1))`
-/

namespace A073312.P4158642533737398214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A073311 (n + 1) + A051953 (n + 1))

end

end A073312.P4158642533737398214

namespace A073312

/-- `n+1-(A073311(n+1)+A051953(n+1))` -/
def P4158642533737398214.Spec : Prop :=
  ∀ n, P4158642533737398214.a n = A073312 (n + 1)

theorem P4158642533737398214.correct : P4158642533737398214.Spec := by
  intro n
  simp only [A073312, Nat.add_sub_cancel, A073312.P4158642533737398214.a, A073312.P8312468748278412465.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A073311, A073311.P3389041860886676273.f1, A073311.P3389041860886676273.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A304575, A304575.P11043063185275291156.f1, A304575.P11043063185275291156.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073312

/-! ## A073312.P1083067308965823527

`A002618(n+1)/(n+1)-A073311(n+1)`
-/

namespace A073312.P1083067308965823527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (n + 1 : ℚ) - (A073311 (n + 1) : ℚ)

end

end A073312.P1083067308965823527

namespace A073312

/-- `A002618(n+1)/(n+1)-A073311(n+1)` -/
def P1083067308965823527.Spec : Prop :=
  ∀ n, P1083067308965823527.a n = (A073312 (n + 1) : ℚ)

end A073312

/-! ## A073312.P6238616686482754562

`A048864(n+1)+A048865(n+1)-A073311(n+1)`
-/

namespace A073312.P6238616686482754562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1) + (A048865 (n + 1) - A073311 (n + 1))

end

end A073312.P6238616686482754562

namespace A073312

/-- `A048864(n+1)+A048865(n+1)-A073311(n+1)` -/
def P6238616686482754562.Spec : Prop :=
  ∀ n, P6238616686482754562.a n = A073312 (n + 1)

theorem P6238616686482754562.correct : P6238616686482754562.Spec := by
  intro n
  simp only [A073312, Nat.add_sub_cancel, A073312.P6238616686482754562.a, A073312.P8312468748278412465.a, A000010, A000010.P4673923239450215316.a, A048864, A048864.P16915682539637834600.a, A048865, A048865.P11145010694177444749.a, A073311, A073311.P3389041860886676273.f1, A073311.P3389041860886676273.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A036997, A036997.P9898190539809888575.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A304575, A304575.P11043063185275291156.f1, A304575.P11043063185275291156.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A037228, A037228.P4220557198165153324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073312

/-! ## A073312.P3892766658978593117

`A109606(n+1)-A368705(n+1)`
-/

namespace A073312.P3892766658978593117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) - A368705 (n + 1)

end

end A073312.P3892766658978593117

namespace A073312

/-- `A109606(n+1)-A368705(n+1)` -/
def P3892766658978593117.Spec : Prop :=
  ∀ n, P3892766658978593117.a n = A073312 (n + 1)

end A073312

/-!
# A073313: Binomial transform of generalized Lucas numbers S(n) = S(n-1) + S(n-2) + S(n-3), S(0)=3, S(1)=1, S(2)=3.

The programs for A073313, the canonical program `A073313.P1502850606681591344` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073313 has offset 0).

The definition of A073313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073313.P16687395955948035656

`ogf((3-8x+4x^2)/(1-4x+4x^2-2x^3))`
-/

namespace A073313.P16687395955948035656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8, 4] [1, -4, 4, -2] n

end

end A073313.P16687395955948035656

namespace A073313

/-- `ogf((3-8x+4x^2)/(1-4x+4x^2-2x^3))` -/
def P16687395955948035656.Spec : Prop :=
  ∀ n, P16687395955948035656.a n = A073313 n

end A073313

/-! ## A073313.P1502850606681591344

`4*a(n-1)-4*a(n-2)+2*a(n-3)` with `a(0)=3, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073313

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)` -/
def P1502850606681591344.Spec : Prop :=
  ∀ n, P1502850606681591344.a n = A073313 n

theorem P1502850606681591344.correct : P1502850606681591344.Spec := by
  intro n
  simp only [A073313]

end A073313

/-! ## A073313.P2758004195014065340

`6*A159035(n+1)-A073357(n+2)`
-/

namespace A073313.P2758004195014065340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A159035 (n + 1) - A073357 (n + 2)

end

end A073313.P2758004195014065340

namespace A073313

/-- `6*A159035(n+1)-A073357(n+2)` -/
def P2758004195014065340.Spec : Prop :=
  ∀ n, P2758004195014065340.a n = A073313 n

end A073313

/-! ## A073313.P11944218004928280004

`A075115(4*n)/A000079(n)`
-/

namespace A073313.P11944218004928280004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075115 (4 * n) : ℚ) / (A000079 n : ℚ)

end

end A073313.P11944218004928280004

namespace A073313

/-- `A075115(4*n)/A000079(n)` -/
def P11944218004928280004.Spec : Prop :=
  ∀ n, P11944218004928280004.a n = (A073313 n : ℚ)

end A073313

/-! ## A073313.P1848181280435441254

`A075115(4*n)/Δ[A000225(n)]`
-/

namespace A073313.P1848181280435441254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075115 (4 * n) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A073313.P1848181280435441254

namespace A073313

/-- `A075115(4*n)/Δ[A000225(n)]` -/
def P1848181280435441254.Spec : Prop :=
  ∀ n, P1848181280435441254.a n = (A073313 n : ℚ)

end A073313

/-! ## A073313.P6449858839996740183

`A075115(4*n)/record[A055248(n)]`
-/

namespace A073313.P6449858839996740183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075115 (4 * n) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A073313.P6449858839996740183

namespace A073313

/-- `A075115(4*n)/record[A055248(n)]` -/
def P6449858839996740183.Spec : Prop :=
  ∀ n, P6449858839996740183.a n = (A073313 n : ℚ)

end A073313

/-! ## A073313.P5218581840940362663

`A075115(4*n)/A308663(A000096(n))`
-/

namespace A073313.P5218581840940362663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075115 (4 * n) : ℚ) / (A308663 (A000096 n).toNat : ℚ)

end

end A073313.P5218581840940362663

namespace A073313

/-- `A075115(4*n)/A308663(A000096(n))` -/
def P5218581840940362663.Spec : Prop :=
  ∀ n, P5218581840940362663.a n = (A073313 n : ℚ)

end A073313

/-!
# A073314: Binomial transform, alternating in sign, of Lucas generalized numbers S(n): S(n) = S(n-1) + S(n-2) + S(n-3), S(0)=3, S(1)=1, S(2)=3.

The programs for A073314, the canonical program `A073314.P13943307574808788769` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073314 has offset 0).

The definition of A073314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073314.P1461398419157921886

`ogf((3-4x)/(1-2x+2x^3))`
-/

namespace A073314.P1461398419157921886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -2, 0, 2] n

end

end A073314.P1461398419157921886

namespace A073314

/-- `ogf((3-4x)/(1-2x+2x^3))` -/
def P1461398419157921886.Spec : Prop :=
  ∀ n, P1461398419157921886.a n = A073314 n

end A073314

/-! ## A073314.P13943307574808788769

`2*a(n-1)-2*a(n-3)` with `a(0)=3, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073314

/-- `2*a(n-1)-2*a(n-3)` -/
def P13943307574808788769.Spec : Prop :=
  ∀ n, P13943307574808788769.a n = A073314 n

theorem P13943307574808788769.correct : P13943307574808788769.Spec := by
  intro n
  simp only [A073314]

end A073314

/-! ## A073314.P14773874456699669552

`2*(a(n-1)-a(n-3))` with `a(0)=3, a(1)=2, a(2)=4`
-/

namespace A073314.P14773874456699669552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 4] fun n a =>
  2 * (a (n - 1) - a (n - 3))

end

end A073314.P14773874456699669552

namespace A073314

/-- `2*(a(n-1)-a(n-3))` -/
def P14773874456699669552.Spec : Prop :=
  ∀ n, P14773874456699669552.a n = A073314 n

theorem P14773874456699669552.correct : P14773874456699669552.Spec := by
  intro n
  simp only [A073314, Nat.add_sub_cancel, A073314.P14773874456699669552.a, A073314.P13943307574808788769.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073314

/-! ## A073314.P8713755903022728952

`a(n-1)+a(n-1)-a(n-3)-a(n-3)` with `a(0)=3, a(1)=2, a(2)=4`
-/

namespace A073314.P8713755903022728952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 4] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 3) - a (n - 3))

end

end A073314.P8713755903022728952

namespace A073314

/-- `a(n-1)+a(n-1)-a(n-3)-a(n-3)` -/
def P8713755903022728952.Spec : Prop :=
  ∀ n, P8713755903022728952.a n = A073314 n

theorem P8713755903022728952.correct : P8713755903022728952.Spec := by
  intro n
  simp only [A073314, Nat.add_sub_cancel, A073314.P8713755903022728952.a, A073314.P13943307574808788769.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073314

/-! ## A073314.P961733102400495251

`a(n-1)-(a(n-3)-(a(n-1)-a(n-3)))` with `a(0)=3, a(1)=2, a(2)=4`
-/

namespace A073314.P961733102400495251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 4] fun n a =>
  a (n - 1) - (a (n - 3) - (a (n - 1) - a (n - 3)))

end

end A073314.P961733102400495251

namespace A073314

/-- `a(n-1)-(a(n-3)-(a(n-1)-a(n-3)))` -/
def P961733102400495251.Spec : Prop :=
  ∀ n, P961733102400495251.a n = A073314 n

theorem P961733102400495251.correct : P961733102400495251.Spec := by
  intro n
  simp only [A073314, Nat.add_sub_cancel, A073314.P961733102400495251.a, A073314.P13943307574808788769.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073314

/-! ## A073314.P15614937483966359443

`A077940(n)+2*A124395(n)`
-/

namespace A073314.P15614937483966359443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077940 n + 2 * A124395 n

end

end A073314.P15614937483966359443

namespace A073314

/-- `A077940(n)+2*A124395(n)` -/
def P15614937483966359443.Spec : Prop :=
  ∀ n, P15614937483966359443.a n = A073314 n

end A073314

/-! ## A073314.P3409648027106163519

`A124395(n)-Δ[A124395(n+2)]`
-/

namespace A073314.P3409648027106163519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124395 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124395 n - (f1 (n + 1) - f1 n)

end

end A073314.P3409648027106163519

namespace A073314

/-- `A124395(n)-Δ[A124395(n+2)]` -/
def P3409648027106163519.Spec : Prop :=
  ∀ n, P3409648027106163519.a n = A073314 n

end A073314

/-!
# A073315: Expansion of Lambert W function in powers of log(log(x))/log(x).

The programs for A073315, the canonical program `A073315.P14853912023516851970` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073315 has offset 1).

The definition of A073315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073315.P14853912023516851970

`T(n-1,k-1)*(row(n)+1)+T(n-1,k)*(row(n)+1)*row(n)/(row(n)+1-col(n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073315

/-- `T(n-1,k-1)*(row(n)+1)+T(n-1,k)*(row(n)+1)*row(n)/(row(n)+1-col(n))` -/
def P14853912023516851970.Spec : Prop :=
  ∀ n, P14853912023516851970.a n = (A073315 (n + 1) : ℚ)

end A073315

/-! ## A073315.P16049934390786199620

`A074909(n)*A188881(n+1)`
-/

namespace A073315.P16049934390786199620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A188881 (n + 1)

end

end A073315.P16049934390786199620

namespace A073315

/-- `A074909(n)*A188881(n+1)` -/
def P16049934390786199620.Spec : Prop :=
  ∀ n, P16049934390786199620.a n = A073315 (n + 1)

end A073315

/-! ## A073315.P10231222749061559095

`A130534(n)*A181511(n+1)`
-/

namespace A073315.P10231222749061559095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 n * A181511 (n + 1)

end

end A073315.P10231222749061559095

namespace A073315

/-- `A130534(n)*A181511(n+1)` -/
def P10231222749061559095.Spec : Prop :=
  ∀ n, P10231222749061559095.a n = A073315 (n + 1)

end A073315

/-! ## A073315.P17952181142043671238

`A132393(comp[∑[n]])*A181511(n+1)`
-/

namespace A073315.P17952181142043671238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A181511 (n + 1)

end

end A073315.P17952181142043671238

namespace A073315

/-- `A132393(comp[∑[n]])*A181511(n+1)` -/
def P17952181142043671238.Spec : Prop :=
  ∀ n, P17952181142043671238.a n = A073315 (n + 1)

end A073315

/-! ## A073315.P2866490317835074251

`abs(A008275(n+1)*A181511(n+1))`
-/

namespace A073315.P2866490317835074251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008275 (n + 1) * A181511 (n + 1)|

end

end A073315.P2866490317835074251

namespace A073315

/-- `abs(A008275(n+1)*A181511(n+1))` -/
def P2866490317835074251.Spec : Prop :=
  ∀ n, P2866490317835074251.a n = A073315 (n + 1)

end A073315

/-! ## A073315.P11155631188315785039

`A007318(comp[∑[n+1]])*A188881(n+1)`
-/

namespace A073315.P11155631188315785039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A188881 (n + 1)

end

end A073315.P11155631188315785039

namespace A073315

/-- `A007318(comp[∑[n+1]])*A188881(n+1)` -/
def P11155631188315785039.Spec : Prop :=
  ∀ n, P11155631188315785039.a n = A073315 (n + 1)

end A073315

/-!
# A073317: a(n)=Sum_{j = 0..n} binomial(phi(n),phi(j)).

The programs for A073317, there is no canonical definition to state claims against.
-/

/-! ## A073317.P9972871899053553411

`A066781(n+1)-A073318(n+1)`
-/

namespace A073317.P9972871899053553411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) - A073318 (n + 1)

end

end A073317.P9972871899053553411

/-! ## A073317.P8589961642241405465

`2^Δ[A002088(n)]-A073318(n+1)`
-/

namespace A073317.P8589961642241405465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) - (A073318 (n + 1) : ℚ)

end

end A073317.P8589961642241405465

/-! ## A073317.P11204447349885023966

`2^Δ[A005728(n)]-A073318(n+1)`
-/

namespace A073317.P11204447349885023966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) - (A073318 (n + 1) : ℚ)

end

end A073317.P11204447349885023966

/-! ## A073317.P12110051887168541784

`A100371(n+1)+1-A073318(n+1)`
-/

namespace A073317.P12110051887168541784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100371 (n + 1) + (1 - A073318 (n + 1))

end

end A073317.P12110051887168541784

/-! ## A073317.P10305053204225556547

`A243305(n+1)-(A073318(n+1)+1)`
-/

namespace A073317.P10305053204225556547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243305 (n + 1) - (A073318 (n + 1) + 1)

end

end A073317.P10305053204225556547

/-!
# A073318: a(n) = 2^phi(n) - Sum_{j=0..n} binomial(phi(n), phi(j)).

The programs for A073318, there is no canonical definition to state claims against.
-/

/-! ## A073318.P5213850069230588867

`A066781(n+1)-A073317(n+1)`
-/

namespace A073318.P5213850069230588867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) - A073317 (n + 1)

end

end A073318.P5213850069230588867

/-! ## A073318.P13095545525964664653

`2^Δ[A002088(n)]-A073317(n+1)`
-/

namespace A073318.P13095545525964664653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) - (A073317 (n + 1) : ℚ)

end

end A073318.P13095545525964664653

/-! ## A073318.P18156836291491758608

`2^Δ[A005728(n)]-A073317(n+1)`
-/

namespace A073318.P18156836291491758608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) - (A073317 (n + 1) : ℚ)

end

end A073318.P18156836291491758608

/-! ## A073318.P16212034957230221964

`2^A000010(n+1)-A073317(n+1)`
-/

namespace A073318.P16212034957230221964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000010 (n + 1) : ℤ) - (A073317 (n + 1) : ℚ)

end

end A073318.P16212034957230221964

/-! ## A073318.P12742104304376810878

`A000079((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])-A073317(n+1)`
-/

namespace A073318.P12742104304376810878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat - A073317 (n + 1)

end

end A073318.P12742104304376810878

/-!
# A073319: Numbers n such that A073318(n) = 2^phi(n) - Sum_{j=0..n} binomial(phi(n), phi(j)) is positive.

The programs for A073319, there is no canonical definition to state claims against.
-/

/-! ## A073319.P10362962795413688125

`A000040(lt[21, A191674(2*n+1)])`
-/

namespace A073319.P10362962795413688125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191674 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073319.P10362962795413688125

/-! ## A073319.P17622551808928334993

`record[p?[A176298(A176297(3*n+5))]]`
-/

namespace A073319.P17622551808928334993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176298 (A176297 (3 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073319.P17622551808928334993

/-! ## A073319.P12768191608334881130

`p?[A228357(n+4)+A000122(n²)]`
-/

namespace A073319.P12768191608334881130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228357 (n + 4) + A000122 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073319.P12768191608334881130

/-! ## A073319.P10991741409989206282

`A000040(lt[A228499(2*(n+2)), A228539(n)])`
-/

namespace A073319.P10991741409989206282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228499 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073319.P10991741409989206282

/-! ## A073319.P3871604979475821136

`A000040(lt[A106457(3*n+2), A011371(n)])`
-/

namespace A073319.P3871604979475821136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106457 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073319.P3871604979475821136

/-!
# A073320: A073259(n)=3: the length of iteration transient leading to n-th composite number equals 3.

The programs for A073320, there is no canonical definition to state claims against.
-/

/-! ## A073320.P10193176386700710644

`eq[3, A073259(n+1)]+1`
-/

namespace A073320.P10193176386700710644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073320.P10193176386700710644

/-! ## A073320.P6812607205620862554

`lt[A073259(n+3), 4]+3`
-/

namespace A073320.P6812607205620862554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A073320.P6812607205620862554

/-! ## A073320.P213729747513896081

`eq[3, A073259(A028310(n))]`
-/

namespace A073320.P213729747513896081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073320.P213729747513896081

/-! ## A073320.P4031875808888758835

`A020725(eq[3, A073259(n+1)])`
-/

namespace A073320.P4031875808888758835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073320.P4031875808888758835

/-! ## A073320.P8793379283158655386

`eq[3, A073259(A123108(2*n))]`
-/

namespace A073320.P8793379283158655386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073320.P8793379283158655386

/-!
# A073321: a(n)=A073259[A000040(n)]; Length of FixedPointList started with n-th prime and leading to corresponding composite number.

The programs for A073321, there is no canonical definition to state claims against.
-/

/-! ## A073321.P17427058668251896730

`A073259(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073321.P17427058668251896730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (A000040 (n + 1)).toNat

end

end A073321.P17427058668251896730

/-! ## A073321.P12529287823777706396

`A073259(Δ[A007504(n)])`
-/

namespace A073321.P12529287823777706396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (f1 (n + 1) - f1 n).toNat

end

end A073321.P12529287823777706396

/-! ## A073321.P10570918745803102554

`A073259(p?[A259153(n)])`
-/

namespace A073321.P10570918745803102554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A073321.P10570918745803102554

/-! ## A073321.P3116619598848337426

`A073259(A006005(n+1))`
-/

namespace A073321.P3116619598848337426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (A006005 (n + 1)).toNat

end

end A073321.P3116619598848337426

/-! ## A073321.P17146357203189175589

`A073259(A008578(n+2))`
-/

namespace A073321.P17146357203189175589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (A008578 (n + 2)).toNat

end

end A073321.P17146357203189175589

/-! ## A073321.P764932890973992528

`A073259(A075643(n+2))`
-/

namespace A073321.P764932890973992528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (A075643 (n + 2)).toNat

end

end A073321.P764932890973992528

/-! ## A073321.P16411926395381795967

`A073259(A171525(n+2))`
-/

namespace A073321.P16411926395381795967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (A171525 (n + 2)).toNat

end

end A073321.P16411926395381795967

/-! ## A073321.P15112399739010343314

`A073259(A182986(n+2))`
-/

namespace A073321.P15112399739010343314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (A182986 (n + 2)).toNat

end

end A073321.P15112399739010343314

/-!
# A073322: a(n)=A073259[A002808(n)] and a(0)=3; Length of FixedPointList started with n-th nonprime and leading to corresponding composite number= c[c(n)].

The programs for A073322, there is no canonical definition to state claims against.
-/

/-! ## A073322.P5775651818546111228

`A073259(Δ[A053767(n)])`
-/

namespace A073322.P5775651818546111228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (f1 (n + 1) - f1 n).toNat

end

end A073322.P5775651818546111228

/-! ## A073322.P5808209628421957688

`A073259(comp[A351078(n)])`
-/

namespace A073322.P5808209628421957688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A073322.P5808209628421957688

/-! ## A073322.P8191659071881413320

`A073259(A002808(n+1))`
-/

namespace A073322.P8191659071881413320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (A002808 (n + 1)).toNat

end

end A073322.P8191659071881413320

/-! ## A073322.P12091753748831919575

`A073259(A018252(n+2))`
-/

namespace A073322.P12091753748831919575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (A018252 (n + 2)).toNat

end

end A073322.P12091753748831919575

/-! ## A073322.P9663351049865574041

`A073259(A141468(n+3))`
-/

namespace A073322.P9663351049865574041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (A141468 (n + 3)).toNat

end

end A073322.P9663351049865574041

/-! ## A073322.P7558565984274598136

`A073259(lt[0, A082023(n)])`
-/

namespace A073322.P7558565984274598136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073322.P7558565984274598136

/-! ## A073322.P15193297608722720258

`A073259(lt[1, A032741(n)])`
-/

namespace A073322.P15193297608722720258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073322.P15193297608722720258

/-! ## A073322.P15567648176231449581

`A073259(lt[1, A074206(n)])`
-/

namespace A073322.P15567648176231449581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073322.P15567648176231449581

/-! ## A073322.P425892821606165110

`A073259(lt[1, A078898(n)])`
-/

namespace A073322.P425892821606165110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073322.P425892821606165110

/-! ## A073322.P3897948827056756169

`A073259(lt[1, A107286(n)])`
-/

namespace A073322.P3897948827056756169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073322.P3897948827056756169

/-!
# A073323: Smallest k such that A073259(k)=n or 0 if there is no such value; the first number of which length of fixed-point-list terminated by k-th composite number equals n.

The programs for A073323, there is no canonical definition to state claims against.
-/

/-! ## A073323.P10798775282215265237

`A006907(A238156(A001096(n))+n)`
-/

namespace A073323.P10798775282215265237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006907 (A238156 (A001096 n).toNat + (n : ℤ)).toNat

end

end A073323.P10798775282215265237

/-! ## A073323.P8699681582278140153

`A007617(A002295(n))%A134915(n)`
-/

namespace A073323.P8699681582278140153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007617 (A002295 n).toNat) (A134915 n)

end

end A073323.P8699681582278140153

/-!
# A073325: a(n) = least k > 0 such that prime(k) == n (mod k).

The programs for A073325, there is no canonical definition to state claims against.
-/

/-! ## A073325.P17462361235293874325

`A000720(A360789(n))`
-/

namespace A073325.P17462361235293874325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A360789 n).toNat

end

end A073325.P17462361235293874325

/-! ## A073325.P12167992198239876850

`A036234(A360789(n)-1)`
-/

namespace A073325.P12167992198239876850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A360789 n - 1).toNat

end

end A073325.P12167992198239876850

/-! ## A073325.P8437083614135703835

`A003963(2*A360789(n))`
-/

namespace A073325.P8437083614135703835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A360789 n).toNat

end

end A073325.P8437083614135703835

/-! ## A073325.P10987450296496360496

`A061395(2*A360789(n))`
-/

namespace A073325.P10987450296496360496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A360789 n).toNat

end

end A073325.P10987450296496360496

/-! ## A073325.P16849407411835593176

`A061395(lcm(2, A360789(n)))`
-/

namespace A073325.P16849407411835593176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A360789 n))

end

end A073325.P16849407411835593176

/-!
# A073328: Numbers n such that S(n) is a palindromic prime, where S(n) is the Kempner function A002034.

The programs for A073328, there is no canonical definition to state claims against.
-/

/-! ## A073328.P8322393530120841816

`lt[A239572(A135764(n+1)), A064413(n+1)]`
-/

namespace A073328.P8322393530120841816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239572 (A135764 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073328.P8322393530120841816

/-!
# A073329: a(n) is the n-th number to have n distinct prime factors.

The programs for A073329, there is no canonical definition to state claims against.
-/

/-! ## A073329.P5745469114932070004

`A048692(∑[n+1])`
-/

namespace A073329.P5745469114932070004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048692 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073329.P5745469114932070004

/-! ## A073329.P273809256257692875

`record[A048692(A049777(n+1))]`
-/

namespace A073329.P273809256257692875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048692 (A049777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073329.P273809256257692875

/-! ## A073329.P5823059991673068523

`record[gcd(A025581(n), A048692(n+1))]`
-/

namespace A073329.P5823059991673068523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A048692 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073329.P5823059991673068523

/-! ## A073329.P1695569941367336979

`record[char[A000096(n)]*A048692(n+1)]`
-/

namespace A073329.P1695569941367336979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A048692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073329.P1695569941367336979

/-! ## A073329.P5092662288589801110

`record[A048692(A154028(A133265(n)))]`
-/

namespace A073329.P5092662288589801110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048692 (A154028 (A133265 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073329.P5092662288589801110

/-!
# A073330: Let c(1)=n and c(k+1)=floor(c(k)/Pi) if c(k) is even, or c(k+1)=floor(Pi*c(k)) otherwise; sequence gives the smallest value a(n) such that c(a(n))=0.

The programs for A073330, there is no canonical definition to state claims against.
-/

/-! ## A073330.P10335023063583619406

`A257704(n+1)+1`
-/

namespace A073330.P10335023063583619406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257704 (n + 1) + 1

end

end A073330.P10335023063583619406

/-! ## A073330.P1828493989975818210

`A020725(A257704(n+1))`
-/

namespace A073330.P1828493989975818210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A257704 (n + 1)).toNat

end

end A073330.P1828493989975818210

/-!
# A073333: Decimal expansion of 1/(e - 1) = Sum_{k >= 1} exp(-k).

The programs for A073333, there is no canonical definition to state claims against.
-/

/-! ## A073333.P14118709681001436260

`A185393(n+1)`
-/

namespace A073333.P14118709681001436260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185393 (n + 1 + 1)

end

end A073333.P14118709681001436260

/-! ## A073333.P6122752831092025809

`A185393(n)-Δ[-A185393(n)]`
-/

namespace A073333.P6122752831092025809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A185393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185393 (n + 1) - (f1 (n + 1) - f1 n)

end

end A073333.P6122752831092025809

/-! ## A073333.P7727135035418419990

`Δ[A023443(∑[A185393(n)])]`
-/

namespace A073333.P7727135035418419990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185393 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073333.P7727135035418419990

/-!
# A073334: The so-called "rhythmic infinity system" of Danish composer Per Nørgård [Noergaard].

The programs for A073334, the canonical program `A073334.P4283954833387490777` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073334 has offset 0).

The definition of A073334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073334.P4283954833387490777

`A000045(A005811(n)+4)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073334

/-- `A000045(A005811(n)+4)` -/
def P4283954833387490777.Spec : Prop :=
  ∀ n, P4283954833387490777.a n = A073334 n

theorem P4283954833387490777.correct : P4283954833387490777.Spec := by
  intro n
  simp only [A073334]

end A073334

/-! ## A073334.P13294496300781171829

`A000045(∑[Δ[xor(n, 2*n-1)]%2]+3)`
-/

namespace A073334.P13294496300781171829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A073334.P13294496300781171829

namespace A073334

/-- `A000045(∑[Δ[xor(n, 2*n-1)]%2]+3)` -/
def P13294496300781171829.Spec : Prop :=
  ∀ n, P13294496300781171829.a n = A073334 n

end A073334

/-! ## A073334.P7973589685890768551

`A020701(A005811(n))`
-/

namespace A073334.P7973589685890768551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (A005811 n).toNat

end

end A073334.P7973589685890768551

namespace A073334

/-- `A020701(A005811(n))` -/
def P7973589685890768551.Spec : Prop :=
  ∀ n, P7973589685890768551.a n = A073334 n

end A073334

/-! ## A073334.P1757177741438795422

`A020695(A088748(n))`
-/

namespace A073334.P1757177741438795422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A088748 n).toNat

end

end A073334.P1757177741438795422

namespace A073334

/-- `A020695(A088748(n))` -/
def P1757177741438795422.Spec : Prop :=
  ∀ n, P1757177741438795422.a n = A073334 n

end A073334

/-! ## A073334.P636281944742731935

`A000045(A136004(n))`
-/

namespace A073334.P636281944742731935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A136004 n).toNat

end

end A073334.P636281944742731935

namespace A073334

/-- `A000045(A136004(n))` -/
def P636281944742731935.Spec : Prop :=
  ∀ n, P636281944742731935.a n = A073334 n

end A073334

/-! ## A073334.P14819504258262998249

`A000045(A088748(n)+3)`
-/

namespace A073334.P14819504258262998249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A088748 n + 3).toNat

end

end A073334.P14819504258262998249

namespace A073334

/-- `A000045(A088748(n)+3)` -/
def P14819504258262998249.Spec : Prop :=
  ∀ n, P14819504258262998249.a n = A073334 n

theorem P14819504258262998249.correct : P14819504258262998249.Spec := by
  intro n
  simp only [A073334, Nat.add_sub_cancel, A073334.P14819504258262998249.a, A073334.P4283954833387490777.a, A000045, A000045.P11838749114346432762.a, A005811, A005811.P8696411420205566785.a, A088748, A088748.P405959534239069085.a, A000120, A000120.P2816527436160941581.a, A003188, A003188.P10544524695508875182.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073334

/-! ## A073334.P320851531094086887

`A212804(A005811(n)+5)`
-/

namespace A073334.P320851531094086887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A005811 n + 5).toNat

end

end A073334.P320851531094086887

namespace A073334

/-- `A212804(A005811(n)+5)` -/
def P320851531094086887.Spec : Prop :=
  ∀ n, P320851531094086887.a n = A073334 n

end A073334

/-! ## A073334.P13176009995333240048

`A007067(a(A035327(n)))` with `a(0)=3`
-/

namespace A073334.P13176009995333240048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A007067 (a (A035327 n).toNat).toNat

end

end A073334.P13176009995333240048

namespace A073334

/-- `A007067(a(A035327(n)))` -/
def P13176009995333240048.Spec : Prop :=
  ∀ n, P13176009995333240048.a n = A073334 n

end A073334

/-! ## A073334.P3526287098686007803

`A096748(2*(A005811(n)+2))`
-/

namespace A073334.P3526287098686007803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (2 * (A005811 n + 2)).toNat

end

end A073334.P3526287098686007803

namespace A073334

/-- `A096748(2*(A005811(n)+2))` -/
def P3526287098686007803.Spec : Prop :=
  ∀ n, P3526287098686007803.a n = A073334 n

end A073334

/-! ## A073334.P117037567299083018

`A305649(A161680(A005811(n)+4))`
-/

namespace A073334.P117037567299083018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A161680 (A005811 n + 4).toNat).toNat

end

end A073334.P117037567299083018

namespace A073334

/-- `A305649(A161680(A005811(n)+4))` -/
def P117037567299083018.Spec : Prop :=
  ∀ n, P117037567299083018.a n = A073334 n

end A073334

/-! ## A073334.P6850247666137032314

`A000045(A000120(A003188(n))+4)`
-/

namespace A073334.P6850247666137032314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000120 (A003188 n).toNat + 4).toNat

end

end A073334.P6850247666137032314

namespace A073334

/-- `A000045(A000120(A003188(n))+4)` -/
def P6850247666137032314.Spec : Prop :=
  ∀ n, P6850247666137032314.a n = A073334 n

end A073334

/-!
# A073335: Total number of prime power parts in all partitions of n.

The programs for A073335, there is no canonical definition to state claims against.
-/

/-! ## A073335.P16333223953353591841

`∑{#}[n, A001222(#+1)*A000041(n+1-(#+1))]`
-/

namespace A073335.P16333223953353591841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A001222 (k + 1) * A000041 (n + 1 - (k + 1))

end

end A073335.P16333223953353591841

/-! ## A073335.P14560582818952839731

`A281611(n+1)+A037032(n+1)`
-/

namespace A073335.P14560582818952839731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281611 (n + 1) + A037032 (n + 1)

end

end A073335.P14560582818952839731

/-! ## A073335.P6549778790700792898

`A281611(n+1)+∑[A144120(n+1)]`
-/

namespace A073335.P6549778790700792898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281611 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073335.P6549778790700792898

/-! ## A073335.P11296894710970877352

`A281611(n+1)+∑[A138137(n+1)-A144121(n+1)]`
-/

namespace A073335.P11296894710970877352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - A144121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281611 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073335.P11296894710970877352

/-! ## A073335.P14800493164870528178

`A281611(n+1)+A006128(n+1)-A144119(n+1)`
-/

namespace A073335.P14800493164870528178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281611 (n + 1) + (A006128 (n + 1) - A144119 (n + 1))

end

end A073335.P14800493164870528178

/-! ## A073335.P10031265200083544076

`A281611(n+1)+A006128(n+1)-∑[A144121(n+1)]`
-/

namespace A073335.P10031265200083544076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281611 (n + 1) + (A006128 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073335.P10031265200083544076

/-! ## A073335.P2702238539700271294

`∑[A138137(n+1)]+A281611(n+1)-A144119(n+1)`
-/

namespace A073335.P2702238539700271294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A281611 (n + 1) - A144119 (n + 1))

end

end A073335.P2702238539700271294

/-! ## A073335.P7511545684091627678

`A281611(n+1)+(A138137(n+1)+A006128(n))%A144119(n+1)`
-/

namespace A073335.P7511545684091627678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281611 (n + 1) + Int.tmod (A138137 (n + 1) + A006128 n) (A144119 (n + 1))

end

end A073335.P7511545684091627678

/-! ## A073335.P9230837367379917527

`A281611(n+1)+A006128(n+1)%A144119((n+1)%A000070(n+1))`
-/

namespace A073335.P9230837367379917527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281611 (n + 1) + Int.tmod (A006128 (n + 1)) (A144119 (Int.tmod (n + 1 : ℤ) (A000070 (n + 1))).toNat)

end

end A073335.P9230837367379917527

/-!
# A073336: Total number of square parts in all partitions of n.

The programs for A073336, there is no canonical definition to state claims against.
-/

/-! ## A073336.P1305297657125190367

`∑{#}[n-1, A046951(#+1)*A000041(n-(#+1))]`
-/

namespace A073336.P1305297657125190367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A046951 (k + 1) * A000041 (n - (k + 1))

end

end A073336.P1305297657125190367

/-! ## A073336.P18161078782961101948

`A001055(A029744(2*n+3))-A073576(n)`
-/

namespace A073336.P18161078782961101948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A029744 (2 * n + 3)).toNat - A073576 n

end

end A073336.P18161078782961101948

/-! ## A073336.P5644418650860125819

`A000070(n)-A056556(A140498(n))`
-/

namespace A073336.P5644418650860125819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A056556 (A140498 n).toNat

end

end A073336.P5644418650860125819

/-! ## A073336.P16249186707234705642

`A052146(A297618(n+3))-A033075(n+1)`
-/

namespace A073336.P16249186707234705642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A297618 (n + 3)).toNat - A033075 (n + 1)

end

end A073336.P16249186707234705642

/-!
# A073337: Primes of the form 4*k^2 - 10*k + 7 with k positive.

The programs for A073337, there is no canonical definition to state claims against.
-/

/-! ## A073337.P14199872220163162568

`A054554(A073338(n+1))`
-/

namespace A073337.P14199872220163162568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (A073338 (n + 1)).toNat

end

end A073337.P14199872220163162568

/-! ## A073337.P11770450282459151189

`A002383(eq[1, A002384(n+1)%2]+1)`
-/

namespace A073337.P11770450282459151189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002384 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073337.P11770450282459151189

/-! ## A073337.P17886844754950577738

`A002383(eq[1, gcd(2, A002384(n+1))]+1)`
-/

namespace A073337.P17886844754950577738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A002384 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A073337.P17886844754950577738

/-! ## A073337.P4562254853221093769

`∩[A002383(n+1), A054554(n+1)]`
-/

namespace A073337.P4562254853221093769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073337.P4562254853221093769

/-! ## A073337.P2909554606916181696

`∩[A054554(n+1), A059055(n+1)]`
-/

namespace A073337.P2909554606916181696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073337.P2909554606916181696

/-! ## A073337.P643597804197801750

`∩[A054554(n+1), A172979(n+1)]`
-/

namespace A073337.P643597804197801750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073337.P643597804197801750

/-! ## A073337.P10382815902199744481

`∩[A054554(n+1), A173295(n+1)]`
-/

namespace A073337.P10382815902199744481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073337.P10382815902199744481

/-! ## A073337.P5641554732055623413

`∩[A054554(n+1), A206864(n+1)]`
-/

namespace A073337.P5641554732055623413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073337.P5641554732055623413

/-! ## A073337.P6504064448902348999

`∩[A054554(n+1), A206946(n+1)]`
-/

namespace A073337.P6504064448902348999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073337.P6504064448902348999

/-! ## A073337.P12612351411896173128

`∩[A054554(n+1), A262587(n+1)]`
-/

namespace A073337.P12612351411896173128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073337.P12612351411896173128

/-! ## A073337.P7331939520427396194

`∩[A054554(n+1), A346156(n+1)]`
-/

namespace A073337.P7331939520427396194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073337.P7331939520427396194

/-! ## A073337.P4371721069271665751

`record[A108154(2*(n+1))]`
-/

namespace A073337.P4371721069271665751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073337.P4371721069271665751

/-! ## A073337.P15127121633011787646

`A002061(A096174(n+1))`
-/

namespace A073337.P15127121633011787646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A096174 (n + 1)).toNat

end

end A073337.P15127121633011787646

/-! ## A073337.P4427382673704054966

`∩[A081353(n), A182047(n)]`
-/

namespace A073337.P4427382673704054966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081353 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073337.P4427382673704054966

/-! ## A073337.P9487770042053363434

`∩[A002383(n+1), A081353(n)]`
-/

namespace A073337.P9487770042053363434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073337.P9487770042053363434

/-! ## A073337.P394911181088566282

`∩[A059055(n+1), A081353(n)]`
-/

namespace A073337.P394911181088566282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073337.P394911181088566282

/-! ## A073337.P15747715377964269824

`∩[A054554(n+1), A182047(n)]`
-/

namespace A073337.P15747715377964269824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073337.P15747715377964269824

/-! ## A073337.P5991696938430569125

`∩[A173295(n+1), A081353(n)]`
-/

namespace A073337.P5991696938430569125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073337.P5991696938430569125

/-! ## A073337.P10029810069269949586

`∩[A206946(n+1), A081353(n)]`
-/

namespace A073337.P10029810069269949586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073337.P10029810069269949586

/-! ## A073337.P4057218743516060569

`A081256(A096174(Δ[n*n]-n))`
-/

namespace A073337.P4057218743516060569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A096174 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A073337.P4057218743516060569

/-! ## A073337.P15530791059321779110

`p?[∑[or(3, 2*n)]]`
-/

namespace A073337.P15530791059321779110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A073337.P15530791059321779110

/-!
# A073338: Positive values of n for which 4n^2-10n+7 is prime.

The programs for A073338, there is no canonical definition to state claims against.
-/

/-! ## A073338.P6001490107626737984

`A096174(n+1)/2+1`
-/

namespace A073338.P6001490107626737984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096174 (n + 1) : ℚ) / 2 + 1

end

end A073338.P6001490107626737984

/-! ## A073338.P6882706147365447814

`ceil(sqrt(A073337(n+1)))/2+1`
-/

namespace A073338.P6882706147365447814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (A073337 (n + 1) : ℝ)⌉ : ℚ) / 2 + 1

end

end A073338.P6882706147365447814

/-! ## A073338.P4660613171635896042

`A014682(A096174(n+1))+1`
-/

namespace A073338.P4660613171635896042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A096174 (n + 1)).toNat + 1

end

end A073338.P4660613171635896042

/-! ## A073338.P11664287968422034757

`A322982(A096174(n+1)+2)`
-/

namespace A073338.P11664287968422034757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (A096174 (n + 1) + 2).toNat

end

end A073338.P11664287968422034757

/-! ## A073338.P17156269121570153125

`eq[1, A289356(2*n+1)]+2`
-/

namespace A073338.P17156269121570153125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A073338.P17156269121570153125

/-! ## A073338.P3331818907449770296

`lt[1, A108154(2*(n+1))]+2`
-/

namespace A073338.P3331818907449770296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A073338.P3331818907449770296

/-! ## A073338.P2585136849549630290

`A008619(A096174(n+1))`
-/

namespace A073338.P2585136849549630290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A096174 (n + 1)).toNat

end

end A073338.P2585136849549630290

/-! ## A073338.P13391406923917532997

`record[A000027(n+2)/A289356(2*n+1)]`
-/

namespace A073338.P13391406923917532997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 2) : ℚ) / (A289356 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073338.P13391406923917532997

/-! ## A073338.P12970288310950783412

`lt[A051890(n+1), A081256(2*(n+1))]+2`
-/

namespace A073338.P12970288310950783412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A073338.P12970288310950783412

/-! ## A073338.P13895029721954168469

`eq[A108154(2*(n+1)), A182047(2*n+1)]+2`
-/

namespace A073338.P13895029721954168469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A073338.P13895029721954168469

/-! ## A073338.P16904836664176371457

`eq[2, A278251(2*n)]+1`
-/

namespace A073338.P16904836664176371457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073338.P16904836664176371457

/-! ## A073338.P9905428206827713082

`record[A000027(2*(n+1))/A278251(2*n)]`
-/

namespace A073338.P9905428206827713082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (2 * (n + 1)) : ℚ) / (A278251 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073338.P9905428206827713082

/-!
# A073340: Fibonacci prime pairs: the indices of each pair differ by two and the relevant Fibonacci numbers are both prime.

The programs for A073340, there is no canonical definition to state claims against.
-/

/-! ## A073340.P8484270719677802441

`p?[A106597(A308840(n))]`
-/

namespace A073340.P8484270719677802441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106597 (A308840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073340.P8484270719677802441

/-! ## A073340.P5286171580650797963

`p?[A079578(∑[A099612(n)])]`
-/

namespace A073340.P5286171580650797963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099612 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079578 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073340.P5286171580650797963

/-! ## A073340.P3768454617913760634

`p?[A284264(n)+A138475(n)]`
-/

namespace A073340.P3768454617913760634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284264 n + A138475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073340.P3768454617913760634

/-!
# A073341: Number of steps to reach an integer starting with (2n+1)/4 and iterating the map x -> x*ceiling(x).

The programs for A073341, there is no canonical definition to state claims against.
-/

/-! ## A073341.P16197431821860001312

`A074735(2*(n+1))`
-/

namespace A073341.P16197431821860001312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074735 (2 * (n + 1))

end

end A073341.P16197431821860001312

/-!
# A073342: Average digit (rounded to the nearest integer) in the decimal expansion of n-th prime.

The programs for A073342, the canonical program `A073342.P12215052563229227587` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073342 has offset 1).

The definition of A073342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073342.P12215052563229227587

`round(A007605(n+1)/A097944(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073342

/-- `round(A007605(n+1)/A097944(n+1))` -/
def P12215052563229227587.Spec : Prop :=
  ∀ n, P12215052563229227587.a n = A073342 (n + 1)

theorem P12215052563229227587.correct : P12215052563229227587.Spec := by
  intro n
  simp only [A073342, Nat.add_sub_cancel]

end A073342

/-! ## A073342.P1432606920172900351

`round(A007605(n+1)/Δ[A068670(n)])`
-/

namespace A073342.P1432606920172900351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007605 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A073342.P1432606920172900351

namespace A073342

/-- `round(A007605(n+1)/Δ[A068670(n)])` -/
def P1432606920172900351.Spec : Prop :=
  ∀ n, P1432606920172900351.a n = A073342 (n + 1)

end A073342

/-! ## A073342.P9847755312401632136

`round(Δ[A051351(n)]/A097944(n+1))`
-/

namespace A073342.P9847755312401632136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A097944 (n + 1) : ℚ))

end

end A073342.P9847755312401632136

namespace A073342

/-- `round(Δ[A051351(n)]/A097944(n+1))` -/
def P9847755312401632136.Spec : Prop :=
  ∀ n, P9847755312401632136.a n = A073342 (n + 1)

end A073342

/-! ## A073342.P13216265594636358173

`round(∑{digits}[A000040(n+1), #/A097944(n+1)])`
-/

namespace A073342.P13216265594636358173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℚ) / (A097944 (n + 1) : ℚ)).sum

end

end A073342.P13216265594636358173

namespace A073342

/-- `round(∑{digits}[A000040(n+1), #/A097944(n+1)])` -/
def P13216265594636358173.Spec : Prop :=
  ∀ n, P13216265594636358173.a n = A073342 (n + 1)

end A073342

/-! ## A073342.P714249914092965399

`round(∑{digits}[A004087(n+1), #/A097944(n+1)])`
-/

namespace A073342.P714249914092965399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℚ) / (A097944 (n + 1) : ℚ)).sum

end

end A073342.P714249914092965399

namespace A073342

/-- `round(∑{digits}[A004087(n+1), #/A097944(n+1)])` -/
def P714249914092965399.Spec : Prop :=
  ∀ n, P714249914092965399.a n = A073342 (n + 1)

end A073342

/-! ## A073342.P2164767664421457153

`round(∑{digits}[A142342(n+1), #/A097944(n+1)])`
-/

namespace A073342.P2164767664421457153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℚ) / (A097944 (n + 1) : ℚ)).sum

end

end A073342.P2164767664421457153

namespace A073342

/-- `round(∑{digits}[A142342(n+1), #/A097944(n+1)])` -/
def P2164767664421457153.Spec : Prop :=
  ∀ n, P2164767664421457153.a n = A073342 (n + 1)

end A073342

/-! ## A073342.P6474138213895175279

`round((A000040(n+1)-A068395(n+1))/A097944(n+1))`
-/

namespace A073342.P6474138213895175279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 1) - A068395 (n + 1) : ℚ) / (A097944 (n + 1) : ℚ))

end

end A073342.P6474138213895175279

namespace A073342

/-- `round((A000040(n+1)-A068395(n+1))/A097944(n+1))` -/
def P6474138213895175279.Spec : Prop :=
  ∀ n, P6474138213895175279.a n = A073342 (n + 1)

theorem P6474138213895175279.correct : P6474138213895175279.Spec := by
  intro n
  simp only [A073342, Nat.add_sub_cancel, A073342.P6474138213895175279.a, A073342.P12215052563229227587.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007605, A007605.P14521423581831153617.a, A068395, A068395.P13008118586817300563.a, A097944, A097944.P13040113314910335954.a, A007953, A007953.P3472751987379697826.a, A055642, A055642.P2478179801723442865.a, A054899, A054899.P10770181254942084517.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073342

/-! ## A073342.P17158597263434459411

`round((A065073(n+1)-A100484(n+1)/2)/A097944(n+1))`
-/

namespace A073342.P17158597263434459411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A065073 (n + 1) : ℚ) - (A100484 (n + 1) : ℚ) / 2) / (A097944 (n + 1) : ℚ))

end

end A073342.P17158597263434459411

namespace A073342

/-- `round((A065073(n+1)-A100484(n+1)/2)/A097944(n+1))` -/
def P17158597263434459411.Spec : Prop :=
  ∀ n, P17158597263434459411.a n = A073342 (n + 1)

end A073342

/-! ## A073342.P6569073160378293128

`A257295(A000040(n+1))`
-/

namespace A073342.P6569073160378293128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 (A000040 (n + 1)).toNat

end

end A073342.P6569073160378293128

namespace A073342

/-- `A257295(A000040(n+1))` -/
def P6569073160378293128.Spec : Prop :=
  ∀ n, P6569073160378293128.a n = A073342 (n + 1)

end A073342

/-! ## A073342.P7536363137100173082

`A257295(A004087(n+1))`
-/

namespace A073342.P7536363137100173082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 (A004087 (n + 1)).toNat

end

end A073342.P7536363137100173082

namespace A073342

/-- `A257295(A004087(n+1))` -/
def P7536363137100173082.Spec : Prop :=
  ∀ n, P7536363137100173082.a n = A073342 (n + 1)

end A073342

/-! ## A073342.P12456348401675263192

`A257295(A028906(n+1))`
-/

namespace A073342.P12456348401675263192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 (A028906 (n + 1)).toNat

end

end A073342.P12456348401675263192

namespace A073342

/-- `A257295(A028906(n+1))` -/
def P12456348401675263192.Spec : Prop :=
  ∀ n, P12456348401675263192.a n = A073342 (n + 1)

end A073342

/-! ## A073342.P3283597668299059204

`A257295(A008578(n+2))`
-/

namespace A073342.P3283597668299059204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 (A008578 (n + 2)).toNat

end

end A073342.P3283597668299059204

namespace A073342

/-- `A257295(A008578(n+2))` -/
def P3283597668299059204.Spec : Prop :=
  ∀ n, P3283597668299059204.a n = A073342 (n + 1)

end A073342

/-! ## A073342.P156178757411098144

`A257295(A182986(n+2))`
-/

namespace A073342.P156178757411098144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 (A182986 (n + 2)).toNat

end

end A073342.P156178757411098144

namespace A073342

/-- `A257295(A182986(n+2))` -/
def P156178757411098144.Spec : Prop :=
  ∀ n, P156178757411098144.a n = A073342 (n + 1)

end A073342

/-! ## A073342.P14803387264210235321

`round(A007605(n+1)/A004218(A000040(n+1)))`
-/

namespace A073342.P14803387264210235321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007605 (n + 1) : ℚ) / (A004218 (A000040 (n + 1)).toNat : ℚ))

end

end A073342.P14803387264210235321

namespace A073342

/-- `round(A007605(n+1)/A004218(A000040(n+1)))` -/
def P14803387264210235321.Spec : Prop :=
  ∀ n, P14803387264210235321.a n = A073342 (n + 1)

end A073342

/-! ## A073342.P66117893184490973

`A257295(A101989(n+1))`
-/

namespace A073342.P66117893184490973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 (A101989 (n + 1)).toNat

end

end A073342.P66117893184490973

namespace A073342

/-- `A257295(A101989(n+1))` -/
def P66117893184490973.Spec : Prop :=
  ∀ n, P66117893184490973.a n = A073342 (n + 1)

end A073342

/-!
# A073344: Number of permutations p of (1,2,3,...,n) such that Sum_{k=1..n} (p(k) mod k) = n.

The programs for A073344, there is no canonical definition to state claims against.
-/

/-! ## A073344.P14033806498034424949

`A339695(n^n)-1`
-/

namespace A073344.P14033806498034424949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339695 (n ^ n) - 1

end

end A073344.P14033806498034424949

/-! ## A073344.P9504417110625590692

`A191840(A045891(n))`
-/

namespace A073344.P9504417110625590692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191840 (A045891 n).toNat

end

end A073344.P9504417110625590692

/-!
# A073345: Table T(n,k), read by ascending antidiagonals, giving the number of rooted plane binary trees of size n and height k.

The programs for A073345, there is no canonical definition to state claims against.
-/

/-! ## A073345.P7941458310249560841

`C(A092533(A194066(3*n+1)), A274329(n+1))`
-/

namespace A073345.P7941458310249560841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A092533 (A194066 (3 * n + 1)).toNat).toNat (A274329 (n + 1)).toNat

end

end A073345.P7941458310249560841

/-! ## A073345.P544582428155599737

`C(A256012(n), A256156(A338062(n+1)))`
-/

namespace A073345.P544582428155599737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A256012 n).toNat (A256156 (A338062 (n + 1)).toNat).toNat

end

end A073345.P544582428155599737

/-! ## A073345.P14826311326773517251

`A003056(C(A229892(n), A002350(2*n+1)))`
-/

namespace A073345.P14826311326773517251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A229892 n).toNat (A002350 (2 * n + 1)).toNat)

end

end A073345.P14826311326773517251

/-! ## A073345.P12116602234642476865

`A122204(C(A229892(n), A002350(2*n+1)))`
-/

namespace A073345.P12116602234642476865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 (Nat.choose (A229892 n).toNat (A002350 (2 * n + 1)).toNat)

end

end A073345.P12116602234642476865

/-! ## A073345.P11929399949580351287

`and(A060701(n), A090894(A144299(n)))`
-/

namespace A073345.P11929399949580351287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060701 n) (A090894 (A144299 n).toNat)

end

end A073345.P11929399949580351287

/-!
# A073346: Table T(n,k) (listed antidiagonalwise in order T(0,0), T(1,0), T(0,1), T(2,0), T(1,1), ...) giving the number of rooted plane binary trees of size n and "contracted height" k.

The programs for A073346, there is no canonical definition to state claims against.
-/

/-! ## A073346.P7911555542409733151

`2^(n-C(∑[char[∑[n]]], 2))*A074079(n)`
-/

namespace A073346.P7911555542409733151
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A074079 n : ℚ)

end

end A073346.P7911555542409733151

/-! ## A073346.P17660681851124989727

`A004070(n)*A074079(n)`
-/

namespace A073346.P17660681851124989727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 n * A074079 n

end

end A073346.P17660681851124989727

/-! ## A073346.P6146994621865789907

`A059268(n)*A074079(n)`
-/

namespace A073346.P6146994621865789907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A074079 n

end

end A073346.P6146994621865789907

/-! ## A073346.P16981385170299292194

`A074079(n)*A144464(n)`
-/

namespace A073346.P16981385170299292194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074079 n * A144464 n

end

end A073346.P16981385170299292194

/-! ## A073346.P5216442435891411158

`A074079(n)*A145111(n)`
-/

namespace A073346.P5216442435891411158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074079 n * A145111 n

end

end A073346.P5216442435891411158

/-! ## A073346.P5649998344755062023

`A074079(n)*A216274(n)`
-/

namespace A073346.P5649998344755062023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074079 n * A216274 n

end

end A073346.P5649998344755062023

/-! ## A073346.P10961441165511872278

`A048887(n+1)*A074079(n)`
-/

namespace A073346.P10961441165511872278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (n + 1) * A074079 n

end

end A073346.P10961441165511872278

/-! ## A073346.P12206572482786775314

`A059250(n+1)*A074079(n)`
-/

namespace A073346.P12206572482786775314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059250 (n + 1) * A074079 n

end

end A073346.P12206572482786775314

/-! ## A073346.P11326791049639677984

`A074079(n)*A368175(n+1)`
-/

namespace A073346.P11326791049639677984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074079 n * A368175 (n + 1)

end

end A073346.P11326791049639677984

/-! ## A073346.P7363687461145983403

`Δ[A099627(n)]*A074079(n)`
-/

namespace A073346.P7363687461145983403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A074079 n

end

end A073346.P7363687461145983403

/-! ## A073346.P16494260932951730484

`Δ[A173786(n)]*A074079(n)`
-/

namespace A073346.P16494260932951730484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A074079 n

end

end A073346.P16494260932951730484

/-! ## A073346.P17584457475799272741

`A074079(n)*A209435(n)`
-/

namespace A073346.P17584457475799272741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074079 n * A209435 n

end

end A073346.P17584457475799272741

/-! ## A073346.P4805905963264110808

`A074079(n)*A171840(n+1)`
-/

namespace A073346.P4805905963264110808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074079 n * A171840 (n + 1)

end

end A073346.P4805905963264110808

/-! ## A073346.P16590216009796860646

`A074079(n)*A233308(n)`
-/

namespace A073346.P16590216009796860646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074079 n * A233308 n

end

end A073346.P16590216009796860646

/-!
# A073347: a(1)=1; a(n+1) is the smallest integer > a(n) such that Sum_{k=a(n)..a(n+1)} 1/sqrt(k) > Pi.

The programs for A073347, there is no canonical definition to state claims against.
-/

/-! ## A073347.P2293002780206617056

`A194975(A000217(n+1))+A001105(n)`
-/

namespace A073347.P2293002780206617056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194975 (A000217 (n + 1)).toNat + A001105 n

end

end A073347.P2293002780206617056

/-! ## A073347.P14673788176900131823

`∑[floor(log2(A301971(3*n+2)))]`
-/

namespace A073347.P14673788176900131823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A301971 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073347.P14673788176900131823

/-! ## A073347.P3302081375593464702

`∑[abs(A001221(A005425(n)+2)-5*n)]`
-/

namespace A073347.P3302081375593464702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001221 (A005425 n + 2).toNat - (5 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073347.P3302081375593464702

/-! ## A073347.P14720078289171671258

`A070939(A114324(3*n+4))+A005476(n)`
-/

namespace A073347.P14720078289171671258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A114324 (3 * n + 4)).toNat + A005476 n

end

end A073347.P14720078289171671258

/-! ## A073347.P10800955339647046542

`∑[A313057(n)%A056654(n+5)]`
-/

namespace A073347.P10800955339647046542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A313057 n) (A056654 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073347.P10800955339647046542

/-!
# A073348: Least k such that sigma(k)/k >= sigma(n)/n.

The programs for A073348, there is no canonical definition to state claims against.
-/

/-! ## A073348.P6719481406260025691

`A001222(lcm(A023194(n+1), A173675(n+1)))`
-/

namespace A073348.P6719481406260025691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A023194 (n + 1)) (A173675 (n + 1)))

end

end A073348.P6719481406260025691

/-! ## A073348.P16407324007793584106

`A284476(A320111(A083434(n+1)²))`
-/

namespace A073348.P16407324007793584106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284476 (A320111 (A083434 (n + 1) ^ 2).toNat).toNat

end

end A073348.P16407324007793584106

/-! ## A073348.P14936874900722423526

`A164328(n+1)%A018216(n+1)+1`
-/

namespace A073348.P14936874900722423526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164328 (n + 1)) (A018216 (n + 1)) + 1

end

end A073348.P14936874900722423526

/-! ## A073348.P2748825857397017010

`A280398(A000120(3*n+4))+A091050(A023194(n+1))`
-/

namespace A073348.P2748825857397017010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A000120 (3 * n + 4)).toNat + A091050 (A023194 (n + 1)).toNat

end

end A073348.P2748825857397017010

/-! ## A073348.P16154014365414620506

`A000010(A335454(∑{d}[n+1, 2^(#-1)]))`
-/

namespace A073348.P16154014365414620506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A335454 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ))).toNat).toNat

end

end A073348.P16154014365414620506

/-!
# A073349: Numbers m such that sigma(m)/m is equal to sigma(k)/k for some k being superabundant (A004394).

The programs for A073349, there is no canonical definition to state claims against.
-/

/-! ## A073349.P6564479905013237983

`A138270(A018004(n))+A097212(n+1)`
-/

namespace A073349.P6564479905013237983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138270 (A018004 n).toNat + A097212 (n + 1)

end

end A073349.P6564479905013237983

/-! ## A073349.P4224912848123472286

`∩[A138398(n+1), A140494(n+1)]`
-/

namespace A073349.P4224912848123472286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073349.P4224912848123472286

/-! ## A073349.P5184878958230189224

`∩[A138398(n+1), A324842(n+1)]`
-/

namespace A073349.P5184878958230189224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073349.P5184878958230189224

/-!
# A073350: Primes not at the center of a 3 X 3 magic square of primes.

The programs for A073350, there is no canonical definition to state claims against.
-/

/-! ## A073350.P1853072066055288645

`A000040(lt[A015161(n), A028825(n+1)])`
-/

namespace A073350.P1853072066055288645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073350.P1853072066055288645

/-! ## A073350.P10312085855955734241

`eq[A032741(n), A103306(A103306(3*n+2))]`
-/

namespace A073350.P10312085855955734241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103306 (A103306 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073350.P10312085855955734241

/-! ## A073350.P1555747291933131953

`A049551(lt[A058071(2*(n+1)), A366537(n+1)])`
-/

namespace A073350.P1555747291933131953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073350.P1555747291933131953

/-! ## A073350.P8319340957648549115

`eq[A003415(n), A262681(A045540(n+1))]`
-/

namespace A073350.P8319340957648549115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 (A045540 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073350.P8319340957648549115

/-! ## A073350.P2151220734315715829

`eq[A003415(n), A194285(A120202(n+1))]`
-/

namespace A073350.P2151220734315715829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A120202 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073350.P2151220734315715829

/-!
# A073351: a(n) = n^2*(n + 1)*(2*n + 1)^2*(7*n + 1)/36.

The programs for A073351, the canonical program `A073351.P7414037357777152730` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073351 has offset 0).

The definition of A073351 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A073351.anchor (n : ℕ) : (A073351 n : ℚ) = (n ^ 2 * (n + 1) * (2 * n + 1) ^ 2 * (7 * n + 1) : ℚ) / 36` in `Proof.A073.A073351`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073351.P14039515943614648496

`ogf((4x+97x^2+287x^3+159x^4+13x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A073351.P14039515943614648496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 97, 287, 159, 13] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A073351.P14039515943614648496

namespace A073351

/-- `ogf((4x+97x^2+287x^3+159x^4+13x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P14039515943614648496.Spec : Prop :=
  ∀ n, P14039515943614648496.a n = A073351 n

end A073351

/-! ## A073351.P7414037357777152730

`n²*(n+1)*(2*n+1)²*(7*n+1)/36`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073351

/-- `n²*(n+1)*(2*n+1)²*(7*n+1)/36` -/
def P7414037357777152730.Spec : Prop :=
  ∀ n, P7414037357777152730.a n = (A073351 n : ℚ)

end A073351

/-! ## A073351.P5236180616055708026

`(A258582(n)-A000330(n))*A000330(n)`
-/

namespace A073351.P5236180616055708026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A258582 n - A000330 n) * A000330 n

end

end A073351.P5236180616055708026

namespace A073351

/-- `(A258582(n)-A000330(n))*A000330(n)` -/
def P5236180616055708026.Spec : Prop :=
  ∀ n, P5236180616055708026.a n = A073351 n

end A073351

/-!
# A073352: Positive integers making n^2*(n-1)*(2*n-1)^2*(7*n-1)/36 a square.

The programs for A073352, the canonical program `A073352.P2433914032029836801` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073352 has offset 0).

The definition of A073352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073352.P890561380197992199

`ogf((1-13x+4x^2)/(1-17x+17x^2-x^3))`
-/

namespace A073352.P890561380197992199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -13, 4] [1, -17, 17, -1] n

end

end A073352.P890561380197992199

namespace A073352

/-- `ogf((1-13x+4x^2)/(1-17x+17x^2-x^3))` -/
def P890561380197992199.Spec : Prop :=
  ∀ n, P890561380197992199.a n = A073352 n

end A073352

/-! ## A073352.P2433914032029836801

`16*a(n-1)-a(n-2)-8` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073352

/-- `16*a(n-1)-a(n-2)-8` -/
def P2433914032029836801.Spec : Prop :=
  ∀ n, P2433914032029836801.a n = A073352 n

theorem P2433914032029836801.correct : P2433914032029836801.Spec := by
  intro n
  simp only [A073352]

end A073352

/-! ## A073352.P3027640034592581321

`a(n-1)/(1/4)²-a(n-2)-8` with `a(0)=1, a(1)=4`
-/

namespace A073352.P3027640034592581321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2 - a (n - 2) - 8

end

end A073352.P3027640034592581321

namespace A073352

/-- `a(n-1)/(1/4)²-a(n-2)-8` -/
def P3027640034592581321.Spec : Prop :=
  ∀ n, P3027640034592581321.a n = (A073352 n : ℚ)

end A073352

/-! ## A073352.P17354828034633530151

`4/7+3/14*((8-3*sqrt(7))^n+(8+3*sqrt(7))^n)`
-/

namespace A073352.P17354828034633530151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 : ℚ) / 7 : ℝ) + ((3 : ℚ) / 14 : ℝ) * ((8 - 3 * Real.sqrt (7 : ℝ)) ^ n + (8 + 3 * Real.sqrt (7 : ℝ)) ^ n)

end

end A073352.P17354828034633530151

namespace A073352

/-- `4/7+3/14*((8-3*sqrt(7))^n+(8+3*sqrt(7))^n)` -/
def P17354828034633530151.Spec : Prop :=
  ∀ n, P17354828034633530151.a n = (A073352 n : ℝ)

theorem P17354828034633530151.correct : P17354828034633530151.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A073352, Nat.add_sub_cancel, A073352.P17354828034633530151.a, A073352.P2433914032029836801.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A073352, Nat.add_sub_cancel, A073352.P17354828034633530151.a, A073352.P2433914032029836801.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A073352

/-! ## A073352.P17926523829568630307

`A276123(Δ[n²])`
-/

namespace A073352.P17926523829568630307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276123 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A073352.P17926523829568630307

namespace A073352

/-- `A276123(Δ[n²])` -/
def P17926523829568630307.Spec : Prop :=
  ∀ n, P17926523829568630307.a n = A073352 n

end A073352

/-! ## A073352.P17462932420444084232

`record[A276123(A026741(n))]`
-/

namespace A073352.P17462932420444084232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276123 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073352.P17462932420444084232

namespace A073352

/-- `record[A276123(A026741(n))]` -/
def P17462932420444084232.Spec : Prop :=
  ∀ n, P17462932420444084232.a n = A073352 n

end A073352

/-! ## A073352.P7176402031545980124

`record[A276123(A093178(n))]`
-/

namespace A073352.P7176402031545980124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276123 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073352.P7176402031545980124

namespace A073352

/-- `record[A276123(A093178(n))]` -/
def P7176402031545980124.Spec : Prop :=
  ∀ n, P7176402031545980124.a n = A073352 n

end A073352

/-! ## A073352.P14811422164119953962

`record[A276123(A099375(n))]`
-/

namespace A073352.P14811422164119953962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276123 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073352.P14811422164119953962

namespace A073352

/-- `record[A276123(A099375(n))]` -/
def P14811422164119953962.Spec : Prop :=
  ∀ n, P14811422164119953962.a n = A073352 n

end A073352

/-! ## A073352.P1147594975190533806

`record[A276123(A237420(n)+1)]`
-/

namespace A073352.P1147594975190533806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276123 (A237420 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073352.P1147594975190533806

namespace A073352

/-- `record[A276123(A237420(n)+1)]` -/
def P1147594975190533806.Spec : Prop :=
  ∀ n, P1147594975190533806.a n = A073352 n

end A073352

/-! ## A073352.P2484049941711202133

`record[A276123(A033999(n)+n)]`
-/

namespace A073352.P2484049941711202133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276123 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073352.P2484049941711202133

namespace A073352

/-- `record[A276123(A033999(n)+n)]` -/
def P2484049941711202133.Spec : Prop :=
  ∀ n, P2484049941711202133.a n = A073352 n

end A073352

/-!
# A073353: Sum of n and its squarefree kernel.

The programs for A073353, the canonical program `A073353.P4516188460080726977` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073353 has offset 1).

The definition of A073353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073353.P4516188460080726977

`n+1+A007947(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A073353

/-- `n+1+A007947(n+1)` -/
def P4516188460080726977.Spec : Prop :=
  ∀ n, P4516188460080726977.a n = A073353 (n + 1)

theorem P4516188460080726977.correct : P4516188460080726977.Spec := by
  intro n
  simp only [A073353, Nat.add_sub_cancel]

end A073353

/-! ## A073353.P4007698527254889057

`∏{p}[n+1, #]+1+n`
-/

namespace A073353.P4007698527254889057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p + 1 + n

end

end A073353.P4007698527254889057

namespace A073353

/-- `∏{p}[n+1, #]+1+n` -/
def P4007698527254889057.Spec : Prop :=
  ∀ n, (P4007698527254889057.a n : ℤ) = A073353 (n + 1)

theorem P4007698527254889057.correct : P4007698527254889057.Spec := by
  intro n
  simp only [A073353, Nat.add_sub_cancel, A073353.P4007698527254889057.f1, A073353.P4007698527254889057.a, A073353.P4516188460080726977.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073353

/-! ## A073353.P15837054907875375572

`2^∑{p}[n+1, log2(#)]+n+1`
-/

namespace A073353.P15837054907875375572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)) + (n + 1 : ℝ)

end

end A073353.P15837054907875375572

namespace A073353

/-- `2^∑{p}[n+1, log2(#)]+n+1` -/
def P15837054907875375572.Spec : Prop :=
  ∀ n, P15837054907875375572.a n = (A073353 (n + 1) : ℝ)

end A073353

/-! ## A073353.P7100423236341068453

`A076618(n+1)+n`
-/

namespace A073353.P7100423236341068453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1) + (n : ℤ)

end

end A073353.P7100423236341068453

namespace A073353

/-- `A076618(n+1)+n` -/
def P7100423236341068453.Spec : Prop :=
  ∀ n, P7100423236341068453.a n = A073353 (n + 1)

theorem P7100423236341068453.correct : P7100423236341068453.Spec := by
  intro n
  simp only [A073353, Nat.add_sub_cancel, A073353.P7100423236341068453.a, A073353.P4516188460080726977.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A076618, A076618.P8099091245670450071.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073353

/-! ## A073353.P10050072258908496544

`A075423(n+1)+2+n`
-/

namespace A073353.P10050072258908496544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075423 (n + 1) + 2 + (n : ℤ)

end

end A073353.P10050072258908496544

namespace A073353

/-- `A075423(n+1)+2+n` -/
def P10050072258908496544.Spec : Prop :=
  ∀ n, P10050072258908496544.a n = A073353 (n + 1)

theorem P10050072258908496544.correct : P10050072258908496544.Spec := by
  intro n
  simp only [A073353, Nat.add_sub_cancel, A073353.P10050072258908496544.a, A073353.P4516188460080726977.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A075423, A075423.P4628253282240293727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073353

/-! ## A073353.P2393780056184233864

`abs(A062953(n+1))+1+n`
-/

namespace A073353.P2393780056184233864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062953 (n + 1)| + 1 + (n : ℤ)

end

end A073353.P2393780056184233864

namespace A073353

/-- `abs(A062953(n+1))+1+n` -/
def P2393780056184233864.Spec : Prop :=
  ∀ n, P2393780056184233864.a n = A073353 (n + 1)

end A073353

/-! ## A073353.P990967372949379371

`sqrt(A078615(n+1))+1+n`
-/

namespace A073353.P990967372949379371
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078615 (n + 1) : ℝ) + 1 + (n : ℝ)

end

end A073353.P990967372949379371

namespace A073353

/-- `sqrt(A078615(n+1))+1+n` -/
def P990967372949379371.Spec : Prop :=
  ∀ n, P990967372949379371.a n = (A073353 (n + 1) : ℝ)

end A073353

/-! ## A073353.P7175010521322693863

`2*(n+1)-A066503(n+1)`
-/

namespace A073353.P7175010521322693863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A066503 (n + 1)

end

end A073353.P7175010521322693863

namespace A073353

/-- `2*(n+1)-A066503(n+1)` -/
def P7175010521322693863.Spec : Prop :=
  ∀ n, P7175010521322693863.a n = A073353 (n + 1)

theorem P7175010521322693863.correct : P7175010521322693863.Spec := by
  intro n
  simp only [A073353, Nat.add_sub_cancel, A073353.P7175010521322693863.a, A073353.P4516188460080726977.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A066503, A066503.P17588364347287804265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073353

/-! ## A073353.P118642777848055373

`∏{d}[n+1, A089026(#)]+1+n`
-/

namespace A073353.P118642777848055373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A089026 d + 1 + (n : ℤ)

end

end A073353.P118642777848055373

namespace A073353

/-- `∏{d}[n+1, A089026(#)]+1+n` -/
def P118642777848055373.Spec : Prop :=
  ∀ n, P118642777848055373.a n = A073353 (n + 1)

end A073353

/-! ## A073353.P1402731010620502453

`floor(n/A003557(n+1))+2+n`
-/

namespace A073353.P1402731010620502453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A003557 (n + 1) : ℚ)⌋ + 2 + (n : ℤ)

end

end A073353.P1402731010620502453

namespace A073353

/-- `floor(n/A003557(n+1))+2+n` -/
def P1402731010620502453.Spec : Prop :=
  ∀ n, P1402731010620502453.a n = A073353 (n + 1)

end A073353

/-! ## A073353.P11558716535318638350

`A064549(n+1)/(n+1)+n+1`
-/

namespace A073353.P11558716535318638350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A073353.P11558716535318638350

namespace A073353

/-- `A064549(n+1)/(n+1)+n+1` -/
def P11558716535318638350.Spec : Prop :=
  ∀ n, P11558716535318638350.a n = (A073353 (n + 1) : ℚ)

theorem P11558716535318638350.correct : P11558716535318638350.Spec := by
  intro n
  simp only [A073353, Nat.add_sub_cancel, A073353.P11558716535318638350.a, A073353.P4516188460080726977.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064549, A064549.P18019400484953624932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073353

/-! ## A073353.P15822894625469602262

`A039696(A007947(n+1))+n`
-/

namespace A073353.P15822894625469602262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039696 (A007947 (n + 1)).toNat + (n : ℤ)

end

end A073353.P15822894625469602262

namespace A073353

/-- `A039696(A007947(n+1))+n` -/
def P15822894625469602262.Spec : Prop :=
  ∀ n, P15822894625469602262.a n = A073353 (n + 1)

end A073353

/-! ## A073353.P2130539371220843235

`A019554(A007948(n+1))+1+n`
-/

namespace A073353.P2130539371220843235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A007948 (n + 1)).toNat + 1 + (n : ℤ)

end

end A073353.P2130539371220843235

namespace A073353

/-- `A019554(A007948(n+1))+1+n` -/
def P2130539371220843235.Spec : Prop :=
  ∀ n, P2130539371220843235.a n = A073353 (n + 1)

end A073353

/-! ## A073353.P17553299376225926221

`A015052(A015052(n+1))+n+1`
-/

namespace A073353.P17553299376225926221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 1)).toNat + (n + 1 : ℤ)

end

end A073353.P17553299376225926221

namespace A073353

/-- `A015052(A015052(n+1))+n+1` -/
def P17553299376225926221.Spec : Prop :=
  ∀ n, P17553299376225926221.a n = A073353 (n + 1)

end A073353

/-! ## A073353.P13391140869881289837

`A015053(A019555(n+1))+n+1`
-/

namespace A073353.P13391140869881289837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A019555 (n + 1)).toNat + (n + 1 : ℤ)

end

end A073353.P13391140869881289837

namespace A073353

/-- `A015053(A019555(n+1))+n+1` -/
def P13391140869881289837.Spec : Prop :=
  ∀ n, P13391140869881289837.a n = A073353 (n + 1)

end A073353

/-! ## A073353.P14170533488501791770

`A076332(n+1)+A010848(n+1)`
-/

namespace A073353.P14170533488501791770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076332 (n + 1) + A010848 (n + 1)

end

end A073353.P14170533488501791770

namespace A073353

/-- `A076332(n+1)+A010848(n+1)` -/
def P14170533488501791770.Spec : Prop :=
  ∀ n, P14170533488501791770.a n = A073353 (n + 1)

theorem P14170533488501791770.correct : P14170533488501791770.Spec := by
  intro n
  simp only [A073353, Nat.add_sub_cancel, A073353.P14170533488501791770.a, A073353.P4516188460080726977.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A010848, A010848.P2527659660694357650.a, A076332, A076332.P10547228136457690679.a, A003557, A003557.P6364735403900941810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073353

/-! ## A073353.P10340180346395903125

`A053166(A053166(n+1))+1+n`
-/

namespace A073353.P10340180346395903125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A053166 (n + 1)).toNat + 1 + (n : ℤ)

end

end A073353.P10340180346395903125

namespace A073353

/-- `A053166(A053166(n+1))+1+n` -/
def P10340180346395903125.Spec : Prop :=
  ∀ n, P10340180346395903125.a n = A073353 (n + 1)

end A073353

/-! ## A073353.P11000932279571492025

`Δ[∑[∏{p}[n, #]]+∑[n]]`
-/

namespace A073353.P11000932279571492025
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A073353.P11000932279571492025

namespace A073353

/-- `Δ[∑[∏{p}[n, #]]+∑[n]]` -/
def P11000932279571492025.Spec : Prop :=
  ∀ n, P11000932279571492025.a n = A073353 (n + 1)

end A073353

/-! ## A073353.P14226345714904116763

`A103889(A007947(n+1)+n)`
-/

namespace A073353.P14226345714904116763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A007947 (n + 1) + (n : ℤ)).toNat

end

end A073353.P14226345714904116763

namespace A073353

/-- `A103889(A007947(n+1)+n)` -/
def P14226345714904116763.Spec : Prop :=
  ∀ n, P14226345714904116763.a n = A073353 (n + 1)

end A073353

/-! ## A073353.P310708656480269407

`A336643((n+1)²)+n+1`
-/

namespace A073353.P310708656480269407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A073353.P310708656480269407

namespace A073353

/-- `A336643((n+1)²)+n+1` -/
def P310708656480269407.Spec : Prop :=
  ∀ n, P310708656480269407.a n = A073353 (n + 1)

end A073353

/-!
# A073354: Binomial coefficient ( n, squarefree kernel(n) ).

The programs for A073354, the canonical program `A073354.P15295054596295826967` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073354 has offset 1).

The definition of A073354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073354.P15295054596295826967

`C(n+1, A007947(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A073354

/-- `C(n+1, A007947(n+1))` -/
def P15295054596295826967.Spec : Prop :=
  ∀ n, (P15295054596295826967.a n : ℤ) = A073354 (n + 1)

theorem P15295054596295826967.correct : P15295054596295826967.Spec := by
  intro n
  simp only [A073354, Nat.add_sub_cancel]

end A073354

/-! ## A073354.P1800149170142262375

`C(n+1, ∏{p}[n+1, #])`
-/

namespace A073354.P1800149170142262375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A073354.P1800149170142262375

namespace A073354

/-- `C(n+1, ∏{p}[n+1, #])` -/
def P1800149170142262375.Spec : Prop :=
  ∀ n, (P1800149170142262375.a n : ℤ) = A073354 (n + 1)

end A073354

/-! ## A073354.P16527325436364011522

`C(n+1, A066503(n+1))`
-/

namespace A073354.P16527325436364011522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A066503 (n + 1)).toNat

end

end A073354.P16527325436364011522

namespace A073354

/-- `C(n+1, A066503(n+1))` -/
def P16527325436364011522.Spec : Prop :=
  ∀ n, (P16527325436364011522.a n : ℤ) = A073354 (n + 1)

end A073354

/-! ## A073354.P3641861957958163264

`C(n+1, A015052(A015052(n+1)))`
-/

namespace A073354.P3641861957958163264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A015052 (A015052 (n + 1)).toNat).toNat

end

end A073354.P3641861957958163264

namespace A073354

/-- `C(n+1, A015052(A015052(n+1)))` -/
def P3641861957958163264.Spec : Prop :=
  ∀ n, (P3641861957958163264.a n : ℤ) = A073354 (n + 1)

end A073354

/-! ## A073354.P7906228872664771084

`C(n+1, A015053(A015053(n+1)))`
-/

namespace A073354.P7906228872664771084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A015053 (A015053 (n + 1)).toNat).toNat

end

end A073354.P7906228872664771084

namespace A073354

/-- `C(n+1, A015053(A015053(n+1)))` -/
def P7906228872664771084.Spec : Prop :=
  ∀ n, (P7906228872664771084.a n : ℤ) = A073354 (n + 1)

end A073354

/-! ## A073354.P2825187251008060768

`C(n+1, A019555(A019555(n+1)))`
-/

namespace A073354.P2825187251008060768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A019555 (A019555 (n + 1)).toNat).toNat

end

end A073354.P2825187251008060768

namespace A073354

/-- `C(n+1, A019555(A019555(n+1)))` -/
def P2825187251008060768.Spec : Prop :=
  ∀ n, (P2825187251008060768.a n : ℤ) = A073354 (n + 1)

end A073354

/-! ## A073354.P675677609262421205

`C(n+1, A053166(A053166(n+1)))`
-/

namespace A073354.P675677609262421205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A053166 (A053166 (n + 1)).toNat).toNat

end

end A073354.P675677609262421205

namespace A073354

/-- `C(n+1, A053166(A053166(n+1)))` -/
def P675677609262421205.Spec : Prop :=
  ∀ n, (P675677609262421205.a n : ℤ) = A073354 (n + 1)

end A073354

/-! ## A073354.P18275956398947403699

`A007318(∏{p}[n+1, #]+∑[n+1])`
-/

namespace A073354.P18275956398947403699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∏ p ∈ Nat.primeFactors (f1 n), p + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A073354.P18275956398947403699

namespace A073354

/-- `A007318(∏{p}[n+1, #]+∑[n+1])` -/
def P18275956398947403699.Spec : Prop :=
  ∀ n, P18275956398947403699.a n = A073354 (n + 1)

end A073354

/-!
# A073355: Sum of squarefree kernels of numbers <= n.

The programs for A073355, the canonical program `A073355.P3727941104908322634` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073355 has offset 1).

The definition of A073355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073355.P3727941104908322634

`∑{#}[n, A000010(#+1)*A008683(#+1)²*floor((n+1)/(#+1))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073355

/-- `∑{#}[n, A000010(#+1)*A008683(#+1)²*floor((n+1)/(#+1))]` -/
def P3727941104908322634.Spec : Prop :=
  ∀ n, P3727941104908322634.a n = A073355 (n + 1)

theorem P3727941104908322634.correct : P3727941104908322634.Spec := by
  intro n
  simp only [A073355, Nat.add_sub_cancel]

end A073355

/-! ## A073355.P17431562751717346958

`∑[∏{p}[n+1, #]]`
-/

namespace A073355.P17431562751717346958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P17431562751717346958

namespace A073355

/-- `∑[∏{p}[n+1, #]]` -/
def P17431562751717346958.Spec : Prop :=
  ∀ n, (P17431562751717346958.a n : ℤ) = A073355 (n + 1)

end A073355

/-! ## A073355.P16955687360790714108

`∑[exp(∑{p}[n+1, log(#)])]`
-/

namespace A073355.P16955687360790714108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f2 n), Real.log (p : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P16955687360790714108

namespace A073355

/-- `∑[exp(∑{p}[n+1, log(#)])]` -/
def P16955687360790714108.Spec : Prop :=
  ∀ n, P16955687360790714108.a n = (A073355 (n + 1) : ℝ)

end A073355

/-! ## A073355.P8208066478888707323

`∑[2^∑{p}[n+1, log2(#)]]`
-/

namespace A073355.P8208066478888707323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f2 n), Real.logb 2 (p : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P8208066478888707323

namespace A073355

/-- `∑[2^∑{p}[n+1, log2(#)]]` -/
def P8208066478888707323.Spec : Prop :=
  ∀ n, P8208066478888707323.a n = (A073355 (n + 1) : ℝ)

end A073355

/-! ## A073355.P2970031599328036488

`∏{p}[n+1, #]+a(n-1)` with `a(0)=1`
-/

namespace A073355.P2970031599328036488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), p + a (n - 1)

end

end A073355.P2970031599328036488

namespace A073355

/-- `∏{p}[n+1, #]+a(n-1)` -/
def P2970031599328036488.Spec : Prop :=
  ∀ n, (P2970031599328036488.a n : ℤ) = A073355 (n + 1)

end A073355

/-! ## A073355.P4073098374625588754

`∑[A007947(n+1)]`
-/

namespace A073355.P4073098374625588754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P4073098374625588754

namespace A073355

/-- `∑[A007947(n+1)]` -/
def P4073098374625588754.Spec : Prop :=
  ∀ n, P4073098374625588754.a n = A073355 (n + 1)

end A073355

/-! ## A073355.P11056784908554233003

`∑[abs(A062953(n+1))]`
-/

namespace A073355.P11056784908554233003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062953 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P11056784908554233003

namespace A073355

/-- `∑[abs(A062953(n+1))]` -/
def P11056784908554233003.Spec : Prop :=
  ∀ n, P11056784908554233003.a n = A073355 (n + 1)

end A073355

/-! ## A073355.P12879780106858567083

`∑[sqrt(A078615(n+1))]`
-/

namespace A073355.P12879780106858567083
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078615 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P12879780106858567083

namespace A073355

/-- `∑[sqrt(A078615(n+1))]` -/
def P12879780106858567083.Spec : Prop :=
  ∀ n, P12879780106858567083.a n = (A073355 (n + 1) : ℝ)

end A073355

/-! ## A073355.P3442790709931878694

`∑[A075423(n+1)+1]`
-/

namespace A073355.P3442790709931878694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075423 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P3442790709931878694

namespace A073355

/-- `∑[A075423(n+1)+1]` -/
def P3442790709931878694.Spec : Prop :=
  ∀ n, P3442790709931878694.a n = A073355 (n + 1)

end A073355

/-! ## A073355.P9548668101142725048

`∑[A076618(n+1)-1]`
-/

namespace A073355.P9548668101142725048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P9548668101142725048

namespace A073355

/-- `∑[A076618(n+1)-1]` -/
def P9548668101142725048.Spec : Prop :=
  ∀ n, P9548668101142725048.a n = A073355 (n + 1)

end A073355

/-! ## A073355.P7667014273765347211

`∑[∏{d}[n+1, A089026(#)]]`
-/

namespace A073355.P7667014273765347211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A089026 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P7667014273765347211

namespace A073355

/-- `∑[∏{d}[n+1, A089026(#)]]` -/
def P7667014273765347211.Spec : Prop :=
  ∀ n, P7667014273765347211.a n = A073355 (n + 1)

end A073355

/-! ## A073355.P11931772738640948187

`∑[n+1-A066503(n+1)]`
-/

namespace A073355.P11931772738640948187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A066503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P11931772738640948187

namespace A073355

/-- `∑[n+1-A066503(n+1)]` -/
def P11931772738640948187.Spec : Prop :=
  ∀ n, P11931772738640948187.a n = A073355 (n + 1)

end A073355

/-! ## A073355.P3901705510707251463

`∑[A073353(n+1)-(n+1)]`
-/

namespace A073355.P3901705510707251463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P3901705510707251463

namespace A073355

/-- `∑[A073353(n+1)-(n+1)]` -/
def P3901705510707251463.Spec : Prop :=
  ∀ n, P3901705510707251463.a n = A073355 (n + 1)

end A073355

/-! ## A073355.P3984326764642210118

`∑[(n+1)/A003557(n+1)]`
-/

namespace A073355.P3984326764642210118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P3984326764642210118

namespace A073355

/-- `∑[(n+1)/A003557(n+1)]` -/
def P3984326764642210118.Spec : Prop :=
  ∀ n, P3984326764642210118.a n = (A073355 (n + 1) : ℚ)

end A073355

/-! ## A073355.P9730568074392194739

`∑[A064549(n+1)/(n+1)]`
-/

namespace A073355.P9730568074392194739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P9730568074392194739

namespace A073355

/-- `∑[A064549(n+1)/(n+1)]` -/
def P9730568074392194739.Spec : Prop :=
  ∀ n, P9730568074392194739.a n = (A073355 (n + 1) : ℚ)

end A073355

/-! ## A073355.P3023125133645643962

`∑[(n+1)²/A102631(n+1)]`
-/

namespace A073355.P3023125133645643962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A102631 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P3023125133645643962

namespace A073355

/-- `∑[(n+1)²/A102631(n+1)]` -/
def P3023125133645643962.Spec : Prop :=
  ∀ n, P3023125133645643962.a n = (A073355 (n + 1) : ℚ)

end A073355

/-! ## A073355.P9345888420288020286

`∑[A355038(n+1)/(n+1)²]`
-/

namespace A073355.P9345888420288020286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355038 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P9345888420288020286

namespace A073355

/-- `∑[A355038(n+1)/(n+1)²]` -/
def P9345888420288020286.Spec : Prop :=
  ∀ n, P9345888420288020286.a n = (A073355 (n + 1) : ℚ)

end A073355

/-! ## A073355.P12421073638183051921

`∑[A015052(A015052(n+1))]`
-/

namespace A073355.P12421073638183051921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P12421073638183051921

namespace A073355

/-- `∑[A015052(A015052(n+1))]` -/
def P12421073638183051921.Spec : Prop :=
  ∀ n, P12421073638183051921.a n = A073355 (n + 1)

end A073355

/-! ## A073355.P5662892216899168725

`∑[A015053(A015053(n+1))]`
-/

namespace A073355.P5662892216899168725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P5662892216899168725

namespace A073355

/-- `∑[A015053(A015053(n+1))]` -/
def P5662892216899168725.Spec : Prop :=
  ∀ n, P5662892216899168725.a n = A073355 (n + 1)

end A073355

/-! ## A073355.P14254834791404489758

`∑[A053166(A053166(n+1))]`
-/

namespace A073355.P14254834791404489758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A053166 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073355.P14254834791404489758

namespace A073355

/-- `∑[A053166(A053166(n+1))]` -/
def P14254834791404489758.Spec : Prop :=
  ∀ n, P14254834791404489758.a n = A073355 (n + 1)

end A073355

/-!
# A073356: Greatest common divisor of squarefree kernel of n and sum of squarefree kernels of numbers <= n.

The programs for A073356, the canonical program `A073356.P10809278047036063621` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073356 has offset 1).

The definition of A073356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073356.P10809278047036063621

`gcd(A007947(n+1), A073355(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073356

/-- `gcd(A007947(n+1), A073355(n+1))` -/
def P10809278047036063621.Spec : Prop :=
  ∀ n, (P10809278047036063621.a n : ℤ) = A073356 (n + 1)

theorem P10809278047036063621.correct : P10809278047036063621.Spec := by
  intro n
  simp only [A073356, Nat.add_sub_cancel]

end A073356

/-! ## A073356.P8489955020373553330

`gcd(exp(∑{p}[n+1, log(#)]), ∑[exp(∑{p}[n+1, log(#)])])`
-/

namespace A073356.P8489955020373553330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f3 n), Real.log (p : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (p : ℝ)))) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A073356.P8489955020373553330

namespace A073356

/-- `gcd(exp(∑{p}[n+1, log(#)]), ∑[exp(∑{p}[n+1, log(#)])])` -/
def P8489955020373553330.Spec : Prop :=
  ∀ n, (P8489955020373553330.a n : ℤ) = A073356 (n + 1)

end A073356

/-! ## A073356.P8067384368977980875

`gcd(2^∑{p}[n+1, log2(#)], ∑[2^∑{p}[n+1, log2(#)]])`
-/

namespace A073356.P8067384368977980875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f3 n), Real.logb 2 (p : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)))) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A073356.P8067384368977980875

namespace A073356

/-- `gcd(2^∑{p}[n+1, log2(#)], ∑[2^∑{p}[n+1, log2(#)]])` -/
def P8067384368977980875.Spec : Prop :=
  ∀ n, (P8067384368977980875.a n : ℤ) = A073356 (n + 1)

end A073356

/-! ## A073356.P5255491885071869515

`gcd((n+1)/A003557(n+1), ∑[(n+1)/A003557(n+1)])`
-/

namespace A073356.P5255491885071869515
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A073356.P5255491885071869515

namespace A073356

/-- `gcd((n+1)/A003557(n+1), ∑[(n+1)/A003557(n+1)])` -/
def P5255491885071869515.Spec : Prop :=
  ∀ n, (P5255491885071869515.a n : ℤ) = A073356 (n + 1)

end A073356

/-! ## A073356.P6321554742168241809

`gcd(n+1, ∏{p}[∑[∏{p}[n+1, #]], #])`
-/

namespace A073356.P6321554742168241809
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A073356.P6321554742168241809

namespace A073356

/-- `gcd(n+1, ∏{p}[∑[∏{p}[n+1, #]], #])` -/
def P6321554742168241809.Spec : Prop :=
  ∀ n, (P6321554742168241809.a n : ℤ) = A073356 (n + 1)

end A073356

/-!
# A073357: Binomial transform of tribonacci numbers.

The programs for A073357, the canonical program `A073357.P4875726012356651748` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073357 has offset 0).

The definition of A073357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073357.P4875726012356651748

`4*a(n-1)-4*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073357

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)` -/
def P4875726012356651748.Spec : Prop :=
  ∀ n, P4875726012356651748.a n = A073357 n

theorem P4875726012356651748.correct : P4875726012356651748.Spec := by
  intro n
  simp only [A073357]

end A073357

/-! ## A073357.P16477060797792594806

`A115390(n+1)-A115390(n)`
-/

namespace A073357.P16477060797792594806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 (n + 1) - A115390 n

end

end A073357.P16477060797792594806

namespace A073357

/-- `A115390(n+1)-A115390(n)` -/
def P16477060797792594806.Spec : Prop :=
  ∀ n, P16477060797792594806.a n = A073357 n

end A073357

/-! ## A073357.P7695338802994391219

`ogf((x-x^2)/(1-4x+4x^2-2x^3))`
-/

namespace A073357.P7695338802994391219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -4, 4, -2] n

end

end A073357.P7695338802994391219

namespace A073357

/-- `ogf((x-x^2)/(1-4x+4x^2-2x^3))` -/
def P7695338802994391219.Spec : Prop :=
  ∀ n, P7695338802994391219.a n = A073357 n

end A073357

/-! ## A073357.P2108141559536545767

`Δ[A115390(n)]`
-/

namespace A073357.P2108141559536545767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073357.P2108141559536545767

namespace A073357

/-- `Δ[A115390(n)]` -/
def P2108141559536545767.Spec : Prop :=
  ∀ n, P2108141559536545767.a n = A073357 n

end A073357

/-! ## A073357.P5567481770030355062

`∑[A159035(n)]-1`
-/

namespace A073357.P5567481770030355062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A073357.P5567481770030355062

namespace A073357

/-- `∑[A159035(n)]-1` -/
def P5567481770030355062.Spec : Prop :=
  ∀ n, P5567481770030355062.a n = A073357 n

end A073357

/-! ## A073357.P18417204524059659591

`(∑[A099216(n)]-1)/2`
-/

namespace A073357.P18417204524059659591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099216 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A073357.P18417204524059659591

namespace A073357

/-- `(∑[A099216(n)]-1)/2` -/
def P18417204524059659591.Spec : Prop :=
  ∀ n, P18417204524059659591.a n = (A073357 n : ℚ)

end A073357

/-! ## A073357.P2916081101449294031

`∑[A117189((2*n)%(n+1))]-1`
-/

namespace A073357.P2916081101449294031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 (2 * n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A073357.P2916081101449294031

namespace A073357

/-- `∑[A117189((2*n)%(n+1))]-1` -/
def P2916081101449294031.Spec : Prop :=
  ∀ n, P2916081101449294031.a n = A073357 n

end A073357

/-! ## A073357.P12810241530221203250

`∑[A159035(n)%A099216(n)]`
-/

namespace A073357.P12810241530221203250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159035 n) (A099216 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073357.P12810241530221203250

namespace A073357

/-- `∑[A159035(n)%A099216(n)]` -/
def P12810241530221203250.Spec : Prop :=
  ∀ n, P12810241530221203250.a n = A073357 n

end A073357

/-! ## A073357.P1530771637732822706

`A117189(n)-(A103685(n)+1)`
-/

namespace A073357.P1530771637732822706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n - (A103685 n + 1)

end

end A073357.P1530771637732822706

namespace A073357

/-- `A117189(n)-(A103685(n)+1)` -/
def P1530771637732822706.Spec : Prop :=
  ∀ n, P1530771637732822706.a n = A073357 n

end A073357

/-! ## A073357.P8170431149619336218

`∑[A117189(n)]-A117189(n)`
-/

namespace A073357.P8170431149619336218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A117189 n

end

end A073357.P8170431149619336218

namespace A073357

/-- `∑[A117189(n)]-A117189(n)` -/
def P8170431149619336218.Spec : Prop :=
  ∀ n, P8170431149619336218.a n = A073357 n

end A073357

/-! ## A073357.P6527123770387282211

`Δ[A159036(n)-Δ[A159035(n)]]`
-/

namespace A073357.P6527123770387282211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159036 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073357.P6527123770387282211

namespace A073357

/-- `Δ[A159036(n)-Δ[A159035(n)]]` -/
def P6527123770387282211.Spec : Prop :=
  ∀ n, P6527123770387282211.a n = A073357 n

end A073357

/-! ## A073357.P14818314118623057820

`Δ[A117189(n)]-A078484(n+1)`
-/

namespace A073357.P14818314118623057820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A078484 (n + 1)

end

end A073357.P14818314118623057820

namespace A073357

/-- `Δ[A117189(n)]-A078484(n+1)` -/
def P14818314118623057820.Spec : Prop :=
  ∀ n, P14818314118623057820.a n = A073357 n

end A073357

/-! ## A073357.P16489226540805297115

`Δ[A159035(n+1)-A099216(n)]`
-/

namespace A073357.P16489226540805297115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 (n + 1) - A099216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073357.P16489226540805297115

namespace A073357

/-- `Δ[A159035(n+1)-A099216(n)]` -/
def P16489226540805297115.Spec : Prop :=
  ∀ n, P16489226540805297115.a n = A073357 n

end A073357

/-! ## A073357.P9738193428167717577

`Δ[A117189(n)-A078484(n)]-A078484(n)`
-/

namespace A073357.P9738193428167717577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n - A078484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A078484 n

end

end A073357.P9738193428167717577

namespace A073357

/-- `Δ[A117189(n)-A078484(n)]-A078484(n)` -/
def P9738193428167717577.Spec : Prop :=
  ∀ n, P9738193428167717577.a n = A073357 n

end A073357

/-! ## A073357.P9340476513744693966

`A117189(n+1)-(A117189(n)+A078484(n+1))`
-/

namespace A073357.P9340476513744693966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 (n + 1) - (A117189 n + A078484 (n + 1))

end

end A073357.P9340476513744693966

namespace A073357

/-- `A117189(n+1)-(A117189(n)+A078484(n+1))` -/
def P9340476513744693966.Spec : Prop :=
  ∀ n, P9340476513744693966.a n = A073357 n

end A073357

/-! ## A073357.P6414948378090605208

`Δ[A291000(n)]-A117189(n+1)`
-/

namespace A073357.P6414948378090605208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A117189 (n + 1)

end

end A073357.P6414948378090605208

namespace A073357

/-- `Δ[A291000(n)]-A117189(n+1)` -/
def P6414948378090605208.Spec : Prop :=
  ∀ n, P6414948378090605208.a n = A073357 n

end A073357

/-! ## A073357.P10584225902570347421

`Δ[Δ[A117189(n)]]-A117189(n+1)`
-/

namespace A073357.P10584225902570347421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A117189 (n + 1)

end

end A073357.P10584225902570347421

namespace A073357

/-- `Δ[Δ[A117189(n)]]-A117189(n+1)` -/
def P10584225902570347421.Spec : Prop :=
  ∀ n, P10584225902570347421.a n = A073357 n

end A073357

/-! ## A073357.P7958528864279133833

`Δ[A159036(n+1)-Δ[A078484(n+1)]]`
-/

namespace A073357.P7958528864279133833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078484 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159036 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073357.P7958528864279133833

namespace A073357

/-- `Δ[A159036(n+1)-Δ[A078484(n+1)]]` -/
def P7958528864279133833.Spec : Prop :=
  ∀ n, P7958528864279133833.a n = A073357 n

end A073357

/-!
# A073358: Binomial transform, alternating in sign, of the tribonacci numbers.

The programs for A073358, the canonical program `A073358.P4884353238658852158` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073358 has offset 0).

The definition of A073358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073358.P4884353238658852158

`2*a(n-1)-2*a(n-3)` with `a(0)=0, a(1)=-1, a(2)=-1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073358

/-- `2*a(n-1)-2*a(n-3)` -/
def P4884353238658852158.Spec : Prop :=
  ∀ n, P4884353238658852158.a n = A073358 n

theorem P4884353238658852158.correct : P4884353238658852158.Spec := by
  intro n
  simp only [A073358]

end A073358

/-! ## A073358.P2194915846514899039

`ogf((-x+x^2)/(1-2x+2x^3))`
-/

namespace A073358.P2194915846514899039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 1] [1, -2, 0, 2] n

end

end A073358.P2194915846514899039

namespace A073358

/-- `ogf((-x+x^2)/(1-2x+2x^3))` -/
def P2194915846514899039.Spec : Prop :=
  ∀ n, P2194915846514899039.a n = A073358 n

end A073358

/-! ## A073358.P7374696594209890399

`2*(a(n-1)-a(n-3))` with `a(0)=0, a(1)=-1, a(2)=-1`
-/

namespace A073358.P7374696594209890399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, -1] fun n a =>
  2 * (a (n - 1) - a (n - 3))

end

end A073358.P7374696594209890399

namespace A073358

/-- `2*(a(n-1)-a(n-3))` -/
def P7374696594209890399.Spec : Prop :=
  ∀ n, P7374696594209890399.a n = A073358 n

theorem P7374696594209890399.correct : P7374696594209890399.Spec := by
  intro n
  simp only [A073358, Nat.add_sub_cancel, A073358.P7374696594209890399.a, A073358.P4884353238658852158.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073358

/-! ## A073358.P4366717115465689943

`a(n-1)+a(n-1)-a(n-3)-a(n-3)` with `a(0)=0, a(1)=-1, a(2)=-1`
-/

namespace A073358.P4366717115465689943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, -1] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 3) - a (n - 3))

end

end A073358.P4366717115465689943

namespace A073358

/-- `a(n-1)+a(n-1)-a(n-3)-a(n-3)` -/
def P4366717115465689943.Spec : Prop :=
  ∀ n, P4366717115465689943.a n = A073358 n

theorem P4366717115465689943.correct : P4366717115465689943.Spec := by
  intro n
  simp only [A073358, Nat.add_sub_cancel, A073358.P4366717115465689943.a, A073358.P4884353238658852158.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073358

/-! ## A073358.P6054958368044167914

`a(n-1)-(a(n-3)-(a(n-1)-a(n-3)))` with `a(0)=0, a(1)=-1, a(2)=-1`
-/

namespace A073358.P6054958368044167914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, -1] fun n a =>
  a (n - 1) - (a (n - 3) - (a (n - 1) - a (n - 3)))

end

end A073358.P6054958368044167914

namespace A073358

/-- `a(n-1)-(a(n-3)-(a(n-1)-a(n-3)))` -/
def P6054958368044167914.Spec : Prop :=
  ∀ n, P6054958368044167914.a n = A073358 n

theorem P6054958368044167914.correct : P6054958368044167914.Spec := by
  intro n
  simp only [A073358, Nat.add_sub_cancel, A073358.P6054958368044167914.a, A073358.P4884353238658852158.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073358

/-! ## A073358.P15923359282094881648

`Δ[A124395(n+1)/2]`
-/

namespace A073358.P15923359282094881648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124395 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073358.P15923359282094881648

namespace A073358

/-- `Δ[A124395(n+1)/2]` -/
def P15923359282094881648.Spec : Prop :=
  ∀ n, P15923359282094881648.a n = (A073358 n : ℚ)

end A073358

/-! ## A073358.P14756192898870447351

`Δ[Δ[∑[A124395(n)]/2]]`
-/

namespace A073358.P14756192898870447351
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124395 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073358.P14756192898870447351

namespace A073358

/-- `Δ[Δ[∑[A124395(n)]/2]]` -/
def P14756192898870447351.Spec : Prop :=
  ∀ n, P14756192898870447351.a n = (A073358 n : ℚ)

end A073358

/-! ## A073358.P15450655679834808960

`A007420(2*n+1)/A122803(n)`
-/

namespace A073358.P15450655679834808960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007420 (2 * n + 1) : ℚ) / (A122803 n : ℚ)

end

end A073358.P15450655679834808960

namespace A073358

/-- `A007420(2*n+1)/A122803(n)` -/
def P15450655679834808960.Spec : Prop :=
  ∀ n, P15450655679834808960.a n = (A073358 n : ℚ)

end A073358

/-! ## A073358.P3721960420178071446

`A007420(2*n+1)/A077966(2*n)`
-/

namespace A073358.P3721960420178071446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007420 (2 * n + 1) : ℚ) / (A077966 (2 * n) : ℚ)

end

end A073358.P3721960420178071446

namespace A073358

/-- `A007420(2*n+1)/A077966(2*n)` -/
def P3721960420178071446.Spec : Prop :=
  ∀ n, P3721960420178071446.a n = (A073358 n : ℚ)

end A073358

/-! ## A073358.P27229164285189140

`A007420(A005408(n))/(A122803(n)-A002448(n²+4))`
-/

namespace A073358.P27229164285189140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007420 (A005408 n).toNat : ℚ) / (A122803 n - A002448 (n ^ 2 + 4) : ℚ)

end

end A073358.P27229164285189140

namespace A073358

/-- `A007420(A005408(n))/(A122803(n)-A002448(n²+4))` -/
def P27229164285189140.Spec : Prop :=
  ∀ n, P27229164285189140.a n = (A073358 n : ℚ)

end A073358

/-!
# A073359: Nested floor product of n and fractions (2k+2)/(2k+1) for all k>=0, divided by 2.

The programs for A073359, there is no canonical definition to state claims against.
-/

/-! ## A073359.P6340916960863252788

`(A000960(n+2)-1)/2`
-/

namespace A073359.P6340916960863252788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000960 (n + 2) - 1 : ℚ) / 2

end

end A073359.P6340916960863252788

/-! ## A073359.P4828992673555791563

`∑[A099072(n+1)]`
-/

namespace A073359.P4828992673555791563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073359.P4828992673555791563

/-! ## A073359.P11211905233510606704

`A278484(n+1)/2`
-/

namespace A073359.P11211905233510606704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278484 (n + 1) : ℚ) / 2

end

end A073359.P11211905233510606704

/-! ## A073359.P988284769568468275

`∑[Δ[A278484(n)]/2]`
-/

namespace A073359.P988284769568468275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278484 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073359.P988284769568468275

/-! ## A073359.P15117259191729602910

`∑[A056526(n+1)/2]`
-/

namespace A073359.P15117259191729602910
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056526 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073359.P15117259191729602910

/-! ## A073359.P6139736801279608733

`floor(Δ[A099074(n)/2])`
-/

namespace A073359.P6139736801279608733
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099074 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A073359.P6139736801279608733

/-! ## A073359.P2136381947314663692

`floor(A000960(n+2)/2)`
-/

namespace A073359.P2136381947314663692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000960 (n + 2) : ℚ) / 2⌋

end

end A073359.P2136381947314663692

/-! ## A073359.P1042231279689039374

`∑[Δ[A000960(n+1)]/2]`
-/

namespace A073359.P1042231279689039374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073359.P1042231279689039374

/-! ## A073359.P4603534126871189174

`eq[1, A278537(2*n+1)]`
-/

namespace A073359.P4603534126871189174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073359.P4603534126871189174

/-! ## A073359.P3016953649297596859

`A278529(A000960(n+2)-1)`
-/

namespace A073359.P3016953649297596859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A000960 (n + 2) - 1).toNat

end

end A073359.P3016953649297596859

/-! ## A073359.P17591538600426234417

`A278537(A000960(n+2)-1)`
-/

namespace A073359.P17591538600426234417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A000960 (n + 2) - 1).toNat

end

end A073359.P17591538600426234417

/-! ## A073359.P14467077145298394439

`A001281(A278484(n+1))`
-/

namespace A073359.P14467077145298394439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A278484 (n + 1)).toNat

end

end A073359.P14467077145298394439

/-! ## A073359.P13257663509972424169

`A004524(A000960(n+2))`
-/

namespace A073359.P13257663509972424169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A000960 (n + 2)).toNat

end

end A073359.P13257663509972424169

/-!
# A073360: Nested floor product of n and fractions (k+1)/k for all k>0 (mod 3), divided by 3.

The programs for A073360, there is no canonical definition to state claims against.
-/

/-! ## A073360.P16493776800785520297

`∑[Δ[A112560(n)]/3]`
-/

namespace A073360.P16493776800785520297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112560 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073360.P16493776800785520297

/-! ## A073360.P7778870942426255418

`floor(A112560(n+1)/3)`
-/

namespace A073360.P7778870942426255418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112560 (n + 1) : ℚ) / 3⌋

end

end A073360.P7778870942426255418

/-! ## A073360.P11691014517613748428

`round(A112560(2*n-(n-1))/3)`
-/

namespace A073360.P11691014517613748428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112560 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 3)

end

end A073360.P11691014517613748428

/-! ## A073360.P18212628268188628890

`round(A112560(n+1)/3)%A000045(n+5)`
-/

namespace A073360.P18212628268188628890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A112560 (n + 1) : ℚ) / 3)) (A000045 (n + 5))

end

end A073360.P18212628268188628890

/-! ## A073360.P10883246526183363187

`A007318(∑[n])*round(A112560(n+1)/3)`
-/

namespace A073360.P10883246526183363187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A112560 (n + 1) : ℚ) / 3)

end

end A073360.P10883246526183363187

/-! ## A073360.P7732806307587425349

`∑[A189631(Δ[A112560(n)])]`
-/

namespace A073360.P7732806307587425349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112560 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189631 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073360.P7732806307587425349

/-!
# A073361: Nested floor product of n and fractions (k+1)/k for all k>0 (mod 4), divided by 4.

The programs for A073361, there is no canonical definition to state claims against.
-/

/-! ## A073361.P11455216255925942193

`∑[Δ[A112561(n)]/4]`
-/

namespace A073361.P11455216255925942193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112561 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073361.P11455216255925942193

/-! ## A073361.P14455781244292582771

`floor(A112561(n+1)/4)`
-/

namespace A073361.P14455781244292582771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112561 (n + 1) : ℚ) / 4⌋

end

end A073361.P14455781244292582771

/-! ## A073361.P17005450742384578767

`∑[A002265(Δ[A112561(n)])]`
-/

namespace A073361.P17005450742384578767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112561 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073361.P17005450742384578767

/-! ## A073361.P12230894961254534643

`∑[A051724(Δ[A112561(n)])]`
-/

namespace A073361.P12230894961254534643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112561 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073361.P12230894961254534643

/-! ## A073361.P11542253188428619746

`∑[A075884(Δ[A112561(n)])]`
-/

namespace A073361.P11542253188428619746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112561 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075884 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073361.P11542253188428619746

/-!
# A073362: Nested floor product of n and fractions (k+1)/k for all k>0 (mod 5), divided by 5.

The programs for A073362, there is no canonical definition to state claims against.
-/

/-! ## A073362.P14585791081548792966

`∑[Δ[A112562(n)]/5]`
-/

namespace A073362.P14585791081548792966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112562 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073362.P14585791081548792966

/-! ## A073362.P12490188529364421207

`floor(A112562(n+1)/5)`
-/

namespace A073362.P12490188529364421207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112562 (n + 1) : ℚ) / 5⌋

end

end A073362.P12490188529364421207

/-! ## A073362.P15129357521972749500

`ceil(A112562(n+1)/5-A007318(∑[n]))`
-/

namespace A073362.P15129357521972749500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112562 (n + 1) : ℚ) / 5 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌉

end

end A073362.P15129357521972749500

/-! ## A073362.P11197119605690807513

`round(A112562(n+1)/5)/A007318(C(2, n))`
-/

namespace A073362.P11197119605690807513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A112562 (n + 1) : ℚ) / 5) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A073362.P11197119605690807513

/-! ## A073362.P3851141675325180998

`round(A112562(n+1)/5)+A000045(n)%-1`
-/

namespace A073362.P3851141675325180998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112562 (n + 1) : ℚ) / 5) + Int.tmod (A000045 n) (-1)

end

end A073362.P3851141675325180998

/-!
# A073363: Nested floor product of n and fractions (k+1)/k for all k>0 (mod 6), divided by 6.

The programs for A073363, there is no canonical definition to state claims against.
-/

/-! ## A073363.P6383347749067915800

`∑[Δ[A112563(n)]/6]`
-/

namespace A073363.P6383347749067915800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112563 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073363.P6383347749067915800

/-! ## A073363.P8018325555680293887

`floor(A112563(n+1)/6)`
-/

namespace A073363.P8018325555680293887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112563 (n + 1) : ℚ) / 6⌋

end

end A073363.P8018325555680293887

/-! ## A073363.P5901071641367815960

`record[round(A112563(A277904(n+1)+1)/6)]`
-/

namespace A073363.P5901071641367815960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112563 (A277904 (n + 1) + 1).toNat : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073363.P5901071641367815960

/-! ## A073363.P13840198886386989000

`A007318(∑[n])*round(A112563(n+1)/6)`
-/

namespace A073363.P13840198886386989000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A112563 (n + 1) : ℚ) / 6)

end

end A073363.P13840198886386989000

/-! ## A073363.P1280796583100285823

`round(A112563(n+1)/6)/A007318(C(n, 2))`
-/

namespace A073363.P1280796583100285823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A112563 (n + 1) : ℚ) / 6) : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A073363.P1280796583100285823

/-! ## A073363.P6448184448277041288

`round(A112563(n+1)/6)%A000041(3*n+4)`
-/

namespace A073363.P6448184448277041288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A112563 (n + 1) : ℚ) / 6)) (A000041 (3 * n + 4))

end

end A073363.P6448184448277041288

/-!
# A073364: Number of permutations p of (1,2,3,...,n) such that k+p(k) is prime for 1<=k<=n.

The programs for A073364, there is no canonical definition to state claims against.
-/

/-! ## A073364.P12724807989999613591

`A175844(A141002(n))`
-/

namespace A073364.P12724807989999613591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175844 (A141002 n).toNat

end

end A073364.P12724807989999613591

/-! ## A073364.P6179070133531959576

`A232530(A128401(n+2))`
-/

namespace A073364.P6179070133531959576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232530 (A128401 (n + 2)).toNat

end

end A073364.P6179070133531959576

/-! ## A073364.P15786841853882907631

`A290253(A147728(n+1))^2`
-/

namespace A073364.P15786841853882907631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290253 (A147728 (n + 1)).toNat ^ 2

end

end A073364.P15786841853882907631

/-! ## A073364.P4054768665078792575

`A104611(A058368(n+1)²)²`
-/

namespace A073364.P4054768665078792575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104611 (A058368 (n + 1) ^ 2).toNat ^ 2

end

end A073364.P4054768665078792575

/-!
# A073366: Remainder when n-th prime is divided by number of composites not exceeding n.

The programs for A073366, the canonical program `A073366.P891318373544082339` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073366 has offset 4).

The definition of A073366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073366.P891318373544082339

`A000040(n+4)%A065855(n+4)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073366

/-- `A000040(n+4)%A065855(n+4)` -/
def P891318373544082339.Spec : Prop :=
  ∀ n, P891318373544082339.a n = A073366 (n + 4)

theorem P891318373544082339.correct : P891318373544082339.Spec := by
  intro n
  simp only [A073366, Nat.add_sub_cancel]

end A073366

/-! ## A073366.P9842482970394281425

`p?[A000961(n+6)]%A065855(n+4)`
-/

namespace A073366.P9842482970394281425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A065855 (n + 4))

end

end A073366.P9842482970394281425

namespace A073366

/-- `p?[A000961(n+6)]%A065855(n+4)` -/
def P9842482970394281425.Spec : Prop :=
  ∀ n, P9842482970394281425.a n = A073366 (n + 4)

end A073366

/-! ## A073366.P2435466316732894106

`p?[A067747(n+6)]%A065855(n+4)`
-/

namespace A073366.P2435466316732894106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A065855 (n + 4))

end

end A073366.P2435466316732894106

namespace A073366

/-- `p?[A067747(n+6)]%A065855(n+4)` -/
def P2435466316732894106.Spec : Prop :=
  ∀ n, P2435466316732894106.a n = A073366 (n + 4)

end A073366

/-! ## A073366.P11496672892750950405

`record[A067747(n+8)]%A065855(n+4)`
-/

namespace A073366.P11496672892750950405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A065855 (n + 4))

end

end A073366.P11496672892750950405

namespace A073366

/-- `record[A067747(n+8)]%A065855(n+4)` -/
def P11496672892750950405.Spec : Prop :=
  ∀ n, P11496672892750950405.a n = A073366 (n + 4)

end A073366

/-! ## A073366.P9173291114002441447

`p?[A073846(n+7)]%A065855(n+4)`
-/

namespace A073366.P9173291114002441447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A065855 (n + 4))

end

end A073366.P9173291114002441447

namespace A073366

/-- `p?[A073846(n+7)]%A065855(n+4)` -/
def P9173291114002441447.Spec : Prop :=
  ∀ n, P9173291114002441447.a n = A073366 (n + 4)

end A073366

/-! ## A073366.P3602067285202612439

`record[A073846(n+9)]%A065855(n+4)`
-/

namespace A073366.P3602067285202612439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A065855 (n + 4))

end

end A073366.P3602067285202612439

namespace A073366

/-- `record[A073846(n+9)]%A065855(n+4)` -/
def P3602067285202612439.Spec : Prop :=
  ∀ n, P3602067285202612439.a n = A073366 (n + 4)

end A073366

/-! ## A073366.P13619301194369424941

`p?[A064216(n+5)]%A065855(n+4)`
-/

namespace A073366.P13619301194369424941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A065855 (n + 4))

end

end A073366.P13619301194369424941

namespace A073366

/-- `p?[A064216(n+5)]%A065855(n+4)` -/
def P13619301194369424941.Spec : Prop :=
  ∀ n, P13619301194369424941.a n = A073366 (n + 4)

end A073366

/-! ## A073366.P16936323568029011239

`record[A064216(n+6)]%A065855(n+4)`
-/

namespace A073366.P16936323568029011239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A065855 (n + 4))

end

end A073366.P16936323568029011239

namespace A073366

/-- `record[A064216(n+6)]%A065855(n+4)` -/
def P16936323568029011239.Spec : Prop :=
  ∀ n, P16936323568029011239.a n = A073366 (n + 4)

end A073366

/-! ## A073366.P8069958538346267720

`p?[A080218(n+3)]%A065855(n+4)`
-/

namespace A073366.P8069958538346267720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080218 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A065855 (n + 4))

end

end A073366.P8069958538346267720

namespace A073366

/-- `p?[A080218(n+3)]%A065855(n+4)` -/
def P8069958538346267720.Spec : Prop :=
  ∀ n, P8069958538346267720.a n = A073366 (n + 4)

end A073366

/-! ## A073366.P51354272418852424

`p?[A003961(n+4)]%A065855(n+4)`
-/

namespace A073366.P51354272418852424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A065855 (n + 4))

end

end A073366.P51354272418852424

namespace A073366

/-- `p?[A003961(n+4)]%A065855(n+4)` -/
def P51354272418852424.Spec : Prop :=
  ∀ n, P51354272418852424.a n = A073366 (n + 4)

end A073366

/-! ## A073366.P2635899394346643255

`p?[A324161(n+6)]%A065855(n+4)`
-/

namespace A073366.P2635899394346643255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324161 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A065855 (n + 4))

end

end A073366.P2635899394346643255

namespace A073366

/-- `p?[A324161(n+6)]%A065855(n+4)` -/
def P2635899394346643255.Spec : Prop :=
  ∀ n, P2635899394346643255.a n = A073366 (n + 4)

end A073366

/-!
# A073367: Remainder when n-th composite is divided by number of composites not exceeding n.

The programs for A073367, the canonical program `A073367.P4763750874448608159` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073367 has offset 4).

The definition of A073367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073367.P4763750874448608159

`A002808(n+4)%A065855(n+4)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073367

/-- `A002808(n+4)%A065855(n+4)` -/
def P4763750874448608159.Spec : Prop :=
  ∀ n, P4763750874448608159.a n = A073367 (n + 4)

theorem P4763750874448608159.correct : P4763750874448608159.Spec := by
  intro n
  simp only [A073367, Nat.add_sub_cancel]

end A073367

/-! ## A073367.P3852240240472339547

`A018252(n+5)%A065855(n+4)`
-/

namespace A073367.P3852240240472339547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 5)) (A065855 (n + 4))

end

end A073367.P3852240240472339547

namespace A073367

/-- `A018252(n+5)%A065855(n+4)` -/
def P3852240240472339547.Spec : Prop :=
  ∀ n, P3852240240472339547.a n = A073367 (n + 4)

end A073367

/-! ## A073367.P7397357785897775392

`A067747(2*(n+4))%A065855(n+4)`
-/

namespace A073367.P7397357785897775392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067747 (2 * (n + 4))) (A065855 (n + 4))

end

end A073367.P7397357785897775392

namespace A073367

/-- `A067747(2*(n+4))%A065855(n+4)` -/
def P7397357785897775392.Spec : Prop :=
  ∀ n, P7397357785897775392.a n = A073367 (n + 4)

end A073367

/-! ## A073367.P3623291276159427240

`A066260(A000040(n+4))%A065855(n+4)`
-/

namespace A073367.P3623291276159427240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066260 (A000040 (n + 4)).toNat) (A065855 (n + 4))

end

end A073367.P3623291276159427240

namespace A073367

/-- `A066260(A000040(n+4))%A065855(n+4)` -/
def P3623291276159427240.Spec : Prop :=
  ∀ n, P3623291276159427240.a n = A073367 (n + 4)

end A073367

/-!
# A073368: Remainder when n is divided by number of composites not exceeding n.

The programs for A073368, the canonical program `A073368.P244892506514072260` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073368 has offset 4).

The definition of A073368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073368.P244892506514072260

`(n+4)%A065855(n+4)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073368

/-- `(n+4)%A065855(n+4)` -/
def P244892506514072260.Spec : Prop :=
  ∀ n, P244892506514072260.a n = A073368 (n + 4)

theorem P244892506514072260.correct : P244892506514072260.Spec := by
  intro n
  simp only [A073368, Nat.add_sub_cancel]

end A073368

/-! ## A073368.P9300098000594742605

`A074764(n+1)%∑[A066247(n+4)]`
-/

namespace A073368.P9300098000594742605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074764 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073368.P9300098000594742605

namespace A073368

/-- `A074764(n+1)%∑[A066247(n+4)]` -/
def P9300098000594742605.Spec : Prop :=
  ∀ n, P9300098000594742605.a n = A073368 (n + 4)

end A073368

/-! ## A073368.P13015927142614185922

`A020705(n)%∑[A005171(A020705(n))]`
-/

namespace A073368.P13015927142614185922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A020705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020705 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073368.P13015927142614185922

namespace A073368

/-- `A020705(n)%∑[A005171(A020705(n))]` -/
def P13015927142614185922.Spec : Prop :=
  ∀ n, P13015927142614185922.a n = A073368 (n + 4)

end A073368

/-! ## A073368.P232156441837206140

`A028310(n+4)%∑[A005171(n+4)]`
-/

namespace A073368.P232156441837206140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (n + 4)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073368.P232156441837206140

namespace A073368

/-- `A028310(n+4)%∑[A005171(n+4)]` -/
def P232156441837206140.Spec : Prop :=
  ∀ n, P232156441837206140.a n = A073368 (n + 4)

end A073368

/-! ## A073368.P3773696593458411368

`A036234(n+4)%∑[A039651(n+4)]`
-/

namespace A073368.P3773696593458411368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036234 (n + 4)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073368.P3773696593458411368

namespace A073368

/-- `A036234(n+4)%∑[A039651(n+4)]` -/
def P3773696593458411368.Spec : Prop :=
  ∀ n, P3773696593458411368.a n = A073368 (n + 4)

end A073368

/-! ## A073368.P14564104691468744547

`A254667(n+4)%∑[A066247(n+4)]`
-/

namespace A073368.P14564104691468744547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254667 (n + 4)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073368.P14564104691468744547

namespace A073368

/-- `A254667(n+4)%∑[A066247(n+4)]` -/
def P14564104691468744547.Spec : Prop :=
  ∀ n, P14564104691468744547.a n = A073368 (n + 4)

end A073368

/-! ## A073368.P3929770769439459144

`A008619(A020742(n))%∑[A066247(n+4)]`
-/

namespace A073368.P3929770769439459144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A020742 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073368.P3929770769439459144

namespace A073368

/-- `A008619(A020742(n))%∑[A066247(n+4)]` -/
def P3929770769439459144.Spec : Prop :=
  ∀ n, P3929770769439459144.a n = A073368 (n + 4)

end A073368

/-!
# A073369: Let c(1)=n, e=2.71... and c(k+1)=floor(c(k)/e) if c(k) is even, c(k+1)=floor(e*c(k)) otherwise; sequence gives the smallest value a(n) such that c(a(n))=0.

The programs for A073369, there is no canonical definition to state claims against.
-/

/-! ## A073369.P5846047474393439497

`A257703(n+1)+1`
-/

namespace A073369.P5846047474393439497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257703 (n + 1) + 1

end

end A073369.P5846047474393439497

/-! ## A073369.P5800615991798427613

`A020725(A257703(n+1))`
-/

namespace A073369.P5800615991798427613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A257703 (n + 1)).toNat

end

end A073369.P5800615991798427613

/-!
# A073370: Convolution triangle of A001045(n+1) (generalized (1,2)-Fibonacci), n>=0.

The programs for A073370, the canonical program `A073370.P16519042357231049877` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073370 has offset 0).

The definition of A073370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073370.P16519042357231049877

`T(n-1,k-1)+2*T(n-2,k)+T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073370

/-- `T(n-1,k-1)+2*T(n-2,k)+T(n-1,k)` -/
def P16519042357231049877.Spec : Prop :=
  ∀ n, (P16519042357231049877.a n : ℤ) = A073370 n

theorem P16519042357231049877.correct : P16519042357231049877.Spec := by
  intro n
  simp only [A073370]

end A073370

/-! ## A073370.P15260559903841733461

`T(n-1,k)+T(n-1,k-1)+2*T(n-2,k)` with `a(0)=1`
-/

namespace A073370.P15260559903841733461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triUp2 a n

end

end A073370.P15260559903841733461

namespace A073370

/-- `T(n-1,k)+T(n-1,k-1)+2*T(n-2,k)` -/
def P15260559903841733461.Spec : Prop :=
  ∀ n, (P15260559903841733461.a n : ℤ) = A073370 n

end A073370

/-! ## A073370.P3109534040409783759

`T(n-1,k)+T(n-1,k-1)+T(n-2,k)+T(n-2,k)` with `a(0)=1`
-/

namespace A073370.P3109534040409783759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUp2 a n

end

end A073370.P3109534040409783759

namespace A073370

/-- `T(n-1,k)+T(n-1,k-1)+T(n-2,k)+T(n-2,k)` -/
def P3109534040409783759.Spec : Prop :=
  ∀ n, (P3109534040409783759.a n : ℤ) = A073370 n

end A073370

/-! ## A073370.P7295877124300922844

`A191261(A111825(n))+A139377(n)`
-/

namespace A073370.P7295877124300922844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191261 (A111825 n).toNat + A139377 n

end

end A073370.P7295877124300922844

namespace A073370

/-- `A191261(A111825(n))+A139377(n)` -/
def P7295877124300922844.Spec : Prop :=
  ∀ n, P7295877124300922844.a n = A073370 n

end A073370

/-! ## A073370.P1334344608580880699

`or(A059441(A187829(n+1)), A111062(n))`
-/

namespace A073370.P1334344608580880699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059441 (A187829 (n + 1)).toNat) (A111062 n)

end

end A073370.P1334344608580880699

namespace A073370

/-- `or(A059441(A187829(n+1)), A111062(n))` -/
def P1334344608580880699.Spec : Prop :=
  ∀ n, P1334344608580880699.a n = A073370 n

end A073370

/-!
# A073371: Convolution of A001045(n+1) (generalized (1,2)-Fibonacci), n >= 0, with itself.

The programs for A073371, the canonical program `A073371.P12128670021777683971` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073371 has offset 0).

The definition of A073371 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073371.P4735122583662747748

`∑{#}[floor(n/2), (n-#+1)*C(n-#, #)*2^#]`
-/

namespace A073371.P4735122583662747748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n : ℤ) - (k : ℤ) + 1) * (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) * (2 ^ k : ℤ)

end

end A073371.P4735122583662747748

namespace A073371

/-- `∑{#}[floor(n/2), (n-#+1)*C(n-#, #)*2^#]` -/
def P4735122583662747748.Spec : Prop :=
  ∀ n, P4735122583662747748.a n = A073371 n

end A073371

/-! ## A073371.P5962030953886071649

`ogf(1/(1-2x-3x^2+4x^3+4x^4))`
-/

namespace A073371.P5962030953886071649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -3, 4, 4] n

end

end A073371.P5962030953886071649

namespace A073371

/-- `ogf(1/(1-2x-3x^2+4x^3+4x^4))` -/
def P5962030953886071649.Spec : Prop :=
  ∀ n, P5962030953886071649.a n = A073371 n

end A073371

/-! ## A073371.P12128670021777683971

`((5+3*n)*2^(n+2)+(-1)^n*(7+3*n))/27`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073371

/-- `((5+3*n)*2^(n+2)+(-1)^n*(7+3*n))/27` -/
def P12128670021777683971.Spec : Prop :=
  ∀ n, P12128670021777683971.a n = (A073371 n : ℚ)

end A073371

/-! ## A073371.P1541073884789101099

`∑{#}[n, (#+1)*2^(n-#)*C(#, n-#)]`
-/

namespace A073371.P1541073884789101099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose k ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A073371.P1541073884789101099

namespace A073371

/-- `∑{#}[n, (#+1)*2^(n-#)*C(#, n-#)]` -/
def P1541073884789101099.Spec : Prop :=
  ∀ n, P1541073884789101099.a n = (A073371 n : ℚ)

end A073371

/-! ## A073371.P7556347579523909215

`∑[2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)]` with `a(0)=1, a(1)=1, a(2)=5, a(3)=9`
-/

namespace A073371.P7556347579523909215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 9] fun n f1 =>
  2 * f1 (n - 1) + 3 * f1 (n - 2) - 4 * f1 (n - 3) - 4 * f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073371.P7556347579523909215

namespace A073371

/-- `∑[2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)]` -/
def P7556347579523909215.Spec : Prop :=
  ∀ n, P7556347579523909215.a n = A073371 n

end A073371

/-! ## A073371.P331117192745194625

`∑[A127976(n+1)]`
-/

namespace A073371.P331117192745194625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073371.P331117192745194625

namespace A073371

/-- `∑[A127976(n+1)]` -/
def P331117192745194625.Spec : Prop :=
  ∀ n, P331117192745194625.a n = A073371 n

end A073371

/-! ## A073371.P6550171152512333800

`∑[∑[abs(A322039(n))]]`
-/

namespace A073371.P6550171152512333800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A322039 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073371.P6550171152512333800

namespace A073371

/-- `∑[∑[abs(A322039(n))]]` -/
def P6550171152512333800.Spec : Prop :=
  ∀ n, P6550171152512333800.a n = A073371 n

end A073371

/-! ## A073371.P17192549348289130326

`A053088(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A073371.P17192549348289130326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053088 n + 2 * a (n - 1)

end

end A073371.P17192549348289130326

namespace A073371

/-- `A053088(n)+2*a(n-1)` -/
def P17192549348289130326.Spec : Prop :=
  ∀ n, P17192549348289130326.a n = A073371 n

end A073371

/-! ## A073371.P11644463878465273100

`A127976(n+2)-A053088(n+1)`
-/

namespace A073371.P11644463878465273100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127976 (n + 2) - A053088 (n + 1)

end

end A073371.P11644463878465273100

namespace A073371

/-- `A127976(n+2)-A053088(n+1)` -/
def P11644463878465273100.Spec : Prop :=
  ∀ n, P11644463878465273100.a n = A073371 n

end A073371

/-! ## A073371.P12673586146084229568

`A001045(n+1)+A140960(n)+A091596(n)`
-/

namespace A073371.P12673586146084229568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A140960 n + A091596 n)

end

end A073371.P12673586146084229568

namespace A073371

/-- `A001045(n+1)+A140960(n)+A091596(n)` -/
def P12673586146084229568.Spec : Prop :=
  ∀ n, P12673586146084229568.a n = A073371 n

end A073371

/-! ## A073371.P995624163205212092

`A045883(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A073371.P995624163205212092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045883 (n + 1) - a (n - 1)

end

end A073371.P995624163205212092

namespace A073371

/-- `A045883(n+1)-a(n-1)` -/
def P995624163205212092.Spec : Prop :=
  ∀ n, P995624163205212092.a n = A073371 n

end A073371

/-! ## A073371.P1533808229019607097

`∑[A102713(n+1)-A045883(n)]`
-/

namespace A073371.P1533808229019607097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102713 (n + 1) - A045883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073371.P1533808229019607097

namespace A073371

/-- `∑[A102713(n+1)-A045883(n)]` -/
def P1533808229019607097.Spec : Prop :=
  ∀ n, P1533808229019607097.a n = A073371 n

end A073371

/-! ## A073371.P5655830470820903178

`A099429(n+2)-A127976(n+1)`
-/

namespace A073371.P5655830470820903178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099429 (n + 2) - A127976 (n + 1)

end

end A073371.P5655830470820903178

namespace A073371

/-- `A099429(n+2)-A127976(n+1)` -/
def P5655830470820903178.Spec : Prop :=
  ∀ n, P5655830470820903178.a n = A073371 n

end A073371

/-! ## A073371.P431086213961163776

`A091596(n+2)-A001045(n+2)`
-/

namespace A073371.P431086213961163776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091596 (n + 2) - A001045 (n + 2)

end

end A073371.P431086213961163776

namespace A073371

/-- `A091596(n+2)-A001045(n+2)` -/
def P431086213961163776.Spec : Prop :=
  ∀ n, P431086213961163776.a n = A073371 n

end A073371

/-! ## A073371.P2101474428517772337

`A127976(n+1)+A127979(n+1)-A127984(n+1)`
-/

namespace A073371.P2101474428517772337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127976 (n + 1) + (A127979 (n + 1) - A127984 (n + 1))

end

end A073371.P2101474428517772337

namespace A073371

/-- `A127976(n+1)+A127979(n+1)-A127984(n+1)` -/
def P2101474428517772337.Spec : Prop :=
  ∀ n, P2101474428517772337.a n = A073371 n

end A073371

/-! ## A073371.P12977995651306634629

`A127979(n+2)-A127984(n+2)`
-/

namespace A073371.P12977995651306634629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127979 (n + 2) - A127984 (n + 2)

end

end A073371.P12977995651306634629

namespace A073371

/-- `A127979(n+2)-A127984(n+2)` -/
def P12977995651306634629.Spec : Prop :=
  ∀ n, P12977995651306634629.a n = A073371 n

end A073371

/-! ## A073371.P13197954479994136745

`A073370(∑[n+1]+1)`
-/

namespace A073371.P13197954479994136745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A073371.P13197954479994136745

namespace A073371

/-- `A073370(∑[n+1]+1)` -/
def P13197954479994136745.Spec : Prop :=
  ∀ n, P13197954479994136745.a n = A073371 n

end A073371

/-! ## A073371.P3793453540640281211

`∑[A208328(∑[n+2])]`
-/

namespace A073371.P3793453540640281211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208328 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073371.P3793453540640281211

namespace A073371

/-- `∑[A208328(∑[n+2])]` -/
def P3793453540640281211.Spec : Prop :=
  ∀ n, P3793453540640281211.a n = A073371 n

end A073371

/-! ## A073371.P2084671144536342885

`A112883(∑[n+3]+1)`
-/

namespace A073371.P2084671144536342885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112883 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A073371.P2084671144536342885

namespace A073371

/-- `A112883(∑[n+3]+1)` -/
def P2084671144536342885.Spec : Prop :=
  ∀ n, P2084671144536342885.a n = A073371 n

end A073371

/-! ## A073371.P9494381373573500118

`A249139(A087811(n+2))`
-/

namespace A073371.P9494381373573500118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249139 (A087811 (n + 2)).toNat

end

end A073371.P9494381373573500118

namespace A073371

/-- `A249139(A087811(n+2))` -/
def P9494381373573500118.Spec : Prop :=
  ∀ n, P9494381373573500118.a n = A073371 n

end A073371

/-!
# A073372: Second convolution of A001045(n+1) (generalized (1,2)-Fibonacci), n>=0, with itself.

The programs for A073372, the canonical program `A073372.P14640379701396598357` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073372 has offset 0).

The definition of A073372 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073372.P14640379701396598357

`∑{#}[floor(n/2), C(n-#+2, 2)*C(n-#, #)*2^#]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073372

/-- `∑{#}[floor(n/2), C(n-#+2, 2)*C(n-#, #)*2^#]` -/
def P14640379701396598357.Spec : Prop :=
  ∀ n, (P14640379701396598357.a n : ℤ) = A073372 n

theorem P14640379701396598357.correct : P14640379701396598357.Spec := by
  intro n
  simp only [A073372]

end A073372

/-! ## A073372.P8975628680453599573

`ogf(1/(1-3x-3x^2+11x^3+6x^4-12x^5-8x^6))`
-/

namespace A073372.P8975628680453599573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -3, 11, 6, -12, -8] n

end

end A073372.P8975628680453599573

namespace A073372

/-- `ogf(1/(1-3x-3x^2+11x^3+6x^4-12x^5-8x^6))` -/
def P8975628680453599573.Spec : Prop :=
  ∀ n, P8975628680453599573.a n = A073372 n

end A073372

/-! ## A073372.P10679852685647369557

`∑{#}[n, 2^(n-#)*C(#+2, 2)*C(#, n-#)]`
-/

namespace A073372.P10679852685647369557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (k + 2) 2 : ℚ) * (Nat.choose k ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A073372.P10679852685647369557

namespace A073372

/-- `∑{#}[n, 2^(n-#)*C(#+2, 2)*C(#, n-#)]` -/
def P10679852685647369557.Spec : Prop :=
  ∀ n, P10679852685647369557.a n = (A073372 n : ℚ)

end A073372

/-! ## A073372.P7469859071560885610

`∑[∑[∑[A279865(n+2)]]]`
-/

namespace A073372.P7469859071560885610
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279865 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073372.P7469859071560885610

namespace A073372

/-- `∑[∑[∑[A279865(n+2)]]]` -/
def P7469859071560885610.Spec : Prop :=
  ∀ n, P7469859071560885610.a n = A073372 n

end A073372

/-! ## A073372.P16836970201990729703

`A073370(∑[n+2]+3)`
-/

namespace A073372.P16836970201990729703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A073372.P16836970201990729703

namespace A073372

/-- `A073370(∑[n+2]+3)` -/
def P16836970201990729703.Spec : Prop :=
  ∀ n, P16836970201990729703.a n = A073372 n

end A073372

/-! ## A073372.P13507668513141840111

`∑[∑[A208328(∑[n+3]+1)]]`
-/

namespace A073372.P13507668513141840111
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208328 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073372.P13507668513141840111

namespace A073372

/-- `∑[∑[A208328(∑[n+3]+1)]]` -/
def P13507668513141840111.Spec : Prop :=
  ∀ n, P13507668513141840111.a n = A073372 n

end A073372

/-! ## A073372.P9590167086148775325

`A112883(A000124(n+5)-4)`
-/

namespace A073372.P9590167086148775325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112883 (A000124 (n + 5) - 4).toNat

end

end A073372.P9590167086148775325

namespace A073372

/-- `A112883(A000124(n+5)-4)` -/
def P9590167086148775325.Spec : Prop :=
  ∀ n, P9590167086148775325.a n = A073372 n

end A073372

/-! ## A073372.P8451885128100261761

`record[A112883(A112883(∑[4*n]+1))]`
-/

namespace A073372.P8451885128100261761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112883 (A112883 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073372.P8451885128100261761

namespace A073372

/-- `record[A112883(A112883(∑[4*n]+1))]` -/
def P8451885128100261761.Spec : Prop :=
  ∀ n, P8451885128100261761.a n = A073372 n

end A073372

/-!
# A073373: Third convolution of A001045(n+1) (generalized (1,2)-Fibonacci), n>=0, with itself.

The programs for A073373, the canonical program `A073373.P15719410611644502300` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073373 has offset 0).

The definition of A073373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073373.P15719410611644502300

`∑{#}[floor(n/2), C(n-#+3, 3)*C(n-#, #)*2^#]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073373

/-- `∑{#}[floor(n/2), C(n-#+3, 3)*C(n-#, #)*2^#]` -/
def P15719410611644502300.Spec : Prop :=
  ∀ n, (P15719410611644502300.a n : ℤ) = A073373 n

theorem P15719410611644502300.correct : P15719410611644502300.Spec := by
  intro n
  simp only [A073373]

end A073373

/-! ## A073373.P137321388595991533

`ogf(1/(1-4x-2x^2+20x^3+x^4-40x^5-8x^6+32x^7+16x^8))`
-/

namespace A073373.P137321388595991533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, -2, 20, 1, -40, -8, 32, 16] n

end

end A073373.P137321388595991533

namespace A073373

/-- `ogf(1/(1-4x-2x^2+20x^3+x^4-40x^5-8x^6+32x^7+16x^8))` -/
def P137321388595991533.Spec : Prop :=
  ∀ n, P137321388595991533.a n = A073373 n

end A073373

/-! ## A073373.P2538529934833961043

`A073370(A167614(n+2))`
-/

namespace A073373.P2538529934833961043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A167614 (n + 2)).toNat

end

end A073373.P2538529934833961043

namespace A073373

/-- `A073370(A167614(n+2))` -/
def P2538529934833961043.Spec : Prop :=
  ∀ n, P2538529934833961043.a n = A073373 n

end A073373

/-! ## A073373.P7694660952467067741

`A073370(A052905(n)+8)`
-/

namespace A073373.P7694660952467067741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A052905 n + 8).toNat

end

end A073373.P7694660952467067741

namespace A073373

/-- `A073370(A052905(n)+8)` -/
def P7694660952467067741.Spec : Prop :=
  ∀ n, P7694660952467067741.a n = A073373 n

end A073373

/-! ## A073373.P5025104642740831152

`A073370(eq[3, A002262(n)])`
-/

namespace A073373.P5025104642740831152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073373.P5025104642740831152

namespace A073373

/-- `A073370(eq[3, A002262(n)])` -/
def P5025104642740831152.Spec : Prop :=
  ∀ n, P5025104642740831152.a n = A073373 n

end A073373

/-! ## A073373.P8144256658474472440

`A073370(eq[4, A002260(n+1)])`
-/

namespace A073373.P8144256658474472440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073373.P8144256658474472440

namespace A073373

/-- `A073370(eq[4, A002260(n+1)])` -/
def P8144256658474472440.Spec : Prop :=
  ∀ n, P8144256658474472440.a n = A073373 n

end A073373

/-! ## A073373.P14771794009054939020

`A073370(eq[4, sqrt(A133819(n+1))])`
-/

namespace A073373.P14771794009054939020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A073373.P14771794009054939020

namespace A073373

/-- `A073370(eq[4, sqrt(A133819(n+1))])` -/
def P14771794009054939020.Spec : Prop :=
  ∀ n, P14771794009054939020.a n = A073373 n

end A073373

/-! ## A073373.P17221275198751910774

`A073370(eq[1, A144328(n+1)-2])`
-/

namespace A073373.P17221275198751910774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073373.P17221275198751910774

namespace A073373

/-- `A073370(eq[1, A144328(n+1)-2])` -/
def P17221275198751910774.Spec : Prop :=
  ∀ n, P17221275198751910774.a n = A073373 n

end A073373

/-! ## A073373.P16234934061883265767

`A073370(A000217(n+5)-A020739(n))`
-/

namespace A073373.P16234934061883265767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A000217 (n + 5) - A020739 n).toNat

end

end A073373.P16234934061883265767

namespace A073373

/-- `A073370(A000217(n+5)-A020739(n))` -/
def P16234934061883265767.Spec : Prop :=
  ∀ n, P16234934061883265767.a n = A073373 n

end A073373

/-! ## A073373.P6773488977142506477

`A073370(A020739(n+1)+A000217(n+1))`
-/

namespace A073373.P6773488977142506477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A020739 (n + 1) + A000217 (n + 1)).toNat

end

end A073373.P6773488977142506477

namespace A073373

/-- `A073370(A020739(n+1)+A000217(n+1))` -/
def P6773488977142506477.Spec : Prop :=
  ∀ n, P6773488977142506477.a n = A073373 n

end A073373

/-!
# A073374: Fourth convolution of A001045(n+1) (generalized (1,2)-Fibonacci), n>=0, with itself.

The programs for A073374, the canonical program `A073374.P14059486906996063310` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073374 has offset 0).

The definition of A073374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073374.P14059486906996063310

`∑{#}[floor(n/2), C(n-#+4, 4)*C(n-#, #)*2^#]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073374

/-- `∑{#}[floor(n/2), C(n-#+4, 4)*C(n-#, #)*2^#]` -/
def P14059486906996063310.Spec : Prop :=
  ∀ n, (P14059486906996063310.a n : ℤ) = A073374 n

theorem P14059486906996063310.correct : P14059486906996063310.Spec := by
  intro n
  simp only [A073374]

end A073374

/-! ## A073374.P16588575604932912713

`ogf(1/(1-5x+30x^3-15x^4-81x^5+30x^6+120x^7-80x^9-32x^10))`
-/

namespace A073374.P16588575604932912713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 0, 30, -15, -81, 30, 120, 0, -80, -32] n

end

end A073374.P16588575604932912713

namespace A073374

/-- `ogf(1/(1-5x+30x^3-15x^4-81x^5+30x^6+120x^7-80x^9-32x^10))` -/
def P16588575604932912713.Spec : Prop :=
  ∀ n, P16588575604932912713.a n = A073374 n

end A073374

/-! ## A073374.P12163058940957494944

`A182349(n)-a(n-1)` with `a(0)=1`
-/

namespace A073374.P12163058940957494944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182349 n - a (n - 1)

end

end A073374.P12163058940957494944

namespace A073374

/-- `A182349(n)-a(n-1)` -/
def P12163058940957494944.Spec : Prop :=
  ∀ n, P12163058940957494944.a n = A073374 n

end A073374

/-! ## A073374.P2786086462545832863

`A073370(A155212(n)+12)`
-/

namespace A073374.P2786086462545832863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A155212 n + 12).toNat

end

end A073374.P2786086462545832863

namespace A073374

/-- `A073370(A155212(n)+12)` -/
def P2786086462545832863.Spec : Prop :=
  ∀ n, P2786086462545832863.a n = A073374 n

end A073374

/-! ## A073374.P14477475344496357042

`A073370(eq[4, A002262(n)])`
-/

namespace A073374.P14477475344496357042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073374.P14477475344496357042

namespace A073374

/-- `A073370(eq[4, A002262(n)])` -/
def P14477475344496357042.Spec : Prop :=
  ∀ n, P14477475344496357042.a n = A073374 n

end A073374

/-! ## A073374.P4185792130577263487

`A073370(eq[16, A059268(n)])`
-/

namespace A073374.P4185792130577263487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073374.P4185792130577263487

namespace A073374

/-- `A073370(eq[16, A059268(n)])` -/
def P4185792130577263487.Spec : Prop :=
  ∀ n, P4185792130577263487.a n = A073374 n

end A073374

/-! ## A073374.P8509176632824616915

`A073370(A000096(n+3)+5)`
-/

namespace A073374.P8509176632824616915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A000096 (n + 3) + 5).toNat

end

end A073374.P8509176632824616915

namespace A073374

/-- `A073370(A000096(n+3)+5)` -/
def P8509176632824616915.Spec : Prop :=
  ∀ n, P8509176632824616915.a n = A073374 n

end A073374

/-! ## A073374.P16441304091040925863

`A073370(eq[5, A002260(n+1)])`
-/

namespace A073374.P16441304091040925863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073374.P16441304091040925863

namespace A073374

/-- `A073370(eq[5, A002260(n+1)])` -/
def P16441304091040925863.Spec : Prop :=
  ∀ n, P16441304091040925863.a n = A073374 n

end A073374

/-! ## A073374.P8785250226929777629

`A073370(eq[5, sqrt(A133819(n+1))])`
-/

namespace A073374.P8785250226929777629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A073374.P8785250226929777629

namespace A073374

/-- `A073370(eq[5, sqrt(A133819(n+1))])` -/
def P8785250226929777629.Spec : Prop :=
  ∀ n, P8785250226929777629.a n = A073374 n

end A073374

/-! ## A073374.P3952173830840017832

`A073370(eq[2, A144328(n+1)-2])`
-/

namespace A073374.P3952173830840017832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073374.P3952173830840017832

namespace A073374

/-- `A073370(eq[2, A144328(n+1)-2])` -/
def P3952173830840017832.Spec : Prop :=
  ∀ n, P3952173830840017832.a n = A073374 n

end A073374

/-! ## A073374.P16716621023738958266

`A073370(eq[2, A144328(n+1)/2])`
-/

namespace A073374.P16716621023738958266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A073374.P16716621023738958266

namespace A073374

/-- `A073370(eq[2, A144328(n+1)/2])` -/
def P16716621023738958266.Spec : Prop :=
  ∀ n, P16716621023738958266.a n = A073374 n

end A073374

/-! ## A073374.P6326019117874060875

`A073370(A000217(n+5)-(n+1))`
-/

namespace A073374.P6326019117874060875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A073374.P6326019117874060875

namespace A073374

/-- `A073370(A000217(n+5)-(n+1))` -/
def P6326019117874060875.Spec : Prop :=
  ∀ n, P6326019117874060875.a n = A073374 n

end A073374

/-!
# A073375: Fifth convolution of A001045(n+1) (generalized (1,2)-Fibonacci), n>=0, with itself.

The programs for A073375, the canonical program `A073375.P17362663403851085168` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073375 has offset 0).

The definition of A073375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073375.P17362663403851085168

`∑{#}[floor(n/2), C(n-#+5, 5)*C(n-#, #)*2^#]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073375

/-- `∑{#}[floor(n/2), C(n-#+5, 5)*C(n-#, #)*2^#]` -/
def P17362663403851085168.Spec : Prop :=
  ∀ n, (P17362663403851085168.a n : ℤ) = A073375 n

theorem P17362663403851085168.correct : P17362663403851085168.Spec := by
  intro n
  simp only [A073375]

end A073375

/-! ## A073375.P8421837150285925942

`A073370(A167499(n+4))`
-/

namespace A073375.P8421837150285925942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A167499 (n + 4)).toNat

end

end A073375.P8421837150285925942

namespace A073375

/-- `A073370(A167499(n+4))` -/
def P8421837150285925942.Spec : Prop :=
  ∀ n, P8421837150285925942.a n = A073375 n

end A073375

/-! ## A073375.P3987012848184386363

`A073370(eq[5, A002262(n)])`
-/

namespace A073375.P3987012848184386363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073375.P3987012848184386363

namespace A073375

/-- `A073370(eq[5, A002262(n)])` -/
def P3987012848184386363.Spec : Prop :=
  ∀ n, P3987012848184386363.a n = A073375 n

end A073375

/-! ## A073375.P5012811399047959102

`A073370(A000096(n+4)+6)`
-/

namespace A073375.P5012811399047959102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A000096 (n + 4) + 6).toNat

end

end A073375.P5012811399047959102

namespace A073375

/-- `A073370(A000096(n+4)+6)` -/
def P5012811399047959102.Spec : Prop :=
  ∀ n, P5012811399047959102.a n = A073375 n

end A073375

/-! ## A073375.P9904869872114606558

`A073370(A000217(n+5)+5)`
-/

namespace A073375.P9904869872114606558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A000217 (n + 5) + 5).toNat

end

end A073375.P9904869872114606558

namespace A073375

/-- `A073370(A000217(n+5)+5)` -/
def P9904869872114606558.Spec : Prop :=
  ∀ n, P9904869872114606558.a n = A073375 n

end A073375

/-! ## A073375.P4036082077375561848

`A073370(eq[6, A002260(n+1)])`
-/

namespace A073375.P4036082077375561848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073375.P4036082077375561848

namespace A073375

/-- `A073370(eq[6, A002260(n+1)])` -/
def P4036082077375561848.Spec : Prop :=
  ∀ n, P4036082077375561848.a n = A073375 n

end A073375

/-! ## A073375.P809878593014894979

`A073370(eq[6, sqrt(A133819(n+1))])`
-/

namespace A073375.P809878593014894979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A073375.P809878593014894979

namespace A073375

/-- `A073370(eq[6, sqrt(A133819(n+1))])` -/
def P809878593014894979.Spec : Prop :=
  ∀ n, P809878593014894979.a n = A073375 n

end A073375

/-!
# A073376: Sixth convolution of A001045(n+1) (generalized (1,2)-Fibonacci), n>=0, with itself.

The programs for A073376, the canonical program `A073376.P12753410523508113305` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073376 has offset 0).

The definition of A073376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073376.P12753410523508113305

`∑{#}[floor(n/2), C(n-#+6, 6)*C(n-#, #)*2^#]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073376

/-- `∑{#}[floor(n/2), C(n-#+6, 6)*C(n-#, #)*2^#]` -/
def P12753410523508113305.Spec : Prop :=
  ∀ n, (P12753410523508113305.a n : ℤ) = A073376 n

theorem P12753410523508113305.correct : P12753410523508113305.Spec := by
  intro n
  simp only [A073376]

end A073376

/-! ## A073376.P162022790228387293

`A073370(A056119(n)+27)`
-/

namespace A073376.P162022790228387293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A056119 n + 27).toNat

end

end A073376.P162022790228387293

namespace A073376

/-- `A073370(A056119(n)+27)` -/
def P162022790228387293.Spec : Prop :=
  ∀ n, P162022790228387293.a n = A073376 n

end A073376

/-! ## A073376.P2772427361378517147

`A073370(eq[6, A002262(n)])`
-/

namespace A073376.P2772427361378517147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073376.P2772427361378517147

namespace A073376

/-- `A073370(eq[6, A002262(n)])` -/
def P2772427361378517147.Spec : Prop :=
  ∀ n, P2772427361378517147.a n = A073376 n

end A073376

/-! ## A073376.P6277066208079793475

`A073370(A167499(n+5)+1)`
-/

namespace A073376.P6277066208079793475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A167499 (n + 5) + 1).toNat

end

end A073376.P6277066208079793475

namespace A073376

/-- `A073370(A167499(n+5)+1)` -/
def P6277066208079793475.Spec : Prop :=
  ∀ n, P6277066208079793475.a n = A073376 n

end A073376

/-! ## A073376.P9245784655332967575

`A073370(A000096(n+5)+7)`
-/

namespace A073376.P9245784655332967575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A000096 (n + 5) + 7).toNat

end

end A073376.P9245784655332967575

namespace A073376

/-- `A073370(A000096(n+5)+7)` -/
def P9245784655332967575.Spec : Prop :=
  ∀ n, P9245784655332967575.a n = A073376 n

end A073376

/-! ## A073376.P7379728721608636159

`A073370(A000217(n+6)+6)`
-/

namespace A073376.P7379728721608636159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A000217 (n + 6) + 6).toNat

end

end A073376.P7379728721608636159

namespace A073376

/-- `A073370(A000217(n+6)+6)` -/
def P7379728721608636159.Spec : Prop :=
  ∀ n, P7379728721608636159.a n = A073376 n

end A073376

/-! ## A073376.P9979184071336598914

`A073370(eq[7, A002260(n+1)])`
-/

namespace A073376.P9979184071336598914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073376.P9979184071336598914

namespace A073376

/-- `A073370(eq[7, A002260(n+1)])` -/
def P9979184071336598914.Spec : Prop :=
  ∀ n, P9979184071336598914.a n = A073376 n

end A073376

/-! ## A073376.P1343028347207066872

`A073370(eq[7, sqrt(A133819(n+1))])`
-/

namespace A073376.P1343028347207066872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A073376.P1343028347207066872

namespace A073376

/-- `A073370(eq[7, sqrt(A133819(n+1))])` -/
def P1343028347207066872.Spec : Prop :=
  ∀ n, P1343028347207066872.a n = A073376 n

end A073376

/-!
# A073377: Seventh convolution of A001045(n+1) (generalized (1,2)-Fibonacci), n>=0, with itself.

The programs for A073377, the canonical program `A073377.P1255770531676896881` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073377 has offset 0).

The definition of A073377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073377.P1255770531676896881

`∑{#}[floor(n/2), C(n-#+7, 7)*C(n-#, #)*2^#]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073377

/-- `∑{#}[floor(n/2), C(n-#+7, 7)*C(n-#, #)*2^#]` -/
def P1255770531676896881.Spec : Prop :=
  ∀ n, (P1255770531676896881.a n : ℤ) = A073377 n

theorem P1255770531676896881.correct : P1255770531676896881.Spec := by
  intro n
  simp only [A073377]

end A073377

/-! ## A073377.P5542040008852933756

`A073370(eq[7, A002262(n)])`
-/

namespace A073377.P5542040008852933756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073377.P5542040008852933756

namespace A073377

/-- `A073370(eq[7, A002262(n)])` -/
def P5542040008852933756.Spec : Prop :=
  ∀ n, P5542040008852933756.a n = A073377 n

end A073377

/-! ## A073377.P9573460649815894476

`A073370(A000096(n+6)+8)`
-/

namespace A073377.P9573460649815894476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A000096 (n + 6) + 8).toNat

end

end A073377.P9573460649815894476

namespace A073377

/-- `A073370(A000096(n+6)+8)` -/
def P9573460649815894476.Spec : Prop :=
  ∀ n, P9573460649815894476.a n = A073377 n

end A073377

/-! ## A073377.P14626598810094071830

`A073370(eq[7, A144328(n+1)])`
-/

namespace A073377.P14626598810094071830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073377.P14626598810094071830

namespace A073377

/-- `A073370(eq[7, A144328(n+1)])` -/
def P14626598810094071830.Spec : Prop :=
  ∀ n, P14626598810094071830.a n = A073377 n

end A073377

/-! ## A073377.P3691517148564485438

`A073370(eq[8, A002260(n+1)])`
-/

namespace A073377.P3691517148564485438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073377.P3691517148564485438

namespace A073377

/-- `A073370(eq[8, A002260(n+1)])` -/
def P3691517148564485438.Spec : Prop :=
  ∀ n, P3691517148564485438.a n = A073377 n

end A073377

/-! ## A073377.P18092709710787030903

`A073370(A000217(n+8)-(n+1))`
-/

namespace A073377.P18092709710787030903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A000217 (n + 8) - (n + 1 : ℤ)).toNat

end

end A073377.P18092709710787030903

namespace A073377

/-- `A073370(A000217(n+8)-(n+1))` -/
def P18092709710787030903.Spec : Prop :=
  ∀ n, P18092709710787030903.a n = A073377 n

end A073377

/-! ## A073377.P7988140040170780544

`A073370(A155212(n+5)-2*(n+1))`
-/

namespace A073377.P7988140040170780544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A155212 (n + 5) - (2 * (n + 1) : ℤ)).toNat

end

end A073377.P7988140040170780544

namespace A073377

/-- `A073370(A155212(n+5)-2*(n+1))` -/
def P7988140040170780544.Spec : Prop :=
  ∀ n, P7988140040170780544.a n = A073377 n

end A073377

/-! ## A073377.P4884122411581686096

`A073370((A000217(n+7)+7)%A318527(n+1))`
-/

namespace A073377.P4884122411581686096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (Int.tmod (A000217 (n + 7) + 7) (A318527 (n + 1))).toNat

end

end A073377.P4884122411581686096

namespace A073377

/-- `A073370((A000217(n+7)+7)%A318527(n+1))` -/
def P4884122411581686096.Spec : Prop :=
  ∀ n, P4884122411581686096.a n = A073377 n

end A073377

/-!
# A073378: Eighth convolution of A001045(n+1) (generalized (1,2)-Fibonacci), n>=0, with itself.

The programs for A073378, the canonical program `A073378.P71706502824063187` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073378 has offset 0).

The definition of A073378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073378.P71706502824063187

`∑{#}[floor(n/2), C(n-#+8, 8)*C(n-#, #)*2^#]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073378

/-- `∑{#}[floor(n/2), C(n-#+8, 8)*C(n-#, #)*2^#]` -/
def P71706502824063187.Spec : Prop :=
  ∀ n, (P71706502824063187.a n : ℤ) = A073378 n

theorem P71706502824063187.correct : P71706502824063187.Spec := by
  intro n
  simp only [A073378]

end A073378

/-! ## A073378.P3450776826007061512

`A073370(eq[8, A002262(n)])`
-/

namespace A073378.P3450776826007061512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073378.P3450776826007061512

namespace A073378

/-- `A073370(eq[8, A002262(n)])` -/
def P3450776826007061512.Spec : Prop :=
  ∀ n, P3450776826007061512.a n = A073378 n

end A073378

/-! ## A073378.P7108025482232495099

`A073370(A000217(n+8)+8)`
-/

namespace A073378.P7108025482232495099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A000217 (n + 8) + 8).toNat

end

end A073378.P7108025482232495099

namespace A073378

/-- `A073370(A000217(n+8)+8)` -/
def P7108025482232495099.Spec : Prop :=
  ∀ n, P7108025482232495099.a n = A073378 n

end A073378

/-! ## A073378.P11741922945740419670

`A073370(eq[8, A144328(n+1)])`
-/

namespace A073378.P11741922945740419670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073378.P11741922945740419670

namespace A073378

/-- `A073370(eq[8, A144328(n+1)])` -/
def P11741922945740419670.Spec : Prop :=
  ∀ n, P11741922945740419670.a n = A073378 n

end A073378

/-! ## A073378.P11255412216848165519

`A073370(eq[9, A002260(n+1)])`
-/

namespace A073378.P11255412216848165519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073378.P11255412216848165519

namespace A073378

/-- `A073370(eq[9, A002260(n+1)])` -/
def P11255412216848165519.Spec : Prop :=
  ∀ n, P11255412216848165519.a n = A073378 n

end A073378

/-! ## A073378.P3895041362349542017

`A073370(A167614(n+8)-(n+4))`
-/

namespace A073378.P3895041362349542017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A167614 (n + 8) - (n + 4 : ℤ)).toNat

end

end A073378.P3895041362349542017

namespace A073378

/-- `A073370(A167614(n+8)-(n+4))` -/
def P3895041362349542017.Spec : Prop :=
  ∀ n, P3895041362349542017.a n = A073378 n

end A073378

/-!
# A073379: Ninth convolution of A001045(n+1) (generalized (1,2)-Fibonacci), n>=0, with itself.

The programs for A073379, the canonical program `A073379.P9934540884171808282` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073379 has offset 0).

The definition of A073379 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073379.P9934540884171808282

`∑{#}[floor(n/2), C(n-#+9, 9)*C(n-#, #)*2^#]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073379

/-- `∑{#}[floor(n/2), C(n-#+9, 9)*C(n-#, #)*2^#]` -/
def P9934540884171808282.Spec : Prop :=
  ∀ n, (P9934540884171808282.a n : ℤ) = A073379 n

theorem P9934540884171808282.correct : P9934540884171808282.Spec := by
  intro n
  simp only [A073379]

end A073379

/-! ## A073379.P16907806570580107103

`A073370(eq[9, A002262(n)])`
-/

namespace A073379.P16907806570580107103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073379.P16907806570580107103

namespace A073379

/-- `A073370(eq[9, A002262(n)])` -/
def P16907806570580107103.Spec : Prop :=
  ∀ n, P16907806570580107103.a n = A073379 n

end A073379

/-! ## A073379.P5984553060376309165

`A073370(A167614(n+8)+6)`
-/

namespace A073379.P5984553060376309165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A167614 (n + 8) + 6).toNat

end

end A073379.P5984553060376309165

namespace A073379

/-- `A073370(A167614(n+8)+6)` -/
def P5984553060376309165.Spec : Prop :=
  ∀ n, P5984553060376309165.a n = A073379 n

end A073379

/-! ## A073379.P14023956970702024146

`A073370(A000096(n+8)+10)`
-/

namespace A073379.P14023956970702024146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A000096 (n + 8) + 10).toNat

end

end A073379.P14023956970702024146

namespace A073379

/-- `A073370(A000096(n+8)+10)` -/
def P14023956970702024146.Spec : Prop :=
  ∀ n, P14023956970702024146.a n = A073379 n

end A073379

/-! ## A073379.P14522926353019062626

`A073370(eq[9, A144328(n+1)])`
-/

namespace A073379.P14522926353019062626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073379.P14522926353019062626

namespace A073379

/-- `A073370(eq[9, A144328(n+1)])` -/
def P14522926353019062626.Spec : Prop :=
  ∀ n, P14522926353019062626.a n = A073379 n

end A073379

/-! ## A073379.P12633773716631751758

`A073370(eq[10, A002260(n+1)])`
-/

namespace A073379.P12633773716631751758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073379.P12633773716631751758

namespace A073379

/-- `A073370(eq[10, A002260(n+1)])` -/
def P12633773716631751758.Spec : Prop :=
  ∀ n, P12633773716631751758.a n = A073379 n

end A073379

/-!
# A073380: Third convolution of A000129(n+1) (generalized (2,1)-Fibonacci, called Pell numbers), n>=0, with itself.

The programs for A073380, the canonical program `A073380.P15521168358084917670` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073380 has offset 0).

The definition of A073380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073380.P2271876605086161978

`∑{#}[floor(n/2), 2^(n-2*#)*C(n-#+3, 3)*C(n-#, #)]`
-/

namespace A073380.P2271876605086161978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose ((n : ℤ) - (k : ℤ) + 3).toNat 3 : ℚ) * (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℚ)

end

end A073380.P2271876605086161978

namespace A073380

/-- `∑{#}[floor(n/2), 2^(n-2*#)*C(n-#+3, 3)*C(n-#, #)]` -/
def P2271876605086161978.Spec : Prop :=
  ∀ n, P2271876605086161978.a n = (A073380 n : ℚ)

end A073380

/-! ## A073380.P15521168358084917670

`ogf(1/(1-8x+20x^2-8x^3-26x^4+8x^5+20x^6+8x^7+x^8))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073380

/-- `ogf(1/(1-8x+20x^2-8x^3-26x^4+8x^5+20x^6+8x^7+x^8))` -/
def P15521168358084917670.Spec : Prop :=
  ∀ n, P15521168358084917670.a n = A073380 n

theorem P15521168358084917670.correct : P15521168358084917670.Spec := by
  intro n
  simp only [A073380]

end A073380

/-! ## A073380.P17236384958808292089

`A054456(A167614(n+2))`
-/

namespace A073380.P17236384958808292089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A167614 (n + 2)).toNat

end

end A073380.P17236384958808292089

namespace A073380

/-- `A054456(A167614(n+2))` -/
def P17236384958808292089.Spec : Prop :=
  ∀ n, P17236384958808292089.a n = A073380 n

end A073380

/-! ## A073380.P956062996923461550

`A054456(A052905(n)+8)`
-/

namespace A073380.P956062996923461550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A052905 n + 8).toNat

end

end A073380.P956062996923461550

namespace A073380

/-- `A054456(A052905(n)+8)` -/
def P956062996923461550.Spec : Prop :=
  ∀ n, P956062996923461550.a n = A073380 n

end A073380

/-! ## A073380.P14144015473672128804

`A054456(eq[3, A002262(n)])`
-/

namespace A073380.P14144015473672128804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073380.P14144015473672128804

namespace A073380

/-- `A054456(eq[3, A002262(n)])` -/
def P14144015473672128804.Spec : Prop :=
  ∀ n, P14144015473672128804.a n = A073380 n

end A073380

/-! ## A073380.P1256457818285525293

`A054456(A133263(n+3)+1)`
-/

namespace A073380.P1256457818285525293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A133263 (n + 3) + 1).toNat

end

end A073380.P1256457818285525293

namespace A073380

/-- `A054456(A133263(n+3)+1)` -/
def P1256457818285525293.Spec : Prop :=
  ∀ n, P1256457818285525293.a n = A073380 n

end A073380

/-! ## A073380.P10473653163113834106

`A054456(A000217(n+3)+3)`
-/

namespace A073380.P10473653163113834106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A000217 (n + 3) + 3).toNat

end

end A073380.P10473653163113834106

namespace A073380

/-- `A054456(A000217(n+3)+3)` -/
def P10473653163113834106.Spec : Prop :=
  ∀ n, P10473653163113834106.a n = A073380 n

end A073380

/-! ## A073380.P961961022543894814

`A054456(A166136(n+2)-3)`
-/

namespace A073380.P961961022543894814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A166136 (n + 2) - 3).toNat

end

end A073380.P961961022543894814

namespace A073380

/-- `A054456(A166136(n+2)-3)` -/
def P961961022543894814.Spec : Prop :=
  ∀ n, P961961022543894814.a n = A073380 n

end A073380

/-! ## A073380.P17462933033169336235

`A054456(A034856(n+2)+5)`
-/

namespace A073380.P17462933033169336235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A034856 (n + 2) + 5).toNat

end

end A073380.P17462933033169336235

namespace A073380

/-- `A054456(A034856(n+2)+5)` -/
def P17462933033169336235.Spec : Prop :=
  ∀ n, P17462933033169336235.a n = A073380 n

end A073380

/-! ## A073380.P6362027817866799331

`A054456(eq[4, A002260(n+1)])`
-/

namespace A073380.P6362027817866799331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073380.P6362027817866799331

namespace A073380

/-- `A054456(eq[4, A002260(n+1)])` -/
def P6362027817866799331.Spec : Prop :=
  ∀ n, P6362027817866799331.a n = A073380 n

end A073380

/-! ## A073380.P7210227522232690892

`A054456(eq[1, A144328(n+1)-2])`
-/

namespace A073380.P7210227522232690892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073380.P7210227522232690892

namespace A073380

/-- `A054456(eq[1, A144328(n+1)-2])` -/
def P7210227522232690892.Spec : Prop :=
  ∀ n, P7210227522232690892.a n = A073380 n

end A073380

/-! ## A073380.P14666200975056160193

`A112899(Δ[A023551(n+2)]+2)`
-/

namespace A073380.P14666200975056160193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112899 (f1 (n + 1) - f1 n + 2).toNat

end

end A073380.P14666200975056160193

namespace A073380

/-- `A112899(Δ[A023551(n+2)]+2)` -/
def P14666200975056160193.Spec : Prop :=
  ∀ n, P14666200975056160193.a n = A073380 n

end A073380

/-!
# A073381: Fourth convolution of A000129(n+1) (generalized (2,1)-Fibonacci, called Pell numbers), n>=0, with itself.

The programs for A073381, the canonical program `A073381.P6923051064056288804` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073381 has offset 0).

The definition of A073381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073381.P14469165702869338898

`∑{#}[floor(n/2), 2^(n-2*#)*C(n-#+4, 4)*C(n-#, #)]`
-/

namespace A073381.P14469165702869338898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose ((n : ℤ) - (k : ℤ) + 4).toNat 4 : ℚ) * (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℚ)

end

end A073381.P14469165702869338898

namespace A073381

/-- `∑{#}[floor(n/2), 2^(n-2*#)*C(n-#+4, 4)*C(n-#, #)]` -/
def P14469165702869338898.Spec : Prop :=
  ∀ n, P14469165702869338898.a n = (A073381 n : ℚ)

end A073381

/-! ## A073381.P6923051064056288804

`ogf(1/(1-10x+35x^2-40x^3-30x^4+68x^5+30x^6-40x^7-35x^8-10x^9-x^10))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073381

/-- `ogf(1/(1-10x+35x^2-40x^3-30x^4+68x^5+30x^6-40x^7-35x^8-10x^9-x^10))` -/
def P6923051064056288804.Spec : Prop :=
  ∀ n, P6923051064056288804.a n = A073381 n

theorem P6923051064056288804.correct : P6923051064056288804.Spec := by
  intro n
  simp only [A073381]

end A073381

/-! ## A073381.P17247423014903729674

`A054456(∑[n+4]+10)`
-/

namespace A073381.P17247423014903729674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A073381.P17247423014903729674

namespace A073381

/-- `A054456(∑[n+4]+10)` -/
def P17247423014903729674.Spec : Prop :=
  ∀ n, P17247423014903729674.a n = A073381 n

end A073381

/-! ## A073381.P10834921939194931955

`xor(1, xor(1, A054456(A000096(n+3)+5)))`
-/

namespace A073381.P10834921939194931955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A054456 (A000096 (n + 3) + 5).toNat))

end

end A073381.P10834921939194931955

namespace A073381

/-- `xor(1, xor(1, A054456(A000096(n+3)+5)))` -/
def P10834921939194931955.Spec : Prop :=
  ∀ n, P10834921939194931955.a n = A073381 n

end A073381

/-! ## A073381.P17203968923373762613

`A054456(A000096(n+3)+5)^(A000040(n+1)%2)`
-/

namespace A073381.P17203968923373762613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054456 (A000096 (n + 3) + 5).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A073381.P17203968923373762613

namespace A073381

/-- `A054456(A000096(n+3)+5)^(A000040(n+1)%2)` -/
def P17203968923373762613.Spec : Prop :=
  ∀ n, P17203968923373762613.a n = (A073381 n : ℚ)

end A073381

/-! ## A073381.P13544834757360463128

`A054456(A000096(n+3)+5)/A008683(A005117(n+1))²`
-/

namespace A073381.P13544834757360463128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054456 (A000096 (n + 3) + 5).toNat : ℚ) / (A008683 (A005117 (n + 1)).toNat ^ 2 : ℚ)

end

end A073381.P13544834757360463128

namespace A073381

/-- `A054456(A000096(n+3)+5)/A008683(A005117(n+1))²` -/
def P13544834757360463128.Spec : Prop :=
  ∀ n, P13544834757360463128.a n = (A073381 n : ℚ)

end A073381

/-! ## A073381.P10704324031993517931

`A112899(A052905(n+6))`
-/

namespace A073381.P10704324031993517931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112899 (A052905 (n + 6)).toNat

end

end A073381.P10704324031993517931

namespace A073381

/-- `A112899(A052905(n+6))` -/
def P10704324031993517931.Spec : Prop :=
  ∀ n, P10704324031993517931.a n = A073381 n

end A073381

/-! ## A073381.P14040523318244008017

`A054456(A000096(n+3)+5)*A066060(A023205(n+1))`
-/

namespace A073381.P14040523318244008017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A000096 (n + 3) + 5).toNat * A066060 (A023205 (n + 1)).toNat

end

end A073381.P14040523318244008017

namespace A073381

/-- `A054456(A000096(n+3)+5)*A066060(A023205(n+1))` -/
def P14040523318244008017.Spec : Prop :=
  ∀ n, P14040523318244008017.a n = A073381 n

end A073381

/-!
# A073382: Fifth convolution of A000129(n+1) (generalized (2,1)-Fibonacci, called Pell numbers), n>=0, with itself.

The programs for A073382, the canonical program `A073382.P6044285591824295624` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073382 has offset 0).

The definition of A073382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073382.P6044285591824295624

`∑{#}[floor(n/2), 2^(n-2*#)*C(n-#+5, 5)*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073382

/-- `∑{#}[floor(n/2), 2^(n-2*#)*C(n-#+5, 5)*C(n-#, #)]` -/
def P6044285591824295624.Spec : Prop :=
  ∀ n, P6044285591824295624.a n = (A073382 n : ℚ)

end A073382

/-! ## A073382.P16183822195290784060

`A054456(A167499(n+4))`
-/

namespace A073382.P16183822195290784060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A167499 (n + 4)).toNat

end

end A073382.P16183822195290784060

namespace A073382

/-- `A054456(A167499(n+4))` -/
def P16183822195290784060.Spec : Prop :=
  ∀ n, P16183822195290784060.a n = A073382 n

end A073382

/-! ## A073382.P8331991261684366138

`A054456(A166136(n+4)-1)`
-/

namespace A073382.P8331991261684366138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A166136 (n + 4) - 1).toNat

end

end A073382.P8331991261684366138

namespace A073382

/-- `A054456(A166136(n+4)-1)` -/
def P8331991261684366138.Spec : Prop :=
  ∀ n, P8331991261684366138.a n = A073382 n

end A073382

/-! ## A073382.P476086809712878555

`A054456(A000096(n+4)+6)`
-/

namespace A073382.P476086809712878555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A000096 (n + 4) + 6).toNat

end

end A073382.P476086809712878555

namespace A073382

/-- `A054456(A000096(n+4)+6)` -/
def P476086809712878555.Spec : Prop :=
  ∀ n, P476086809712878555.a n = A073382 n

end A073382

/-! ## A073382.P7497831603510060668

`A054456(A000217(n+5)+5)`
-/

namespace A073382.P7497831603510060668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A000217 (n + 5) + 5).toNat

end

end A073382.P7497831603510060668

namespace A073382

/-- `A054456(A000217(n+5)+5)` -/
def P7497831603510060668.Spec : Prop :=
  ∀ n, P7497831603510060668.a n = A073382 n

end A073382

/-! ## A073382.P10479739485320588546

`A054456(A077169(n+5)+n+5)`
-/

namespace A073382.P10479739485320588546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A077169 (n + 5) + (n + 5 : ℤ)).toNat

end

end A073382.P10479739485320588546

namespace A073382

/-- `A054456(A077169(n+5)+n+5)` -/
def P10479739485320588546.Spec : Prop :=
  ∀ n, P10479739485320588546.a n = A073382 n

end A073382

/-! ## A073382.P10679627565740752930

`A054456(eq[7, A004736(n+1)]-(2*n+1))`
-/

namespace A073382.P10679627565740752930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (2 * n + 1))

end

end A073382.P10679627565740752930

namespace A073382

/-- `A054456(eq[7, A004736(n+1)]-(2*n+1))` -/
def P10679627565740752930.Spec : Prop :=
  ∀ n, P10679627565740752930.a n = A073382 n

end A073382

/-! ## A073382.P291499357495479139

`record[A112899(A055999(n))]`
-/

namespace A073382.P291499357495479139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112899 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073382.P291499357495479139

namespace A073382

/-- `record[A112899(A055999(n))]` -/
def P291499357495479139.Spec : Prop :=
  ∀ n, P291499357495479139.a n = A073382 n

end A073382

/-! ## A073382.P6940187078212363124

`record[A112899(A055998(n)+n)]`
-/

namespace A073382.P6940187078212363124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112899 (A055998 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073382.P6940187078212363124

namespace A073382

/-- `record[A112899(A055998(n)+n)]` -/
def P6940187078212363124.Spec : Prop :=
  ∀ n, P6940187078212363124.a n = A073382 n

end A073382

/-!
# A073383: Sixth convolution of A000129(n+1) (generalized (2,1)-Fibonacci, called Pell numbers), n>=0, with itself.

The programs for A073383, the canonical program `A073383.P8986226403357908799` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073383 has offset 0).

The definition of A073383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073383.P8986226403357908799

`∑{#}[floor(n/2), 2^(n-2*#)*C(n-#+6, 6)*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073383

/-- `∑{#}[floor(n/2), 2^(n-2*#)*C(n-#+6, 6)*C(n-#, #)]` -/
def P8986226403357908799.Spec : Prop :=
  ∀ n, P8986226403357908799.a n = (A073383 n : ℚ)

end A073383

/-! ## A073383.P6045325514221265913

`A054456(eq[6, A002262(n)])`
-/

namespace A073383.P6045325514221265913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073383.P6045325514221265913

namespace A073383

/-- `A054456(eq[6, A002262(n)])` -/
def P6045325514221265913.Spec : Prop :=
  ∀ n, P6045325514221265913.a n = A073383 n

end A073383

/-! ## A073383.P5205270738766749316

`A054456(A000217(n+6)+6)`
-/

namespace A073383.P5205270738766749316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A000217 (n + 6) + 6).toNat

end

end A073383.P5205270738766749316

namespace A073383

/-- `A054456(A000217(n+6)+6)` -/
def P5205270738766749316.Spec : Prop :=
  ∀ n, P5205270738766749316.a n = A073383 n

end A073383

/-! ## A073383.P6918716616134672993

`A054456(A055998(n+4)+9)`
-/

namespace A073383.P6918716616134672993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A055998 (n + 4) + 9).toNat

end

end A073383.P6918716616134672993

namespace A073383

/-- `A054456(A055998(n+4)+9)` -/
def P6918716616134672993.Spec : Prop :=
  ∀ n, P6918716616134672993.a n = A073383 n

end A073383

/-! ## A073383.P11266088858724044539

`A054456(eq[7, A002260(n+1)])`
-/

namespace A073383.P11266088858724044539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073383.P11266088858724044539

namespace A073383

/-- `A054456(eq[7, A002260(n+1)])` -/
def P11266088858724044539.Spec : Prop :=
  ∀ n, P11266088858724044539.a n = A073383 n

end A073383

/-! ## A073383.P4503859724215374842

`A054456(Δ[A055809(n+5)]+10)`
-/

namespace A073383.P4503859724215374842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055809 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (f1 (n + 1) - f1 n + 10).toNat

end

end A073383.P4503859724215374842

namespace A073383

/-- `A054456(Δ[A055809(n+5)]+10)` -/
def P4503859724215374842.Spec : Prop :=
  ∀ n, P4503859724215374842.a n = A073383 n

end A073383

/-! ## A073383.P16376973479026096868

`A054456(A000124(n+7)-(n+2))`
-/

namespace A073383.P16376973479026096868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A000124 (n + 7) - (n + 2 : ℤ)).toNat

end

end A073383.P16376973479026096868

namespace A073383

/-- `A054456(A000124(n+7)-(n+2))` -/
def P16376973479026096868.Spec : Prop :=
  ∀ n, P16376973479026096868.a n = A073383 n

end A073383

/-! ## A073383.P11996676506070866799

`A054456(A161680(n+9)-8-A005408(n))`
-/

namespace A073383.P11996676506070866799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A161680 (n + 9) - 8 - A005408 n).toNat

end

end A073383.P11996676506070866799

namespace A073383

/-- `A054456(A161680(n+9)-8-A005408(n))` -/
def P11996676506070866799.Spec : Prop :=
  ∀ n, P11996676506070866799.a n = A073383 n

end A073383

/-!
# A073384: Seventh convolution of A000129(n+1) (generalized (2,1)-Fibonacci, called Pell numbers), n>=0, with itself.

The programs for A073384, the canonical program `A073384.P9363145549304982229` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073384 has offset 0).

The definition of A073384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073384.P9363145549304982229

`∑{#}[floor(n/2), 2^(n-2*#)*C(n-#+7, 7)*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073384

/-- `∑{#}[floor(n/2), 2^(n-2*#)*C(n-#+7, 7)*C(n-#, #)]` -/
def P9363145549304982229.Spec : Prop :=
  ∀ n, P9363145549304982229.a n = (A073384 n : ℚ)

end A073384

/-! ## A073384.P10548421732086163525

`A054456(eq[7, A002262(n)])`
-/

namespace A073384.P10548421732086163525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073384.P10548421732086163525

namespace A073384

/-- `A054456(eq[7, A002262(n)])` -/
def P10548421732086163525.Spec : Prop :=
  ∀ n, P10548421732086163525.a n = A073384 n

end A073384

/-! ## A073384.P6927955328486720945

`A054456(A000124(n+7)+6)`
-/

namespace A073384.P6927955328486720945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A000124 (n + 7) + 6).toNat

end

end A073384.P6927955328486720945

namespace A073384

/-- `A054456(A000124(n+7)+6)` -/
def P6927955328486720945.Spec : Prop :=
  ∀ n, P6927955328486720945.a n = A073384 n

end A073384

/-! ## A073384.P6735637629263107534

`A054456(eq[7, A144328(n+1)])`
-/

namespace A073384.P6735637629263107534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073384.P6735637629263107534

namespace A073384

/-- `A054456(eq[7, A144328(n+1)])` -/
def P6735637629263107534.Spec : Prop :=
  ∀ n, P6735637629263107534.a n = A073384 n

end A073384

/-! ## A073384.P6045408470145547979

`A054456(eq[8, A002260(n+1)])`
-/

namespace A073384.P6045408470145547979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073384.P6045408470145547979

namespace A073384

/-- `A054456(eq[8, A002260(n+1)])` -/
def P6045408470145547979.Spec : Prop :=
  ∀ n, P6045408470145547979.a n = A073384 n

end A073384

/-! ## A073384.P17739828173654131685

`A054456(eq[8, A135223(n+1)])`
-/

namespace A073384.P17739828173654131685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073384.P17739828173654131685

namespace A073384

/-- `A054456(eq[8, A135223(n+1)])` -/
def P17739828173654131685.Spec : Prop :=
  ∀ n, P17739828173654131685.a n = A073384 n

end A073384

/-! ## A073384.P7751136379918691309

`A054456(A000217(n+8)-(n+1))`
-/

namespace A073384.P7751136379918691309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A000217 (n + 8) - (n + 1 : ℤ)).toNat

end

end A073384.P7751136379918691309

namespace A073384

/-- `A054456(A000217(n+8)-(n+1))` -/
def P7751136379918691309.Spec : Prop :=
  ∀ n, P7751136379918691309.a n = A073384 n

end A073384

/-!
# A073385: Eighth convolution of A000129(n+1) (generalized (2,1)-Fibonacci, called Pell numbers), n>=0, with itself.

The programs for A073385, the canonical program `A073385.P1296926708209787416` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073385 has offset 0).

The definition of A073385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073385.P1296926708209787416

`∑{#}[floor(n/2), 2^(n-2*#)*C(n-#+8, 8)*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073385

/-- `∑{#}[floor(n/2), 2^(n-2*#)*C(n-#+8, 8)*C(n-#, #)]` -/
def P1296926708209787416.Spec : Prop :=
  ∀ n, P1296926708209787416.a n = (A073385 n : ℚ)

end A073385

/-! ## A073385.P14464047753462793025

`A054456(eq[8, A002262(n)])`
-/

namespace A073385.P14464047753462793025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073385.P14464047753462793025

namespace A073385

/-- `A054456(eq[8, A002262(n)])` -/
def P14464047753462793025.Spec : Prop :=
  ∀ n, P14464047753462793025.a n = A073385 n

end A073385

/-! ## A073385.P9028297414997373860

`A054456(eq[8, A130270(n+1)])`
-/

namespace A073385.P9028297414997373860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073385.P9028297414997373860

namespace A073385

/-- `A054456(eq[8, A130270(n+1)])` -/
def P9028297414997373860.Spec : Prop :=
  ∀ n, P9028297414997373860.a n = A073385 n

end A073385

/-! ## A073385.P9328937519857720444

`A054456(eq[9, A002260(n+1)])`
-/

namespace A073385.P9328937519857720444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073385.P9328937519857720444

namespace A073385

/-- `A054456(eq[9, A002260(n+1)])` -/
def P9328937519857720444.Spec : Prop :=
  ∀ n, P9328937519857720444.a n = A073385 n

end A073385

/-! ## A073385.P3322652524681861397

`A054456(eq[9, A135223(n+1)])`
-/

namespace A073385.P3322652524681861397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073385.P3322652524681861397

namespace A073385

/-- `A054456(eq[9, A135223(n+1)])` -/
def P3322652524681861397.Spec : Prop :=
  ∀ n, P3322652524681861397.a n = A073385 n

end A073385

/-! ## A073385.P12146111148790691910

`A054456(eq[10, A131818(n+2)])`
-/

namespace A073385.P12146111148790691910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073385.P12146111148790691910

namespace A073385

/-- `A054456(eq[10, A131818(n+2)])` -/
def P12146111148790691910.Spec : Prop :=
  ∀ n, P12146111148790691910.a n = A073385 n

end A073385

/-!
# A073386: Ninth convolution of A000129(n+1) (generalized (2,1)-Fibonacci, called Pell numbers), n>=0, with itself.

The programs for A073386, the canonical program `A073386.P2305257312676221356` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073386 has offset 0).

The definition of A073386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073386.P2305257312676221356

`∑{#}[floor(n/2), 2^(n-2*#)*C(n-#+9, 9)*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073386

/-- `∑{#}[floor(n/2), 2^(n-2*#)*C(n-#+9, 9)*C(n-#, #)]` -/
def P2305257312676221356.Spec : Prop :=
  ∀ n, P2305257312676221356.a n = (A073386 n : ℚ)

end A073386

/-! ## A073386.P13949067915378666968

`A054456(eq[9, A002262(n)])`
-/

namespace A073386.P13949067915378666968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073386.P13949067915378666968

namespace A073386

/-- `A054456(eq[9, A002262(n)])` -/
def P13949067915378666968.Spec : Prop :=
  ∀ n, P13949067915378666968.a n = A073386 n

end A073386

/-! ## A073386.P11361350474298906636

`A054456(A000096(n+8)+10)`
-/

namespace A073386.P11361350474298906636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A000096 (n + 8) + 10).toNat

end

end A073386.P11361350474298906636

namespace A073386

/-- `A054456(A000096(n+8)+10)` -/
def P11361350474298906636.Spec : Prop :=
  ∀ n, P11361350474298906636.a n = A073386 n

end A073386

/-! ## A073386.P10680209434283181896

`A054456(A000217(n+9)+9)`
-/

namespace A073386.P10680209434283181896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A000217 (n + 9) + 9).toNat

end

end A073386.P10680209434283181896

namespace A073386

/-- `A054456(A000217(n+9)+9)` -/
def P10680209434283181896.Spec : Prop :=
  ∀ n, P10680209434283181896.a n = A073386 n

end A073386

/-! ## A073386.P17107275786730270530

`A054456(eq[9, A144328(n+1)])`
-/

namespace A073386.P17107275786730270530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073386.P17107275786730270530

namespace A073386

/-- `A054456(eq[9, A144328(n+1)])` -/
def P17107275786730270530.Spec : Prop :=
  ∀ n, P17107275786730270530.a n = A073386 n

end A073386

/-! ## A073386.P4135575584638254238

`A054456(eq[10, A002260(n+1)])`
-/

namespace A073386.P4135575584638254238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073386.P4135575584638254238

namespace A073386

/-- `A054456(eq[10, A002260(n+1)])` -/
def P4135575584638254238.Spec : Prop :=
  ∀ n, P4135575584638254238.a n = A073386 n

end A073386

/-! ## A073386.P16905982634658971497

`A054456(eq[11, A131818(n+2)])`
-/

namespace A073386.P16905982634658971497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073386.P16905982634658971497

namespace A073386

/-- `A054456(eq[11, A131818(n+2)])` -/
def P16905982634658971497.Spec : Prop :=
  ∀ n, P16905982634658971497.a n = A073386 n

end A073386

/-!
# A073387: Convolution triangle of A002605(n) (generalized (2,2)-Fibonacci), n>=0.

The programs for A073387, the canonical program `A073387.P16080239365935366239` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073387 has offset 0).

The definition of A073387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073387.P16080239365935366239

`T(n-1,k-1)+2*(T(n-2,k)+T(n-1,k))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073387

/-- `T(n-1,k-1)+2*(T(n-2,k)+T(n-1,k))` -/
def P16080239365935366239.Spec : Prop :=
  ∀ n, (P16080239365935366239.a n : ℤ) = A073387 n

theorem P16080239365935366239.correct : P16080239365935366239.Spec := by
  intro n
  simp only [A073387]

end A073387

/-! ## A073387.P1233194969051421232

`A208759(∑[char[∑[n]]]²-n)`
-/

namespace A073387.P1233194969051421232
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A073387.P1233194969051421232

namespace A073387

/-- `A208759(∑[char[∑[n]]]²-n)` -/
def P1233194969051421232.Spec : Prop :=
  ∀ n, P1233194969051421232.a n = A073387 n

end A073387

/-! ## A073387.P6576323597603608796

`xor(4, xor(4, A208759(A038722(n+1))))`
-/

namespace A073387.P6576323597603608796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (Int.xor 4 (A208759 (A038722 (n + 1)).toNat))

end

end A073387.P6576323597603608796

namespace A073387

/-- `xor(4, xor(4, A208759(A038722(n+1))))` -/
def P6576323597603608796.Spec : Prop :=
  ∀ n, P6576323597603608796.a n = A073387 n

end A073387

/-! ## A073387.P14111774550774562892

`abs(1-A208759(A061579(n)+1))+1`
-/

namespace A073387.P14111774550774562892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A208759 (A061579 n + 1).toNat| + 1

end

end A073387.P14111774550774562892

namespace A073387

/-- `abs(1-A208759(A061579(n)+1))+1` -/
def P14111774550774562892.Spec : Prop :=
  ∀ n, P14111774550774562892.a n = A073387 n

end A073387

/-! ## A073387.P6748601163118312479

`abs(A208759(A114327(n)+1+n)-1)+1`
-/

namespace A073387.P6748601163118312479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208759 (A114327 n + 1 + (n : ℤ)).toNat - 1| + 1

end

end A073387.P6748601163118312479

namespace A073387

/-- `abs(A208759(A114327(n)+1+n)-1)+1` -/
def P6748601163118312479.Spec : Prop :=
  ∀ n, P6748601163118312479.a n = A073387 n

end A073387

/-! ## A073387.P78076960540559838

`gcd(A000038(n), A208759(A038722(n+1)))`
-/

namespace A073387.P78076960540559838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A208759 (A038722 (n + 1)).toNat)

end

end A073387.P78076960540559838

namespace A073387

/-- `gcd(A000038(n), A208759(A038722(n+1)))` -/
def P78076960540559838.Spec : Prop :=
  ∀ n, (P78076960540559838.a n : ℤ) = A073387 n

end A073387

/-! ## A073387.P4509465536646428529

`A208759(A061579(n)+1)^(A000040(n+1)%2)`
-/

namespace A073387.P4509465536646428529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208759 (A061579 n + 1).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A073387.P4509465536646428529

namespace A073387

/-- `A208759(A061579(n)+1)^(A000040(n+1)%2)` -/
def P4509465536646428529.Spec : Prop :=
  ∀ n, P4509465536646428529.a n = (A073387 n : ℚ)

end A073387

/-! ## A073387.P3079525327205151157

`A208759(A038722(n+1))%A001060(n)`
-/

namespace A073387.P3079525327205151157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208759 (A038722 (n + 1)).toNat) (A001060 n)

end

end A073387.P3079525327205151157

namespace A073387

/-- `A208759(A038722(n+1))%A001060(n)` -/
def P3079525327205151157.Spec : Prop :=
  ∀ n, P3079525327205151157.a n = A073387 n

end A073387

/-!
# A073388: Second column of the convolution triangle A073387(n+1, 1), for n >= 0.

The programs for A073388, the canonical program `A073388.P9861117509877092935` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073388 has offset 0).

The definition of A073388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073388.P17135192308225174069

`∑{#}[floor((n+2)/2), #*C(n-#+2, #)*2^(n-#+1)]`
-/

namespace A073388.P17135192308225174069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k * Nat.choose ((n : ℤ) - (k : ℤ) + 2).toNat k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) + 1 : ℤ)

end

end A073388.P17135192308225174069

namespace A073388

/-- `∑{#}[floor((n+2)/2), #*C(n-#+2, #)*2^(n-#+1)]` -/
def P17135192308225174069.Spec : Prop :=
  ∀ n, P17135192308225174069.a n = (A073388 n : ℚ)

end A073388

/-! ## A073388.P9861117509877092935

`ogf(1/(1-4x+8x^3+4x^4))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073388

/-- `ogf(1/(1-4x+8x^3+4x^4))` -/
def P9861117509877092935.Spec : Prop :=
  ∀ n, P9861117509877092935.a n = A073388 n

theorem P9861117509877092935.correct : P9861117509877092935.Spec := by
  intro n
  simp only [A073388]

end A073388

/-! ## A073388.P4151915120167892875

`∑{#}[n, (#+1)*2^#*C(#, n-#)]`
-/

namespace A073388.P4151915120167892875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1) * 2 ^ k * Nat.choose k ((n : ℤ) - (k : ℤ)).toNat

end

end A073388.P4151915120167892875

namespace A073388

/-- `∑{#}[n, (#+1)*2^#*C(#, n-#)]` -/
def P4151915120167892875.Spec : Prop :=
  ∀ n, (P4151915120167892875.a n : ℤ) = A073388 n

end A073388

/-! ## A073388.P8973410682006096948

`A109634(n+1)`
-/

namespace A073388.P8973410682006096948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109634 (n + 1)

end

end A073388.P8973410682006096948

namespace A073388

/-- `A109634(n+1)` -/
def P8973410682006096948.Spec : Prop :=
  ∀ n, P8973410682006096948.a n = A073388 n

end A073388

/-! ## A073388.P8490812497752353536

`record[A109634(abs(1-n))]`
-/

namespace A073388.P8490812497752353536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109634 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073388.P8490812497752353536

namespace A073388

/-- `record[A109634(abs(1-n))]` -/
def P8490812497752353536.Spec : Prop :=
  ∀ n, P8490812497752353536.a n = A073388 n

end A073388

/-! ## A073388.P12142272651863392813

`∑[(n+2)*∑[A026150(n)/2]]`
-/

namespace A073388.P12142272651863392813
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073388.P12142272651863392813

namespace A073388

/-- `∑[(n+2)*∑[A026150(n)/2]]` -/
def P12142272651863392813.Spec : Prop :=
  ∀ n, P12142272651863392813.a n = (A073388 n : ℚ)

end A073388

/-! ## A073388.P7469303510664939351

`∑[(n+2)*A002605(n+1)/2]`
-/

namespace A073388.P7469303510664939351
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((A002605 (n + 1) : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073388.P7469303510664939351

namespace A073388

/-- `∑[(n+2)*A002605(n+1)/2]` -/
def P7469303510664939351.Spec : Prop :=
  ∀ n, P7469303510664939351.a n = (A073388 n : ℚ)

end A073388

/-! ## A073388.P4874538266238944606

`∑[(A005665(n)+1)/2*(n+2)]`
-/

namespace A073388.P4874538266238944606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005665 n + 1 : ℚ) / 2 * (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073388.P4874538266238944606

namespace A073388

/-- `∑[(A005665(n)+1)/2*(n+2)]` -/
def P4874538266238944606.Spec : Prop :=
  ∀ n, P4874538266238944606.a n = (A073388 n : ℚ)

end A073388

/-! ## A073388.P7964275744772048951

`A073387(∑[n+1]+1)`
-/

namespace A073388.P7964275744772048951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073387 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A073388.P7964275744772048951

namespace A073388

/-- `A073387(∑[n+1]+1)` -/
def P7964275744772048951.Spec : Prop :=
  ∀ n, P7964275744772048951.a n = A073388 n

end A073388

/-! ## A073388.P10742844292836598905

`A118357(∑[n+1]+2)`
-/

namespace A073388.P10742844292836598905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118357 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A073388.P10742844292836598905

namespace A073388

/-- `A118357(∑[n+1]+2)` -/
def P10742844292836598905.Spec : Prop :=
  ∀ n, P10742844292836598905.a n = A073388 n

end A073388

/-! ## A073388.P8559754890881164634

`A208759(∑[n+2])`
-/

namespace A073388.P8559754890881164634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073388.P8559754890881164634

namespace A073388

/-- `A208759(∑[n+2])` -/
def P8559754890881164634.Spec : Prop :=
  ∀ n, P8559754890881164634.a n = A073388 n

end A073388

/-! ## A073388.P6329095466754524965

`A208758(∑[n+3]+2)`
-/

namespace A073388.P6329095466754524965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208758 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A073388.P6329095466754524965

namespace A073388

/-- `A208758(∑[n+3]+2)` -/
def P6329095466754524965.Spec : Prop :=
  ∀ n, P6329095466754524965.a n = A073388 n

end A073388

/-!
# A073389: Third column of the convolution triangle A073387(n+2, 2), for n >= 0.

The programs for A073389, the canonical program `A073389.P12340248138271554576` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073389 has offset 0).

The definition of A073389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073389.P9403333552242979105

`∑{#}[floor(n/2), C(n-#+2, 2)*C(n-#, #)*2^(n-#)]`
-/

namespace A073389.P9403333552242979105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ) + 2).toNat 2 * Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A073389.P9403333552242979105

namespace A073389

/-- `∑{#}[floor(n/2), C(n-#+2, 2)*C(n-#, #)*2^(n-#)]` -/
def P9403333552242979105.Spec : Prop :=
  ∀ n, P9403333552242979105.a n = (A073389 n : ℚ)

end A073389

/-! ## A073389.P12340248138271554576

`ogf(1/(1-6x+6x^2+16x^3-12x^4-24x^5-8x^6))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073389

/-- `ogf(1/(1-6x+6x^2+16x^3-12x^4-24x^5-8x^6))` -/
def P12340248138271554576.Spec : Prop :=
  ∀ n, P12340248138271554576.a n = A073389 n

theorem P12340248138271554576.correct : P12340248138271554576.Spec := by
  intro n
  simp only [A073389]

end A073389

/-! ## A073389.P4291577697441803350

`∑{#}[n, 2^#*C(#+2, 2)*C(#, n-#)]`
-/

namespace A073389.P4291577697441803350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 ^ k * Nat.choose (k + 2) 2 * Nat.choose k ((n : ℤ) - (k : ℤ)).toNat

end

end A073389.P4291577697441803350

namespace A073389

/-- `∑{#}[n, 2^#*C(#+2, 2)*C(#, n-#)]` -/
def P4291577697441803350.Spec : Prop :=
  ∀ n, (P4291577697441803350.a n : ℤ) = A073389 n

end A073389

/-! ## A073389.P15188036603537810710

`A073387(A167614(n+1)-1)`
-/

namespace A073389.P15188036603537810710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073387 (A167614 (n + 1) - 1).toNat

end

end A073389.P15188036603537810710

namespace A073389

/-- `A073387(A167614(n+1)-1)` -/
def P15188036603537810710.Spec : Prop :=
  ∀ n, P15188036603537810710.a n = A073389 n

end A073389

/-! ## A073389.P9867973944891429948

`A073387(A052905(n+1)-2*n)`
-/

namespace A073389.P9867973944891429948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073387 (A052905 (n + 1) - (2 * n : ℤ)).toNat

end

end A073389.P9867973944891429948

namespace A073389

/-- `A073387(A052905(n+1)-2*n)` -/
def P9867973944891429948.Spec : Prop :=
  ∀ n, P9867973944891429948.a n = A073389 n

end A073389

/-! ## A073389.P17049014503035752759

`A208759(∑[n+3]+1)`
-/

namespace A073389.P17049014503035752759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A073389.P17049014503035752759

namespace A073389

/-- `A208759(∑[n+3]+1)` -/
def P17049014503035752759.Spec : Prop :=
  ∀ n, P17049014503035752759.a n = A073389 n

end A073389

/-! ## A073389.P15104767056922728929

`record[A208759(n+1)/A208759(n+4)]`
-/

namespace A073389.P15104767056922728929
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208759 (n + 1) : ℚ) / (A208759 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073389.P15104767056922728929

namespace A073389

/-- `record[A208759(n+1)/A208759(n+4)]` -/
def P15104767056922728929.Spec : Prop :=
  ∀ n, P15104767056922728929.a n = (A073389 n : ℚ)

end A073389

/-! ## A073389.P7570672596472314882

`record[A208759(A198954(n)+A057944(n))]`
-/

namespace A073389.P7570672596472314882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A198954 n + A057944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073389.P7570672596472314882

namespace A073389

/-- `record[A208759(A198954(n)+A057944(n))]` -/
def P7570672596472314882.Spec : Prop :=
  ∀ n, P7570672596472314882.a n = A073389 n

end A073389

/-! ## A073389.P640878578961080171

`lcm(A016116(n), A208759(A055999(n)+4))`
-/

namespace A073389.P640878578961080171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016116 n) (A208759 (A055999 n + 4).toNat)

end

end A073389.P640878578961080171

namespace A073389

/-- `lcm(A016116(n), A208759(A055999(n)+4))` -/
def P640878578961080171.Spec : Prop :=
  ∀ n, (P640878578961080171.a n : ℤ) = A073389 n

end A073389

/-! ## A073389.P18138318989107712710

`lcm(A154990(n+1), A208759(A034856(n+2)))`
-/

namespace A073389.P18138318989107712710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A154990 (n + 1)) (A208759 (A034856 (n + 2)).toNat)

end

end A073389.P18138318989107712710

namespace A073389

/-- `lcm(A154990(n+1), A208759(A034856(n+2)))` -/
def P18138318989107712710.Spec : Prop :=
  ∀ n, (P18138318989107712710.a n : ℤ) = A073389 n

end A073389

/-! ## A073389.P589401897155399472

`A208759(A034856(n+2))^A014963(A016825(n))`
-/

namespace A073389.P589401897155399472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208759 (A034856 (n + 2)).toNat : ℚ) ^ (A014963 (A016825 n).toNat : ℤ)

end

end A073389.P589401897155399472

namespace A073389

/-- `A208759(A034856(n+2))^A014963(A016825(n))` -/
def P589401897155399472.Spec : Prop :=
  ∀ n, P589401897155399472.a n = (A073389 n : ℚ)

end A073389

/-!
# A073390: Fourth column of the convolution triangle A073387(n+3, 3), for n >= 0.

The programs for A073390, the canonical program `A073390.P4190165334841738737` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073390 has offset 0).

The definition of A073390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073390.P67022780111363690

`∑{#}[floor(n/2), C(n-#+3, 3)*C(n-#, #)*2^(n-#)]`
-/

namespace A073390.P67022780111363690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ) + 3).toNat 3 * Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A073390.P67022780111363690

namespace A073390

/-- `∑{#}[floor(n/2), C(n-#+3, 3)*C(n-#, #)*2^(n-#)]` -/
def P67022780111363690.Spec : Prop :=
  ∀ n, P67022780111363690.a n = (A073390 n : ℚ)

end A073390

/-! ## A073390.P4190165334841738737

`ogf(1/(1-8x+16x^2+16x^3-56x^4-32x^5+64x^6+64x^7+16x^8))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073390

/-- `ogf(1/(1-8x+16x^2+16x^3-56x^4-32x^5+64x^6+64x^7+16x^8))` -/
def P4190165334841738737.Spec : Prop :=
  ∀ n, P4190165334841738737.a n = A073390 n

theorem P4190165334841738737.correct : P4190165334841738737.Spec := by
  intro n
  simp only [A073390]

end A073390

/-! ## A073390.P6557461652562236747

`A073387(A167614(n+2))`
-/

namespace A073390.P6557461652562236747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073387 (A167614 (n + 2)).toNat

end

end A073390.P6557461652562236747

namespace A073390

/-- `A073387(A167614(n+2))` -/
def P6557461652562236747.Spec : Prop :=
  ∀ n, P6557461652562236747.a n = A073390 n

end A073390

/-! ## A073390.P10552268566457457639

`A073387(A052905(n+2)-(2*n+1))`
-/

namespace A073390.P10552268566457457639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073387 (A052905 (n + 2) - (2 * n + 1 : ℤ)).toNat

end

end A073390.P10552268566457457639

namespace A073390

/-- `A073387(A052905(n+2)-(2*n+1))` -/
def P10552268566457457639.Spec : Prop :=
  ∀ n, P10552268566457457639.a n = A073390 n

end A073390

/-! ## A073390.P2799482735308165412

`A208759(A027379(n+2))`
-/

namespace A073390.P2799482735308165412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A027379 (n + 2)).toNat

end

end A073390.P2799482735308165412

namespace A073390

/-- `A208759(A027379(n+2))` -/
def P2799482735308165412.Spec : Prop :=
  ∀ n, P2799482735308165412.a n = A073390 n

end A073390

/-! ## A073390.P7304675059314627651

`A208759(A055998(n+2))`
-/

namespace A073390.P7304675059314627651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A055998 (n + 2)).toNat

end

end A073390.P7304675059314627651

namespace A073390

/-- `A208759(A055998(n+2))` -/
def P7304675059314627651.Spec : Prop :=
  ∀ n, P7304675059314627651.a n = A073390 n

end A073390

/-! ## A073390.P9612252948341907118

`A208759(A155212(n)+5)`
-/

namespace A073390.P9612252948341907118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A155212 n + 5).toNat

end

end A073390.P9612252948341907118

namespace A073390

/-- `A208759(A155212(n)+5)` -/
def P9612252948341907118.Spec : Prop :=
  ∀ n, P9612252948341907118.a n = A073390 n

end A073390

/-! ## A073390.P841714746700756812

`A208759(eq[3, A193592(n)])`
-/

namespace A073390.P841714746700756812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073390.P841714746700756812

namespace A073390

/-- `A208759(eq[3, A193592(n)])` -/
def P841714746700756812.Spec : Prop :=
  ∀ n, P841714746700756812.a n = A073390 n

end A073390

/-! ## A073390.P8015114955011502132

`A208759(Δ[A006503(n+1)])`
-/

namespace A073390.P8015114955011502132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (f1 (n + 1) - f1 n).toNat

end

end A073390.P8015114955011502132

namespace A073390

/-- `A208759(Δ[A006503(n+1)])` -/
def P8015114955011502132.Spec : Prop :=
  ∀ n, P8015114955011502132.a n = A073390 n

end A073390

/-! ## A073390.P4119890921270599335

`A208759(A052905(n+1)+2)`
-/

namespace A073390.P4119890921270599335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A052905 (n + 1) + 2).toNat

end

end A073390.P4119890921270599335

namespace A073390

/-- `A208759(A052905(n+1)+2)` -/
def P4119890921270599335.Spec : Prop :=
  ∀ n, P4119890921270599335.a n = A073390 n

end A073390

/-! ## A073390.P6098528273187937155

`A208759(A000217(n+4)-3)`
-/

namespace A073390.P6098528273187937155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A000217 (n + 4) - 3).toNat

end

end A073390.P6098528273187937155

namespace A073390

/-- `A208759(A000217(n+4)-3)` -/
def P6098528273187937155.Spec : Prop :=
  ∀ n, P6098528273187937155.a n = A073390 n

end A073390

/-! ## A073390.P4863816482949426743

`A208759(Δ[A008778(n+1)]-1)`
-/

namespace A073390.P4863816482949426743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (f1 (n + 1) - f1 n - 1).toNat

end

end A073390.P4863816482949426743

namespace A073390

/-- `A208759(Δ[A008778(n+1)]-1)` -/
def P4863816482949426743.Spec : Prop :=
  ∀ n, P4863816482949426743.a n = A073390 n

end A073390

/-! ## A073390.P3006331620143336601

`A208759(n+1+A167614(n+1)+n)`
-/

namespace A073390.P3006331620143336601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 ((n + 1 : ℤ) + (A167614 (n + 1) + (n : ℤ))).toNat

end

end A073390.P3006331620143336601

namespace A073390

/-- `A208759(n+1+A167614(n+1)+n)` -/
def P3006331620143336601.Spec : Prop :=
  ∀ n, P3006331620143336601.a n = A073390 n

end A073390

/-! ## A073390.P13551115570068315107

`A208759(A167499(n)+A016777(n))`
-/

namespace A073390.P13551115570068315107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A167499 n + A016777 n).toNat

end

end A073390.P13551115570068315107

namespace A073390

/-- `A208759(A167499(n)+A016777(n))` -/
def P13551115570068315107.Spec : Prop :=
  ∀ n, P13551115570068315107.a n = A073390 n

end A073390

/-! ## A073390.P10036304352245548722

`A208759(A046691(n+1)+A020710(n))`
-/

namespace A073390.P10036304352245548722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A046691 (n + 1) + A020710 n).toNat

end

end A073390.P10036304352245548722

namespace A073390

/-- `A208759(A046691(n+1)+A020710(n))` -/
def P10036304352245548722.Spec : Prop :=
  ∀ n, P10036304352245548722.a n = A073390 n

end A073390

/-! ## A073390.P6982649977261637019

`A208759(A167614(n+1)+A005408(n))`
-/

namespace A073390.P6982649977261637019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A167614 (n + 1) + A005408 n).toNat

end

end A073390.P6982649977261637019

namespace A073390

/-- `A208759(A167614(n+1)+A005408(n))` -/
def P6982649977261637019.Spec : Prop :=
  ∀ n, P6982649977261637019.a n = A073390 n

end A073390

/-!
# A073391: Fifth column of the convolution triangle A073387(n+4 4), for n >= 0.

The programs for A073391, the canonical program `A073391.P8550909147773973716` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073391 has offset 0).

The definition of A073391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073391.P8550909147773973716

`∑{#}[floor(n/2), C(n-#+4, 4)*C(n-#, #)*2^(n-#)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073391

/-- `∑{#}[floor(n/2), C(n-#+4, 4)*C(n-#, #)*2^(n-#)]` -/
def P8550909147773973716.Spec : Prop :=
  ∀ n, P8550909147773973716.a n = (A073391 n : ℚ)

end A073391

/-! ## A073391.P6908540770274710825

`A208759(∑[n+5]+6)`
-/

namespace A073391.P6908540770274710825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A073391.P6908540770274710825

namespace A073391

/-- `A208759(∑[n+5]+6)` -/
def P6908540770274710825.Spec : Prop :=
  ∀ n, P6908540770274710825.a n = A073391 n

end A073391

/-! ## A073391.P13681760732691933454

`abs(A208759(Δ[A023545(n+1)])-1)+1`
-/

namespace A073391.P13681760732691933454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208759 (f1 (n + 1) - f1 n).toNat - 1| + 1

end

end A073391.P13681760732691933454

namespace A073391

/-- `abs(A208759(Δ[A023545(n+1)])-1)+1` -/
def P13681760732691933454.Spec : Prop :=
  ∀ n, P13681760732691933454.a n = A073391 n

end A073391

/-! ## A073391.P9603708150150413148

`A208759(Δ[A023545(n+1)])+A000007(n+1)`
-/

namespace A073391.P9603708150150413148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A073391.P9603708150150413148

namespace A073391

/-- `A208759(Δ[A023545(n+1)])+A000007(n+1)` -/
def P9603708150150413148.Spec : Prop :=
  ∀ n, P9603708150150413148.a n = A073391 n

end A073391

/-! ## A073391.P11456850436378193398

`A208759(Δ[A023545(n+1)])+A000038(n+1)`
-/

namespace A073391.P11456850436378193398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (f1 (n + 1) - f1 n).toNat + A000038 (n + 1)

end

end A073391.P11456850436378193398

namespace A073391

/-- `A208759(Δ[A023545(n+1)])+A000038(n+1)` -/
def P11456850436378193398.Spec : Prop :=
  ∀ n, P11456850436378193398.a n = A073391 n

end A073391

/-! ## A073391.P12054747308651877783

`A208759(Δ[A023545(n+1)])%A208790(n+1)`
-/

namespace A073391.P12054747308651877783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208759 (f1 (n + 1) - f1 n).toNat) (A208790 (n + 1))

end

end A073391.P12054747308651877783

namespace A073391

/-- `A208759(Δ[A023545(n+1)])%A208790(n+1)` -/
def P12054747308651877783.Spec : Prop :=
  ∀ n, P12054747308651877783.a n = A073391 n

end A073391

/-! ## A073391.P16858470558676876385

`A208759(Δ[A023545(n+1)])+A008585(n)%3`
-/

namespace A073391.P16858470558676876385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (f1 (n + 1) - f1 n).toNat + Int.tmod (A008585 n) 3

end

end A073391.P16858470558676876385

namespace A073391

/-- `A208759(Δ[A023545(n+1)])+A008585(n)%3` -/
def P16858470558676876385.Spec : Prop :=
  ∀ n, P16858470558676876385.a n = A073391 n

end A073391

/-! ## A073391.P14064979295484746709

`A208759(Δ[A023545(n+1)])+A007814(2*n+1)`
-/

namespace A073391.P14064979295484746709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (f1 (n + 1) - f1 n).toNat + A007814 (2 * n + 1)

end

end A073391.P14064979295484746709

namespace A073391

/-- `A208759(Δ[A023545(n+1)])+A007814(2*n+1)` -/
def P14064979295484746709.Spec : Prop :=
  ∀ n, P14064979295484746709.a n = A073391 n

end A073391

/-! ## A073391.P7437878838774362642

`A038712(2*n+1)*A208759(Δ[A023545(n+1)])`
-/

namespace A073391.P7437878838774362642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (2 * n + 1) * A208759 (f1 (n + 1) - f1 n).toNat

end

end A073391.P7437878838774362642

namespace A073391

/-- `A038712(2*n+1)*A208759(Δ[A023545(n+1)])` -/
def P7437878838774362642.Spec : Prop :=
  ∀ n, P7437878838774362642.a n = A073391 n

end A073391

/-! ## A073391.P15177803845583960722

`A010125(n*n+1)*A208759(Δ[A023545(n+1)])`
-/

namespace A073391.P15177803845583960722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 (n * n + 1) * A208759 (f1 (n + 1) - f1 n).toNat

end

end A073391.P15177803845583960722

namespace A073391

/-- `A010125(n*n+1)*A208759(Δ[A023545(n+1)])` -/
def P15177803845583960722.Spec : Prop :=
  ∀ n, P15177803845583960722.a n = A073391 n

end A073391

/-! ## A073391.P10118820573994102947

`A056926(n*n+1)*A208759(Δ[A023545(n+1)])`
-/

namespace A073391.P10118820573994102947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (n * n + 1) * A208759 (f1 (n + 1) - f1 n).toNat

end

end A073391.P10118820573994102947

namespace A073391

/-- `A056926(n*n+1)*A208759(Δ[A023545(n+1)])` -/
def P10118820573994102947.Spec : Prop :=
  ∀ n, P10118820573994102947.a n = A073391 n

end A073391

/-! ## A073391.P14867016033132759457

`A027023((8-n)²)*A208759(Δ[A023545(n+1)])`
-/

namespace A073391.P14867016033132759457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 ((8 - (n : ℤ)) ^ 2).toNat * A208759 (f1 (n + 1) - f1 n).toNat

end

end A073391.P14867016033132759457

namespace A073391

/-- `A027023((8-n)²)*A208759(Δ[A023545(n+1)])` -/
def P14867016033132759457.Spec : Prop :=
  ∀ n, P14867016033132759457.a n = A073391 n

end A073391

/-!
# A073392: Sixth column of the convolution triangle A073387(n+5, 5), for n >= 0.

The programs for A073392, the canonical program `A073392.P5485176241516599720` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073392 has offset 0).

The definition of A073392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073392.P5485176241516599720

`∑{#}[floor(n/2), C(n-#+5, 5)*C(n-#, #)*2^(n-#)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073392

/-- `∑{#}[floor(n/2), C(n-#+5, 5)*C(n-#, #)*2^(n-#)]` -/
def P5485176241516599720.Spec : Prop :=
  ∀ n, P5485176241516599720.a n = (A073392 n : ℚ)

end A073392

/-! ## A073392.P14766006045527505463

`A208759(A052905(n+3))`
-/

namespace A073392.P14766006045527505463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A052905 (n + 3)).toNat

end

end A073392.P14766006045527505463

namespace A073392

/-- `A208759(A052905(n+3))` -/
def P14766006045527505463.Spec : Prop :=
  ∀ n, P14766006045527505463.a n = A073392 n

end A073392

/-! ## A073392.P18389327370188858587

`A208759(A000217(n+6)-5)`
-/

namespace A073392.P18389327370188858587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A000217 (n + 6) - 5).toNat

end

end A073392.P18389327370188858587

namespace A073392

/-- `A208759(A000217(n+6)-5)` -/
def P18389327370188858587.Spec : Prop :=
  ∀ n, P18389327370188858587.a n = A073392 n

end A073392

/-! ## A073392.P16052676544770557026

`A208759(A000124(n+6)-6)`
-/

namespace A073392.P16052676544770557026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A000124 (n + 6) - 6).toNat

end

end A073392.P16052676544770557026

namespace A073392

/-- `A208759(A000124(n+6)-6)` -/
def P16052676544770557026.Spec : Prop :=
  ∀ n, P16052676544770557026.a n = A073392 n

end A073392

/-! ## A073392.P10802596074291961279

`A208759(Δ[Δ[A006504(n+1)]])`
-/

namespace A073392.P10802596074291961279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (f1 (n + 1) - f1 n).toNat

end

end A073392.P10802596074291961279

namespace A073392

/-- `A208759(Δ[Δ[A006504(n+1)]])` -/
def P10802596074291961279.Spec : Prop :=
  ∀ n, P10802596074291961279.a n = A073392 n

end A073392

/-! ## A073392.P8360550476436904215

`A208759(Δ[A023551(n+1)]+1)`
-/

namespace A073392.P8360550476436904215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (f1 (n + 1) - f1 n + 1).toNat

end

end A073392.P8360550476436904215

namespace A073392

/-- `A208759(Δ[A023551(n+1)]+1)` -/
def P8360550476436904215.Spec : Prop :=
  ∀ n, P8360550476436904215.a n = A073392 n

end A073392

/-! ## A073392.P9412432480144097450

`A208759(Δ[A023545(n+2)]-1)`
-/

namespace A073392.P9412432480144097450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (f1 (n + 1) - f1 n - 1).toNat

end

end A073392.P9412432480144097450

namespace A073392

/-- `A208759(Δ[A023545(n+2)]-1)` -/
def P9412432480144097450.Spec : Prop :=
  ∀ n, P9412432480144097450.a n = A073392 n

end A073392

/-! ## A073392.P6357093362534435754

`A208759(Δ[A026054(n+3)]+1)`
-/

namespace A073392.P6357093362534435754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (f1 (n + 1) - f1 n + 1).toNat

end

end A073392.P6357093362534435754

namespace A073392

/-- `A208759(Δ[A026054(n+3)]+1)` -/
def P6357093362534435754.Spec : Prop :=
  ∀ n, P6357093362534435754.a n = A073392 n

end A073392

/-! ## A073392.P17627228221175271910

`A208759(A167614(n+4)+n-2)`
-/

namespace A073392.P17627228221175271910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A167614 (n + 4) + ((n : ℤ) - 2)).toNat

end

end A073392.P17627228221175271910

namespace A073392

/-- `A208759(A167614(n+4)+n-2)` -/
def P17627228221175271910.Spec : Prop :=
  ∀ n, P17627228221175271910.a n = A073392 n

end A073392

/-! ## A073392.P3093931692472225395

`A208759(A167499(n+3)+2*n+1)`
-/

namespace A073392.P3093931692472225395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A167499 (n + 3) + (2 * n + 1 : ℤ)).toNat

end

end A073392.P3093931692472225395

namespace A073392

/-- `A208759(A167499(n+3)+2*n+1)` -/
def P3093931692472225395.Spec : Prop :=
  ∀ n, P3093931692472225395.a n = A073392 n

end A073392

/-!
# A073393: Seventh column of the convolution triangle A073387(n+6,6), for n >= 0.

The programs for A073393, the canonical program `A073393.P5511720929028217769` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073393 has offset 0).

The definition of A073393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073393.P5511720929028217769

`∑{#}[floor(n/2), C(n-#+6, 6)*C(n-#, #)*2^(n-#)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073393

/-- `∑{#}[floor(n/2), C(n-#+6, 6)*C(n-#, #)*2^(n-#)]` -/
def P5511720929028217769.Spec : Prop :=
  ∀ n, P5511720929028217769.a n = (A073393 n : ℚ)

end A073393

/-! ## A073393.P8091193301050601399

`A208759(A055999(n+4))`
-/

namespace A073393.P8091193301050601399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A055999 (n + 4)).toNat

end

end A073393.P8091193301050601399

namespace A073393

/-- `A208759(A055999(n+4))` -/
def P8091193301050601399.Spec : Prop :=
  ∀ n, P8091193301050601399.a n = A073393 n

end A073393

/-! ## A073393.P7609048966539071974

`A208759(Δ[A023551(n+2)])`
-/

namespace A073393.P7609048966539071974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (f1 (n + 1) - f1 n).toNat

end

end A073393.P7609048966539071974

namespace A073393

/-- `A208759(Δ[A023551(n+2)])` -/
def P7609048966539071974.Spec : Prop :=
  ∀ n, P7609048966539071974.a n = A073393 n

end A073393

/-! ## A073393.P17422616041973246612

`A208759(Δ[A026054(n+4)])`
-/

namespace A073393.P17422616041973246612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (f1 (n + 1) - f1 n).toNat

end

end A073393.P17422616041973246612

namespace A073393

/-- `A208759(Δ[A026054(n+4)])` -/
def P17422616041973246612.Spec : Prop :=
  ∀ n, P17422616041973246612.a n = A073393 n

end A073393

/-! ## A073393.P17486576145398532143

`A208759(A000217(n+6)+n+1)`
-/

namespace A073393.P17486576145398532143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A000217 (n + 6) + (n : ℤ) + 1).toNat

end

end A073393.P17486576145398532143

namespace A073393

/-- `A208759(A000217(n+6)+n+1)` -/
def P17486576145398532143.Spec : Prop :=
  ∀ n, P17486576145398532143.a n = A073393 n

end A073393

/-! ## A073393.P4978218740207539282

`A208759(2*n+A000124(n+5)+6)`
-/

namespace A073393.P4978218740207539282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 ((2 * n : ℤ) + (A000124 (n + 5) + 6)).toNat

end

end A073393.P4978218740207539282

namespace A073393

/-- `A208759(2*n+A000124(n+5)+6)` -/
def P4978218740207539282.Spec : Prop :=
  ∀ n, P4978218740207539282.a n = A073393 n

end A073393

/-! ## A073393.P8455973556373190747

`A208759(A166136(n+4)+A005408(n))`
-/

namespace A073393.P8455973556373190747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A166136 (n + 4) + A005408 n).toNat

end

end A073393.P8455973556373190747

namespace A073393

/-- `A208759(A166136(n+4)+A005408(n))` -/
def P8455973556373190747.Spec : Prop :=
  ∀ n, P8455973556373190747.a n = A073393 n

end A073393

/-!
# A073394: Eighth column of the convolution triangle A073387(n+7, 7), for n >= 0.

The programs for A073394, the canonical program `A073394.P15465927182780370175` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073394 has offset 0).

The definition of A073394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073394.P15465927182780370175

`∑{#}[floor(n/2), C(n-#+7, 7)*C(n-#, #)*2^(n-#)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073394

/-- `∑{#}[floor(n/2), C(n-#+7, 7)*C(n-#, #)*2^(n-#)]` -/
def P15465927182780370175.Spec : Prop :=
  ∀ n, P15465927182780370175.a n = (A073394 n : ℚ)

end A073394

/-! ## A073394.P16341799801780487140

`A208759(eq[7, A193592(n)])`
-/

namespace A073394.P16341799801780487140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073394.P16341799801780487140

namespace A073394

/-- `A208759(eq[7, A193592(n)])` -/
def P16341799801780487140.Spec : Prop :=
  ∀ n, P16341799801780487140.a n = A073394 n

end A073394

/-! ## A073394.P17196184587171813000

`A208759(A155212(n+4)+1)`
-/

namespace A073394.P17196184587171813000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A155212 (n + 4) + 1).toNat

end

end A073394.P17196184587171813000

namespace A073394

/-- `A208759(A155212(n+4)+1)` -/
def P17196184587171813000.Spec : Prop :=
  ∀ n, P17196184587171813000.a n = A073394 n

end A073394

/-! ## A073394.P339967614772747745

`A208759(A055998(n+6)-4)`
-/

namespace A073394.P339967614772747745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A055998 (n + 6) - 4).toNat

end

end A073394.P339967614772747745

namespace A073394

/-- `A208759(A055998(n+6)-4)` -/
def P339967614772747745.Spec : Prop :=
  ∀ n, P339967614772747745.a n = A073394 n

end A073394

/-! ## A073394.P8047074493284567980

`A208759(A000096(n+7)-6)`
-/

namespace A073394.P8047074493284567980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A000096 (n + 7) - 6).toNat

end

end A073394.P8047074493284567980

namespace A073394

/-- `A208759(A000096(n+7)-6)` -/
def P8047074493284567980.Spec : Prop :=
  ∀ n, P8047074493284567980.a n = A073394 n

end A073394

/-! ## A073394.P2329099619194907735

`A208759(A000217(n+8)-7)`
-/

namespace A073394.P2329099619194907735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A000217 (n + 8) - 7).toNat

end

end A073394.P2329099619194907735

namespace A073394

/-- `A208759(A000217(n+8)-7)` -/
def P2329099619194907735.Spec : Prop :=
  ∀ n, P2329099619194907735.a n = A073394 n

end A073394

/-! ## A073394.P18419370730176330976

`A208759(A000124(n+8)-8)`
-/

namespace A073394.P18419370730176330976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A000124 (n + 8) - 8).toNat

end

end A073394.P18419370730176330976

namespace A073394

/-- `A208759(A000124(n+8)-8)` -/
def P18419370730176330976.Spec : Prop :=
  ∀ n, P18419370730176330976.a n = A073394 n

end A073394

/-! ## A073394.P4511987634037246462

`A208759(A167614(n+7)-10)`
-/

namespace A073394.P4511987634037246462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A167614 (n + 7) - 10).toNat

end

end A073394.P4511987634037246462

namespace A073394

/-- `A208759(A167614(n+7)-10)` -/
def P4511987634037246462.Spec : Prop :=
  ∀ n, P4511987634037246462.a n = A073394 n

end A073394

/-! ## A073394.P13286189209866994416

`A208759(Δ[A000292(n+7)]-7)`
-/

namespace A073394.P13286189209866994416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (f1 (n + 1) - f1 n - 7).toNat

end

end A073394.P13286189209866994416

namespace A073394

/-- `A208759(Δ[A000292(n+7)]-7)` -/
def P13286189209866994416.Spec : Prop :=
  ∀ n, P13286189209866994416.a n = A073394 n

end A073394

/-!
# A073395: Product of sums of prime factors of n: with and without repetition.

The programs for A073395, the canonical program `A073395.P12803190185888961322` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073395 has offset 1).

The definition of A073395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073395.P12803190185888961322

`A008472(n+1)*A001414(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A073395

/-- `A008472(n+1)*A001414(n+1)` -/
def P12803190185888961322.Spec : Prop :=
  ∀ n, P12803190185888961322.a n = A073395 (n + 1)

theorem P12803190185888961322.correct : P12803190185888961322.Spec := by
  intro n
  simp only [A073395, Nat.add_sub_cancel]

end A073395

/-! ## A073395.P16266678385137063777

`A001414(n+1)*A008472(n+1)`
-/

namespace A073395.P16266678385137063777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) * A008472 (n + 1)

end

end A073395.P16266678385137063777

namespace A073395

/-- `A001414(n+1)*A008472(n+1)` -/
def P16266678385137063777.Spec : Prop :=
  ∀ n, P16266678385137063777.a n = A073395 (n + 1)

theorem P16266678385137063777.correct : P16266678385137063777.Spec := by
  intro n
  simp only [A073395, Nat.add_sub_cancel, A073395.P16266678385137063777.a, A073395.P12803190185888961322.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073395

/-! ## A073395.P3096300265473476173

`(A036288(n+1)-1)*A008472(n+1)`
-/

namespace A073395.P3096300265473476173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036288 (n + 1) - 1) * A008472 (n + 1)

end

end A073395.P3096300265473476173

namespace A073395

/-- `(A036288(n+1)-1)*A008472(n+1)` -/
def P3096300265473476173.Spec : Prop :=
  ∀ n, P3096300265473476173.a n = A073395 (n + 1)

theorem P3096300265473476173.correct : P3096300265473476173.Spec := by
  intro n
  simp only [A073395, Nat.add_sub_cancel, A073395.P3096300265473476173.a, A073395.P12803190185888961322.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073395

/-! ## A073395.P14379468788897822987

`(A074372(n+1)-1)*A001414(n+1)`
-/

namespace A073395.P14379468788897822987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074372 (n + 1) - 1) * A001414 (n + 1)

end

end A073395.P14379468788897822987

namespace A073395

/-- `(A074372(n+1)-1)*A001414(n+1)` -/
def P14379468788897822987.Spec : Prop :=
  ∀ n, P14379468788897822987.a n = A073395 (n + 1)

theorem P14379468788897822987.correct : P14379468788897822987.Spec := by
  intro n
  simp only [A073395, Nat.add_sub_cancel, A073395.P14379468788897822987.a, A073395.P12803190185888961322.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A074372, A074372.P4137528993984796168.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073395

/-! ## A073395.P15921870270834808993

`∑{d}[n+1, A061397(#)]*A001414(n+1)`
-/

namespace A073395.P15921870270834808993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A061397 d) * A001414 (n + 1)

end

end A073395.P15921870270834808993

namespace A073395

/-- `∑{d}[n+1, A061397(#)]*A001414(n+1)` -/
def P15921870270834808993.Spec : Prop :=
  ∀ n, P15921870270834808993.a n = A073395 (n + 1)

end A073395

/-! ## A073395.P2044985901799530624

`A001414(∏{p}[n+1, #])*A001414(n+1)`
-/

namespace A073395.P2044985901799530624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∏ p ∈ Nat.primeFactors (f1 n), p) * A001414 (n + 1)

end

end A073395.P2044985901799530624

namespace A073395

/-- `A001414(∏{p}[n+1, #])*A001414(n+1)` -/
def P2044985901799530624.Spec : Prop :=
  ∀ n, P2044985901799530624.a n = A073395 (n + 1)

end A073395

/-! ## A073395.P17067382050409513015

`A001414(n+1)*A001414(A007947(n+1))`
-/

namespace A073395.P17067382050409513015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) * A001414 (A007947 (n + 1)).toNat

end

end A073395.P17067382050409513015

namespace A073395

/-- `A001414(n+1)*A001414(A007947(n+1))` -/
def P17067382050409513015.Spec : Prop :=
  ∀ n, P17067382050409513015.a n = A073395 (n + 1)

end A073395

/-! ## A073395.P473986065344676750

`(A024924(n+1)-A024924(n))*A001414(n+1)`
-/

namespace A073395.P473986065344676750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024924 (n + 1) - A024924 n) * A001414 (n + 1)

end

end A073395.P473986065344676750

namespace A073395

/-- `(A024924(n+1)-A024924(n))*A001414(n+1)` -/
def P473986065344676750.Spec : Prop :=
  ∀ n, P473986065344676750.a n = A073395 (n + 1)

end A073395

/-! ## A073395.P6185244785463552672

`(A105221(n+1)+A061397(n+1))*A001414(n+1)`
-/

namespace A073395.P6185244785463552672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105221 (n + 1) + A061397 (n + 1)) * A001414 (n + 1)

end

end A073395.P6185244785463552672

namespace A073395

/-- `(A105221(n+1)+A061397(n+1))*A001414(n+1)` -/
def P6185244785463552672.Spec : Prop :=
  ∀ n, P6185244785463552672.a n = A073395 (n + 1)

theorem P6185244785463552672.correct : P6185244785463552672.Spec := by
  intro n
  simp only [A073395, Nat.add_sub_cancel, A073395.P6185244785463552672.a, A073395.P12803190185888961322.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A061397, A061397.P17730824645895443051.a, A105221, A105221.P17719623874901943766.a, A000027, A000027.P10331202704469894836.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073395

/-! ## A073395.P9505405170675867076

`(A280292(n+1)+A008472(n+1))*A008472(n+1)`
-/

namespace A073395.P9505405170675867076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280292 (n + 1) + A008472 (n + 1)) * A008472 (n + 1)

end

end A073395.P9505405170675867076

namespace A073395

/-- `(A280292(n+1)+A008472(n+1))*A008472(n+1)` -/
def P9505405170675867076.Spec : Prop :=
  ∀ n, P9505405170675867076.a n = A073395 (n + 1)

theorem P9505405170675867076.correct : P9505405170675867076.Spec := by
  intro n
  simp only [A073395, Nat.add_sub_cancel, A073395.P9505405170675867076.a, A073395.P12803190185888961322.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A280292, A280292.P17147228295463227534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073395

/-! ## A073395.P3247708175469442727

`(A352167(n+1)+A061397(n+1))*A008472(n+1)`
-/

namespace A073395.P3247708175469442727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A352167 (n + 1) + A061397 (n + 1)) * A008472 (n + 1)

end

end A073395.P3247708175469442727

namespace A073395

/-- `(A352167(n+1)+A061397(n+1))*A008472(n+1)` -/
def P3247708175469442727.Spec : Prop :=
  ∀ n, P3247708175469442727.a n = A073395 (n + 1)

theorem P3247708175469442727.correct : P3247708175469442727.Spec := by
  intro n
  simp only [A073395, Nat.add_sub_cancel, A073395.P3247708175469442727.a, A073395.P12803190185888961322.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A061397, A061397.P17730824645895443051.a, A352167, A352167.P833396178534285227.a, A000027, A000027.P10331202704469894836.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073395

/-! ## A073395.P9340674737779543904

`(A344931(n+1)+A344908(n+1))*A001414(n+1)`
-/

namespace A073395.P9340674737779543904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344931 (n + 1) + A344908 (n + 1)) * A001414 (n + 1)

end

end A073395.P9340674737779543904

namespace A073395

/-- `(A344931(n+1)+A344908(n+1))*A001414(n+1)` -/
def P9340674737779543904.Spec : Prop :=
  ∀ n, P9340674737779543904.a n = A073395 (n + 1)

end A073395

/-! ## A073395.P3098111813690089757

`(A063655(n+1)-A092510(n+1))*A008472(n+1)`
-/

namespace A073395.P3098111813690089757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063655 (n + 1) - A092510 (n + 1)) * A008472 (n + 1)

end

end A073395.P3098111813690089757

namespace A073395

/-- `(A063655(n+1)-A092510(n+1))*A008472(n+1)` -/
def P3098111813690089757.Spec : Prop :=
  ∀ n, P3098111813690089757.a n = A073395 (n + 1)

end A073395

/-! ## A073395.P17159254601023774885

`(A001414(n+1)-A280292(n+1))*A001414(n+1)`
-/

namespace A073395.P17159254601023774885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 1) - A280292 (n + 1)) * A001414 (n + 1)

end

end A073395.P17159254601023774885

namespace A073395

/-- `(A001414(n+1)-A280292(n+1))*A001414(n+1)` -/
def P17159254601023774885.Spec : Prop :=
  ∀ n, P17159254601023774885.a n = A073395 (n + 1)

theorem P17159254601023774885.correct : P17159254601023774885.Spec := by
  intro n
  simp only [A073395, Nat.add_sub_cancel, A073395.P17159254601023774885.a, A073395.P12803190185888961322.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A280292, A280292.P17147228295463227534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073395

/-! ## A073395.P2678252729018961396

`(A023889(n+1)-A284117(n+1))*A001414(n+1)`
-/

namespace A073395.P2678252729018961396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023889 (n + 1) - A284117 (n + 1)) * A001414 (n + 1)

end

end A073395.P2678252729018961396

namespace A073395

/-- `(A023889(n+1)-A284117(n+1))*A001414(n+1)` -/
def P2678252729018961396.Spec : Prop :=
  ∀ n, P2678252729018961396.a n = A073395 (n + 1)

end A073395

/-! ## A073395.P15048462335819231428

`A008472(n+1)*A082299(n+1)*A082343(n+1)`
-/

namespace A073395.P15048462335819231428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) * A082299 (n + 1) * A082343 (n + 1)

end

end A073395.P15048462335819231428

namespace A073395

/-- `A008472(n+1)*A082299(n+1)*A082343(n+1)` -/
def P15048462335819231428.Spec : Prop :=
  ∀ n, P15048462335819231428.a n = A073395 (n + 1)

end A073395

/-! ## A073395.P9424735227048102763

`A001414(n+1)*A099636(n+1)*A340678(n+1)`
-/

namespace A073395.P9424735227048102763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) * A099636 (n + 1) * A340678 (n + 1)

end

end A073395.P9424735227048102763

namespace A073395

/-- `A001414(n+1)*A099636(n+1)*A340678(n+1)` -/
def P9424735227048102763.Spec : Prop :=
  ∀ n, P9424735227048102763.a n = A073395 (n + 1)

end A073395

/-! ## A073395.P1948608900521370060

`(A001414(n+1)-A001414(A003557(n+1)))*A001414(n+1)`
-/

namespace A073395.P1948608900521370060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 1) - A001414 (A003557 (n + 1)).toNat) * A001414 (n + 1)

end

end A073395.P1948608900521370060

namespace A073395

/-- `(A001414(n+1)-A001414(A003557(n+1)))*A001414(n+1)` -/
def P1948608900521370060.Spec : Prop :=
  ∀ n, P1948608900521370060.a n = A073395 (n + 1)

end A073395

/-! ## A073395.P8642112449609432082

`A001414(n+1)*A001414(A099636(n+1)*A340677(n+1))`
-/

namespace A073395.P8642112449609432082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) * A001414 (A099636 (n + 1) * A340677 (n + 1)).toNat

end

end A073395.P8642112449609432082

namespace A073395

/-- `A001414(n+1)*A001414(A099636(n+1)*A340677(n+1))` -/
def P8642112449609432082.Spec : Prop :=
  ∀ n, P8642112449609432082.a n = A073395 (n + 1)

end A073395

/-! ## A073395.P321130833980488637

`(A001414(A064549(n+1))-A001414(n+1))*A001414(n+1)`
-/

namespace A073395.P321130833980488637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001414 (A064549 (n + 1)).toNat - A001414 (n + 1)) * A001414 (n + 1)

end

end A073395.P321130833980488637

namespace A073395

/-- `(A001414(A064549(n+1))-A001414(n+1))*A001414(n+1)` -/
def P321130833980488637.Spec : Prop :=
  ∀ n, P321130833980488637.a n = A073395 (n + 1)

end A073395

/-!
# A073397: Eighth convolution of A002605(n) (generalized (2,2)-Fibonacci), n>=0, with itself.

The programs for A073397, the canonical program `A073397.P5767357140276739110` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073397 has offset 0).

The definition of A073397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073397.P5767357140276739110

`∑{#}[floor(n/2), C(n-#+8, 8)*C(n-#, #)*2^(n-#)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073397

/-- `∑{#}[floor(n/2), C(n-#+8, 8)*C(n-#, #)*2^(n-#)]` -/
def P5767357140276739110.Spec : Prop :=
  ∀ n, P5767357140276739110.a n = (A073397 n : ℚ)

end A073397

/-! ## A073397.P1668113486188789943

`A208759(A155212(n+5))`
-/

namespace A073397.P1668113486188789943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A155212 (n + 5)).toNat

end

end A073397.P1668113486188789943

namespace A073397

/-- `A208759(A155212(n+5))` -/
def P1668113486188789943.Spec : Prop :=
  ∀ n, P1668113486188789943.a n = A073397 n

end A073397

/-! ## A073397.P14623754836611384273

`A208759(A034856(n+8)-6)`
-/

namespace A073397.P14623754836611384273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A034856 (n + 8) - 6).toNat

end

end A073397.P14623754836611384273

namespace A073397

/-- `A208759(A034856(n+8)-6)` -/
def P14623754836611384273.Spec : Prop :=
  ∀ n, P14623754836611384273.a n = A073397 n

end A073397

/-! ## A073397.P6725279169762508286

`A208759(A000124(n+9)-9)`
-/

namespace A073397.P6725279169762508286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A000124 (n + 9) - 9).toNat

end

end A073397.P6725279169762508286

namespace A073397

/-- `A208759(A000124(n+9)-9)` -/
def P6725279169762508286.Spec : Prop :=
  ∀ n, P6725279169762508286.a n = A073397 n

end A073397

/-! ## A073397.P5565150305025696526

`A208759(A000096(n+7)+n+2)`
-/

namespace A073397.P5565150305025696526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A000096 (n + 7) + (n + 2 : ℤ)).toNat

end

end A073397.P5565150305025696526

namespace A073397

/-- `A208759(A000096(n+7)+n+2)` -/
def P5565150305025696526.Spec : Prop :=
  ∀ n, P5565150305025696526.a n = A073397 n

end A073397

/-! ## A073397.P1066989668744750221

`A208759(A000217(n+8)+n+1)`
-/

namespace A073397.P1066989668744750221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A073397.P1066989668744750221

namespace A073397

/-- `A208759(A000217(n+8)+n+1)` -/
def P1066989668744750221.Spec : Prop :=
  ∀ n, P1066989668744750221.a n = A073397 n

end A073397

/-!
# A073398: Ninth convolution of A002605(n) (generalized (2,2)-Fibonacci), n>=0, with itself.

The programs for A073398, the canonical program `A073398.P12609707935115740736` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073398 has offset 0).

The definition of A073398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073398.P12609707935115740736

`∑{#}[floor(n/2), C(n-#+9, 9)*C(n-#, #)*2^(n-#)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073398

/-- `∑{#}[floor(n/2), C(n-#+9, 9)*C(n-#, #)*2^(n-#)]` -/
def P12609707935115740736.Spec : Prop :=
  ∀ n, P12609707935115740736.a n = (A073398 n : ℚ)

end A073398

/-! ## A073398.P5681811995576572084

`A208759(A052905(n+7)-4)`
-/

namespace A073398.P5681811995576572084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A052905 (n + 7) - 4).toNat

end

end A073398.P5681811995576572084

namespace A073398

/-- `A208759(A052905(n+7)-4)` -/
def P5681811995576572084.Spec : Prop :=
  ∀ n, P5681811995576572084.a n = A073398 n

end A073398

/-! ## A073398.P3010348637901552780

`A208759(A027379(n+8)-6)`
-/

namespace A073398.P3010348637901552780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A027379 (n + 8) - 6).toNat

end

end A073398.P3010348637901552780

namespace A073398

/-- `A208759(A027379(n+8)-6)` -/
def P3010348637901552780.Spec : Prop :=
  ∀ n, P3010348637901552780.a n = A073398 n

end A073398

/-! ## A073398.P170906637266934102

`A208759(A000124(n+10)-10)`
-/

namespace A073398.P170906637266934102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A000124 (n + 10) - 10).toNat

end

end A073398.P170906637266934102

namespace A073398

/-- `A208759(A000124(n+10)-10)` -/
def P170906637266934102.Spec : Prop :=
  ∀ n, P170906637266934102.a n = A073398 n

end A073398

/-! ## A073398.P13941657166692966898

`A208759(A000217(n+9)+n+1)`
-/

namespace A073398.P13941657166692966898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A000217 (n + 9) + (n + 1 : ℤ)).toNat

end

end A073398.P13941657166692966898

namespace A073398

/-- `A208759(A000217(n+9)+n+1)` -/
def P13941657166692966898.Spec : Prop :=
  ∀ n, P13941657166692966898.a n = A073398 n

end A073398

/-! ## A073398.P16841333806335072058

`A208759(A046691(n+7)+A020710(n))`
-/

namespace A073398.P16841333806335072058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A046691 (n + 7) + A020710 n).toNat

end

end A073398.P16841333806335072058

namespace A073398

/-- `A208759(A046691(n+7)+A020710(n))` -/
def P16841333806335072058.Spec : Prop :=
  ∀ n, P16841333806335072058.a n = A073398 n

end A073398

/-!
# A073399: Coefficient triangle of polynomials (falling powers) related to convolutions of A001045(n+1), n>=0, (generalized (1,2)-Fibonacci). Companion triangle is A073400.

The programs for A073399, there is no canonical definition to state claims against.
-/

/-! ## A073399.P7402291930552306496

`A073401(∑[2*n]%comp[∑[n]])`
-/

namespace A073399.P7402291930552306496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073401 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A073399.P7402291930552306496

/-! ## A073399.P8847726441166212046

`A073401(∑[char[∑[n]]]²-n-1)`
-/

namespace A073399.P8847726441166212046
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073401 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A073399.P8847726441166212046

/-! ## A073399.P10735983094778550277

`and(-1, A073401(A061579(n)))`
-/

namespace A073399.P10735983094778550277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A073401 (A061579 n).toNat)

end

end A073399.P10735983094778550277

/-! ## A073399.P9543298298114473598

`A073401(A061579(n))+A007949(3*n+1)`
-/

namespace A073399.P9543298298114473598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073401 (A061579 n).toNat + A007949 (3 * n + 1)

end

end A073399.P9543298298114473598

/-! ## A073399.P8539538150234769706

`lcm(A073401(A061579(n)), A119910(3*n+4))`
-/

namespace A073399.P8539538150234769706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073401 (A061579 n).toNat) (A119910 (3 * n + 4))

end

end A073399.P8539538150234769706

