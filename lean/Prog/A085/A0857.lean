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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A085700: Numbers k such that (2k)! - (2k-2)! + (2k-4)! - ... + (-1)^k 0! is prime.

The programs for A085700, there is no canonical definition to state claims against.
-/

/-! ## A085700.P17360849958829536419

`∑[A293226(A141214(C(n, 2)+n²))]`
-/

namespace A085700.P17360849958829536419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293226 (A141214 (Nat.choose n 2 + n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085700.P17360849958829536419

/-!
# A085701: Smallest multiple of n such that a(n) + a(n-1) is a squarefree number.

The programs for A085701, there is no canonical definition to state claims against.
-/

/-! ## A085701.P4109090536061225390

`(n+1)*A337260(A066779(n+1))`
-/

namespace A085701.P4109090536061225390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A337260 (A066779 (n + 1)).toNat

end

end A085701.P4109090536061225390

/-! ## A085701.P15367848419222148468

`lcm(n+1, A006519(A132408(n+1)))`
-/

namespace A085701.P15367848419222148468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A006519 (A132408 (n + 1)).toNat)

end

end A085701.P15367848419222148468

/-! ## A085701.P13285582768445717525

`(n+1)*A066099(A000837(A327516(n)))`
-/

namespace A085701.P13285582768445717525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A066099 (A000837 (A327516 n).toNat).toNat

end

end A085701.P13285582768445717525

/-! ## A085701.P17142814465279515306

`A337260(A066779(n+1))*A348553(n)`
-/

namespace A085701.P17142814465279515306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337260 (A066779 (n + 1)).toNat * A348553 n

end

end A085701.P17142814465279515306

/-! ## A085701.P2525947176104155761

`lcm(A006519(A132408(n+1)), A348553(n))`
-/

namespace A085701.P2525947176104155761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (A132408 (n + 1)).toNat) (A348553 n)

end

end A085701.P2525947176104155761

/-!
# A085702: Numbers k such that the sum of primes dividing k (with repetition) / smallest prime dividing k = largest prime dividing k.

The programs for A085702, there is no canonical definition to state claims against.
-/

/-! ## A085702.P2341212578172450674

`eq[A066048(A233583(n+1)), A107463(n)]`
-/

namespace A085702.P2341212578172450674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085702.P2341212578172450674

/-!
# A085704: Primes of the form prime(k)*2 - prime(k-1), k>1.

The programs for A085704, the canonical program `A085704.P554284013092023272` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085704 has offset 1).

The definition of A085704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085704.P10739264557367435147

`p?[A210497(n+1)]`
-/

namespace A085704.P10739264557367435147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P10739264557367435147

namespace A085704

/-- `p?[A210497(n+1)]` -/
def P10739264557367435147.Spec : Prop :=
  ∀ n, P10739264557367435147.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P2126883691487536035

`p?[A211280(n+2)]`
-/

namespace A085704.P2126883691487536035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211280 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P2126883691487536035

namespace A085704

/-- `p?[A211280(n+2)]` -/
def P2126883691487536035.Spec : Prop :=
  ∀ n, P2126883691487536035.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P554284013092023272

`p?[A054541(n+1)+A000040(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A085704

/-- `p?[A054541(n+1)+A000040(n+1)]` -/
def P554284013092023272.Spec : Prop :=
  ∀ n, P554284013092023272.a n = A085704 (n + 1)

theorem P554284013092023272.correct : P554284013092023272.Spec := by
  intro n
  simp only [A085704, Nat.add_sub_cancel]

end A085704

/-! ## A085704.P897205071189640554

`p?[A065091(n+1)+A001223(n+1)]`
-/

namespace A085704.P897205071189640554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P897205071189640554

namespace A085704

/-- `p?[A065091(n+1)+A001223(n+1)]` -/
def P897205071189640554.Spec : Prop :=
  ∀ n, P897205071189640554.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P13627345386728219766

`p?[A230847(n+1)+A006093(n+1)]`
-/

namespace A085704.P13627345386728219766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1) + A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P13627345386728219766

namespace A085704

/-- `p?[A230847(n+1)+A006093(n+1)]` -/
def P13627345386728219766.Spec : Prop :=
  ∀ n, P13627345386728219766.a n = A085704 (n + 1)

theorem P13627345386728219766.correct : P13627345386728219766.Spec := by
  intro n
  simp only [A085704, Nat.add_sub_cancel, A085704.P13627345386728219766.f1, A085704.P13627345386728219766.a, A085704.P554284013092023272.f1, A085704.P554284013092023272.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A054541, A054541.P347795157194570387.a, A230847, A230847.P8149811337675200087.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, A011974, A011974.P2665693327137284562.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085704

/-! ## A085704.P11572063818108939614

`p?[A001223(n+1)+A000040(n+2)]`
-/

namespace A085704.P11572063818108939614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P11572063818108939614

namespace A085704

/-- `p?[A001223(n+1)+A000040(n+2)]` -/
def P11572063818108939614.Spec : Prop :=
  ∀ n, P11572063818108939614.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P16978600810423165317

`p?[A054541(n+1)+A008578(n+2)]`
-/

namespace A085704.P16978600810423165317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P16978600810423165317

namespace A085704

/-- `p?[A054541(n+1)+A008578(n+2)]` -/
def P16978600810423165317.Spec : Prop :=
  ∀ n, P16978600810423165317.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P15811523491882318116

`p?[A065091(n+1)+A054541(n+2)]`
-/

namespace A085704.P15811523491882318116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A054541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P15811523491882318116

namespace A085704

/-- `p?[A065091(n+1)+A054541(n+2)]` -/
def P15811523491882318116.Spec : Prop :=
  ∀ n, P15811523491882318116.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P12657428048371991674

`p?[A100484(n+1)-A107471(n+1)]`
-/

namespace A085704.P12657428048371991674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A107471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P12657428048371991674

namespace A085704

/-- `p?[A100484(n+1)-A107471(n+1)]` -/
def P12657428048371991674.Spec : Prop :=
  ∀ n, P12657428048371991674.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P5327806362715791862

`p?[A100484(n+2)-A008578(n+2)]`
-/

namespace A085704.P5327806362715791862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2) - A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P5327806362715791862

namespace A085704

/-- `p?[A100484(n+2)-A008578(n+2)]` -/
def P5327806362715791862.Spec : Prop :=
  ∀ n, P5327806362715791862.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P6295162941624681631

`p?[A006093(n+1)+A054541(n+1)+1]`
-/

namespace A085704.P6295162941624681631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A054541 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P6295162941624681631

namespace A085704

/-- `p?[A006093(n+1)+A054541(n+1)+1]` -/
def P6295162941624681631.Spec : Prop :=
  ∀ n, P6295162941624681631.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P7884250943827664185

`p?[A008864(n+1)+A054541(n+1)-1]`
-/

namespace A085704.P7884250943827664185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A054541 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P7884250943827664185

namespace A085704

/-- `p?[A008864(n+1)+A054541(n+1)-1]` -/
def P7884250943827664185.Spec : Prop :=
  ∀ n, P7884250943827664185.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P9143600818702030500

`p?[A040976(n+1)+A054541(n+1)+2]`
-/

namespace A085704.P9143600818702030500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (A054541 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P9143600818702030500

namespace A085704

/-- `p?[A040976(n+1)+A054541(n+1)+2]` -/
def P9143600818702030500.Spec : Prop :=
  ∀ n, P9143600818702030500.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P17706282135845829590

`p?[2*A001043(n+1)-A001748(n+1)]`
-/

namespace A085704.P17706282135845829590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001043 (n + 1) - A001748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P17706282135845829590

namespace A085704

/-- `p?[2*A001043(n+1)-A001748(n+1)]` -/
def P17706282135845829590.Spec : Prop :=
  ∀ n, P17706282135845829590.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P14044389566826644105

`p?[2*A006005(n+1)-A008578(n+1)]`
-/

namespace A085704.P14044389566826644105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006005 (n + 1) - A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P14044389566826644105

namespace A085704

/-- `p?[2*A006005(n+1)-A008578(n+1)]` -/
def P14044389566826644105.Spec : Prop :=
  ∀ n, P14044389566826644105.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P15942841079303543046

`p?[2*A000040(n+2)-A000040(n+1)]`
-/

namespace A085704.P15942841079303543046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 2) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P15942841079303543046

namespace A085704

/-- `p?[2*A000040(n+2)-A000040(n+1)]` -/
def P15942841079303543046.Spec : Prop :=
  ∀ n, P15942841079303543046.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P7182341909196138606

`p?[A065091(n+1)+A000040(n+2)-A000040(n+1)]`
-/

namespace A085704.P7182341909196138606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (A000040 (n + 2) - A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P7182341909196138606

namespace A085704

/-- `p?[A065091(n+1)+A000040(n+2)-A000040(n+1)]` -/
def P7182341909196138606.Spec : Prop :=
  ∀ n, P7182341909196138606.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P15290136341785799539

`filter[A210497(n+1), A010051(#)]`
-/

namespace A085704.P15290136341785799539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A085704.P15290136341785799539

namespace A085704

/-- `filter[A210497(n+1), A010051(#)]` -/
def P15290136341785799539.Spec : Prop :=
  ∀ n, P15290136341785799539.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P11782649133639560783

`filter[A210497(n+1), A379969(#)]`
-/

namespace A085704.P11782649133639560783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A085704.P11782649133639560783

namespace A085704

/-- `filter[A210497(n+1), A379969(#)]` -/
def P11782649133639560783.Spec : Prop :=
  ∀ n, P11782649133639560783.a n = A085704 (n + 1)

end A085704

/-! ## A085704.P8553175933274531231

`filter[A210497(n+1), A380467(#)]`
-/

namespace A085704.P8553175933274531231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A085704.P8553175933274531231

namespace A085704

/-- `filter[A210497(n+1), A380467(#)]` -/
def P8553175933274531231.Spec : Prop :=
  ∀ n, P8553175933274531231.a n = A085704 (n + 1)

end A085704

/-!
# A085707: Triangular array A065547 unsigned and transposed.

The programs for A085707, there is no canonical definition to state claims against.
-/

/-! ## A085707.P3938540473912047288

`abs(A065547(A061579(n)))`
-/

namespace A085707.P3938540473912047288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065547 (A061579 n).toNat|

end

end A085707.P3938540473912047288

/-! ## A085707.P3540705279947114084

`abs(A065547(A038722(n+1)-1))`
-/

namespace A085707.P3540705279947114084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065547 (A038722 (n + 1) - 1).toNat|

end

end A085707.P3540705279947114084

/-! ## A085707.P17457823772156286940

`gcd(A000038(n), A065547(A061579(n)))`
-/

namespace A085707.P17457823772156286940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A065547 (A061579 n).toNat)

end

end A085707.P17457823772156286940

/-! ## A085707.P7690597443579696406

`lcm(A033999(n), A065547(A061579(n)))`
-/

namespace A085707.P7690597443579696406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A065547 (A061579 n).toNat)

end

end A085707.P7690597443579696406

/-! ## A085707.P728996928136916620

`lcm(-A065547(A061579(n)), A009001(2*n))`
-/

namespace A085707.P728996928136916620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A065547 (A061579 n).toNat) (A009001 (2 * n))

end

end A085707.P728996928136916620

/-! ## A085707.P16286971155772165049

`gcd(-A065547(A061579(n)), 2%A006466(n))`
-/

namespace A085707.P16286971155772165049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A065547 (A061579 n).toNat) (Int.tmod 2 (A006466 n))

end

end A085707.P16286971155772165049

/-! ## A085707.P4877392546445428332

`gcd(A000010(n+1)%2, A065547(A038722(n+1)-1))`
-/

namespace A085707.P4877392546445428332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A000010 (n + 1)) 2) (A065547 (A038722 (n + 1) - 1).toNat)

end

end A085707.P4877392546445428332

/-!
# A085708: Arithmetic derivative of 10^n.

The programs for A085708, the canonical program `A085708.P12121329553897560072` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085708 has offset 0).

The definition of A085708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085708.P9853786792691368724

`7*n*10^(n-1)`
-/

namespace A085708.P9853786792691368724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * n : ℚ) * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A085708.P9853786792691368724

namespace A085708

/-- `7*n*10^(n-1)` -/
def P9853786792691368724.Spec : Prop :=
  ∀ n, P9853786792691368724.a n = (A085708 n : ℚ)

theorem P9853786792691368724.correct : P9853786792691368724.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A085708, Nat.add_sub_cancel, A085708.P9853786792691368724.a, A085708.P12121329553897560072.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A085708, Nat.add_sub_cancel, A085708.P9853786792691368724.a, A085708.P12121329553897560072.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A085708

/-! ## A085708.P12121329553897560072

`20*a(n-1)-100*a(n-2)` with `a(0)=0, a(1)=7`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085708

/-- `20*a(n-1)-100*a(n-2)` -/
def P12121329553897560072.Spec : Prop :=
  ∀ n, P12121329553897560072.a n = A085708 n

theorem P12121329553897560072.correct : P12121329553897560072.Spec := by
  intro n
  simp only [A085708]

end A085708

/-! ## A085708.P16792237595077751010

`A086300(A106600(n))`
-/

namespace A085708.P16792237595077751010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086300 (A106600 n).toNat

end

end A085708.P16792237595077751010

namespace A085708

/-- `A086300(A106600(n))` -/
def P16792237595077751010.Spec : Prop :=
  ∀ n, P16792237595077751010.a n = A085708 n

end A085708

/-!
# A085710: Smallest k such that kn+1 is a semiprime.

The programs for A085710, there is no canonical definition to state claims against.
-/

/-! ## A085710.P16381607506819082725

`(A131016(n+1)-1)/(n+1)`
-/

namespace A085710.P16381607506819082725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131016 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A085710.P16381607506819082725

/-! ## A085710.P6054003014197359105

`A023443(A131016(n+1))/(n+1)`
-/

namespace A085710.P6054003014197359105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023443 (A131016 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A085710.P6054003014197359105

/-! ## A085710.P8686614607370921576

`A233583(A131016(n+1))/A000027(n+1)`
-/

namespace A085710.P8686614607370921576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (A131016 (n + 1)).toNat : ℚ) / (A000027 (n + 1) : ℚ)

end

end A085710.P8686614607370921576

/-! ## A085710.P10230668073268443321

`A233583(A131016(n+1))/A028310(n+1)`
-/

namespace A085710.P10230668073268443321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (A131016 (n + 1)).toNat : ℚ) / (A028310 (n + 1) : ℚ)

end

end A085710.P10230668073268443321

/-! ## A085710.P4832987173042919139

`A016493(A105975(n+1)+A085862(n))`
-/

namespace A085710.P4832987173042919139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016493 (A105975 (n + 1) + A085862 n).toNat

end

end A085710.P4832987173042919139

/-!
# A085711: Numbers k such that sopfr(k) is a semiprime.

The programs for A085711, the canonical program `A085711.P6739795908434668952` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085711 has offset 1).

The definition of A085711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085711.P6739795908434668952

`eq[2, A001222(A001414(n+2))]+2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A085711

/-- `eq[2, A001222(A001414(n+2))]+2` -/
def P6739795908434668952.Spec : Prop :=
  ∀ n, (P6739795908434668952.a n : ℤ) = A085711 (n + 1)

theorem P6739795908434668952.correct : P6739795908434668952.Spec := by
  intro n
  simp only [A085711, Nat.add_sub_cancel]

end A085711

/-! ## A085711.P12181526243694793368

`lt[1, A105700(A107463(n))]`
-/

namespace A085711.P12181526243694793368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A085711.P12181526243694793368

namespace A085711

/-- `lt[1, A105700(A107463(n))]` -/
def P12181526243694793368.Spec : Prop :=
  ∀ n, (P12181526243694793368.a n : ℤ) = A085711 (n + 1)

end A085711

/-! ## A085711.P17701498720402213422

`eq[2, A342956(n+1)]+1`
-/

namespace A085711.P17701498720402213422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342956 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085711.P17701498720402213422

namespace A085711

/-- `eq[2, A342956(n+1)]+1` -/
def P17701498720402213422.Spec : Prop :=
  ∀ n, (P17701498720402213422.a n : ℤ) = A085711 (n + 1)

end A085711

/-! ## A085711.P18073274510008212365

`A113484(eq[2, A342956(n+1)])`
-/

namespace A085711.P18073274510008212365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085711.P18073274510008212365

namespace A085711

/-- `A113484(eq[2, A342956(n+1)])` -/
def P18073274510008212365.Spec : Prop :=
  ∀ n, P18073274510008212365.a n = A085711 (n + 1)

end A085711

/-! ## A085711.P16415506859982854785

`eq[2, A342956(A233583(n+1))]`
-/

namespace A085711.P16415506859982854785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342956 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085711.P16415506859982854785

namespace A085711

/-- `eq[2, A342956(A233583(n+1))]` -/
def P16415506859982854785.Spec : Prop :=
  ∀ n, (P16415506859982854785.a n : ℤ) = A085711 (n + 1)

end A085711

/-!
# A085712: Semiprimes n such that lpf(n)^spf(n)+1 is also semiprime, where lpf(n) is larger prime factor of n and spf(n) is smaller prime factor of n.

The programs for A085712, the canonical program `A085712.P6030904731041959429` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085712 has offset 1).

The definition of A085712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085712.P17546371779281223696

`2*A048161(n+1)`
-/

namespace A085712.P17546371779281223696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048161 (n + 1)

end

end A085712.P17546371779281223696

namespace A085712

/-- `2*A048161(n+1)` -/
def P17546371779281223696.Spec : Prop :=
  ∀ n, P17546371779281223696.a n = A085712 (n + 1)

end A085712

/-! ## A085712.P17283550656890340917

`2*sqrt(A263951(n+1))`
-/

namespace A085712.P17283550656890340917
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A263951 (n + 1) : ℝ)

end

end A085712.P17283550656890340917

namespace A085712

/-- `2*sqrt(A263951(n+1))` -/
def P17283550656890340917.Spec : Prop :=
  ∀ n, P17283550656890340917.a n = (A085712 (n + 1) : ℝ)

end A085712

/-! ## A085712.P6030904731041959429

`2*p?[A002731(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A085712

/-- `2*p?[A002731(n+1)]` -/
def P6030904731041959429.Spec : Prop :=
  ∀ n, P6030904731041959429.a n = A085712 (n + 1)

theorem P6030904731041959429.correct : P6030904731041959429.Spec := by
  intro n
  simp only [A085712, Nat.add_sub_cancel]

end A085712

/-! ## A085712.P16186815577018544546

`2*p?[A172438(n+1)]`
-/

namespace A085712.P16186815577018544546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085712.P16186815577018544546

namespace A085712

/-- `2*p?[A172438(n+1)]` -/
def P16186815577018544546.Spec : Prop :=
  ∀ n, P16186815577018544546.a n = A085712 (n + 1)

end A085712

/-! ## A085712.P487872545404551651

`4*A068501(n+1)+2`
-/

namespace A085712.P487872545404551651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A068501 (n + 1) + 2

end

end A085712.P487872545404551651

namespace A085712

/-- `4*A068501(n+1)+2` -/
def P487872545404551651.Spec : Prop :=
  ∀ n, P487872545404551651.a n = A085712 (n + 1)

end A085712

/-! ## A085712.P1271733111922327688

`4*A178659(n+1)-2`
-/

namespace A085712.P1271733111922327688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A178659 (n + 1) - 2

end

end A085712.P1271733111922327688

namespace A085712

/-- `4*A178659(n+1)-2` -/
def P1271733111922327688.Spec : Prop :=
  ∀ n, P1271733111922327688.a n = A085712 (n + 1)

end A085712

/-! ## A085712.P9837011515143795945

`A048161(n+1)+A178659(n+1)+A068501(n+1)`
-/

namespace A085712.P9837011515143795945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1) + (A178659 (n + 1) + A068501 (n + 1))

end

end A085712.P9837011515143795945

namespace A085712

/-- `A048161(n+1)+A178659(n+1)+A068501(n+1)` -/
def P9837011515143795945.Spec : Prop :=
  ∀ n, P9837011515143795945.a n = A085712 (n + 1)

end A085712

/-! ## A085712.P15169819470730627255

`A048161(n+1)+A263951(n+1)/A048161(n+1)`
-/

namespace A085712.P15169819470730627255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048161 (n + 1) : ℚ) + (A263951 (n + 1) : ℚ) / (A048161 (n + 1) : ℚ)

end

end A085712.P15169819470730627255

namespace A085712

/-- `A048161(n+1)+A263951(n+1)/A048161(n+1)` -/
def P15169819470730627255.Spec : Prop :=
  ∀ n, P15169819470730627255.a n = (A085712 (n + 1) : ℚ)

end A085712

/-! ## A085712.P14235427710740404335

`A048161(n+1)+A334802(n+1)/A067756(n+1)`
-/

namespace A085712.P14235427710740404335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048161 (n + 1) : ℚ) + (A334802 (n + 1) : ℚ) / (A067756 (n + 1) : ℚ)

end

end A085712.P14235427710740404335

namespace A085712

/-- `A048161(n+1)+A334802(n+1)/A067756(n+1)` -/
def P14235427710740404335.Spec : Prop :=
  ∀ n, P14235427710740404335.a n = (A085712 (n + 1) : ℚ)

end A085712

/-! ## A085712.P966726169792940672

`2*p?[A085722(n+1)]`
-/

namespace A085712.P966726169792940672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085712.P966726169792940672

namespace A085712

/-- `2*p?[A085722(n+1)]` -/
def P966726169792940672.Spec : Prop :=
  ∀ n, P966726169792940672.a n = A085712 (n + 1)

end A085712

/-! ## A085712.P6733984817012667819

`A016825(A068501(n+1))`
-/

namespace A085712.P6733984817012667819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A068501 (n + 1)).toNat

end

end A085712.P6733984817012667819

namespace A085712

/-- `A016825(A068501(n+1))` -/
def P6733984817012667819.Spec : Prop :=
  ∀ n, P6733984817012667819.a n = A085712 (n + 1)

end A085712

/-! ## A085712.P9207635384787863545

`A113127(A178659(n+1))`
-/

namespace A085712.P9207635384787863545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 (A178659 (n + 1)).toNat

end

end A085712.P9207635384787863545

namespace A085712

/-- `A113127(A178659(n+1))` -/
def P9207635384787863545.Spec : Prop :=
  ∀ n, P9207635384787863545.a n = A085712 (n + 1)

end A085712

/-! ## A085712.P14431933280471838774

`A004277(A048161(n+1))`
-/

namespace A085712.P14431933280471838774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A048161 (n + 1)).toNat

end

end A085712.P14431933280471838774

namespace A085712

/-- `A004277(A048161(n+1))` -/
def P14431933280471838774.Spec : Prop :=
  ∀ n, P14431933280471838774.a n = A085712 (n + 1)

end A085712

/-!
# A085713: Consider numbers k such that phi(x) = k has exactly 3 solutions and they are (3*p, 4*p, 6*p) where p is 1 or a prime. Sequence gives values of p.

The programs for A085713, there is no canonical definition to state claims against.
-/

/-! ## A085713.P13335090022370460863

`record[A323169(A037168(n+1))]`
-/

namespace A085713.P13335090022370460863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A037168 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085713.P13335090022370460863

/-! ## A085713.P5422905085772229326

`record[A323169(A001358(n+1)-2)]`
-/

namespace A085713.P5422905085772229326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A001358 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085713.P5422905085772229326

/-! ## A085713.P5525270921982891389

`record[A323169(2*A006093(n+1))]`
-/

