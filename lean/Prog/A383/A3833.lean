import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
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
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
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

/-!
# A383300: Numbers k such that primorial base expansion of k has the primorial base expansion of k' as its suffix, where k' stands for the arithmetic derivative of k (A003415).

The programs for A383300, there is no canonical definition to state claims against.
-/

/-! ## A383300.P11169975591193022206

`A348283(n+1)+A159075(n)`
-/

namespace A383300.P11169975591193022206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1) + A159075 n

end

end A383300.P11169975591193022206

/-! ## A383300.P15222918827792810135

`A348283(n+1)-A063524(n)`
-/

namespace A383300.P15222918827792810135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1) - A063524 n

end

end A383300.P15222918827792810135

/-! ## A383300.P6064855267026158710

`A348283(n+1)/A141044(n)`
-/

namespace A383300.P6064855267026158710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348283 (n + 1) : ℚ) / (A141044 n : ℚ)

end

end A383300.P6064855267026158710

/-! ## A383300.P6094304537924323345

`A348283(n+1)/A373565(n)`
-/

namespace A383300.P6094304537924323345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348283 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A383300.P6094304537924323345

/-! ## A383300.P17632083904777471279

`A283971(A348283(n+1))`
-/

namespace A383300.P17632083904777471279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (A348283 (n + 1)).toNat

end

end A383300.P17632083904777471279

/-!
# A383302: a(n) = 1 if A276086(A276086(n)) is a multiple of A276086(A003415(n)), otherwise 0, where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A383302, there is no canonical definition to state claims against.
-/

/-! ## A383302.P1728579714713650454

`char[A383303(n+1)]`
-/

namespace A383302.P1728579714713650454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A383302.P1728579714713650454

/-! ## A383302.P15777745191570540358

`A010051(A204714(n+1)+A005729(3*n+1))`
-/

namespace A383302.P15777745191570540358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A204714 (n + 1) + A005729 (3 * n + 1)).toNat

end

end A383302.P15777745191570540358

/-! ## A383302.P9221307912040490653

`A010051(A325211(n+3)^A367905(n))`
-/

namespace A383302.P9221307912040490653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway ((A325211 (n + 3) : ℚ) ^ (A367905 n : ℤ))).toNat

end

end A383302.P9221307912040490653

/-! ## A383302.P1247365259313762119

`A323239(C(A175781(n+1), A032741(n)))`
-/

namespace A383302.P1247365259313762119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (Nat.choose (A175781 (n + 1)).toNat (A032741 n).toNat)

end

end A383302.P1247365259313762119

/-! ## A383302.P4745531917378928397

`and(A008284(n+1), A335538(A355366(3*(n+2))))`
-/

namespace A383302.P4745531917378928397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008284 (n + 1)) (A335538 (A355366 (3 * (n + 2))).toNat)

end

end A383302.P4745531917378928397

/-!
# A383303: Numbers k such that A276086(A276086(k)) is a multiple of A276086(A003415(k)), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A383303, there is no canonical definition to state claims against.
-/

/-! ## A383303.P2533452846696895681

`lt[0, A383302(n)]`
-/

namespace A383303.P2533452846696895681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383302 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A383303.P2533452846696895681

/-! ## A383303.P1483337495823027537

`eq[A307609(n+1), A383302(n)]`
-/

namespace A383303.P1483337495823027537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383302 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383303.P1483337495823027537

/-! ## A383303.P13547414006374795197

`filter[A173905(n+1), A383302(#)]`
-/

namespace A383303.P13547414006374795197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383302 (f1 j).toNat = 1) n)

end

end A383303.P13547414006374795197

/-! ## A383303.P16741308197261027748

`eq[A078315(n+1), A383302(n)]`
-/

namespace A383303.P16741308197261027748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383302 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383303.P16741308197261027748

/-! ## A383303.P777302855537104459

`eq[A376663(n+1), A383302(n)]`
-/

namespace A383303.P777302855537104459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383302 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383303.P777302855537104459

/-!
# A383306: Nonnegative integers whose difference between the largest and smallest digits is equal to the mode of its digits.

The programs for A383306, there is no canonical definition to state claims against.
-/

/-! ## A383306.P125714362984759201

`∩[A218556(n+1), A064544(n)]`
-/

namespace A383306.P125714362984759201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383306.P125714362984759201

/-!
# A383308: Number of integer partitions of n that can be partitioned into sets with a common sum.

The programs for A383308, there is no canonical definition to state claims against.
-/

/-! ## A383308.P11836177448321630766

`A000041(n)-A381994(n)`
-/

namespace A383308.P11836177448321630766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A381994 n

end

end A383308.P11836177448321630766

/-! ## A383308.P5727106806419981265

`∑[A002865(n)]-A381994(n)`
-/

namespace A383308.P5727106806419981265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A381994 n

end

end A383308.P5727106806419981265

/-! ## A383308.P6659311706947862227

`A000688(A000079(n))-A381994(n)`
-/

namespace A383308.P6659311706947862227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A000079 n).toNat - A381994 n

end

end A383308.P6659311706947862227

/-!
# A383309: Numbers whose prime indices are prime powers > 1 with a common sum of prime indices.

The programs for A383309, there is no canonical definition to state claims against.
-/

/-! ## A383309.P17743998272696825365

`∩[2*n+1, A382215(n+1)]`
-/

namespace A383309.P17743998272696825365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383309.P17743998272696825365

/-! ## A383309.P2517672568860484069

`record[A000265(A382215(n+1))]`
-/

namespace A383309.P2517672568860484069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A382215 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383309.P2517672568860484069

/-! ## A383309.P6779041797772473755

`filter[A382215(n+1), A000035(#)]`
-/

namespace A383309.P6779041797772473755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A383309.P6779041797772473755

/-! ## A383309.P11125945584175154403

`filter[A382215(n+1), A039982(#)]`
-/

namespace A383309.P11125945584175154403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A383309.P11125945584175154403

/-! ## A383309.P5944591187055389735

`filter[A382215(n+1), A093719(#)]`
-/

namespace A383309.P5944591187055389735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A383309.P5944591187055389735

/-! ## A383309.P12997791312301714997

`filter[A382215(n+1), A254651(#)]`
-/

namespace A383309.P12997791312301714997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A383309.P12997791312301714997

/-! ## A383309.P4138082274167137054

`filter[A382215(n+1), A260390(#)]`
-/

namespace A383309.P4138082274167137054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A383309.P4138082274167137054

/-! ## A383309.P1660088287734406004

`filter[A382215(n+1), A267579(#)]`
-/

namespace A383309.P1660088287734406004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A383309.P1660088287734406004

/-! ## A383309.P13437642934558812775

`filter[A382215(n+1), A361023(#)]`
-/

namespace A383309.P13437642934558812775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A383309.P13437642934558812775

/-! ## A383309.P1899303704828844277

`filter[A382215(n+1), A374134(#)]`
-/

namespace A383309.P1899303704828844277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A383309.P1899303704828844277

/-!
# A383310: Number of ways to choose a strict multiset partition of a factorization of n into factors > 1.

The programs for A383310, there is no canonical definition to state claims against.
-/

/-! ## A383310.P12456673014439082547

`or(A000007(A091866(3*n)), A002033(n))`
-/

namespace A383310.P12456673014439082547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A091866 (3 * n)).toNat) (A002033 n)

end

end A383310.P12456673014439082547

/-! ## A383310.P14549594133061870579

`A194980(A160085(n+1))`
-/

namespace A383310.P14549594133061870579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (A160085 (n + 1)).toNat

end

end A383310.P14549594133061870579

/-! ## A383310.P17133318498996998299

`A384183(A082588(n+1))`
-/

namespace A383310.P17133318498996998299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384183 (A082588 (n + 1)).toNat

end

end A383310.P17133318498996998299

/-! ## A383310.P15428841167278958223

`A363832(A297174(n+1))`
-/

namespace A383310.P15428841167278958223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363832 (A297174 (n + 1)).toNat

end

end A383310.P15428841167278958223

/-! ## A383310.P1494942413200706470

`A357714(A347464(n+1))`
-/

namespace A383310.P1494942413200706470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357714 (A347464 (n + 1)).toNat

end

end A383310.P1494942413200706470

/-!
# A383311: Number of ways to choose a set multipartition (multiset of sets) of a factorization of n into factors > 1.

The programs for A383311, there is no canonical definition to state claims against.
-/

/-! ## A383311.P12346901207501254322

`A296119(n+1)-A242775(A046951(n+1))`
-/

namespace A383311.P12346901207501254322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296119 (n + 1) - A242775 (A046951 (n + 1)).toNat

end

end A383311.P12346901207501254322