namespace A085713.P5525270921982891389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (2 * A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085713.P5525270921982891389

/-! ## A085713.P13642754611416599288

`record[A323169(2*A039915(n+1))]`
-/

namespace A085713.P13642754611416599288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (2 * A039915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085713.P13642754611416599288

/-! ## A085713.P9671204331696891500

`record[A323169(record[2*A000010(n+1)])]`
-/

namespace A085713.P9671204331696891500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085713.P9671204331696891500

/-! ## A085713.P2458463939079948855

`record[A323169(record[A000010(n+1)+n])]`
-/

namespace A085713.P2458463939079948855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085713.P2458463939079948855

/-! ## A085713.P2150859980320230320

`record[A323169(2*(A008864(n+1)-2))]`
-/

namespace A085713.P2150859980320230320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (2 * (A008864 (n + 1) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085713.P2150859980320230320

/-! ## A085713.P13501595133469293170

`record[A323169(A005843(A006093(n+1)))]`
-/

namespace A085713.P13501595133469293170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A005843 (A006093 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085713.P13501595133469293170

/-! ## A085713.P1559722295407870242

`record[A323169(A047612(A000040(n+1)))]`
-/

namespace A085713.P1559722295407870242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A047612 (A000040 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085713.P1559722295407870242

/-! ## A085713.P9939674565639345836

`record[A323169(A039915(n+1)+A039915(n+1))]`
-/

namespace A085713.P9939674565639345836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A039915 (n + 1) + A039915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085713.P9939674565639345836

/-!
# A085715: Squarefree conductors of quintic fields.

The programs for A085715, there is no canonical definition to state claims against.
-/

/-! ## A085715.P6435823576061950823

`p?[eq[10, A104413(n+7)]]`
-/

namespace A085715.P6435823576061950823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104413 (n + 7)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A085715.P6435823576061950823

/-!
# A085717: Consider the square lattice L and the sublattice K of index 5 spanned by (2,-1), (1,2); a(n) = number of points (x,y) in M with x >= 0, y >= 0, x+y <= n.

The programs for A085717, the canonical program `A085717.P966638111058091001` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085717 has offset 0).

The definition of A085717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085717.P966638111058091001

`ceil(∑[∑[(n+1)%5]]/10)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085717

/-- `ceil(∑[∑[(n+1)%5]]/10)` -/
def P966638111058091001.Spec : Prop :=
  ∀ n, P966638111058091001.a n = A085717 n

theorem P966638111058091001.correct : P966638111058091001.Spec := by
  intro n
  simp only [A085717]

end A085717

/-! ## A085717.P10167439360553152641

`∑[round(char[5*n]+n/5)]`
-/

namespace A085717.P10167439360553152641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ) + (n : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085717.P10167439360553152641

namespace A085717

/-- `∑[round(char[5*n]+n/5)]` -/
def P10167439360553152641.Spec : Prop :=
  ∀ n, P10167439360553152641.a n = A085717 n

end A085717

/-! ## A085717.P3355394544734561240

`round((∑[n+1]+gcd(5, n))/5)`
-/

namespace A085717.P3355394544734561240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd 5 n : ℕ) : ℚ) / 5)

end

end A085717.P3355394544734561240

namespace A085717

/-- `round((∑[n+1]+gcd(5, n))/5)` -/
def P3355394544734561240.Spec : Prop :=
  ∀ n, P3355394544734561240.a n = A085717 n

end A085717

/-! ## A085717.P7900952229557388067

`a(n-5)-1+n` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A085717.P7900952229557388067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 3] fun n a =>
  a (n - 5) - 1 + (n : ℤ)

end

end A085717.P7900952229557388067

namespace A085717

/-- `a(n-5)-1+n` -/
def P7900952229557388067.Spec : Prop :=
  ∀ n, P7900952229557388067.a n = A085717 n

end A085717

/-! ## A085717.P353786523034991751

`n-(1-a(n-5))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A085717.P353786523034991751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 3] fun n a =>
  (n : ℤ) - (1 - a (n - 5))

end

end A085717.P353786523034991751

namespace A085717

/-- `n-(1-a(n-5))` -/
def P353786523034991751.Spec : Prop :=
  ∀ n, P353786523034991751.a n = A085717 n

end A085717

/-! ## A085717.P15936897410775977064

`ceil(∑[A106250(n)/2])`
-/

namespace A085717.P15936897410775977064
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106250 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A085717.P15936897410775977064

namespace A085717

/-- `ceil(∑[A106250(n)/2])` -/
def P15936897410775977064.Spec : Prop :=
  ∀ n, P15936897410775977064.a n = A085717 n

end A085717

/-! ## A085717.P14133460790476067600

`A117450(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A085717.P14133460790476067600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A117450 n - a (n - 2)

end

end A085717.P14133460790476067600

namespace A085717

/-- `A117450(n)-a(n-2)` -/
def P14133460790476067600.Spec : Prop :=
  ∀ n, P14133460790476067600.a n = A085717 n

end A085717

/-! ## A085717.P9426152489070633459

`A011858(n)+A249020(n)-A008738(n)`
-/

namespace A085717.P9426152489070633459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n + (A249020 n - A008738 n)

end

end A085717.P9426152489070633459

namespace A085717

/-- `A011858(n)+A249020(n)-A008738(n)` -/
def P9426152489070633459.Spec : Prop :=
  ∀ n, P9426152489070633459.a n = A085717 n

end A085717

/-! ## A085717.P7580019309545207788

`A002266(n)+A249020(n)-A288156(n)`
-/

namespace A085717.P7580019309545207788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n + (A249020 n - A288156 n)

end

end A085717.P7580019309545207788

namespace A085717

/-- `A002266(n)+A249020(n)-A288156(n)` -/
def P7580019309545207788.Spec : Prop :=
  ∀ n, P7580019309545207788.a n = A085717 n

end A085717

/-! ## A085717.P17239960442880781584

`A008732(n)-A194222(n+2)`
-/

namespace A085717.P17239960442880781584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 n - A194222 (n + 2)

end

end A085717.P17239960442880781584

namespace A085717

/-- `A008732(n)-A194222(n+2)` -/
def P17239960442880781584.Spec : Prop :=
  ∀ n, P17239960442880781584.a n = A085717 n

end A085717

/-! ## A085717.P16285175524914215324

`A288156(n+2)+A130520(n+1)`
-/

namespace A085717.P16285175524914215324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 (n + 2) + A130520 (n + 1)

end

end A085717.P16285175524914215324

namespace A085717

/-- `A288156(n+2)+A130520(n+1)` -/
def P16285175524914215324.Spec : Prop :=
  ∀ n, P16285175524914215324.a n = A085717 n

end A085717

/-! ## A085717.P6623019322503374559

`A227353(n+2)-A118015(n+2)`
-/

namespace A085717.P6623019322503374559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227353 (n + 2) - A118015 (n + 2)

end

end A085717.P6623019322503374559

namespace A085717

/-- `A227353(n+2)-A118015(n+2)` -/
def P6623019322503374559.Spec : Prop :=
  ∀ n, P6623019322503374559.a n = A085717 n

end A085717

/-! ## A085717.P14398951934458003921

`A002266(2*n)+A130520(n+1)+1`
-/

namespace A085717.P14398951934458003921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (2 * n) + (A130520 (n + 1) + 1)

end

end A085717.P14398951934458003921

namespace A085717

/-- `A002266(2*n)+A130520(n+1)+1` -/
def P14398951934458003921.Spec : Prop :=
  ∀ n, P14398951934458003921.a n = A085717 n

end A085717

/-! ## A085717.P13305134758420883287

`A008720(2*n+1)+A008616(2*n)-A008616(2*n+1)`
-/

namespace A085717.P13305134758420883287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 (2 * n + 1) + (A008616 (2 * n) - A008616 (2 * n + 1))

end

end A085717.P13305134758420883287

namespace A085717

/-- `A008720(2*n+1)+A008616(2*n)-A008616(2*n+1)` -/
def P13305134758420883287.Spec : Prop :=
  ∀ n, P13305134758420883287.a n = A085717 n

end A085717

/-! ## A085717.P11158774413952450588

`A000115(2*n)-A008720(2*n+3)`
-/

namespace A085717.P11158774413952450588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (2 * n) - A008720 (2 * n + 3)

end

end A085717.P11158774413952450588

namespace A085717

/-- `A000115(2*n)-A008720(2*n+3)` -/
def P11158774413952450588.Spec : Prop :=
  ∀ n, P11158774413952450588.a n = A085717 n

end A085717

/-! ## A085717.P11716806172561567698

`A183297(A008732(n+2))-(n+3)`
-/

namespace A085717.P11716806172561567698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183297 (A008732 (n + 2)).toNat - (n + 3 : ℤ)

end

end A085717.P11716806172561567698

namespace A085717

/-- `A183297(A008732(n+2))-(n+3)` -/
def P11716806172561567698.Spec : Prop :=
  ∀ n, P11716806172561567698.a n = A085717 n

end A085717

/-! ## A085717.P1599007063785319939

`A000115(2*n)-A004526(A000115(2*n+1))`
-/

namespace A085717.P1599007063785319939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (2 * n) - A004526 (A000115 (2 * n + 1)).toNat

end

end A085717.P1599007063785319939

namespace A085717

/-- `A000115(2*n)-A004526(A000115(2*n+1))` -/
def P1599007063785319939.Spec : Prop :=
  ∀ n, P1599007063785319939.a n = A085717 n

end A085717

/-! ## A085717.P13883150168123359284

`A057354(A054925(n))+A057354(n)+1`
-/

namespace A085717.P13883150168123359284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A054925 n).toNat + (A057354 n + 1)

end

end A085717.P13883150168123359284

namespace A085717

/-- `A057354(A054925(n))+A057354(n)+1` -/
def P13883150168123359284.Spec : Prop :=
  ∀ n, P13883150168123359284.a n = A085717 n

end A085717

/-! ## A085717.P8782090775166802056

`A004526(A130497(∑[n])+A130497(n))`
-/

namespace A085717.P8782090775166802056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A130497 (∑ j ∈ Finset.range (n + 1), f1 j) + A130497 n).toNat

end

end A085717.P8782090775166802056

namespace A085717

/-- `A004526(A130497(∑[n])+A130497(n))` -/
def P8782090775166802056.Spec : Prop :=
  ∀ n, P8782090775166802056.a n = A085717 n

end A085717

/-! ## A085717.P4773341414050138129

`A065033(A130497(∑[n])+A130497(n))`
-/

namespace A085717.P4773341414050138129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A130497 (∑ j ∈ Finset.range (n + 1), f1 j) + A130497 n).toNat

end

end A085717.P4773341414050138129

namespace A085717

/-- `A065033(A130497(∑[n])+A130497(n))` -/
def P4773341414050138129.Spec : Prop :=
  ∀ n, P4773341414050138129.a n = A085717 n

end A085717

/-!
# A085719: Permanent of n X n matrix whose rows are cyclic permutations of 1..n.

The programs for A085719, there is no canonical definition to state claims against.
-/

/-! ## A085719.P1710426566566237933

`A202342(floor(n*∑[n/3]^n)+1)`
-/

namespace A085719.P1710426566566237933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (⌊(n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) ^ n⌋ + 1).toNat

end

end A085719.P1710426566566237933

/-!
# A085721: Semiprimes whose prime factors have an equal number of digits in binary representation.

The programs for A085721, there is no canonical definition to state claims against.
-/

/-! ## A085721.P5096073962778663283

`∩[A087718(n+1), A200878(n+1)]`
-/

namespace A085721.P5096073962778663283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085721.P5096073962778663283

/-! ## A085721.P15286527241426542998

`∩[A200878(n+1), A251728(n+1)]`
-/

namespace A085721.P15286527241426542998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085721.P15286527241426542998

/-! ## A085721.P1683529960600341803

`∩[A001358(n+1), A200878(n+1)]`
-/

namespace A085721.P1683529960600341803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085721.P1683529960600341803

/-! ## A085721.P11763636565761100153

`filter[A200878(n+1), A064911(#)]`
-/

namespace A085721.P11763636565761100153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A085721.P11763636565761100153

/-! ## A085721.P12175458235934827796

`filter[A200878(n+1), A101040(#)]`
-/

namespace A085721.P12175458235934827796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A085721.P12175458235934827796

/-! ## A085721.P5125854505615632676

`filter[A266346(n+1), A064911(#)]`
-/

namespace A085721.P5125854505615632676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A085721.P5125854505615632676

/-! ## A085721.P15699539381027802448

`filter[A266346(n+1), A101040(#)]`
-/

namespace A085721.P15699539381027802448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A085721.P15699539381027802448

/-! ## A085721.P13641907582005042580

`filter[A200878(n+1), A353476(#)]`
-/

namespace A085721.P13641907582005042580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A085721.P13641907582005042580

/-! ## A085721.P7774779814385010786

`filter[A266346(n+1), A353476(#)]`
-/

namespace A085721.P7774779814385010786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A085721.P7774779814385010786

/-! ## A085721.P17391529395917752258

`filter[A266346(n+2), A353799(#)]`
-/

namespace A085721.P17391529395917752258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266346 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A085721.P17391529395917752258

/-! ## A085721.P929520547747122456

`∩[A001358(n+1), A266346(n)]`
-/

namespace A085721.P929520547747122456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085721.P929520547747122456

/-! ## A085721.P16186735796837740380

`∩[A087718(n+1), A266346(n)]`
-/

namespace A085721.P16186735796837740380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085721.P16186735796837740380

/-! ## A085721.P6715706988790544294

`∩[A251728(n+1), A266346(n)]`
-/

namespace A085721.P6715706988790544294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085721.P6715706988790544294

/-! ## A085721.P676843891793441800

`∩[A323644(n+1), A266346(n)]`
-/

namespace A085721.P676843891793441800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085721.P676843891793441800

/-! ## A085721.P12754868044397303104

`∩[A176540(n+1), A200878(n+1)]`
-/

namespace A085721.P12754868044397303104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085721.P12754868044397303104

/-! ## A085721.P18366397866622283947

`∩[A037143(n+1), A200878(n+1)]`
-/

namespace A085721.P18366397866622283947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085721.P18366397866622283947

/-! ## A085721.P13963754650071242103

`record[A001358(n+1)/A339410(A138510(n+1))]`
-/

namespace A085721.P13963754650071242103
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001358 (n + 1) : ℚ) / (A339410 (A138510 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085721.P13963754650071242103

/-! ## A085721.P17001505057215351951

`∩[A063762(n+1), A200878(n+1)]`
-/

namespace A085721.P17001505057215351951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085721.P17001505057215351951

/-! ## A085721.P12035536353780253412

`∩[A063538(n+1), A200878(n+1)]`
-/

namespace A085721.P12035536353780253412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085721.P12035536353780253412

/-! ## A085721.P12016183334394778108

`∩[A200878(n+1), A280693(n+1)]`
-/

namespace A085721.P12016183334394778108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085721.P12016183334394778108

/-!
# A085722: Numbers k such that k^2 + 1 is a semiprime.

The programs for A085722, the canonical program `A085722.P4138878208806873837` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085722 has offset 1).

The definition of A085722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2826 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085722.P4232591161615597124

`floor(sqrt(A144255(n+1)+A000002(2*(n+2))))`
-/

namespace A085722.P4232591161615597124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A144255 (n + 1) + A000002 (2 * (n + 2)))

end

end A085722.P4232591161615597124

namespace A085722

/-- `floor(sqrt(A144255(n+1)+A000002(2*(n+2))))` -/
def P4232591161615597124.Spec : Prop :=
  ∀ n, P4232591161615597124.a n = A085722 (n + 1)

end A085722

/-! ## A085722.P7139657359333432347

`floor(sqrt(A144255(n+1)+A109008(2*n)))`
-/

namespace A085722.P7139657359333432347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A144255 (n + 1) + A109008 (2 * n))

end

end A085722.P7139657359333432347

namespace A085722

/-- `floor(sqrt(A144255(n+1)+A109008(2*n)))` -/
def P7139657359333432347.Spec : Prop :=
  ∀ n, P7139657359333432347.a n = A085722 (n + 1)

end A085722

/-! ## A085722.P8020569259603316152

`floor(sqrt(A144255(n+1)+A005843(2*n+1)))`
-/

namespace A085722.P8020569259603316152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A144255 (n + 1) + A005843 (2 * n + 1))

end

end A085722.P8020569259603316152

namespace A085722

/-- `floor(sqrt(A144255(n+1)+A005843(2*n+1)))` -/
def P8020569259603316152.Spec : Prop :=
  ∀ n, P8020569259603316152.a n = A085722 (n + 1)

end A085722

/-! ## A085722.P8216491758586343756

`floor(sqrt(A144255(n+1)))%A003342(2*n+1)`
-/

namespace A085722.P8216491758586343756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A144255 (n + 1))) (A003342 (2 * n + 1))

end

end A085722.P8216491758586343756

namespace A085722

/-- `floor(sqrt(A144255(n+1)))%A003342(2*n+1)` -/
def P8216491758586343756.Spec : Prop :=
  ∀ n, P8216491758586343756.a n = A085722 (n + 1)

end A085722

/-! ## A085722.P18127801759282398198

`floor(sqrt(A144255(n+1)%A217501(2*(n+1))))`
-/

namespace A085722.P18127801759282398198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (A144255 (n + 1)) (A217501 (2 * (n + 1))))

end

end A085722.P18127801759282398198

namespace A085722

/-- `floor(sqrt(A144255(n+1)%A217501(2*(n+1))))` -/
def P18127801759282398198.Spec : Prop :=
  ∀ n, P18127801759282398198.a n = A085722 (n + 1)

end A085722

/-! ## A085722.P15934844984372511847

`sqrt(A144255(n+1)+A033999(2*n+3))`
-/

namespace A085722.P15934844984372511847
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A144255 (n + 1) + A033999 (2 * n + 3) : ℝ)

end

end A085722.P15934844984372511847

namespace A085722

/-- `sqrt(A144255(n+1)+A033999(2*n+3))` -/
def P15934844984372511847.Spec : Prop :=
  ∀ n, P15934844984372511847.a n = (A085722 (n + 1) : ℝ)

end A085722

/-! ## A085722.P2535391060218659142

`floor(sqrt(A262813(2*(n+2))+A144255(n+1)))`
-/

namespace A085722.P2535391060218659142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A262813 (2 * (n + 2)) + A144255 (n + 1))

end

end A085722.P2535391060218659142

namespace A085722

/-- `floor(sqrt(A262813(2*(n+2))+A144255(n+1)))` -/
def P2535391060218659142.Spec : Prop :=
  ∀ n, P2535391060218659142.a n = A085722 (n + 1)

end A085722

/-! ## A085722.P8543049699289899021

`floor(sqrt(A144255(n+1)+A078880(2*n+5)))`
-/

namespace A085722.P8543049699289899021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A144255 (n + 1) + A078880 (2 * n + 5))

end

end A085722.P8543049699289899021

namespace A085722

/-- `floor(sqrt(A144255(n+1)+A078880(2*n+5)))` -/
def P8543049699289899021.Spec : Prop :=
  ∀ n, P8543049699289899021.a n = A085722 (n + 1)

end A085722

/-! ## A085722.P13377904557661129206

`∩[A333635(n+1), A394626(n+1)]`
-/

namespace A085722.P13377904557661129206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085722.P13377904557661129206

namespace A085722

/-- `∩[A333635(n+1), A394626(n+1)]` -/
def P13377904557661129206.Spec : Prop :=
  ∀ n, (P13377904557661129206.a n : ℤ) = A085722 (n + 1)

end A085722

/-! ## A085722.P16616406487940300685

`∩[A134427(n+1), A333635(n+1)]`
-/

namespace A085722.P16616406487940300685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085722.P16616406487940300685

namespace A085722

/-- `∩[A134427(n+1), A333635(n+1)]` -/
def P16616406487940300685.Spec : Prop :=
  ∀ n, (P16616406487940300685.a n : ℤ) = A085722 (n + 1)

end A085722

/-! ## A085722.P15257000887499508725

`floor(sqrt(A144255(n+1)+A010888(3*n+1)))`
-/

namespace A085722.P15257000887499508725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A144255 (n + 1) + A010888 (3 * n + 1))

end

end A085722.P15257000887499508725

namespace A085722

/-- `floor(sqrt(A144255(n+1)+A010888(3*n+1)))` -/
def P15257000887499508725.Spec : Prop :=
  ∀ n, P15257000887499508725.a n = A085722 (n + 1)

end A085722

/-! ## A085722.P18077398549325797731

`floor(sqrt(A144255(n+1)+A054354(3*(n+1))))`
-/

namespace A085722.P18077398549325797731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A144255 (n + 1) + A054354 (3 * (n + 1)))

end

end A085722.P18077398549325797731

namespace A085722

/-- `floor(sqrt(A144255(n+1)+A054354(3*(n+1))))` -/
def P18077398549325797731.Spec : Prop :=
  ∀ n, P18077398549325797731.a n = A085722 (n + 1)

end A085722

/-! ## A085722.P14691344062599395594

`floor(sqrt(A144255(n+1)+A067004(3*(n+1))))`
-/

namespace A085722.P14691344062599395594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A144255 (n + 1) + A067004 (3 * (n + 1)))

end

end A085722.P14691344062599395594

namespace A085722

/-- `floor(sqrt(A144255(n+1)+A067004(3*(n+1))))` -/
def P14691344062599395594.Spec : Prop :=
  ∀ n, P14691344062599395594.a n = A085722 (n + 1)

end A085722

/-! ## A085722.P6499136044918358033

`floor(sqrt(A144255(n+1)+A010694(3*n+2)))`
-/

namespace A085722.P6499136044918358033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A144255 (n + 1) + A010694 (3 * n + 2))

end

end A085722.P6499136044918358033

namespace A085722

/-- `floor(sqrt(A144255(n+1)+A010694(3*n+2)))` -/
def P6499136044918358033.Spec : Prop :=
  ∀ n, P6499136044918358033.a n = A085722 (n + 1)

end A085722

/-! ## A085722.P9036797730627101099

`floor(sqrt(A144255(n+1)+A034690(3*n+2)))`
-/

namespace A085722.P9036797730627101099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A144255 (n + 1) + A034690 (3 * n + 2))

end

end A085722.P9036797730627101099

namespace A085722

/-- `floor(sqrt(A144255(n+1)+A034690(3*n+2)))` -/
def P9036797730627101099.Spec : Prop :=
  ∀ n, P9036797730627101099.a n = A085722 (n + 1)

end A085722

/-! ## A085722.P8966027642172126492

`eq[2, A193330(n)]`
-/

namespace A085722.P8966027642172126492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085722.P8966027642172126492

namespace A085722

/-- `eq[2, A193330(n)]` -/
def P8966027642172126492.Spec : Prop :=
  ∀ n, (P8966027642172126492.a n : ℤ) = A085722 (n + 1)

end A085722

/-! ## A085722.P4138878208806873837

`eq[4, A193432(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085722

/-- `eq[4, A193432(n)]` -/
def P4138878208806873837.Spec : Prop :=
  ∀ n, (P4138878208806873837.a n : ℤ) = A085722 (n + 1)

theorem P4138878208806873837.correct : P4138878208806873837.Spec := by
  intro n
  simp only [A085722, Nat.add_sub_cancel]

end A085722

/-! ## A085722.P11311904921753520194

`eq[6, A278162(n)]`
-/

namespace A085722.P11311904921753520194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085722.P11311904921753520194

namespace A085722

/-- `eq[6, A278162(n)]` -/
def P11311904921753520194.Spec : Prop :=
  ∀ n, (P11311904921753520194.a n : ℤ) = A085722 (n + 1)

end A085722

/-! ## A085722.P605869986459647273

`eq[1, A147809(n+1)]+1`
-/

namespace A085722.P605869986459647273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085722.P605869986459647273

namespace A085722

/-- `eq[1, A147809(n+1)]+1` -/
def P605869986459647273.Spec : Prop :=
  ∀ n, (P605869986459647273.a n : ℤ) = A085722 (n + 1)

end A085722

/-! ## A085722.P14588632055843849614

`eq[1, A261609(n+1)]+1`
-/

namespace A085722.P14588632055843849614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085722.P14588632055843849614

namespace A085722

/-- `eq[1, A261609(n+1)]+1` -/
def P14588632055843849614.Spec : Prop :=
  ∀ n, (P14588632055843849614.a n : ℤ) = A085722 (n + 1)

end A085722

/-!
# A085723: Number of prime divisors of n^n+1 (counted with multiplicity).

The programs for A085723, there is no canonical definition to state claims against.
-/

/-! ## A085723.P13021138151086293450

`A060130(p?[A002262(n)]*A049943(n+1))`
-/

namespace A085723.P13021138151086293450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A049943 (n + 1)).toNat

end

end A085723.P13021138151086293450

/-! ## A085723.P16749212629374907394

`A286357(A164410(n+4)+A000217(2*(n+1)))`
-/

namespace A085723.P16749212629374907394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (A164410 (n + 4) + A000217 (2 * (n + 1))).toNat

end

end A085723.P16749212629374907394

/-! ## A085723.P8886309593723281456

`A109129(lcm(A278237(3*n+2), A353426(3*n+4)))`
-/

namespace A085723.P8886309593723281456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (Int.lcm (A278237 (3 * n + 2)) (A353426 (3 * n + 4)))

end

end A085723.P8886309593723281456

/-! ## A085723.P17742942863474289955

`A344090(A101707(n)*A363942(n+1))`
-/

namespace A085723.P17742942863474289955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344090 (A101707 n * A363942 (n + 1)).toNat

end

end A085723.P17742942863474289955

/-! ## A085723.P15495416428488245348

`A070879(A152950(n+1)+A083798(n+1))`
-/

namespace A085723.P15495416428488245348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070879 (A152950 (n + 1) + A083798 (n + 1)).toNat

end

end A085723.P15495416428488245348

/-!
# A085724: Numbers k such that 2^k - 1 is a semiprime (A001358).

The programs for A085724, there is no canonical definition to state claims against.
-/

/-! ## A085724.P742783696721240555

`eq[2, A046051(n+1)]+1`
-/

namespace A085724.P742783696721240555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085724.P742783696721240555

/-! ## A085724.P8597209710982006912

`eq[4, A046801(n+1)]+1`
-/

namespace A085724.P8597209710982006912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085724.P8597209710982006912

/-! ## A085724.P13097402299326985900

`eq[2, A046051(A028310(n))]`
-/

namespace A085724.P13097402299326985900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085724.P13097402299326985900

/-! ## A085724.P12269600537830762472

`A020725(eq[2, A046051(n+1)])`
-/

namespace A085724.P12269600537830762472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085724.P12269600537830762472

/-! ## A085724.P7441760214971919276

`A065475(eq[2, A046051(n+1)])`
-/

namespace A085724.P7441760214971919276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085724.P7441760214971919276

/-!
# A085725: Numbers k such that 1 + (product of first k primes) is a semiprime.

The programs for A085725, there is no canonical definition to state claims against.
-/

/-! ## A085725.P12362459697289596000

`A000720(A250293(n+1))`
-/

namespace A085725.P12362459697289596000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A250293 (n + 1)).toNat

end

end A085725.P12362459697289596000

/-!
# A085726: Numbers k such that k-th Lucas number is a semiprime.

The programs for A085726, there is no canonical definition to state claims against.
-/

/-! ## A085726.P7294678423083061406

`eq[2, A086599(n)]`
-/

namespace A085726.P7294678423083061406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085726.P7294678423083061406

/-! ## A085726.P15541943429715604532

`eq[A043545(n)+3, A272377(n)]`
-/

namespace A085726.P15541943429715604532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085726.P15541943429715604532

/-! ## A085726.P7564188024741420716

`eq[A038575(n)+2, A038575(2*n)]`
-/

namespace A085726.P7564188024741420716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085726.P7564188024741420716

/-! ## A085726.P18155420878209888254

`eq[A084501(A272377(n)), A272377(n)]`
-/

namespace A085726.P18155420878209888254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084501 (A272377 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085726.P18155420878209888254

/-! ## A085726.P12774226731547499258

`eq[2, A000720(A272377(n))]`
-/

namespace A085726.P12774226731547499258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A272377 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085726.P12774226731547499258

/-!
# A085727: Number of semiprimes between n and 2n (inclusive).

The programs for A085727, the canonical program `A085727.P7497080925849299044` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085727 has offset 1).

The definition of A085727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085727.P7497080925849299044

`A072000(2*(n+1))-A072000(A028310(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A085727

/-- `A072000(2*(n+1))-A072000(A028310(n))` -/
def P7497080925849299044.Spec : Prop :=
  ∀ n, P7497080925849299044.a n = A085727 (n + 1)

theorem P7497080925849299044.correct : P7497080925849299044.Spec := by
  intro n
  simp only [A085727, Nat.add_sub_cancel]

end A085727

/-! ## A085727.P14110584543889684338

`A072000(2*(n+1))+A064911(n+1)-A072000(n+1)`
-/

namespace A085727.P14110584543889684338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (2 * (n + 1)) + (A064911 (n + 1) - A072000 (n + 1))

end

end A085727.P14110584543889684338

namespace A085727

/-- `A072000(2*(n+1))+A064911(n+1)-A072000(n+1)` -/
def P14110584543889684338.Spec : Prop :=
  ∀ n, P14110584543889684338.a n = A085727 (n + 1)

end A085727

/-! ## A085727.P1445761319012914217

`A072000(2*(n+1))-A072000(A065033(2*n))`
-/

namespace A085727.P1445761319012914217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (2 * (n + 1)) - A072000 (A065033 (2 * n)).toNat

end

end A085727.P1445761319012914217

namespace A085727

/-- `A072000(2*(n+1))-A072000(A065033(2*n))` -/
def P1445761319012914217.Spec : Prop :=
  ∀ n, P1445761319012914217.a n = A085727 (n + 1)

end A085727

/-! ## A085727.P17130929335593930188

`A072000(2*(n+1))-A072000(A123108(2*n))`
-/

namespace A085727.P17130929335593930188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (2 * (n + 1)) - A072000 (A123108 (2 * n)).toNat

end

end A085727.P17130929335593930188

namespace A085727

/-- `A072000(2*(n+1))-A072000(A123108(2*n))` -/
def P17130929335593930188.Spec : Prop :=
  ∀ n, P17130929335593930188.a n = A085727 (n + 1)

end A085727

/-! ## A085727.P5438722053530811672

`A072000(2*(n+1))-A072000(A101279(2*n+1))`
-/

namespace A085727.P5438722053530811672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (2 * (n + 1)) - A072000 (A101279 (2 * n + 1)).toNat

end

end A085727.P5438722053530811672

namespace A085727

/-- `A072000(2*(n+1))-A072000(A101279(2*n+1))` -/
def P5438722053530811672.Spec : Prop :=
  ∀ n, P5438722053530811672.a n = A085727 (n + 1)

end A085727

/-! ## A085727.P13525532966102481046

`A072000(2*(n+1))-∑[A101605(A008486(n))]`
-/

namespace A085727.P13525532966102481046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085727.P13525532966102481046

namespace A085727

/-- `A072000(2*(n+1))-∑[A101605(A008486(n))]` -/
def P13525532966102481046.Spec : Prop :=
  ∀ n, P13525532966102481046.a n = A085727 (n + 1)

end A085727

/-! ## A085727.P15591149112986893819

`A072000(2*(n+1))-A072000(A233583(n+1))`
-/

namespace A085727.P15591149112986893819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (2 * (n + 1)) - A072000 (A233583 (n + 1)).toNat

end

end A085727.P15591149112986893819

namespace A085727

/-- `A072000(2*(n+1))-A072000(A233583(n+1))` -/
def P15591149112986893819.Spec : Prop :=
  ∀ n, P15591149112986893819.a n = A085727 (n + 1)

end A085727

/-!
# A085729: Sum of prime factors of prime powers.

The programs for A085729, the canonical program `A085729.P17974355859884815083` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085729 has offset 1).

The definition of A085729 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, A025474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A085729.P17974355859884815083

`A025474(n+1)*A025473(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A085729

/-- `A025474(n+1)*A025473(n+1)` -/
def P17974355859884815083.Spec : Prop :=
  ∀ n, P17974355859884815083.a n = A085729 (n + 1)

theorem P17974355859884815083.correct : P17974355859884815083.Spec := by
  intro n
  simp only [A085729, Nat.add_sub_cancel]

end A085729

/-! ## A085729.P13657252575641098048

`A001414(A000961(n+1))`
-/

namespace A085729.P13657252575641098048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000961 (n + 1)).toNat

end

end A085729.P13657252575641098048

namespace A085729

/-- `A001414(A000961(n+1))` -/
def P13657252575641098048.Spec : Prop :=
  ∀ n, P13657252575641098048.a n = A085729 (n + 1)

end A085729

/-! ## A085729.P5140978291407673822

`(A086454(n+1)-1)*A025473(n+1)`
-/

namespace A085729.P5140978291407673822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086454 (n + 1) - 1) * A025473 (n + 1)

end

end A085729.P5140978291407673822

namespace A085729

/-- `(A086454(n+1)-1)*A025473(n+1)` -/
def P5140978291407673822.Spec : Prop :=
  ∀ n, P5140978291407673822.a n = A085729 (n + 1)

theorem P5140978291407673822.correct : P5140978291407673822.Spec := by
  intro n
  simp only [A085729, Nat.add_sub_cancel, A085729.P5140978291407673822.a, A085729.P17974355859884815083.a, A025473, A025473.P8571811305423406731.a, A025474, A025474.P5402530802230343307.a, A086454, A086454.P16343334458700546911.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A001222, A001222.P11318177267732088261.a, A006530, A006530.P13372528560459906635.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A061395, A061395.P8431317036300486107.a, A070229, A070229.P5792893597916963980.a, A122111, A122111.P18124015185857335041.a, A028815, A028815.P810525423351225743.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085729

/-! ## A085729.P8312952119936599030

`(A192133(n+1)+A025474(n+1))*A025474(n+1)`
-/

namespace A085729.P8312952119936599030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A192133 (n + 1) + A025474 (n + 1)) * A025474 (n + 1)

end

end A085729.P8312952119936599030

namespace A085729

/-- `(A192133(n+1)+A025474(n+1))*A025474(n+1)` -/
def P8312952119936599030.Spec : Prop :=
  ∀ n, P8312952119936599030.a n = A085729 (n + 1)

theorem P8312952119936599030.correct : P8312952119936599030.Spec := by
  intro n
  simp only [A085729, Nat.add_sub_cancel, A085729.P8312952119936599030.a, A085729.P17974355859884815083.a, A025473, A025473.P8571811305423406731.a, A025474, A025474.P5402530802230343307.a, A192133, A192133.P10741399618334184473.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A001222, A001222.P11318177267732088261.a, A006530, A006530.P13372528560459906635.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A061395, A061395.P8431317036300486107.a, A070229, A070229.P5792893597916963980.a, A122111, A122111.P18124015185857335041.a, A028815, A028815.P810525423351225743.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085729

/-! ## A085729.P6790451714925268158

`(A025473(n+1)-A192133(n+1))*A025473(n+1)`
-/

namespace A085729.P6790451714925268158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025473 (n + 1) - A192133 (n + 1)) * A025473 (n + 1)

end

end A085729.P6790451714925268158

namespace A085729

/-- `(A025473(n+1)-A192133(n+1))*A025473(n+1)` -/
def P6790451714925268158.Spec : Prop :=
  ∀ n, P6790451714925268158.a n = A085729 (n + 1)

theorem P6790451714925268158.correct : P6790451714925268158.Spec := by
  intro n
  simp only [A085729, Nat.add_sub_cancel, A085729.P6790451714925268158.a, A085729.P17974355859884815083.a, A025473, A025473.P8571811305423406731.a, A025474, A025474.P5402530802230343307.a, A192133, A192133.P10741399618334184473.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A001222, A001222.P11318177267732088261.a, A006530, A006530.P13372528560459906635.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A061395, A061395.P8431317036300486107.a, A070229, A070229.P5792893597916963980.a, A122111, A122111.P18124015185857335041.a, A028815, A028815.P810525423351225743.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085729

/-! ## A085729.P2787273276816722731

`∑{d}[A000961(n+1), A008472(#)]`
-/

namespace A085729.P2787273276816722731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008472 d

end

end A085729.P2787273276816722731

namespace A085729

/-- `∑{d}[A000961(n+1), A008472(#)]` -/
def P2787273276816722731.Spec : Prop :=
  ∀ n, P2787273276816722731.a n = A085729 (n + 1)

end A085729

/-! ## A085729.P10985723708565398697

`∑{d}[A000961(n+1), A020639(#)]-1`
-/

namespace A085729.P10985723708565398697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A020639 d - 1

end

end A085729.P10985723708565398697

namespace A085729

/-- `∑{d}[A000961(n+1), A020639(#)]-1` -/
def P10985723708565398697.Spec : Prop :=
  ∀ n, P10985723708565398697.a n = A085729 (n + 1)

end A085729

/-! ## A085729.P16142891813405639145

`A001222(A000961(n+1))*A025473(n+1)`
-/

namespace A085729.P16142891813405639145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000961 (n + 1)).toNat * A025473 (n + 1)

end

end A085729.P16142891813405639145

namespace A085729

/-- `A001222(A000961(n+1))*A025473(n+1)` -/
def P16142891813405639145.Spec : Prop :=
  ∀ n, P16142891813405639145.a n = A085729 (n + 1)

end A085729

/-! ## A085729.P17670365132134908004

`A006530(A000961(n+1))*A025474(n+1)`
-/

namespace A085729.P17670365132134908004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000961 (n + 1)).toNat * A025474 (n + 1)

end

end A085729.P17670365132134908004

namespace A085729

/-- `A006530(A000961(n+1))*A025474(n+1)` -/
def P17670365132134908004.Spec : Prop :=
  ∀ n, P17670365132134908004.a n = A085729 (n + 1)

theorem P17670365132134908004.correct : P17670365132134908004.Spec := by
  intro n
  simp only [A085729, Nat.add_sub_cancel, A085729.P17670365132134908004.a, A085729.P17974355859884815083.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A006530, A006530.P13372528560459906635.a, A025473, A025473.P8571811305423406731.a, A025474, A025474.P5402530802230343307.a, A000079, A000079.P10855139691139572931.a, A001222, A001222.P11318177267732088261.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A122111, A122111.P18124015185857335041.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085729

/-! ## A085729.P10041499046132247184

`∑{d}[A000961(n+1), A001221(#)*A025473(n+1)]`
-/

namespace A085729.P10041499046132247184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d * A025473 (n + 1)

end

end A085729.P10041499046132247184

namespace A085729

/-- `∑{d}[A000961(n+1), A001221(#)*A025473(n+1)]` -/
def P10041499046132247184.Spec : Prop :=
  ∀ n, P10041499046132247184.a n = A085729 (n + 1)

end A085729

/-! ## A085729.P10379558102485579177

`A020639(record[A034699(n+1)])*A025474(n+1)`
-/

namespace A085729.P10379558102485579177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A025474 (n + 1)

end

end A085729.P10379558102485579177

namespace A085729

/-- `A020639(record[A034699(n+1)])*A025474(n+1)` -/
def P10379558102485579177.Spec : Prop :=
  ∀ n, P10379558102485579177.a n = A085729 (n + 1)

end A085729

/-! ## A085729.P9502731782516109187

`A001414(lt[A001221(n+1), 2]+1)`
-/

namespace A085729.P9502731782516109187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A085729.P9502731782516109187

namespace A085729

/-- `A001414(lt[A001221(n+1), 2]+1)` -/
def P9502731782516109187.Spec : Prop :=
  ∀ n, P9502731782516109187.a n = A085729 (n + 1)

end A085729

/-! ## A085729.P15736188671086850024

`A001222(lt[A001221(n+1), 2]+1)*A025473(n+1)`
-/

namespace A085729.P15736188671086850024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) * A025473 (n + 1)

end

end A085729.P15736188671086850024

namespace A085729

/-- `A001222(lt[A001221(n+1), 2]+1)*A025473(n+1)` -/
def P15736188671086850024.Spec : Prop :=
  ∀ n, P15736188671086850024.a n = A085729 (n + 1)

end A085729

/-! ## A085729.P11790836929274817909

`A006530(lt[A001221(n+1), 2]+1)*A025474(n+1)`
-/

namespace A085729.P11790836929274817909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) * A025474 (n + 1)

end

end A085729.P11790836929274817909

namespace A085729

/-- `A006530(lt[A001221(n+1), 2]+1)*A025474(n+1)` -/
def P11790836929274817909.Spec : Prop :=
  ∀ n, P11790836929274817909.a n = A085729 (n + 1)

end A085729

/-! ## A085729.P15103922996043291362

`A001414(record[A222416(n+1)])`
-/

namespace A085729.P15103922996043291362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085729.P15103922996043291362

namespace A085729

/-- `A001414(record[A222416(n+1)])` -/
def P15103922996043291362.Spec : Prop :=
  ∀ n, P15103922996043291362.a n = A085729 (n + 1)

end A085729

/-! ## A085729.P18265343420030754403

`A001414(record[A028233(n+1)])`
-/

namespace A085729.P18265343420030754403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085729.P18265343420030754403

namespace A085729

/-- `A001414(record[A028233(n+1)])` -/
def P18265343420030754403.Spec : Prop :=
  ∀ n, P18265343420030754403.a n = A085729 (n + 1)

end A085729

/-! ## A085729.P5623556789995495885

`A001414(record[A034684(n+1)])`
-/

namespace A085729.P5623556789995495885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085729.P5623556789995495885

namespace A085729

/-- `A001414(record[A034684(n+1)])` -/
def P5623556789995495885.Spec : Prop :=
  ∀ n, P5623556789995495885.a n = A085729 (n + 1)

end A085729

/-! ## A085729.P12528692565572527913

`A001414(record[A053585(n+1)])`
-/

namespace A085729.P12528692565572527913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085729.P12528692565572527913

namespace A085729

/-- `A001414(record[A053585(n+1)])` -/
def P12528692565572527913.Spec : Prop :=
  ∀ n, P12528692565572527913.a n = A085729 (n + 1)

end A085729

/-! ## A085729.P3437914347884623776

`∑{d}[A000961(n+1), A020500(#)]`
-/

namespace A085729.P3437914347884623776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A020500 d

end

end A085729.P3437914347884623776

namespace A085729

/-- `∑{d}[A000961(n+1), A020500(#)]` -/
def P3437914347884623776.Spec : Prop :=
  ∀ n, P3437914347884623776.a n = A085729 (n + 1)

end A085729

/-! ## A085729.P16751816048791258806

`A081810(A000961(2*n+1-n))`
-/

namespace A085729.P16751816048791258806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081810 (A000961 (2 * n + 1 - n)).toNat

end

end A085729.P16751816048791258806

namespace A085729

/-- `A081810(A000961(2*n+1-n))` -/
def P16751816048791258806.Spec : Prop :=
  ∀ n, P16751816048791258806.a n = A085729 (n + 1)

end A085729

/-!
# A085730: Euler's totient function applied to the sequence of prime powers.

The programs for A085730, the canonical program `A085730.P7262382919816925402` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085730 has offset 1).

The definition of A085730 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A085730.P7262382919816925402

`A000010(A000961(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A085730

/-- `A000010(A000961(n+1))` -/
def P7262382919816925402.Spec : Prop :=
  ∀ n, P7262382919816925402.a n = A085730 (n + 1)

theorem P7262382919816925402.correct : P7262382919816925402.Spec := by
  intro n
  simp only [A085730, Nat.add_sub_cancel]

end A085730

/-! ## A085730.P15386117764372993100

`A000010(sqrt(A056798(n+1)))`
-/

namespace A085730.P15386117764372993100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

end

end A085730.P15386117764372993100

namespace A085730

/-- `A000010(sqrt(A056798(n+1)))` -/
def P15386117764372993100.Spec : Prop :=
  ∀ n, P15386117764372993100.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P13294135323851423990

`A000010(A181062(n+1)+1)`
-/

namespace A085730.P13294135323851423990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A181062 (n + 1) + 1).toNat

end

end A085730.P13294135323851423990

namespace A085730

/-- `A000010(A181062(n+1)+1)` -/
def P13294135323851423990.Spec : Prop :=
  ∀ n, P13294135323851423990.a n = A085730 (n + 1)

theorem P13294135323851423990.correct : P13294135323851423990.Spec := by
  intro n
  simp only [A085730, Nat.add_sub_cancel, A085730.P13294135323851423990.a, A085730.P7262382919816925402.a, A000010, A000010.P4673923239450215316.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A181062, A181062.P6529548857799504333.a, A000079, A000079.P10855139691139572931.a, A003557, A003557.P6364735403900941810.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085730

/-! ## A085730.P547901960001749300

`A000010(A138929(n+1)/2)`
-/

namespace A085730.P547901960001749300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A138929 (n + 1) : ℚ) / 2)).toNat

end

end A085730.P547901960001749300

namespace A085730

/-- `A000010(A138929(n+1)/2)` -/
def P547901960001749300.Spec : Prop :=
  ∀ n, P547901960001749300.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P9594350977343075677

`A000010(record[(n+1)/A001221(n+1)!])`
-/

namespace A085730.P9594350977343075677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (A001221 (n + 1)).toNat : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A085730.P9594350977343075677

namespace A085730

/-- `A000010(record[(n+1)/A001221(n+1)!])` -/
def P9594350977343075677.Spec : Prop :=
  ∀ n, P9594350977343075677.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P11259403439293297771

`A000010(A192134(n+1)+A192015(n+1))`
-/

namespace A085730.P11259403439293297771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A192134 (n + 1) + A192015 (n + 1)).toNat

end

end A085730.P11259403439293297771

namespace A085730

/-- `A000010(A192134(n+1)+A192015(n+1))` -/
def P11259403439293297771.Spec : Prop :=
  ∀ n, P11259403439293297771.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P14904469411756027328

`A000010(record[A020639(n+1)^A001222(n+1)])`
-/

namespace A085730.P14904469411756027328
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A085730.P14904469411756027328

namespace A085730

/-- `A000010(record[A020639(n+1)^A001222(n+1)])` -/
def P14904469411756027328.Spec : Prop :=
  ∀ n, P14904469411756027328.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P5751444536258095755

`A000010(record[(n+1)/A006530(n+1)*A020639(n+1)])`
-/

namespace A085730.P5751444536258095755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ) * (A020639 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A085730.P5751444536258095755

namespace A085730

/-- `A000010(record[(n+1)/A006530(n+1)*A020639(n+1)])` -/
def P5751444536258095755.Spec : Prop :=
  ∀ n, P5751444536258095755.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P10256258276264940121

`A000010(record[A034699(n+1)])`
-/

namespace A085730.P10256258276264940121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085730.P10256258276264940121

namespace A085730

/-- `A000010(record[A034699(n+1)])` -/
def P10256258276264940121.Spec : Prop :=
  ∀ n, P10256258276264940121.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P15183531104299926455

`A000010(record[A330691(n+1)])`
-/

namespace A085730.P15183531104299926455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085730.P15183531104299926455

namespace A085730

/-- `A000010(record[A330691(n+1)])` -/
def P15183531104299926455.Spec : Prop :=
  ∀ n, P15183531104299926455.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P4523454263758696504

`A000010(record[A330741(n+1)])`
-/

namespace A085730.P4523454263758696504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085730.P4523454263758696504

namespace A085730

/-- `A000010(record[A330741(n+1)])` -/
def P4523454263758696504.Spec : Prop :=
  ∀ n, P4523454263758696504.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P12391218718881209700

`A000010(eq[1, A063919(n+1)]+1)`
-/

namespace A085730.P12391218718881209700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A085730.P12391218718881209700

namespace A085730

/-- `A000010(eq[1, A063919(n+1)]+1)` -/
def P12391218718881209700.Spec : Prop :=
  ∀ n, P12391218718881209700.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P16981134046140677437

`A000010(eq[1, A118106(n+1)]+1)`
-/

namespace A085730.P16981134046140677437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A085730.P16981134046140677437

namespace A085730

/-- `A000010(eq[1, A118106(n+1)]+1)` -/
def P16981134046140677437.Spec : Prop :=
  ∀ n, P16981134046140677437.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P8897711265660943550

`A000010(eq[1, A303759(n+1)]+1)`
-/

namespace A085730.P8897711265660943550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A085730.P8897711265660943550

namespace A085730

/-- `A000010(eq[1, A303759(n+1)]+1)` -/
def P8897711265660943550.Spec : Prop :=
  ∀ n, P8897711265660943550.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P3535627562359850956

`A000010(lt[A001221(n+1), 2]+1)`
-/

namespace A085730.P3535627562359850956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A085730.P3535627562359850956

namespace A085730

/-- `A000010(lt[A001221(n+1), 2]+1)` -/
def P3535627562359850956.Spec : Prop :=
  ∀ n, P3535627562359850956.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P4706172031107247738

`A000010(record[A324388(n+1)])`
-/

namespace A085730.P4706172031107247738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085730.P4706172031107247738

namespace A085730

/-- `A000010(record[A324388(n+1)])` -/
def P4706172031107247738.Spec : Prop :=
  ∀ n, P4706172031107247738.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P15504084596010997689

`A000010(record[A354933(n+1)])`
-/

namespace A085730.P15504084596010997689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085730.P15504084596010997689

namespace A085730

/-- `A000010(record[A354933(n+1)])` -/
def P15504084596010997689.Spec : Prop :=
  ∀ n, P15504084596010997689.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P11437593374352281304

`A000010(record[A222416(n+1)])`
-/

namespace A085730.P11437593374352281304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085730.P11437593374352281304

namespace A085730

/-- `A000010(record[A222416(n+1)])` -/
def P11437593374352281304.Spec : Prop :=
  ∀ n, P11437593374352281304.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P11485670998878195325

`A000010(record[A028233(n+1)])`
-/

namespace A085730.P11485670998878195325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085730.P11485670998878195325

namespace A085730

/-- `A000010(record[A028233(n+1)])` -/
def P11485670998878195325.Spec : Prop :=
  ∀ n, P11485670998878195325.a n = A085730 (n + 1)

end A085730

/-! ## A085730.P9958219948611804143

`A000010(record[A034684(n+1)])`
-/

namespace A085730.P9958219948611804143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085730.P9958219948611804143

namespace A085730

/-- `A000010(record[A034684(n+1)])` -/
def P9958219948611804143.Spec : Prop :=
  ∀ n, P9958219948611804143.a n = A085730 (n + 1)

end A085730

/-!
# A085731: Greatest common divisor of n and its arithmetic derivative.

The programs for A085731, the canonical program `A085731.P17818604226734037125` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085731 has offset 1).

The definition of A085731 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A085731.P13885907363472536441

`(n+1)/A083346(n+1)`
-/

namespace A085731.P13885907363472536441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A083346 (n + 1) : ℚ)

end

end A085731.P13885907363472536441

namespace A085731

/-- `(n+1)/A083346(n+1)` -/
def P13885907363472536441.Spec : Prop :=
  ∀ n, P13885907363472536441.a n = (A085731 (n + 1) : ℚ)

end A085731

/-! ## A085731.P17818604226734037125

`gcd(n+1, A003415(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A085731

/-- `gcd(n+1, A003415(n+1))` -/
def P17818604226734037125.Spec : Prop :=
  ∀ n, (P17818604226734037125.a n : ℤ) = A085731 (n + 1)

theorem P17818604226734037125.correct : P17818604226734037125.Spec := by
  intro n
  simp only [A085731, Nat.add_sub_cancel]

end A085731

/-! ## A085731.P8074282440496621507

`gcd(n+1, ∑[A258057(n)])`
-/

namespace A085731.P8074282440496621507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085731.P8074282440496621507

namespace A085731

/-- `gcd(n+1, ∑[A258057(n)])` -/
def P8074282440496621507.Spec : Prop :=
  ∀ n, (P8074282440496621507.a n : ℤ) = A085731 (n + 1)

end A085731

/-! ## A085731.P14900875161687569537

`gcd(C(n+1, n), Δ[A258864(n)])`
-/

namespace A085731.P14900875161687569537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (n + 1) n : ℤ) (f1 (n + 1) - f1 n)

end

end A085731.P14900875161687569537

namespace A085731

/-- `gcd(C(n+1, n), Δ[A258864(n)])` -/
def P14900875161687569537.Spec : Prop :=
  ∀ n, (P14900875161687569537.a n : ℤ) = A085731 (n + 1)

end A085731

/-! ## A085731.P5407254033859965390

`A003557(n+1)*A369008(n+1)`
-/

namespace A085731.P5407254033859965390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A369008 (n + 1)

end

end A085731.P5407254033859965390

namespace A085731

/-- `A003557(n+1)*A369008(n+1)` -/
def P5407254033859965390.Spec : Prop :=
  ∀ n, P5407254033859965390.a n = A085731 (n + 1)

end A085731

/-! ## A085731.P8528371143439502418

`gcd(A068719(n+1), A073675(n+1))`
-/

namespace A085731.P8528371143439502418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068719 (n + 1)) (A073675 (n + 1))

end

end A085731.P8528371143439502418

namespace A085731

/-- `gcd(A068719(n+1), A073675(n+1))` -/
def P8528371143439502418.Spec : Prop :=
  ∀ n, (P8528371143439502418.a n : ℤ) = A085731 (n + 1)

end A085731

/-! ## A085731.P2202729823736414642

`gcd(A028310(n+1), A129283(n+1))`
-/

namespace A085731.P2202729823736414642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (n + 1)) (A129283 (n + 1))

end

end A085731.P2202729823736414642

namespace A085731

/-- `gcd(A028310(n+1), A129283(n+1))` -/
def P2202729823736414642.Spec : Prop :=
  ∀ n, (P2202729823736414642.a n : ℤ) = A085731 (n + 1)

end A085731

/-! ## A085731.P9272974145695177784

`gcd(A000027(n+1), A258851(n+1))`
-/

namespace A085731.P9272974145695177784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A258851 (n + 1))

end

end A085731.P9272974145695177784

namespace A085731

/-- `gcd(A000027(n+1), A258851(n+1))` -/
def P9272974145695177784.Spec : Prop :=
  ∀ n, (P9272974145695177784.a n : ℤ) = A085731 (n + 1)

end A085731

/-! ## A085731.P15290813939816427837

`gcd(A005451(n+1), A342014(n+1))`
-/

namespace A085731.P15290813939816427837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 1)) (A342014 (n + 1))

end

end A085731.P15290813939816427837

namespace A085731

/-- `gcd(A005451(n+1), A342014(n+1))` -/
def P15290813939816427837.Spec : Prop :=
  ∀ n, (P15290813939816427837.a n : ℤ) = A085731 (n + 1)

end A085731

/-! ## A085731.P8005431843657247073

`gcd(A006579(n+1), A348492(n+1))`
-/

namespace A085731.P8005431843657247073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006579 (n + 1)) (A348492 (n + 1))

end

end A085731.P8005431843657247073

namespace A085731

/-- `gcd(A006579(n+1), A348492(n+1))` -/
def P8005431843657247073.Spec : Prop :=
  ∀ n, (P8005431843657247073.a n : ℤ) = A085731 (n + 1)

end A085731

/-! ## A085731.P115178315690981784

`lcm(A003557(n+1), A359594(n+1))`
-/

namespace A085731.P115178315690981784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003557 (n + 1)) (A359594 (n + 1))

end

end A085731.P115178315690981784

namespace A085731

/-- `lcm(A003557(n+1), A359594(n+1))` -/
def P115178315690981784.Spec : Prop :=
  ∀ n, (P115178315690981784.a n : ℤ) = A085731 (n + 1)

end A085731

/-! ## A085731.P4621875819834551677

`(n+1)/(A083345(A008574(n+1))-A083345(n+1))`
-/

namespace A085731.P4621875819834551677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A083345 (A008574 (n + 1)).toNat - A083345 (n + 1) : ℚ)

end

end A085731.P4621875819834551677

namespace A085731

/-- `(n+1)/(A083345(A008574(n+1))-A083345(n+1))` -/
def P4621875819834551677.Spec : Prop :=
  ∀ n, P4621875819834551677.a n = (A085731 (n + 1) : ℚ)

end A085731

/-! ## A085731.P16819198582887597587

`gcd(A028310(A028310(n+1)), A319703(2*n+2))`
-/

namespace A085731.P16819198582887597587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (A028310 (n + 1)).toNat) (A319703 (2 * n + 2))

end

end A085731.P16819198582887597587

namespace A085731

/-- `gcd(A028310(A028310(n+1)), A319703(2*n+2))` -/
def P16819198582887597587.Spec : Prop :=
  ∀ n, (P16819198582887597587.a n : ℤ) = A085731 (n + 1)

end A085731

/-! ## A085731.P16502862851916425430

`A355003(A071892(n+1))`
-/

namespace A085731.P16502862851916425430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355003 (A071892 (n + 1)).toNat

end

end A085731.P16502862851916425430

namespace A085731

/-- `A355003(A071892(n+1))` -/
def P16502862851916425430.Spec : Prop :=
  ∀ n, P16502862851916425430.a n = A085731 (n + 1)

end A085731

/-! ## A085731.P9394595202921171410

`A355003(A013636(n+1))`
-/

namespace A085731.P9394595202921171410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355003 (A013636 (n + 1)).toNat

end

end A085731.P9394595202921171410

namespace A085731

/-- `A355003(A013636(n+1))` -/
def P9394595202921171410.Spec : Prop :=
  ∀ n, P9394595202921171410.a n = A085731 (n + 1)

end A085731

/-! ## A085731.P6457122883083656969

`gcd(A068981(n+1), A126352(n))`
-/

namespace A085731.P6457122883083656969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068981 (n + 1)) (A126352 n)

end

end A085731.P6457122883083656969

namespace A085731

/-- `gcd(A068981(n+1), A126352(n))` -/
def P6457122883083656969.Spec : Prop :=
  ∀ n, (P6457122883083656969.a n : ℤ) = A085731 (n + 1)

end A085731

/-! ## A085731.P15618511146838953863

`A355003(A004928(n+1))`
-/

namespace A085731.P15618511146838953863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355003 (A004928 (n + 1)).toNat

end

end A085731.P15618511146838953863

namespace A085731

/-- `A355003(A004928(n+1))` -/
def P15618511146838953863.Spec : Prop :=
  ∀ n, P15618511146838953863.a n = A085731 (n + 1)

end A085731

/-! ## A085731.P15277082694711460484

`A000188((n+1)*A327939(n+1))`
-/

namespace A085731.P15277082694711460484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((n + 1 : ℤ) * A327939 (n + 1)).toNat

end

end A085731.P15277082694711460484

namespace A085731

/-- `A000188((n+1)*A327939(n+1))` -/
def P15277082694711460484.Spec : Prop :=
  ∀ n, P15277082694711460484.a n = A085731 (n + 1)

end A085731

/-!
# A085734: Triangle read by rows: T(0,0) = 1, T(n,k) = Sum_{j=max(0,1-k)..n-k} (2^j)*(binomial(k+j,1+j) + binomial(k+j+1,1+j))*T(n-1,k-1+j).

The programs for A085734, there is no canonical definition to state claims against.
-/

/-! ## A085734.P10773518762539753239

`A088874(A014132(n+1))`
-/

namespace A085734.P10773518762539753239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088874 (A014132 (n + 1)).toNat

end

end A085734.P10773518762539753239

/-! ## A085734.P13287832804387413436

`A083061(n)*A130321(n)`
-/

namespace A085734.P13287832804387413436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083061 n * A130321 n

end

end A085734.P13287832804387413436

/-! ## A085734.P16505811222319805170

`abs(A318146(∑[A035214(n)]))`
-/

namespace A085734.P16505811222319805170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A318146 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A085734.P16505811222319805170

/-! ## A085734.P17129616932561815478

`abs(A318146(A003057(n+2)+n))`
-/

namespace A085734.P17129616932561815478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A318146 (A003057 (n + 2) + (n : ℤ)).toNat|

end

end A085734.P17129616932561815478

/-! ## A085734.P2400188987817817109

`A094665(∑[A035214(n)])*A130321(n)`
-/

namespace A085734.P2400188987817817109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A130321 n

end

end A085734.P2400188987817817109

/-! ## A085734.P12940076584195552296

`A094665(A014132(n+1))*A130321(n)`
-/

namespace A085734.P12940076584195552296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 (A014132 (n + 1)).toNat * A130321 n

end

end A085734.P12940076584195552296

/-! ## A085734.P7931605001243993876

`A097807(n)*A318146(A014132(n+1))`
-/

namespace A085734.P7931605001243993876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A318146 (A014132 (n + 1)).toNat

end

end A085734.P7931605001243993876

/-! ## A085734.P12141404276478999706

`lcm(A057728(n+1), A318146(A014132(n+1)))`
-/

namespace A085734.P12141404276478999706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057728 (n + 1)) (A318146 (A014132 (n + 1)).toNat)

end

end A085734.P12141404276478999706

/-! ## A085734.P4886089551162328406

`A059268(A061579(n))*A094665(A014132(n+1))`
-/

namespace A085734.P4886089551162328406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A094665 (A014132 (n + 1)).toNat

end

end A085734.P4886089551162328406

/-!
# A085735: Lyrics of "Aquarius", by Boards of Canada.

The programs for A085735, there is no canonical definition to state claims against.
-/

/-! ## A085735.P12516682949377839936

`∑[A193790(∑[A185284(n)])]`
-/

namespace A085735.P12516682949377839936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193790 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085735.P12516682949377839936

/-! ## A085735.P1314274424129768488

`∑[A309086(∑[A185284(n)])]`
-/

namespace A085735.P1314274424129768488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309086 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085735.P1314274424129768488

/-! ## A085735.P8843755390324364110

`∑[A094816(p?[A328517(n)])]`
-/

namespace A085735.P8843755390324364110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328517 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094816 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085735.P8843755390324364110

/-! ## A085735.P16083081711914216672

`∑[A226948(A076303(n+5)²)]`
-/

namespace A085735.P16083081711914216672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226948 (A076303 (n + 5) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085735.P16083081711914216672

/-! ## A085735.P16663241294254497543

`∑[A122291(A034475(n+1)!)]`
-/

namespace A085735.P16663241294254497543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122291 (Nat.factorial (A034475 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085735.P16663241294254497543

/-!
# A085736: Numbers n such that all groups of order n are solvable.

The programs for A085736, there is no canonical definition to state claims against.
-/

/-! ## A085736.P8055918532499223095

`comp[60*n]`
-/

namespace A085736.P8055918532499223095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A085736.P8055918532499223095

/-! ## A085736.P9160066714536931097

`floor((n+1)/sin(96))`
-/

namespace A085736.P9160066714536931097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sin (96 : ℝ)⌋

end

end A085736.P9160066714536931097

/-! ## A085736.P16412363568118866103

`round(n/39)!+n`
-/

namespace A085736.P16412363568118866103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((n : ℚ) / 39)).toNat + n

end

end A085736.P16412363568118866103

/-! ## A085736.P4658268942097436658

`floor(n*atan(ϕ))+1`
-/

namespace A085736.P4658268942097436658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.arctan Real.goldenRatio⌋ + 1

end

end A085736.P4658268942097436658

/-! ## A085736.P10280212047017082281

`a(floor(n/59))+n` with `a(0)=1`
-/

namespace A085736.P10280212047017082281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 59⌋.toNat + n

end

end A085736.P10280212047017082281

/-! ## A085736.P9501799381687764030

`C(∑[char[∑[10*n]-1]], 3)+1+n`
-/

namespace A085736.P9501799381687764030
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 3 + 1 + n

end

end A085736.P9501799381687764030

/-! ## A085736.P14397130730679784041

`A000041(round(n/39))+n`
-/

namespace A085736.P14397130730679784041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((n : ℚ) / 39)).toNat + (n : ℤ)

end

end A085736.P14397130730679784041

/-! ## A085736.P16915938741395957607

`A000108(round(n/39))+n`
-/

namespace A085736.P16915938741395957607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway ((n : ℚ) / 39)).toNat + (n : ℤ)

end

end A085736.P16915938741395957607

/-! ## A085736.P18135536160726453548

`round(root(A000040(4*n+1), 18))+n`
-/

namespace A085736.P18135536160726453548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (4 * n + 1) : ℝ) ^ (1 / (18 : ℝ))) + (n : ℤ)

end

end A085736.P18135536160726453548

/-! ## A085736.P828097530051987000

`round(root(∑[A000005(n+1)²]+n, 18))+n`
-/

namespace A085736.P828097530051987000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) : ℤ) : ℝ) ^ (1 / (18 : ℝ))) + (n : ℤ)

end

end A085736.P828097530051987000

/-!
# A085737: Numerators in triangle formed from Bernoulli numbers.

The programs for A085737, there is no canonical definition to state claims against.
-/

/-! ## A085737.P7322869355329323971

`A168140(n)-A085738(n)`
-/

namespace A085737.P7322869355329323971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168140 n - A085738 n

end

end A085737.P7322869355329323971

/-! ## A085737.P10226102955504954012

`A085738(n)-A168464(n)`
-/

namespace A085737.P10226102955504954012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085738 n - A168464 n

end

end A085737.P10226102955504954012

/-! ## A085737.P11444868550932544327

`(A168140(n)-A168464(n))/2`
-/

namespace A085737.P11444868550932544327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168140 n - A168464 n : ℚ) / 2

end

end A085737.P11444868550932544327

/-! ## A085737.P1011039886189608318

`A168140(n)-A014682(A168464(n)+A168140(n))`
-/

namespace A085737.P1011039886189608318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168140 n - A014682 (A168464 n + A168140 n).toNat

end

end A085737.P1011039886189608318

/-! ## A085737.P865755453206872555

`A168140(n)-A004525(A168464(n)+A168140(n))`
-/

namespace A085737.P865755453206872555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168140 n - A004525 (A168464 n + A168140 n).toNat

end

end A085737.P865755453206872555

/-! ## A085737.P1348287038526624108

`A168140(n)-A004526(A168464(n)+A168140(n))`
-/

namespace A085737.P1348287038526624108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168140 n - A004526 (A168464 n + A168140 n).toNat

end

end A085737.P1348287038526624108

/-! ## A085737.P5445372800615909458

`A168140(n)-A025480(A168464(n)+A168140(n))`
-/

namespace A085737.P5445372800615909458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168140 n - A025480 (A168464 n + A168140 n).toNat

end

end A085737.P5445372800615909458

/-! ## A085737.P17895425092743368911

`A168140(n)-A026741(A168464(n)+A168140(n))`
-/

namespace A085737.P17895425092743368911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168140 n - A026741 (A168464 n + A168140 n).toNat

end

end A085737.P17895425092743368911

/-! ## A085737.P6103130872288163435

`A003602(A168464(n)+A168140(n)-1)-A168464(n)`
-/

namespace A085737.P6103130872288163435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A168464 n + A168140 n - 1).toNat - A168464 n

end

end A085737.P6103130872288163435

/-!
# A085738: Denominators in triangle formed from Bernoulli numbers.

The programs for A085738, there is no canonical definition to state claims against.
-/

/-! ## A085738.P11904169512331988832

`A168140(n)-A085737(n)`
-/

namespace A085738.P11904169512331988832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168140 n - A085737 n

end

end A085738.P11904169512331988832

/-! ## A085738.P17257623165349020531

`A168464(n)+A085737(n)`
-/

namespace A085738.P17257623165349020531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168464 n + A085737 n

end

end A085738.P17257623165349020531

/-! ## A085738.P15585386957311150823

`(A168464(n)+A168140(n))/2`
-/

namespace A085738.P15585386957311150823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168464 n + A168140 n : ℚ) / 2

end

end A085738.P15585386957311150823

/-! ## A085738.P4573771802164852777

`A014682(A168464(n)+A168140(n))`
-/

namespace A085738.P4573771802164852777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A168464 n + A168140 n).toNat

end

end A085738.P4573771802164852777

/-! ## A085738.P3042326182071607862

`A004525(A168464(n)+A168140(n))`
-/

namespace A085738.P3042326182071607862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A168464 n + A168140 n).toNat

end

end A085738.P3042326182071607862

/-! ## A085738.P14598960689146187584

`A004526(A168464(n)+A168140(n))`
-/

namespace A085738.P14598960689146187584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A168464 n + A168140 n).toNat

end

end A085738.P14598960689146187584

/-! ## A085738.P16128726039307471317

`A025480(A168464(n)+A168140(n))`
-/

namespace A085738.P16128726039307471317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A168464 n + A168140 n).toNat

end

end A085738.P16128726039307471317

/-! ## A085738.P7382046982621689015

`A026741(A168464(n)+A168140(n))`
-/

namespace A085738.P7382046982621689015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A168464 n + A168140 n).toNat

end

end A085738.P7382046982621689015

/-! ## A085738.P5934713049295057293

`A003602(A168140(n)+A168464(n)-1)`
-/

namespace A085738.P5934713049295057293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A168140 n + (A168464 n - 1)).toNat

end