/-! ## A383311.P4429101809945224272

`A296119(n+1)+A240328(A229487(n+4))`
-/

namespace A383311.P4429101809945224272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296119 (n + 1) + A240328 (A229487 (n + 4)).toNat

end

end A383311.P4429101809945224272

/-! ## A383311.P11067690617097245949

`A296119(n+1)+A240328(A306367(2*n+3))`
-/

namespace A383311.P11067690617097245949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296119 (n + 1) + A240328 (A306367 (2 * n + 3)).toNat

end

end A383311.P11067690617097245949

/-! ## A383311.P4875619344073368771

`A296119(n+1)-A025441(A342721(2*(n+2)))`
-/

namespace A383311.P4875619344073368771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296119 (n + 1) - A025441 (A342721 (2 * (n + 2))).toNat

end

end A383311.P4875619344073368771

/-!
# A383313: Expansion of e.g.f. exp(-x/2) / (1-2*x)^(1/4).

The programs for A383313, the canonical program `A383313.P2701663935081459301` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383313 has offset 0).

The definition of A383313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383313.P2701663935081459301

`(n-1)*(2*a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383313

/-- `(n-1)*(2*a(n-1)+a(n-2))` -/
def P2701663935081459301.Spec : Prop :=
  ∀ n, P2701663935081459301.a n = A383313 n

theorem P2701663935081459301.correct : P2701663935081459301.Spec := by
  intro n
  simp only [A383313]

end A383313

/-! ## A383313.P12414870134433664762

`A088991(n)/A000079(n)`
-/

namespace A383313.P12414870134433664762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088991 n : ℚ) / (A000079 n : ℚ)

end

end A383313.P12414870134433664762

namespace A383313

/-- `A088991(n)/A000079(n)` -/
def P12414870134433664762.Spec : Prop :=
  ∀ n, P12414870134433664762.a n = (A383313 n : ℚ)

end A383313

/-! ## A383313.P2425249366191883482

`A088991(n)/∑[A011782(n)]`
-/

namespace A383313.P2425249366191883482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088991 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A383313.P2425249366191883482

namespace A383313

/-- `A088991(n)/∑[A011782(n)]` -/
def P2425249366191883482.Spec : Prop :=
  ∀ n, P2425249366191883482.a n = (A383313 n : ℚ)

end A383313

/-! ## A383313.P10698373361578831298

`A088991(n)/Δ[A000225(n)]`
-/

namespace A383313.P10698373361578831298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088991 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A383313.P10698373361578831298

namespace A383313

/-- `A088991(n)/Δ[A000225(n)]` -/
def P10698373361578831298.Spec : Prop :=
  ∀ n, P10698373361578831298.a n = (A383313 n : ℚ)

end A383313

/-! ## A383313.P749484504225008376

`A088991(n)/record[A128175(n+1)]`
-/

namespace A383313.P749484504225008376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088991 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A383313.P749484504225008376

namespace A383313

/-- `A088991(n)/record[A128175(n+1)]` -/
def P749484504225008376.Spec : Prop :=
  ∀ n, P749484504225008376.a n = (A383313 n : ℚ)

end A383313

/-! ## A383313.P15768527191114896709

`A088991(n)/A156552(A000040(n+1))`
-/

namespace A383313.P15768527191114896709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088991 n : ℚ) / (A156552 (A000040 (n + 1)).toNat : ℚ)

end

end A383313.P15768527191114896709

namespace A383313

/-- `A088991(n)/A156552(A000040(n+1))` -/
def P15768527191114896709.Spec : Prop :=
  ∀ n, P15768527191114896709.a n = (A383313 n : ℚ)

end A383313

/-!
# A383314: Expansion of e.g.f. exp(-x/2) / (1-4*x)^(1/8).

The programs for A383314, the canonical program `A383314.P10780213256256565122` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383314 has offset 0).

The definition of A383314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383314.P10780213256256565122

`2*(n-1)*(2*a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383314

/-- `2*(n-1)*(2*a(n-1)+a(n-2))` -/
def P10780213256256565122.Spec : Prop :=
  ∀ n, P10780213256256565122.a n = A383314 n

theorem P10780213256256565122.correct : P10780213256256565122.Spec := by
  intro n
  simp only [A383314]

end A383314

/-! ## A383314.P1094652096060291201

`A140472(A360234(n)-A274934(n+1))`
-/

namespace A383314.P1094652096060291201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A360234 n - A274934 (n + 1)).toNat

end

end A383314.P1094652096060291201

namespace A383314

/-- `A140472(A360234(n)-A274934(n+1))` -/
def P1094652096060291201.Spec : Prop :=
  ∀ n, P1094652096060291201.a n = A383314 n

end A383314

/-!
# A383315: Expansion of e.g.f. exp(-x/2) / (1-6*x)^(1/12).

The programs for A383315, the canonical program `A383315.P11747716640725928939` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383315 has offset 0).

The definition of A383315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383315.P11747716640725928939

`3*(n-1)*(2*a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383315

/-- `3*(n-1)*(2*a(n-1)+a(n-2))` -/
def P11747716640725928939.Spec : Prop :=
  ∀ n, P11747716640725928939.a n = A383315 n

theorem P11747716640725928939.correct : P11747716640725928939.Spec := by
  intro n
  simp only [A383315]

end A383315

/-!
# A383316: Expansion of e.g.f. exp(x/2) / (1-4*x)^(1/8).

The programs for A383316, the canonical program `A383316.P491426145677865186` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383316 has offset 0).

The definition of A383316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383316.P491426145677865186

`(4*n-3)*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383316

/-- `(4*n-3)*a(n-1)-2*(n-1)*a(n-2)` -/
def P491426145677865186.Spec : Prop :=
  ∀ n, P491426145677865186.a n = A383316 n

theorem P491426145677865186.correct : P491426145677865186.Spec := by
  intro n
  simp only [A383316]

end A383316

/-!
# A383317: Expansion of e.g.f. exp(x/2) / (1-6*x)^(1/12).

The programs for A383317, the canonical program `A383317.P11340706945957856905` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383317 has offset 0).

The definition of A383317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383317.P11340706945957856905

`(6*n-5)*a(n-1)-3*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383317

/-- `(6*n-5)*a(n-1)-3*(n-1)*a(n-2)` -/
def P11340706945957856905.Spec : Prop :=
  ∀ n, P11340706945957856905.a n = A383317 n

theorem P11340706945957856905.correct : P11340706945957856905.Spec := by
  intro n
  simp only [A383317]

end A383317

/-!
# A383318: Lexicographically earliest sequence of distinct terms such that replacing each term k with prime(k) does not change the succession of digits.

The programs for A383318, there is no canonical definition to state claims against.
-/

/-! ## A383318.P15925041083759693863

`A000720(A383319(n+1))`
-/

namespace A383318.P15925041083759693863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A383319 (n + 1)).toNat

end

end A383318.P15925041083759693863

/-!
# A383319: a(n) = prime(A383318(n)).

The programs for A383319, there is no canonical definition to state claims against.
-/

/-! ## A383319.P1915444816349631224

`A000040(A383318(n+1))`
-/

namespace A383319.P1915444816349631224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A383318 (n + 1)).toNat

end

end A383319.P1915444816349631224

/-! ## A383319.P12542682107245939320

`A008578(A383318(n+1)+1)`
-/

namespace A383319.P12542682107245939320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A383318 (n + 1) + 1).toNat

end

end A383319.P12542682107245939320

/-!
# A383321: a(n) = Fibonacci(A383320(n)).

The programs for A383321, there is no canonical definition to state claims against.
-/

/-! ## A383321.P1582599402194706647

`A000045(A383320(n+1))`
-/

namespace A383321.P1582599402194706647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A383320 (n + 1)).toNat

end

end A383321.P1582599402194706647

/-!
# A383323: Expansion of e.g.f. (1+x)*(exp(x)-1)*(exp(x)-x)*(exp(x)-x^2/2).

The programs for A383323, there is no canonical definition to state claims against.
-/

/-! ## A383323.P5345135445368657448

`A191889(A050531(n))`
-/

namespace A383323.P5345135445368657448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191889 (A050531 n).toNat

end

end A383323.P5345135445368657448

/-! ## A383323.P1932213666405383479

`A383259(A097679(n)+A002865(n))`
-/

namespace A383323.P1932213666405383479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383259 (A097679 n + A002865 n).toNat

end

end A383323.P1932213666405383479

/-!
# A383324: a(n) = round(3^n/5).

The programs for A383324, the canonical program `A383324.P17958135649910231171` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383324 has offset 0).

The definition of A383324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(3^n/5)` (program `A383324.P17958135649910231171`, by `A383324.P17958135649910231171.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383324.P11949629963175088906

`3*a(n-1)-a(n-2)+3*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A383324.P11949629963175088906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  3 * a (n - 1) - a (n - 2) + 3 * a (n - 3)

end

end A383324.P11949629963175088906

namespace A383324

/-- `3*a(n-1)-a(n-2)+3*a(n-3)` -/
def P11949629963175088906.Spec : Prop :=
  ∀ n, P11949629963175088906.a n = A383324 n

end A383324

/-! ## A383324.P17958135649910231171

`round(3^n/5)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383324

/-- `round(3^n/5)` -/
def P17958135649910231171.Spec : Prop :=
  ∀ n, P17958135649910231171.a n = A383324 n

theorem P17958135649910231171.correct : P17958135649910231171.Spec := by
  intro n
  simp only [A383324]

end A383324

/-! ## A383324.P12452198555099211373

`A057077(n)+3*a(n-1)` with `a(0)=0`
-/

namespace A383324.P12452198555099211373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057077 n + 3 * a (n - 1)

end

end A383324.P12452198555099211373

namespace A383324

/-- `A057077(n)+3*a(n-1)` -/
def P12452198555099211373.Spec : Prop :=
  ∀ n, P12452198555099211373.a n = A383324 n

end A383324

/-! ## A383324.P16494814191791951882

`3*(a(n-1)+a(n-3))-a(n-2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A383324.P16494814191791951882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  3 * (a (n - 1) + a (n - 3)) - a (n - 2)

end

end A383324.P16494814191791951882

namespace A383324

/-- `3*(a(n-1)+a(n-3))-a(n-2)` -/
def P16494814191791951882.Spec : Prop :=
  ∀ n, P16494814191791951882.a n = A383324 n

end A383324

/-! ## A383324.P10695081822320922000

`floor((A000035(n)+3^n+1)/5)`
-/

namespace A383324.P10695081822320922000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000035 n + (3 ^ n + 1 : ℤ) : ℚ) / 5⌋

end

end A383324.P10695081822320922000

namespace A383324

/-- `floor((A000035(n)+3^n+1)/5)` -/
def P10695081822320922000.Spec : Prop :=
  ∀ n, P10695081822320922000.a n = A383324 n

end A383324

/-!
# A383325: Numbers not of the form round(3^k/5). Complement of A383324.

The programs for A383325, the canonical program `A383325.P8303941941289924886` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383325 has offset 1).