end A085738.P5934713049295057293

/-!
# A085739: Partial sums of A034953(n).

The programs for A085739, the canonical program `A085739.P8566900589410183315` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085739 has offset 1).

The definition of A085739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085739.P6805253866617802799

`∑[∑[A138383(n)]]`
-/

namespace A085739.P6805253866617802799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P6805253866617802799

namespace A085739

/-- `∑[∑[A138383(n)]]` -/
def P6805253866617802799.Spec : Prop :=
  ∀ n, P6805253866617802799.a n = A085739 (n + 1)

end A085739

/-! ## A085739.P8566900589410183315

`∑[A034953(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A085739

/-- `∑[A034953(n+1)]` -/
def P8566900589410183315.Spec : Prop :=
  ∀ n, P8566900589410183315.a n = A085739 (n + 1)

theorem P8566900589410183315.correct : P8566900589410183315.Spec := by
  intro n
  simp only [A085739, Nat.add_sub_cancel]

end A085739

/-! ## A085739.P14522511006577643109

`∑[A036690(n+1)/2]`
-/

namespace A085739.P14522511006577643109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036690 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P14522511006577643109

namespace A085739

/-- `∑[A036690(n+1)/2]` -/
def P14522511006577643109.Spec : Prop :=
  ∀ n, P14522511006577643109.a n = (A085739 (n + 1) : ℚ)

end A085739

/-! ## A085739.P4496456098973329542

`∑[A367573(n+1)/4]`
-/

namespace A085739.P4496456098973329542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367573 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P4496456098973329542

namespace A085739

/-- `∑[A367573(n+1)/4]` -/
def P4496456098973329542.Spec : Prop :=
  ∀ n, P4496456098973329542.a n = (A085739 (n + 1) : ℚ)

end A085739

/-! ## A085739.P17607536502241500695

`∑[C(A008864(n+1), 2)]`
-/

namespace A085739.P17607536502241500695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008864 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P17607536502241500695

namespace A085739

/-- `∑[C(A008864(n+1), 2)]` -/
def P17607536502241500695.Spec : Prop :=
  ∀ n, (P17607536502241500695.a n : ℤ) = A085739 (n + 1)

end A085739

/-! ## A085739.P11341709708427302698

`∑[C(A028815(n+1), 2)]`
-/

namespace A085739.P11341709708427302698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028815 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P11341709708427302698

namespace A085739

/-- `∑[C(A028815(n+1), 2)]` -/
def P11341709708427302698.Spec : Prop :=
  ∀ n, (P11341709708427302698.a n : ℤ) = A085739 (n + 1)

end A085739

/-! ## A085739.P1834081990125000968

`A144519(n)+a(n-1)` with `a(0)=3`
-/

namespace A085739.P1834081990125000968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A144519 n + a (n - 1)

end

end A085739.P1834081990125000968

namespace A085739

/-- `A144519(n)+a(n-1)` -/
def P1834081990125000968.Spec : Prop :=
  ∀ n, P1834081990125000968.a n = A085739 (n + 1)

end A085739

/-! ## A085739.P2317949033270191736

`∑[C(∑[A125266(n+1)], 2)]`
-/

namespace A085739.P2317949033270191736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P2317949033270191736

namespace A085739

/-- `∑[C(∑[A125266(n+1)], 2)]` -/
def P2317949033270191736.Spec : Prop :=
  ∀ n, (P2317949033270191736.a n : ℤ) = A085739 (n + 1)

end A085739

/-! ## A085739.P2611094853553192432

`∑[C(Δ[A007504(n)]+1, 2)]`
-/

namespace A085739.P2611094853553192432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f2 (n + 1) - f2 n + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P2611094853553192432

namespace A085739

/-- `∑[C(Δ[A007504(n)]+1, 2)]` -/
def P2611094853553192432.Spec : Prop :=
  ∀ n, (P2611094853553192432.a n : ℤ) = A085739 (n + 1)

end A085739

/-! ## A085739.P18091938158749741224

`∑[A161624(n+1)+∑[n]]`
-/

namespace A085739.P18091938158749741224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161624 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P18091938158749741224

namespace A085739

/-- `∑[A161624(n+1)+∑[n]]` -/
def P18091938158749741224.Spec : Prop :=
  ∀ n, P18091938158749741224.a n = A085739 (n + 1)

end A085739

/-! ## A085739.P16373391774216116199

`∑[(A060800(n+1)-1)/2]`
-/

namespace A085739.P16373391774216116199
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060800 (n + 1) - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P16373391774216116199

namespace A085739

/-- `∑[(A060800(n+1)-1)/2]` -/
def P16373391774216116199.Spec : Prop :=
  ∀ n, P16373391774216116199.a n = (A085739 (n + 1) : ℚ)

theorem P16373391774216116199.correct : P16373391774216116199.Spec := by
  intro n
  simp only [A085739, Nat.add_sub_cancel, A085739.P16373391774216116199.f1, A085739.P16373391774216116199.a, A085739.P8566900589410183315.f1, A085739.P8566900589410183315.a, A034953, A034953.P12568728140146877898.a, A060800, A060800.P2009094709202359605.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A036690, A036690.P4894927351784660474.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085739

/-! ## A085739.P10109052446402253524

`∑[C(A000040(n+1)+1, 2)]`
-/

namespace A085739.P10109052446402253524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1) + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P10109052446402253524

namespace A085739

/-- `∑[C(A000040(n+1)+1, 2)]` -/
def P10109052446402253524.Spec : Prop :=
  ∀ n, (P10109052446402253524.a n : ℤ) = A085739 (n + 1)

end A085739

/-! ## A085739.P10084692830131840370

`(A024450(n+1)+A007504(n+1))/2`
-/

namespace A085739.P10084692830131840370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024450 (n + 1) + A007504 (n + 1) : ℚ) / 2

end

end A085739.P10084692830131840370

namespace A085739

/-- `(A024450(n+1)+A007504(n+1))/2` -/
def P10084692830131840370.Spec : Prop :=
  ∀ n, P10084692830131840370.a n = (A085739 (n + 1) : ℚ)

end A085739

/-! ## A085739.P1337857200604541780

`∑[(A001248(n+1)+A000040(n+1))/2]`
-/

namespace A085739.P1337857200604541780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) + A000040 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P1337857200604541780

namespace A085739

/-- `∑[(A001248(n+1)+A000040(n+1))/2]` -/
def P1337857200604541780.Spec : Prop :=
  ∀ n, P1337857200604541780.a n = (A085739 (n + 1) : ℚ)

end A085739

/-! ## A085739.P3926801136517196718

`∑[A000040(n+1)+A036689(n+1)/2]`
-/

namespace A085739.P3926801136517196718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) + (A036689 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P3926801136517196718

namespace A085739

/-- `∑[A000040(n+1)+A036689(n+1)/2]` -/
def P3926801136517196718.Spec : Prop :=
  ∀ n, P3926801136517196718.a n = (A085739 (n + 1) : ℚ)

end A085739

/-! ## A085739.P14056891734625771545

`∑[A001248(n+1)-A036689(n+1)/2]`
-/

namespace A085739.P14056891734625771545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) : ℚ) - (A036689 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P14056891734625771545

namespace A085739

/-- `∑[A001248(n+1)-A036689(n+1)/2]` -/
def P14056891734625771545.Spec : Prop :=
  ∀ n, P14056891734625771545.a n = (A085739 (n + 1) : ℚ)

end A085739

/-! ## A085739.P3476548159395303755

`∑[A000040(n+1)/2*A008864(n+1)]`
-/

namespace A085739.P3476548159395303755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / 2 * (A008864 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P3476548159395303755

namespace A085739

/-- `∑[A000040(n+1)/2*A008864(n+1)]` -/
def P3476548159395303755.Spec : Prop :=
  ∀ n, P3476548159395303755.a n = (A085739 (n + 1) : ℚ)

end A085739

/-! ## A085739.P13382530504391838367

`∑[record[C(A000010(n+1)+2, 2)]]`
-/

namespace A085739.P13382530504391838367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 1) + 2).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P13382530504391838367

namespace A085739

/-- `∑[record[C(A000010(n+1)+2, 2)]]` -/
def P13382530504391838367.Spec : Prop :=
  ∀ n, (P13382530504391838367.a n : ℤ) = A085739 (n + 1)

end A085739

/-! ## A085739.P16403480695430105867

`∑[C(record[A006530(n+2)+1], 2)]`
-/

namespace A085739.P16403480695430105867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085739.P16403480695430105867

namespace A085739

/-- `∑[C(record[A006530(n+2)+1], 2)]` -/
def P16403480695430105867.Spec : Prop :=
  ∀ n, (P16403480695430105867.a n : ℤ) = A085739 (n + 1)

end A085739

/-! ## A085739.P11511744099555435352

`∑[A147846(2*n+1)]+2`
-/

namespace A085739.P11511744099555435352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147846 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A085739.P11511744099555435352

namespace A085739

/-- `∑[A147846(2*n+1)]+2` -/
def P11511744099555435352.Spec : Prop :=
  ∀ n, P11511744099555435352.a n = A085739 (n + 1)

end A085739

/-!
# A085740: a(n) = T(n)^2 - n^2, where T(n) is a triangular number.

The programs for A085740, the canonical program `A085740.P10849954229785980085` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085740 has offset 0).

The definition of A085740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085740.P10849954229785980085

`(n-1)*n²*(n+3)/4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085740

/-- `(n-1)*n²*(n+3)/4` -/
def P10849954229785980085.Spec : Prop :=
  ∀ n, P10849954229785980085.a n = (A085740 n : ℚ)

end A085740

/-! ## A085740.P243514297048624989

`(∑[n]+n)*C(n, 2)`
-/

namespace A085740.P243514297048624989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) * Nat.choose n 2

end

end A085740.P243514297048624989

namespace A085740

/-- `(∑[n]+n)*C(n, 2)` -/
def P243514297048624989.Spec : Prop :=
  ∀ n, (P243514297048624989.a n : ℤ) = A085740 n

end A085740

/-! ## A085740.P8977372299581468634

`C(n+1, 2)²-n²`
-/

namespace A085740.P8977372299581468634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 ^ 2 : ℤ) - (n ^ 2 : ℤ)

end

end A085740.P8977372299581468634

namespace A085740

/-- `C(n+1, 2)²-n²` -/
def P8977372299581468634.Spec : Prop :=
  ∀ n, P8977372299581468634.a n = A085740 n

end A085740

/-! ## A085740.P14508116013508407558

`(n+3)*n/2*C(n, 2)`
-/

namespace A085740.P14508116013508407558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((n : ℚ) / 2 * (Nat.choose n 2 : ℚ))

end

end A085740.P14508116013508407558

namespace A085740

/-- `(n+3)*n/2*C(n, 2)` -/
def P14508116013508407558.Spec : Prop :=
  ∀ n, P14508116013508407558.a n = (A085740 n : ℚ)

end A085740

/-! ## A085740.P7879729486647120171

`(a(n-1)/(n-1)+n-1)*(n+3)` with `a(0)=0, a(1)=0`
-/

namespace A085740.P7879729486647120171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (a (n - 1) / ((n : ℤ) - 1 : ℚ) + ((n : ℤ) - 1 : ℚ)) * (n + 3 : ℚ)

end

end A085740.P7879729486647120171

namespace A085740

/-- `(a(n-1)/(n-1)+n-1)*(n+3)` -/
def P7879729486647120171.Spec : Prop :=
  ∀ n, P7879729486647120171.a n = (A085740 n : ℚ)

end A085740

/-! ## A085740.P1798093262048989229

`A000537(n)-n²`
-/

namespace A085740.P1798093262048989229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n - (n ^ 2 : ℤ)

end

end A085740.P1798093262048989229

namespace A085740

/-- `A000537(n)-n²` -/
def P1798093262048989229.Spec : Prop :=
  ∀ n, P1798093262048989229.a n = A085740 n

end A085740

/-! ## A085740.P18177258256351108149

`A302650(n+1)-1`
-/

namespace A085740.P18177258256351108149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302650 (n + 1) - 1

end

end A085740.P18177258256351108149

namespace A085740

/-- `A302650(n+1)-1` -/
def P18177258256351108149.Spec : Prop :=
  ∀ n, P18177258256351108149.a n = A085740 n

end A085740

/-! ## A085740.P813208879723238966

`abs(n²-A000217(n)²)`
-/

namespace A085740.P813208879723238966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000217 n ^ 2|

end

end A085740.P813208879723238966

namespace A085740

/-- `abs(n²-A000217(n)²)` -/
def P813208879723238966.Spec : Prop :=
  ∀ n, P813208879723238966.a n = A085740 n

end A085740

/-! ## A085740.P10181821543644909599

`n/2*A212343(n+2)`
-/

namespace A085740.P10181821543644909599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A212343 (n + 2) : ℚ)

end

end A085740.P10181821543644909599

namespace A085740

/-- `n/2*A212343(n+2)` -/
def P10181821543644909599.Spec : Prop :=
  ∀ n, P10181821543644909599.a n = (A085740 n : ℚ)

end A085740

/-! ## A085740.P17011218986445851985

`∑[n^3-(A004277(n)-1)]`
-/

namespace A085740.P17011218986445851985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (A004277 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085740.P17011218986445851985

namespace A085740

/-- `∑[n^3-(A004277(n)-1)]` -/
def P17011218986445851985.Spec : Prop :=
  ∀ n, P17011218986445851985.a n = A085740 n

end A085740

/-! ## A085740.P5858561355053613930

`A001621(n)-A005449(n)`
-/

namespace A085740.P5858561355053613930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001621 n - A005449 n

end

end A085740.P5858561355053613930

namespace A085740

/-- `A001621(n)-A005449(n)` -/
def P5858561355053613930.Spec : Prop :=
  ∀ n, P5858561355053613930.a n = A085740 n

end A085740

/-! ## A085740.P6059215941519498832

`A061316(n)-A014105(n)`
-/

namespace A085740.P6059215941519498832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061316 n - A014105 n

end

end A085740.P6059215941519498832

namespace A085740

/-- `A061316(n)-A014105(n)` -/
def P6059215941519498832.Spec : Prop :=
  ∀ n, P6059215941519498832.a n = A085740 n

end A085740

/-! ## A085740.P9553925488687254759

`A154323(n)-A002522(n)`
-/

namespace A085740.P9553925488687254759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 n - A002522 n

end

end A085740.P9553925488687254759

namespace A085740

/-- `A154323(n)-A002522(n)` -/
def P9553925488687254759.Spec : Prop :=
  ∀ n, P9553925488687254759.a n = A085740 n

end A085740

/-! ## A085740.P3296302341199676064

`A086601(n)-A084849(n)`
-/

namespace A085740.P3296302341199676064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086601 n - A084849 n

end

end A085740.P3296302341199676064

namespace A085740

/-- `A086601(n)-A084849(n)` -/
def P3296302341199676064.Spec : Prop :=
  ∀ n, P3296302341199676064.a n = A085740 n

end A085740

/-! ## A085740.P17729494854177361340

`A123350(n)-A058331(n)`
-/

namespace A085740.P17729494854177361340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123350 n - A058331 n

end

end A085740.P17729494854177361340

namespace A085740

/-- `A123350(n)-A058331(n)` -/
def P17729494854177361340.Spec : Prop :=
  ∀ n, P17729494854177361340.a n = A085740 n

end A085740

/-! ## A085740.P1679398390511229094

`A255499(n)-A000537(n)`
-/

namespace A085740.P1679398390511229094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 n - A000537 n

end

end A085740.P1679398390511229094

namespace A085740

/-- `A255499(n)-A000537(n)` -/
def P1679398390511229094.Spec : Prop :=
  ∀ n, P1679398390511229094.a n = A085740 n

end A085740

/-! ## A085740.P3703486667800030886

`A334694(n)-A046092(n)`
-/

namespace A085740.P3703486667800030886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334694 n - A046092 n

end

end A085740.P3703486667800030886

namespace A085740

/-- `A334694(n)-A046092(n)` -/
def P3703486667800030886.Spec : Prop :=
  ∀ n, P3703486667800030886.a n = A085740 n

end A085740

/-! ## A085740.P5870134961276827412

`A139594(n)-A361099(n)`
-/

namespace A085740.P5870134961276827412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139594 n - A361099 n

end

end A085740.P5870134961276827412

namespace A085740

/-- `A139594(n)-A361099(n)` -/
def P5870134961276827412.Spec : Prop :=
  ∀ n, P5870134961276827412.a n = A085740 n

end A085740

/-! ## A085740.P13345462262347285942

`A000096(n)*A161680(n)`
-/

namespace A085740.P13345462262347285942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n * A161680 n

end

end A085740.P13345462262347285942

namespace A085740

/-- `A000096(n)*A161680(n)` -/
def P13345462262347285942.Spec : Prop :=
  ∀ n, P13345462262347285942.a n = A085740 n

end A085740

/-! ## A085740.P10430268562024264245

`A086602(n)+A050534(n+1)`
-/

namespace A085740.P10430268562024264245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086602 n + A050534 (n + 1)

end

end A085740.P10430268562024264245

namespace A085740

/-- `A086602(n)+A050534(n+1)` -/
def P10430268562024264245.Spec : Prop :=
  ∀ n, P10430268562024264245.a n = A085740 n

end A085740

/-!
# A085741: a(n) = T(n)^n, where T() are the triangular numbers (A000217).

The programs for A085741, the canonical program `A085741.P12705142318067972691` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085741 has offset 0).

The definition of A085741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085741.P12705142318067972691

`(n*(n+1)/2)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085741

/-- `(n*(n+1)/2)^n` -/
def P12705142318067972691.Spec : Prop :=
  ∀ n, P12705142318067972691.a n = (A085741 n : ℚ)

end A085741

/-! ## A085741.P16574647164450507078

`abs((-C(n+1, 2))^n)`
-/

namespace A085741.P16574647164450507078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.choose (n + 1) 2 : ℤ)) ^ n|

end

end A085741.P16574647164450507078

namespace A085741

/-- `abs((-C(n+1, 2))^n)` -/
def P16574647164450507078.Spec : Prop :=
  ∀ n, P16574647164450507078.a n = A085741 n

end A085741

/-! ## A085741.P14516891965838442827

`(sqrt(C(n+1, 2))^n)²`
-/

namespace A085741.P14516891965838442827
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (Nat.choose (n + 1) 2 : ℝ) ^ n) ^ 2

end

end A085741.P14516891965838442827

namespace A085741

/-- `(sqrt(C(n+1, 2))^n)²` -/
def P14516891965838442827.Spec : Prop :=
  ∀ n, P14516891965838442827.a n = (A085741 n : ℝ)

end A085741

/-! ## A085741.P7438517002434692050

`abs(Δ[C(n+1, 3)]^n)`
-/

namespace A085741.P7438517002434692050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n|

end

end A085741.P7438517002434692050

namespace A085741

/-- `abs(Δ[C(n+1, 3)]^n)` -/
def P7438517002434692050.Spec : Prop :=
  ∀ n, P7438517002434692050.a n = A085741 n

end A085741

/-! ## A085741.P8881886874777142000

`abs((n²-C(n, 2))^n)`
-/

namespace A085741.P8881886874777142000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)) ^ n|

end

end A085741.P8881886874777142000

namespace A085741

/-- `abs((n²-C(n, 2))^n)` -/
def P8881886874777142000.Spec : Prop :=
  ∀ n, P8881886874777142000.a n = A085741 n

end A085741

/-!
# A085742: a(n) = T(n^3) - T(n), where T() are the triangular numbers (A000217).

The programs for A085742, the canonical program `A085742.P17164887765828864498` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085742 has offset 0).

The definition of A085742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085742.P17164887765828864498

`(n-1)*n*(n+1)*(n^3+n+1)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085742

/-- `(n-1)*n*(n+1)*(n^3+n+1)/2` -/
def P17164887765828864498.Spec : Prop :=
  ∀ n, P17164887765828864498.a n = (A085742 n : ℚ)

end A085742

/-! ## A085742.P10940681792988210046

`C(n^3+1, 2)-∑[n]`
-/

namespace A085742.P10940681792988210046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 3 + 1) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A085742.P10940681792988210046

namespace A085742

/-- `C(n^3+1, 2)-∑[n]` -/
def P10940681792988210046.Spec : Prop :=
  ∀ n, P10940681792988210046.a n = A085742 n

end A085742

/-! ## A085742.P1065855254587514157

`A071232(n)-∑[n]`
-/

namespace A085742.P1065855254587514157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A085742.P1065855254587514157

namespace A085742

/-- `A071232(n)-∑[n]` -/
def P1065855254587514157.Spec : Prop :=
  ∀ n, P1065855254587514157.a n = A085742 n

end A085742

/-! ## A085742.P6039801215840779868

`A160378(n)+A085744(n)`
-/

namespace A085742.P6039801215840779868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + A085744 n

end

end A085742.P6039801215840779868

namespace A085742

/-- `A160378(n)+A085744(n)` -/
def P6039801215840779868.Spec : Prop :=
  ∀ n, P6039801215840779868.a n = A085742 n

end A085742

/-! ## A085742.P11354749672480447467

`A168192(n)-A100855(n)`
-/

namespace A085742.P11354749672480447467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168192 n - A100855 n

end

end A085742.P11354749672480447467

namespace A085742

/-- `A168192(n)-A100855(n)` -/
def P11354749672480447467.Spec : Prop :=
  ∀ n, P11354749672480447467.a n = A085742 n

end A085742

/-! ## A085742.P7640640165809687007

`A071568(n)*A135503(n)`
-/

namespace A085742.P7640640165809687007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071568 n * A135503 n

end

end A085742.P7640640165809687007

namespace A085742

/-- `A071568(n)*A135503(n)` -/
def P7640640165809687007.Spec : Prop :=
  ∀ n, P7640640165809687007.a n = A085742 n

end A085742

/-! ## A085742.P6639163179950753977

`abs(A000217(n)-A071232(n))`
-/

namespace A085742.P6639163179950753977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 n - A071232 n|

end

end A085742.P6639163179950753977

namespace A085742

/-- `abs(A000217(n)-A071232(n))` -/
def P6639163179950753977.Spec : Prop :=
  ∀ n, P6639163179950753977.a n = A085742 n

end A085742

/-! ## A085742.P4285267560857524619

`A000578(n)+A085744(n)-A000217(n)`
-/

namespace A085742.P4285267560857524619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + (A085744 n - A000217 n)

end

end A085742.P4285267560857524619

namespace A085742

/-- `A000578(n)+A085744(n)-A000217(n)` -/
def P4285267560857524619.Spec : Prop :=
  ∀ n, P4285267560857524619.a n = A085742 n

end A085742

/-! ## A085742.P10194433126380033960

`A001014(n)-(A085744(n)+A000217(n))`
-/

namespace A085742.P10194433126380033960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n - (A085744 n + A000217 n)

end

end A085742.P10194433126380033960

namespace A085742

/-- `A001014(n)-(A085744(n)+A000217(n))` -/
def P10194433126380033960.Spec : Prop :=
  ∀ n, P10194433126380033960.a n = A085742 n

end A085742

/-! ## A085742.P16419459447562083729

`A135503(n)+A006003(n)*A007531(n+1)`
-/

namespace A085742.P16419459447562083729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A006003 n * A007531 (n + 1)

end

end A085742.P16419459447562083729

namespace A085742

/-- `A135503(n)+A006003(n)*A007531(n+1)` -/
def P16419459447562083729.Spec : Prop :=
  ∀ n, P16419459447562083729.a n = A085742 n

end A085742

/-! ## A085742.P1929507203628809612

`A135503(n²)+A135503(n)`
-/

namespace A085742.P1929507203628809612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 (n ^ 2) + A135503 n

end

end A085742.P1929507203628809612

namespace A085742

/-- `A135503(n²)+A135503(n)` -/
def P1929507203628809612.Spec : Prop :=
  ∀ n, P1929507203628809612.a n = A085742 n

end A085742

/-!
# A085743: a(n) = T(n^3) - T(n^2), where T() are the triangular numbers (A000217).

The programs for A085743, the canonical program `A085743.P2646036690905785114` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085743 has offset 0).

The definition of A085743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085743.P2646036690905785114

`(n-1)*n²*(n^3+n²+1)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085743

/-- `(n-1)*n²*(n^3+n²+1)/2` -/
def P2646036690905785114.Spec : Prop :=
  ∀ n, P2646036690905785114.a n = (A085743 n : ℚ)

end A085743

/-! ## A085743.P1216533394474161154

`A214085(n)-n²`
-/

namespace A085743.P1216533394474161154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214085 n - (n ^ 2 : ℤ)

end

end A085743.P1216533394474161154

namespace A085743

/-- `A214085(n)-n²` -/
def P1216533394474161154.Spec : Prop :=
  ∀ n, P1216533394474161154.a n = A085743 n

end A085743

/-! ## A085743.P16260853560116207931

`A071232(n)-C(n²+1, 2)`
-/

namespace A085743.P16260853560116207931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 n - (Nat.choose (n ^ 2 + 1) 2 : ℤ)

end

end A085743.P16260853560116207931

namespace A085743

/-- `A071232(n)-C(n²+1, 2)` -/
def P16260853560116207931.Spec : Prop :=
  ∀ n, P16260853560116207931.a n = A085743 n

end A085743

/-! ## A085743.P923252363401125050

`A071232(n)-A037270(n)`
-/

namespace A085743.P923252363401125050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 n - A037270 n

end

end A085743.P923252363401125050

namespace A085743

/-- `A071232(n)-A037270(n)` -/
def P923252363401125050.Spec : Prop :=
  ∀ n, P923252363401125050.a n = A085743 n

end A085743

/-! ## A085743.P124232534136736281

`A167963(n)-A100855(n)`
-/

namespace A085743.P124232534136736281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167963 n - A100855 n

end

end A085743.P124232534136736281

namespace A085743

/-- `A167963(n)-A100855(n)` -/
def P124232534136736281.Spec : Prop :=
  ∀ n, P124232534136736281.a n = A085743 n

end A085743

/-! ## A085743.P6273559247369988107

`A100606(n)*A161680(n)`
-/

namespace A085743.P6273559247369988107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100606 n * A161680 n

end

end A085743.P6273559247369988107

namespace A085743

/-- `A100606(n)*A161680(n)` -/
def P6273559247369988107.Spec : Prop :=
  ∀ n, P6273559247369988107.a n = A085743 n

end A085743

/-! ## A085743.P11478546568168535937

`abs(A000290(n)-A214085(n))`
-/

namespace A085743.P11478546568168535937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n - A214085 n|

end

end A085743.P11478546568168535937

namespace A085743

/-- `abs(A000290(n)-A214085(n))` -/
def P11478546568168535937.Spec : Prop :=
  ∀ n, P11478546568168535937.a n = A085743 n

end A085743

/-! ## A085743.P7295675841716729743

`n²*A027441(n)-A037270(n)`
-/

namespace A085743.P7295675841716729743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A027441 n - A037270 n

end

end A085743.P7295675841716729743

namespace A085743

/-- `n²*A027441(n)-A037270(n)` -/
def P7295675841716729743.Spec : Prop :=
  ∀ n, P7295675841716729743.a n = A085743 n

end A085743

/-! ## A085743.P12050460930523587714

`A002411(n)*A100104(n)-n²`
-/

namespace A085743.P12050460930523587714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n * A100104 n - (n ^ 2 : ℤ)

end

end A085743.P12050460930523587714

namespace A085743

/-- `A002411(n)*A100104(n)-n²` -/
def P12050460930523587714.Spec : Prop :=
  ∀ n, P12050460930523587714.a n = A085743 n

end A085743

/-! ## A085743.P16605008083342770142

`A002411(n)+A000578(n)*A135503(n)-n²`
-/

namespace A085743.P16605008083342770142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + A000578 n * A135503 n - (n ^ 2 : ℤ)

end

end A085743.P16605008083342770142

namespace A085743

/-- `A002411(n)+A000578(n)*A135503(n)-n²` -/
def P16605008083342770142.Spec : Prop :=
  ∀ n, P16605008083342770142.a n = A085743 n

end A085743

/-! ## A085743.P15191179621207735337

`A071232(n)-A000217(n²)`
-/

namespace A085743.P15191179621207735337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 n - A000217 (n ^ 2)

end

end A085743.P15191179621207735337

namespace A085743

/-- `A071232(n)-A000217(n²)` -/
def P15191179621207735337.Spec : Prop :=
  ∀ n, P15191179621207735337.a n = A085743 n

end A085743

/-! ## A085743.P5843620244671075431

`A160378(n²)-A085744(n)`
-/

namespace A085743.P5843620244671075431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 (n ^ 2) - A085744 n

end

end A085743.P5843620244671075431

namespace A085743

/-- `A160378(n²)-A085744(n)` -/
def P5843620244671075431.Spec : Prop :=
  ∀ n, P5843620244671075431.a n = A085743 n

end A085743

/-!
# A085744: a(n) = A000217(n^3) - n^3.

The programs for A085744, the canonical program `A085744.P6091616498061970500` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085744 has offset 0).

The definition of A085744 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(n^3)-n^3` (program `A085744.P6091616498061970500`, by `A085744.P6091616498061970500.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085744.P5923518405159473377

`(n^6-n^3)/2`
-/

namespace A085744.P5923518405159473377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 6 : ℤ) - (n ^ 3 : ℤ) : ℚ) / 2

end

end A085744.P5923518405159473377

namespace A085744

/-- `(n^6-n^3)/2` -/
def P5923518405159473377.Spec : Prop :=
  ∀ n, P5923518405159473377.a n = (A085744 n : ℚ)

theorem P5923518405159473377.correct : P5923518405159473377.Spec := by
  intro n
  simp only [A085744, Nat.add_sub_cancel, A085744.P5923518405159473377.a, A085744.P6091616498061970500.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085744

/-! ## A085744.P207294873150019390

`A071232(n)-A000578(n)`
-/

namespace A085744.P207294873150019390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 n - A000578 n

end

end A085744.P207294873150019390

namespace A085744

/-- `A071232(n)-A000578(n)` -/
def P207294873150019390.Spec : Prop :=
  ∀ n, P207294873150019390.a n = A085744 n

theorem P207294873150019390.correct : P207294873150019390.Spec := by
  intro n
  simp only [A085744, Nat.add_sub_cancel, A085744.P207294873150019390.a, A085744.P6091616498061970500.a, A000217, A000217.P10269402890581615239.a, A000578, A000578.P12162961755414704816.a, A071232, A071232.P17086031509511629369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085744

/-! ## A085744.P6091616498061970500

`A000217(n^3)-n^3`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085744

/-- `A000217(n^3)-n^3` -/
def P6091616498061970500.Spec : Prop :=
  ∀ n, P6091616498061970500.a n = A085744 n

theorem P6091616498061970500.correct : P6091616498061970500.Spec := by
  intro n
  simp only [A085744]

end A085744

/-! ## A085744.P1062422228071459902

`C(n^3, 2)`
-/

namespace A085744.P1062422228071459902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 3) 2

end

end A085744.P1062422228071459902

namespace A085744

/-- `C(n^3, 2)` -/
def P1062422228071459902.Spec : Prop :=
  ∀ n, (P1062422228071459902.a n : ℤ) = A085744 n

theorem P1062422228071459902.correct : P1062422228071459902.Spec := by
  intro n
  simp only [A085744, Nat.add_sub_cancel, A085744.P1062422228071459902.a, A085744.P6091616498061970500.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085744

/-! ## A085744.P6790035762747806076

`lcm(n, C(n*n², 2))`
-/

namespace A085744.P6790035762747806076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.choose (n * n ^ 2) 2)

end

end A085744.P6790035762747806076

namespace A085744

/-- `lcm(n, C(n*n², 2))` -/
def P6790035762747806076.Spec : Prop :=
  ∀ n, (P6790035762747806076.a n : ℤ) = A085744 n

end A085744

/-! ## A085744.P7240096433055698554

`floor(A060891(n)/2)`
-/

namespace A085744.P7240096433055698554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060891 n : ℚ) / 2⌋

end

end A085744.P7240096433055698554

namespace A085744

/-- `floor(A060891(n)/2)` -/
def P7240096433055698554.Spec : Prop :=
  ∀ n, P7240096433055698554.a n = A085744 n

end A085744

/-! ## A085744.P9399428440548472521

`n/2*A135497(n)`
-/

namespace A085744.P9399428440548472521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A135497 n : ℚ)

end

end A085744.P9399428440548472521

namespace A085744

/-- `n/2*A135497(n)` -/
def P9399428440548472521.Spec : Prop :=
  ∀ n, P9399428440548472521.a n = (A085744 n : ℚ)

theorem P9399428440548472521.correct : P9399428440548472521.Spec := by
  intro n
  simp only [A085744, Nat.add_sub_cancel, A085744.P9399428440548472521.a, A085744.P6091616498061970500.a, A000217, A000217.P10269402890581615239.a, A135497, A135497.P15522374803762714202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085744

/-! ## A085744.P7131269191442247791

`A001014(n)-A071232(n)`
-/

namespace A085744.P7131269191442247791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n - A071232 n

end

end A085744.P7131269191442247791

namespace A085744

/-- `A001014(n)-A071232(n)` -/
def P7131269191442247791.Spec : Prop :=
  ∀ n, P7131269191442247791.a n = A085744 n

theorem P7131269191442247791.correct : P7131269191442247791.Spec := by
  intro n
  simp only [A085744, Nat.add_sub_cancel, A085744.P7131269191442247791.a, A085744.P6091616498061970500.a, A000217, A000217.P10269402890581615239.a, A001014, A001014.P10270364271630987481.a, A071232, A071232.P17086031509511629369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085744

/-! ## A085744.P16277924971814899502

`A168122(n)-A002411(n)`
-/

namespace A085744.P16277924971814899502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168122 n - A002411 n

end

end A085744.P16277924971814899502

namespace A085744

/-- `A168122(n)-A002411(n)` -/
def P16277924971814899502.Spec : Prop :=
  ∀ n, P16277924971814899502.a n = A085744 n

end A085744

/-! ## A085744.P5988025520869579940

`A167963(n)-A006003(n)`
-/

namespace A085744.P5988025520869579940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167963 n - A006003 n

end

end A085744.P5988025520869579940

namespace A085744

/-- `A167963(n)-A006003(n)` -/
def P5988025520869579940.Spec : Prop :=
  ∀ n, P5988025520869579940.a n = A085744 n

end A085744

/-! ## A085744.P7045668036030753116

`A085742(n)-A160378(n)`
-/

namespace A085744.P7045668036030753116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085742 n - A160378 n

end

end A085744.P7045668036030753116

namespace A085744

/-- `A085742(n)-A160378(n)` -/
def P7045668036030753116.Spec : Prop :=
  ∀ n, P7045668036030753116.a n = A085744 n

end A085744

/-! ## A085744.P15427669633280088933

`A168351(n)-A168178(n)`
-/

namespace A085744.P15427669633280088933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168351 n - A168178 n

end

end A085744.P15427669633280088933

namespace A085744

/-- `A168351(n)-A168178(n)` -/
def P15427669633280088933.Spec : Prop :=
  ∀ n, P15427669633280088933.a n = A085744 n

theorem P15427669633280088933.correct : P15427669633280088933.Spec := by
  intro n
  simp only [A085744, Nat.add_sub_cancel, A085744.P15427669633280088933.a, A085744.P6091616498061970500.a, A000217, A000217.P10269402890581615239.a, A168178, A168178.P7150128011749350720.a, A168351, A168351.P7899270696741764413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085744

/-! ## A085744.P9191513112439227362

`A168526(n)-A168179(n)`
-/

namespace A085744.P9191513112439227362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168526 n - A168179 n

end

end A085744.P9191513112439227362

namespace A085744

/-- `A168526(n)-A168179(n)` -/
def P9191513112439227362.Spec : Prop :=
  ∀ n, P9191513112439227362.a n = A085744 n

end A085744

/-! ## A085744.P6991052129206071922

`A168527(n)-A168180(n)`
-/

namespace A085744.P6991052129206071922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168527 n - A168180 n

end

end A085744.P6991052129206071922

namespace A085744

/-- `A168527(n)-A168180(n)` -/
def P6991052129206071922.Spec : Prop :=
  ∀ n, P6991052129206071922.a n = A085744 n

end A085744

/-! ## A085744.P9573390921026571552

`A168555(n)-A168187(n)`
-/

namespace A085744.P9573390921026571552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168555 n - A168187 n

end

end A085744.P9573390921026571552

namespace A085744

/-- `A168555(n)-A168187(n)` -/
def P9573390921026571552.Spec : Prop :=
  ∀ n, P9573390921026571552.a n = A085744 n

end A085744

/-! ## A085744.P8310252965372786505

`A168564(n)-A168188(n)`
-/

namespace A085744.P8310252965372786505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168564 n - A168188 n

end

end A085744.P8310252965372786505

namespace A085744

/-- `A168564(n)-A168188(n)` -/
def P8310252965372786505.Spec : Prop :=
  ∀ n, P8310252965372786505.a n = A085744 n

end A085744

/-! ## A085744.P9953754287399550507

`A168627(n)-A168189(n)`
-/

namespace A085744.P9953754287399550507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168627 n - A168189 n

end

end A085744.P9953754287399550507

namespace A085744

/-- `A168627(n)-A168189(n)` -/
def P9953754287399550507.Spec : Prop :=
  ∀ n, P9953754287399550507.a n = A085744 n

end A085744

/-! ## A085744.P6599332591341725539

`A282614(n)-A282613(n)`
-/

namespace A085744.P6599332591341725539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282614 n - A282613 n

end

end A085744.P6599332591341725539

namespace A085744

/-- `A282614(n)-A282613(n)` -/
def P6599332591341725539.Spec : Prop :=
  ∀ n, P6599332591341725539.a n = A085744 n

end A085744

/-! ## A085744.P10079386479019388127

`A100019(n)*A161680(n)`
-/

namespace A085744.P10079386479019388127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100019 n * A161680 n

end

end A085744.P10079386479019388127

namespace A085744

/-- `A100019(n)*A161680(n)` -/
def P10079386479019388127.Spec : Prop :=
  ∀ n, P10079386479019388127.a n = A085744 n

theorem P10079386479019388127.correct : P10079386479019388127.Spec := by
  intro n
  simp only [A085744, Nat.add_sub_cancel, A085744.P10079386479019388127.a, A085744.P6091616498061970500.a, A000217, A000217.P10269402890581615239.a, A100019, A100019.P10475415265072854522.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085744

/-! ## A085744.P1323222126820870833

`A168564(n)%A060888(n)`
-/

namespace A085744.P1323222126820870833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168564 n) (A060888 n)

end

end A085744.P1323222126820870833

namespace A085744

/-- `A168564(n)%A060888(n)` -/
def P1323222126820870833.Spec : Prop :=
  ∀ n, P1323222126820870833.a n = A085744 n

end A085744

/-!
# A085746: Numbers n such that n^2 + n + 1 is a semiprime.

The programs for A085746, there is no canonical definition to state claims against.
-/

/-! ## A085746.P6600512760368179252

`A180748(n+1)-1`
-/

namespace A085746.P6600512760368179252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1) - 1

end

end A085746.P6600512760368179252

/-! ## A085746.P12491972311102210378

`floor(sqrt(A176069(n+1)))`
-/

namespace A085746.P12491972311102210378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A176069 (n + 1))

end

end A085746.P12491972311102210378

/-! ## A085746.P4294172684920219488

`eq[6, A278251(n+1)]`
-/

namespace A085746.P4294172684920219488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085746.P4294172684920219488

/-! ## A085746.P6463634227202294782

`eq[6, A278251(n)]-1`
-/

namespace A085746.P6463634227202294782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A085746.P6463634227202294782

/-! ## A085746.P9141273516233886246

`A023443(A180748(n+1))`
-/

namespace A085746.P9141273516233886246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A180748 (n + 1)).toNat

end

end A085746.P9141273516233886246

/-! ## A085746.P14608653475576502646

`eq[6, A278260(2*n+1)]`
-/

namespace A085746.P14608653475576502646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085746.P14608653475576502646

/-! ## A085746.P17191148227953780478

`eq[A040007(n), A278260(n+1)]/2`
-/

namespace A085746.P17191148227953780478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A085746.P17191148227953780478

/-! ## A085746.P11623538224194946035

`A008619(eq[A040007(n+1), A278260(n+2)])`
-/

namespace A085746.P11623538224194946035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A085746.P11623538224194946035

/-! ## A085746.P8558382547112227561

`A029579(eq[A040007(n), A278260(n+1)])-1`
-/

namespace A085746.P8558382547112227561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 1

end

end A085746.P8558382547112227561

/-! ## A085746.P15190553645251217979

`eq[2, ∑{e}[∑[2*n]+1, #]]`
-/

namespace A085746.P15190553645251217979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085746.P15190553645251217979

/-! ## A085746.P5268250445883487224

`eq[1, val(A289147(∑{e}[n²+1+n, #]), 34)]`
-/

namespace A085746.P5268250445883487224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A289147 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)).toNat 34

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085746.P5268250445883487224

/-! ## A085746.P127890935886398616

`eq[2, A001222(∑[2*n]+1)]`
-/

namespace A085746.P127890935886398616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085746.P127890935886398616

/-! ## A085746.P8849358763033390781

`eq[4, A001222(n²+1+n)²]`
-/

namespace A085746.P8849358763033390781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 1 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085746.P8849358763033390781

/-! ## A085746.P16818379915287571926

`eq[2, A001222(n²-(n-1))]-1`
-/

namespace A085746.P16818379915287571926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n ^ 2 : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A085746.P16818379915287571926

/-! ## A085746.P4003609845401550259

`eq[2, A033273(A002522(n)+n)]`
-/

namespace A085746.P4003609845401550259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A002522 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085746.P4003609845401550259

/-!
# A085747: Least positive k such that n! + k is a semiprime.

The programs for A085747, there is no canonical definition to state claims against.
-/

/-! ## A085747.P17292953452290933095

`A114187(n+1-2*char[2])`
-/

namespace A085747.P17292953452290933095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114187 (n + 1 - 2 * (if ∃ j, f1 j = n then 1 else 0))

end

end A085747.P17292953452290933095

/-! ## A085747.P14185656889553240330

`A089539(n+1)-(n+1)!`
-/

namespace A085747.P14185656889553240330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089539 (n + 1) - (Nat.factorial (n + 1) : ℤ)

end

end A085747.P14185656889553240330

/-! ## A085747.P15524484864159957287

`A089539(n+1)-A000142(n+1)`
-/

namespace A085747.P15524484864159957287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089539 (n + 1) - A000142 (n + 1)

end

end A085747.P15524484864159957287

/-! ## A085747.P7744674073175187335

`A089539(n+1)-∏[A005408(n)-n]`
-/

namespace A085747.P7744674073175187335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089539 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085747.P7744674073175187335

/-! ## A085747.P17940789116580045236

`A181819(2^A089538(n+1))`
-/

namespace A085747.P17940789116580045236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A089538 (n + 1) : ℤ))).toNat

end

end A085747.P17940789116580045236

/-!
# A085748: G.f.: 1/(1-G001190), where G001190 = x + x^2 + x^3 + 2x^4 + 3x^5 + ... is the g.f. for the Wedderburn-Etherington numbers A001190.

The programs for A085748, there is no canonical definition to state claims against.
-/

/-! ## A085748.P13988556950789967663

`A344613(Δ[n²])`
-/

namespace A085748.P13988556950789967663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344613 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A085748.P13988556950789967663

/-! ## A085748.P6949798801555106978

`A344613(n+1+n)+A014877(A000265(n+1))`
-/

namespace A085748.P6949798801555106978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344613 (n + 1 + n) + A014877 (A000265 (n + 1)).toNat

end

end A085748.P6949798801555106978

/-! ## A085748.P2623925980226992223

`A344613(2*n+1)%A086341(A112652(n+1))`
-/

namespace A085748.P2623925980226992223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344613 (2 * n + 1)) (A086341 (A112652 (n + 1)).toNat)

end

end A085748.P2623925980226992223

/-! ## A085748.P17007198938790389969

`A390932(∑[n+2])`
-/

namespace A085748.P17007198938790389969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390932 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085748.P17007198938790389969

/-! ## A085748.P18217486794410728054

`A344613(A000265(2*n+1))²/A344613(2*n+1)`
-/

namespace A085748.P18217486794410728054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344613 (A000265 (2 * n + 1)).toNat ^ 2 : ℚ) / (A344613 (2 * n + 1) : ℚ)

end

end A085748.P18217486794410728054

/-! ## A085748.P3752330250541203137

`abs(A344613(2*n+1)/∑[A002448(n²)])`
-/

namespace A085748.P3752330250541203137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A344613 (2 * n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)|

end

end A085748.P3752330250541203137

/-!
# A085750: Determinant of the symmetric n X n matrix A defined by A[i,j] = |i-j| for 1 <= i,j <= n.

The programs for A085750, the canonical program `A085750.P13772712120549936743` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085750 has offset 1).

The definition of A085750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085750.P13772712120549936743

`(-1)^n*n*2^(n-1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085750

/-- `(-1)^n*n*2^(n-1)` -/
def P13772712120549936743.Spec : Prop :=
  ∀ n, P13772712120549936743.a n = (A085750 (n + 1) : ℚ)

end A085750

/-! ## A085750.P15545586913444834114

`ogf(-x/(1+4x+4x^2))`
-/

namespace A085750.P15545586913444834114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1] [1, 4, 4] n

end

end A085750.P15545586913444834114

namespace A085750

/-- `ogf(-x/(1+4x+4x^2))` -/
def P15545586913444834114.Spec : Prop :=
  ∀ n, P15545586913444834114.a n = A085750 (n + 1)

end A085750

/-! ## A085750.P14403151785011647536

`(-2)^n+4*a(n-2)` with `a(0)=0, a(1)=-1`
-/

namespace A085750.P14403151785011647536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n a =>
  (-2) ^ n + 4 * a (n - 2)

end

end A085750.P14403151785011647536

namespace A085750

/-- `(-2)^n+4*a(n-2)` -/
def P14403151785011647536.Spec : Prop :=
  ∀ n, P14403151785011647536.a n = A085750 (n + 1)

end A085750

/-! ## A085750.P11736713255774063538

`(-2)^n/2-a(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A085750.P11736713255774063538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((-2) ^ n : ℚ) / 2 - a (n - 1) - a (n - 1)

end

end A085750.P11736713255774063538

namespace A085750

/-- `(-2)^n/2-a(n-1)-a(n-1)` -/
def P11736713255774063538.Spec : Prop :=
  ∀ n, P11736713255774063538.a n = (A085750 (n + 1) : ℚ)

end A085750

/-! ## A085750.P5992961555364053002

`-(n*A123344(n))`
-/

namespace A085750.P5992961555364053002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * A123344 n)

end

end A085750.P5992961555364053002

namespace A085750

/-- `-(n*A123344(n))` -/
def P5992961555364053002.Spec : Prop :=
  ∀ n, P5992961555364053002.a n = A085750 (n + 1)

end A085750

/-! ## A085750.P12314081473352745504

`A001787(n)/(-1)^n`
-/

namespace A085750.P12314081473352745504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 n : ℚ) / ((-1) ^ n : ℚ)

end

end A085750.P12314081473352745504

namespace A085750

/-- `A001787(n)/(-1)^n` -/
def P12314081473352745504.Spec : Prop :=
  ∀ n, P12314081473352745504.a n = (A085750 (n + 1) : ℚ)

end A085750

/-! ## A085750.P9171230650709543288

`A168150(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A085750.P9171230650709543288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A168150 (n + 1) - a (n - 1)

end

end A085750.P9171230650709543288

namespace A085750

/-- `A168150(n+1)-a(n-1)` -/
def P9171230650709543288.Spec : Prop :=
  ∀ n, P9171230650709543288.a n = A085750 (n + 1)

end A085750

/-! ## A085750.P16398757747944085361

`n*(A117575(2*n)+1)-n`
-/

namespace A085750.P16398757747944085361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A117575 (2 * n) + 1) - (n : ℤ)

end

end A085750.P16398757747944085361

namespace A085750

/-- `n*(A117575(2*n)+1)-n` -/
def P16398757747944085361.Spec : Prop :=
  ∀ n, P16398757747944085361.a n = A085750 (n + 1)

end A085750

/-! ## A085750.P1104269033272553027

`∑[A049610(n+1)]/(-1)^n`
-/

namespace A085750.P1104269033272553027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ)

end

end A085750.P1104269033272553027

namespace A085750

/-- `∑[A049610(n+1)]/(-1)^n` -/
def P1104269033272553027.Spec : Prop :=
  ∀ n, P1104269033272553027.a n = (A085750 (n + 1) : ℚ)

end A085750

/-! ## A085750.P6469520473047014523

`A123344(n)-A008611(A008585(n))*A123344(n)`
-/

namespace A085750.P6469520473047014523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n - A008611 (A008585 n).toNat * A123344 n

end

end A085750.P6469520473047014523

namespace A085750

/-- `A123344(n)-A008611(A008585(n))*A123344(n)` -/
def P6469520473047014523.Spec : Prop :=
  ∀ n, P6469520473047014523.a n = A085750 (n + 1)

end A085750

/-! ## A085750.P13760058266839158558

`n*A122803(n)/2`
-/

namespace A085750.P13760058266839158558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A122803 n : ℚ) / 2

end

end A085750.P13760058266839158558

namespace A085750

/-- `n*A122803(n)/2` -/
def P13760058266839158558.Spec : Prop :=
  ∀ n, P13760058266839158558.a n = (A085750 (n + 1) : ℚ)

end A085750

/-! ## A085750.P6147012801920911853

`n*Δ[A084247(n)]/2`
-/

namespace A085750.P6147012801920911853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A085750.P6147012801920911853

namespace A085750

/-- `n*Δ[A084247(n)]/2` -/
def P6147012801920911853.Spec : Prop :=
  ∀ n, P6147012801920911853.a n = (A085750 (n + 1) : ℚ)

end A085750

/-! ## A085750.P13695710562048012984

`n*Δ[A268741(n)]/2`
-/

namespace A085750.P13695710562048012984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268741 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A085750.P13695710562048012984

namespace A085750

/-- `n*Δ[A268741(n)]/2` -/
def P13695710562048012984.Spec : Prop :=
  ∀ n, P13695710562048012984.a n = (A085750 (n + 1) : ℚ)

end A085750

/-! ## A085750.P12975739105336626095

`n*A123344(n+1)/2`
-/

namespace A085750.P12975739105336626095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A123344 (n + 1) : ℚ) / 2

end

end A085750.P12975739105336626095

namespace A085750

/-- `n*A123344(n+1)/2` -/
def P12975739105336626095.Spec : Prop :=
  ∀ n, P12975739105336626095.a n = (A085750 (n + 1) : ℚ)

end A085750

/-! ## A085750.P10236837448178666036

`n*A141531(n+2)/2`
-/

namespace A085750.P10236837448178666036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A141531 (n + 2) : ℚ) / 2

end

end A085750.P10236837448178666036

namespace A085750

/-- `n*A141531(n+2)/2` -/
def P10236837448178666036.Spec : Prop :=
  ∀ n, P10236837448178666036.a n = (A085750 (n + 1) : ℚ)

end A085750

/-! ## A085750.P6682874194456561035

`n*A077966(2*n)/2`
-/

namespace A085750.P6682874194456561035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A077966 (2 * n) : ℚ) / 2

end

end A085750.P6682874194456561035

namespace A085750

/-- `n*A077966(2*n)/2` -/
def P6682874194456561035.Spec : Prop :=
  ∀ n, P6682874194456561035.a n = (A085750 (n + 1) : ℚ)

end A085750

/-! ## A085750.P8336282839847549971

`n*A117575(2*n+1)/2`
-/

namespace A085750.P8336282839847549971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A117575 (2 * n + 1) : ℚ) / 2

end

end A085750.P8336282839847549971

namespace A085750

/-- `n*A117575(2*n+1)/2` -/
def P8336282839847549971.Spec : Prop :=
  ∀ n, P8336282839847549971.a n = (A085750 (n + 1) : ℚ)

end A085750

/-! ## A085750.P2656401453319967612

`A036289(n)/A280560(n)`
-/

namespace A085750.P2656401453319967612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036289 n : ℚ) / (A280560 n : ℚ)

end

end A085750.P2656401453319967612

namespace A085750

/-- `A036289(n)/A280560(n)` -/
def P2656401453319967612.Spec : Prop :=
  ∀ n, P2656401453319967612.a n = (A085750 (n + 1) : ℚ)

end A085750

/-! ## A085750.P13290251082847368801

`n*A155559(n)/A280560(n)`
-/

namespace A085750.P13290251082847368801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A155559 n : ℚ) / (A280560 n : ℚ)

end

end A085750.P13290251082847368801

namespace A085750

/-- `n*A155559(n)/A280560(n)` -/
def P13290251082847368801.Spec : Prop :=
  ∀ n, P13290251082847368801.a n = (A085750 (n + 1) : ℚ)

end A085750

/-! ## A085750.P11214163398763910917

`A352779(n)%A389976(n)`
-/

namespace A085750.P11214163398763910917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352779 n) (A389976 n)

end

end A085750.P11214163398763910917

namespace A085750

/-- `A352779(n)%A389976(n)` -/
def P11214163398763910917.Spec : Prop :=
  ∀ n, P11214163398763910917.a n = A085750 (n + 1)

end A085750

/-!
# A085751: Semiprimes whose reversal is also a semiprime.

The programs for A085751, there is no canonical definition to state claims against.
-/

/-! ## A085751.P13089099411517481963

`∪[A046328(n+1), A097393(n+1)]`
-/

namespace A085751.P13089099411517481963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085751.P13089099411517481963

/-! ## A085751.P6358751257105901678

`record[A001358(n+1)*A064911(A210616(n+1))]`
-/

namespace A085751.P6358751257105901678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) * A064911 (A210616 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085751.P6358751257105901678

/-! ## A085751.P9238756837188634328

`record[(A088707(n+1)-1)*A064911(A210616(n+1))]`
-/

namespace A085751.P9238756837188634328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088707 (n + 1) - 1) * A064911 (A210616 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085751.P9238756837188634328

/-! ## A085751.P17400312311681261269

`record[A075818(n+1)/2*A064911(A210616(n+1))]`
-/

namespace A085751.P17400312311681261269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / 2 * (A064911 (A210616 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085751.P17400312311681261269

/-! ## A085751.P7319288237067739926

`record[(A175708(n+1)+1+n)*A064911(A210616(n+1))]`
-/

namespace A085751.P7319288237067739926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175708 (n + 1) + 1 + (n : ℤ)) * A064911 (A210616 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085751.P7319288237067739926

/-! ## A085751.P10947539948423448422

`record[A004086(A210665(n+1))]`
-/

namespace A085751.P10947539948423448422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A210665 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085751.P10947539948423448422

/-! ## A085751.P10772812711441239880

`record[A004086(A210625(A001358(n+1)))]`
-/

namespace A085751.P10772812711441239880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A210625 (A001358 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085751.P10772812711441239880

/-! ## A085751.P1731635981781715648

`record[A004093(5*A210665(n+1))]`
-/

namespace A085751.P1731635981781715648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * A210665 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085751.P1731635981781715648

/-!
# A085753: Least k such that n^n + k is a semiprime.

The programs for A085753, there is no canonical definition to state claims against.
-/

/-! ## A085753.P2290153296462369662

`A089542(n+1)-(n+1)^(n+1)`
-/

namespace A085753.P2290153296462369662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089542 (n + 1) - ((n + 1) ^ (n + 1) : ℤ)

end

end A085753.P2290153296462369662

/-!
# A085755: Number of partitions of n into a prime number of prime parts.

The programs for A085755, there is no canonical definition to state claims against.
-/

/-! ## A085755.P1991394727956607091

`A331852(A331846(n)+val(n+1, 3))`
-/

namespace A085755.P1991394727956607091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (A331846 n + (SequenceMachineLib.valuation (n + 1) 3 : ℤ)).toNat

end

end A085755.P1991394727956607091

/-! ## A085755.P2128817486076300191

`A057526(or(A011782(n), A267087(n+1)))`
-/

namespace A085755.P2128817486076300191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (Int.lor (A011782 n) (A267087 (n + 1))).toNat

end

end A085755.P2128817486076300191

/-!
# A085756: Number of partitions into a prime number of distinct parts.

The programs for A085756, there is no canonical definition to state claims against.
-/

/-! ## A085756.P8985985301542174070

`A067659(n+3)+A001222(A016116(n))`
-/

namespace A085756.P8985985301542174070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (n + 3) + A001222 (A016116 n).toNat

end

end A085756.P8985985301542174070

/-! ## A085756.P12557940714361540001

`A067659(A133233(∑[n])+2+n)+A004526(n)`
-/

namespace A085756.P12557940714361540001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (A133233 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 + (n : ℤ)).toNat + A004526 n

end

end A085756.P12557940714361540001

/-! ## A085756.P9853899902153594638

`A118759(A069911(n)+A004523(n))`
-/

namespace A085756.P9853899902153594638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A069911 n + A004523 n).toNat

end

end A085756.P9853899902153594638

/-! ## A085756.P12657538113334750252

`A033676((A069911(n)+A004523(n))²)`
-/

namespace A085756.P12657538113334750252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 ((A069911 n + A004523 n) ^ 2).toNat

end

end A085756.P12657538113334750252

/-! ## A085756.P10845506298906681060

`A033677((A069911(n)+A004523(n))²)`
-/

namespace A085756.P10845506298906681060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 ((A069911 n + A004523 n) ^ 2).toNat

end

end A085756.P10845506298906681060

/-!
# A085757: Differences between successive multiples of either 11 or 19.

The programs for A085757, the canonical program `A085757.P10774075369735998952` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085757 has offset 0).

The definition of A085757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085757.P10774075369735998952

`Δ[∪[11*n, 19*n]]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085757

/-- `Δ[∪[11*n, 19*n]]` -/
def P10774075369735998952.Spec : Prop :=
  ∀ n, P10774075369735998952.a n = A085757 n

theorem P10774075369735998952.correct : P10774075369735998952.Spec := by
  intro n
  simp only [A085757]

end A085757

/-!
# A085758: Least m such that phi(x)=2m has exactly n solutions.

The programs for A085758, there is no canonical definition to state claims against.
-/

/-! ## A085758.P10328760597192286985

`A014682(A007374(n+2)+A000038(n))`
-/

namespace A085758.P10328760597192286985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A007374 (n + 2) + A000038 n).toNat

end

end A085758.P10328760597192286985

/-! ## A085758.P731440350103060833

`A014682(A014573(n+2)+A000038(n))`
-/

namespace A085758.P731440350103060833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A014573 (n + 2) + A000038 n).toNat

end

end A085758.P731440350103060833

/-! ## A085758.P13822743380235723063

`A006370(A007374(n+2))+A000007(n)`
-/

namespace A085758.P13822743380235723063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A007374 (n + 2)).toNat + A000007 n

end

end A085758.P13822743380235723063

/-! ## A085758.P18305593500683890822

`A006370(A014573(n+2))+A000007(n)`
-/

namespace A085758.P18305593500683890822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A014573 (n + 2)).toNat + A000007 n

end

end A085758.P18305593500683890822

/-! ## A085758.P10828378220424572304

`A065262(A007374(n+2)+A000038(n))`
-/

namespace A085758.P10828378220424572304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (A007374 (n + 2) + A000038 n).toNat

end

end A085758.P10828378220424572304

/-!
# A085759: Prime powers of the form 4n+1.

The programs for A085759, the canonical program `A085759.P17382580140458893976` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085759 has offset 1).

The definition of A085759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085759.P7167853791541836330

`A000961(eq[1, A000961(n+1)%4]+1)`
-/

namespace A085759.P7167853791541836330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000961 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A085759.P7167853791541836330

namespace A085759

/-- `A000961(eq[1, A000961(n+1)%4]+1)` -/
def P7167853791541836330.Spec : Prop :=
  ∀ n, P7167853791541836330.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P17382580140458893976

`filter[A057653(n+1), A354923(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A085759

/-- `filter[A057653(n+1), A354923(#)]` -/
def P17382580140458893976.Spec : Prop :=
  ∀ n, P17382580140458893976.a n = A085759 (n + 1)

theorem P17382580140458893976.correct : P17382580140458893976.Spec := by
  intro n
  simp only [A085759, Nat.add_sub_cancel]

end A085759

/-! ## A085759.P9777264478688723875

`filter[A057653(n+1), A354924(#)]`
-/

namespace A085759.P9777264478688723875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A085759.P9777264478688723875

namespace A085759

/-- `filter[A057653(n+1), A354924(#)]` -/
def P9777264478688723875.Spec : Prop :=
  ∀ n, P9777264478688723875.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P3285252116103121663

`∩[A057653(n+1), A081061(n+1)]`
-/

namespace A085759.P3285252116103121663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085759.P3285252116103121663

namespace A085759

/-- `∩[A057653(n+1), A081061(n+1)]` -/
def P3285252116103121663.Spec : Prop :=
  ∀ n, (P3285252116103121663.a n : ℤ) = A085759 (n + 1)

end A085759

/-! ## A085759.P17663601264878165262

`record[A034699(4*n+1)]`
-/

namespace A085759.P17663601264878165262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085759.P17663601264878165262

namespace A085759

/-- `record[A034699(4*n+1)]` -/
def P17663601264878165262.Spec : Prop :=
  ∀ n, P17663601264878165262.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P17608579544554131104

`record[A330691(4*n+1)]`
-/

namespace A085759.P17608579544554131104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085759.P17608579544554131104

namespace A085759

/-- `record[A330691(4*n+1)]` -/
def P17608579544554131104.Spec : Prop :=
  ∀ n, P17608579544554131104.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P12006422868706454509

`record[A330741(4*n+1)]`
-/

namespace A085759.P12006422868706454509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085759.P12006422868706454509

namespace A085759

/-- `record[A330741(4*n+1)]` -/
def P12006422868706454509.Spec : Prop :=
  ∀ n, P12006422868706454509.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P2470979708632072463

`record[(n+1)*A354030(n+1)]`
-/

namespace A085759.P2470979708632072463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085759.P2470979708632072463

namespace A085759

/-- `record[(n+1)*A354030(n+1)]` -/
def P2470979708632072463.Spec : Prop :=
  ∀ n, P2470979708632072463.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P973867018636083014

`filter[A061345(n), A229062(#)]`
-/

namespace A085759.P973867018636083014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A085759.P973867018636083014

namespace A085759

/-- `filter[A061345(n), A229062(#)]` -/
def P973867018636083014.Spec : Prop :=
  ∀ n, P973867018636083014.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P3513135746057490130

`filter[A061345(n), A354030(#)]`
-/

namespace A085759.P3513135746057490130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354030 (f1 j).toNat = 1) n)