The definition of A383325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383325.P8303941941289924886

`comp[A383324(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A383325

/-- `comp[A383324(n)]` -/
def P8303941941289924886.Spec : Prop :=
  ∀ n, (P8303941941289924886.a n : ℤ) = A383325 (n + 1)

theorem P8303941941289924886.correct : P8303941941289924886.Spec := by
  intro n
  simp only [A383325, Nat.add_sub_cancel]

end A383325

/-! ## A383325.P4996899912113416032

`comp[Δ[A008651(A133494(n))]]`
-/

namespace A383325.P4996899912113416032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A133494 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383325.P4996899912113416032

namespace A383325

/-- `comp[Δ[A008651(A133494(n))]]` -/
def P4996899912113416032.Spec : Prop :=
  ∀ n, (P4996899912113416032.a n : ℤ) = A383325 (n + 1)

end A383325

/-! ## A383325.P4973963304779927495

`lt[A162247(A111125(n+1)), n]`
-/

namespace A383325.P4973963304779927495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162247 (A111125 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A383325.P4973963304779927495

namespace A383325

/-- `lt[A162247(A111125(n+1)), n]` -/
def P4973963304779927495.Spec : Prop :=
  ∀ n, (P4973963304779927495.a n : ℤ) = A383325 (n + 1)

end A383325

/-! ## A383325.P13353780666075883512

`lt[A281579(A001844(n)), A001462(2*n+1)]`
-/

namespace A383325.P13353780666075883512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281579 (A001844 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383325.P13353780666075883512

namespace A383325

/-- `lt[A281579(A001844(n)), A001462(2*n+1)]` -/
def P13353780666075883512.Spec : Prop :=
  ∀ n, (P13353780666075883512.a n : ℤ) = A383325 (n + 1)

end A383325

/-! ## A383325.P12531908665950322655

`lt[A188635(A155891(n+1)), A375398(n+1)]`
-/

namespace A383325.P12531908665950322655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188635 (A155891 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375398 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383325.P12531908665950322655

namespace A383325

/-- `lt[A188635(A155891(n+1)), A375398(n+1)]` -/
def P12531908665950322655.Spec : Prop :=
  ∀ n, (P12531908665950322655.a n : ℤ) = A383325 (n + 1)

end A383325

/-! ## A383325.P9189868582920446977

`comp[∑[A349465(A329356(n+1))]]`
-/

namespace A383325.P9189868582920446977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349465 (A329356 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383325.P9189868582920446977

namespace A383325

/-- `comp[∑[A349465(A329356(n+1))]]` -/
def P9189868582920446977.Spec : Prop :=
  ∀ n, (P9189868582920446977.a n : ℤ) = A383325 (n + 1)

end A383325

/-!
# A383326: a(n) = Sum_{k=0..n} binomial(3*n+1,k) * binomial(3*n-k,n-k).

The programs for A383326, there is no canonical definition to state claims against.
-/

/-! ## A383326.P17001927854496053823

`A193816(A062725(n))`
-/

namespace A383326.P17001927854496053823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193816 (A062725 n).toNat

end

end A383326.P17001927854496053823

/-! ## A383326.P4671679266551373886

`A193817(A062728(n))`
-/

namespace A383326.P4671679266551373886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193817 (A062728 n).toNat

end

end A383326.P4671679266551373886

/-! ## A383326.P12308953898691445382

`A119258(A051682(n+1))`
-/

namespace A383326.P12308953898691445382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A051682 (n + 1)).toNat

end

end A383326.P12308953898691445382

/-! ## A383326.P3742344291353472988

`A112857(A062708(n+1))`
-/

namespace A383326.P3742344291353472988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 (A062708 (n + 1)).toNat

end

end A383326.P3742344291353472988

/-! ## A383326.P8405353040970608338

`A119258(A081271(n)-2*n)`
-/

namespace A383326.P8405353040970608338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A081271 n - (2 * n : ℤ)).toNat

end

end A383326.P8405353040970608338

/-!
# A383327: a(n) is the number of occurrences of n in A049802.

The programs for A383327, there is no canonical definition to state claims against.
-/

/-! ## A383327.P9569823143540086972

`A106490(A256077(2*(n+2))-n)`
-/

namespace A383327.P9569823143540086972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106490 (A256077 (2 * (n + 2)) - (n : ℤ)).toNat

end

end A383327.P9569823143540086972

/-!
# A383328: Numbers that have the same set of digits as the sum of the squares of their digits.

The programs for A383328, there is no canonical definition to state claims against.
-/

/-! ## A383328.P15924020582321947773

`eq[A086066(A003132(n)), A086066(n)]`
-/

namespace A383328.P15924020582321947773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (A003132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383328.P15924020582321947773

/-!
# A383329: Number of multiplications required to compute x^n by Knuth's power tree method.

The programs for A383329, there is no canonical definition to state claims against.
-/

/-! ## A383329.P2726472825123621489

`a(A122352(n+1)-1)+1` with `a(0)=0`
-/

namespace A383329.P2726472825123621489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A122352 (n + 1) - 1).toNat + 1

end

end A383329.P2726472825123621489

/-!
# A383331: Number of pairs of nonnegative integers, not both equal to 0, with a shortest vectorial addition chain of length n.

The programs for A383331, there is no canonical definition to state claims against.
-/

/-! ## A383331.P17131706089728477382

`A383333(∑[n+1]+2)`
-/

namespace A383331.P17131706089728477382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383333 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A383331.P17131706089728477382

/-! ## A383331.P9020283918705834892

`A189912(n)+A000196(A359711(n))`
-/

namespace A383331.P9020283918705834892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189912 n + A000196 (A359711 n).toNat

end

end A383331.P9020283918705834892

/-! ## A383331.P1083352068194142259

`A218481(n)+A069010(A339065(n))`
-/

namespace A383331.P1083352068194142259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218481 n + A069010 (A339065 n).toNat

end

end A383331.P1083352068194142259

/-!
# A383332: Smallest positive weight of a pair of nonnegative integers with a shortest vectorial addition chain of length n.

The programs for A383332, there is no canonical definition to state claims against.
-/

/-! ## A383332.P6959406803880534061

`A383334(∑[n+1]+2)`
-/

namespace A383332.P6959406803880534061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383334 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A383332.P6959406803880534061

/-! ## A383332.P11021671299738409650

`A018261(n+1)+Δ[A185341(n+1)]`
-/

namespace A383332.P11021671299738409650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018261 (n + 1) + (f1 (n + 1) - f1 n)

end

end A383332.P11021671299738409650

/-! ## A383332.P4597321208687518586

`A216503(A000051(n))+A166486(n)`
-/

namespace A383332.P4597321208687518586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216503 (A000051 n).toNat + A166486 n

end

end A383332.P4597321208687518586

/-! ## A383332.P7050044406566041223

`A327421(n+1)+A249223(A007718(n))`
-/

namespace A383332.P7050044406566041223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327421 (n + 1) + A249223 (A007718 n).toNat

end

end A383332.P7050044406566041223

/-! ## A383332.P18331061183453385471

`A327421(n+1)+A071029(A347435(n))`
-/

namespace A383332.P18331061183453385471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327421 (n + 1) + A071029 (A347435 n).toNat

end

end A383332.P18331061183453385471

/-!
# A383334: Square array read by antidiagonals: T(n,k) is the smallest positive weight of an n-tuple of nonnegative integers with a shortest vectorial addition chain of length k; n >= 1, k >= 0.

The programs for A383334, there is no canonical definition to state claims against.
-/

/-! ## A383334.P2524272512608714933

`A137512(A169616(n+1))`
-/

namespace A383334.P2524272512608714933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137512 (A169616 (n + 1)).toNat

end

end A383334.P2524272512608714933

/-! ## A383334.P3727338086573798502

`A283297(A169659(n+1))`
-/

namespace A383334.P3727338086573798502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283297 (A169659 (n + 1)).toNat

end

end A383334.P3727338086573798502

/-! ## A383334.P6985690597325558645

`A336736(A043569(n+1))`
-/

namespace A383334.P6985690597325558645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336736 (A043569 (n + 1)).toNat

end

end A383334.P6985690597325558645

/-! ## A383334.P1555618785103285117

`A336736(A043735(n+1))`
-/

namespace A383334.P1555618785103285117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336736 (A043735 (n + 1)).toNat

end

end A383334.P1555618785103285117

/-! ## A383334.P13926263369867283552

`A336736(A043741(n+1))`
-/

namespace A383334.P13926263369867283552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336736 (A043741 (n + 1)).toNat

end

end A383334.P13926263369867283552

/-!
# A383337: Number of integers with a shortest addition-multiplication-exponentiation chain of length n.

The programs for A383337, there is no canonical definition to state claims against.
-/

/-! ## A383337.P15335755860293266764

`floor(A006366(n)/3)+1`
-/

namespace A383337.P15335755860293266764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006366 n : ℚ) / 3⌋ + 1

end

end A383337.P15335755860293266764

/-!
# A383338: Square array read by antidiagonals, where the n-th row is the coordination sequence of a certain tiling with an n-dimensional analog of the X pentomino (or Greek cross), n >= 1.

The programs for A383338, there is no canonical definition to state claims against.
-/

/-! ## A383338.P1471924990829120770

`A052273(A337412(n+1))`
-/

namespace A383338.P1471924990829120770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052273 (A337412 (n + 1)).toNat

end

end A383338.P1471924990829120770

/-! ## A383338.P11871945917146244915

`A091987(A348576(n+1))`
-/

namespace A383338.P11871945917146244915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091987 (A348576 (n + 1)).toNat

end

end A383338.P11871945917146244915

/-! ## A383338.P16353794060505700191

`A346703(A193734(n+1))`
-/

namespace A383338.P16353794060505700191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346703 (A193734 (n + 1)).toNat

end

end A383338.P16353794060505700191

/-! ## A383338.P9092530249314861568

`A193335(A392337(n+1))`
-/

namespace A383338.P9092530249314861568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193335 (A392337 (n + 1)).toNat

end

end A383338.P9092530249314861568

/-! ## A383338.P10053992708520690841

`A370386(A256549(n+1))`
-/

namespace A383338.P10053992708520690841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370386 (A256549 (n + 1)).toNat

end

end A383338.P10053992708520690841

/-!
# A383339: a(1)=1; thereafter if a(n-1) is a first occurrence, then a(n) is the number of first occurrences in the sequence thus far. Otherwise; a(n) is the number of terms that are the same distance away from their previous last occurrence as a(n-1).

The programs for A383339, there is no canonical definition to state claims against.
-/

/-! ## A383339.P18239674611671912762

`A001222(A355357(n)+A040817(3*n+4))`
-/

namespace A383339.P18239674611671912762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A355357 n + A040817 (3 * n + 4)).toNat

end

end A383339.P18239674611671912762

/-!
# A383340: a(1)=1; thereafter if a(n-1) is a first occurrence, then a(n) is the number of first occurrences in the sequence thus far. Otherwise, a(n) is the number of terms that are the same number of distinct values away from their previous last occurrence as a(n-1).

The programs for A383340, there is no canonical definition to state claims against.
-/

/-! ## A383340.P13488618453757220771

`gcd(A124776(n), A124792(A032020(n)))`
-/

namespace A383340.P13488618453757220771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124776 n) (A124792 (A032020 n).toNat)

end

end A383340.P13488618453757220771

/-! ## A383340.P12053999554728815821

`A353745(A001405(n+3))^A353745(n+1)`
-/

namespace A383340.P12053999554728815821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353745 (A001405 (n + 3)).toNat : ℚ) ^ (A353745 (n + 1) : ℤ)

end

end A383340.P12053999554728815821

/-! ## A383340.P1067557037825364496

`A001222(A106575(n+1)*A202703(n+1)+3)`
-/

namespace A383340.P1067557037825364496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A106575 (n + 1) * A202703 (n + 1) + 3).toNat

end

end A383340.P1067557037825364496

/-! ## A383340.P8533376928492711566

`A001221(A218878(n+1)+A001792(n))`
-/

namespace A383340.P8533376928492711566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A218878 (n + 1) + A001792 n).toNat

end

end A383340.P8533376928492711566

/-! ## A383340.P9688803777197570602

`A212180(A106985(n+1)*A320166(n))`
-/

namespace A383340.P9688803777197570602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212180 (A106985 (n + 1) * A320166 n).toNat

end

end A383340.P9688803777197570602

/-!
# A383341: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) = n! * Sum_{j=0..n} (-k)^(n-j) * binomial(j+k,j)/(n-j)!.

The programs for A383341, there is no canonical definition to state claims against.
-/

/-! ## A383341.P8950505002117750658

`A338497(A156953(n))`
-/

namespace A383341.P8950505002117750658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338497 (A156953 n).toNat

end

end A383341.P8950505002117750658

/-! ## A383341.P10901937497944623285

`A156953(n)%A317415(A001897(n))`
-/

namespace A383341.P10901937497944623285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156953 n) (A317415 (A001897 n).toNat)

end

end A383341.P10901937497944623285

/-! ## A383341.P16498704267463384768

`A111528(n)-A000089(A217135(n+1))`
-/

namespace A383341.P16498704267463384768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 n - A000089 (A217135 (n + 1)).toNat

end

end A383341.P16498704267463384768

/-! ## A383341.P15824601793371970062

`A057889(A111528(n)^A124010(n+3))`
-/

namespace A383341.P15824601793371970062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (SequenceMachineLib.roundAway ((A111528 n : ℚ) ^ (A124010 (n + 3) : ℤ))).toNat

end

end A383341.P15824601793371970062

/-! ## A383341.P9560590627782319279

`A333692(A111528(n)%A093036(2*n+5))`
-/

namespace A383341.P9560590627782319279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333692 (Int.tmod (A111528 n) (A093036 (2 * n + 5))).toNat

end

end A383341.P9560590627782319279

/-!
# A383343: a(n) = 3^n - 3*binomial(n,3) - 3*binomial(n,2) - 2*n - 1.

The programs for A383343, the canonical program `A383343.P7916194274906324814` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383343 has offset 0).

The definition of A383343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-3*C(n, 3)-3*C(n, 2)-2*n-1` (program `A383343.P7916194274906324814`, by `A383343.P7916194274906324814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383343.P7916194274906324814

`3^n-3*C(n, 3)-3*C(n, 2)-2*n-1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383343

/-- `3^n-3*C(n, 3)-3*C(n, 2)-2*n-1` -/
def P7916194274906324814.Spec : Prop :=
  ∀ n, P7916194274906324814.a n = A383343 n

theorem P7916194274906324814.correct : P7916194274906324814.Spec := by
  intro n
  simp only [A383343]

end A383343

/-! ## A383343.P13916663164645583881

`A345954(n)+A338232(n)`
-/

namespace A383343.P13916663164645583881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345954 n + A338232 n

end

end A383343.P13916663164645583881

namespace A383343

/-- `A345954(n)+A338232(n)` -/
def P13916663164645583881.Spec : Prop :=
  ∀ n, P13916663164645583881.a n = A383343 n

end A383343

/-! ## A383343.P12541205631813101285

`A104743(n)-A006001(n)`
-/

namespace A383343.P12541205631813101285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104743 n - A006001 n

end

end A383343.P12541205631813101285

namespace A383343

/-- `A104743(n)-A006001(n)` -/
def P12541205631813101285.Spec : Prop :=
  ∀ n, P12541205631813101285.a n = A383343 n

end A383343

/-! ## A383343.P95351164320400803

`A061981(n)-A135503(n)`
-/

namespace A383343.P95351164320400803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061981 n - A135503 n

end

end A383343.P95351164320400803

namespace A383343

/-- `A061981(n)-A135503(n)` -/
def P95351164320400803.Spec : Prop :=
  ∀ n, P95351164320400803.a n = A383343 n

end A383343

/-! ## A383343.P10505707839953333177

`A024025(n)-A189890(n)`
-/

namespace A383343.P10505707839953333177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024025 n - A189890 n

end

end A383343.P10505707839953333177

namespace A383343

/-- `A024025(n)-A189890(n)` -/
def P10505707839953333177.Spec : Prop :=
  ∀ n, P10505707839953333177.a n = A383343 n

end A383343

/-! ## A383343.P12695196455975690526

`A024023(n)-A229183(n)`
-/

namespace A383343.P12695196455975690526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n - A229183 n

end

end A383343.P12695196455975690526

namespace A383343

/-- `A024023(n)-A229183(n)` -/
def P12695196455975690526.Spec : Prop :=
  ∀ n, P12695196455975690526.a n = A383343 n

end A383343

/-! ## A383343.P9455088197722644466

`A251701(n)-A006000(n)`
-/

namespace A383343.P9455088197722644466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251701 n - A006000 n

end

end A383343.P9455088197722644466

namespace A383343

/-- `A251701(n)-A006000(n)` -/
def P9455088197722644466.Spec : Prop :=
  ∀ n, P9455088197722644466.a n = A383343 n

end A383343

/-! ## A383343.P8734225551948636126

`A186948(n)-A158842(n)`
-/

namespace A383343.P8734225551948636126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186948 n - A158842 n

end

end A383343.P8734225551948636126

namespace A383343

/-- `A186948(n)-A158842(n)` -/
def P8734225551948636126.Spec : Prop :=
  ∀ n, P8734225551948636126.a n = A383343 n

end A383343

/-! ## A383343.P851337279908819250

`Δ[A385726(n)/2]`
-/

namespace A383343.P851337279908819250
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385726 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383343.P851337279908819250

namespace A383343

/-- `Δ[A385726(n)/2]` -/
def P851337279908819250.Spec : Prop :=
  ∀ n, P851337279908819250.a n = (A383343 n : ℚ)

end A383343

/-!
# A383344: Expansion of e.g.f. exp(-4*x) / (1-x)^4.

The programs for A383344, the canonical program `A383344.P18332519603776966522` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383344 has offset 0).