end

end A085759.P3513135746057490130

namespace A085759

/-- `filter[A061345(n), A354030(#)]` -/
def P3513135746057490130.Spec : Prop :=
  ∀ n, P3513135746057490130.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P15434130016286493867

`filter[A000961(n+1), A354030(#)]`
-/

namespace A085759.P15434130016286493867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354030 (f1 j).toNat = 1) n)

end

end A085759.P15434130016286493867

namespace A085759

/-- `filter[A000961(n+1), A354030(#)]` -/
def P15434130016286493867.Spec : Prop :=
  ∀ n, P15434130016286493867.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P6457700802479154045

`filter[A057653(n+1), A340363(#)]`
-/

namespace A085759.P6457700802479154045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A085759.P6457700802479154045

namespace A085759

/-- `filter[A057653(n+1), A340363(#)]` -/
def P6457700802479154045.Spec : Prop :=
  ∀ n, P6457700802479154045.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P1346736337010541350

`filter[A057653(n+1), A354030(#)]`
-/

namespace A085759.P1346736337010541350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354030 (f1 j).toNat = 1) n)

end

end A085759.P1346736337010541350

namespace A085759

/-- `filter[A057653(n+1), A354030(#)]` -/
def P1346736337010541350.Spec : Prop :=
  ∀ n, P1346736337010541350.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P1474922935594741637

`filter[A072303(n+1), A354030(#)]`
-/

namespace A085759.P1474922935594741637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354030 (f1 j).toNat = 1) n)

end

end A085759.P1474922935594741637

namespace A085759

/-- `filter[A072303(n+1), A354030(#)]` -/
def P1474922935594741637.Spec : Prop :=
  ∀ n, P1474922935594741637.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P14690908631470338593

`filter[A073491(n+1), A354030(#)]`
-/

namespace A085759.P14690908631470338593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354030 (f1 j).toNat = 1) n)

end

end A085759.P14690908631470338593

namespace A085759

/-- `filter[A073491(n+1), A354030(#)]` -/
def P14690908631470338593.Spec : Prop :=
  ∀ n, P14690908631470338593.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P17180373245336289446

`filter[A081061(n+1), A354030(#)]`
-/

namespace A085759.P17180373245336289446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354030 (f1 j).toNat = 1) n)

end

end A085759.P17180373245336289446

namespace A085759

/-- `filter[A081061(n+1), A354030(#)]` -/
def P17180373245336289446.Spec : Prop :=
  ∀ n, P17180373245336289446.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P6547217171811745290

`filter[A081306(n+1), A354030(#)]`
-/

namespace A085759.P6547217171811745290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354030 (f1 j).toNat = 1) n)

end

end A085759.P6547217171811745290

namespace A085759

/-- `filter[A081306(n+1), A354030(#)]` -/
def P6547217171811745290.Spec : Prop :=
  ∀ n, P6547217171811745290.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P6221892805680374440

`filter[A087441(n+1), A354030(#)]`
-/

namespace A085759.P6221892805680374440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354030 (f1 j).toNat = 1) n)

end

end A085759.P6221892805680374440

namespace A085759

/-- `filter[A087441(n+1), A354030(#)]` -/
def P6221892805680374440.Spec : Prop :=
  ∀ n, P6221892805680374440.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P747521651274945428

`filter[A133810(n+1), A354030(#)]`
-/

namespace A085759.P747521651274945428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354030 (f1 j).toNat = 1) n)

end

end A085759.P747521651274945428

namespace A085759

/-- `filter[A133810(n+1), A354030(#)]` -/
def P747521651274945428.Spec : Prop :=
  ∀ n, P747521651274945428.a n = A085759 (n + 1)

end A085759

/-! ## A085759.P2700941613600922886

`filter[A133811(n+1), A354030(#)]`
-/

namespace A085759.P2700941613600922886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354030 (f1 j).toNat = 1) n)

end

end A085759.P2700941613600922886

namespace A085759

/-- `filter[A133811(n+1), A354030(#)]` -/
def P2700941613600922886.Spec : Prop :=
  ∀ n, P2700941613600922886.a n = A085759 (n + 1)

end A085759

/-!
# A085760: Prime powers of the form 4n+3.

The programs for A085760, the canonical program `A085760.P7929265480734596502` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085760 has offset 1).

The definition of A085760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4819 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085760.P7929265480734596502

`record[A008475(or(3, n))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A085760

/-- `record[A008475(or(3, n))]` -/
def P7929265480734596502.Spec : Prop :=
  ∀ n, P7929265480734596502.a n = A085760 (n + 1)

theorem P7929265480734596502.correct : P7929265480734596502.Spec := by
  intro n
  simp only [A085760, Nat.add_sub_cancel]

end A085760

/-! ## A085760.P2160145123898843046

`record[A008475(4*n+3)]`
-/

namespace A085760.P2160145123898843046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085760.P2160145123898843046

namespace A085760

/-- `record[A008475(4*n+3)]` -/
def P2160145123898843046.Spec : Prop :=
  ∀ n, P2160145123898843046.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P7709695852516066514

`∩[2*n+1, A292762(n+1)]`
-/

namespace A085760.P7709695852516066514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085760.P7709695852516066514

namespace A085760

/-- `∩[2*n+1, A292762(n+1)]` -/
def P7709695852516066514.Spec : Prop :=
  ∀ n, (P7709695852516066514.a n : ℤ) = A085760 (n + 1)

end A085760

/-! ## A085760.P336448963704809611

`filter[A061345(n), A359152(#)]`
-/

namespace A085760.P336448963704809611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A085760.P336448963704809611

namespace A085760

/-- `filter[A061345(n), A359152(#)]` -/
def P336448963704809611.Spec : Prop :=
  ∀ n, P336448963704809611.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P17070896055027737144

`filter[A094179(n+1), A069513(#)]`
-/

namespace A085760.P17070896055027737144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A085760.P17070896055027737144

namespace A085760

/-- `filter[A094179(n+1), A069513(#)]` -/
def P17070896055027737144.Spec : Prop :=
  ∀ n, P17070896055027737144.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P11366610320346102479

`filter[A197504(n+1), A066829(#)]`
-/

namespace A085760.P11366610320346102479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A085760.P11366610320346102479

namespace A085760

/-- `filter[A197504(n+1), A066829(#)]` -/
def P11366610320346102479.Spec : Prop :=
  ∀ n, P11366610320346102479.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P18377613837664681084

`filter[A292762(n+1), A066829(#)]`
-/

namespace A085760.P18377613837664681084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A085760.P18377613837664681084

namespace A085760

/-- `filter[A292762(n+1), A066829(#)]` -/
def P18377613837664681084.Spec : Prop :=
  ∀ n, P18377613837664681084.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P12937405598341883812

`filter[A292762(n+1), A069513(#)]`
-/

namespace A085760.P12937405598341883812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A085760.P12937405598341883812

namespace A085760

/-- `filter[A292762(n+1), A069513(#)]` -/
def P12937405598341883812.Spec : Prop :=
  ∀ n, P12937405598341883812.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P2887440205965465662

`filter[A066499(n+1), A358770(#)]`
-/

namespace A085760.P2887440205965465662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A085760.P2887440205965465662

namespace A085760

/-- `filter[A066499(n+1), A358770(#)]` -/
def P2887440205965465662.Spec : Prop :=
  ∀ n, P2887440205965465662.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P102993124665172958

`filter[A066499(n+1), A359152(#)]`
-/

namespace A085760.P102993124665172958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A085760.P102993124665172958

namespace A085760

/-- `filter[A066499(n+1), A359152(#)]` -/
def P102993124665172958.Spec : Prop :=
  ∀ n, P102993124665172958.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P6068585089912014174

`filter[A094179(n+1), A354923(#)]`
-/

namespace A085760.P6068585089912014174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A085760.P6068585089912014174

namespace A085760

/-- `filter[A094179(n+1), A354923(#)]` -/
def P6068585089912014174.Spec : Prop :=
  ∀ n, P6068585089912014174.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P16544690854730395274

`filter[A094179(n+1), A354924(#)]`
-/

namespace A085760.P16544690854730395274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A085760.P16544690854730395274

namespace A085760

/-- `filter[A094179(n+1), A354924(#)]` -/
def P16544690854730395274.Spec : Prop :=
  ∀ n, P16544690854730395274.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P597110521381386792

`filter[A096165(n+1), A359152(#)]`
-/

namespace A085760.P597110521381386792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A085760.P597110521381386792

namespace A085760

/-- `filter[A096165(n+1), A359152(#)]` -/
def P597110521381386792.Spec : Prop :=
  ∀ n, P597110521381386792.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P14925189194637305266

`filter[A141807(n+1), A359152(#)]`
-/

namespace A085760.P14925189194637305266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A085760.P14925189194637305266

namespace A085760

/-- `filter[A141807(n+1), A359152(#)]` -/
def P14925189194637305266.Spec : Prop :=
  ∀ n, P14925189194637305266.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P11443908627217732939

`filter[A197504(n+1), A324903(#)]`
-/

namespace A085760.P11443908627217732939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A085760.P11443908627217732939

namespace A085760

/-- `filter[A197504(n+1), A324903(#)]` -/
def P11443908627217732939.Spec : Prop :=
  ∀ n, P11443908627217732939.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P4427744189004146161

`filter[A332555(n+1), A358770(#)]`
-/

namespace A085760.P4427744189004146161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A085760.P4427744189004146161

namespace A085760

/-- `filter[A332555(n+1), A358770(#)]` -/
def P4427744189004146161.Spec : Prop :=
  ∀ n, P4427744189004146161.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P10727300700467066607

`filter[A332555(n+1), A359152(#)]`
-/

namespace A085760.P10727300700467066607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A085760.P10727300700467066607

namespace A085760

/-- `filter[A332555(n+1), A359152(#)]` -/
def P10727300700467066607.Spec : Prop :=
  ∀ n, P10727300700467066607.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P12595550034130437624

`filter[A380787(n+1), A069513(#)]`
-/

namespace A085760.P12595550034130437624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A085760.P12595550034130437624

namespace A085760

/-- `filter[A380787(n+1), A069513(#)]` -/
def P12595550034130437624.Spec : Prop :=
  ∀ n, P12595550034130437624.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P10380673264137497401

`filter[A359153(n+1), A069513(#)]`
-/

namespace A085760.P10380673264137497401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A085760.P10380673264137497401

namespace A085760

/-- `filter[A359153(n+1), A069513(#)]` -/
def P10380673264137497401.Spec : Prop :=
  ∀ n, P10380673264137497401.a n = A085760 (n + 1)

end A085760

/-! ## A085760.P10106946929324681513

`filter[A359153(n+1), A354923(#)]`
-/

namespace A085760.P10106946929324681513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A085760.P10106946929324681513

namespace A085760

/-- `filter[A359153(n+1), A354923(#)]` -/
def P10106946929324681513.Spec : Prop :=
  ∀ n, P10106946929324681513.a n = A085760 (n + 1)

end A085760

/-!
# A085761: Number of triangular numbers between n and 2n (inclusive).

The programs for A085761, the canonical program `A085761.P4906296304370779251` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085761 has offset 1).

The definition of A085761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085761.P4906296304370779251

`round(sqrt(4*n+5)-A002024(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085761

/-- `round(sqrt(4*n+5)-A002024(n+1))` -/
def P4906296304370779251.Spec : Prop :=
  ∀ n, P4906296304370779251.a n = A085761 (n + 1)

theorem P4906296304370779251.correct : P4906296304370779251.Spec := by
  intro n
  simp only [A085761, Nat.add_sub_cancel]

end A085761

/-! ## A085761.P13699780369563527700

`A186350(n+2)-comp[∑[n]]`
-/

namespace A085761.P13699780369563527700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186350 (n + 2) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A085761.P13699780369563527700

namespace A085761

/-- `A186350(n+2)-comp[∑[n]]` -/
def P13699780369563527700.Spec : Prop :=
  ∀ n, P13699780369563527700.a n = A085761 (n + 1)

end A085761

/-! ## A085761.P9823770075857286821

`∑[A097806(2*n)-char[∑[n+1]]]`
-/

namespace A085761.P9823770075857286821
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (2 * n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085761.P9823770075857286821

namespace A085761

/-- `∑[A097806(2*n)-char[∑[n+1]]]` -/
def P9823770075857286821.Spec : Prop :=
  ∀ n, P9823770075857286821.a n = A085761 (n + 1)

end A085761

/-! ## A085761.P6247658815691737419

`∑[A097806(2*n)]-A003056(n)`
-/

namespace A085761.P6247658815691737419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003056 n

end

end A085761.P6247658815691737419

namespace A085761

/-- `∑[A097806(2*n)]-A003056(n)` -/
def P6247658815691737419.Spec : Prop :=
  ∀ n, P6247658815691737419.a n = A085761 (n + 1)

end A085761

/-! ## A085761.P5245460077104982523

`∑[A167371(2*n)-char[∑[n+1]]]`
-/

namespace A085761.P5245460077104982523
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167371 (2 * n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085761.P5245460077104982523

namespace A085761

/-- `∑[A167371(2*n)-char[∑[n+1]]]` -/
def P5245460077104982523.Spec : Prop :=
  ∀ n, P5245460077104982523.a n = A085761 (n + 1)

end A085761

/-! ## A085761.P14960901950810804839

`A003056(2*(n+1))-∑[char[∑[n+1]]]`
-/

namespace A085761.P14960901950810804839
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * (n + 1)) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A085761.P14960901950810804839

namespace A085761

/-- `A003056(2*(n+1))-∑[char[∑[n+1]]]` -/
def P14960901950810804839.Spec : Prop :=
  ∀ n, P14960901950810804839.a n = A085761 (n + 1)

end A085761

/-! ## A085761.P15949607675885972947

`abs(A003056(2*(n+1))-A003056(n))`
-/

namespace A085761.P15949607675885972947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003056 (2 * (n + 1)) - A003056 n|

end

end A085761.P15949607675885972947

namespace A085761

/-- `abs(A003056(2*(n+1))-A003056(n))` -/
def P15949607675885972947.Spec : Prop :=
  ∀ n, P15949607675885972947.a n = A085761 (n + 1)

end A085761

/-! ## A085761.P858836057395933352

`A000027(A003056(2*(n+1))-A003056(n))`
-/

namespace A085761.P858836057395933352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A003056 (2 * (n + 1)) - A003056 n).toNat

end

end A085761.P858836057395933352

namespace A085761

/-- `A000027(A003056(2*(n+1))-A003056(n))` -/
def P858836057395933352.Spec : Prop :=
  ∀ n, P858836057395933352.a n = A085761 (n + 1)

end A085761

/-! ## A085761.P7202757613365635258

`A002024(2*n+3)-∑[char[∑[n]]]`
-/

namespace A085761.P7202757613365635258
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (2 * n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A085761.P7202757613365635258

namespace A085761

/-- `A002024(2*n+3)-∑[char[∑[n]]]` -/
def P7202757613365635258.Spec : Prop :=
  ∀ n, P7202757613365635258.a n = A085761 (n + 1)

end A085761

/-! ## A085761.P6140001164218591422

`A123578(2*n+3)-∑[char[∑[n]]]`
-/

namespace A085761.P6140001164218591422
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (2 * n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A085761.P6140001164218591422

namespace A085761

/-- `A123578(2*n+3)-∑[char[∑[n]]]` -/
def P6140001164218591422.Spec : Prop :=
  ∀ n, P6140001164218591422.a n = A085761 (n + 1)

end A085761

/-! ## A085761.P3706784150615282849

`A003057(2*(n+2))-A003057(n+2)`
-/

namespace A085761.P3706784150615282849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (2 * (n + 2)) - A003057 (n + 2)

end

end A085761.P3706784150615282849

namespace A085761

/-- `A003057(2*(n+2))-A003057(n+2)` -/
def P3706784150615282849.Spec : Prop :=
  ∀ n, P3706784150615282849.a n = A085761 (n + 1)

end A085761

/-! ## A085761.P12003628415518033531

`A003057(2*n+4)%A003057(n+2)`
-/

namespace A085761.P12003628415518033531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003057 (2 * n + 4)) (A003057 (n + 2))

end

end A085761.P12003628415518033531

namespace A085761

/-- `A003057(2*n+4)%A003057(n+2)` -/
def P12003628415518033531.Spec : Prop :=
  ∀ n, P12003628415518033531.a n = A085761 (n + 1)

end A085761

/-! ## A085761.P3800496674329935011

`abs(A002024(2*n+3)-(comp[A000217(n)]-(n+1)))`
-/

namespace A085761.P3800496674329935011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002024 (2 * n + 3) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ))|

end

end A085761.P3800496674329935011

namespace A085761

/-- `abs(A002024(2*n+3)-(comp[A000217(n)]-(n+1)))` -/
def P3800496674329935011.Spec : Prop :=
  ∀ n, P3800496674329935011.a n = A085761 (n + 1)

end A085761

/-! ## A085761.P6066595120199350356

`A000027(A002024(2*n+3)-(comp[C(n, 2)]-(n+1)))`
-/

namespace A085761.P6066595120199350356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002024 (2 * n + 3) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ))).toNat

end

end A085761.P6066595120199350356

namespace A085761

/-- `A000027(A002024(2*n+3)-(comp[C(n, 2)]-(n+1)))` -/
def P6066595120199350356.Spec : Prop :=
  ∀ n, P6066595120199350356.a n = A085761 (n + 1)

end A085761

/-! ## A085761.P6760703847963689957

`A000027(A002024(2*n+3)-(comp[∑[n]]+1)%(n+2))`
-/

namespace A085761.P6760703847963689957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002024 (2 * n + 3) - (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) % (n + 2) : ℕ) : ℤ)).toNat

end

end A085761.P6760703847963689957

namespace A085761

/-- `A000027(A002024(2*n+3)-(comp[∑[n]]+1)%(n+2))` -/
def P6760703847963689957.Spec : Prop :=
  ∀ n, P6760703847963689957.a n = A085761 (n + 1)

end A085761

/-! ## A085761.P9591637386811213560

`lt[2, A007318(2*(n+1))]%comp[∑[n]]`
-/

namespace A085761.P9591637386811213560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * (n + 1))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

end

end A085761.P9591637386811213560

namespace A085761

/-- `lt[2, A007318(2*(n+1))]%comp[∑[n]]` -/
def P9591637386811213560.Spec : Prop :=
  ∀ n, (P9591637386811213560.a n : ℤ) = A085761 (n + 1)

end A085761

/-! ## A085761.P16917714661461981349

`A259361(4*(n+1))-A259361(2*n)`
-/

namespace A085761.P16917714661461981349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (4 * (n + 1)) - A259361 (2 * n)

end

end A085761.P16917714661461981349

namespace A085761

/-- `A259361(4*(n+1))-A259361(2*n)` -/
def P16917714661461981349.Spec : Prop :=
  ∀ n, P16917714661461981349.a n = A085761 (n + 1)

end A085761

/-! ## A085761.P1273244151820908202

`A000194(4*n+5)-∑[char[∑[n]]]`
-/

namespace A085761.P1273244151820908202
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (4 * n + 5) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A085761.P1273244151820908202

namespace A085761

/-- `A000194(4*n+5)-∑[char[∑[n]]]` -/
def P1273244151820908202.Spec : Prop :=
  ∀ n, P1273244151820908202.a n = A085761 (n + 1)

end A085761

/-!
# A085762: Least integer m such that between m and 2m there are n triangular numbers.

The programs for A085762, there is no canonical definition to state claims against.
-/

/-! ## A085762.P12682277302338906869

`A065033(C(A022342(2*(n+1)), A307669(2*(n+1))))`
-/

namespace A085762.P12682277302338906869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Nat.choose (A022342 (2 * (n + 1))).toNat (A307669 (2 * (n + 1))).toNat)

end

end A085762.P12682277302338906869

/-!
# A085763: Number of palindromes between n and 2n (inclusive).

The programs for A085763, the canonical program `A085763.P6554480403476350466` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085763 has offset 1).

The definition of A085763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085763.P6554480403476350466

`A136687(2*(n+1))-A136687(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085763

/-- `A136687(2*(n+1))-A136687(n)` -/
def P6554480403476350466.Spec : Prop :=
  ∀ n, P6554480403476350466.a n = A085763 (n + 1)

theorem P6554480403476350466.correct : P6554480403476350466.Spec := by
  intro n
  simp only [A085763, Nat.add_sub_cancel]

end A085763

/-! ## A085763.P3728471249977342661

`A137180(A261914(2*n+3))-A137180(n)`
-/

namespace A085763.P3728471249977342661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137180 (A261914 (2 * n + 3)).toNat - A137180 n

end

end A085763.P3728471249977342661

namespace A085763

/-- `A137180(A261914(2*n+3))-A137180(n)` -/
def P3728471249977342661.Spec : Prop :=
  ∀ n, P3728471249977342661.a n = A085763 (n + 1)

end A085763

/-! ## A085763.P5476909704520304998

`A137180(2*(n+1))-A137180(n)`
-/

namespace A085763.P5476909704520304998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137180 (2 * (n + 1)) - A137180 n

end

end A085763.P5476909704520304998

namespace A085763

/-- `A137180(2*(n+1))-A137180(n)` -/
def P5476909704520304998.Spec : Prop :=
  ∀ n, P5476909704520304998.a n = A085763 (n + 1)

theorem P5476909704520304998.correct : P5476909704520304998.Spec := by
  intro n
  simp only [A085763, Nat.add_sub_cancel, A085763.P5476909704520304998.a, A085763.P6554480403476350466.a, A136687, A136687.P466848025406381974.f2, A136687.P466848025406381974.f1, A136687.P466848025406381974.a, A137180, A137180.P9009157084453984634.a, A262037, A262037.P5725581086224179713.a, A000030, A000030.P4990867543733972260.a, A010879, A010879.P10561743211919002802.a, A051022, A051022.P12829567687202286752.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085763

/-!
# A085765: Partial sums and bisection of A086450.

The programs for A085765, the canonical program `A085765.P11713092919206785269` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085765 has offset 0).

The definition of A085765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085765.P14966558429051118933

`A086450(2*n)`
-/

namespace A085765.P14966558429051118933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086450 (2 * n)

end

end A085765.P14966558429051118933

namespace A085765

/-- `A086450(2*n)` -/
def P14966558429051118933.Spec : Prop :=
  ∀ n, P14966558429051118933.a n = A085765 n

end A085765

/-! ## A085765.P9817852937577897792

`∑[A086450(n)]`
-/

namespace A085765.P9817852937577897792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085765.P9817852937577897792

namespace A085765

/-- `∑[A086450(n)]` -/
def P9817852937577897792.Spec : Prop :=
  ∀ n, P9817852937577897792.a n = A085765 n

end A085765

/-! ## A085765.P11713092919206785269

`a(n-1)+a(A025480(n))` with `a(0)=1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A085765

/-- `a(n-1)+a(A025480(n))` -/
def P11713092919206785269.Spec : Prop :=
  ∀ n, (P11713092919206785269.a n : ℤ) = A085765 n

theorem P11713092919206785269.correct : P11713092919206785269.Spec := by
  intro n
  simp only [A085765]

end A085765

/-! ## A085765.P15082197519385009684

`a(n-1)+a(A153733(n)/2)` with `a(0)=1`
-/

namespace A085765.P15082197519385009684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (SequenceMachineLib.roundAway ((A153733 n : ℚ) / 2)).toNat

end

end A085765.P15082197519385009684

namespace A085765

/-- `a(n-1)+a(A153733(n)/2)` -/
def P15082197519385009684.Spec : Prop :=
  ∀ n, (P15082197519385009684.a n : ℤ) = A085765 n

end A085765

/-! ## A085765.P12477003051766541833

`a(n-1)+a(A003602(n+1)-1)` with `a(0)=1`
-/

namespace A085765.P12477003051766541833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A003602 (n + 1) - 1).toNat

end

end A085765.P12477003051766541833

namespace A085765

/-- `a(n-1)+a(A003602(n+1)-1)` -/
def P12477003051766541833.Spec : Prop :=
  ∀ n, (P12477003051766541833.a n : ℤ) = A085765 n

end A085765

/-! ## A085765.P11399710997331151886

`record[A086450(n+1)]`
-/

namespace A085765.P11399710997331151886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085765.P11399710997331151886

namespace A085765

/-- `record[A086450(n+1)]` -/
def P11399710997331151886.Spec : Prop :=
  ∀ n, P11399710997331151886.a n = A085765 n

end A085765

/-! ## A085765.P17952839977521497977

`A086450(n+n)/A001221(A114549(n+1))`
-/

namespace A085765.P17952839977521497977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086450 (n + n) : ℚ) / (A001221 (A114549 (n + 1)).toNat : ℚ)

end

end A085765.P17952839977521497977

namespace A085765

/-- `A086450(n+n)/A001221(A114549(n+1))` -/
def P17952839977521497977.Spec : Prop :=
  ∀ n, P17952839977521497977.a n = (A085765 n : ℚ)

end A085765

/-! ## A085765.P17012013651811388970

`record[A086450(n)]%A288309(n)`
-/

namespace A085765.P17012013651811388970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A288309 n)

end

end A085765.P17012013651811388970

namespace A085765

/-- `record[A086450(n)]%A288309(n)` -/
def P17012013651811388970.Spec : Prop :=
  ∀ n, P17012013651811388970.a n = A085765 n

end A085765

/-! ## A085765.P7837945927494537891

`A000027(record[A086450(n)])`
-/

namespace A085765.P7837945927494537891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085765.P7837945927494537891

namespace A085765

/-- `A000027(record[A086450(n)])` -/
def P7837945927494537891.Spec : Prop :=
  ∀ n, P7837945927494537891.a n = A085765 n

end A085765

/-! ## A085765.P11839419052185852804

`lt[0, char[A086450(n+3)]]`
-/

namespace A085765.P11839419052185852804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086450 (n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085765.P11839419052185852804

namespace A085765

/-- `lt[0, char[A086450(n+3)]]` -/
def P11839419052185852804.Spec : Prop :=
  ∀ n, (P11839419052185852804.a n : ℤ) = A085765 n

end A085765

/-!
# A085766: Smallest m such that n divides the tetrahedral number A000292(m+1).

The programs for A085766, there is no canonical definition to state claims against.
-/

/-! ## A085766.P4283337297978860407

`A265647(n+1)-ceil(abs(sin(n)))`
-/

namespace A085766.P4283337297978860407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265647 (n + 1) - ⌈|Real.sin (n : ℝ)|⌉

end

end A085766.P4283337297978860407

/-! ## A085766.P18257732579143196696

`A265647(n^floor(atan(n))+1)-1`
-/

namespace A085766.P18257732579143196696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265647 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ) + 1)).toNat - 1

end

end A085766.P18257732579143196696

/-! ## A085766.P4951948190062251487

`A265647(round(sqrt(n²+1))+1)-1`
-/

namespace A085766.P4951948190062251487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265647 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat - 1

end

end A085766.P4951948190062251487

/-! ## A085766.P2957336044995736112

`A000045(C(2, n+2))+A265647(n+1)-1`
-/

namespace A085766.P2957336044995736112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) + (A265647 (n + 1) - 1)

end

end A085766.P2957336044995736112

/-! ## A085766.P13773284276600505392

`A289207(A265647(n+1))+1`
-/

namespace A085766.P13773284276600505392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A265647 (n + 1)).toNat + 1

end

end A085766.P13773284276600505392

/-! ## A085766.P16682268206199184559

`A028310(A265647(n+1)-1)`
-/

namespace A085766.P16682268206199184559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A265647 (n + 1) - 1).toNat

end

end A085766.P16682268206199184559

/-! ## A085766.P14482409740649849215

`abs(A014963(4*n+2)-A265647(n+1))`
-/

namespace A085766.P14482409740649849215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014963 (4 * n + 2) - A265647 (n + 1)|

end

end A085766.P14482409740649849215

/-!
# A085769: Total number of zeros in the decimal expansions of 2^n and 5^n.

The programs for A085769, the canonical program `A085769.P15824904913732760678` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085769 has offset 1).

The definition of A085769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085769.P15824904913732760678

`A253638(n+1)+A027870(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A085769

/-- `A253638(n+1)+A027870(n+1)` -/
def P15824904913732760678.Spec : Prop :=
  ∀ n, P15824904913732760678.a n = A085769 (n + 1)

theorem P15824904913732760678.correct : P15824904913732760678.Spec := by
  intro n
  simp only [A085769, Nat.add_sub_cancel]

end A085769

/-!
# A085770: Number of odd semiprimes < 10^n. Number of terms of A046315 < 10^n.

The programs for A085770, there is no canonical definition to state claims against.
-/

/-! ## A085770.P12567328893536692155

`A109251(n)-A333217(A108991(n))`
-/

namespace A085770.P12567328893536692155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109251 n - A333217 (A108991 n).toNat

end

end A085770.P12567328893536692155

/-!
# A085771: Triangle read by rows. T(n, k) = A059438(n, k) for 1 <= k <= n, and T(n, 0) = n^0.

The programs for A085771, there is no canonical definition to state claims against.
-/

/-! ## A085771.P16622229119302002606

`A253286(n)-A124761(A086645(n))`
-/

namespace A085771.P16622229119302002606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 n - A124761 (A086645 n).toNat

end

end A085771.P16622229119302002606

/-! ## A085771.P5186193939487417860

`A253286(n)-A250002(A142992(n))`
-/

namespace A085771.P5186193939487417860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 n - A250002 (A142992 n).toNat

end

end A085771.P5186193939487417860

/-! ## A085771.P14416456948707009588

`A253286(n)-A059123(A283666(n+1))`
-/

namespace A085771.P14416456948707009588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 n - A059123 (A283666 (n + 1)).toNat

end

end A085771.P14416456948707009588

/-! ## A085771.P230359749190390248

`A118765(A111106(n))`
-/

namespace A085771.P230359749190390248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118765 (A111106 n).toNat

end

end A085771.P230359749190390248

/-! ## A085771.P1525612369176130948

`A180101(A090238(n))`
-/

namespace A085771.P1525612369176130948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A090238 n).toNat

end

end A085771.P1525612369176130948

/-!
# A085772: (n / sum of digits of n) is a semiprime.

The programs for A085772, there is no canonical definition to state claims against.
-/

/-! ## A085772.P278340374413588237

`∩[A134516(n+1), A171524(n+1)]`
-/

namespace A085772.P278340374413588237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085772.P278340374413588237

/-! ## A085772.P2175136981717839636

`A342650(A228915(n+1))`
-/

namespace A085772.P2175136981717839636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342650 (A228915 (n + 1)).toNat

end

end A085772.P2175136981717839636

/-! ## A085772.P16280509621800238257

`eq[A011597(n), A017888(n)]`
-/

namespace A085772.P16280509621800238257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085772.P16280509621800238257

/-! ## A085772.P1245464036606666715

`eq[A011620(n), A017888(n)]`
-/

namespace A085772.P1245464036606666715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085772.P1245464036606666715

/-! ## A085772.P13520912831654680363

`eq[A011630(n), A017888(n)]`
-/

namespace A085772.P13520912831654680363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085772.P13520912831654680363

/-!
# A085774: Numbers k such that (k / sum of digits of k) and (k+1 / sum of digits of k+1) are both semiprime.

The programs for A085774, there is no canonical definition to state claims against.
-/

/-! ## A085774.P17037096891631091603

`∩[A085772(n+1)-1, A085772(n+1)]`
-/

namespace A085774.P17037096891631091603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085772 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085774.P17037096891631091603

/-!
# A085775: Numbers k such that (k / sum of digits of k) and (k+1 / sum of digits of k+1) are both prime.

The programs for A085775, there is no canonical definition to state claims against.
-/

/-! ## A085775.P6399206313034262992

`∩[A001101(n+1)-1, A001101(n+1)]`
-/

namespace A085775.P6399206313034262992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001101 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085775.P6399206313034262992

/-! ## A085775.P5917012470119682731

`∩[A001101(n+1), A023443(A001101(n+1))]`
-/

namespace A085775.P5917012470119682731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A001101 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085775.P5917012470119682731

/-!
# A085776: Numbers k such that k concatenated with k+1 is a semiprime.

The programs for A085776, there is no canonical definition to state claims against.
-/

/-! ## A085776.P15032347108584820521

`eq[1, A028422(A127421(n+1))]`
-/

namespace A085776.P15032347108584820521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (A127421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085776.P15032347108584820521

/-! ## A085776.P17355168987983891731

`eq[1, A308427(A001704(n+1))]+1`
-/

namespace A085776.P17355168987983891731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (A001704 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085776.P17355168987983891731

/-! ## A085776.P6638743802555890783

`eq[2, A001222(A020338(n+1)+1)]+1`
-/

namespace A085776.P6638743802555890783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020338 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085776.P6638743802555890783

/-! ## A085776.P2738738967619535317

`eq[2, A001222(A068824(n+1)+∑[2*(n+1)]+1)]+1`
-/

namespace A085776.P2738738967619535317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A068824 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085776.P2738738967619535317

/-! ## A085776.P12684654666069541256

`eq[A000005(A127421(n+1)), A123932(n+1)]`
-/

namespace A085776.P12684654666069541256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A127421 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085776.P12684654666069541256

/-!
# A085778: Primes whose reversal is a semiprime.

The programs for A085778, there is no canonical definition to state claims against.
-/

/-! ## A085778.P15445955619249872463

`p?[(n+1)*(A001222(A004086(n+1))-1)]`
-/

namespace A085778.P15445955619249872463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001222 (A004086 (n + 1)).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085778.P15445955619249872463

/-! ## A085778.P4624189538286998370

`A004086(A368238(n+1))`
-/

namespace A085778.P4624189538286998370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A368238 (n + 1)).toNat

end

end A085778.P4624189538286998370

/-! ## A085778.P9335678906292655146

`p?[record[A004086(A210625(n+1))]]`
-/

namespace A085778.P9335678906292655146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A210625 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085778.P9335678906292655146

/-! ## A085778.P12709299974963677956

`eq[A092976(n), A105700(A004086(n))]`
-/

namespace A085778.P12709299974963677956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085778.P12709299974963677956

/-! ## A085778.P2404329222276971141

`eq[A105700(A004086(n)), A225244(n)]`
-/

namespace A085778.P2404329222276971141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085778.P2404329222276971141

/-! ## A085778.P9625022662671121881

`eq[A105700(A004086(n)), A327859(n)]`
-/

namespace A085778.P9625022662671121881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085778.P9625022662671121881

/-! ## A085778.P16840023966649972422

`eq[A284289(n)+1, A284289(A004086(n))]`
-/

namespace A085778.P16840023966649972422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085778.P16840023966649972422

/-! ## A085778.P13729406017845858849

`eq[A105700(A004086(n)), A326486(n)]`
-/

namespace A085778.P13729406017845858849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085778.P13729406017845858849

/-!
# A085779: Smallest m such that the triangular number A000217(n) divides m!.

The programs for A085779, there is no canonical definition to state claims against.
-/

/-! ## A085779.P10905454750377459038

`A002034(A000217(n+1))`
-/

namespace A085779.P10905454750377459038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A000217 (n + 1)).toNat

end

end A085779.P10905454750377459038

/-! ## A085779.P14743210711439186418

`∑[n+1]-A072480(A253145(n))`
-/

namespace A085779.P14743210711439186418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A072480 (A253145 n).toNat

end

end A085779.P14743210711439186418

/-! ## A085779.P1841380587127846084

`A034699(∑[n+1])-A057110(∑[n+1])`
-/

namespace A085779.P1841380587127846084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∑ j ∈ Finset.range (n + 1), f1 j) - A057110 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A085779.P1841380587127846084

/-! ## A085779.P4091040553457988197

`A000096(n)+1-A072480(A253145(n))`
-/

namespace A085779.P4091040553457988197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A072480 (A253145 n).toNat)

end

end A085779.P4091040553457988197

/-! ## A085779.P8505825049176475290

`n-(A072480(A253145(n))-(A000217(n)+1))`
-/

namespace A085779.P8505825049176475290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A072480 (A253145 n).toNat - (A000217 n + 1))

end

end A085779.P8505825049176475290

/-! ## A085779.P1480624736868887318

`1-A072480(A253145(n))+A056000(3*n)/9`
-/

namespace A085779.P1480624736868887318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A072480 (A253145 n).toNat : ℚ) + (A056000 (3 * n) : ℚ) / 9

end

end A085779.P1480624736868887318

/-! ## A085779.P16690148141070660954

`1-A072480(A253145(n))+A056000(n)-3*n`
-/

namespace A085779.P16690148141070660954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A072480 (A253145 n).toNat + (A056000 n - (3 * n : ℤ))

end

end A085779.P16690148141070660954

/-! ## A085779.P11276709498803135880

`A002034(A346088(∑[n+1]))`
-/

namespace A085779.P11276709498803135880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A346088 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A085779.P11276709498803135880

/-! ## A085779.P15437779487985770586

`A345931(lcm(∑[n+1], A002034(n+1)))`
-/

namespace A085779.P15437779487985770586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A002034 (n + 1)))

end

end A085779.P15437779487985770586

/-! ## A085779.P17226864049462102022

`A002034(∑[n+1])`
-/

namespace A085779.P17226864049462102022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085779.P17226864049462102022

/-! ## A085779.P16990702731533595383

`A122416(∑[n+1])-1`
-/

namespace A085779.P16990702731533595383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A085779.P16990702731533595383

/-! ## A085779.P11350046846234792644

`A061243(∑[n+1])-∑[n+1]`
-/

namespace A085779.P11350046846234792644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061243 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A085779.P11350046846234792644

/-! ## A085779.P6532711548796519023

`A002260(A061243(∑[n+1]))`
-/

namespace A085779.P6532711548796519023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A061243 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A085779.P6532711548796519023

/-! ## A085779.P2754460019687587776

`A000027(A002034(∑[-xor(n, -1)]))`
-/

namespace A085779.P2754460019687587776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A085779.P2754460019687587776

/-! ## A085779.P10631551143458617911

`A062759(A002034(∑[Δ[n²]-n]))`
-/

namespace A085779.P10631551143458617911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (A002034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A085779.P10631551143458617911

/-! ## A085779.P11707589512839295303

`A072356(A002034(∑[ϕ²-(ϕ-n)]))`
-/

namespace A085779.P11707589512839295303
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072356 (A002034 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A085779.P11707589512839295303

/-! ## A085779.P17936192585659318172

`A000027(A002034(∑[1-(n-2*n)]))`
-/

namespace A085779.P17936192585659318172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A085779.P17936192585659318172

/-!
# A085780: Numbers that are a product of 2 triangular numbers.

The programs for A085780, there is no canonical definition to state claims against.
-/

/-! ## A085780.P2165149441337739357

`A072389(n+1)/4`
-/

namespace A085780.P2165149441337739357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072389 (n + 1) : ℚ) / 4

end

end A085780.P2165149441337739357

/-! ## A085780.P15712442029216584572

`∪[A054731(n+1), A000537(n)]`
-/

namespace A085780.P15712442029216584572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085780.P15712442029216584572

/-! ## A085780.P3066347875735994455

`∪[A054731(n+1), A000217(n)²]`
-/

namespace A085780.P3066347875735994455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085780.P3066347875735994455

/-! ## A085780.P13015799937509911909

`∪[A054731(n+1), A169835(n+1)]`
-/

namespace A085780.P13015799937509911909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085780.P13015799937509911909

/-! ## A085780.P17594675469514887642

`∪[A035287(n+1), A053990(n+1)]/4`
-/

namespace A085780.P17594675469514887642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053990 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 4

end

end A085780.P17594675469514887642

/-! ## A085780.P4091226140348879952

`(2^A307445(A255313(n+1))-1)²*A072389(n+1)`
-/

namespace A085780.P4091226140348879952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A307445 (A255313 (n + 1)).toNat : ℤ) - 1) ^ 2 * (A072389 (n + 1) : ℚ)

end

end A085780.P4091226140348879952

/-! ## A085780.P9870570087731789008

`((3*n+1)²*A072389(n+1))%A001082(4*n+2)`
-/

namespace A085780.P9870570087731789008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((3 * n + 1) ^ 2 : ℤ) * A072389 (n + 1)) (A001082 (4 * n + 2))

end

end A085780.P9870570087731789008

/-! ## A085780.P2241494511441915215

`A002265(A072389(n+1))`
-/

namespace A085780.P2241494511441915215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A072389 (n + 1)).toNat

end

end A085780.P2241494511441915215

/-! ## A085780.P14990128575561710313

`A008624(A072389(n+1)+1)`
-/

namespace A085780.P14990128575561710313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A072389 (n + 1) + 1).toNat

end

end A085780.P14990128575561710313

/-! ## A085780.P9973056367081635910

`A025480(A072389(n+1)+1)`
-/

namespace A085780.P9973056367081635910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A072389 (n + 1) + 1).toNat

end

end A085780.P9973056367081635910

/-!
# A085781: a(n) = 2*binomial(2*n+1,n+1) - 2^n.

The programs for A085781, the canonical program `A085781.P10848095721377504348` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085781 has offset 0).

The definition of A085781 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*C(2*n+1, n+1)-2^n` (program `A085781.P10848095721377504348`, by `A085781.P10848095721377504348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085781.P17061533660048159159

`2*A001700(n)-A000079(n)`
-/

namespace A085781.P17061533660048159159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001700 n - A000079 n

end

end A085781.P17061533660048159159

namespace A085781

/-- `2*A001700(n)-A000079(n)` -/
def P17061533660048159159.Spec : Prop :=
  ∀ n, P17061533660048159159.a n = A085781 n

theorem P17061533660048159159.correct : P17061533660048159159.Spec := by
  intro n
  simp only [A085781, Nat.add_sub_cancel, A085781.P17061533660048159159.a, A085781.P10848095721377504348.a, A000079, A000079.P10855139691139572931.a, A001700, A001700.P11212155124506223364.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085781

/-! ## A085781.P10848095721377504348

`2*C(2*n+1, n+1)-2^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085781

/-- `2*C(2*n+1, n+1)-2^n` -/
def P10848095721377504348.Spec : Prop :=
  ∀ n, P10848095721377504348.a n = A085781 n

theorem P10848095721377504348.correct : P10848095721377504348.Spec := by
  intro n
  simp only [A085781]

end A085781

/-! ## A085781.P15241173257583774738

`∏[4-2/(n+1)]-2^n`
-/

namespace A085781.P15241173257583774738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℚ)

end

end A085781.P15241173257583774738

namespace A085781

/-- `∏[4-2/(n+1)]-2^n` -/
def P15241173257583774738.Spec : Prop :=
  ∀ n, P15241173257583774738.a n = (A085781 n : ℚ)

end A085781

/-! ## A085781.P17938701291929003567

`Δ[A006134(n)-2^n]`
-/

namespace A085781.P17938701291929003567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085781.P17938701291929003567

namespace A085781

/-- `Δ[A006134(n)-2^n]` -/
def P17938701291929003567.Spec : Prop :=
  ∀ n, P17938701291929003567.a n = A085781 n

end A085781

/-! ## A085781.P16059242657982863165

`abs(A001405(2*(n+1))-2^n)`
-/

namespace A085781.P16059242657982863165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001405 (2 * (n + 1)) - (2 ^ n : ℤ)|

end

end A085781.P16059242657982863165

namespace A085781

/-- `abs(A001405(2*(n+1))-2^n)` -/
def P16059242657982863165.Spec : Prop :=
  ∀ n, P16059242657982863165.a n = A085781 n

end A085781

/-! ## A085781.P8601057173031953829

`2*(a(n-1)+n*A000108(n))` with `a(0)=1`
-/

namespace A085781.P8601057173031953829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (n : ℤ) * A000108 n)

end

end A085781.P8601057173031953829

namespace A085781

/-- `2*(a(n-1)+n*A000108(n))` -/
def P8601057173031953829.Spec : Prop :=
  ∀ n, P8601057173031953829.a n = A085781 n

end A085781

/-! ## A085781.P11670167858491835829

`record[A128014(n)-A158780(n)]`
-/

namespace A085781.P11670167858491835829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 n - A158780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085781.P11670167858491835829

namespace A085781

/-- `record[A128014(n)-A158780(n)]` -/
def P11670167858491835829.Spec : Prop :=
  ∀ n, P11670167858491835829.a n = A085781 n

end A085781

/-! ## A085781.P9165135604321978035

`abs(A000984(n+1)-A000079(n))`
-/

namespace A085781.P9165135604321978035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000984 (n + 1) - A000079 n|

end

end A085781.P9165135604321978035

namespace A085781

/-- `abs(A000984(n+1)-A000079(n))` -/
def P9165135604321978035.Spec : Prop :=
  ∀ n, P9165135604321978035.a n = A085781 n

end A085781

/-! ## A085781.P13082862123640947042

`record[Δ[A112336(n)]]`
-/

namespace A085781.P13082862123640947042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112336 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085781.P13082862123640947042

namespace A085781

/-- `record[Δ[A112336(n)]]` -/
def P13082862123640947042.Spec : Prop :=
  ∀ n, P13082862123640947042.a n = A085781 n

end A085781

/-! ## A085781.P6965747161896713927

`2*(a(n-1)+C(2*n, n+1))` with `a(0)=1`
-/

namespace A085781.P6965747161896713927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + Nat.choose (2 * n) (n + 1))

end

end A085781.P6965747161896713927

namespace A085781

/-- `2*(a(n-1)+C(2*n, n+1))` -/
def P6965747161896713927.Spec : Prop :=
  ∀ n, (P6965747161896713927.a n : ℤ) = A085781 n

end A085781

/-! ## A085781.P1454273852083924321

`Δ[∑[C(2*n, n)]-2^n]`
-/

namespace A085781.P1454273852083924321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085781.P1454273852083924321

namespace A085781

/-- `Δ[∑[C(2*n, n)]-2^n]` -/
def P1454273852083924321.Spec : Prop :=
  ∀ n, P1454273852083924321.a n = A085781 n

end A085781

/-! ## A085781.P608990099692899371

`(A059304(n+1)-2*A000079(n)²)/A000079(n+1)`
-/

namespace A085781.P608990099692899371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059304 (n + 1) - 2 * A000079 n ^ 2 : ℚ) / (A000079 (n + 1) : ℚ)

end

end A085781.P608990099692899371

namespace A085781

/-- `(A059304(n+1)-2*A000079(n)²)/A000079(n+1)` -/
def P608990099692899371.Spec : Prop :=
  ∀ n, P608990099692899371.a n = (A085781 n : ℚ)

end A085781

/-! ## A085781.P9837982712916188629

`(A059304(n+1)-A000079(2*n+1))/A000079(n+1)`
-/

namespace A085781.P9837982712916188629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059304 (n + 1) - A000079 (2 * n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A085781.P9837982712916188629

namespace A085781

/-- `(A059304(n+1)-A000079(2*n+1))/A000079(n+1)` -/
def P9837982712916188629.Spec : Prop :=
  ∀ n, P9837982712916188629.a n = (A085781 n : ℚ)

end A085781

/-!
# A085782: Numbers that can be written as a product of triangular numbers.

The programs for A085782, there is no canonical definition to state claims against.
-/

/-! ## A085782.P3362962627844400759

`eq[char[A007425(n+1)], A178334(n)]`
-/

namespace A085782.P3362962627844400759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A085782.P3362962627844400759

/-! ## A085782.P9931915447325790683

`eq[char[A007425(n+1)], A304118(n+1)]`
-/

namespace A085782.P9931915447325790683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A085782.P9931915447325790683

/-! ## A085782.P17338032641702476955

`eq[A061347(n+1), A301569(A255517(n))]`
-/

namespace A085782.P17338032641702476955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301569 (A255517 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085782.P17338032641702476955

/-! ## A085782.P3536055694281286736

`lt[A122841(2*(n+1)), A114855(A255517(n))]`
-/

namespace A085782.P3536055694281286736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114855 (A255517 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085782.P3536055694281286736

/-!
# A085783: Product of a prime and a triangular number.

The programs for A085783, there is no canonical definition to state claims against.
-/

/-! ## A085783.P930211372502113989

`∩[A085784(n+1), A243903(n+1)]`
-/

namespace A085783.P930211372502113989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085783.P930211372502113989

/-! ## A085783.P13931427321770066182

`record[A085784(n+1)%A008619(A171652(n+1))]`
-/

namespace A085783.P13931427321770066182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085784 (n + 1)) (A008619 (A171652 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085783.P13931427321770066182

/-!
# A085786: a(n) = n*(2*n^2 + n + 1)/2.

The programs for A085786, the canonical program `A085786.P5186580183642333249` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085786 has offset 1).

The definition of A085786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(2*(n+1)²+n+1+1)/2` (program `A085786.P5000868812511362382`, by `A085786.P5000868812511362382.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085786.P5000868812511362382

`(n+1)*(2*(n+1)²+n+1+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085786.P5000868812511362382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * (n + 1) ^ 2 + (n + 1) + 1) : ℚ) / 2

end

end A085786.P5000868812511362382

namespace A085786

/-- `(n+1)*(2*(n+1)²+n+1+1)/2` -/
def P5000868812511362382.Spec : Prop :=
  ∀ n, P5000868812511362382.a n = (A085786 (n + 1) : ℚ)

theorem P5000868812511362382.correct : P5000868812511362382.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A085786, Nat.add_sub_cancel, A085786.P5000868812511362382.a, A085786.P5186580183642333249.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A085786, Nat.add_sub_cancel, A085786.P5000868812511362382.a, A085786.P5186580183642333249.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A085786

/-! ## A085786.P5186580183642333249

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=11, a(2)=33, a(3)=74`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085786

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5186580183642333249.Spec : Prop :=
  ∀ n, P5186580183642333249.a n = A085786 (n + 1)

theorem P5186580183642333249.correct : P5186580183642333249.Spec := by
  intro n
  simp only [A085786, Nat.add_sub_cancel]

end A085786

/-! ## A085786.P8758876273111754124

`A000217(n+1)+(n+1)^3`
-/

namespace A085786.P8758876273111754124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + ((n + 1) ^ 3 : ℤ)

end

end A085786.P8758876273111754124

namespace A085786

/-- `A000217(n+1)+(n+1)^3` -/
def P8758876273111754124.Spec : Prop :=
  ∀ n, P8758876273111754124.a n = A085786 (n + 1)

end A085786

/-! ## A085786.P6477752840736687695

`∑[∑[ogf((2+3x+x^2)/(1-2x+x^2))]]`
-/

namespace A085786.P6477752840736687695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085786.P6477752840736687695

namespace A085786

/-- `∑[∑[ogf((2+3x+x^2)/(1-2x+x^2))]]` -/
def P6477752840736687695.Spec : Prop :=
  ∀ n, P6477752840736687695.a n = A085786 (n + 1)

end A085786

/-! ## A085786.P18298164667859072595

`ogf((2+3x+x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A085786.P18298164667859072595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 1] [1, -4, 6, -4, 1] n

end

end A085786.P18298164667859072595

namespace A085786

/-- `ogf((2+3x+x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P18298164667859072595.Spec : Prop :=
  ∀ n, P18298164667859072595.a n = A085786 (n + 1)

end A085786

/-! ## A085786.P8146341336267165497

`C(n+2, 2)+(n+1)^3`
-/

namespace A085786.P8146341336267165497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 + (n + 1) ^ 3

end

end A085786.P8146341336267165497

namespace A085786

/-- `C(n+2, 2)+(n+1)^3` -/
def P8146341336267165497.Spec : Prop :=
  ∀ n, (P8146341336267165497.a n : ℤ) = A085786 (n + 1)

end A085786

/-! ## A085786.P7715656502264288635

`lcm(n+2, (n+1)²)-∑[n]`
-/

namespace A085786.P7715656502264288635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) ((n + 1) ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A085786.P7715656502264288635

namespace A085786

/-- `lcm(n+2, (n+1)²)-∑[n]` -/
def P7715656502264288635.Spec : Prop :=
  ∀ n, P7715656502264288635.a n = A085786 (n + 1)

end A085786

/-! ## A085786.P1140412147282612909

`ceil(∑[∑[a(n-1)+6]+1])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A085786.P1140412147282612909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085786.P1140412147282612909

namespace A085786

/-- `ceil(∑[∑[a(n-1)+6]+1])` -/
def P1140412147282612909.Spec : Prop :=
  ∀ n, (P1140412147282612909.a n : ℤ) = A085786 (n + 1)

end A085786

/-! ## A085786.P11473833989086786982

`Δ[C(n+1, 2)²]+∑[n+1]`
-/

namespace A085786.P11473833989086786982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A085786.P11473833989086786982

namespace A085786

/-- `Δ[C(n+1, 2)²]+∑[n+1]` -/
def P11473833989086786982.Spec : Prop :=
  ∀ n, P11473833989086786982.a n = A085786 (n + 1)

end A085786

/-! ## A085786.P3883938293554850042

`∑[n+1]+(n+1)^acos(cos(3))`
-/

namespace A085786.P3883938293554850042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n + 1 : ℝ) ^ (Real.arccos (Real.cos (3 : ℝ)))

end

end A085786.P3883938293554850042

namespace A085786

/-- `∑[n+1]+(n+1)^acos(cos(3))` -/
def P3883938293554850042.Spec : Prop :=
  ∀ n, P3883938293554850042.a n = (A085786 (n + 1) : ℝ)

end A085786

/-! ## A085786.P14894217095588889452

`(n+2)*record[(n-1)²]-∑[n]`
-/

namespace A085786.P14894217095588889452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A085786.P14894217095588889452

namespace A085786

/-- `(n+2)*record[(n-1)²]-∑[n]` -/
def P14894217095588889452.Spec : Prop :=
  ∀ n, P14894217095588889452.a n = A085786 (n + 1)

end A085786

/-! ## A085786.P12385269613500163431

`∑[n]+lcm(n+1, (n+1)²+1)`
-/

namespace A085786.P12385269613500163431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (n + 1) ((n + 1) ^ 2 + 1)

end

end A085786.P12385269613500163431

namespace A085786

/-- `∑[n]+lcm(n+1, (n+1)²+1)` -/
def P12385269613500163431.Spec : Prop :=
  ∀ n, (P12385269613500163431.a n : ℤ) = A085786 (n + 1)

end A085786

/-! ## A085786.P17154825099407509448

`C(n+2, 2)*Δ[n²]+n+1`
-/

namespace A085786.P17154825099407509448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n + 1 : ℤ)

end

end A085786.P17154825099407509448

namespace A085786

/-- `C(n+2, 2)*Δ[n²]+n+1` -/
def P17154825099407509448.Spec : Prop :=
  ∀ n, P17154825099407509448.a n = A085786 (n + 1)

end A085786

/-! ## A085786.P10703359073294576729

`floor(∑[∑[a(n-1)+4]+n²])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A085786.P10703359073294576729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085786.P10703359073294576729

namespace A085786

/-- `floor(∑[∑[a(n-1)+4]+n²])` -/
def P10703359073294576729.Spec : Prop :=
  ∀ n, (P10703359073294576729.a n : ℤ) = A085786 (n + 1)

end A085786

/-! ## A085786.P3012937828472606802

`∑[∑[a(n-1)+4]]+∑[n²]` with `a(0)=2`
-/

namespace A085786.P3012937828472606802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A085786.P3012937828472606802

namespace A085786

/-- `∑[∑[a(n-1)+4]]+∑[n²]` -/
def P3012937828472606802.Spec : Prop :=
  ∀ n, (P3012937828472606802.a n : ℤ) = A085786 (n + 1)

end A085786

/-! ## A085786.P4979594830777042377

`(n+2)*C(n+1, n)²-∑[n]`
-/

namespace A085786.P4979594830777042377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.choose (n + 1) n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A085786.P4979594830777042377

namespace A085786

/-- `(n+2)*C(n+1, n)²-∑[n]` -/
def P4979594830777042377.Spec : Prop :=
  ∀ n, P4979594830777042377.a n = A085786 (n + 1)

end A085786

/-! ## A085786.P11583507126523020637

`∑[a(n-1)+1]+(n+1)^3` with `a(0)=1`
-/

namespace A085786.P11583507126523020637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 3

end

end A085786.P11583507126523020637

namespace A085786

/-- `∑[a(n-1)+1]+(n+1)^3` -/
def P11583507126523020637.Spec : Prop :=
  ∀ n, (P11583507126523020637.a n : ℤ) = A085786 (n + 1)

end A085786

/-! ## A085786.P13220343161014912995

`(n+2)*(n+1)²-C(n+1, 2)`
-/

namespace A085786.P13220343161014912995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) ^ 2 : ℤ) - (Nat.choose (n + 1) 2 : ℤ)

end

end A085786.P13220343161014912995

namespace A085786

/-- `(n+2)*(n+1)²-C(n+1, 2)` -/
def P13220343161014912995.Spec : Prop :=
  ∀ n, P13220343161014912995.a n = A085786 (n + 1)

end A085786

/-! ## A085786.P15688568124854578296

`∑[n+1]+((n+1)%(n+2))^3`
-/

namespace A085786.P15688568124854578296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) % (n + 2)) ^ 3

end

end A085786.P15688568124854578296

namespace A085786

/-- `∑[n+1]+((n+1)%(n+2))^3` -/
def P15688568124854578296.Spec : Prop :=
  ∀ n, (P15688568124854578296.a n : ℤ) = A085786 (n + 1)

end A085786

/-! ## A085786.P512776544712614768

`∑[n+2]+2*n*C(n+2, 2)`
-/

namespace A085786.P512776544712614768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n * Nat.choose (n + 2) 2

end

end A085786.P512776544712614768

namespace A085786

/-- `∑[n+2]+2*n*C(n+2, 2)` -/
def P512776544712614768.Spec : Prop :=
  ∀ n, (P512776544712614768.a n : ℤ) = A085786 (n + 1)

end A085786

/-!
# A085787: Generalized heptagonal numbers: m*(5*m - 3)/2, m = 0, +-1, +-2 +-3, ...

The programs for A085787, the canonical program `A085787.P9367493323180859612` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085787 has offset 0).

The definition of A085787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085787.P9367493323180859612

`5*n*(n+1)/8-1/16+(-1)^n*(2*n+1)/16`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085787

/-- `5*n*(n+1)/8-1/16+(-1)^n*(2*n+1)/16` -/
def P9367493323180859612.Spec : Prop :=
  ∀ n, P9367493323180859612.a n = (A085787 n : ℚ)

end A085787

/-! ## A085787.P12296167269258122712

`(A001318(n)+A118277(n))/2`
-/

namespace A085787.P12296167269258122712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001318 n + A118277 n : ℚ) / 2

end

end A085787.P12296167269258122712

namespace A085787

/-- `(A001318(n)+A118277(n))/2` -/
def P12296167269258122712.Spec : Prop :=
  ∀ n, P12296167269258122712.a n = (A085787 n : ℚ)

end A085787

/-! ## A085787.P9265576626977888078

`(A000217(n)+A001082(n+1))/2`
-/

namespace A085787.P9265576626977888078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n + A001082 (n + 1) : ℚ) / 2

end

end A085787.P9265576626977888078

namespace A085787

/-- `(A000217(n)+A001082(n+1))/2` -/
def P9265576626977888078.Spec : Prop :=
  ∀ n, P9265576626977888078.a n = (A085787 n : ℚ)

end A085787

/-! ## A085787.P8167723532819716516

`∑[2*n-gcd(n, ∑[n])]`
-/

namespace A085787.P8167723532819716516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085787.P8167723532819716516

namespace A085787

/-- `∑[2*n-gcd(n, ∑[n])]` -/
def P8167723532819716516.Spec : Prop :=
  ∀ n, P8167723532819716516.a n = A085787 n

end A085787

/-! ## A085787.P2207008889335703916

`∑[3*n/(n%2+2)]`
-/

namespace A085787.P2207008889335703916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085787.P2207008889335703916

namespace A085787

/-- `∑[3*n/(n%2+2)]` -/
def P2207008889335703916.Spec : Prop :=
  ∀ n, P2207008889335703916.a n = (A085787 n : ℚ)

end A085787

/-! ## A085787.P15855172983280496275

`∑[2*n-lcm(2, n)/2]`
-/

namespace A085787.P15855172983280496275
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085787.P15855172983280496275

namespace A085787

/-- `∑[2*n-lcm(2, n)/2]` -/
def P15855172983280496275.Spec : Prop :=
  ∀ n, P15855172983280496275.a n = (A085787 n : ℚ)

end A085787

/-! ## A085787.P13262707384570255840

`∑[(gcd(2*n, n²)+n)/2]`
-/

namespace A085787.P13262707384570255840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * n) (n ^ 2) + n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085787.P13262707384570255840

namespace A085787

/-- `∑[(gcd(2*n, n²)+n)/2]` -/
def P13262707384570255840.Spec : Prop :=
  ∀ n, P13262707384570255840.a n = (A085787 n : ℚ)

end A085787

/-! ## A085787.P2517206105303245330

`floor(5*(n/2)²-a(n-1))` with `a(0)=0`
-/

namespace A085787.P2517206105303245330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊5 * ((n : ℚ) / 2) ^ 2 - (a (n - 1) : ℚ)⌋

end

end A085787.P2517206105303245330

namespace A085787

/-- `floor(5*(n/2)²-a(n-1))` -/
def P2517206105303245330.Spec : Prop :=
  ∀ n, P2517206105303245330.a n = A085787 n

end A085787

/-! ## A085787.P16763383094519003307

`∑[gcd(n+2, floor((n+2)/2))+n-1]`
-/

namespace A085787.P16763383094519003307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 2 : ℤ) ⌊(n + 2 : ℚ) / 2⌋ : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085787.P16763383094519003307

namespace A085787

/-- `∑[gcd(n+2, floor((n+2)/2))+n-1]` -/
def P16763383094519003307.Spec : Prop :=
  ∀ n, P16763383094519003307.a n = A085787 n

end A085787

/-! ## A085787.P15258205989251993928

`∑[2*a(n-2)-a(n-4)]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A085787.P15258205989251993928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 3] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085787.P15258205989251993928