The definition of A383344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383344.P18332519603776966522

`(n-1)*(a(n-1)+4*a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383344

/-- `(n-1)*(a(n-1)+4*a(n-2))` -/
def P18332519603776966522.Spec : Prop :=
  ∀ n, P18332519603776966522.a n = A383344 n

theorem P18332519603776966522.correct : P18332519603776966522.Spec := by
  intro n
  simp only [A383344]

end A383344

/-! ## A383344.P14826201957480149074

`A295181(A000217(n+4)+n)`
-/

namespace A383344.P14826201957480149074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295181 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A383344.P14826201957480149074

namespace A383344

/-- `A295181(A000217(n+4)+n)` -/
def P14826201957480149074.Spec : Prop :=
  ∀ n, P14826201957480149074.a n = A383344 n

end A383344

/-! ## A383344.P10966531166440587968

`A295181(A229301(n+1)+A000096(n+3))`
-/

namespace A383344.P10966531166440587968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295181 (A229301 (n + 1) + A000096 (n + 3)).toNat

end

end A383344.P10966531166440587968

namespace A383344

/-- `A295181(A229301(n+1)+A000096(n+3))` -/
def P10966531166440587968.Spec : Prop :=
  ∀ n, P10966531166440587968.a n = A383344 n

end A383344

/-!
# A383345: Number of uniquely solveable n X 2 nonograms (hanjie).

The programs for A383345, there is no canonical definition to state claims against.
-/

/-! ## A383345.P18373691331479438082

`A384764(∑[n+3])`
-/

namespace A383345.P18373691331479438082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384764 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383345.P18373691331479438082

/-! ## A383345.P14189578448112107319

`A385862(∑[n+3])`
-/

namespace A383345.P14189578448112107319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385862 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383345.P14189578448112107319

/-!
# A383346: Representation of n in rational base 3/2.

The programs for A383346, there is no canonical definition to state claims against.
-/

/-! ## A383346.P10717179830760343292

`A024629(2*n)`
-/

namespace A383346.P10717179830760343292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (2 * n)

end

end A383346.P10717179830760343292

/-! ## A383346.P8728769080982076046

`record[A024629(A014681(n))]`
-/

namespace A383346.P8728769080982076046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383346.P8728769080982076046

/-! ## A383346.P3417498219206294067

`A007089(A265316(n+1))`
-/

namespace A383346.P3417498219206294067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A265316 (n + 1)).toNat

end

end A383346.P3417498219206294067

/-! ## A383346.P6062153746449912747

`A007089(A261691(2*n))`
-/

namespace A383346.P6062153746449912747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A261691 (2 * n)).toNat

end

end A383346.P6062153746449912747

/-! ## A383346.P327719621403873604

`record[A024629(A065423(n+1))]`
-/

namespace A383346.P327719621403873604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A065423 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383346.P327719621403873604

/-!
# A383347: Numbers that have the same set of digits as the sum of the cubes of their digits.

The programs for A383347, there is no canonical definition to state claims against.
-/

/-! ## A383347.P3689890086002386495

`eq[A086066(A055012(n)), A086066(n)]`
-/

namespace A383347.P3689890086002386495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (A055012 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383347.P3689890086002386495

/-! ## A383347.P14449480524245852582

`eq[A004186(n), A004186(A055012(n))]`
-/

namespace A383347.P14449480524245852582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383347.P14449480524245852582

/-! ## A383347.P4433327152115959565

`eq[A047842(n), A047842(A055012(n))]`
-/

namespace A383347.P4433327152115959565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383347.P4433327152115959565

/-! ## A383347.P15579100384243107725

`eq[A348783(A055012(n)), A348783(n)]`
-/

namespace A383347.P15579100384243107725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 (A055012 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383347.P15579100384243107725

/-!
# A383352: Triangle read by rows: T(n, k) is the number of partitions of a 2-colored set of n objects into at most k parts where 0 <= k <= n, and each part is one of 2 kinds.

The programs for A383352, there is no canonical definition to state claims against.
-/

/-! ## A383352.P11567094772690066567

`A288529(A327143(n+1))*A327117(n)`
-/

namespace A383352.P11567094772690066567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288529 (A327143 (n + 1)).toNat * A327117 n

end

end A383352.P11567094772690066567

/-!
# A383353: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where n 2-colored objects are distributed into k containers of two kinds. Containers may be left empty.

The programs for A383353, there is no canonical definition to state claims against.
-/

/-! ## A383353.P3030384558116378298

`A007967(A187850(n+1))`
-/

namespace A383353.P3030384558116378298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (A187850 (n + 1)).toNat

end

end A383353.P3030384558116378298

/-!
# A383354: Squares of plane partition numbers.

The programs for A383354, there is no canonical definition to state claims against.
-/

/-! ## A383354.P2671715050190345816

`A000219(n)²`
-/

namespace A383354.P2671715050190345816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n ^ 2

end

end A383354.P2671715050190345816

/-! ## A383354.P13591422235907970335

`A255961(∑[n+1]+n)²`
-/

namespace A383354.P13591422235907970335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A383354.P13591422235907970335

/-! ## A383354.P11969293402942740364

`A293551(∑[n+3])²`
-/

namespace A383354.P11969293402942740364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A383354.P11969293402942740364

/-! ## A383354.P4263766023589422922

`A242641(2*(n+1)²)²`
-/

namespace A383354.P4263766023589422922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (2 * (n + 1) ^ 2) ^ 2

end

end A383354.P4263766023589422922

/-! ## A383354.P4198696536935706452

`A144048(∑[n+1]+n)²`
-/

namespace A383354.P4198696536935706452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A383354.P4198696536935706452

/-! ## A383354.P13464204984250101727

`A294582(∑[n]+n)²`
-/

namespace A383354.P13464204984250101727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294582 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A383354.P13464204984250101727

/-! ## A383354.P16807643161920229523

`A306100(∑[n+1]+n)²`
-/

namespace A383354.P16807643161920229523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A383354.P16807643161920229523

/-!
# A383355: Expansion of 1/sqrt( (1-x) * (1-x-4*x^4) ).

The programs for A383355, there is no canonical definition to state claims against.
-/

/-! ## A383355.P5561059385329446989

`∑[A360310(n)]`
-/

namespace A383355.P5561059385329446989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383355.P5561059385329446989

/-! ## A383355.P5670819974186216462

`A101435(A001285(2*(n+2))+A000045(n))`
-/

namespace A383355.P5670819974186216462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (A001285 (2 * (n + 2)) + A000045 n).toNat

end

end A383355.P5670819974186216462

/-! ## A383355.P15758851401514526797

`A235121(A098575(n))`
-/

namespace A383355.P15758851401514526797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235121 (A098575 n).toNat

end

end A383355.P15758851401514526797

/-! ## A383355.P2974135114291005132

`A057561(A318774(n))`
-/

namespace A383355.P2974135114291005132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (A318774 n).toNat

end

end A383355.P2974135114291005132

/-! ## A383355.P5075114711006159550

`A178832(A324741(n))`
-/

namespace A383355.P5075114711006159550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (A324741 n).toNat

end

end A383355.P5075114711006159550

/-!
# A383359: Integers m such that m^4 is the sum of squares of two or more consecutive positive integers.

The programs for A383359, there is no canonical definition to state claims against.
-/

/-! ## A383359.P101705166821825819

`filter[A383653(n+1), A011701(#)]`
-/

namespace A383359.P101705166821825819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011701 (f1 j).toNat = 1) n)

end

end A383359.P101705166821825819

/-! ## A383359.P2598980553799067670

`A383653(n+4)%A363695(A145630(n+1))`
-/

namespace A383359.P2598980553799067670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383653 (n + 4)) (A363695 (A145630 (n + 1)).toNat)

end

end A383359.P2598980553799067670

/-!
# A383360: Numbers k that have an i-th smallest divisor d_i(k) for which i*d_i(k) = k.

The programs for A383360, there is no canonical definition to state claims against.
-/

/-! ## A383360.P10930708627200120225

`A383362(n+1)*A383361(n+1)`
-/

namespace A383360.P10930708627200120225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383362 (n + 1) * A383361 (n + 1)

end

end A383360.P10930708627200120225

/-!
# A383361: a(n) is the i-th smallest divisor d_i of A383360(n) for which i*d_i = A383360(n).

The programs for A383361, there is no canonical definition to state claims against.
-/

/-! ## A383361.P2582856297360107188

`A383360(n+1)/A383362(n+1)`
-/

namespace A383361.P2582856297360107188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383360 (n + 1) : ℚ) / (A383362 (n + 1) : ℚ)

end

end A383361.P2582856297360107188

/-!
# A383362: a(n) is the number i for which i*d_i = A383360(n), where d_i is i-th smallest divisor d_i of A383360(n).