namespace A085787

/-- `∑[2*a(n-2)-a(n-4)]` -/
def P15258205989251993928.Spec : Prop :=
  ∀ n, P15258205989251993928.a n = A085787 n

end A085787

/-! ## A085787.P18237076010822863509

`∑[∑[5-a(n-1)]-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A085787.P18237076010822863509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f2 =>
  5 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085787.P18237076010822863509

namespace A085787

/-- `∑[∑[5-a(n-1)]-a(n-1)]` -/
def P18237076010822863509.Spec : Prop :=
  ∀ n, P18237076010822863509.a n = A085787 n

end A085787

/-! ## A085787.P5127758094459432028

`A273368(n)/4`
-/

namespace A085787.P5127758094459432028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273368 n : ℚ) / 4

end

end A085787.P5127758094459432028

namespace A085787

/-- `A273368(n)/4` -/
def P5127758094459432028.Spec : Prop :=
  ∀ n, P5127758094459432028.a n = (A085787 n : ℚ)

end A085787

/-! ## A085787.P10138569082694969251

`∑[A142150(n)+n]`
-/

namespace A085787.P10138569082694969251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085787.P10138569082694969251

namespace A085787

/-- `∑[A142150(n)+n]` -/
def P10138569082694969251.Spec : Prop :=
  ∀ n, P10138569082694969251.a n = A085787 n

end A085787

/-! ## A085787.P9318187871903014302

`(A247643(n)-1)/2`
-/

namespace A085787.P9318187871903014302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247643 n - 1 : ℚ) / 2

end

end A085787.P9318187871903014302

namespace A085787

/-- `(A247643(n)-1)/2` -/
def P9318187871903014302.Spec : Prop :=
  ∀ n, P9318187871903014302.a n = (A085787 n : ℚ)

end A085787

/-! ## A085787.P7836310765862740476

`(A239767(n)+n)/2`
-/

namespace A085787.P7836310765862740476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239767 n + (n : ℤ) : ℚ) / 2

end

end A085787.P7836310765862740476

namespace A085787

/-- `(A239767(n)+n)/2` -/
def P7836310765862740476.Spec : Prop :=
  ∀ n, P7836310765862740476.a n = (A085787 n : ℚ)

end A085787

/-! ## A085787.P12049001165509694966

`∑[n²-A181995(n)]`
-/

namespace A085787.P12049001165509694966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A181995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085787.P12049001165509694966

namespace A085787

/-- `∑[n²-A181995(n)]` -/
def P12049001165509694966.Spec : Prop :=
  ∀ n, P12049001165509694966.a n = A085787 n

end A085787

/-! ## A085787.P902159331010278253

`(A220082(n+1)-1)/4`
-/

namespace A085787.P902159331010278253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220082 (n + 1) - 1 : ℚ) / 4

end

end A085787.P902159331010278253

namespace A085787

/-- `(A220082(n+1)-1)/4` -/
def P902159331010278253.Spec : Prop :=
  ∀ n, P902159331010278253.a n = (A085787 n : ℚ)

end A085787

/-! ## A085787.P6632033131490067057

`A213395(n)%A000969(n)`
-/

namespace A085787.P6632033131490067057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213395 n) (A000969 n)

end

end A085787.P6632033131490067057

namespace A085787

/-- `A213395(n)%A000969(n)` -/
def P6632033131490067057.Spec : Prop :=
  ∀ n, P6632033131490067057.a n = A085787 n

end A085787

/-! ## A085787.P11176240531852250714

`∪[A000566(n), A147875(n)]`
-/

namespace A085787.P11176240531852250714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085787.P11176240531852250714

namespace A085787

/-- `∪[A000566(n), A147875(n)]` -/
def P11176240531852250714.Spec : Prop :=
  ∀ n, (P11176240531852250714.a n : ℤ) = A085787 n

end A085787

/-! ## A085787.P8638249702379367413

`A247643(n)%A111711(n+1)`
-/

namespace A085787.P8638249702379367413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247643 n) (A111711 (n + 1))

end

end A085787.P8638249702379367413

namespace A085787

/-- `A247643(n)%A111711(n+1)` -/
def P8638249702379367413.Spec : Prop :=
  ∀ n, P8638249702379367413.a n = A085787 n

end A085787

/-!
# A085788: Partial sums of n 3-spaced triangular numbers beginning with t(3), e.g., a(2) = t(3)+t(6) = 6+21 = 27.

The programs for A085788, the canonical program `A085788.P121239800999454845` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085788 has offset 1).

The definition of A085788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085788.P3873499831455504622

`3/2*(n+1)*(n+2)²`
-/

namespace A085788.P3873499831455504622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (n + 1 : ℚ) * ((n + 2) ^ 2 : ℚ)

end

end A085788.P3873499831455504622

namespace A085788

/-- `3/2*(n+1)*(n+2)²` -/
def P3873499831455504622.Spec : Prop :=
  ∀ n, P3873499831455504622.a n = (A085788 (n + 1) : ℚ)

theorem P3873499831455504622.correct : P3873499831455504622.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A085788, Nat.add_sub_cancel, A085788.P3873499831455504622.a, A085788.P121239800999454845.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A085788, Nat.add_sub_cancel, A085788.P3873499831455504622.a, A085788.P121239800999454845.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A085788

/-! ## A085788.P121239800999454845

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=6, a(1)=27, a(2)=72, a(3)=150`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085788

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P121239800999454845.Spec : Prop :=
  ∀ n, P121239800999454845.a n = A085788 (n + 1)

theorem P121239800999454845.correct : P121239800999454845.Spec := by
  intro n
  simp only [A085788, Nat.add_sub_cancel]

end A085788

/-! ## A085788.P1985141841135436914

`∑[C(3*n+4, 2)]`
-/

namespace A085788.P1985141841135436914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 4) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085788.P1985141841135436914

namespace A085788

/-- `∑[C(3*n+4, 2)]` -/
def P1985141841135436914.Spec : Prop :=
  ∀ n, (P1985141841135436914.a n : ℤ) = A085788 (n + 1)

end A085788

/-! ## A085788.P10717193895274065706

`∑[∑[a(n-1)+9]]` with `a(0)=6`
-/

namespace A085788.P10717193895274065706
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085788.P10717193895274065706

namespace A085788

/-- `∑[∑[a(n-1)+9]]` -/
def P10717193895274065706.Spec : Prop :=
  ∀ n, (P10717193895274065706.a n : ℤ) = A085788 (n + 1)

end A085788

/-! ## A085788.P14149293595072760372

`∑[∑[ogf((6+3x)/(1-2x+x^2))]]`
-/

namespace A085788.P14149293595072760372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085788.P14149293595072760372

namespace A085788

/-- `∑[∑[ogf((6+3x)/(1-2x+x^2))]]` -/
def P14149293595072760372.Spec : Prop :=
  ∀ n, P14149293595072760372.a n = A085788 (n + 1)

end A085788

/-! ## A085788.P11012021454023965632

`ogf((6+3x)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A085788.P11012021454023965632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 3] [1, -4, 6, -4, 1] n

end

end A085788.P11012021454023965632

namespace A085788

/-- `ogf((6+3x)/(1-4x+6x^2-4x^3+x^4))` -/
def P11012021454023965632.Spec : Prop :=
  ∀ n, P11012021454023965632.a n = A085788 (n + 1)

end A085788

/-! ## A085788.P5727027170750872939

`∑[∑[A017233(n)]]`
-/

namespace A085788.P5727027170750872939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085788.P5727027170750872939

namespace A085788

/-- `∑[∑[A017233(n)]]` -/
def P5727027170750872939.Spec : Prop :=
  ∀ n, P5727027170750872939.a n = A085788 (n + 1)

end A085788

/-! ## A085788.P11133378482622538055

`∑[A081266(n+1)]`
-/

namespace A085788.P11133378482622538055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085788.P11133378482622538055

namespace A085788

/-- `∑[A081266(n+1)]` -/
def P11133378482622538055.Spec : Prop :=
  ∀ n, P11133378482622538055.a n = A085788 (n + 1)

end A085788

/-! ## A085788.P2487325394833936205

`∑[A178977(n)+1]`
-/

namespace A085788.P2487325394833936205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178977 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085788.P2487325394833936205

namespace A085788

/-- `∑[A178977(n)+1]` -/
def P2487325394833936205.Spec : Prop :=
  ∀ n, P2487325394833936205.a n = A085788 (n + 1)

end A085788

/-! ## A085788.P11868775800327865895

`∑[A283394(n)+2]`
-/

namespace A085788.P11868775800327865895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283394 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085788.P11868775800327865895

namespace A085788

/-- `∑[A283394(n)+2]` -/
def P11868775800327865895.Spec : Prop :=
  ∀ n, P11868775800327865895.a n = A085788 (n + 1)

end A085788

/-! ## A085788.P5861807205846053188

`∑[A000217(3*(n+1))]`
-/

namespace A085788.P5861807205846053188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085788.P5861807205846053188

namespace A085788

/-- `∑[A000217(3*(n+1))]` -/
def P5861807205846053188.Spec : Prop :=
  ∀ n, P5861807205846053188.a n = A085788 (n + 1)

end A085788

/-! ## A085788.P6361912341835377377

`3*A114364(n+1)/2`
-/

namespace A085788.P6361912341835377377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A114364 (n + 1) : ℚ) / 2

end

end A085788.P6361912341835377377

namespace A085788

/-- `3*A114364(n+1)/2` -/
def P6361912341835377377.Spec : Prop :=
  ∀ n, P6361912341835377377.a n = (A085788 (n + 1) : ℚ)

theorem P6361912341835377377.correct : P6361912341835377377.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A085788, Nat.add_sub_cancel, A085788.P6361912341835377377.a, A085788.P121239800999454845.a, A114364, A114364.P8709402914975353862.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A085788, Nat.add_sub_cancel, A085788.P6361912341835377377.a, A085788.P121239800999454845.a, A114364, A114364.P8709402914975353862.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A085788

/-! ## A085788.P16872852127740019565

`A196507(n+1)/2+n+1`
-/

namespace A085788.P16872852127740019565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196507 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A085788.P16872852127740019565

namespace A085788

/-- `A196507(n+1)/2+n+1` -/
def P16872852127740019565.Spec : Prop :=
  ∀ n, P16872852127740019565.a n = (A085788 (n + 1) : ℚ)

theorem P16872852127740019565.correct : P16872852127740019565.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A085788, Nat.add_sub_cancel, A085788.P16872852127740019565.a, A085788.P121239800999454845.a, A196507, A196507.P14709704508244085490.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A085788, Nat.add_sub_cancel, A085788.P16872852127740019565.a, A085788.P121239800999454845.a, A196507, A196507.P14709704508244085490.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A085788

/-! ## A085788.P10183119481423590984

`A268484(n)+A062748(n)`
-/

namespace A085788.P10183119481423590984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268484 n + A062748 n

end

end A085788.P10183119481423590984

namespace A085788

/-- `A268484(n)+A062748(n)` -/
def P10183119481423590984.Spec : Prop :=
  ∀ n, P10183119481423590984.a n = A085788 (n + 1)

end A085788

/-! ## A085788.P16367831660065049682

`A230018(n+1)-A005915(n)`
-/

namespace A085788.P16367831660065049682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230018 (n + 1) - A005915 n

end

end A085788.P16367831660065049682

namespace A085788

/-- `A230018(n+1)-A005915(n)` -/
def P16367831660065049682.Spec : Prop :=
  ∀ n, P16367831660065049682.a n = A085788 (n + 1)

end A085788

/-! ## A085788.P8353565299330994179

`A162267(n+1)+A077414(n+1)`
-/

namespace A085788.P8353565299330994179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162267 (n + 1) + A077414 (n + 1)

end

end A085788.P8353565299330994179

namespace A085788

/-- `A162267(n+1)+A077414(n+1)` -/
def P8353565299330994179.Spec : Prop :=
  ∀ n, P8353565299330994179.a n = A085788 (n + 1)

end A085788

/-! ## A085788.P13363158701040010931

`A024391(n+1)-A024212(n+1)`
-/

namespace A085788.P13363158701040010931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024391 (n + 1) - A024212 (n + 1)

end

end A085788.P13363158701040010931

namespace A085788

/-- `A024391(n+1)-A024212(n+1)` -/
def P13363158701040010931.Spec : Prop :=
  ∀ n, P13363158701040010931.a n = A085788 (n + 1)

end A085788

/-! ## A085788.P16848701452464183546

`A228888(n+1)-A024394(n+1)`
-/

namespace A085788.P16848701452464183546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228888 (n + 1) - A024394 (n + 1)

end

end A085788.P16848701452464183546

namespace A085788

/-- `A228888(n+1)-A024394(n+1)` -/
def P16848701452464183546.Spec : Prop :=
  ∀ n, P16848701452464183546.a n = A085788 (n + 1)

end A085788

/-! ## A085788.P5895782582791882403

`A005920(n+1)-A000217(n+2)`
-/

namespace A085788.P5895782582791882403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005920 (n + 1) - A000217 (n + 2)

end

end A085788.P5895782582791882403

namespace A085788

/-- `A005920(n+1)-A000217(n+2)` -/
def P5895782582791882403.Spec : Prop :=
  ∀ n, P5895782582791882403.a n = A085788 (n + 1)

end A085788

/-!
# A085789: Partial sums of n 3-spaced triangular numbers beginning with t(2), e.g., a(2) = t(2) + t(5) = 3 + 15 = 18.

The programs for A085789, the canonical program `A085789.P2650559542774038708` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085789 has offset 1).

The definition of A085789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085789.P6428379591016398847

`3*(n+1)*C(n+2, 2)`
-/

namespace A085789.P6428379591016398847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) * Nat.choose (n + 2) 2

end

end A085789.P6428379591016398847

namespace A085789

/-- `3*(n+1)*C(n+2, 2)` -/
def P6428379591016398847.Spec : Prop :=
  ∀ n, (P6428379591016398847.a n : ℤ) = A085789 (n + 1)

end A085789

/-! ## A085789.P16401620488256450988

`3/2*(n+1)²*(n+2)`
-/

namespace A085789.P16401620488256450988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * ((n + 1) ^ 2 : ℚ) * (n + 2 : ℚ)

end

end A085789.P16401620488256450988

namespace A085789

/-- `3/2*(n+1)²*(n+2)` -/
def P16401620488256450988.Spec : Prop :=
  ∀ n, P16401620488256450988.a n = (A085789 (n + 1) : ℚ)

theorem P16401620488256450988.correct : P16401620488256450988.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A085789, Nat.add_sub_cancel, A085789.P16401620488256450988.a, A085789.P2650559542774038708.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A085789, Nat.add_sub_cancel, A085789.P16401620488256450988.a, A085789.P2650559542774038708.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A085789

/-! ## A085789.P2650559542774038708

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=18, a(2)=54, a(3)=120`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085789

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2650559542774038708.Spec : Prop :=
  ∀ n, P2650559542774038708.a n = A085789 (n + 1)

theorem P2650559542774038708.correct : P2650559542774038708.Spec := by
  intro n
  simp only [A085789, Nat.add_sub_cancel]

end A085789

/-! ## A085789.P1401246934878794180

`∑[C(3*(n+1), 2)]`
-/

namespace A085789.P1401246934878794180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085789.P1401246934878794180

namespace A085789

/-- `∑[C(3*(n+1), 2)]` -/
def P1401246934878794180.Spec : Prop :=
  ∀ n, (P1401246934878794180.a n : ℤ) = A085789 (n + 1)

end A085789

/-! ## A085789.P7340149315661036637

`∑[∑[a(n-1)+9]]` with `a(0)=3`
-/

namespace A085789.P7340149315661036637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085789.P7340149315661036637

namespace A085789

/-- `∑[∑[a(n-1)+9]]` -/
def P7340149315661036637.Spec : Prop :=
  ∀ n, (P7340149315661036637.a n : ℤ) = A085789 (n + 1)

end A085789

/-! ## A085789.P10924612406670314000

`∑[∑[ogf((3+6x)/(1-2x+x^2))]]`
-/

namespace A085789.P10924612406670314000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085789.P10924612406670314000

namespace A085789

/-- `∑[∑[ogf((3+6x)/(1-2x+x^2))]]` -/
def P10924612406670314000.Spec : Prop :=
  ∀ n, P10924612406670314000.a n = A085789 (n + 1)

end A085789

/-! ## A085789.P14266471614246155146

`ogf((3+6x)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A085789.P14266471614246155146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6] [1, -4, 6, -4, 1] n

end

end A085789.P14266471614246155146

namespace A085789

/-- `ogf((3+6x)/(1-4x+6x^2-4x^3+x^4))` -/
def P14266471614246155146.Spec : Prop :=
  ∀ n, P14266471614246155146.a n = A085789 (n + 1)

end A085789

/-! ## A085789.P12113759856719549665

`∑[∑[A017197(n)]]`
-/

namespace A085789.P12113759856719549665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085789.P12113759856719549665

namespace A085789

/-- `∑[∑[A017197(n)]]` -/
def P12113759856719549665.Spec : Prop :=
  ∀ n, P12113759856719549665.a n = A085789 (n + 1)

end A085789

/-! ## A085789.P2765706120105069108

`∑[A062741(n+1)]`
-/

namespace A085789.P2765706120105069108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085789.P2765706120105069108

namespace A085789

/-- `∑[A062741(n+1)]` -/
def P2765706120105069108.Spec : Prop :=
  ∀ n, P2765706120105069108.a n = A085789 (n + 1)

end A085789

/-! ## A085789.P8251051553059262615

`∑[A145910(n)+1]`
-/

namespace A085789.P8251051553059262615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145910 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085789.P8251051553059262615

namespace A085789

/-- `∑[A145910(n)+1]` -/
def P8251051553059262615.Spec : Prop :=
  ∀ n, P8251051553059262615.a n = A085789 (n + 1)

end A085789

/-! ## A085789.P9476840746533255562

`∑[A081271(n)+2]`
-/

namespace A085789.P9476840746533255562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081271 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085789.P9476840746533255562

namespace A085789

/-- `∑[A081271(n)+2]` -/
def P9476840746533255562.Spec : Prop :=
  ∀ n, P9476840746533255562.a n = A085789 (n + 1)

end A085789

/-! ## A085789.P1243128896861691666

`∑[A129863(n)-3]`
-/

namespace A085789.P1243128896861691666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129863 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085789.P1243128896861691666

namespace A085789

/-- `∑[A129863(n)-3]` -/
def P1243128896861691666.Spec : Prop :=
  ∀ n, P1243128896861691666.a n = A085789 (n + 1)

end A085789

/-! ## A085789.P15121397861048215115

`∑[A064226(n)+n]`
-/

namespace A085789.P15121397861048215115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064226 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085789.P15121397861048215115

namespace A085789

/-- `∑[A064226(n)+n]` -/
def P15121397861048215115.Spec : Prop :=
  ∀ n, P15121397861048215115.a n = A085789 (n + 1)

end A085789

/-! ## A085789.P9465162177287577185

`∑[A081270(n)-n]`
-/

namespace A085789.P9465162177287577185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081270 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085789.P9465162177287577185

namespace A085789

/-- `∑[A081270(n)-n]` -/
def P9465162177287577185.Spec : Prop :=
  ∀ n, P9465162177287577185.a n = A085789 (n + 1)

end A085789

/-! ## A085789.P4712111184708004246

`A036659(n+1)+(n+1)²`
-/

namespace A085789.P4712111184708004246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036659 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A085789.P4712111184708004246

namespace A085789

/-- `A036659(n+1)+(n+1)²` -/
def P4712111184708004246.Spec : Prop :=
  ∀ n, P4712111184708004246.a n = A085789 (n + 1)

end A085789

/-! ## A085789.P10491596957772898546

`A143943(n+1)/2-(n+1)`
-/

namespace A085789.P10491596957772898546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143943 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A085789.P10491596957772898546

namespace A085789

/-- `A143943(n+1)/2-(n+1)` -/
def P10491596957772898546.Spec : Prop :=
  ∀ n, P10491596957772898546.a n = (A085789 (n + 1) : ℚ)

theorem P10491596957772898546.correct : P10491596957772898546.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A085789, Nat.add_sub_cancel, A085789.P10491596957772898546.a, A085789.P2650559542774038708.a, A143943, A143943.P9901473116511251571.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A085789, Nat.add_sub_cancel, A085789.P10491596957772898546.a, A085789.P2650559542774038708.a, A143943, A143943.P9901473116511251571.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A085789

/-! ## A085789.P13031595796675033672

`(A228888(n+1)-(n+1))/3`
-/

namespace A085789.P13031595796675033672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228888 (n + 1) - (n + 1 : ℤ) : ℚ) / 3

end

end A085789.P13031595796675033672

namespace A085789

/-- `(A228888(n+1)-(n+1))/3` -/
def P13031595796675033672.Spec : Prop :=
  ∀ n, P13031595796675033672.a n = (A085789 (n + 1) : ℚ)

end A085789

/-! ## A085789.P14460420541913146477

`(A094421(n+1)-(n+1))/4`
-/

namespace A085789.P14460420541913146477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094421 (n + 1) - (n + 1 : ℤ) : ℚ) / 4

end

end A085789.P14460420541913146477

namespace A085789

/-- `(A094421(n+1)-(n+1))/4` -/
def P14460420541913146477.Spec : Prop :=
  ∀ n, P14460420541913146477.a n = (A085789 (n + 1) : ℚ)

theorem P14460420541913146477.correct : P14460420541913146477.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A085789, Nat.add_sub_cancel, A085789.P14460420541913146477.a, A085789.P2650559542774038708.a, A094421, A094421.P7734776028087042325.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A085789, Nat.add_sub_cancel, A085789.P14460420541913146477.a, A085789.P2650559542774038708.a, A094421, A094421.P7734776028087042325.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A085789

/-! ## A085789.P3981835202195283348

`A142962(n+1)-(n+1)^3`
-/

namespace A085789.P3981835202195283348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142962 (n + 1) - ((n + 1) ^ 3 : ℤ)

end

end A085789.P3981835202195283348

namespace A085789

/-- `A142962(n+1)-(n+1)^3` -/
def P3981835202195283348.Spec : Prop :=
  ∀ n, P3981835202195283348.a n = A085789 (n + 1)

end A085789

/-! ## A085789.P4425679450908211279

`A126587(n+1)+A004188(n)`
-/

namespace A085789.P4425679450908211279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126587 (n + 1) + A004188 n

end

end A085789.P4425679450908211279

namespace A085789

/-- `A126587(n+1)+A004188(n)` -/
def P4425679450908211279.Spec : Prop :=
  ∀ n, P4425679450908211279.a n = A085789 (n + 1)

end A085789

/-!
# A085790: Integers sorted by the sum of their divisors.

The programs for A085790, there is no canonical definition to state claims against.
-/

/-! ## A085790.P7751395535522127178

`A128227(eq[A002024(n+1), A245093(n+1)])`
-/

namespace A085790.P7751395535522127178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A085790.P7751395535522127178

/-! ## A085790.P3661291796574960533

`A193738(eq[A002024(n+1), A245093(n+1)])`
-/

namespace A085790.P3661291796574960533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A085790.P3661291796574960533

/-! ## A085790.P3263223269085358133

`A128227(eq[A003056(n), A245093(n+1)])`
-/

namespace A085790.P3263223269085358133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A085790.P3263223269085358133

/-! ## A085790.P7626383789156418294

`A193738(eq[A003056(n), A245093(n+1)])`
-/

namespace A085790.P7626383789156418294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A085790.P7626383789156418294

/-! ## A085790.P14986542174883506316

`A002260(eq[A003056(n), A245093(n+1)]+1)`
-/

namespace A085790.P14986542174883506316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A085790.P14986542174883506316

/-!
# A085791: Triangle T(n,k) read by rows; given by [0,1,0,1,0,1,0,1,...] DELTA [1,0,1,1,1,2,1,3,1,4,1,5,...], where DELTA is the operator defined in A084938.

The programs for A085791, there is no canonical definition to state claims against.
-/

/-! ## A085791.P15640421614040188965

`A008482(n)+A294498(A000007(A126324(n))+n)`
-/

namespace A085791.P15640421614040188965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n + A294498 (A000007 (A126324 n).toNat + (n : ℤ)).toNat

end

end A085791.P15640421614040188965

/-! ## A085791.P12261295825993423852

`A008482(n)+A294498(n)%A294476(A294444(n))`
-/

namespace A085791.P12261295825993423852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n + Int.tmod (A294498 n) (A294476 (A294444 n).toNat)

end

end A085791.P12261295825993423852

/-! ## A085791.P9433787829145707750

`A048993(A038722(n+2)+1)-A185284(A005408(n))`
-/

namespace A085791.P9433787829145707750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A038722 (n + 2) + 1).toNat - A185284 (A005408 n).toNat

end

end A085791.P9433787829145707750

/-! ## A085791.P5753274738283299145

`A325678(2*A211399(n))`
-/

namespace A085791.P5753274738283299145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (2 * A211399 n).toNat

end

end A085791.P5753274738283299145

/-! ## A085791.P6341874396624046994

`A007887(A048723(n)^A000005(n+1))`
-/

namespace A085791.P6341874396624046994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007887 (SequenceMachineLib.roundAway ((A048723 n : ℚ) ^ (A000005 (n + 1) : ℤ))).toNat

end

end A085791.P6341874396624046994

/-!
# A085792: Triangle T(n, k) read by rows; given by [1, 0, 0, 0, 0, ...] DELTA [1, 1, 2, 5, 14, 42, 132, 429, 1430, ...] (A000108) where DELTA is Deléham's operator defined in A084938.

The programs for A085792, there is no canonical definition to state claims against.
-/

/-! ## A085792.P13347070972362640587

`or(A033878(n), A046782(A003141(n)))`
-/

namespace A085792.P13347070972362640587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033878 n) (A046782 (A003141 n).toNat)

end

end A085792.P13347070972362640587

/-! ## A085792.P1707265781363012364

`A084888(A187120(n+3))+A033878(n)`
-/

namespace A085792.P1707265781363012364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084888 (A187120 (n + 3)).toNat + A033878 n

end

end A085792.P1707265781363012364

/-! ## A085792.P12041021290545465572

`A033878(n)+2*A309767(A213001(n))`
-/

namespace A085792.P12041021290545465572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033878 n + 2 * A309767 (A213001 n).toNat

end

end A085792.P12041021290545465572

/-! ## A085792.P751841966822541469

`or(A033878(n), A285007(A000358(n+1)))`
-/

namespace A085792.P751841966822541469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033878 n) (A285007 (A000358 (n + 1)).toNat)

end

end A085792.P751841966822541469

/-!
# A085794: Lexicographically earliest squarefree infinite ternary word.

The programs for A085794, there is no canonical definition to state claims against.
-/

/-! ## A085794.P2817517740507887920

`A297402(A078721(n))*A356678(n+2)`
-/

namespace A085794.P2817517740507887920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297402 (A078721 n).toNat * A356678 (n + 2)

end

end A085794.P2817517740507887920

/-! ## A085794.P7007910726024323667

`A356678(n+2)+A005872(A181666(n+1))`
-/

namespace A085794.P7007910726024323667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356678 (n + 2) + A005872 (A181666 (n + 1)).toNat

end

end A085794.P7007910726024323667

/-! ## A085794.P17004265091378360878

`A356678(n+2)+A152770(A237812(n+1))`
-/

namespace A085794.P17004265091378360878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356678 (n + 2) + A152770 (A237812 (n + 1)).toNat

end

end A085794.P17004265091378360878

/-! ## A085794.P17685936344496839202

`A034380(A290163(n+1))*A356678(n+2)`
-/

namespace A085794.P17685936344496839202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A290163 (n + 1)).toNat * A356678 (n + 2)

end

end A085794.P17685936344496839202

/-! ## A085794.P15990773500537713724

`A356678(n+2)+A307382(A216955(3*n+4))`
-/

namespace A085794.P15990773500537713724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356678 (n + 2) + A307382 (A216955 (3 * n + 4)).toNat

end

end A085794.P15990773500537713724

/-!
# A085795: Dimensions k such that the (2,k)-cross lattice-tiles R^k.

The programs for A085795, there is no canonical definition to state claims against.
-/

/-! ## A085795.P1658908133173259785

`eq[A010168(n), A127568(n)]`
-/

namespace A085795.P1658908133173259785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010168 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085795.P1658908133173259785

/-!
# A085798: Dimensions k such that the (5,k)-cross lattice-tiles R^k.

The programs for A085798, there is no canonical definition to state claims against.
-/

/-! ## A085798.P12954196615188284317

`A348551(A130405(3*n+1))-A248952(n)`
-/

namespace A085798.P12954196615188284317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348551 (A130405 (3 * n + 1)).toNat - A248952 n

end

end A085798.P12954196615188284317

/-!
# A085799: Determinant of the symmetric n X n matrix A defined by A[i,j] = abs(i^2 - j^2) for 1 <= i,j <= n.

The programs for A085799, there is no canonical definition to state claims against.
-/

/-! ## A085799.P8992960335172049395

`(n+2)*∏[4*n+2]/4*n*(-1)^n`
-/

namespace A085799.P8992960335172049395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4) * ((n : ℤ) * (-1) ^ n : ℚ)

end

end A085799.P8992960335172049395