The programs for A383362, there is no canonical definition to state claims against.
-/

/-! ## A383362.P12804723136047639804

`A383360(n+1)/A383361(n+1)`
-/

namespace A383362.P12804723136047639804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383360 (n + 1) : ℚ) / (A383361 (n + 1) : ℚ)

end

end A383362.P12804723136047639804

/-!
# A383365: Numbers k with a record number of proper divisors, where all of them have binary weights that are different from the binary weight of k.

The programs for A383365, there is no canonical definition to state claims against.
-/

/-! ## A383365.P10877168520208284203

`A383364(lt[A104879(n), A019320(n+4)])`
-/

namespace A383365.P10877168520208284203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383364 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383365.P10877168520208284203

/-!
# A383367: a(n) is the least integer k such that A383359(n)^4 can be expressed as a sum of squares of k consecutive integers.

The programs for A383367, there is no canonical definition to state claims against.
-/

/-! ## A383367.P3204372748220314214

`A383654(A343570(n+1))`
-/

namespace A383367.P3204372748220314214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383654 (A343570 (n + 1)).toNat

end

end A383367.P3204372748220314214

/-!
# A383368: Number of intercalates in pine Latin squares of order 2n.

The programs for A383368, there is no canonical definition to state claims against.
-/

/-! ## A383368.P3218995696607272209

`(n+1)²*or(1, n+1)`
-/

namespace A383368.P3218995696607272209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * Nat.lor 1 (n + 1)

end

end A383368.P3218995696607272209

/-! ## A383368.P5173835915949661530

`or(1, n+1)/(1/(n+1))²`
-/

namespace A383368.P5173835915949661530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) : ℚ) / (1 / (n + 1 : ℚ)) ^ 2

end

end A383368.P5173835915949661530

/-! ## A383368.P6281381598771314850

`or(1, n+1)*∑[2*n+1]`
-/

namespace A383368.P6281381598771314850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383368.P6281381598771314850

/-! ## A383368.P7903396348887584400

`(n%2+1+n)*(n+1)²`
-/

namespace A383368.P7903396348887584400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2 + 1 + n) * (n + 1) ^ 2

end

end A383368.P7903396348887584400

/-! ## A383368.P916694540306552067

`(gcd(2, n+1)+n)*(n+1)²`
-/

namespace A383368.P916694540306552067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) + n) * (n + 1) ^ 2

end

end A383368.P916694540306552067

/-!
# A383370: Number of partial orders on {1,2,...,n} that are contained in the usual linear order, whose dual is given by the relabelling k -> n+1-k.

The programs for A383370, there is no canonical definition to state claims against.
-/

/-! ## A383370.P4997653166501257376

`A351876(A003415(n)+A003322(n+1))`
-/

namespace A383370.P4997653166501257376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351876 (A003415 n + A003322 (n + 1)).toNat

end

end A383370.P4997653166501257376

/-!
# A383371: Primes having only {1, 2, 4, 8} as digits.

The programs for A383371, the canonical program `A383371.P1134250893838150847` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383371 has offset 1).

The definition of A383371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383371.P13617025601707329685

`∩[A028846(n+1), A066593(n+1)]`
-/

namespace A383371.P13617025601707329685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P13617025601707329685

namespace A383371

/-- `∩[A028846(n+1), A066593(n+1)]` -/
def P13617025601707329685.Spec : Prop :=
  ∀ n, (P13617025601707329685.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P13572758557951670999

`∩[A028846(n+1), A173580(n+1)]`
-/

namespace A383371.P13572758557951670999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P13572758557951670999

namespace A383371

/-- `∩[A028846(n+1), A173580(n+1)]` -/
def P13572758557951670999.Spec : Prop :=
  ∀ n, (P13572758557951670999.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P1565198372305174633

`∩[A028846(n+1), A152312(n+1)]`
-/

namespace A383371.P1565198372305174633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P1565198372305174633

namespace A383371

/-- `∩[A028846(n+1), A152312(n+1)]` -/
def P1565198372305174633.Spec : Prop :=
  ∀ n, (P1565198372305174633.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P14535941016116992781

`∩[A173580(n+1), A385324(n+1)]`
-/

namespace A383371.P14535941016116992781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P14535941016116992781

namespace A383371

/-- `∩[A173580(n+1), A385324(n+1)]` -/
def P14535941016116992781.Spec : Prop :=
  ∀ n, (P14535941016116992781.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P1134250893838150847

`p?[A028846(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A383371

/-- `p?[A028846(n+1)]` -/
def P1134250893838150847.Spec : Prop :=
  ∀ n, P1134250893838150847.a n = A383371 (n + 1)

theorem P1134250893838150847.correct : P1134250893838150847.Spec := by
  intro n
  simp only [A383371, Nat.add_sub_cancel]

end A383371

/-! ## A383371.P12328234693380054708

`∩[A028846(n+1), A386342(n+1)]`
-/

namespace A383371.P12328234693380054708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P12328234693380054708

namespace A383371

/-- `∩[A028846(n+1), A386342(n+1)]` -/
def P12328234693380054708.Spec : Prop :=
  ∀ n, (P12328234693380054708.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P9040179287779508149

`∩[A028846(n+1), A386344(n+1)]`
-/

namespace A383371.P9040179287779508149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P9040179287779508149

namespace A383371

/-- `∩[A028846(n+1), A386344(n+1)]` -/
def P9040179287779508149.Spec : Prop :=
  ∀ n, (P9040179287779508149.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P17963534028587308647

`∩[A028846(n+1), A386358(n+1)]`
-/

namespace A383371.P17963534028587308647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P17963534028587308647

namespace A383371

/-- `∩[A028846(n+1), A386358(n+1)]` -/
def P17963534028587308647.Spec : Prop :=
  ∀ n, (P17963534028587308647.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P16467174207865547571

`∩[A028846(n+1), A380906(n+1)]`
-/

namespace A383371.P16467174207865547571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P16467174207865547571

namespace A383371

/-- `∩[A028846(n+1), A380906(n+1)]` -/
def P16467174207865547571.Spec : Prop :=
  ∀ n, (P16467174207865547571.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P14299554462552650550

`∩[A028846(n+1), A386341(n+1)]`
-/

namespace A383371.P14299554462552650550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P14299554462552650550

namespace A383371

/-- `∩[A028846(n+1), A386341(n+1)]` -/
def P14299554462552650550.Spec : Prop :=
  ∀ n, (P14299554462552650550.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P8677351688821867095

`∩[A028846(n+1), A386321(n+1)]`
-/

namespace A383371.P8677351688821867095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P8677351688821867095

namespace A383371

/-- `∩[A028846(n+1), A386321(n+1)]` -/
def P8677351688821867095.Spec : Prop :=
  ∀ n, (P8677351688821867095.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P2128252898275970654

`∩[A173580(n+1), A386321(n+1)]`
-/

namespace A383371.P2128252898275970654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P2128252898275970654

namespace A383371

/-- `∩[A173580(n+1), A386321(n+1)]` -/
def P2128252898275970654.Spec : Prop :=
  ∀ n, (P2128252898275970654.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P348364901202132970

`∩[A028846(n+1), A386325(n+1)]`
-/

namespace A383371.P348364901202132970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P348364901202132970

namespace A383371

/-- `∩[A028846(n+1), A386325(n+1)]` -/
def P348364901202132970.Spec : Prop :=
  ∀ n, (P348364901202132970.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P13245518969398756

`∩[A028846(n+1), A386327(n+1)]`
-/

namespace A383371.P13245518969398756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P13245518969398756

namespace A383371

/-- `∩[A028846(n+1), A386327(n+1)]` -/
def P13245518969398756.Spec : Prop :=
  ∀ n, (P13245518969398756.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P14199501109291526286

`∩[A028846(n+1), A386351(n+1)]`
-/

namespace A383371.P14199501109291526286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P14199501109291526286

namespace A383371

/-- `∩[A028846(n+1), A386351(n+1)]` -/
def P14199501109291526286.Spec : Prop :=
  ∀ n, (P14199501109291526286.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P6620140649797192290

`∩[A028846(n+1), A386353(n+1)]`
-/

namespace A383371.P6620140649797192290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P6620140649797192290

namespace A383371

/-- `∩[A028846(n+1), A386353(n+1)]` -/
def P6620140649797192290.Spec : Prop :=
  ∀ n, (P6620140649797192290.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P5750759845775572050

`∩[A028846(n+1), A386354(n+1)]`
-/

namespace A383371.P5750759845775572050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P5750759845775572050

namespace A383371

/-- `∩[A028846(n+1), A386354(n+1)]` -/
def P5750759845775572050.Spec : Prop :=
  ∀ n, (P5750759845775572050.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P2465875967271101103

`∩[A028846(n+1), A386356(n+1)]`
-/

namespace A383371.P2465875967271101103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P2465875967271101103

namespace A383371

/-- `∩[A028846(n+1), A386356(n+1)]` -/
def P2465875967271101103.Spec : Prop :=
  ∀ n, (P2465875967271101103.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P8760420906672717407

`∩[A173580(n+1), A386325(n+1)]`
-/

namespace A383371.P8760420906672717407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P8760420906672717407

namespace A383371

/-- `∩[A173580(n+1), A386325(n+1)]` -/
def P8760420906672717407.Spec : Prop :=
  ∀ n, (P8760420906672717407.a n : ℤ) = A383371 (n + 1)

end A383371

/-! ## A383371.P14675199607664768552

`∩[A028846(n+1), A386350(n+1)]`
-/

namespace A383371.P14675199607664768552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383371.P14675199607664768552

namespace A383371

/-- `∩[A028846(n+1), A386350(n+1)]` -/
def P14675199607664768552.Spec : Prop :=
  ∀ n, (P14675199607664768552.a n : ℤ) = A383371 (n + 1)

end A383371

/-!
# A383373: G.f. A(x) satisfies A(x/A(x)) = sqrt( A(x)/(1-x) ).

The programs for A383373, there is no canonical definition to state claims against.
-/

/-! ## A383373.P6002777188842487056

`A060384(A323833(n)+A089461(n))`
-/

namespace A383373.P6002777188842487056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A323833 n + A089461 n).toNat

end

end A383373.P6002777188842487056

/-! ## A383373.P731963708855608101

`A060384(A089461(n)-A025157(n))`
-/

namespace A383373.P731963708855608101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A089461 n - A025157 n).toNat

end

end A383373.P731963708855608101

/-!
# A383374: G.f. A(x) satisfies A(x*A(x)) = A(x)^2/(1 + x*A(x)^3).

The programs for A383374, there is no canonical definition to state claims against.
-/

/-! ## A383374.P16147522762891551444

`A052382(A005411(n)-A083893(n+2))`
-/

namespace A383374.P16147522762891551444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (A005411 n - A083893 (n + 2)).toNat

end

end A383374.P16147522762891551444

/-!
# A383375: G.f. A(x) satisfies [x^n] 1/A(x)^(n+1) = [x^n] 1/A(x)^(2*n+2) for n > 1, with A'(0) = 1.

The programs for A383375, there is no canonical definition to state claims against.
-/

/-! ## A383375.P14153845187147099778

`A375456(n+1)+A178930(A005034(n))`
-/

namespace A383375.P14153845187147099778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375456 (n + 1) + A178930 (A005034 n).toNat

end

end A383375.P14153845187147099778

/-! ## A383375.P1568468786976761372

`A375456(n+1)+A355524(A104392(n+3))`
-/

namespace A383375.P1568468786976761372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375456 (n + 1) + A355524 (A104392 (n + 3)).toNat

end

end A383375.P1568468786976761372

/-!
# A383378: Expansion of e.g.f. exp(-3*x) / (1-x)^4.

The programs for A383378, the canonical program `A383378.P13460842010073919718` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383378 has offset 0).

The definition of A383378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383378.P13460842010073919718

`n*a(n-1)+3*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383378

/-- `n*a(n-1)+3*(n-1)*a(n-2)` -/
def P13460842010073919718.Spec : Prop :=
  ∀ n, P13460842010073919718.a n = A383378 n

theorem P13460842010073919718.correct : P13460842010073919718.Spec := by
  intro n
  simp only [A383378]

end A383378

/-! ## A383378.P11959536242584857854

`A137775(n+2)/(3*(n+1))`
-/

namespace A383378.P11959536242584857854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137775 (n + 2) : ℚ) / (3 * (n + 1) : ℚ)

end

end A383378.P11959536242584857854

namespace A383378

/-- `A137775(n+2)/(3*(n+1))` -/
def P11959536242584857854.Spec : Prop :=
  ∀ n, P11959536242584857854.a n = (A383378 n : ℚ)

end A383378

/-! ## A383378.P13191693773156139431

`A383341(eq[2, A129713(n)])`
-/

namespace A383378.P13191693773156139431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A383378.P13191693773156139431

namespace A383378

/-- `A383341(eq[2, A129713(n)])` -/
def P13191693773156139431.Spec : Prop :=
  ∀ n, P13191693773156139431.a n = A383378 n

end A383378

/-! ## A383378.P2814868064246705614

`A383341(eq[3, A025581(n)])`
-/

namespace A383378.P2814868064246705614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A383378.P2814868064246705614

namespace A383378

/-- `A383341(eq[3, A025581(n)])` -/
def P2814868064246705614.Spec : Prop :=
  ∀ n, P2814868064246705614.a n = A383378 n

end A383378

/-!
# A383379: a(n) = n! * Sum_{k=0..n} (-n)^(n-k) * binomial(n+k,n)/(n-k)!.

The programs for A383379, there is no canonical definition to state claims against.
-/

/-! ## A383379.P10238220849497055082

`A383341(∑[4*n])`
-/

namespace A383379.P10238220849497055082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383341 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383379.P10238220849497055082

/-! ## A383379.P8496167787434872485

`and(-1, A383341(A046092(n)))`
-/

namespace A383379.P8496167787434872485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A383341 (A046092 n).toNat)

end

end A383379.P8496167787434872485

/-!
# A383380: Expansion of e.g.f. exp(-2*x) / (1-x)^4.

The programs for A383380, the canonical program `A383380.P1775219056900134663` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383380 has offset 0).

The definition of A383380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383380.P1775219056900134663

`(n+1)*a(n-1)+2*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383380

/-- `(n+1)*a(n-1)+2*(n-1)*a(n-2)` -/
def P1775219056900134663.Spec : Prop :=
  ∀ n, P1775219056900134663.a n = A383380 n

theorem P1775219056900134663.correct : P1775219056900134663.Spec := by
  intro n
  simp only [A383380]

end A383380

/-! ## A383380.P17937649516647917187

`A302478(A000069(2*a(n-1)))` with `a(0)=1`
-/

namespace A383380.P17937649516647917187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A302478 (A000069 (2 * a (n - 1)).toNat).toNat

end

end A383380.P17937649516647917187

namespace A383380

/-- `A302478(A000069(2*a(n-1)))` -/
def P17937649516647917187.Spec : Prop :=
  ∀ n, P17937649516647917187.a n = A383380 n

end A383380

/-!
# A383381: Expansion of e.g.f. exp(-2*x) / (1-x)^5.

The programs for A383381, the canonical program `A383381.P10557072364230890124` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383381 has offset 0).

The definition of A383381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383381.P10557072364230890124

`(n+2)*a(n-1)+2*(n-1)*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383381

/-- `(n+2)*a(n-1)+2*(n-1)*a(n-2)` -/
def P10557072364230890124.Spec : Prop :=
  ∀ n, P10557072364230890124.a n = A383381 n

theorem P10557072364230890124.correct : P10557072364230890124.Spec := by
  intro n
  simp only [A383381]

end A383381

/-!
# A383382: Expansion of e.g.f. exp(-3*x) / (1-x)^5.

The programs for A383382, the canonical program `A383382.P1646884820686390540` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383382 has offset 0).

The definition of A383382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383382.P1646884820686390540

`(n+1)*a(n-1)+3*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383382

/-- `(n+1)*a(n-1)+3*(n-1)*a(n-2)` -/
def P1646884820686390540.Spec : Prop :=
  ∀ n, P1646884820686390540.a n = A383382 n

theorem P1646884820686390540.correct : P1646884820686390540.Spec := by
  intro n
  simp only [A383382]

end A383382

/-!
# A383383: Expansion of e.g.f. exp(-4*x) / (1-x)^5.

The programs for A383383, the canonical program `A383383.P6962546000661993173` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383383 has offset 0).

The definition of A383383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383383.P6962546000661993173

`n*a(n-1)+4*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383383

/-- `n*a(n-1)+4*(n-1)*a(n-2)` -/
def P6962546000661993173.Spec : Prop :=
  ∀ n, P6962546000661993173.a n = A383383 n

theorem P6962546000661993173.correct : P6962546000661993173.Spec := by
  intro n
  simp only [A383383]

end A383383

/-! ## A383383.P8999323151482375010

`A383344(n+2)/(4*(n+1))`
-/

namespace A383383.P8999323151482375010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383344 (n + 2) : ℚ) / (4 * (n + 1) : ℚ)

end

end A383383.P8999323151482375010

namespace A383383

/-- `A383344(n+2)/(4*(n+1))` -/
def P8999323151482375010.Spec : Prop :=
  ∀ n, P8999323151482375010.a n = (A383383 n : ℚ)

end A383383

/-! ## A383383.P13702751849280949139

`A383341(eq[A137688(n), A256890(n+4)])`
-/

namespace A383383.P13702751849280949139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256890 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383341 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A383383.P13702751849280949139

namespace A383383

/-- `A383341(eq[A137688(n), A256890(n+4)])` -/
def P13702751849280949139.Spec : Prop :=
  ∀ n, P13702751849280949139.a n = A383383 n

end A383383

/-!
# A383384: Expansion of e.g.f. exp(-5*x) / (1-x)^5.

The programs for A383384, the canonical program `A383384.P460525735775256766` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383384 has offset 0).

The definition of A383384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383384.P460525735775256766

`(n-1)*(a(n-1)+5*a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383384

/-- `(n-1)*(a(n-1)+5*a(n-2))` -/
def P460525735775256766.Spec : Prop :=
  ∀ n, P460525735775256766.a n = A383384 n

theorem P460525735775256766.correct : P460525735775256766.Spec := by
  intro n
  simp only [A383384]

end A383384

/-! ## A383384.P16380212482286587594

`A295181(A000096(n+4)+n+1)`
-/

namespace A383384.P16380212482286587594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295181 (A000096 (n + 4) + (n + 1 : ℤ)).toNat

end

end A383384.P16380212482286587594

namespace A383384

/-- `A295181(A000096(n+4)+n+1)` -/
def P16380212482286587594.Spec : Prop :=
  ∀ n, P16380212482286587594.a n = A383384 n

end A383384

/-!
# A383388: Number of non-isomorphic directed graphs reachable in n steps (and no fewer) by at least 2*n agents using the LNS protocol (see A307085).

The programs for A383388, there is no canonical definition to state claims against.
-/

/-! ## A383388.P8829577870089726575

`A177523(n)+A005089(A000670(n))`
-/

namespace A383388.P8829577870089726575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177523 n + A005089 (A000670 n).toNat

end

end A383388.P8829577870089726575

/-! ## A383388.P7444561199956144066

`A177523(n)+A059841(A001655(n))`
-/

namespace A383388.P7444561199956144066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177523 n + A059841 (A001655 n).toNat

end

end A383388.P7444561199956144066

/-! ## A383388.P10053772134858971120

`A202213(n)+A066247(A006125(n))`
-/

namespace A383388.P10053772134858971120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202213 n + A066247 (A006125 n).toNat

end

end A383388.P10053772134858971120

/-!
# A383389: Number of non-isomorphic directed graphs reachable in n steps (and no fewer) by at least 2*n agents using the ANY protocol (see A318154).

The programs for A383389, there is no canonical definition to state claims against.
-/

/-! ## A383389.P2113003660971689982

`A030451(A127087(n)+A052320(n))`
-/

namespace A383389.P2113003660971689982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A127087 n + A052320 n).toNat

end

end A383389.P2113003660971689982

/-!
# A383393: Primes p such that p + 2, p + 8, p + 12, p + 18 and p + 20 are also primes.

The programs for A383393, there is no canonical definition to state claims against.
-/

/-! ## A383393.P2461985214788771723

`∩[A079304(n+1), A233540(n+1)]`
-/

namespace A383393.P2461985214788771723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383393.P2461985214788771723

/-! ## A383393.P5189139826156941409

`∩[A046141(n+1), A079304(n+1)]`
-/

namespace A383393.P5189139826156941409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383393.P5189139826156941409

/-!
# A383394: Perfect powers of Achilles numbers.

The programs for A383394, there is no canonical definition to state claims against.
-/

/-! ## A383394.P4525645492746385071

`∪[A389226(n+1), A389341(n+1)]`
-/

namespace A383394.P4525645492746385071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383394.P4525645492746385071

/-! ## A383394.P4983558032506508472

`∪[A389226(n+1), A389814(n+1)]`
-/

namespace A383394.P4983558032506508472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383394.P4983558032506508472

/-! ## A383394.P16770650300555194199

`∪[A389260(n+1), A389814(n+1)]`
-/

namespace A383394.P16770650300555194199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383394.P16770650300555194199

/-! ## A383394.P9703885286905517713

`∪[A389341(n+1), A391376(n+1)]`
-/

namespace A383394.P9703885286905517713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383394.P9703885286905517713

/-! ## A383394.P8779776321133990327

`∪[A390435(n+1), A390436(n+1)]`
-/

namespace A383394.P8779776321133990327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383394.P8779776321133990327

/-! ## A383394.P8286925169051050209

`∪[A389814(n+1), A391376(n+1)]`
-/

namespace A383394.P8286925169051050209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383394.P8286925169051050209

/-! ## A383394.P9026585862245608731

`∪[A391375(n+1), A391376(n+1)]`
-/

namespace A383394.P9026585862245608731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383394.P9026585862245608731

/-!
# A383395: Areas of primitive Pythagorean triangles that are sums of two or more consecutive primes.

The programs for A383395, there is no canonical definition to state claims against.
-/

/-! ## A383395.P4938935170401347019

`∩[A024365(n+1), A391131(n+1)]`
-/

namespace A383395.P4938935170401347019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383395.P4938935170401347019

/-! ## A383395.P2135336988401692077

`∩[A024365(n+1), A050936(n+1)]`
-/

namespace A383395.P2135336988401692077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383395.P2135336988401692077

