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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A162700: Numbers k which are concatenations k = x//y such that y^2 - x^2 = k.

The programs for A162700, there is no canonical definition to state claims against.
-/

/-! ## A162700.P17075163370265040499

`A113797(lt[A113753(n+1), A113767(n+4)])`
-/

namespace A162700.P17075163370265040499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113767 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113797 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162700.P17075163370265040499

/-! ## A162700.P2290605059887302538

`A113797(lt[A113769(2*n+1), A113767(n+4)])`
-/

namespace A162700.P2290605059887302538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113769 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113767 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113797 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162700.P2290605059887302538

/-! ## A162700.P814058762080780791

`A113797(lt[A113768(3*n+1), A113767(n+4)])`
-/

namespace A162700.P814058762080780791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113768 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113767 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113797 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162700.P814058762080780791

/-!
# A162703: Palindromes in A005448.

The programs for A162703, there is no canonical definition to state claims against.
-/

/-! ## A162703.P14260842484812908088

`A005448(A195903(n+1))`
-/

namespace A162703.P14260842484812908088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (A195903 (n + 1)).toNat

end

end A162703.P14260842484812908088

/-!
# A162706: Numbers that are the sum of two reversed primes.

The programs for A162706, there is no canonical definition to state claims against.
-/

/-! ## A162706.P7272065860730748304

`floor(∑[root(4, A134750(n+1))])`
-/

namespace A162706.P7272065860730748304
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 : ℝ) ^ (1 / (A134750 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A162706.P7272065860730748304

/-! ## A162706.P4354250057036337278

`A084558(A336568(n+3))+n`
-/

namespace A162706.P4354250057036337278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A336568 (n + 3)).toNat + (n : ℤ)

end

end A162706.P4354250057036337278

/-! ## A162706.P1074744487121604934

`n+5-A000007(A308958(n))`
-/

namespace A162706.P1074744487121604934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) - A000007 (A308958 n).toNat

end

end A162706.P1074744487121604934

/-! ## A162706.P7389911026131843771

`n+5-A010054(A364839(n))`
-/

namespace A162706.P7389911026131843771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) - A010054 (A364839 n).toNat

end

end A162706.P7389911026131843771

/-! ## A162706.P10252382507473800688

`A004218(A140817(n+1))+n+1`
-/

namespace A162706.P10252382507473800688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A140817 (n + 1)).toNat + (n + 1 : ℤ)

end

end A162706.P10252382507473800688

/-! ## A162706.P326574208445789548

`A018245(A289932(floor((n+1)/4)))+n`
-/

namespace A162706.P326574208445789548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018245 (A289932 ⌊(n + 1 : ℚ) / 4⌋.toNat).toNat + (n : ℤ)

end

end A162706.P326574208445789548

/-! ## A162706.P14777976495761486931

`A055642(p?[56*n+1])+n+1`
-/

namespace A162706.P14777976495761486931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + (n + 1 : ℤ)

end

end A162706.P14777976495761486931

/-!
# A162707: Primes in A162706.

The programs for A162707, there is no canonical definition to state claims against.
-/

/-! ## A162707.P11897497456056108220

`p?[2*n-A254682(A327401(n+1)+1)]`
-/

namespace A162707.P11897497456056108220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A254682 (A327401 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162707.P11897497456056108220

/-! ## A162707.P1344542276285277890

`p?[A223134(n)%A137469(n+1)]`
-/

namespace A162707.P1344542276285277890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223134 n) (A137469 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162707.P1344542276285277890

/-! ## A162707.P2148913903716164306

`p?[A267872(n)%A137469(n+1)]`
-/

namespace A162707.P2148913903716164306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267872 n) (A137469 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162707.P2148913903716164306

/-! ## A162707.P4836672587974145252

`A000040(eq[A000122(n), A370813(3*n+5)]+1)`
-/

namespace A162707.P4836672587974145252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370813 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A162707.P4836672587974145252

/-! ## A162707.P13447414851536611598

`∩[A138980(n), A225387(n+1)]`
-/

namespace A162707.P13447414851536611598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162707.P13447414851536611598

/-!
# A162709: Palindromes that are the sum of two squares.

The programs for A162709, there is no canonical definition to state claims against.
-/

/-! ## A162709.P8944245688447138678

`∩[A000404(n+1), A002113(n+1)]`
-/

namespace A162709.P8944245688447138678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162709.P8944245688447138678

/-! ## A162709.P15742710780933218164

`∩[A000404(n+1), A083158(n+1)]`
-/

namespace A162709.P15742710780933218164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162709.P15742710780933218164

/-! ## A162709.P17312094261685130203

`lt[A256756(n), A025426(n)]`
-/

namespace A162709.P17312094261685130203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162709.P17312094261685130203

/-! ## A162709.P4676551364151896196

`lt[A256756(n), A063725(n)]`
-/

namespace A162709.P4676551364151896196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162709.P4676551364151896196

/-! ## A162709.P11874769060905742910

`lt[A056965(n)², A063725(n)]`
-/

namespace A162709.P11874769060905742910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162709.P11874769060905742910

/-!
# A162710: Palindromes that are the sum of two positive cubes.

The programs for A162710, there is no canonical definition to state claims against.
-/

/-! ## A162710.P1888443042130931265

`∩[A002113(n+1), A003325(n+1)]`
-/

namespace A162710.P1888443042130931265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162710.P1888443042130931265

/-! ## A162710.P12317110934540905789

`∩[A003325(n+1), A083158(n+1)]`
-/

namespace A162710.P12317110934540905789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162710.P12317110934540905789

/-! ## A162710.P2371555026469359122

`filter[A003325(n+1), A136522(#)]`
-/

namespace A162710.P2371555026469359122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A162710.P2371555026469359122

/-!
# A162711: Triangle read by rows: T(n,k) = value of the string of length k beginning at position n in the concatenation of natural numbers in decimal representation, 1<=k<=n.

The programs for A162711, there is no canonical definition to state claims against.
-/

/-! ## A162711.P18376201860603815087

`A224841(A245300(n)+1)`
-/

namespace A162711.P18376201860603815087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A245300 n + 1).toNat

end

end A162711.P18376201860603815087

/-! ## A162711.P14146695449511505426

`A086068(A043569(n+1)*A059268(n))`
-/

namespace A162711.P14146695449511505426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A043569 (n + 1) * A059268 n).toNat

end

end A162711.P14146695449511505426

/-! ## A162711.P3091806524201110700

`A086068(A043756(n+1)*A059268(n))`
-/

namespace A162711.P3091806524201110700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A043756 (n + 1) * A059268 n).toNat

end

end A162711.P3091806524201110700

/-! ## A162711.P6903090459158364482

`A086068(A043765(n+1)*A059268(n))`
-/

namespace A162711.P6903090459158364482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A043765 (n + 1) * A059268 n).toNat

end

end A162711.P6903090459158364482

/-!
# A162714: Primes p such that 3^p-2^(p+1) is also prime.

The programs for A162714, there is no canonical definition to state claims against.
-/

/-! ## A162714.P701177838837342399

`p?[A363375(n+1)-1]`
-/

namespace A162714.P701177838837342399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363375 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162714.P701177838837342399

/-! ## A162714.P6606100757295255364

`record[A052369(A095062(n+1)+A060749(n+1))]`
-/

namespace A162714.P6606100757295255364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (A095062 (n + 1) + A060749 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162714.P6606100757295255364

/-!
# A162717: A partial-sum Narayana product.

The programs for A162717, there is no canonical definition to state claims against.
-/

/-! ## A162717.P5281486068199124924

`A122175(n)-A010051(A156278(n))`
-/

namespace A162717.P5281486068199124924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122175 n - A010051 (A156278 n).toNat

end

end A162717.P5281486068199124924

/-! ## A162717.P17223581937838723746

`A122175(n)-A036860(A265005(n+1))`
-/

namespace A162717.P17223581937838723746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122175 n - A036860 (A265005 (n + 1)).toNat

end

end A162717.P17223581937838723746

/-! ## A162717.P5791349259815731938

`∑{e}[A066119(n+1), A037452(#)]`
-/

namespace A162717.P5791349259815731938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A037452 (Nat.factorization (f1 n).natAbs p)

end

end A162717.P5791349259815731938

/-! ## A162717.P885759535492165540

`∑{e}[A066119(n+1), A244360(#)]`
-/

namespace A162717.P885759535492165540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A244360 (Nat.factorization (f1 n).natAbs p)

end

end A162717.P885759535492165540

/-! ## A162717.P17594055649785126889

`A122175(n)-A341027(A174713(3*n+1))`
-/

namespace A162717.P17594055649785126889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122175 n - A341027 ((A174713 (3 * n + 1)).toNat + 220)

end

end A162717.P17594055649785126889

/-!
# A162719: A positive integer n is included if n in binary contains as many 0's as the number of 1's in the binary representation of n+1, and if n in binary contains as many 1's as the number of 0's in the binary representation of n+1.

The programs for A162719, the canonical program `A162719.P1590148191479666792` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162719 has offset 1).

The definition of A162719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162719.P1590148191479666792

`eq[0, A037861(floor(n/(xor(n, n+1)+1)))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A162719

/-- `eq[0, A037861(floor(n/(xor(n, n+1)+1)))]` -/
def P1590148191479666792.Spec : Prop :=
  ∀ n, (P1590148191479666792.a n : ℤ) = A162719 (n + 1)

theorem P1590148191479666792.correct : P1590148191479666792.Spec := by
  intro n
  simp only [A162719, Nat.add_sub_cancel]

end A162719

/-! ## A162719.P15256024110496852453

`eq[0, A037861(A025480(n))]`
-/

namespace A162719.P15256024110496852453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162719.P15256024110496852453

namespace A162719

/-- `eq[0, A037861(A025480(n))]` -/
def P15256024110496852453.Spec : Prop :=
  ∀ n, (P15256024110496852453.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P12089680981852020026

`eq[0, A037861(A030109(n+1))]`
-/

namespace A162719.P12089680981852020026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A030109 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162719.P12089680981852020026

namespace A162719

/-- `eq[0, A037861(A030109(n+1))]` -/
def P12089680981852020026.Spec : Prop :=
  ∀ n, (P12089680981852020026.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P6760019974109768670

`eq[0, A037861(A101279(n+1))]`
-/

namespace A162719.P6760019974109768670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A101279 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162719.P6760019974109768670

namespace A162719

/-- `eq[0, A037861(A101279(n+1))]` -/
def P6760019974109768670.Spec : Prop :=
  ∀ n, (P6760019974109768670.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P9123587032930420233

`eq[A000120(n+1), A080791(n)]`
-/

namespace A162719.P9123587032930420233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162719.P9123587032930420233

namespace A162719

/-- `eq[A000120(n+1), A080791(n)]` -/
def P9123587032930420233.Spec : Prop :=
  ∀ n, (P9123587032930420233.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P14642206549525681873

`eq[A001316(n+1), A080100(n)]`
-/

namespace A162719.P14642206549525681873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162719.P14642206549525681873

namespace A162719

/-- `eq[A001316(n+1), A080100(n)]` -/
def P14642206549525681873.Spec : Prop :=
  ∀ n, (P14642206549525681873.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P6376178634431763658

`eq[A037861(n+1), A145037(n)]`
-/

namespace A162719.P6376178634431763658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162719.P6376178634431763658

namespace A162719

/-- `eq[A037861(n+1), A145037(n)]` -/
def P6376178634431763658.Spec : Prop :=
  ∀ n, (P6376178634431763658.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P17830725933159502044

`eq[A092391(n+1), A233272(n)]`
-/

namespace A162719.P17830725933159502044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162719.P17830725933159502044

namespace A162719

/-- `eq[A092391(n+1), A233272(n)]` -/
def P17830725933159502044.Spec : Prop :=
  ∀ n, (P17830725933159502044.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P14487515228678089599

`eq[A043545(n), A337319(n+1)]`
-/

namespace A162719.P14487515228678089599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337319 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162719.P14487515228678089599

namespace A162719

/-- `eq[A043545(n), A337319(n+1)]` -/
def P14487515228678089599.Spec : Prop :=
  ∀ n, (P14487515228678089599.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P1680852085070147793

`eq[A160727(n+1), A309057(n)]`
-/

namespace A162719.P1680852085070147793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162719.P1680852085070147793

namespace A162719

/-- `eq[A160727(n+1), A309057(n)]` -/
def P1680852085070147793.Spec : Prop :=
  ∀ n, (P1680852085070147793.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P5905576331162095470

`eq[A037861(n), A089263(n)]-1`
-/

namespace A162719.P5905576331162095470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A162719.P5905576331162095470

namespace A162719

/-- `eq[A037861(n), A089263(n)]-1` -/
def P5905576331162095470.Spec : Prop :=
  ∀ n, P5905576331162095470.a n = A162719 (n + 1)

end A162719

/-! ## A162719.P16600663223706444018

`eq[A037861(n+1), A089263(n+1)]`
-/

namespace A162719.P16600663223706444018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162719.P16600663223706444018

namespace A162719

/-- `eq[A037861(n+1), A089263(n+1)]` -/
def P16600663223706444018.Spec : Prop :=
  ∀ n, (P16600663223706444018.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P8118684124912465513

`eq[A297382(n+1), A337319(n+1)]`
-/

namespace A162719.P8118684124912465513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337319 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162719.P8118684124912465513

namespace A162719

/-- `eq[A297382(n+1), A337319(n+1)]` -/
def P8118684124912465513.Spec : Prop :=
  ∀ n, (P8118684124912465513.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P5526999633086623733

`lt[Δ[A301336(2*n)]², 1]`
-/

namespace A162719.P5526999633086623733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301336 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A162719.P5526999633086623733

namespace A162719

/-- `lt[Δ[A301336(2*n)]², 1]` -/
def P5526999633086623733.Spec : Prop :=
  ∀ n, (P5526999633086623733.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P7339465865037231829

`eq[A080100(2*n), A117973(n+1)]`
-/

namespace A162719.P7339465865037231829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162719.P7339465865037231829

namespace A162719

/-- `eq[A080100(2*n), A117973(n+1)]` -/
def P7339465865037231829.Spec : Prop :=
  ∀ n, (P7339465865037231829.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P12680357846862145723

`eq[A080100(2*n), A267447(n+1)]`
-/

namespace A162719.P12680357846862145723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162719.P12680357846862145723

namespace A162719

/-- `eq[A080100(2*n), A267447(n+1)]` -/
def P12680357846862145723.Spec : Prop :=
  ∀ n, (P12680357846862145723.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P11985890992325424886

`eq[A063787(n+2), A080791(2*n)]`
-/

namespace A162719.P11985890992325424886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162719.P11985890992325424886

namespace A162719

/-- `eq[A063787(n+2), A080791(2*n)]` -/
def P11985890992325424886.Spec : Prop :=
  ∀ n, (P11985890992325424886.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P6820944187920098294

`eq[A000120(n+1), A023416(2*n+1)]`
-/

namespace A162719.P6820944187920098294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162719.P6820944187920098294

namespace A162719

/-- `eq[A000120(n+1), A023416(2*n+1)]` -/
def P6820944187920098294.Spec : Prop :=
  ∀ n, (P6820944187920098294.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P6991951894423621017

`eq[A056792(2*n+1), A119477(n+2)]`
-/

namespace A162719.P6991951894423621017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162719.P6991951894423621017

namespace A162719

/-- `eq[A056792(2*n+1), A119477(n+2)]` -/
def P6991951894423621017.Spec : Prop :=
  ∀ n, (P6991951894423621017.a n : ℤ) = A162719 (n + 1)

end A162719

/-! ## A162719.P6618748453794440842

`eq[log2(A001316(n+1)), A023416(2*n+1)]`
-/

namespace A162719.P6618748453794440842
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A162719.P6618748453794440842

namespace A162719

/-- `eq[log2(A001316(n+1)), A023416(2*n+1)]` -/
def P6618748453794440842.Spec : Prop :=
  ∀ n, (P6618748453794440842.a n : ℤ) = A162719 (n + 1)

end A162719

/-!
# A162720: A014499 represented in binary.

The programs for A162720, the canonical program `A162720.P4575705943581837590` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162720 has offset 1).

The definition of A162720 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162720.P4575705943581837590

`A007088(A014499(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A162720

/-- `A007088(A014499(n+1))` -/
def P4575705943581837590.Spec : Prop :=
  ∀ n, P4575705943581837590.a n = A162720 (n + 1)

theorem P4575705943581837590.correct : P4575705943581837590.Spec := by
  intro n
  simp only [A162720, Nat.add_sub_cancel]

end A162720

/-! ## A162720.P9451102820574367576

`A007088(∑{digits}[A004676(n+1), #])`
-/

namespace A162720.P9451102820574367576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A162720.P9451102820574367576

namespace A162720

/-- `A007088(∑{digits}[A004676(n+1), #])` -/
def P9451102820574367576.Spec : Prop :=
  ∀ n, P9451102820574367576.a n = A162720 (n + 1)

end A162720

/-! ## A162720.P12259272320565567717

`A007088(A000120(n+1)-A090455(n+1))`
-/

namespace A162720.P12259272320565567717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000120 (n + 1) - A090455 (n + 1)).toNat

end

end A162720.P12259272320565567717

namespace A162720

/-- `A007088(A000120(n+1)-A090455(n+1))` -/
def P12259272320565567717.Spec : Prop :=
  ∀ n, P12259272320565567717.a n = A162720 (n + 1)

theorem P12259272320565567717.correct : P12259272320565567717.Spec := by
  intro n
  simp only [A162720, Nat.add_sub_cancel, A162720.P12259272320565567717.a, A162720.P4575705943581837590.a, A000120, A000120.P2816527436160941581.a, A007088, A007088.P12432121332583687413.a, A014499, A014499.P9770580101482900462.a, A090455, A090455.P12087489954554024740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005187, A005187.P3874015513960485494.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162720

/-! ## A162720.P8697580989520589790

`A007088(A000120(p?[xor(1, n)+1]))`
-/

namespace A162720.P8697580989520589790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000120 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A162720.P8697580989520589790

namespace A162720

/-- `A007088(A000120(p?[xor(1, n)+1]))` -/
def P8697580989520589790.Spec : Prop :=
  ∀ n, P8697580989520589790.a n = A162720 (n + 1)

end A162720

/-! ## A162720.P14425186854752206321

`A007088(A000120(p?[a(n-2)+2]))` with `a(0)=2, a(1)=1`
-/

namespace A162720.P14425186854752206321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000120 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A162720.P14425186854752206321

namespace A162720

/-- `A007088(A000120(p?[a(n-2)+2]))` -/
def P14425186854752206321.Spec : Prop :=
  ∀ n, P14425186854752206321.a n = A162720 (n + 1)

end A162720

/-! ## A162720.P17613887408982849092

`A007088(A000120(A000040(n+1)))`
-/

namespace A162720.P17613887408982849092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000120 (A000040 (n + 1)).toNat).toNat

end

end A162720.P17613887408982849092

namespace A162720

/-- `A007088(A000120(A000040(n+1)))` -/
def P17613887408982849092.Spec : Prop :=
  ∀ n, P17613887408982849092.a n = A162720 (n + 1)

end A162720

/-! ## A162720.P16293704865341734525

`A014550(A006068(A005811(A338524(n+1))))`
-/

namespace A162720.P16293704865341734525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 (A006068 (A005811 (A338524 (n + 1)).toNat).toNat).toNat

end

end A162720.P16293704865341734525

namespace A162720

/-- `A014550(A006068(A005811(A338524(n+1))))` -/
def P16293704865341734525.Spec : Prop :=
  ∀ n, P16293704865341734525.a n = A162720 (n + 1)

end A162720

/-! ## A162720.P13244508677258157483

`A007088(A000120(A100484(n+1)))`
-/

namespace A162720.P13244508677258157483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000120 (A100484 (n + 1)).toNat).toNat

end

end A162720.P13244508677258157483

namespace A162720

/-- `A007088(A000120(A100484(n+1)))` -/
def P13244508677258157483.Spec : Prop :=
  ∀ n, P13244508677258157483.a n = A162720 (n + 1)

end A162720

/-!
# A162721: A positive integer k is included if, when k is represented in binary, it contains the binary representation of every distinct prime dividing k as substrings, without overlapping of the substrings.

The programs for A162721, there is no canonical definition to state claims against.
-/

/-! ## A162721.P6655186281040756525

`lt[A098108(n), A098108(A327778(n))]`
-/

namespace A162721.P6655186281040756525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (A327778 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162721.P6655186281040756525

/-! ## A162721.P14968407478458134676

`record[A000015(A257500(A176504(n+1)))]`
-/

namespace A162721.P14968407478458134676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A257500 (A176504 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162721.P14968407478458134676

/-! ## A162721.P4753096940581278399

`eq[A055812(A119288(n+1)), A359768(n+1)]+1`
-/

namespace A162721.P4753096940581278399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055812 (A119288 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359768 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A162721.P4753096940581278399

/-! ## A162721.P15470129874719249395

`A378441(A187829(n+2))`
-/

namespace A162721.P15470129874719249395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378441 (A187829 (n + 2)).toNat

end

end A162721.P15470129874719249395

/-!
# A162722: A positive integer k is included if when k is represented in binary, it contains the binary representations of every distinct prime dividing k as substrings, with overlapping of the substrings allowed (but not necessary).

The programs for A162722, there is no canonical definition to state claims against.
-/

/-! ## A162722.P1543457333013771117

`eq[1, A001065(A323436(2*n))]`
-/

namespace A162722.P1543457333013771117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A323436 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162722.P1543457333013771117

/-! ## A162722.P17684834255245115944

`eq[1, A046660(A323436(2*n)²)]`
-/

namespace A162722.P17684834255245115944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A323436 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162722.P17684834255245115944

/-! ## A162722.P15934930036778418141

`eq[2, A032741(A323436(2*n)²)]`
-/

namespace A162722.P15934930036778418141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A323436 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162722.P15934930036778418141

/-! ## A162722.P8834306802330767049

`eq[2, A078898(A323436(2*n)²)]`
-/

namespace A162722.P8834306802330767049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A323436 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162722.P8834306802330767049

/-! ## A162722.P13154292247515717259

`lt[A243836(n), A010051(A323436(2*n))]`
-/

namespace A162722.P13154292247515717259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243836 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A323436 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162722.P13154292247515717259

/-!
# A162723: a(n) = 9 a (n-1)-26 a(n-2) +24 a(n-3) (n >= 3) with a(0) =a(1)=1, a(2)=2.

The programs for A162723, the canonical program `A162723.P3497709744772108283` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162723 has offset 0).

The definition of A162723 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-26*a(n-2)+24*a(n-3)` (program `A162723.P3497709744772108283`, by `A162723.P3497709744772108283.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162723.P7603255249648152117

`7*2^(n-1)+3*2^(2*n-1)-4*3^n`
-/

namespace A162723.P7603255249648152117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 3 * (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) - (4 * 3 ^ n : ℚ)

end

end A162723.P7603255249648152117

namespace A162723

/-- `7*2^(n-1)+3*2^(2*n-1)-4*3^n` -/
def P7603255249648152117.Spec : Prop :=
  ∀ n, P7603255249648152117.a n = (A162723 n : ℚ)

theorem P7603255249648152117.correct : P7603255249648152117.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A162723, Nat.add_sub_cancel, A162723.P7603255249648152117.a, A162723.P3497709744772108283.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A162723, Nat.add_sub_cancel, A162723.P7603255249648152117.a, A162723.P3497709744772108283.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A162723

/-! ## A162723.P3497709744772108283

`9*a(n-1)-26*a(n-2)+24*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162723

/-- `9*a(n-1)-26*a(n-2)+24*a(n-3)` -/
def P3497709744772108283.Spec : Prop :=
  ∀ n, P3497709744772108283.a n = A162723 n

theorem P3497709744772108283.correct : P3497709744772108283.Spec := by
  intro n
  simp only [A162723]

end A162723

/-! ## A162723.P16737385664871917061

`Δ[A134165(n)-(3^n-2^n)]`
-/

namespace A162723.P16737385664871917061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134165 n - ((3 ^ n : ℤ) - (2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162723.P16737385664871917061

namespace A162723

/-- `Δ[A134165(n)-(3^n-2^n)]` -/
def P16737385664871917061.Spec : Prop :=
  ∀ n, P16737385664871917061.a n = A162723 n

end A162723

/-! ## A162723.P2329853004779110212

`Δ[A134045(n)-∑[floor(3^(n-1))]]`
-/

namespace A162723.P2329853004779110212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134045 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162723.P2329853004779110212

namespace A162723

/-- `Δ[A134045(n)-∑[floor(3^(n-1))]]` -/
def P2329853004779110212.Spec : Prop :=
  ∀ n, P2329853004779110212.a n = A162723 n

end A162723

/-! ## A162723.P17849908699752163309

`Δ[A084869(n)-(3^n-∑[2^n])]`
-/

namespace A162723.P17849908699752163309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n - ((3 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162723.P17849908699752163309

namespace A162723

/-- `Δ[A084869(n)-(3^n-∑[2^n])]` -/
def P17849908699752163309.Spec : Prop :=
  ∀ n, P17849908699752163309.a n = A162723 n

end A162723

/-!
# A162724: Binary Keith numbers.

The programs for A162724, there is no canonical definition to state claims against.
-/

/-! ## A162724.P15373029619673501333

`∪[A000079(n), A162363(n+1)]`
-/

namespace A162724.P15373029619673501333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162724.P15373029619673501333

/-! ## A162724.P4118794997020822579

`lt[A275716(n), 10]+1`
-/

namespace A162724.P4118794997020822579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275716 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A162724.P4118794997020822579

/-! ## A162724.P15649210388747101952

`∑[A002322(floor(sqrt(n))^n)]`
-/

namespace A162724.P15649210388747101952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (Nat.sqrt n ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162724.P15649210388747101952

/-! ## A162724.P13760553642163015467

`A355467(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A162724.P13760553642163015467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A355467 (a (n - 1)).toNat

end

end A162724.P13760553642163015467

/-! ## A162724.P5889218159281936793

`lt[A184242(n+1), 2]+1`
-/

namespace A162724.P5889218159281936793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184242 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A162724.P5889218159281936793

/-!
# A162725: a(n) = 8*a(n-1) - 19*a(n-2) + 12*a(n-3) (n >= 3) with a(0) = a(1) = 1, a(2) = 2.

The programs for A162725, the canonical program `A162725.P6524980034118663415` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162725 has offset 0).

The definition of A162725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-19*a(n-2)+12*a(n-3)` (program `A162725.P6524980034118663415`, by `A162725.P6524980034118663415.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162725.P10670547460545484275

`4^n/3-3^n/2+7/6`
-/

namespace A162725.P10670547460545484275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / 3 - (3 ^ n : ℚ) / 2 + (7 : ℚ) / 6

end

end A162725.P10670547460545484275

namespace A162725

/-- `4^n/3-3^n/2+7/6` -/
def P10670547460545484275.Spec : Prop :=
  ∀ n, P10670547460545484275.a n = (A162725 n : ℚ)

theorem P10670547460545484275.correct : P10670547460545484275.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A162725, Nat.add_sub_cancel, A162725.P10670547460545484275.a, A162725.P6524980034118663415.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A162725, Nat.add_sub_cancel, A162725.P10670547460545484275.a, A162725.P6524980034118663415.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A162725

/-! ## A162725.P6524980034118663415

`8*a(n-1)-19*a(n-2)+12*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162725

/-- `8*a(n-1)-19*a(n-2)+12*a(n-3)` -/
def P6524980034118663415.Spec : Prop :=
  ∀ n, P6524980034118663415.a n = A162725 n

theorem P6524980034118663415.correct : P6524980034118663415.Spec := by
  intro n
  simp only [A162725]

end A162725

/-! ## A162725.P13397746370773576313

`∑[A005061(abs(1-n))]`
-/

namespace A162725.P13397746370773576313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162725.P13397746370773576313

namespace A162725

/-- `∑[A005061(abs(1-n))]` -/
def P13397746370773576313.Spec : Prop :=
  ∀ n, P13397746370773576313.a n = A162725 n

end A162725

/-! ## A162725.P15968352328420300924

`∑[A167936(abs(2*(1-n)))]`
-/

namespace A162725.P15968352328420300924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167936 |2 * (1 - (n : ℤ))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162725.P15968352328420300924

namespace A162725

/-- `∑[A167936(abs(2*(1-n)))]` -/
def P15968352328420300924.Spec : Prop :=
  ∀ n, P15968352328420300924.a n = A162725 n

end A162725

/-! ## A162725.P2578873166643541455

`∑[A167762(abs(or(1, 2*n)-3))]`
-/

namespace A162725.P2578873166643541455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167762 |(Nat.lor 1 (2 * n) : ℤ) - 3|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162725.P2578873166643541455

namespace A162725

/-- `∑[A167762(abs(or(1, 2*n)-3))]` -/
def P2578873166643541455.Spec : Prop :=
  ∀ n, P2578873166643541455.a n = A162725 n

end A162725

/-! ## A162725.P12528456360456052605

`A120664(A028310(n))/2`
-/

namespace A162725.P12528456360456052605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120664 (A028310 n).toNat : ℚ) / 2

end

end A162725.P12528456360456052605

namespace A162725

/-- `A120664(A028310(n))/2` -/
def P12528456360456052605.Spec : Prop :=
  ∀ n, P12528456360456052605.a n = (A162725 n : ℚ)

end A162725

/-! ## A162725.P4834986473534155751

`abs(A003462(n)-A047849(n))`
-/

namespace A162725.P4834986473534155751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003462 n - A047849 n|

end

end A162725.P4834986473534155751

namespace A162725

/-- `abs(A003462(n)-A047849(n))` -/
def P4834986473534155751.Spec : Prop :=
  ∀ n, P4834986473534155751.a n = A162725 n

end A162725

/-! ## A162725.P12720084630829484146

`A120664(A065033(2*n))/2`
-/

namespace A162725.P12720084630829484146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120664 (A065033 (2 * n)).toNat : ℚ) / 2

end

end A162725.P12720084630829484146

namespace A162725

/-- `A120664(A065033(2*n))/2` -/
def P12720084630829484146.Spec : Prop :=
  ∀ n, P12720084630829484146.a n = (A162725 n : ℚ)

end A162725

/-! ## A162725.P7952845816277303943

`∑[A011782(n)²-A140429(n)]`
-/

namespace A162725.P7952845816277303943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2 - A140429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162725.P7952845816277303943

namespace A162725

/-- `∑[A011782(n)²-A140429(n)]` -/
def P7952845816277303943.Spec : Prop :=
  ∀ n, P7952845816277303943.a n = A162725 n

end A162725

/-! ## A162725.P15591455528867437149

`(A163834(n)-A007051(n))%A163834(n)`
-/

namespace A162725.P15591455528867437149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163834 n - A007051 n) (A163834 n)

end

end A162725.P15591455528867437149

namespace A162725

/-- `(A163834(n)-A007051(n))%A163834(n)` -/
def P15591455528867437149.Spec : Prop :=
  ∀ n, P15591455528867437149.a n = A162725 n

end A162725

/-! ## A162725.P5666459923459051492

`(A135583(n)-A155602(n))/2`
-/

namespace A162725.P5666459923459051492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135583 n - A155602 n : ℚ) / 2

end

end A162725.P5666459923459051492

namespace A162725

/-- `(A135583(n)-A155602(n))/2` -/
def P5666459923459051492.Spec : Prop :=
  ∀ n, P5666459923459051492.a n = (A162725 n : ℚ)

end A162725

/-! ## A162725.P6902332647385885219

`(A000773(2*n+1)+1)*A007336(A022775(n+1))`
-/

namespace A162725.P6902332647385885219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000773 (2 * n + 1) + 1) * A007336 (A022775 (n + 1)).toNat

end

end A162725.P6902332647385885219

namespace A162725

/-- `(A000773(2*n+1)+1)*A007336(A022775(n+1))` -/
def P6902332647385885219.Spec : Prop :=
  ∀ n, P6902332647385885219.a n = A162725 n

end A162725

/-!
# A162727: G.f. is the polynomial (Product_{k=1..28} (1 - x^(3*k)))/(1-x)^28.

The programs for A162727, there is no canonical definition to state claims against.
-/

/-! ## A162727.P14950346605569180802

`A010980(n)-A054908(A055999(n))`
-/

namespace A162727.P14950346605569180802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010980 (n + 27) - A054908 (A055999 n).toNat

end

end A162727.P14950346605569180802

/-!
# A162728: G.f.: x/(1-x) = Sum_{n>=1} a(n)*log(1+x^n)/n.

The programs for A162728, the canonical program `A162728.P11930583018672427365` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162728 has offset 1).

The definition of A162728 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162728.P11930583018672427365

`A000010(n+1)*A090740(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A162728

/-- `A000010(n+1)*A090740(n+1)` -/
def P11930583018672427365.Spec : Prop :=
  ∀ n, P11930583018672427365.a n = A162728 (n + 1)

theorem P11930583018672427365.correct : P11930583018672427365.Spec := by
  intro n
  simp only [A162728, Nat.add_sub_cancel]

end A162728

/-! ## A162728.P2749738867986004986

`∑{d}[n+1, #*A067856((n+1)/#)]`
-/

namespace A162728.P2749738867986004986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A067856 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A162728.P2749738867986004986

namespace A162728

/-- `∑{d}[n+1, #*A067856((n+1)/#)]` -/
def P2749738867986004986.Spec : Prop :=
  ∀ n, P2749738867986004986.a n = A162728 (n + 1)

end A162728

/-! ## A162728.P14664390718932332293

`Δ[A002088(n)]*A090740(n+1)`
-/

namespace A162728.P14664390718932332293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A090740 (n + 1)

end

end A162728.P14664390718932332293

namespace A162728

/-- `Δ[A002088(n)]*A090740(n+1)` -/
def P14664390718932332293.Spec : Prop :=
  ∀ n, P14664390718932332293.a n = A162728 (n + 1)

end A162728

/-! ## A162728.P10072133096536931677

`val(A320262(n+1), 2)*A000010(n+1)`
-/

namespace A162728.P10072133096536931677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A320262 (n + 1)).toNat 2 : ℤ) * A000010 (n + 1)

end

end A162728.P10072133096536931677

namespace A162728

/-- `val(A320262(n+1), 2)*A000010(n+1)` -/
def P10072133096536931677.Spec : Prop :=
  ∀ n, P10072133096536931677.a n = A162728 (n + 1)

end A162728

/-! ## A162728.P2623757837347215495

`A062355(2*(n+1))/(2*A001227(n+1))`
-/

namespace A162728.P2623757837347215495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062355 (2 * (n + 1)) : ℚ) / (2 * A001227 (n + 1) : ℚ)

end

end A162728.P2623757837347215495

namespace A162728

/-- `A062355(2*(n+1))/(2*A001227(n+1))` -/
def P2623757837347215495.Spec : Prop :=
  ∀ n, P2623757837347215495.a n = (A162728 (n + 1) : ℚ)

end A162728

/-! ## A162728.P12730976430633258176

`∑{d}[n+1, A007431(#)*A038712((n+1)/#)]`
-/

namespace A162728.P12730976430633258176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A038712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A162728.P12730976430633258176

namespace A162728

/-- `∑{d}[n+1, A007431(#)*A038712((n+1)/#)]` -/
def P12730976430633258176.Spec : Prop :=
  ∀ n, P12730976430633258176.a n = A162728 (n + 1)

end A162728

/-! ## A162728.P12694373470417467710

`∑{d}[n+1, A000010(#)*A048298((n+1)/#)]`
-/

namespace A162728.P12694373470417467710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A048298 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A162728.P12694373470417467710

namespace A162728

/-- `∑{d}[n+1, A000010(#)*A048298((n+1)/#)]` -/
def P12694373470417467710.Spec : Prop :=
  ∀ n, P12694373470417467710.a n = A162728 (n + 1)

end A162728

/-! ## A162728.P16709048265096549938

`∑{d}[n+1, A008683(#)*A091512((n+1)/#)]`
-/

namespace A162728.P16709048265096549938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A091512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A162728.P16709048265096549938

namespace A162728

/-- `∑{d}[n+1, A008683(#)*A091512((n+1)/#)]` -/
def P16709048265096549938.Spec : Prop :=
  ∀ n, P16709048265096549938.a n = A162728 (n + 1)

end A162728

/-! ## A162728.P2406234063734463231

`∑{d}[n+1, A000203(#)*A327274((n+1)/#)]`
-/

namespace A162728.P2406234063734463231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A162728.P2406234063734463231

namespace A162728

/-- `∑{d}[n+1, A000203(#)*A327274((n+1)/#)]` -/
def P2406234063734463231.Spec : Prop :=
  ∀ n, P2406234063734463231.a n = A162728 (n + 1)

end A162728

/-! ## A162728.P15984958330445070279

`∑{d}[n+1, A087003(#)*A267092((n+1)/#)]`
-/

namespace A162728.P15984958330445070279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A267092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A162728.P15984958330445070279

namespace A162728

/-- `∑{d}[n+1, A087003(#)*A267092((n+1)/#)]` -/
def P15984958330445070279.Spec : Prop :=
  ∀ n, P15984958330445070279.a n = A162728 (n + 1)

end A162728

/-! ## A162728.P12403669836381308434

`∑{d}[n+1, A038040(#)*A327278((n+1)/#)]`
-/

namespace A162728.P12403669836381308434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A162728.P12403669836381308434

namespace A162728

/-- `∑{d}[n+1, A038040(#)*A327278((n+1)/#)]` -/
def P12403669836381308434.Spec : Prop :=
  ∀ n, P12403669836381308434.a n = A162728 (n + 1)

end A162728

/-! ## A162728.P12543597880580654677

`∑{d}[n+1, A018804(#)*A349343((n+1)/#)]`
-/

namespace A162728.P12543597880580654677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A162728.P12543597880580654677

namespace A162728

/-- `∑{d}[n+1, A018804(#)*A349343((n+1)/#)]` -/
def P12543597880580654677.Spec : Prop :=
  ∀ n, P12543597880580654677.a n = A162728 (n + 1)

end A162728

/-! ## A162728.P11730185125261588624

`∑{d}[n+1, A091519(#)*A328502((n+1)/#)]`
-/

namespace A162728.P11730185125261588624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091519 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A162728.P11730185125261588624

namespace A162728

/-- `∑{d}[n+1, A091519(#)*A328502((n+1)/#)]` -/
def P11730185125261588624.Spec : Prop :=
  ∀ n, P11730185125261588624.a n = A162728 (n + 1)

end A162728

/-! ## A162728.P18380973030841437659

`∑{d}[n+1, A326937(#)*A344372((n+1)/#)]`
-/

namespace A162728.P18380973030841437659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326937 d * A344372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A162728.P18380973030841437659

namespace A162728

/-- `∑{d}[n+1, A326937(#)*A344372((n+1)/#)]` -/
def P18380973030841437659.Spec : Prop :=
  ∀ n, P18380973030841437659.a n = A162728 (n + 1)

end A162728

/-! ## A162728.P17157039554866214666

`A000010(2*(n+1))*(A001511(n+1)+1)/2`
-/

namespace A162728.P17157039554866214666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * (n + 1)) * (A001511 (n + 1) + 1) : ℚ) / 2

end

end A162728.P17157039554866214666

namespace A162728

/-- `A000010(2*(n+1))*(A001511(n+1)+1)/2` -/
def P17157039554866214666.Spec : Prop :=
  ∀ n, P17157039554866214666.a n = (A162728 (n + 1) : ℚ)

end A162728

/-! ## A162728.P2318654244070070129

`∑{d}[n+1, A000010(#)*A099894((n+1)/#-1)]`
-/

namespace A162728.P2318654244070070129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A099894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A162728.P2318654244070070129

namespace A162728

/-- `∑{d}[n+1, A000010(#)*A099894((n+1)/#-1)]` -/
def P2318654244070070129.Spec : Prop :=
  ∀ n, P2318654244070070129.a n = A162728 (n + 1)

end A162728

/-! ## A162728.P1578867741177327553

`(A001511(n+1)+A000035(n))*A000010(n+1)`
-/

namespace A162728.P1578867741177327553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001511 (n + 1) + A000035 n) * A000010 (n + 1)

end

end A162728.P1578867741177327553

namespace A162728

/-- `(A001511(n+1)+A000035(n))*A000010(n+1)` -/
def P1578867741177327553.Spec : Prop :=
  ∀ n, P1578867741177327553.a n = A162728 (n + 1)

end A162728

/-! ## A162728.P16606658162774917838

`A000010(n+1)*A018804(n+1)/A255655(n+1)`
-/

namespace A162728.P16606658162774917838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A018804 (n + 1) : ℚ) / (A255655 (n + 1) : ℚ)

end

end A162728.P16606658162774917838

namespace A162728

/-- `A000010(n+1)*A018804(n+1)/A255655(n+1)` -/
def P16606658162774917838.Spec : Prop :=
  ∀ n, P16606658162774917838.a n = (A162728 (n + 1) : ℚ)

end A162728

/-!
# A162729: a(n) = 5^n*(5^n-1)/2.

The programs for A162729, the canonical program `A162729.P9797012172488560818` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162729 has offset 0).

The definition of A162729 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n*(5^n-1)/2` (program `A162729.P8558828730439618412`, by `A162729.P8558828730439618412.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162729.P8558828730439618412

`5^n*(5^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162729.P8558828730439618412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) * ((5 ^ n : ℤ) - 1) : ℚ) / 2

end

end A162729.P8558828730439618412

namespace A162729

/-- `5^n*(5^n-1)/2` -/
def P8558828730439618412.Spec : Prop :=
  ∀ n, P8558828730439618412.a n = (A162729 n : ℚ)

theorem P8558828730439618412.correct : P8558828730439618412.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162729, Nat.add_sub_cancel, A162729.P8558828730439618412.a, A162729.P9797012172488560818.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162729, Nat.add_sub_cancel, A162729.P8558828730439618412.a, A162729.P9797012172488560818.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A162729

/-! ## A162729.P9797012172488560818

`30*a(n-1)-125*a(n-2)` with `a(0)=0, a(1)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162729

/-- `30*a(n-1)-125*a(n-2)` -/
def P9797012172488560818.Spec : Prop :=
  ∀ n, P9797012172488560818.a n = A162729 n

theorem P9797012172488560818.correct : P9797012172488560818.Spec := by
  intro n
  simp only [A162729]

end A162729

/-! ## A162729.P12984826520211511219

`A000217(A000351(n)-1)`
-/

namespace A162729.P12984826520211511219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000351 n - 1).toNat

end

end A162729.P12984826520211511219

namespace A162729

/-- `A000217(A000351(n)-1)` -/
def P12984826520211511219.Spec : Prop :=
  ∀ n, P12984826520211511219.a n = A162729 n

end A162729

/-! ## A162729.P11390739403218339026

`C(5^n, 2)`
-/

namespace A162729.P11390739403218339026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 ^ n) 2

end

end A162729.P11390739403218339026

namespace A162729

/-- `C(5^n, 2)` -/
def P11390739403218339026.Spec : Prop :=
  ∀ n, (P11390739403218339026.a n : ℤ) = A162729 n

end A162729

/-! ## A162729.P1512855552827054130

`A032122(2*n)-A000351(n)`
-/

namespace A162729.P1512855552827054130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032122 (2 * n) - A000351 n

end

end A162729.P1512855552827054130

namespace A162729

/-- `A032122(2*n)-A000351(n)` -/
def P1512855552827054130.Spec : Prop :=
  ∀ n, P1512855552827054130.a n = A162729 n

end A162729

/-! ## A162729.P17839335189239118985

`A034478(2*n)-A034478(n)`
-/

namespace A162729.P17839335189239118985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 (2 * n) - A034478 n

end

end A162729.P17839335189239118985

namespace A162729

/-- `A034478(2*n)-A034478(n)` -/
def P17839335189239118985.Spec : Prop :=
  ∀ n, P17839335189239118985.a n = A162729 n

end A162729

/-! ## A162729.P2400170695043780786

`A137410(2*n)-A137410(n)`
-/

namespace A162729.P2400170695043780786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137410 (2 * n) - A137410 n

end

end A162729.P2400170695043780786

namespace A162729

/-- `A137410(2*n)-A137410(n)` -/
def P2400170695043780786.Spec : Prop :=
  ∀ n, P2400170695043780786.a n = A162729 n

end A162729

/-! ## A162729.P18319640524880934670

`A056487(2*n)*A121177(n+1)`
-/

namespace A162729.P18319640524880934670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 (2 * n) * A121177 (n + 1)

end

end A162729.P18319640524880934670

namespace A162729

/-- `A056487(2*n)*A121177(n+1)` -/
def P18319640524880934670.Spec : Prop :=
  ∀ n, P18319640524880934670.a n = A162729 n

end A162729

/-! ## A162729.P11728983059214436702

`A032122(2*n)-A056451(2*n)`
-/

namespace A162729.P11728983059214436702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032122 (2 * n) - A056451 (2 * n)

end

end A162729.P11728983059214436702

namespace A162729

/-- `A032122(2*n)-A056451(2*n)` -/
def P11728983059214436702.Spec : Prop :=
  ∀ n, P11728983059214436702.a n = A162729 n

end A162729

/-! ## A162729.P13271985030998956588

`A121177(2*n+1)-A121177(n+1)`
-/

namespace A162729.P13271985030998956588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (2 * n + 1) - A121177 (n + 1)

end

end A162729.P13271985030998956588

namespace A162729

/-- `A121177(2*n+1)-A121177(n+1)` -/
def P13271985030998956588.Spec : Prop :=
  ∀ n, P13271985030998956588.a n = A162729 n

end A162729

/-!
# A162730: Semiprimes n = pq such that q = kp - k + 1, where p,q primes and k > 1.

The programs for A162730, there is no canonical definition to state claims against.
-/

/-! ## A162730.P4422452215406735043

`record[A055615(A276818(n+1))]`
-/

namespace A162730.P4422452215406735043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A276818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162730.P4422452215406735043

/-! ## A162730.P6883072494359189102

`record[A007947(A108574(n+2))]`
-/

namespace A162730.P6883072494359189102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A108574 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162730.P6883072494359189102

/-! ## A162730.P17187147200036389128

`filter[A108574(n+1), A008966(#)]`
-/

namespace A162730.P17187147200036389128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A162730.P17187147200036389128

/-! ## A162730.P12329281399454344463

`filter[A108574(n+1), A049240(#)]`
-/

namespace A162730.P12329281399454344463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A162730.P12329281399454344463

/-! ## A162730.P12925107682980638509

`filter[A108574(n+1), A132350(#)]`
-/

namespace A162730.P12925107682980638509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A162730.P12925107682980638509

/-! ## A162730.P4368162199977000895

`filter[A108574(n+1), A143731(#)]`
-/

namespace A162730.P4368162199977000895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A162730.P4368162199977000895

/-! ## A162730.P80344983452534783

`filter[A108574(n+1), A181183(#)]`
-/

namespace A162730.P80344983452534783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A162730.P80344983452534783

/-! ## A162730.P3738198922751063905

`filter[A108574(n+1), A215480(#)]`
-/

namespace A162730.P3738198922751063905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A162730.P3738198922751063905

/-! ## A162730.P4781035710901952814

`filter[A276818(n+1), A064911(#)]`
-/

namespace A162730.P4781035710901952814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A162730.P4781035710901952814

/-! ## A162730.P14516936366398610008

`filter[A276818(n+1), A065043(#)]`
-/

namespace A162730.P14516936366398610008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A162730.P14516936366398610008

/-!
# A162731: a(n) is the n-th triprime (A014612) minus its central prime factor.

The programs for A162731, the canonical program `A162731.P11062943425591500254` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162731 has offset 1).

The definition of A162731 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, A162361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162731.P11062943425591500254

`A014612(n+1)-A162361(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A162731

/-- `A014612(n+1)-A162361(n+1)` -/
def P11062943425591500254.Spec : Prop :=
  ∀ n, P11062943425591500254.a n = A162731 (n + 1)

theorem P11062943425591500254.correct : P11062943425591500254.Spec := by
  intro n
  simp only [A162731, Nat.add_sub_cancel]

end A162731

/-! ## A162731.P9841181298139163226

`(A163173(n+1)-1)*A162361(n+1)`
-/

namespace A162731.P9841181298139163226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A163173 (n + 1) - 1) * A162361 (n + 1)

end

end A162731.P9841181298139163226

namespace A162731

/-- `(A163173(n+1)-1)*A162361(n+1)` -/
def P9841181298139163226.Spec : Prop :=
  ∀ n, P9841181298139163226.a n = A162731 (n + 1)

end A162731

/-! ## A162731.P2990832186627188203

`eq[3, A001222(n+1)]+1-A162361(n+1)`
-/

namespace A162731.P2990832186627188203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A162361 (n + 1)

end

end A162731.P2990832186627188203

namespace A162731

/-- `eq[3, A001222(n+1)]+1-A162361(n+1)` -/
def P2990832186627188203.Spec : Prop :=
  ∀ n, P2990832186627188203.a n = A162731 (n + 1)

end A162731

/-! ## A162731.P9244016981281968292

`A014612(n+1)-A014612(n+1)/A163173(n+1)`
-/

namespace A162731.P9244016981281968292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014612 (n + 1) : ℚ) - (A014612 (n + 1) : ℚ) / (A163173 (n + 1) : ℚ)

end

end A162731.P9244016981281968292

namespace A162731

/-- `A014612(n+1)-A014612(n+1)/A163173(n+1)` -/
def P9244016981281968292.Spec : Prop :=
  ∀ n, P9244016981281968292.a n = (A162731 (n + 1) : ℚ)

end A162731

/-! ## A162731.P1534909956065361272

`Δ[A110209(n)]-A162361(n+1)`
-/

namespace A162731.P1534909956065361272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A162361 (n + 1)

end

end A162731.P1534909956065361272

namespace A162731

/-- `Δ[A110209(n)]-A162361(n+1)` -/
def P1534909956065361272.Spec : Prop :=
  ∀ n, P1534909956065361272.a n = A162731 (n + 1)

end A162731

/-! ## A162731.P2459179580463293606

`A014612(n+1)-p?[A070821(n+1)]`
-/

namespace A162731.P2459179580463293606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162731.P2459179580463293606

namespace A162731

/-- `A014612(n+1)-p?[A070821(n+1)]` -/
def P2459179580463293606.Spec : Prop :=
  ∀ n, P2459179580463293606.a n = A162731 (n + 1)

end A162731

/-! ## A162731.P8212177446603040138

`eq[3, A001222(n+1)]+1-p?[A070821(n+1)]`
-/

namespace A162731.P8212177446603040138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

end

end A162731.P8212177446603040138

namespace A162731

/-- `eq[3, A001222(n+1)]+1-p?[A070821(n+1)]` -/
def P8212177446603040138.Spec : Prop :=
  ∀ n, P8212177446603040138.a n = A162731 (n + 1)

end A162731

/-! ## A162731.P9264800269576099292

`eq[3, A001222(A028310(n))]-A162361(n+1)`
-/

namespace A162731.P9264800269576099292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A162361 (n + 1)

end

end A162731.P9264800269576099292

namespace A162731

/-- `eq[3, A001222(A028310(n))]-A162361(n+1)` -/
def P9264800269576099292.Spec : Prop :=
  ∀ n, P9264800269576099292.a n = A162731 (n + 1)

end A162731

/-! ## A162731.P5562591958297614696

`eq[4, A001222(A004277(n))]-A162361(n+1)`
-/

namespace A162731.P5562591958297614696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A162361 (n + 1)

end

end A162731.P5562591958297614696

namespace A162731

/-- `eq[4, A001222(A004277(n))]-A162361(n+1)` -/
def P5562591958297614696.Spec : Prop :=
  ∀ n, P5562591958297614696.a n = A162731 (n + 1)

end A162731

/-!
# A162734: An alternating sum of all numbers from the n-th up to the (n+1)st isolated prime.

The programs for A162734, the canonical program `A162734.P9082709708331958527` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162734 has offset 1).

The definition of A162734 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162734.P9082709708331958527

`A001057(A007510(n+2))-A001057(A007510(n+1)-1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A162734

/-- `A001057(A007510(n+2))-A001057(A007510(n+1)-1)` -/
def P9082709708331958527.Spec : Prop :=
  ∀ n, P9082709708331958527.a n = A162734 (n + 1)

theorem P9082709708331958527.correct : P9082709708331958527.Spec := by
  intro n
  simp only [A162734, Nat.add_sub_cancel]

end A162734

/-! ## A162734.P11719594943642466646

`A167277(n+1)+A028242(Δ[A167277(n+1)])`
-/

namespace A162734.P11719594943642466646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 1) + A028242 (f1 (n + 1) - f1 n).toNat

end

end A162734.P11719594943642466646

namespace A162734

/-- `A167277(n+1)+A028242(Δ[A167277(n+1)])` -/
def P11719594943642466646.Spec : Prop :=
  ∀ n, P11719594943642466646.a n = A162734 (n + 1)

end A162734

/-! ## A162734.P17303391786155547562

`A007510(n+1)+Δ[A028242(A007510(n+1))]`
-/

namespace A162734.P17303391786155547562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A007510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) + (f1 (n + 1) - f1 n)

end

end A162734.P17303391786155547562

namespace A162734

/-- `A007510(n+1)+Δ[A028242(A007510(n+1))]` -/
def P17303391786155547562.Spec : Prop :=
  ∀ n, P17303391786155547562.a n = A162734 (n + 1)

end A162734

/-! ## A162734.P16466975369672263950

`A175126(A163654(n+1))`
-/

namespace A162734.P16466975369672263950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A163654 (n + 1)).toNat

end

end A162734.P16466975369672263950

namespace A162734

/-- `A175126(A163654(n+1))` -/
def P16466975369672263950.Spec : Prop :=
  ∀ n, P16466975369672263950.a n = A162734 (n + 1)

end A162734

/-! ## A162734.P1236876380094637979

`A052938(A163654(n+1)-5)`
-/

namespace A162734.P1236876380094637979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A163654 (n + 1) - 5).toNat

end

end A162734.P1236876380094637979

namespace A162734

/-- `A052938(A163654(n+1)-5)` -/
def P1236876380094637979.Spec : Prop :=
  ∀ n, P1236876380094637979.a n = A162734 (n + 1)

end A162734

/-!
# A162735: An alternating sum of all numbers from prime(n) to prime(n+1).

The programs for A162735, the canonical program `A162735.P15250219322694002563` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162735 has offset 1).

The definition of A162735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162735.P15250219322694002563

`A001057(A000040(n+2))-A001057(A000040(n+1)-1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A162735

/-- `A001057(A000040(n+2))-A001057(A000040(n+1)-1)` -/
def P15250219322694002563.Spec : Prop :=
  ∀ n, P15250219322694002563.a n = A162735 (n + 1)

theorem P15250219322694002563.correct : P15250219322694002563.Spec := by
  intro n
  simp only [A162735, Nat.add_sub_cancel]

end A162735

/-! ## A162735.P12122576252557126689

`ceil(sqrt(A006094(n+1)-5))`
-/

namespace A162735.P12122576252557126689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A006094 (n + 1) - 5 : ℝ)⌉

end

end A162735.P12122576252557126689

namespace A162735

/-- `ceil(sqrt(A006094(n+1)-5))` -/
def P12122576252557126689.Spec : Prop :=
  ∀ n, P12122576252557126689.a n = A162735 (n + 1)

end A162735

/-! ## A162735.P14277834411465322154

`A158388(n)+A078444(n+1)`
-/

namespace A162735.P14277834411465322154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A078444 (n + 1)

end

end A162735.P14277834411465322154

namespace A162735

/-- `A158388(n)+A078444(n+1)` -/
def P14277834411465322154.Spec : Prop :=
  ∀ n, P14277834411465322154.a n = A162735 (n + 1)

end A162735

/-! ## A162735.P11953482724284231723

`∪[A024675(n+1), A016782(n)]`
-/

namespace A162735.P11953482724284231723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016782 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162735.P11953482724284231723

namespace A162735

/-- `∪[A024675(n+1), A016782(n)]` -/
def P11953482724284231723.Spec : Prop :=
  ∀ n, (P11953482724284231723.a n : ℤ) = A162735 (n + 1)

end A162735

/-! ## A162735.P314386218576832839

`A100820(n+1)+A055670(n+1)`
-/

namespace A162735.P314386218576832839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1) + A055670 (n + 1)

end

end A162735.P314386218576832839

namespace A162735

/-- `A100820(n+1)+A055670(n+1)` -/
def P314386218576832839.Spec : Prop :=
  ∀ n, P314386218576832839.a n = A162735 (n + 1)

end A162735

/-! ## A162735.P4865275603189275314

`A078444(n+1)-A153881(n+1)`
-/

namespace A162735.P4865275603189275314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (n + 1) - A153881 (n + 1)

end

end A162735.P4865275603189275314

namespace A162735

/-- `A078444(n+1)-A153881(n+1)` -/
def P4865275603189275314.Spec : Prop :=
  ∀ n, P4865275603189275314.a n = A162735 (n + 1)

end A162735

/-! ## A162735.P18230453086353295284

`A165972(n+1)-A100820(n+1)`
-/

namespace A162735.P18230453086353295284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1) - A100820 (n + 1)

end

end A162735.P18230453086353295284

namespace A162735

/-- `A165972(n+1)-A100820(n+1)` -/
def P18230453086353295284.Spec : Prop :=
  ∀ n, P18230453086353295284.a n = A162735 (n + 1)

end A162735

/-! ## A162735.P2151555327372165713

`A057427(n)*A078444(n+1)+1`
-/

namespace A162735.P2151555327372165713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A078444 (n + 1) + 1

end

end A162735.P2151555327372165713

namespace A162735

/-- `A057427(n)*A078444(n+1)+1` -/
def P2151555327372165713.Spec : Prop :=
  ∀ n, P2151555327372165713.a n = A162735 (n + 1)

end A162735

/-! ## A162735.P17247216034599234619

`(A165972(n+1)+A055670(n+1))/2`
-/

namespace A162735.P17247216034599234619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165972 (n + 1) + A055670 (n + 1) : ℚ) / 2

end

end A162735.P17247216034599234619

namespace A162735

/-- `(A165972(n+1)+A055670(n+1))/2` -/
def P17247216034599234619.Spec : Prop :=
  ∀ n, P17247216034599234619.a n = (A162735 (n + 1) : ℚ)

end A162735

/-! ## A162735.P2237656591900657141

`A162345(n+1)+A162800(n+1)-A115061(n+1)`
-/

namespace A162735.P2237656591900657141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1) + (A162800 (n + 1) - A115061 (n + 1))

end

end A162735.P2237656591900657141

namespace A162735

/-- `A162345(n+1)+A162800(n+1)-A115061(n+1)` -/
def P2237656591900657141.Spec : Prop :=
  ∀ n, P2237656591900657141.a n = A162735 (n + 1)

end A162735

/-! ## A162735.P14430713436130646125

`A006005(n+1)+A162800(n+1)-A008578(n+2)`
-/

namespace A162735.P14430713436130646125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + (A162800 (n + 1) - A008578 (n + 2))

end

end A162735.P14430713436130646125

namespace A162735

/-- `A006005(n+1)+A162800(n+1)-A008578(n+2)` -/
def P14430713436130646125.Spec : Prop :=
  ∀ n, P14430713436130646125.a n = A162735 (n + 1)

end A162735

/-! ## A162735.P5999797649441371733

`A001043(n+1)/A020639(A001043(n+1))`
-/

namespace A162735.P5999797649441371733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001043 (n + 1) : ℚ) / (A020639 (A001043 (n + 1)).toNat : ℚ)

end

end A162735.P5999797649441371733

namespace A162735

/-- `A001043(n+1)/A020639(A001043(n+1))` -/
def P5999797649441371733.Spec : Prop :=
  ∀ n, P5999797649441371733.a n = (A162735 (n + 1) : ℚ)

end A162735

/-! ## A162735.P5409988923261469824

`record[A286578(n+2)+n+1]`
-/

namespace A162735.P5409988923261469824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286578 (n + 2) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162735.P5409988923261469824

namespace A162735

/-- `record[A286578(n+2)+n+1]` -/
def P5409988923261469824.Spec : Prop :=
  ∀ n, P5409988923261469824.a n = A162735 (n + 1)

end A162735

/-! ## A162735.P12477899281988058953

`record[gcd(n, A210882(n+1))]`
-/

namespace A162735.P12477899281988058953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A210882 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162735.P12477899281988058953

namespace A162735

/-- `record[gcd(n, A210882(n+1))]` -/
def P12477899281988058953.Spec : Prop :=
  ∀ n, (P12477899281988058953.a n : ℤ) = A162735 (n + 1)

end A162735

/-! ## A162735.P8467308626733339043

`A005451(A162800(n+1))`
-/

namespace A162735.P8467308626733339043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A162800 (n + 1)).toNat

end

end A162735.P8467308626733339043

namespace A162735

/-- `A005451(A162800(n+1))` -/
def P8467308626733339043.Spec : Prop :=
  ∀ n, P8467308626733339043.a n = A162735 (n + 1)

end A162735

/-! ## A162735.P2386993699982226082

`eq[A210882(n+1), A254667(n)]`
-/

namespace A162735.P2386993699982226082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162735.P2386993699982226082

namespace A162735

/-- `eq[A210882(n+1), A254667(n)]` -/
def P2386993699982226082.Spec : Prop :=
  ∀ n, (P2386993699982226082.a n : ℤ) = A162735 (n + 1)

end A162735

/-! ## A162735.P19356151483933187

`eq[2*A007920(n), A166597(n)]`
-/

namespace A162735.P19356151483933187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162735.P19356151483933187

namespace A162735

/-- `eq[2*A007920(n), A166597(n)]` -/
def P19356151483933187.Spec : Prop :=
  ∀ n, (P19356151483933187.a n : ℤ) = A162735 (n + 1)

end A162735

/-! ## A162735.P15286671363626747306

`eq[2*A013632(n), A166597(n)]`
-/

namespace A162735.P15286671363626747306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162735.P15286671363626747306

namespace A162735

/-- `eq[2*A013632(n), A166597(n)]` -/
def P15286671363626747306.Spec : Prop :=
  ∀ n, (P15286671363626747306.a n : ℤ) = A162735 (n + 1)

end A162735

/-! ## A162735.P17332088560657845894

`eq[A051700(n)², A325142(n)²]`
-/

namespace A162735.P17332088560657845894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162735.P17332088560657845894

namespace A162735

/-- `eq[A051700(n)², A325142(n)²]` -/
def P17332088560657845894.Spec : Prop :=
  ∀ n, (P17332088560657845894.a n : ℤ) = A162735 (n + 1)

end A162735

/-! ## A162735.P14149743980841358881

`∩[A011974(n+1), A004275(n)]/2`
-/

namespace A162735.P14149743980841358881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A162735.P14149743980841358881

namespace A162735

/-- `∩[A011974(n+1), A004275(n)]/2` -/
def P14149743980841358881.Spec : Prop :=
  ∀ n, P14149743980841358881.a n = (A162735 (n + 1) : ℚ)

end A162735

/-!
# A162738: a(n) is the smallest positive multiple of {the n-th composite} that is greater than the n-th prime.

The programs for A162738, the canonical program `A162738.P6289440250695548267` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162738 has offset 1).

The definition of A162738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162738.P6289440250695548267

`A064799(n+1)-A065859(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A162738

/-- `A064799(n+1)-A065859(n+1)` -/
def P6289440250695548267.Spec : Prop :=
  ∀ n, P6289440250695548267.a n = A162738 (n + 1)

theorem P6289440250695548267.correct : P6289440250695548267.Spec := by
  intro n
  simp only [A162738, Nat.add_sub_cancel]

end A162738

/-! ## A162738.P3730472311900330891

`(A073458(n+1)+1)*A002808(n+1)`
-/

namespace A162738.P3730472311900330891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073458 (n + 1) + 1) * A002808 (n + 1)

end

end A162738.P3730472311900330891

namespace A162738

/-- `(A073458(n+1)+1)*A002808(n+1)` -/
def P3730472311900330891.Spec : Prop :=
  ∀ n, P3730472311900330891.a n = A162738 (n + 1)

end A162738

/-! ## A162738.P16755529285300222080

`(A073458(n+1)+1)*A018252(n+2)`
-/

namespace A162738.P16755529285300222080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073458 (n + 1) + 1) * A018252 (n + 2)

end

end A162738.P16755529285300222080

namespace A162738

/-- `(A073458(n+1)+1)*A018252(n+2)` -/
def P16755529285300222080.Spec : Prop :=
  ∀ n, P16755529285300222080.a n = A162738 (n + 1)

end A162738

/-! ## A162738.P6190680626605004229

`A000040(n+1)+A002808(n+1)-A065859(n+1)`
-/

namespace A162738.P6190680626605004229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A002808 (n + 1) - A065859 (n + 1))

end

end A162738.P6190680626605004229

namespace A162738

/-- `A000040(n+1)+A002808(n+1)-A065859(n+1)` -/
def P6190680626605004229.Spec : Prop :=
  ∀ n, P6190680626605004229.a n = A162738 (n + 1)

theorem P6190680626605004229.correct : P6190680626605004229.Spec := by
  intro n
  simp only [A162738, Nat.add_sub_cancel, A162738.P6190680626605004229.a, A162738.P6289440250695548267.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A064799, A064799.P13450618005534133469.a, A065859, A065859.P11041658421309913817.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162738

/-! ## A162738.P16728192955094684266

`A064799(n+1)-A000040(n+1)%A002808(n+1)`
-/

namespace A162738.P16728192955094684266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1) - Int.tmod (A000040 (n + 1)) (A002808 (n + 1))

end

end A162738.P16728192955094684266

namespace A162738

/-- `A064799(n+1)-A000040(n+1)%A002808(n+1)` -/
def P16728192955094684266.Spec : Prop :=
  ∀ n, P16728192955094684266.a n = A162738 (n + 1)

end A162738

/-! ## A162738.P10321344669926929506

`A064799(n+1)-A064799(n+1)%lt[1, A003415(n)]`
-/

namespace A162738.P10321344669926929506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1) - Int.tmod (A064799 (n + 1)) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A162738.P10321344669926929506

namespace A162738

/-- `A064799(n+1)-A064799(n+1)%lt[1, A003415(n)]` -/
def P10321344669926929506.Spec : Prop :=
  ∀ n, P10321344669926929506.a n = A162738 (n + 1)

end A162738

/-! ## A162738.P8023841937473295798

`A088346(n+3)-A088346(n+3)%A002808(n+1)`
-/

namespace A162738.P8023841937473295798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088346 (n + 3) - Int.tmod (A088346 (n + 3)) (A002808 (n + 1))

end

end A162738.P8023841937473295798

namespace A162738

/-- `A088346(n+3)-A088346(n+3)%A002808(n+1)` -/
def P8023841937473295798.Spec : Prop :=
  ∀ n, P8023841937473295798.a n = A162738 (n + 1)

end A162738

/-!
# A162739: G.f. is the polynomial (Product_{k=1..32} (1 - x^(3*k)))/(1-x)^32.

The programs for A162739, there is no canonical definition to state claims against.
-/

/-! ## A162739.P7902521703698410764

`∑{d}[A000079(n), A162737(A032741(#))]`
-/

namespace A162739.P7902521703698410764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A162737 (A032741 d).toNat

end

end A162739.P7902521703698410764

/-!
# A162740: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^3 = I.

The programs for A162740, the canonical program `A162740.P5779390612089083398` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162740 has offset 0).

The definition of A162740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162740.P5779390612089083398

`2*a(n-1)+2*a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=30`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162740

/-- `2*a(n-1)+2*a(n-2)-3*a(n-3)` -/
def P5779390612089083398.Spec : Prop :=
  ∀ n, P5779390612089083398.a n = A162740 n

theorem P5779390612089083398.correct : P5779390612089083398.Spec := by
  intro n
  simp only [A162740]

end A162740

/-! ## A162740.P2744880200147288647

`ogf((1+2x+2x^2+x^3)/(1-2x-2x^2+3x^3))`
-/

namespace A162740.P2744880200147288647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 1] [1, -2, -2, 3] n

end

end A162740.P2744880200147288647

namespace A162740

/-- `ogf((1+2x+2x^2+x^3)/(1-2x-2x^2+3x^3))` -/
def P2744880200147288647.Spec : Prop :=
  ∀ n, P2744880200147288647.a n = A162740 n

end A162740

/-! ## A162740.P990392954663648312

`A006138(n+1)+A105476(n)-2`
-/

namespace A162740.P990392954663648312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 (n + 1) + (A105476 n - 2)

end

end A162740.P990392954663648312

namespace A162740

/-- `A006138(n+1)+A105476(n)-2` -/
def P990392954663648312.Spec : Prop :=
  ∀ n, P990392954663648312.a n = A162740 n

end A162740

/-! ## A162740.P2684191906668602317

`∑[A105476(n+1)]+A105476(n)-1`
-/

namespace A162740.P2684191906668602317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A105476 n - 1)

end

end A162740.P2684191906668602317

namespace A162740

/-- `∑[A105476(n+1)]+A105476(n)-1` -/
def P2684191906668602317.Spec : Prop :=
  ∀ n, P2684191906668602317.a n = A162740 n

end A162740

/-!
# A162741: Fibonacci-Pascal triangle; same as Pascal triangle, but beginning another Pascal triangle to the right of each row starting at row 2.

The programs for A162741, there is no canonical definition to state claims against.
-/

/-! ## A162741.P18347759697659244902

`A123736(comp[∑[2*n]])`
-/

namespace A162741.P18347759697659244902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123736 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A162741.P18347759697659244902

/-! ## A162741.P11624380578691911642

`A027926(A020703(n+1)-1)`
-/

namespace A162741.P11624380578691911642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A020703 (n + 1) - 1).toNat

end

end A162741.P11624380578691911642

/-! ## A162741.P14417275151011011047

`A027926(A020703(n+2))`
-/

namespace A162741.P14417275151011011047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A020703 (n + 2)).toNat

end

end A162741.P14417275151011011047

/-! ## A162741.P7711112668021495239

`A208245(A007606(n+1))`
-/

namespace A162741.P7711112668021495239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208245 (A007606 (n + 1)).toNat

end

end A162741.P7711112668021495239

/-! ## A162741.P13920503479750505618

`A208245(A161983(n+1))`
-/

namespace A162741.P13920503479750505618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208245 (A161983 (n + 1)).toNat

end

end A162741.P13920503479750505618

/-! ## A162741.P13815889828427323973

`A208245(A316670(n+1)+1)`
-/

namespace A162741.P13815889828427323973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208245 (A316670 (n + 1) + 1).toNat

end

end A162741.P13815889828427323973

/-! ## A162741.P15042139886330265547

`A208245(A316670(n+2))`
-/

namespace A162741.P15042139886330265547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208245 (A316670 (n + 2)).toNat

end

end A162741.P15042139886330265547

/-!
# A162742: Reverse digits in the binary representation of each prime base in the prime factorization of n.

The programs for A162742, there is no canonical definition to state claims against.
-/

/-! ## A162742.P13208175925174149177

`A235027((n+1)/2^val(n+1, 2))`
-/

namespace A162742.P13208175925174149177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A162742.P13208175925174149177

/-! ## A162742.P15922944259955230193

`A235027((n+1)/xor(n, or(n, n+1)))`
-/

namespace A162742.P15922944259955230193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A162742.P15922944259955230193

/-! ## A162742.P1291233902241320393

`A235027((n+1)*2^-val(n+1, 2))`
-/

namespace A162742.P1291233902241320393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat

end

end A162742.P1291233902241320393

/-! ## A162742.P661643267167839721

`A235027((n+1)/and(n+1, -(n+1)))`
-/

namespace A162742.P661643267167839721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A162742.P661643267167839721

/-! ## A162742.P10432658139447079583

`A235027((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A162742.P10432658139447079583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A162742.P10432658139447079583

/-! ## A162742.P16889029394038922574

`A235027((n+1)/round(xor(n, n+1)/2))`
-/

namespace A162742.P16889029394038922574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))).toNat

end

end A162742.P16889029394038922574

/-! ## A162742.P6095092579006956621

`A235027(-((n+1)/or(n+1, -(n+1))))`
-/

namespace A162742.P6095092579006956621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (SequenceMachineLib.roundAway (-((n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))).toNat

end

end A162742.P6095092579006956621

/-! ## A162742.P10406962785676195573

`A235027(A000265(n+1))`
-/

namespace A162742.P10406962785676195573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A000265 (n + 1)).toNat

end

end A162742.P10406962785676195573

/-! ## A162742.P17240299605114248956

`A235027((n+1)/A006519(n+1))`
-/

namespace A162742.P17240299605114248956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A162742.P17240299605114248956

/-! ## A162742.P14471863886818354712

`A235027(A025480(n)+A003602(n+1))`
-/

namespace A162742.P14471863886818354712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A025480 n + A003602 (n + 1)).toNat

end

end A162742.P14471863886818354712

/-! ## A162742.P1956953026143918142

`A235027(A030101(A030101(n+1)))`
-/

namespace A162742.P1956953026143918142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A030101 (A030101 (n + 1)).toNat).toNat

end

end A162742.P1956953026143918142

/-! ## A162742.P15565050489112411650

`A235027(A081431(A081432(n+1)))`
-/

namespace A162742.P15565050489112411650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A081431 (A081432 (n + 1)).toNat).toNat

end

end A162742.P15565050489112411650

/-! ## A162742.P3471834933885142620

`A235027(A054429(A036044(A036044(A054429(n+1)))))`
-/

namespace A162742.P3471834933885142620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A054429 (A036044 (A036044 (A054429 (n + 1)).toNat).toNat).toNat).toNat

end

end A162742.P3471834933885142620

/-! ## A162742.P387626417278932210

`A030101(A161955(n+1))`
-/

namespace A162742.P387626417278932210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A161955 (n + 1)).toNat

end

end A162742.P387626417278932210

/-! ## A162742.P4431999818565934641

`A325401(2*A161955(n+1))`
-/

namespace A162742.P4431999818565934641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A161955 (n + 1)).toNat

end

end A162742.P4431999818565934641

/-! ## A162742.P8282268139979817897

`A325401(A161955(n+1)+A161955(n+1))`
-/

namespace A162742.P8282268139979817897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A161955 (n + 1) + A161955 (n + 1)).toNat

end

end A162742.P8282268139979817897

/-!
# A162743: Number of reduced words of length n in Coxeter group on 6 generators S_i with relations (S_i)^2 = (S_i S_j)^3 = I.

The programs for A162743, there is no canonical definition to state claims against.
-/

/-! ## A162743.P12490238615639174476

`A004525(A008458(n*A024718(n)))`
-/

namespace A162743.P12490238615639174476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008458 ((n : ℤ) * A024718 n).toNat).toNat

end

end A162743.P12490238615639174476

/-! ## A162743.P17552431438164259189

`A026741(A008458(n)*A024718(n))`
-/

namespace A162743.P17552431438164259189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A008458 n * A024718 n).toNat

end

end A162743.P17552431438164259189

/-!
# A162744: Number of reduced words of length n in Coxeter group on 7 generators S_i with relations (S_i)^2 = (S_i S_j)^3 = I.

The programs for A162744, there is no canonical definition to state claims against.
-/

/-! ## A162744.P7274493619952944118

`∑[A357848(∑[A178325(n)])]`
-/

namespace A162744.P7274493619952944118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178325 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357848 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162744.P7274493619952944118

/-!
# A162745: A Fibonacci-Pascal triangle.

The programs for A162745, there is no canonical definition to state claims against.
-/

/-! ## A162745.P15680886402012902254

`A001263(n+1)-A010894(A026747(n))`
-/

namespace A162745.P15680886402012902254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) - A010894 ((A026747 n).toNat + 21)

end

end A162745.P15680886402012902254

/-! ## A162745.P6465826464535829968

`A001263(n+1)-A090330(A008288(n))`
-/

namespace A162745.P6465826464535829968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) - A090330 (A008288 n).toNat

end

end A162745.P6465826464535829968

/-! ## A162745.P2222576124293721053

`A001263(n+1)-A028961(A092450(n))`
-/

namespace A162745.P2222576124293721053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) - A028961 (A092450 n).toNat

end

end A162745.P2222576124293721053

/-! ## A162745.P6538478206801606376

`A001263(n+1)-A018843(A173741(n))`
-/

namespace A162745.P6538478206801606376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) - A018843 (A173741 n).toNat

end

end A162745.P6538478206801606376

/-! ## A162745.P6684505552752168995

`A001263(n+1)-A118682(A059117(n)²)`
-/

namespace A162745.P6684505552752168995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) - A118682 (A059117 n ^ 2).toNat

end

end A162745.P6684505552752168995

/-!
# A162746: Row sums of Fibonacci-Pascal triangle A162745.

The programs for A162746, there is no canonical definition to state claims against.
-/

/-! ## A162746.P8278066541116622630

`Δ[A032766(A025192(n))]-A238846(n)`
-/

namespace A162746.P8278066541116622630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A025192 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238846 n

end

end A162746.P8278066541116622630

/-! ## A162746.P7738836036843697611

`record[A275431(n+1)-A056711(A000586(n))]`
-/

namespace A162746.P7738836036843697611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275431 (n + 1) - A056711 (A000586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162746.P7738836036843697611

/-! ## A162746.P373592253299865369

`A000108(n+1)-A241273(A241273(∑[n+2]))`
-/

namespace A162746.P373592253299865369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A241273 (A241273 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A162746.P373592253299865369

/-! ## A162746.P16371644054362724154

`A000108(n+1)-A014085(A184945(3*n+1))`
-/

namespace A162746.P16371644054362724154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A014085 (A184945 (3 * n + 1)).toNat

end

end A162746.P16371644054362724154

/-!
# A162747: A factorial-Pascal matrix.

The programs for A162747, there is no canonical definition to state claims against.
-/

/-! ## A162747.P11379188619049242914

`A025465(A059922(n))+A001263(n+1)`
-/

namespace A162747.P11379188619049242914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A059922 n).toNat + A001263 (n + 1)

end

end A162747.P11379188619049242914

/-! ## A162747.P1459721908390221786

`A102683(A022166(n))+A001263(n+1)`
-/

namespace A162747.P1459721908390221786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A022166 n).toNat + A001263 (n + 1)

end

end A162747.P1459721908390221786

/-! ## A162747.P7909937473567163206

`A025456(A168291(n))+A001263(n+1)`
-/

namespace A162747.P7909937473567163206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (A168291 n).toNat + A001263 (n + 1)

end

end A162747.P7909937473567163206

/-! ## A162747.P1892086762610907527

`A185284(A028275(n))+A001263(n+1)`
-/

namespace A162747.P1892086762610907527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A028275 n).toNat + A001263 (n + 1)

end

end A162747.P1892086762610907527

/-! ## A162747.P18296780022557388863

`A056170(A260340(n))+A001263(n+1)`
-/

namespace A162747.P18296780022557388863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A260340 n).toNat + A001263 (n + 1)

end

end A162747.P18296780022557388863

/-!
# A162748: Row sums of factorial-Pascal matrix A162747.

The programs for A162748, there is no canonical definition to state claims against.
-/

/-! ## A162748.P5502931477348591558

`A212172(A033321(n))+A126567(n)`
-/

namespace A162748.P5502931477348591558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212172 (A033321 n).toNat + A126567 n

end

end A162748.P5502931477348591558

/-! ## A162748.P18433757489499623553

`A212172(A033321(n))+A126569(n)`
-/

namespace A162748.P18433757489499623553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212172 (A033321 n).toNat + A126569 n

end

end A162748.P18433757489499623553

/-! ## A162748.P16510152792985115128

`A126567(n)+A054899(A124482(n+1))`
-/

namespace A162748.P16510152792985115128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126567 n + A054899 (A124482 (n + 1)).toNat

end

end A162748.P16510152792985115128

/-! ## A162748.P5966675515914477135

`A126579(A098851(2*(n+1)))+A126569(n)`
-/

namespace A162748.P5966675515914477135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126579 (A098851 (2 * (n + 1))).toNat + A126569 n

end

end A162748.P5966675515914477135

/-!
# A162749: Write the n-th (odd) binary palindrome in binary. If there are an even number of digits, then combine the middle two digits into one digit. If there are an odd number of digits, then double the middle digit. a(n) is the decimal result.

The programs for A162749, the canonical program `A162749.P12481426418206749222` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162749 has offset 1).

The definition of A162749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162749.P12481426418206749222

`A006995(A063946(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A162749

/-- `A006995(A063946(n+2))` -/
def P12481426418206749222.Spec : Prop :=
  ∀ n, P12481426418206749222.a n = A162749 (n + 1)

theorem P12481426418206749222.correct : P12481426418206749222.Spec := by
  intro n
  simp only [A162749, Nat.add_sub_cancel]

end A162749

/-! ## A162749.P9512872637138092666

`A006995(A007378(n+2)/A079882(n))`
-/

namespace A162749.P9512872637138092666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (SequenceMachineLib.roundAway ((A007378 (n + 2) : ℚ) / (A079882 n : ℚ))).toNat

end

end A162749.P9512872637138092666

namespace A162749

/-- `A006995(A007378(n+2)/A079882(n))` -/
def P9512872637138092666.Spec : Prop :=
  ∀ n, P9512872637138092666.a n = A162749 (n + 1)

end A162749

/-! ## A162749.P5371509730957975257

`A006995((A080637(n+1)+1)/A079882(n))`
-/

namespace A162749.P5371509730957975257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (SequenceMachineLib.roundAway ((A080637 (n + 1) + 1 : ℚ) / (A079882 n : ℚ))).toNat

end

end A162749.P5371509730957975257

namespace A162749

/-- `A006995((A080637(n+1)+1)/A079882(n))` -/
def P5371509730957975257.Spec : Prop :=
  ∀ n, P5371509730957975257.a n = A162749 (n + 1)

end A162749

/-! ## A162749.P2279802271309264611

`A006995(A007378(n+2)/Δ[A007378(n+2)])`
-/

namespace A162749.P2279802271309264611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007378 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (SequenceMachineLib.roundAway ((A007378 (n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ))).toNat

end

end A162749.P2279802271309264611

namespace A162749

/-- `A006995(A007378(n+2)/Δ[A007378(n+2)])` -/
def P2279802271309264611.Spec : Prop :=
  ∀ n, P2279802271309264611.a n = A162749 (n + 1)

end A162749

/-! ## A162749.P5926841868288891250

`A006995(A162750(n+1)+1)`
-/

namespace A162749.P5926841868288891250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A162750 (n + 1) + 1).toNat

end

end A162749.P5926841868288891250

namespace A162749

/-- `A006995(A162750(n+1)+1)` -/
def P5926841868288891250.Spec : Prop :=
  ∀ n, P5926841868288891250.a n = A162749 (n + 1)

end A162749

/-!
# A162750: The a(n)-th (odd) binary palindrome is A162749(n).

The programs for A162750, there is no canonical definition to state claims against.
-/

/-! ## A162750.P7442704341185452832

`A063946(n+2)-1`
-/

namespace A162750.P7442704341185452832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (n + 2) - 1

end

end A162750.P7442704341185452832

/-! ## A162750.P3109984825309275330

`∑[-Δ[-A063946(n+1)]]`
-/

namespace A162750.P3109984825309275330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A063946 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162750.P3109984825309275330

/-! ## A162750.P1593890659253500173

`floor(sinh(log(A063946(2*(n+2)))))`
-/

namespace A162750.P1593890659253500173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A063946 (2 * (n + 2)) : ℝ))⌋

end

end A162750.P1593890659253500173

/-! ## A162750.P14466045361350606845

`A346306(A132340(n+1))`
-/

namespace A162750.P14466045361350606845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346306 (A132340 (n + 1)).toNat

end

end A162750.P14466045361350606845

/-! ## A162750.P15758213514947780435

`A023443(A063946(n+2))`
-/

namespace A162750.P15758213514947780435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A063946 (n + 2)).toNat

end

end A162750.P15758213514947780435

/-! ## A162750.P12118240244971914979

`A117120(A054429(n+2))-1`
-/

namespace A162750.P12118240244971914979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (A054429 (n + 2)).toNat - 1

end

end A162750.P12118240244971914979

/-! ## A162750.P4153586569745815569

`A003188(A233279(n+2))-1`
-/

namespace A162750.P4153586569745815569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A233279 (n + 2)).toNat - 1

end

end A162750.P4153586569745815569

/-! ## A162750.P3758062183379352625

`A233280(A006068(n+2))-1`
-/

namespace A162750.P3758062183379352625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A006068 (n + 2)).toNat - 1

end

end A162750.P3758062183379352625

/-! ## A162750.P6731928682031324265

`A180201(A154435(n+2))-1`
-/

namespace A162750.P6731928682031324265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A154435 (n + 2)).toNat - 1

end

end A162750.P6731928682031324265

/-! ## A162750.P11220685051129984173

`A284120(A165199(n+2))-1`
-/

namespace A162750.P11220685051129984173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284120 (A165199 (n + 2)).toNat - 1

end

end A162750.P11220685051129984173

/-!
# A162751: Write down in binary the n-th positive (odd) integer that is a palindrome in base 2. Take only the leftmost half of the digits (including the middle digit if there are an odd number of digits). a(n) is the decimal equivalent of the result.

The programs for A162751, the canonical program `A162751.P1997072460768114134` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162751 has offset 1).

The definition of A162751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162751.P1997072460768114134

`a(n-1)%((2*n)%a(n-1)-n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162751

/-- `a(n-1)%((2*n)%a(n-1)-n)+1` -/
def P1997072460768114134.Spec : Prop :=
  ∀ n, P1997072460768114134.a n = A162751 (n + 1)

theorem P1997072460768114134.correct : P1997072460768114134.Spec := by
  intro n
  simp only [A162751, Nat.add_sub_cancel]

end A162751

/-! ## A162751.P8235946641801324519

`2-A053644(A130727(n))+n`
-/

namespace A162751.P8235946641801324519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A053644 (A130727 n).toNat + (n : ℤ)

end

end A162751.P8235946641801324519

namespace A162751

/-- `2-A053644(A130727(n))+n` -/
def P8235946641801324519.Spec : Prop :=
  ∀ n, P8235946641801324519.a n = A162751 (n + 1)

end A162751

/-! ## A162751.P10039657711209772844

`2-A053644(A078881(n+1))+n`
-/

namespace A162751.P10039657711209772844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A053644 (A078881 (n + 1)).toNat + (n : ℤ)

end

end A162751.P10039657711209772844

namespace A162751

/-- `2-A053644(A078881(n+1))+n` -/
def P10039657711209772844.Spec : Prop :=
  ∀ n, P10039657711209772844.a n = A162751 (n + 1)

end A162751

/-! ## A162751.P8632839574353199799

`floor(A080541(n+2)/2)`
-/

namespace A162751.P8632839574353199799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080541 (n + 2) : ℚ) / 2⌋

end

end A162751.P8632839574353199799

namespace A162751

/-- `floor(A080541(n+2)/2)` -/
def P8632839574353199799.Spec : Prop :=
  ∀ n, P8632839574353199799.a n = A162751 (n + 1)

end A162751

/-! ## A162751.P2882304545004240606

`2-Δ[A082662(n+1)]+n`
-/

namespace A162751.P2882304545004240606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A162751.P2882304545004240606

namespace A162751

/-- `2-Δ[A082662(n+1)]+n` -/
def P2882304545004240606.Spec : Prop :=
  ∀ n, P2882304545004240606.a n = A162751 (n + 1)

end A162751

/-! ## A162751.P6498435467606500381

`n+2-2^A099396(n+2)`
-/

namespace A162751.P6498435467606500381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) - (2 : ℚ) ^ (A099396 (n + 2) : ℤ)

end

end A162751.P6498435467606500381

namespace A162751

/-- `n+2-2^A099396(n+2)` -/
def P6498435467606500381.Spec : Prop :=
  ∀ n, P6498435467606500381.a n = (A162751 (n + 1) : ℚ)

end A162751

/-! ## A162751.P15938179320985626385

`A059893(floor(A059893(n+2)/2))`
-/

namespace A162751.P15938179320985626385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 ⌊(A059893 (n + 2) : ℚ) / 2⌋.toNat

end

end A162751.P15938179320985626385

namespace A162751

/-- `A059893(floor(A059893(n+2)/2))` -/
def P15938179320985626385.Spec : Prop :=
  ∀ n, P15938179320985626385.a n = A162751 (n + 1)

end A162751

/-! ## A162751.P16229388150021896839

`A059894(floor(A059894(n+2)/2))`
-/

namespace A162751.P16229388150021896839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 ⌊(A059894 (n + 2) : ℚ) / 2⌋.toNat

end

end A162751.P16229388150021896839

namespace A162751

/-- `A059894(floor(A059894(n+2)/2))` -/
def P16229388150021896839.Spec : Prop :=
  ∀ n, P16229388150021896839.a n = A162751 (n + 1)

end A162751

/-! ## A162751.P9166298171590345949

`n+2-A053644(A006165(n+2))`
-/

namespace A162751.P9166298171590345949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A053644 (A006165 (n + 2)).toNat

end

end A162751.P9166298171590345949

namespace A162751

/-- `n+2-A053644(A006165(n+2))` -/
def P9166298171590345949.Spec : Prop :=
  ∀ n, P9166298171590345949.a n = A162751 (n + 1)

end A162751

/-! ## A162751.P8973091932419272424

`n+2-A000079(A099396(n+2))`
-/

namespace A162751.P8973091932419272424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A000079 (A099396 (n + 2)).toNat

end

end A162751.P8973091932419272424

namespace A162751

/-- `n+2-A000079(A099396(n+2))` -/
def P8973091932419272424.Spec : Prop :=
  ∀ n, P8973091932419272424.a n = A162751 (n + 1)

end A162751

/-! ## A162751.P7165453829608830273

`(A112714(n+1)+1)/Δ[A112714(n+1)]`
-/

namespace A162751.P7165453829608830273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112714 (n + 1) + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A162751.P7165453829608830273

namespace A162751

/-- `(A112714(n+1)+1)/Δ[A112714(n+1)]` -/
def P7165453829608830273.Spec : Prop :=
  ∀ n, P7165453829608830273.a n = (A162751 (n + 1) : ℚ)

end A162751

/-! ## A162751.P5465177922810019935

`(A080075(n+1)-1)/Δ[A080075(n+1)]`
-/

namespace A162751.P5465177922810019935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080075 (n + 1) - 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A162751.P5465177922810019935

namespace A162751

/-- `(A080075(n+1)-1)/Δ[A080075(n+1)]` -/
def P5465177922810019935.Spec : Prop :=
  ∀ n, P5465177922810019935.a n = (A162751 (n + 1) : ℚ)

end A162751

/-! ## A162751.P978485553270143770

`A006165(n+2)-A053646(n+2)*A079944(n)`
-/

namespace A162751.P978485553270143770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 2) - A053646 (n + 2) * A079944 n

end

end A162751.P978485553270143770

namespace A162751

/-- `A006165(n+2)-A053646(n+2)*A079944(n)` -/
def P978485553270143770.Spec : Prop :=
  ∀ n, P978485553270143770.a n = A162751 (n + 1)

end A162751

/-! ## A162751.P5718437556484163214

`A082662(n+1)/(A082662(n+2)-A082662(n+1))`
-/

namespace A162751.P5718437556484163214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082662 (n + 1) : ℚ) / (A082662 (n + 2) - A082662 (n + 1) : ℚ)

end

end A162751.P5718437556484163214

namespace A162751

/-- `A082662(n+1)/(A082662(n+2)-A082662(n+1))` -/
def P5718437556484163214.Spec : Prop :=
  ∀ n, P5718437556484163214.a n = (A162751 (n + 1) : ℚ)

end A162751

/-! ## A162751.P2151444242035777346

`A004526(A080541(n+2))`
-/

namespace A162751.P2151444242035777346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A080541 (n + 2)).toNat

end

end A162751.P2151444242035777346

namespace A162751

/-- `A004526(A080541(n+2))` -/
def P2151444242035777346.Spec : Prop :=
  ∀ n, P2151444242035777346.a n = A162751 (n + 1)

end A162751

/-! ## A162751.P5637819228862196067

`A030109(or(1, A059893(n+2)))`
-/

namespace A162751.P5637819228862196067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (Int.lor 1 (A059893 (n + 2))).toNat

end

end A162751.P5637819228862196067

namespace A162751

/-- `A030109(or(1, A059893(n+2)))` -/
def P5637819228862196067.Spec : Prop :=
  ∀ n, P5637819228862196067.a n = A162751 (n + 1)

end A162751

/-! ## A162751.P2245337475377819771

`A059893(A004526(A059893(n+2)))`
-/

namespace A162751.P2245337475377819771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A004526 (A059893 (n + 2)).toNat).toNat

end

end A162751.P2245337475377819771

namespace A162751

/-- `A059893(A004526(A059893(n+2)))` -/
def P2245337475377819771.Spec : Prop :=
  ∀ n, P2245337475377819771.a n = A162751 (n + 1)

end A162751

/-! ## A162751.P8976465804242264448

`2-A072376(A080653(n+1))+n`
-/

namespace A162751.P8976465804242264448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A072376 (A080653 (n + 1)).toNat + (n : ℤ)

end

end A162751.P8976465804242264448

namespace A162751

/-- `2-A072376(A080653(n+1))+n` -/
def P8976465804242264448.Spec : Prop :=
  ∀ n, P8976465804242264448.a n = A162751 (n + 1)

end A162751

/-! ## A162751.P9435126120214183414

`A002265(A080541(2*(n+2)))`
-/

namespace A162751.P9435126120214183414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A080541 (2 * (n + 2))).toNat

end

end A162751.P9435126120214183414

namespace A162751

/-- `A002265(A080541(2*(n+2)))` -/
def P9435126120214183414.Spec : Prop :=
  ∀ n, P9435126120214183414.a n = A162751 (n + 1)

end A162751

/-! ## A162751.P10279490432722455968

`A002265(A080541(n+2)+A080541(n+2))`
-/

namespace A162751.P10279490432722455968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A080541 (n + 2) + A080541 (n + 2)).toNat

end

end A162751.P10279490432722455968

namespace A162751

/-- `A002265(A080541(n+2)+A080541(n+2))` -/
def P10279490432722455968.Spec : Prop :=
  ∀ n, P10279490432722455968.a n = A162751 (n + 1)

end A162751

/-!
# A162752: a(1)=2^2. a(n) = the smallest p^q, p and q primes, that is > a(n-1), and where the base (p) of a(n) is the exponent (q) of a(n-1).

The programs for A162752, there is no canonical definition to state claims against.
-/

/-! ## A162752.P7296521726626095125

`A162753(n)^A162753(n+1)`
-/

namespace A162752.P7296521726626095125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162753 n : ℚ) ^ (A162753 (n + 1) : ℤ)

end

end A162752.P7296521726626095125

/-! ## A162752.P17386519640838870047

`A014963(A162753(n))^A162753(A291769(n))`
-/

namespace A162752.P17386519640838870047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A162753 n).toNat : ℚ) ^ (A162753 (A291769 n).toNat : ℤ)

end

end A162752.P17386519640838870047

/-! ## A162752.P8658031252163246282

`A014963(A162753(n))^A162753(A348553(n))`
-/

namespace A162752.P8658031252163246282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A162753 n).toNat : ℚ) ^ (A162753 (A348553 n).toNat : ℤ)

end

end A162752.P8658031252163246282

/-! ## A162752.P1106629820260965339

`A014963(A162753(n))^A162753(A077168(n))`
-/

namespace A162752.P1106629820260965339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A162753 n).toNat : ℚ) ^ (A162753 (A077168 n).toNat : ℤ)

end

end A162752.P1106629820260965339

/-!
# A162753: a(0)=a(1)=2; a(n) is the smallest prime such that a(n-1)^a(n) > a(n-2)^a(n-1).

The programs for A162753, the canonical program `A162753.P6450214016435119612` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162753 has offset 0).

The definition of A162753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162753.P6450214016435119612

`A000040(floor(n/2)-and(1, a(n-1))+1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A162753

/-- `A000040(floor(n/2)-and(1, a(n-1))+1)` -/
def P6450214016435119612.Spec : Prop :=
  ∀ n, P6450214016435119612.a n = A162753 n

theorem P6450214016435119612.correct : P6450214016435119612.Spec := by
  intro n
  simp only [A162753]

end A162753

/-! ## A162753.P12375976748526527922

`A000040(A004526(n)+val(a(n-1), 2))` with `a(0)=2`
-/

namespace A162753.P12375976748526527922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A004526 n + (SequenceMachineLib.valuation (a (n - 1)).toNat 2 : ℤ)).toNat

end

end A162753.P12375976748526527922

namespace A162753

/-- `A000040(A004526(n)+val(a(n-1), 2))` -/
def P12375976748526527922.Spec : Prop :=
  ∀ n, P12375976748526527922.a n = A162753 n

end A162753

/-! ## A162753.P3645829193893137537

`A000040(A123108(n)+C(2, a(n-1)))` with `a(0)=2`
-/

namespace A162753.P3645829193893137537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A123108 n + (Nat.choose 2 (a (n - 1)).toNat : ℤ)).toNat

end

end A162753.P3645829193893137537

namespace A162753

/-- `A000040(A123108(n)+C(2, a(n-1)))` -/
def P3645829193893137537.Spec : Prop :=
  ∀ n, P3645829193893137537.a n = A162753 n

end A162753

/-! ## A162753.P16311808200340553312

`A000040(∑[A000035(n+1)]-A000035(a(n-1)))` with `a(0)=2`
-/

namespace A162753.P16311808200340553312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j - A000035 (a (n - 1)).toNat).toNat

end

end A162753.P16311808200340553312

namespace A162753

/-- `A000040(∑[A000035(n+1)]-A000035(a(n-1)))` -/
def P16311808200340553312.Spec : Prop :=
  ∀ n, P16311808200340553312.a n = A162753 n

end A162753

/-! ## A162753.P13088799019177336371

`A000040(A004526(n)+A004526(A055396(a(n-1)+1)))` with `a(0)=2`
-/

namespace A162753.P13088799019177336371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A004526 n + A004526 (A055396 (a (n - 1) + 1).toNat).toNat).toNat

end

end A162753.P13088799019177336371

namespace A162753

/-- `A000040(A004526(n)+A004526(A055396(a(n-1)+1)))` -/
def P13088799019177336371.Spec : Prop :=
  ∀ n, P13088799019177336371.a n = A162753 n

end A162753

/-! ## A162753.P14392180039120910022

`A008578(A162897(n+1))`
-/

namespace A162753.P14392180039120910022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A162897 (n + 1)).toNat

end

end A162753.P14392180039120910022

namespace A162753

/-- `A008578(A162897(n+1))` -/
def P14392180039120910022.Spec : Prop :=
  ∀ n, P14392180039120910022.a n = A162753 n

end A162753

/-! ## A162753.P2961216355007632479

`A000040(A162897(n+1)-1)`
-/

namespace A162753.P2961216355007632479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A162897 (n + 1) - 1).toNat

end

end A162753.P2961216355007632479

namespace A162753

/-- `A000040(A162897(n+1)-1)` -/
def P2961216355007632479.Spec : Prop :=
  ∀ n, P2961216355007632479.a n = A162753 n

end A162753

/-!
# A162754: Number of reduced words of length n in Coxeter group on 8 generators S_i with relations (S_i)^2 = (S_i S_j)^3 = I.

The programs for A162754, there is no canonical definition to state claims against.
-/

/-! ## A162754.P11841665331337772043

`A100721(A074616(n)-1)`
-/

namespace A162754.P11841665331337772043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100721 (A074616 n - 1).toNat

end

end A162754.P11841665331337772043

/-!
# A162755: Number of reduced words of length n in Coxeter group on 9 generators S_i with relations (S_i)^2 = (S_i S_j)^3 = I.

The programs for A162755, the canonical program `A162755.P14616930685765598267` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162755 has offset 0).

The definition of A162755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162755.P14616930685765598267

`7*a(n-1)+7*a(n-2)-28*a(n-3)` with `a(0)=1, a(1)=9, a(2)=72, a(3)=540`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162755

/-- `7*a(n-1)+7*a(n-2)-28*a(n-3)` -/
def P14616930685765598267.Spec : Prop :=
  ∀ n, P14616930685765598267.a n = A162755 n

theorem P14616930685765598267.correct : P14616930685765598267.Spec := by
  intro n
  simp only [A162755]

end A162755

/-!
# A162756: Number of reduced words of length n in Coxeter group on 10 generators S_i with relations (S_i)^2 = (S_i S_j)^3 = I.

The programs for A162756, there is no canonical definition to state claims against.
-/

/-! ## A162756.P6539795875359085161

`record[A130488(2*a(n-1)-a(n-2))]` with `a(0)=1, a(1)=0, a(2)=10`
-/

namespace A162756.P6539795875359085161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 10] fun n f1 =>
  A130488 (2 * f1 (n - 1) - f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162756.P6539795875359085161

/-!
# A162757: a(n) = 12*a(n-1)-33*a(n-2) for n > 1; a(0) = 1, a(1) = 7.

The programs for A162757, the canonical program `A162757.P5785747562053573369` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162757 has offset 0).

The definition of A162757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-33*a(n-2)` (program `A162757.P5785747562053573369`, by `A162757.P5785747562053573369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162757.P5785747562053573369

`12*a(n-1)-33*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162757

/-- `12*a(n-1)-33*a(n-2)` -/
def P5785747562053573369.Spec : Prop :=
  ∀ n, P5785747562053573369.a n = A162757 n

theorem P5785747562053573369.correct : P5785747562053573369.Spec := by
  intro n
  simp only [A162757]

end A162757

/-! ## A162757.P6749855686148922423

`A163472(n)/3`
-/

namespace A162757.P6749855686148922423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163472 n : ℚ) / 3

end

end A162757.P6749855686148922423

namespace A162757

/-- `A163472(n)/3` -/
def P6749855686148922423.Spec : Prop :=
  ∀ n, P6749855686148922423.a n = (A162757 n : ℚ)

end A162757

/-! ## A162757.P9174402738199234827

`(A164311(n)-A147961(n))/3`
-/

namespace A162757.P9174402738199234827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164311 n - A147961 n : ℚ) / 3

end

end A162757.P9174402738199234827

namespace A162757

/-- `(A164311(n)-A147961(n))/3` -/
def P9174402738199234827.Spec : Prop :=
  ∀ n, P9174402738199234827.a n = (A162757 n : ℚ)

end A162757

/-! ## A162757.P8692693787341226252

`((3+sqrt(3))*(sqrt(3)+6)^n+(3-sqrt(3))*(6-sqrt(3))^n)/6`
-/

namespace A162757.P8692693787341226252
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (3 : ℝ)) * (Real.sqrt (3 : ℝ) + 6) ^ n + (3 - Real.sqrt (3 : ℝ)) * (6 - Real.sqrt (3 : ℝ)) ^ n) / 6

end

end A162757.P8692693787341226252

namespace A162757

/-- `((3+sqrt(3))*(sqrt(3)+6)^n+(3-sqrt(3))*(6-sqrt(3))^n)/6` -/
def P8692693787341226252.Spec : Prop :=
  ∀ n, P8692693787341226252.a n = (A162757 n : ℝ)

theorem P8692693787341226252.correct : P8692693787341226252.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162757, Nat.add_sub_cancel, A162757.P8692693787341226252.a, A162757.P5785747562053573369.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162757, Nat.add_sub_cancel, A162757.P8692693787341226252.a, A162757.P5785747562053573369.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A162757

/-! ## A162757.P9040612474813089791

`round(Δ[A147961(n+1)/11]/3)`
-/

namespace A162757.P9040612474813089791
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147961 (n + 1) : ℚ) / 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n) / 3)

end

end A162757.P9040612474813089791

namespace A162757

/-- `round(Δ[A147961(n+1)/11]/3)` -/
def P9040612474813089791.Spec : Prop :=
  ∀ n, P9040612474813089791.a n = A162757 n

end A162757

/-!
# A162758: a(n) = 14*a(n-1)-46*a(n-2) for n > 1; a(0) = 1, a(1) = 8.

The programs for A162758, the canonical program `A162758.P7189135095054274233` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162758 has offset 0).

The definition of A162758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-46*a(n-2)` (program `A162758.P7189135095054274233`, by `A162758.P7189135095054274233.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162758.P7189135095054274233

`14*a(n-1)-46*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162758

/-- `14*a(n-1)-46*a(n-2)` -/
def P7189135095054274233.Spec : Prop :=
  ∀ n, P7189135095054274233.a n = A162758 n

theorem P7189135095054274233.correct : P7189135095054274233.Spec := by
  intro n
  simp only [A162758]

end A162758

/-! ## A162758.P13418896096005373245

`((3+sqrt(3))*(sqrt(3)+7)^n+(3-sqrt(3))*(7-sqrt(3))^n)/6`
-/

namespace A162758.P13418896096005373245
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (3 : ℝ)) * (Real.sqrt (3 : ℝ) + 7) ^ n + (3 - Real.sqrt (3 : ℝ)) * (7 - Real.sqrt (3 : ℝ)) ^ n) / 6

end

end A162758.P13418896096005373245

namespace A162758

/-- `((3+sqrt(3))*(sqrt(3)+7)^n+(3-sqrt(3))*(7-sqrt(3))^n)/6` -/
def P13418896096005373245.Spec : Prop :=
  ∀ n, P13418896096005373245.a n = (A162758 n : ℝ)

theorem P13418896096005373245.correct : P13418896096005373245.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162758, Nat.add_sub_cancel, A162758.P13418896096005373245.a, A162758.P7189135095054274233.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162758, Nat.add_sub_cancel, A162758.P13418896096005373245.a, A162758.P7189135095054274233.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A162758

/-! ## A162758.P14169960144086086114

`floor(A163473(n)/3)`
-/

namespace A162758.P14169960144086086114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163473 n : ℚ) / 3⌋

end

end A162758.P14169960144086086114

namespace A162758

/-- `floor(A163473(n)/3)` -/
def P14169960144086086114.Spec : Prop :=
  ∀ n, P14169960144086086114.a n = A162758 n

end A162758

/-! ## A162758.P15785540828161720202

`A163473(n)/3*char[A053186(n)]`
-/

namespace A162758.P15785540828161720202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163473 n : ℚ) / 3 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A162758.P15785540828161720202

namespace A162758

/-- `A163473(n)/3*char[A053186(n)]` -/
def P15785540828161720202.Spec : Prop :=
  ∀ n, P15785540828161720202.a n = (A162758 n : ℚ)

end A162758

/-! ## A162758.P12781868642948305175

`A010679(2*n)+A163473(n)/3`
-/

namespace A162758.P12781868642948305175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010679 (2 * n) : ℚ) + (A163473 n : ℚ) / 3

end

end A162758.P12781868642948305175

namespace A162758

/-- `A010679(2*n)+A163473(n)/3` -/
def P12781868642948305175.Spec : Prop :=
  ∀ n, P12781868642948305175.a n = (A162758 n : ℚ)

end A162758

/-! ## A162758.P9676928283416741491

`A162757(n)/A163472(n)*A163473(n)`
-/

namespace A162758.P9676928283416741491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162757 n : ℚ) / (A163472 n : ℚ) * (A163473 n : ℚ)

end

end A162758.P9676928283416741491

namespace A162758

/-- `A162757(n)/A163472(n)*A163473(n)` -/
def P9676928283416741491.Spec : Prop :=
  ∀ n, P9676928283416741491.a n = (A162758 n : ℚ)

end A162758

/-! ## A162758.P16877043372612056131

`sqrt(A163473(n)/3)^A020639(A000118(n))`
-/

namespace A162758.P16877043372612056131
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A163473 n : ℚ) / 3 : ℝ) ^ (A020639 (A000118 n).toNat : ℤ)

end

end A162758.P16877043372612056131

namespace A162758

/-- `sqrt(A163473(n)/3)^A020639(A000118(n))` -/
def P16877043372612056131.Spec : Prop :=
  ∀ n, P16877043372612056131.a n = (A162758 n : ℝ)

end A162758

/-!
# A162759: a(n) = 16*a(n-1)-61*a(n-2) for n > 1; a(0) = 1, a(1) = 9.

The programs for A162759, the canonical program `A162759.P17296840375610526605` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162759 has offset 0).

The definition of A162759 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-61*a(n-2)` (program `A162759.P17296840375610526605`, by `A162759.P17296840375610526605.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162759.P17296840375610526605

`16*a(n-1)-61*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162759

/-- `16*a(n-1)-61*a(n-2)` -/
def P17296840375610526605.Spec : Prop :=
  ∀ n, P17296840375610526605.a n = A162759 n

theorem P17296840375610526605.correct : P17296840375610526605.Spec := by
  intro n
  simp only [A162759]

end A162759

/-! ## A162759.P7074105541116292440

`((3+sqrt(3))*(8+sqrt(3))^n+(3-sqrt(3))*(8-sqrt(3))^n)/6`
-/

namespace A162759.P7074105541116292440
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (3 : ℝ)) * (8 + Real.sqrt (3 : ℝ)) ^ n + (3 - Real.sqrt (3 : ℝ)) * (8 - Real.sqrt (3 : ℝ)) ^ n) / 6

end

end A162759.P7074105541116292440

namespace A162759

/-- `((3+sqrt(3))*(8+sqrt(3))^n+(3-sqrt(3))*(8-sqrt(3))^n)/6` -/
def P7074105541116292440.Spec : Prop :=
  ∀ n, P7074105541116292440.a n = (A162759 n : ℝ)

theorem P7074105541116292440.correct : P7074105541116292440.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162759, Nat.add_sub_cancel, A162759.P7074105541116292440.a, A162759.P17296840375610526605.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162759, Nat.add_sub_cancel, A162759.P7074105541116292440.a, A162759.P17296840375610526605.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A162759

/-! ## A162759.P10684747549313861589

`floor(A163474(n)/3)`
-/

namespace A162759.P10684747549313861589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163474 n : ℚ) / 3⌋

end

end A162759.P10684747549313861589

namespace A162759

/-- `floor(A163474(n)/3)` -/
def P10684747549313861589.Spec : Prop :=
  ∀ n, P10684747549313861589.a n = A162759 n

end A162759

/-! ## A162759.P11477594106100986197

`or(A163474(n)/3, A000035(n))`
-/

namespace A162759.P11477594106100986197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A163474 n : ℚ) / 3)) (A000035 n)

end

end A162759.P11477594106100986197

namespace A162759

/-- `or(A163474(n)/3, A000035(n))` -/
def P11477594106100986197.Spec : Prop :=
  ∀ n, P11477594106100986197.a n = A162759 n

end A162759

/-! ## A162759.P7017492905853564604

`A163474(n)/3*A007318(∑[n])`
-/

namespace A162759.P7017492905853564604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163474 n : ℚ) / 3 * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A162759.P7017492905853564604

namespace A162759

/-- `A163474(n)/3*A007318(∑[n])` -/
def P7017492905853564604.Spec : Prop :=
  ∀ n, P7017492905853564604.a n = (A162759 n : ℚ)

end A162759

/-! ## A162759.P10338786128899017766

`or(A163474(n)/3, Δ[A090223(n)])`
-/

namespace A162759.P10338786128899017766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A163474 n : ℚ) / 3)) (f1 (n + 1) - f1 n)

end

end A162759.P10338786128899017766

namespace A162759

/-- `or(A163474(n)/3, Δ[A090223(n)])` -/
def P10338786128899017766.Spec : Prop :=
  ∀ n, P10338786128899017766.a n = A162759 n

end A162759

/-! ## A162759.P18150982855807717751

`A163474(n)/3*A014963(A016105(n+1))`
-/

namespace A162759.P18150982855807717751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163474 n : ℚ) / 3 * (A014963 (A016105 (n + 1)).toNat : ℚ)

end

end A162759.P18150982855807717751

namespace A162759

/-- `A163474(n)/3*A014963(A016105(n+1))` -/
def P18150982855807717751.Spec : Prop :=
  ∀ n, P18150982855807717751.a n = (A162759 n : ℚ)

end A162759

/-! ## A162759.P1146508180241023845

`(A163474(n)/3)%(3-A155648(n))`
-/

namespace A162759.P1146508180241023845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A163474 n : ℚ) / 3)) (3 - A155648 n)

end

end A162759.P1146508180241023845

namespace A162759

/-- `(A163474(n)/3)%(3-A155648(n))` -/
def P1146508180241023845.Spec : Prop :=
  ∀ n, P1146508180241023845.a n = A162759 n

end A162759

/-!
# A162760: Number of reduced words of length n in Coxeter group on 11 generators S_i with relations (S_i)^2 = (S_i S_j)^3 = I.

The programs for A162760, there is no canonical definition to state claims against.
-/

/-! ## A162760.P1917978364501951007

`Δ[A016885(2*a(n-1)-a(n-2))]` with `a(0)=1, a(1)=2, a(2)=13`
-/

namespace A162760.P1917978364501951007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 13] fun n f1 =>
  A016885 (2 * f1 (n - 1) - f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162760.P1917978364501951007

/-!
# A162761: Minimal total number of floors an elevator must move to transport n people initially waiting at floors i = 1, ..., n to their destination floors n-i+1 (= n, ..., 1), when the elevator can hold at most one person at a time and starts at floor 1, and no passenger may get off the elevator before reaching his/her destination.

The programs for A162761, the canonical program `A162761.P3262496220506170179` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162761 has offset 1).

The definition of A162761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162761.P3262496220506170179

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=9, a(4)=13`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162761

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P3262496220506170179.Spec : Prop :=
  ∀ n, P3262496220506170179.a n = A162761 (n + 1)

theorem P3262496220506170179.correct : P3262496220506170179.Spec := by
  intro n
  simp only [A162761, Nat.add_sub_cancel]

end A162761

/-! ## A162761.P16017365561536179381

`∑[a(n%2)+n]` with `a(0)=0, a(1)=2`
-/

namespace A162761.P16017365561536179381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n % 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162761.P16017365561536179381

namespace A162761

/-- `∑[a(n%2)+n]` -/
def P16017365561536179381.Spec : Prop :=
  ∀ n, (P16017365561536179381.a n : ℤ) = A162761 (n + 1)

end A162761

/-! ## A162761.P16298746874420063038

`∑[a(and(1, n))+n]` with `a(0)=0, a(1)=2`
-/

namespace A162761.P16298746874420063038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (Nat.land 1 n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162761.P16298746874420063038

namespace A162761

/-- `∑[a(and(1, n))+n]` -/
def P16298746874420063038.Spec : Prop :=
  ∀ n, (P16298746874420063038.a n : ℤ) = A162761 (n + 1)

end A162761

/-! ## A162761.P14840011801216586654

`∑[xor(1, char[1]+1+n)]`
-/

namespace A162761.P14840011801216586654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162761.P14840011801216586654

namespace A162761

/-- `∑[xor(1, char[1]+1+n)]` -/
def P14840011801216586654.Spec : Prop :=
  ∀ n, (P14840011801216586654.a n : ℤ) = A162761 (n + 1)

end A162761

/-! ## A162761.P12163390576296292864

`∑[ceil(n²*acot(xor(1, n)))]`
-/

namespace A162761.P12163390576296292864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) * SequenceMachineLib.acot (Nat.xor 1 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162761.P12163390576296292864

namespace A162761

/-- `∑[ceil(n²*acot(xor(1, n)))]` -/
def P12163390576296292864.Spec : Prop :=
  ∀ n, P12163390576296292864.a n = A162761 (n + 1)

end A162761

/-! ## A162761.P897233282192588729

`∑[n]-or(-n, floor(atan(n)))`
-/

namespace A162761.P897233282192588729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.lor (-(n : ℤ)) ⌊Real.arctan (n : ℝ)⌋

end

end A162761.P897233282192588729

namespace A162761

/-- `∑[n]-or(-n, floor(atan(n)))` -/
def P897233282192588729.Spec : Prop :=
  ∀ n, P897233282192588729.a n = A162761 (n + 1)

end A162761

/-! ## A162761.P10332914513410486949

`∑[1-char[1]-xor(1, -n)]`
-/

namespace A162761.P10332914513410486949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162761.P10332914513410486949

namespace A162761

/-- `∑[1-char[1]-xor(1, -n)]` -/
def P10332914513410486949.Spec : Prop :=
  ∀ n, P10332914513410486949.a n = A162761 (n + 1)

end A162761

/-! ## A162761.P2036930604919710125

`∑[a(n-2)+2]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=5`
-/

namespace A162761.P2036930604919710125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 5] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162761.P2036930604919710125

namespace A162761

/-- `∑[a(n-2)+2]` -/
def P2036930604919710125.Spec : Prop :=
  ∀ n, (P2036930604919710125.a n : ℤ) = A162761 (n + 1)

end A162761

/-! ## A162761.P15572233589156384671

`Δ[n²]+a(n-2)` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A162761.P15572233589156384671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 2)

end

end A162761.P15572233589156384671

namespace A162761

/-- `Δ[n²]+a(n-2)` -/
def P15572233589156384671.Spec : Prop :=
  ∀ n, P15572233589156384671.a n = A162761 (n + 1)

end A162761

/-! ## A162761.P9386484218387161716

`∑[ceil(n²/a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A162761.P9386484218387161716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  ⌈(n ^ 2 : ℚ) / (f1 (n - 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162761.P9386484218387161716

namespace A162761

/-- `∑[ceil(n²/a(n-1))]` -/
def P9386484218387161716.Spec : Prop :=
  ∀ n, P9386484218387161716.a n = A162761 (n + 1)

end A162761

/-! ## A162761.P10949676849693441792

`∑[∑[2-a(n-1)]]` with `a(0)=0, a(1)=2, a(2)=0, a(3)=3`
-/

namespace A162761.P10949676849693441792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0, 3] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162761.P10949676849693441792

namespace A162761

/-- `∑[∑[2-a(n-1)]]` -/
def P10949676849693441792.Spec : Prop :=
  ∀ n, P10949676849693441792.a n = A162761 (n + 1)

end A162761

/-! ## A162761.P4194993122149134767

`a(n-1)+xor(1, n+1)` with `a(0)=0, a(1)=2`
-/

namespace A162761.P4194993122149134767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + Nat.xor 1 (n + 1)

end

end A162761.P4194993122149134767

namespace A162761

/-- `a(n-1)+xor(1, n+1)` -/
def P4194993122149134767.Spec : Prop :=
  ∀ n, (P4194993122149134767.a n : ℤ) = A162761 (n + 1)

end A162761

/-! ## A162761.P199296821072411761

`∑[n+1-char[1]]-char[2*n]`
-/

namespace A162761.P199296821072411761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A162761.P199296821072411761

namespace A162761

/-- `∑[n+1-char[1]]-char[2*n]` -/
def P199296821072411761.Spec : Prop :=
  ∀ n, P199296821072411761.a n = A162761 (n + 1)

end A162761

/-! ## A162761.P2207831616542248101

`floor(a(n-2)+n+1+n)` with `a(0)=0, a(1)=2, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A162761.P2207831616542248101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  a (n - 2) + (n + 1) + n

end

end A162761.P2207831616542248101

namespace A162761

/-- `floor(a(n-2)+n+1+n)` -/
def P2207831616542248101.Spec : Prop :=
  ∀ n, (P2207831616542248101.a n : ℤ) = A162761 (n + 1)

end A162761

/-! ## A162761.P4778178914673697674

`floor(∑[n+1]-lcm(2, n+1)/(n+2))`
-/

namespace A162761.P4778178914673697674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (Nat.lcm 2 (n + 1) : ℚ) / (n + 2 : ℚ)⌋

end

end A162761.P4778178914673697674

namespace A162761

/-- `floor(∑[n+1]-lcm(2, n+1)/(n+2))` -/
def P4778178914673697674.Spec : Prop :=
  ∀ n, P4778178914673697674.a n = A162761 (n + 1)

end A162761

/-! ## A162761.P18083926586255844122

`record[(1-n)²-2*n-a(n-1)]` with `a(0)=0`
-/

namespace A162761.P18083926586255844122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (1 - (n : ℤ)) ^ 2 - (2 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162761.P18083926586255844122

namespace A162761

/-- `record[(1-n)²-2*n-a(n-1)]` -/
def P18083926586255844122.Spec : Prop :=
  ∀ n, P18083926586255844122.a n = A162761 (n + 1)

end A162761

/-! ## A162761.P12023145617026036239

`A195016(n)%A001844(n)`
-/

namespace A162761.P12023145617026036239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195016 n) (A001844 n)

end

end A162761.P12023145617026036239

namespace A162761

/-- `A195016(n)%A001844(n)` -/
def P12023145617026036239.Spec : Prop :=
  ∀ n, P12023145617026036239.a n = A162761 (n + 1)

end A162761

/-! ## A162761.P7225951723980343720

`A028895(n)%A317298(n)`
-/

namespace A162761.P7225951723980343720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028895 n) (A317298 n)

end

end A162761.P7225951723980343720

namespace A162761

/-- `A028895(n)%A317298(n)` -/
def P7225951723980343720.Spec : Prop :=
  ∀ n, P7225951723980343720.a n = A162761 (n + 1)

end A162761

/-! ## A162761.P17312832970336730875

`A198017(n)%A212959(n)`
-/

namespace A162761.P17312832970336730875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198017 n) (A212959 n)

end

end A162761.P17312832970336730875

namespace A162761

/-- `A198017(n)%A212959(n)` -/
def P17312832970336730875.Spec : Prop :=
  ∀ n, P17312832970336730875.a n = A162761 (n + 1)

end A162761

/-! ## A162761.P11735001050442878367

`A139595(n)%A393677(n)`
-/

namespace A162761.P11735001050442878367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139595 n) (A393677 n)

end

end A162761.P11735001050442878367

namespace A162761

/-- `A139595(n)%A393677(n)` -/
def P11735001050442878367.Spec : Prop :=
  ∀ n, P11735001050442878367.a n = A162761 (n + 1)

end A162761

/-!
# A162762: Minimal number of floors an elevator must move to transport n passengers initially waiting at floors i = 1, ..., n to their destinations, floor n+1-i (= n, ..., 1), if the elevator can transport at most C = 2 persons at a time and starts at floor 1, and no one may get off the elevator before reaching their destination.

The programs for A162762, the canonical program `A162762.P15609017273270580011` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162762 has offset 1).

The definition of A162762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162762.P15609017273270580011

`∑[a(n-4)+2]-1` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=2, a(5)=6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162762

/-- `∑[a(n-4)+2]-1` -/
def P15609017273270580011.Spec : Prop :=
  ∀ n, P15609017273270580011.a n = A162762 (n + 1)

theorem P15609017273270580011.correct : P15609017273270580011.Spec := by
  intro n
  simp only [A162762, Nat.add_sub_cancel]

end A162762

/-! ## A162762.P12418062439181569717

`∑[ceil(n/2)-A294269(n+1)]+∑[n+2]-1`
-/

namespace A162762.P12418062439181569717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ - A294269 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

end

end A162762.P12418062439181569717

namespace A162762

/-- `∑[ceil(n/2)-A294269(n+1)]+∑[n+2]-1` -/
def P12418062439181569717.Spec : Prop :=
  ∀ n, P12418062439181569717.a n = A162762 (n + 1)

end A162762

/-! ## A162762.P10407136250056765712

`record[∑[n-A018837(n)]+n-A018837(n)]`
-/

namespace A162762.P10407136250056765712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A018837 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ((n : ℤ) - A018837 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162762.P10407136250056765712

namespace A162762

/-- `record[∑[n-A018837(n)]+n-A018837(n)]` -/
def P10407136250056765712.Spec : Prop :=
  ∀ n, P10407136250056765712.a n = A162762 (n + 1)

end A162762

/-! ## A162762.P3375855039081103137

`A004275(∑[A110657(A092486(n))])`
-/

namespace A162762.P3375855039081103137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A092486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162762.P3375855039081103137

namespace A162762

/-- `A004275(∑[A110657(A092486(n))])` -/
def P3375855039081103137.Spec : Prop :=
  ∀ n, P3375855039081103137.a n = A162762 (n + 1)

end A162762

/-! ## A162762.P6471798498830546375

`∑[2*A379731(A338655(n+1))]`
-/

namespace A162762.P6471798498830546375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A379731 (A338655 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162762.P6471798498830546375

namespace A162762

/-- `∑[2*A379731(A338655(n+1))]` -/
def P6471798498830546375.Spec : Prop :=
  ∀ n, P6471798498830546375.a n = A162762 (n + 1)

end A162762

/-!
# A162763: Minimal total number of floors an elevator must travel to get n people waiting, respectively, at floors i = 1, 2, ..., n, to their destinations at floors n+1-i (= n, ..., 1), if the elevator can hold at most C = 3 people and starts at floor 1, and no passenger may get off the elevator before reaching his/her destination.

The programs for A162763, there is no canonical definition to state claims against.
-/

/-! ## A162763.P7849948598769022525

`A335525(A030155(n+1))`
-/

namespace A162763.P7849948598769022525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335525 (A030155 (n + 1)).toNat

end

end A162763.P7849948598769022525

/-! ## A162763.P12274319770548911560

`∑[A001227(A003312(2*n+1)+(n-1)%3)]-1`
-/

namespace A162763.P12274319770548911560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A003312 (2 * n + 1) + Int.tmod ((n : ℤ) - 1) 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A162763.P12274319770548911560

/-! ## A162763.P17448837939959483888

`A030155(n+1)-A294934(A049606(n))`
-/

namespace A162763.P17448837939959483888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030155 (n + 1) - A294934 (A049606 n).toNat

end

end A162763.P17448837939959483888

/-!
# A162764: Minimal total number of floors that an elevator must move to get n persons waiting, respectively, on floors i = 1, 2, ..., n, to their destination floors n-i+1 (= n, n-1, ..., 1), if the elevator can hold up to C = 4 persons at a time and starts at floor 1, and no passenger may get off the elevator before reaching his destination.

The programs for A162764, there is no canonical definition to state claims against.
-/

/-! ## A162764.P8809585599261316646

`2*comp[A003254(n+5)]`
-/

namespace A162764.P8809585599261316646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003254 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A162764.P8809585599261316646

/-! ## A162764.P1484588952121351846

`2*comp[A187574(n+5)]`
-/

namespace A162764.P1484588952121351846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187574 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A162764.P1484588952121351846

/-! ## A162764.P17322355031425155282

`record[and(n, A323860(2*(n+1)))]`
-/

namespace A162764.P17322355031425155282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A323860 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162764.P17322355031425155282

/-! ## A162764.P2506162835809029853

`record[and(14*n², A166546(n+1))]`
-/

namespace A162764.P2506162835809029853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (14 * n ^ 2 : ℤ) (A166546 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162764.P2506162835809029853

/-! ## A162764.P7355832695321851802

`∑[A255201(A057476(n+1))]`
-/

namespace A162764.P7355832695321851802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (A057476 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162764.P7355832695321851802

/-!
# A162766: a(n) = 3*a(n-2) for n > 2; a(1) = 4, a(2) = 3.

The programs for A162766, the canonical program `A162766.P11281384142803682103` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162766 has offset 1).

The definition of A162766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)` (program `A162766.P11281384142803682103`, by `A162766.P11281384142803682103.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162766.P11281384142803682103

`3*a(n-2)` with `a(0)=4, a(1)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162766

/-- `3*a(n-2)` -/
def P11281384142803682103.Spec : Prop :=
  ∀ n, (P11281384142803682103.a n : ℤ) = A162766 (n + 1)

theorem P11281384142803682103.correct : P11281384142803682103.Spec := by
  intro n
  simp only [A162766, Nat.add_sub_cancel]

end A162766

/-! ## A162766.P14337852910500426444

`3^floor((n+1)/2)*4^((n+1)%2)`
-/

namespace A162766.P14337852910500426444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (4 ^ ((n + 1) % 2) : ℚ)

end

end A162766.P14337852910500426444

namespace A162766

/-- `3^floor((n+1)/2)*4^((n+1)%2)` -/
def P14337852910500426444.Spec : Prop :=
  ∀ n, P14337852910500426444.a n = (A162766 (n + 1) : ℚ)

end A162766

/-! ## A162766.P644373659081587739

`A074324(n+2)`
-/

namespace A162766.P644373659081587739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (n + 2)

end

end A162766.P644373659081587739

namespace A162766

/-- `A074324(n+2)` -/
def P644373659081587739.Spec : Prop :=
  ∀ n, P644373659081587739.a n = A162766 (n + 1)

end A162766

/-! ## A162766.P14510933174075034572

`A166552(n+2)`
-/

namespace A162766.P14510933174075034572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (n + 2)

end

end A162766.P14510933174075034572

namespace A162766

/-- `A166552(n+2)` -/
def P14510933174075034572.Spec : Prop :=
  ∀ n, P14510933174075034572.a n = A162766 (n + 1)

end A162766

/-! ## A162766.P10566440555956004336

`(5-3*(-1)^(n+1))*3^(1/4*(2*(n+1)-1+(-1)^(n+1)))/2`
-/

namespace A162766.P10566440555956004336
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 - 3 * (-1) ^ (n + 1) : ℝ) * (3 : ℝ) ^ ((1 : ℚ) / 4 * ((2 * (n + 1) : ℤ) - 1 + (-1) ^ (n + 1) : ℚ) : ℝ) / 2

end

end A162766.P10566440555956004336

namespace A162766

/-- `(5-3*(-1)^(n+1))*3^(1/4*(2*(n+1)-1+(-1)^(n+1)))/2` -/
def P10566440555956004336.Spec : Prop :=
  ∀ n, P10566440555956004336.a n = (A162766 (n + 1) : ℝ)

end A162766

/-! ## A162766.P11856415222167537792

`ogf((4+3x)/(1-3x^2))`
-/

namespace A162766.P11856415222167537792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3] [1, 0, -3] n

end

end A162766.P11856415222167537792

namespace A162766

/-- `ogf((4+3x)/(1-3x^2))` -/
def P11856415222167537792.Spec : Prop :=
  ∀ n, P11856415222167537792.a n = A162766 (n + 1)

end A162766

/-! ## A162766.P3414981042818806226

`∏[3/a(n-1)]` with `a(0)=4`
-/

namespace A162766.P3414981042818806226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162766.P3414981042818806226

namespace A162766

/-- `∏[3/a(n-1)]` -/
def P3414981042818806226.Spec : Prop :=
  ∀ n, P3414981042818806226.a n = (A162766 (n + 1) : ℚ)

end A162766

/-! ## A162766.P12253445246069702578

`∏[log2(root(8, a(n-1)))]` with `a(0)=4`
-/

namespace A162766.P12253445246069702578
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f1 =>
  Real.logb 2 ((8 : ℝ) ^ (1 / f1 (n - 1)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162766.P12253445246069702578

namespace A162766

/-- `∏[log2(root(8, a(n-1)))]` -/
def P12253445246069702578.Spec : Prop :=
  ∀ n, P12253445246069702578.a n = (A162766 (n + 1) : ℝ)

end A162766

/-! ## A162766.P1453377179329983332

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=4, a(1)=3`
-/

namespace A162766.P1453377179329983332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 3] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A162766.P1453377179329983332

namespace A162766

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P1453377179329983332.Spec : Prop :=
  ∀ n, (P1453377179329983332.a n : ℤ) = A162766 (n + 1)

theorem P1453377179329983332.correct : P1453377179329983332.Spec := by
  intro n
  simp only [A162766, Nat.add_sub_cancel, A162766.P1453377179329983332.a, A162766.P11281384142803682103.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A162766

/-! ## A162766.P16198553157315458595

`A211221(xor(1, n+2))`
-/

namespace A162766.P16198553157315458595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211221 (Nat.xor 1 (n + 2))

end

end A162766.P16198553157315458595

namespace A162766

/-- `A211221(xor(1, n+2))` -/
def P16198553157315458595.Spec : Prop :=
  ∀ n, P16198553157315458595.a n = A162766 (n + 1)

end A162766

/-! ## A162766.P5221648378398264368

`∑[A162852(n+1)]+1`
-/

namespace A162766.P5221648378398264368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A162766.P5221648378398264368

namespace A162766

/-- `∑[A162852(n+1)]+1` -/
def P5221648378398264368.Spec : Prop :=
  ∀ n, P5221648378398264368.a n = A162766 (n + 1)

end A162766

/-! ## A162766.P16970975532893266721

`gcd(2, n)²*A056449(n)`
-/

namespace A162766.P16970975532893266721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) * A056449 n

end

end A162766.P16970975532893266721

namespace A162766

/-- `gcd(2, n)²*A056449(n)` -/
def P16970975532893266721.Spec : Prop :=
  ∀ n, P16970975532893266721.a n = A162766 (n + 1)

end A162766

/-! ## A162766.P901368174904177569

`A000792(A168200(n+1))`
-/

namespace A162766.P901368174904177569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A168200 (n + 1)).toNat

end

end A162766.P901368174904177569

namespace A162766

/-- `A000792(A168200(n+1))` -/
def P901368174904177569.Spec : Prop :=
  ∀ n, P901368174904177569.a n = A162766 (n + 1)

end A162766

/-! ## A162766.P3490816575241629850

`A211221(A065190(n+2))`
-/

namespace A162766.P3490816575241629850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211221 (A065190 (n + 2)).toNat

end

end A162766.P3490816575241629850

namespace A162766

/-- `A211221(A065190(n+2))` -/
def P3490816575241629850.Spec : Prop :=
  ∀ n, P3490816575241629850.a n = A162766 (n + 1)

end A162766

/-! ## A162766.P14139422887255877970

`A211221(A010684(n+1)+n)`
-/

namespace A162766.P14139422887255877970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211221 (A010684 (n + 1) + (n : ℤ)).toNat

end

end A162766.P14139422887255877970

namespace A162766

/-- `A211221(A010684(n+1)+n)` -/
def P14139422887255877970.Spec : Prop :=
  ∀ n, P14139422887255877970.a n = A162766 (n + 1)

end A162766

/-! ## A162766.P1731543357570452267

`A254006(n)+A108411(n+2)`
-/

namespace A162766.P1731543357570452267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n + A108411 (n + 2)

end

end A162766.P1731543357570452267

namespace A162766

/-- `A254006(n)+A108411(n+2)` -/
def P1731543357570452267.Spec : Prop :=
  ∀ n, P1731543357570452267.a n = A162766 (n + 1)

end A162766

/-! ## A162766.P16542642288450501573

`A162813(n+1)-A254006(n)`
-/

namespace A162766.P16542642288450501573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162813 (n + 1) - A254006 n

end

end A162766.P16542642288450501573

namespace A162766

/-- `A162813(n+1)-A254006(n)` -/
def P16542642288450501573.Spec : Prop :=
  ∀ n, P16542642288450501573.a n = A162766 (n + 1)

end A162766

/-! ## A162766.P12761641120279404865

`A103947(n+1)*A108411(n)`
-/

namespace A162766.P12761641120279404865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103947 (n + 1) * A108411 n

end

end A162766.P12761641120279404865

namespace A162766

/-- `A103947(n+1)*A108411(n)` -/
def P12761641120279404865.Spec : Prop :=
  ∀ n, P12761641120279404865.a n = A162766 (n + 1)

end A162766

/-! ## A162766.P14628919266865635919

`lcm(A056449(n), A168309(n+1))`
-/

namespace A162766.P14628919266865635919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056449 n) (A168309 (n + 1))

end

end A162766.P14628919266865635919

namespace A162766

/-- `lcm(A056449(n), A168309(n+1))` -/
def P14628919266865635919.Spec : Prop :=
  ∀ n, (P14628919266865635919.a n : ℤ) = A162766 (n + 1)

end A162766

/-! ## A162766.P16759296876014922912

`lcm(A128019(n), A231475(n+1))`
-/

namespace A162766.P16759296876014922912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128019 n) (A231475 (n + 1))

end

end A162766.P16759296876014922912

namespace A162766

/-- `lcm(A128019(n), A231475(n+1))` -/
def P16759296876014922912.Spec : Prop :=
  ∀ n, (P16759296876014922912.a n : ℤ) = A162766 (n + 1)

end A162766

/-!
# A162767: Number of reduced words of length n in Coxeter group on 12 generators S_i with relations (S_i)^2 = (S_i S_j)^3 = I.

The programs for A162767, there is no canonical definition to state claims against.
-/

/-! ## A162767.P10779183226653698000

`A315687(A000124(n)*A180119(n))`
-/

namespace A162767.P10779183226653698000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315687 (A000124 n * A180119 n).toNat

end

end A162767.P10779183226653698000

/-!
# A162768: Number of reduced words of length n in Coxeter group on 13 generators S_i with relations (S_i)^2 = (S_i S_j)^3 = I.

The programs for A162768, there is no canonical definition to state claims against.
-/

/-! ## A162768.P15512759911789307889

`record[A008588(2*a(n-2)-a(n-4))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=13, a(4)=3`
-/

namespace A162768.P15512759911789307889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 13, 3] fun n f1 =>
  A008588 (2 * f1 (n - 2) - f1 (n - 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162768.P15512759911789307889

/-!
# A162769: a(n) = ((1+sqrt(5))*(4+sqrt(5))^n + (1-sqrt(5))*(4-sqrt(5))^n)/2.

The programs for A162769, the canonical program `A162769.P16208698405130740683` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162769 has offset 0).

The definition of A162769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((1+sqrt(5))*(4+sqrt(5))^n+(1-sqrt(5))*(4-sqrt(5))^n)/2` (program `A162769.P18425935011840282723`, by `A162769.P18425935011840282723.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162769.P16208698405130740683

`8*a(n-1)-11*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162769

/-- `8*a(n-1)-11*a(n-2)` -/
def P16208698405130740683.Spec : Prop :=
  ∀ n, P16208698405130740683.a n = A162769 n

theorem P16208698405130740683.correct : P16208698405130740683.Spec := by
  intro n
  simp only [A162769]

end A162769

/-! ## A162769.P18425935011840282723

`((1+sqrt(5))*(4+sqrt(5))^n+(1-sqrt(5))*(4-sqrt(5))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162769.P18425935011840282723
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (5 : ℝ)) * (4 + Real.sqrt (5 : ℝ)) ^ n + (1 - Real.sqrt (5 : ℝ)) * (4 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A162769.P18425935011840282723

namespace A162769

/-- `((1+sqrt(5))*(4+sqrt(5))^n+(1-sqrt(5))*(4-sqrt(5))^n)/2` -/
def P18425935011840282723.Spec : Prop :=
  ∀ n, P18425935011840282723.a n = (A162769 n : ℝ)

theorem P18425935011840282723.correct : P18425935011840282723.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162769, Nat.add_sub_cancel, A162769.P18425935011840282723.a, A162769.P16208698405130740683.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162769, Nat.add_sub_cancel, A162769.P18425935011840282723.a, A162769.P16208698405130740683.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A162769

/-! ## A162769.P9225563791179750699

`A091870(n)+A091870(n+1)`
-/

namespace A162769.P9225563791179750699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091870 n + A091870 (n + 1)

end

end A162769.P9225563791179750699

namespace A162769

/-- `A091870(n)+A091870(n+1)` -/
def P9225563791179750699.Spec : Prop :=
  ∀ n, P9225563791179750699.a n = A162769 n

end A162769

/-! ## A162769.P847818693357815893

`ogf((1+x)/(1-8x+11x^2))`
-/

namespace A162769.P847818693357815893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -8, 11] n

end

end A162769.P847818693357815893

namespace A162769

/-- `ogf((1+x)/(1-8x+11x^2))` -/
def P847818693357815893.Spec : Prop :=
  ∀ n, P847818693357815893.a n = A162769 n

end A162769

/-! ## A162769.P3463727222557430802

`A162772(n)-A108404(n)`
-/

namespace A162769.P3463727222557430802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162772 n - A108404 n

end

end A162769.P3463727222557430802

namespace A162769

/-- `A162772(n)-A108404(n)` -/
def P3463727222557430802.Spec : Prop :=
  ∀ n, P3463727222557430802.a n = A162769 n

end A162769

/-! ## A162769.P16162722389030486618

`A163064(n)-2*A108404(n)`
-/

namespace A162769.P16162722389030486618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163064 n - 2 * A108404 n

end

end A162769.P16162722389030486618

namespace A162769

/-- `A163064(n)-2*A108404(n)` -/
def P16162722389030486618.Spec : Prop :=
  ∀ n, P16162722389030486618.a n = A162769 n

end A162769

/-! ## A162769.P14991617875370661570

`2*A162772(n)-A163064(n)`
-/

namespace A162769.P14991617875370661570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162772 n - A163064 n

end

end A162769.P14991617875370661570

namespace A162769

/-- `2*A162772(n)-A163064(n)` -/
def P14991617875370661570.Spec : Prop :=
  ∀ n, P14991617875370661570.a n = A162769 n

end A162769

/-! ## A162769.P6511023379566676263

`A292466(∑[n+3])+A108404(n)`
-/

namespace A162769.P6511023379566676263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292466 (∑ j ∈ Finset.range (n + 1), f1 j) + A108404 n

end

end A162769.P6511023379566676263

namespace A162769

/-- `A292466(∑[n+3])+A108404(n)` -/
def P6511023379566676263.Spec : Prop :=
  ∀ n, P6511023379566676263.a n = A162769 n

end A162769

/-!
# A162770: a(n) = ((2+sqrt(5))*(1+sqrt(5))^n + (2-sqrt(5))*(1-sqrt(5))^n)/2.

The programs for A162770, the canonical program `A162770.P15909884501773232748` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162770 has offset 0).

The definition of A162770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162770.P15909884501773232748

`2*a(n-1)+4*a(n-2)` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162770

/-- `2*a(n-1)+4*a(n-2)` -/
def P15909884501773232748.Spec : Prop :=
  ∀ n, (P15909884501773232748.a n : ℤ) = A162770 n

theorem P15909884501773232748.correct : P15909884501773232748.Spec := by
  intro n
  simp only [A162770]

end A162770

/-! ## A162770.P11256805559714269045

`2^(n-1)*A000032(n+3)`
-/

namespace A162770.P11256805559714269045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000032 (n + 3) : ℚ)

end

end A162770.P11256805559714269045

namespace A162770

/-- `2^(n-1)*A000032(n+3)` -/
def P11256805559714269045.Spec : Prop :=
  ∀ n, P11256805559714269045.a n = (A162770 n : ℚ)

end A162770

/-! ## A162770.P10896828443735957328

`ogf((2+3x)/(1-2x-4x^2))`
-/

namespace A162770.P10896828443735957328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -2, -4] n

end

end A162770.P10896828443735957328

namespace A162770

/-- `ogf((2+3x)/(1-2x-4x^2))` -/
def P10896828443735957328.Spec : Prop :=
  ∀ n, P10896828443735957328.a n = A162770 n

end A162770

/-! ## A162770.P6128007657600953663

`2^(n-1)*round(ϕ^(n+3))`
-/

namespace A162770.P6128007657600953663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 3)) : ℚ)

end

end A162770.P6128007657600953663

namespace A162770

/-- `2^(n-1)*round(ϕ^(n+3))` -/
def P6128007657600953663.Spec : Prop :=
  ∀ n, P6128007657600953663.a n = (A162770 n : ℚ)

end A162770

/-! ## A162770.P12443598678966284708

`Δ[A063782(n)]`
-/

namespace A162770.P12443598678966284708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162770.P12443598678966284708

namespace A162770

/-- `Δ[A063782(n)]` -/
def P12443598678966284708.Spec : Prop :=
  ∀ n, P12443598678966284708.a n = A162770 n

end A162770

/-! ## A162770.P17471955250806405285

`Δ[2^(n-1)*A000045(n+3)]`
-/

namespace A162770.P17471955250806405285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162770.P17471955250806405285

namespace A162770

/-- `Δ[2^(n-1)*A000045(n+3)]` -/
def P17471955250806405285.Spec : Prop :=
  ∀ n, P17471955250806405285.a n = (A162770 n : ℚ)

end A162770

/-! ## A162770.P4564393184077051740

`A087206(n)+A063782(n)`
-/

namespace A162770.P4564393184077051740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087206 n + A063782 n

end

end A162770.P4564393184077051740

namespace A162770

/-- `A087206(n)+A063782(n)` -/
def P4564393184077051740.Spec : Prop :=
  ∀ n, P4564393184077051740.a n = A162770 n

end A162770

/-! ## A162770.P544610088805071158

`A134418(n)+A063727(n)`
-/

namespace A162770.P544610088805071158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134418 n + A063727 n

end

end A162770.P544610088805071158

namespace A162770

/-- `A134418(n)+A063727(n)` -/
def P544610088805071158.Spec : Prop :=
  ∀ n, P544610088805071158.a n = A162770 n

end A162770

/-! ## A162770.P405101448049880793

`A163062(n)-A084057(n)`
-/

namespace A162770.P405101448049880793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163062 n - A084057 n

end

end A162770.P405101448049880793

namespace A162770

/-- `A163062(n)-A084057(n)` -/
def P405101448049880793.Spec : Prop :=
  ∀ n, P405101448049880793.a n = A162770 n

end A162770

/-! ## A162770.P6839779936635360506

`A163069(n)-A087131(n)`
-/

namespace A162770.P6839779936635360506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163069 n - A087131 n

end

end A162770.P6839779936635360506

namespace A162770

/-- `A163069(n)-A087131(n)` -/
def P6839779936635360506.Spec : Prop :=
  ∀ n, P6839779936635360506.a n = A162770 n

end A162770

/-! ## A162770.P9293433134183093028

`Δ[A084057(n)+A006483(n)]`
-/

namespace A162770.P9293433134183093028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n + A006483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162770.P9293433134183093028

namespace A162770

/-- `Δ[A084057(n)+A006483(n)]` -/
def P9293433134183093028.Spec : Prop :=
  ∀ n, P9293433134183093028.a n = A162770 n

end A162770

/-! ## A162770.P677740811231553298

`A084057(n)+Δ[A063727(n)]`
-/

namespace A162770.P677740811231553298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n + (f1 (n + 1) - f1 n)

end

end A162770.P677740811231553298

namespace A162770

/-- `A084057(n)+Δ[A063727(n)]` -/
def P677740811231553298.Spec : Prop :=
  ∀ n, P677740811231553298.a n = A162770 n

end A162770

/-! ## A162770.P11783977037572170793

`Δ[A085449(n)+A063727(n)]`
-/

namespace A162770.P11783977037572170793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n + A063727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162770.P11783977037572170793

namespace A162770

/-- `Δ[A085449(n)+A063727(n)]` -/
def P11783977037572170793.Spec : Prop :=
  ∀ n, P11783977037572170793.a n = A162770 n

end A162770

/-! ## A162770.P11877160261599730540

`A084057(n+1)+A084057(n)`
-/

namespace A162770.P11877160261599730540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 (n + 1) + A084057 n

end

end A162770.P11877160261599730540

namespace A162770

/-- `A084057(n+1)+A084057(n)` -/
def P11877160261599730540.Spec : Prop :=
  ∀ n, P11877160261599730540.a n = A162770 n

end A162770

/-! ## A162770.P16600573496664703600

`A163305(n+1)+A087131(n)`
-/

namespace A162770.P16600573496664703600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163305 (n + 1) + A087131 n

end

end A162770.P16600573496664703600

namespace A162770

/-- `A163305(n+1)+A087131(n)` -/
def P16600573496664703600.Spec : Prop :=
  ∀ n, P16600573496664703600.a n = A162770 n

end A162770

/-! ## A162770.P8799096259639780138

`A063782(n+1)-A063782(n)`
-/

namespace A162770.P8799096259639780138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063782 (n + 1) - A063782 n

end

end A162770.P8799096259639780138

namespace A162770

/-- `A063782(n+1)-A063782(n)` -/
def P8799096259639780138.Spec : Prop :=
  ∀ n, P8799096259639780138.a n = A162770 n

end A162770

/-! ## A162770.P13544886628870626103

`A063727(n+1)-A085449(n)`
-/

namespace A162770.P13544886628870626103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 (n + 1) - A085449 n

end

end A162770.P13544886628870626103

namespace A162770

/-- `A063727(n+1)-A085449(n)` -/
def P13544886628870626103.Spec : Prop :=
  ∀ n, P13544886628870626103.a n = A162770 n

end A162770

/-! ## A162770.P15680578843299146521

`A163062(n)+1-A203579(n)`
-/

namespace A162770.P15680578843299146521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163062 n + (1 - A203579 n)

end

end A162770.P15680578843299146521

namespace A162770

/-- `A163062(n)+1-A203579(n)` -/
def P15680578843299146521.Spec : Prop :=
  ∀ n, P15680578843299146521.a n = A162770 n

end A162770

/-! ## A162770.P9461233702411154772

`A085449(n+2)-A085449(n)`
-/

namespace A162770.P9461233702411154772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 (n + 2) - A085449 n

end

end A162770.P9461233702411154772

namespace A162770

/-- `A085449(n+2)-A085449(n)` -/
def P9461233702411154772.Spec : Prop :=
  ∀ n, P9461233702411154772.a n = A162770 n

end A162770

/-! ## A162770.P17600628789408480395

`A085449(n)+2*A063782(n)`
-/

namespace A162770.P17600628789408480395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n + 2 * A063782 n

end

end A162770.P17600628789408480395

namespace A162770

/-- `A085449(n)+2*A063782(n)` -/
def P17600628789408480395.Spec : Prop :=
  ∀ n, P17600628789408480395.a n = A162770 n

end A162770

/-!
# A162771: a(n) = ((2+sqrt(5))*(3+sqrt(5))^n + (2-sqrt(5))*(3-sqrt(5))^n)/2.

The programs for A162771, the canonical program `A162771.P9978049713233014041` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162771 has offset 0).

The definition of A162771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162771.P9978049713233014041

`6*a(n-1)-4*a(n-2)` with `a(0)=2, a(1)=11`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162771

/-- `6*a(n-1)-4*a(n-2)` -/
def P9978049713233014041.Spec : Prop :=
  ∀ n, P9978049713233014041.a n = A162771 n

theorem P9978049713233014041.correct : P9978049713233014041.Spec := by
  intro n
  simp only [A162771]

end A162771

/-! ## A162771.P13351005699765754659

`2^(n-1)*A002878(n+1)`
-/

namespace A162771.P13351005699765754659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A002878 (n + 1) : ℚ)

end

end A162771.P13351005699765754659

namespace A162771

/-- `2^(n-1)*A002878(n+1)` -/
def P13351005699765754659.Spec : Prop :=
  ∀ n, P13351005699765754659.a n = (A162771 n : ℚ)

end A162771

/-! ## A162771.P8141372451906834348

`ogf((2-x)/(1-6x+4x^2))`
-/

namespace A162771.P8141372451906834348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -6, 4] n

end

end A162771.P8141372451906834348

namespace A162771

/-- `ogf((2-x)/(1-6x+4x^2))` -/
def P8141372451906834348.Spec : Prop :=
  ∀ n, P8141372451906834348.a n = A162771 n

end A162771

/-! ## A162771.P12602218973593554551

`ceil((sqrt(5)+3)*a(n-1))` with `a(0)=2`
-/

namespace A162771.P12602218973593554551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(Real.sqrt (5 : ℝ) + 3) * (a (n - 1) : ℝ)⌉

end

end A162771.P12602218973593554551

namespace A162771

/-- `ceil((sqrt(5)+3)*a(n-1))` -/
def P12602218973593554551.Spec : Prop :=
  ∀ n, P12602218973593554551.a n = A162771 n

end A162771

/-! ## A162771.P13497513969221271210

`ceil(2*ϕ²*a(n-1))` with `a(0)=2`
-/

namespace A162771.P13497513969221271210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈2 * (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))⌉

end

end A162771.P13497513969221271210

namespace A162771

/-- `ceil(2*ϕ²*a(n-1))` -/
def P13497513969221271210.Spec : Prop :=
  ∀ n, P13497513969221271210.a n = A162771 n

end A162771

/-! ## A162771.P3705285196146340268

`((2+sqrt(5))*(3+sqrt(5))^n+(2-sqrt(5))*(3-sqrt(5))^n)/2`
-/

namespace A162771.P3705285196146340268
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (5 : ℝ)) * (3 + Real.sqrt (5 : ℝ)) ^ n + (2 - Real.sqrt (5 : ℝ)) * (3 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A162771.P3705285196146340268

namespace A162771

/-- `((2+sqrt(5))*(3+sqrt(5))^n+(2-sqrt(5))*(3-sqrt(5))^n)/2` -/
def P3705285196146340268.Spec : Prop :=
  ∀ n, P3705285196146340268.a n = (A162771 n : ℝ)

theorem P3705285196146340268.correct : P3705285196146340268.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162771, Nat.add_sub_cancel, A162771.P3705285196146340268.a, A162771.P9978049713233014041.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162771, Nat.add_sub_cancel, A162771.P3705285196146340268.a, A162771.P9978049713233014041.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A162771

/-! ## A162771.P3676956333954438597

`Δ[A098648(n)]`
-/

namespace A162771.P3676956333954438597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162771.P3676956333954438597

namespace A162771

/-- `Δ[A098648(n)]` -/
def P3676956333954438597.Spec : Prop :=
  ∀ n, P3676956333954438597.a n = A162771 n

end A162771

/-! ## A162771.P9198138206909224614

`Δ[A080878(2*n)]`
-/

namespace A162771.P9198138206909224614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080878 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162771.P9198138206909224614

namespace A162771

/-- `Δ[A080878(2*n)]` -/
def P9198138206909224614.Spec : Prop :=
  ∀ n, P9198138206909224614.a n = A162771 n

end A162771

/-! ## A162771.P1519477030177639230

`Δ[A228842(n)/2]`
-/

namespace A162771.P1519477030177639230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228842 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162771.P1519477030177639230

namespace A162771

/-- `Δ[A228842(n)/2]` -/
def P1519477030177639230.Spec : Prop :=
  ∀ n, P1519477030177639230.a n = (A162771 n : ℚ)

end A162771

/-! ## A162771.P7735745698300478728

`Δ[A080877(Δ[n²])]`
-/

namespace A162771.P7735745698300478728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080877 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162771.P7735745698300478728

namespace A162771

/-- `Δ[A080877(Δ[n²])]` -/
def P7735745698300478728.Spec : Prop :=
  ∀ n, P7735745698300478728.a n = A162771 n

end A162771

/-! ## A162771.P11948593981580931027

`2^(n-1)*A093960(n+3)`
-/

namespace A162771.P11948593981580931027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A093960 (n + 3) : ℚ)

end

end A162771.P11948593981580931027

namespace A162771

/-- `2^(n-1)*A093960(n+3)` -/
def P11948593981580931027.Spec : Prop :=
  ∀ n, P11948593981580931027.a n = (A162771 n : ℚ)

end A162771

/-! ## A162771.P11573428643840888571

`Δ[2^(n-1)*A000032(2*n)]`
-/

namespace A162771.P11573428643840888571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000032 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162771.P11573428643840888571

namespace A162771

/-- `Δ[2^(n-1)*A000032(2*n)]` -/
def P11573428643840888571.Spec : Prop :=
  ∀ n, P11573428643840888571.a n = (A162771 n : ℚ)

end A162771

/-! ## A162771.P3640912078580241617

`2^(n-1)*A000032(2*n+3)`
-/

namespace A162771.P3640912078580241617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000032 (2 * n + 3) : ℚ)

end

end A162771.P3640912078580241617

namespace A162771

/-- `2^(n-1)*A000032(2*n+3)` -/
def P3640912078580241617.Spec : Prop :=
  ∀ n, P3640912078580241617.a n = (A162771 n : ℚ)

end A162771

/-! ## A162771.P17524016710762782673

`A018903(n)+∑[A018903(n)]`
-/

namespace A162771.P17524016710762782673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018903 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162771.P17524016710762782673

namespace A162771

/-- `A018903(n)+∑[A018903(n)]` -/
def P17524016710762782673.Spec : Prop :=
  ∀ n, P17524016710762782673.a n = A162771 n

end A162771

/-! ## A162771.P11793949646355169888

`A069429(n+1)-A018903(n)`
-/

namespace A162771.P11793949646355169888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069429 (n + 1) - A018903 n

end

end A162771.P11793949646355169888

namespace A162771

/-- `A069429(n+1)-A018903(n)` -/
def P11793949646355169888.Spec : Prop :=
  ∀ n, P11793949646355169888.a n = A162771 n

end A162771

/-! ## A162771.P3052553466147322958

`A098648(n+1)-A098648(n)`
-/

namespace A162771.P3052553466147322958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098648 (n + 1) - A098648 n

end

end A162771.P3052553466147322958

namespace A162771

/-- `A098648(n+1)-A098648(n)` -/
def P3052553466147322958.Spec : Prop :=
  ∀ n, P3052553466147322958.a n = A162771 n

end A162771

/-! ## A162771.P18006849506867052674

`A084326(n+1)+Δ[A084326(n)]`
-/

namespace A162771.P18006849506867052674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084326 (n + 1) + (f1 (n + 1) - f1 n)

end

end A162771.P18006849506867052674

namespace A162771

/-- `A084326(n+1)+Δ[A084326(n)]` -/
def P18006849506867052674.Spec : Prop :=
  ∀ n, P18006849506867052674.a n = A162771 n

end A162771

/-! ## A162771.P12936607874557136032

`A080878(2*(n+1))-A080878(2*n)`
-/

namespace A162771.P12936607874557136032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080878 (2 * (n + 1)) - A080878 (2 * n)

end

end A162771.P12936607874557136032

namespace A162771

/-- `A080878(2*(n+1))-A080878(2*n)` -/
def P12936607874557136032.Spec : Prop :=
  ∀ n, P12936607874557136032.a n = A162771 n

end A162771

/-! ## A162771.P1228034496729533839

`A000032(2*n+3)/2*A000079(n)`
-/

namespace A162771.P1228034496729533839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n + 3) : ℚ) / 2 * (A000079 n : ℚ)

end

end A162771.P1228034496729533839

namespace A162771

/-- `A000032(2*n+3)/2*A000079(n)` -/
def P1228034496729533839.Spec : Prop :=
  ∀ n, P1228034496729533839.a n = (A162771 n : ℚ)

end A162771

/-! ## A162771.P430379958153007111

`A080877(2*n+3)-A080877(2*n+1)`
-/

namespace A162771.P430379958153007111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080877 (2 * n + 3) - A080877 (2 * n + 1)

end

end A162771.P430379958153007111

namespace A162771

/-- `A080877(2*n+3)-A080877(2*n+1)` -/
def P430379958153007111.Spec : Prop :=
  ∀ n, P430379958153007111.a n = A162771 n

end A162771

/-!
# A162772: a(n) = ((2+sqrt(5))*(4+sqrt(5))^n + (2-sqrt(5))*(4-sqrt(5))^n)/2.

The programs for A162772, the canonical program `A162772.P324308446947990405` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162772 has offset 0).

The definition of A162772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162772.P15478155942486913829

`ogf((2-3x)/(1-8x+11x^2))`
-/

namespace A162772.P15478155942486913829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -8, 11] n

end

end A162772.P15478155942486913829

namespace A162772

/-- `ogf((2-3x)/(1-8x+11x^2))` -/
def P15478155942486913829.Spec : Prop :=
  ∀ n, P15478155942486913829.a n = A162772 n

end A162772

/-! ## A162772.P15799569556965648713

`((2+sqrt(5))*(4+sqrt(5))^n+(2-sqrt(5))*(4-sqrt(5))^n)/2`
-/

namespace A162772.P15799569556965648713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (5 : ℝ)) * (4 + Real.sqrt (5 : ℝ)) ^ n + (2 - Real.sqrt (5 : ℝ)) * (4 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A162772.P15799569556965648713

namespace A162772

/-- `((2+sqrt(5))*(4+sqrt(5))^n+(2-sqrt(5))*(4-sqrt(5))^n)/2` -/
def P15799569556965648713.Spec : Prop :=
  ∀ n, P15799569556965648713.a n = (A162772 n : ℝ)

end A162772

/-! ## A162772.P324308446947990405

`A163064(n)-A108404(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A162772

/-- `A163064(n)-A108404(n)` -/
def P324308446947990405.Spec : Prop :=
  ∀ n, P324308446947990405.a n = A162772 n

theorem P324308446947990405.correct : P324308446947990405.Spec := by
  intro n
  simp only [A162772]

end A162772

/-! ## A162772.P15067557753163383436

`A163073(n)+A091870(n+1)`
-/

namespace A162772.P15067557753163383436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163073 n + A091870 (n + 1)

end

end A162772.P15067557753163383436

namespace A162772

/-- `A163073(n)+A091870(n+1)` -/
def P15067557753163383436.Spec : Prop :=
  ∀ n, P15067557753163383436.a n = A162772 n

end A162772

/-! ## A162772.P13234082894590091482

`A108404(n+1)-2*A108404(n)`
-/

namespace A162772.P13234082894590091482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108404 (n + 1) - 2 * A108404 n

end

end A162772.P13234082894590091482

namespace A162772

/-- `A108404(n+1)-2*A108404(n)` -/
def P13234082894590091482.Spec : Prop :=
  ∀ n, P13234082894590091482.a n = A162772 n

end A162772

/-! ## A162772.P16279349471956998019

`A091870(n+1)+A108404(n)+A091870(n)`
-/

namespace A162772.P16279349471956998019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091870 (n + 1) + (A108404 n + A091870 n)

end

end A162772.P16279349471956998019

namespace A162772

/-- `A091870(n+1)+A108404(n)+A091870(n)` -/
def P16279349471956998019.Spec : Prop :=
  ∀ n, P16279349471956998019.a n = A162772 n

end A162772

/-!
# A162773: a(n) = ((2+sqrt(5))*(5+sqrt(5))^n + (2-sqrt(5))*(5-sqrt(5))^n)/2.

The programs for A162773, the canonical program `A162773.P4225715485796992431` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162773 has offset 0).

The definition of A162773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((2+sqrt(5))*(5+sqrt(5))^n+(2-sqrt(5))*(5-sqrt(5))^n)/2` (program `A162773.P7983308633545863534`, by `A162773.P7983308633545863534.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162773.P4225715485796992431

`10*a(n-1)-20*a(n-2)` with `a(0)=2, a(1)=15`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162773

/-- `10*a(n-1)-20*a(n-2)` -/
def P4225715485796992431.Spec : Prop :=
  ∀ n, P4225715485796992431.a n = A162773 n

theorem P4225715485796992431.correct : P4225715485796992431.Spec := by
  intro n
  simp only [A162773]

end A162773

/-! ## A162773.P7983308633545863534

`((2+sqrt(5))*(5+sqrt(5))^n+(2-sqrt(5))*(5-sqrt(5))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162773.P7983308633545863534
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (5 : ℝ)) * (5 + Real.sqrt (5 : ℝ)) ^ n + (2 - Real.sqrt (5 : ℝ)) * (5 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A162773.P7983308633545863534

namespace A162773

/-- `((2+sqrt(5))*(5+sqrt(5))^n+(2-sqrt(5))*(5-sqrt(5))^n)/2` -/
def P7983308633545863534.Spec : Prop :=
  ∀ n, P7983308633545863534.a n = (A162773 n : ℝ)

theorem P7983308633545863534.correct : P7983308633545863534.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162773, Nat.add_sub_cancel, A162773.P7983308633545863534.a, A162773.P4225715485796992431.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162773, Nat.add_sub_cancel, A162773.P7983308633545863534.a, A162773.P4225715485796992431.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A162773

/-! ## A162773.P16511350036484691786

`ogf((2-5x)/(1-10x+20x^2))`
-/

namespace A162773.P16511350036484691786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -10, 20] n

end

end A162773.P16511350036484691786

namespace A162773

/-- `ogf((2-5x)/(1-10x+20x^2))` -/
def P16511350036484691786.Spec : Prop :=
  ∀ n, P16511350036484691786.a n = A162773 n

end A162773

/-! ## A162773.P13786386728076857214

`2^(n-1)*A039717(n+2)`
-/

namespace A162773.P13786386728076857214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A039717 (n + 2) : ℚ)

end

end A162773.P13786386728076857214

namespace A162773

/-- `2^(n-1)*A039717(n+2)` -/
def P13786386728076857214.Spec : Prop :=
  ∀ n, P13786386728076857214.a n = (A162773 n : ℚ)

end A162773

/-! ## A162773.P4496972107799104887

`2*a(n-1)*ratio[A039717(n+1)]` with `a(0)=2`
-/

namespace A162773.P4496972107799104887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039717 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A162773.P4496972107799104887

namespace A162773

/-- `2*a(n-1)*ratio[A039717(n+1)]` -/
def P4496972107799104887.Spec : Prop :=
  ∀ n, P4496972107799104887.a n = (A162773 n : ℚ)

end A162773

/-! ## A162773.P15751083097634212242

`A163065(n)-A090139(n)`
-/

namespace A162773.P15751083097634212242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163065 n - A090139 n

end

end A162773.P15751083097634212242

namespace A162773

/-- `A163065(n)-A090139(n)` -/
def P15751083097634212242.Spec : Prop :=
  ∀ n, P15751083097634212242.a n = A162773 n

end A162773

/-! ## A162773.P9626897349457913698

`2*A093132(n)-A093145(n)`
-/

namespace A162773.P9626897349457913698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093132 n - A093145 n

end

end A162773.P9626897349457913698

namespace A162773

/-- `2*A093132(n)-A093145(n)` -/
def P9626897349457913698.Spec : Prop :=
  ∀ n, P9626897349457913698.a n = A162773 n

end A162773

/-! ## A162773.P16557061540760981168

`2*A163065(n)-A163072(n)`
-/

namespace A162773.P16557061540760981168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163065 n - A163072 n

end

end A162773.P16557061540760981168

namespace A162773

/-- `2*A163065(n)-A163072(n)` -/
def P16557061540760981168.Spec : Prop :=
  ∀ n, P16557061540760981168.a n = A162773 n

end A162773

/-!
# A162774: 14 together with the first differences of A002410.

The programs for A162774, there is no canonical definition to state claims against.
-/

/-! ## A162774.P8566296647621618430

`Δ[A002410(A028310(n))%(4*n+1)²]`
-/

namespace A162774.P8566296647621618430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002410 (A028310 n).toNat) ((4 * n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162774.P8566296647621618430

/-! ## A162774.P5441966437455940637

`A161914(n+1)+Δ[A162781(C(2, n)+n)]`
-/

namespace A162774.P5441966437455940637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (n + 1) + (f1 (n + 1) - f1 n)

end

end A162774.P5441966437455940637

/-! ## A162774.P14773129181483342896

`A161914(n+1)+Δ[A162781(abs(1-n)+1)]`
-/

namespace A162774.P14773129181483342896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (n + 1) + (f1 (n + 1) - f1 n)

end

end A162774.P14773129181483342896

/-! ## A162774.P15256300158159870927

`(A161914(n+1)+Δ[A162781(A028310(n))])%15`
-/

namespace A162774.P15256300158159870927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161914 (n + 1) + (f1 (n + 1) - f1 n)) 15

end

end A162774.P15256300158159870927

/-! ## A162774.P17656260571743743262

`(A161914(n+1)+Δ[A162781(A233583(n+1))])%15`
-/

namespace A162774.P17656260571743743262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161914 (n + 1) + (f1 (n + 1) - f1 n)) 15

end

end A162774.P17656260571743743262

/-! ## A162774.P10128472707438882857

`(A161914(n+1)+Δ[A162781(A065033(2*n))])%15`
-/

namespace A162774.P10128472707438882857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161914 (n + 1) + (f1 (n + 1) - f1 n)) 15

end

end A162774.P10128472707438882857

/-! ## A162774.P15212803596590053145

`(A161914(n+1)+Δ[A162781(A000007(n)+n)])%15`
-/

namespace A162774.P15212803596590053145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161914 (n + 1) + (f1 (n + 1) - f1 n)) 15

end

end A162774.P15212803596590053145

/-! ## A162774.P9986408660563273155

`(A161914(n+1)+Δ[A162781(1-A057427(n)+n)])%15`
-/

namespace A162774.P9986408660563273155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (1 - A057427 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161914 (n + 1) + (f1 (n + 1) - f1 n)) 15

end

end A162774.P9986408660563273155

/-! ## A162774.P8367080546370579901

`A161914(n+1)+A162781(n+1)-A162781(A028310(n))`
-/

namespace A162774.P8367080546370579901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (n + 1) + (A162781 (n + 1) - A162781 (A028310 n).toNat)

end

end A162774.P8367080546370579901

/-! ## A162774.P8499027857892862029

`A161914(n+1)+A162781(n+1)-A162781(A233583(n+1))`
-/

namespace A162774.P8499027857892862029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (n + 1) + (A162781 (n + 1) - A162781 (A233583 (n + 1)).toNat)

end

end A162774.P8499027857892862029

/-!
# A162775: a(n) = A141042(n+1)/2.

The programs for A162775, the canonical program `A162775.P15991706861221470785` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162775 has offset 1).

The definition of A162775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162775.P15991706861221470785

`A141042(n+2)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A162775

/-- `A141042(n+2)/2` -/
def P15991706861221470785.Spec : Prop :=
  ∀ n, P15991706861221470785.a n = (A162775 (n + 1) : ℚ)

end A162775

/-! ## A162775.P16365057609696958256

`(n+2)*A028334(n+2)`
-/

namespace A162775.P16365057609696958256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A028334 (n + 2)

end

end A162775.P16365057609696958256

namespace A162775

/-- `(n+2)*A028334(n+2)` -/
def P16365057609696958256.Spec : Prop :=
  ∀ n, P16365057609696958256.a n = A162775 (n + 1)

end A162775

/-! ## A162775.P15060307460241013531

`(n/2+1)*A001223(n+2)`
-/

namespace A162775.P15060307460241013531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A001223 (n + 2) : ℚ)

end

end A162775.P15060307460241013531

namespace A162775

/-- `(n/2+1)*A001223(n+2)` -/
def P15060307460241013531.Spec : Prop :=
  ∀ n, P15060307460241013531.a n = (A162775 (n + 1) : ℚ)

end A162775

/-! ## A162775.P2174438129782803245

`A004526(A001223(n+2)+1)*(n+2)`
-/

namespace A162775.P2174438129782803245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001223 (n + 2) + 1).toNat * (n + 2 : ℤ)

end

end A162775.P2174438129782803245

namespace A162775

/-- `A004526(A001223(n+2)+1)*(n+2)` -/
def P2174438129782803245.Spec : Prop :=
  ∀ n, P2174438129782803245.a n = A162775 (n + 1)

end A162775

/-! ## A162775.P8421205071477707446

`A002265(2*A001223(n+2))*(n+2)`
-/

namespace A162775.P8421205071477707446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A001223 (n + 2)).toNat * (n + 2 : ℤ)

end

end A162775.P8421205071477707446

namespace A162775

/-- `A002265(2*A001223(n+2))*(n+2)` -/
def P8421205071477707446.Spec : Prop :=
  ∀ n, P8421205071477707446.a n = A162775 (n + 1)

end A162775

/-! ## A162775.P6254707980318044240

`(n+2)*sqrt(A074927(n+2))`
-/

namespace A162775.P6254707980318044240
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) * Real.sqrt (A074927 (n + 2) : ℝ)

end

end A162775.P6254707980318044240

namespace A162775

/-- `(n+2)*sqrt(A074927(n+2))` -/
def P6254707980318044240.Spec : Prop :=
  ∀ n, P6254707980318044240.a n = (A162775 (n + 1) : ℝ)

end A162775

/-! ## A162775.P9270736127967543134

`(n+2)*Δ[A005097(n+1)]`
-/

namespace A162775.P9270736127967543134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A162775.P9270736127967543134

namespace A162775

/-- `(n+2)*Δ[A005097(n+1)]` -/
def P9270736127967543134.Spec : Prop :=
  ∀ n, P9270736127967543134.a n = A162775 (n + 1)

end A162775

/-! ## A162775.P15056127047746651259

`(n+2)*Δ[A006254(n+1)]`
-/

namespace A162775.P15056127047746651259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A162775.P15056127047746651259

namespace A162775

/-- `(n+2)*Δ[A006254(n+1)]` -/
def P15056127047746651259.Spec : Prop :=
  ∀ n, P15056127047746651259.a n = A162775 (n + 1)

end A162775

/-! ## A162775.P7606289487700583362

`(n+2)*Δ[A067076(n+1)]`
-/

namespace A162775.P7606289487700583362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A162775.P7606289487700583362

namespace A162775

/-- `(n+2)*Δ[A067076(n+1)]` -/
def P7606289487700583362.Spec : Prop :=
  ∀ n, P7606289487700583362.a n = A162775 (n + 1)

end A162775

/-! ## A162775.P15363686104919480580

`(n+2)*Δ[A089192(n+1)]`
-/

namespace A162775.P15363686104919480580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A162775.P15363686104919480580

namespace A162775

/-- `(n+2)*Δ[A089192(n+1)]` -/
def P15363686104919480580.Spec : Prop :=
  ∀ n, P15363686104919480580.a n = A162775 (n + 1)

end A162775

/-! ## A162775.P17619069587174118042

`(n+2)*Δ[A089253(n+1)]`
-/

namespace A162775.P17619069587174118042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A162775.P17619069587174118042

namespace A162775

/-- `(n+2)*Δ[A089253(n+1)]` -/
def P17619069587174118042.Spec : Prop :=
  ∀ n, P17619069587174118042.a n = A162775 (n + 1)

end A162775

/-! ## A162775.P6704936955071930606

`(n+2)*Δ[A097069(n+1)]`
-/

namespace A162775.P6704936955071930606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A162775.P6704936955071930606

namespace A162775

/-- `(n+2)*Δ[A097069(n+1)]` -/
def P6704936955071930606.Spec : Prop :=
  ∀ n, P6704936955071930606.a n = A162775 (n + 1)

end A162775

/-! ## A162775.P2182852646031030940

`(n+2)*Δ[A097338(n+1)]`
-/

namespace A162775.P2182852646031030940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A162775.P2182852646031030940

namespace A162775

/-- `(n+2)*Δ[A097338(n+1)]` -/
def P2182852646031030940.Spec : Prop :=
  ∀ n, P2182852646031030940.a n = A162775 (n + 1)

end A162775

/-! ## A162775.P6530357139305859138

`(n+2)*Δ[A097363(n+1)]`
-/

namespace A162775.P6530357139305859138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A162775.P6530357139305859138

namespace A162775

/-- `(n+2)*Δ[A097363(n+1)]` -/
def P6530357139305859138.Spec : Prop :=
  ∀ n, P6530357139305859138.a n = A162775 (n + 1)

end A162775

/-! ## A162775.P14606452155539113626

`(n+2)*Δ[A097480(n+1)]`
-/

namespace A162775.P14606452155539113626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A162775.P14606452155539113626

namespace A162775

/-- `(n+2)*Δ[A097480(n+1)]` -/
def P14606452155539113626.Spec : Prop :=
  ∀ n, P14606452155539113626.a n = A162775 (n + 1)

end A162775

/-! ## A162775.P98803195159278765

`(n+2)*Δ[A097932(n+1)]`
-/

namespace A162775.P98803195159278765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A162775.P98803195159278765

namespace A162775

/-- `(n+2)*Δ[A097932(n+1)]` -/
def P98803195159278765.Spec : Prop :=
  ∀ n, P98803195159278765.a n = A162775 (n + 1)

end A162775

/-! ## A162775.P8447156363505526174

`(n+2)*Δ[A098090(n+1)]`
-/

namespace A162775.P8447156363505526174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A162775.P8447156363505526174

namespace A162775

/-- `(n+2)*Δ[A098090(n+1)]` -/
def P8447156363505526174.Spec : Prop :=
  ∀ n, P8447156363505526174.a n = A162775 (n + 1)

end A162775

/-! ## A162775.P8781256973331591615

`(n+2)*Δ[A098605(n+1)]`
-/

namespace A162775.P8781256973331591615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A162775.P8781256973331591615

namespace A162775

/-- `(n+2)*Δ[A098605(n+1)]` -/
def P8781256973331591615.Spec : Prop :=
  ∀ n, P8781256973331591615.a n = A162775 (n + 1)

end A162775

/-! ## A162775.P10163170396575067557

`(A247380(n+2)-A000040(n+2))/2`
-/

namespace A162775.P10163170396575067557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247380 (n + 2) - A000040 (n + 2) : ℚ) / 2

end

end A162775.P10163170396575067557

namespace A162775

/-- `(A247380(n+2)-A000040(n+2))/2` -/
def P10163170396575067557.Spec : Prop :=
  ∀ n, P10163170396575067557.a n = (A162775 (n + 1) : ℚ)

end A162775

/-! ## A162775.P5491566241927719040

`Δ[A152535(n+2)/2]`
-/

namespace A162775.P5491566241927719040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152535 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162775.P5491566241927719040

namespace A162775

/-- `Δ[A152535(n+2)/2]` -/
def P5491566241927719040.Spec : Prop :=
  ∀ n, P5491566241927719040.a n = (A162775 (n + 1) : ℚ)

end A162775

/-!
# A162777: a(n) = A153003(n) - A153006(n).

The programs for A162777, there is no canonical definition to state claims against.
-/

/-! ## A162777.P4225669666561797952

`A153003(n)-A153006(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162777.P4225669666561797952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153003 n - A153006 n

end

end A162777.P4225669666561797952

/-! ## A162777.P11446464759022226934

`∑[floor(Δ[A139251(n)/2])]`
-/

namespace A162777.P11446464759022226934
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139251 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162777.P11446464759022226934

/-! ## A162777.P18378002274240738796

`ceil((Δ[A139250(n)]-2)/2)`
-/

namespace A162777.P18378002274240738796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n - 2 : ℚ) / 2⌉

end

end A162777.P18378002274240738796

/-! ## A162777.P302858623424383784

`A302042(A139251(n+1))-1`
-/

namespace A162777.P302858623424383784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A139251 (n + 1)).toNat - 1

end

end A162777.P302858623424383784

/-! ## A162777.P5007611140954917900

`A004526(A160552(n+1))+A004526(A160552(n))`
-/

namespace A162777.P5007611140954917900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A160552 (n + 1)).toNat + A004526 (A160552 n).toNat

end

end A162777.P5007611140954917900

/-! ## A162777.P3500143847416670870

`A152998(n)-∑[A004525(A139251(n))]`
-/

namespace A162777.P3500143847416670870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A139251 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162777.P3500143847416670870

/-! ## A162777.P1956037882313599025

`A065423(Δ[A139250(n)])`
-/

namespace A162777.P1956037882313599025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (f1 (n + 1) - f1 n).toNat

end

end A162777.P1956037882313599025

/-! ## A162777.P5275891100335841138

`A065423(A139251(n+1))`
-/

namespace A162777.P5275891100335841138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A139251 (n + 1)).toNat

end

end A162777.P5275891100335841138

/-! ## A162777.P10947631199983061148

`A004526(Δ[A139250(n)]-1)`
-/

namespace A162777.P10947631199983061148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n - 1).toNat

end

end A162777.P10947631199983061148

/-! ## A162777.P3081535204564084419

`A244325(A139251(n+1)+1)`
-/

namespace A162777.P3081535204564084419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244325 (A139251 (n + 1) + 1).toNat

end

end A162777.P3081535204564084419

/-! ## A162777.P15179131097799215150

`A004524(A139251(n+1)-1)`
-/

namespace A162777.P15179131097799215150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A139251 (n + 1) - 1).toNat

end

end A162777.P15179131097799215150

/-! ## A162777.P9376148506435673928

`A004526(A139251(n+1)-1)`
-/

namespace A162777.P9376148506435673928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A139251 (n + 1) - 1).toNat

end

end A162777.P9376148506435673928

/-! ## A162777.P3249889511602055591

`A140106(Δ[A187220(n+1)/2])`
-/

namespace A162777.P3249889511602055591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187220 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A162777.P3249889511602055591

/-! ## A162777.P2601829041504873640

`A008619(A139251(n+1)-1)-1`
-/

namespace A162777.P2601829041504873640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A139251 (n + 1) - 1).toNat - 1

end

end A162777.P2601829041504873640

/-! ## A162777.P9943693154372735295

`A140106(A160552(n+1)+A160552(n))`
-/

namespace A162777.P9943693154372735295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A160552 (n + 1) + A160552 n).toNat

end

end A162777.P9943693154372735295

/-! ## A162777.P2772954855963598071

`A004526(2*A152998(n)-A139250(n))`
-/

namespace A162777.P2772954855963598071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A152998 n - A139250 n).toNat

end

end A162777.P2772954855963598071

/-! ## A162777.P3352636543188122203

`A110654(A151704(n+1)+A151704(n))-1`
-/

namespace A162777.P3352636543188122203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A151704 (n + 1) + A151704 n).toNat - 1

end

end A162777.P3352636543188122203

/-! ## A162777.P14479552190645129589

`A004526(A152998(n)-(A139250(n)-A152998(n)))`
-/

namespace A162777.P14479552190645129589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A152998 n - (A139250 n - A152998 n)).toNat

end

end A162777.P14479552190645129589

/-! ## A162777.P9153941417456358508

`A152998(n)-A004526(A139250(n)+1)`
-/

namespace A162777.P9153941417456358508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n - A004526 (A139250 n + 1).toNat

end

end A162777.P9153941417456358508

/-! ## A162777.P4315437066873638485

`A152998(n)-A025480(A139250(n)+1)`
-/

namespace A162777.P4315437066873638485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n - A025480 (A139250 n + 1).toNat

end

end A162777.P4315437066873638485

/-!
# A162778: Partial sums of A160120.

The programs for A162778, there is no canonical definition to state claims against.
-/

/-! ## A162778.P8533892193804179004

`∑[A160120(n)]`
-/

namespace A162778.P8533892193804179004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162778.P8533892193804179004

/-! ## A162778.P13737242763473634527

`∑[A160157(n)/2]`
-/

namespace A162778.P13737242763473634527
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160157 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162778.P13737242763473634527

/-! ## A162778.P2069461180586153580

`∑[A160167(n)/3]`
-/

namespace A162778.P2069461180586153580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160167 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162778.P2069461180586153580

/-! ## A162778.P13576167290462827093

`∑[A253770(n)/6]`
-/

namespace A162778.P13576167290462827093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253770 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162778.P13576167290462827093

/-! ## A162778.P4268605473948161014

`∑[∑[A253771(n)/6]]`
-/

namespace A162778.P4268605473948161014
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253771 n : ℚ) / 6

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162778.P4268605473948161014

/-!
# A162779: Rows of A162777 when written as a triangle converge to this sequence.

The programs for A162779, there is no canonical definition to state claims against.
-/

/-! ## A162779.P15923216586269114448

`A151688(n)-1`
-/

namespace A162779.P15923216586269114448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151688 n - 1

end

end A162779.P15923216586269114448

/-! ## A162779.P4272882158366474637

`Δ[A159793(n)]-1`
-/

namespace A162779.P4272882158366474637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A162779.P4272882158366474637

/-! ## A162779.P5330415588308778232

`2*A152980(n)-1`
-/

namespace A162779.P5330415588308778232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152980 n - 1

end

end A162779.P5330415588308778232

/-! ## A162779.P10363152307906755193

`Δ[2*A153006(n)]-1`
-/

namespace A162779.P10363152307906755193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A162779.P10363152307906755193

/-! ## A162779.P3456051501928840116

`Δ[A159795(n)/2]-1`
-/

namespace A162779.P3456051501928840116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159795 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A162779.P3456051501928840116

/-! ## A162779.P483237439354196728

`Δ[A194811(n)/2]-1`
-/

namespace A162779.P483237439354196728
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194811 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A162779.P483237439354196728

/-! ## A162779.P9000350649301461614

`A147646(n+1)/2-1`
-/

namespace A162779.P9000350649301461614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147646 (n + 1) : ℚ) / 2 - 1

end

end A162779.P9000350649301461614

/-! ## A162779.P11302738392993789077

`A004273(A152980(n))`
-/

namespace A162779.P11302738392993789077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A152980 n).toNat

end

end A162779.P11302738392993789077

/-! ## A162779.P3154184678340058432

`A014681(A151688(n))`
-/

namespace A162779.P3154184678340058432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A151688 n).toNat

end

end A162779.P3154184678340058432

/-! ## A162779.P9085043379692386356

`A046667(A147646(n+1))`
-/

namespace A162779.P9085043379692386356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A147646 (n + 1)).toNat

end

end A162779.P9085043379692386356

/-!
# A162780: Partial sums of A161914.

The programs for A162780, there is no canonical definition to state claims against.
-/

/-! ## A162780.P2527964919622741192

`∑[A161914(n+1)]`
-/

namespace A162780.P2527964919622741192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162780.P2527964919622741192

/-! ## A162780.P7402264466562287232

`∑[A161914(-xor(n, -1))%16]`
-/

namespace A162780.P7402264466562287232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161914 (-Int.xor (n : ℤ) (-1)).toNat) 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162780.P7402264466562287232

/-! ## A162780.P8539318232733143026

`A000027(∑[A161914(-xor(n, -1))])`
-/

namespace A162780.P8539318232733143026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162780.P8539318232733143026

/-! ## A162780.P15319309858856882430

`A028310(∑[A161914(-xor(n, -1))])`
-/

namespace A162780.P15319309858856882430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162780.P15319309858856882430

/-! ## A162780.P10471174756329151671

`A002410(n+1)-A162781(n+1)`
-/

namespace A162780.P10471174756329151671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - A162781 (n + 1)

end

end A162780.P10471174756329151671

/-! ## A162780.P11003522415338832354

`-A001478(∑[A161914(-xor(n, -1))])`
-/

namespace A162780.P11003522415338832354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001478 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162780.P11003522415338832354

/-! ## A162780.P898979974499145188

`A002410(n+1)-∑[A162782(n+1)]`
-/

namespace A162780.P898979974499145188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162780.P898979974499145188

/-! ## A162780.P7189985847931577494

`∑[A162774(n+1)-A162782(n+1)]`
-/

namespace A162780.P7189985847931577494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162774 (n + 1) - A162782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162780.P7189985847931577494

/-! ## A162780.P521353055440085092

`∑[A162774(n+1)]-A162781(n+1)`
-/

namespace A162780.P521353055440085092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A162781 (n + 1)

end

end A162780.P521353055440085092

/-! ## A162780.P15493679431351432326

`A110654(2*∑[A161914(-xor(n, -1))])`
-/

namespace A162780.P15493679431351432326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A162780.P15493679431351432326

/-!
# A162781: a(n) = A002410(n) - A162780(n).

The programs for A162781, there is no canonical definition to state claims against.
-/

/-! ## A162781.P687707298635371810

`A002410(n+1)-A162780(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162781.P687707298635371810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - A162780 (n + 1)

end

end A162781.P687707298635371810

/-! ## A162781.P6573941864995481243

`A002410(n+1)-∑[A161914(n+1)]`
-/

namespace A162781.P6573941864995481243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162781.P6573941864995481243

/-! ## A162781.P1129248008305439103

`∑[A162774(n+1)-A161914(n+1)]`
-/

namespace A162781.P1129248008305439103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162774 (n + 1) - A161914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162781.P1129248008305439103

/-! ## A162781.P7684660123981177848

`A002410(n+1)+A001478(∑[A161914(n+1)])`
-/

namespace A162781.P7684660123981177848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) + A001478 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162781.P7684660123981177848

/-! ## A162781.P12885971544405417115

`A000040(n+1)+A319229(n+1)-∑[A161914(n+1)]`
-/

namespace A162781.P12885971544405417115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A319229 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162781.P12885971544405417115

/-! ## A162781.P16041595940924503159

`A320141(n+1)-A000040(n+1)-∑[A161914(n+1)]`
-/

namespace A162781.P16041595940924503159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320141 (n + 1) - A000040 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162781.P16041595940924503159

/-! ## A162781.P14180002955643316889

`A319229(n+1)+A008578(n+2)-∑[A161914(n+1)]`
-/

namespace A162781.P14180002955643316889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319229 (n + 1) + A008578 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162781.P14180002955643316889

/-! ## A162781.P16774630379491780213

`A319229(n+1)+A100484(n+1)/2-∑[A161914(n+1)]`
-/

namespace A162781.P16774630379491780213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319229 (n + 1) : ℚ) + (A100484 (n + 1) : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A162781.P16774630379491780213

/-! ## A162781.P18086868472385795782

`A003422(A002410(n+1)%∑[A161914(n+1)])`
-/

namespace A162781.P18086868472385795782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (Int.tmod (A002410 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A162781.P18086868472385795782

/-! ## A162781.P4868318496635845550

`∑[A162782(n+1)]`
-/

namespace A162781.P4868318496635845550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162781.P4868318496635845550

/-!
# A162782: a(n) = A162774(n) - A161914(n).

The programs for A162782, there is no canonical definition to state claims against.
-/

/-! ## A162782.P4126019357597331815

`A162774(n+1)-A161914(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162782.P4126019357597331815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162774 (n + 1) - A161914 (n + 1)

end

end A162782.P4126019357597331815

/-! ## A162782.P6376739820937594591

`Δ[A162781(C(2, n)+n)]`
-/

namespace A162782.P6376739820937594591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162782.P6376739820937594591

/-! ## A162782.P14748035136954112322

`Δ[A162781(floor(acot(n)+n))]`
-/

namespace A162782.P14748035136954112322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162782.P14748035136954112322

/-! ## A162782.P6632679149907921440

`Δ[A162781(round(acot(n)+n))]`
-/

namespace A162782.P6632679149907921440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162782.P6632679149907921440

/-! ## A162782.P2625175828234234692

`Δ[A162781(abs(1-n)+1)]`
-/

namespace A162782.P2625175828234234692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162782.P2625175828234234692

/-! ## A162782.P3470211957780290616

`Δ[A162781(ceil(acot(n))+n-1)]^3`
-/

namespace A162782.P3470211957780290616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (⌈SequenceMachineLib.acot (n : ℝ)⌉ + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A162782.P3470211957780290616

/-! ## A162782.P12915609860354778153

`Δ[abs(A162781(A028310(n)))]`
-/

namespace A162782.P12915609860354778153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A162781 (A028310 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162782.P12915609860354778153

/-! ## A162782.P13140390070493397570

`Δ[abs(A162781(A233583(n+1)))]`
-/

namespace A162782.P13140390070493397570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A162781 (A233583 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162782.P13140390070493397570

/-! ## A162782.P11612291306773180153

`A162781(n+1)-A162781(round(sqrt(n²+1)))`
-/

namespace A162782.P11612291306773180153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (n + 1) - A162781 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A162782.P11612291306773180153

/-! ## A162782.P10711716885473142449

`Δ[A162781(val(A000010(n+2)+1, 2)+n)]%3`
-/

namespace A162782.P10711716885473142449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (SequenceMachineLib.valuation (A000010 (n + 2) + 1).toNat 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A162782.P10711716885473142449

/-!
# A162784: a(n) = (A048883(n)+1)/2.

The programs for A162784, the canonical program `A162784.P6167208712163994257` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162784 has offset 0).

The definition of A162784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162784.P6167208712163994257

`A151712(n)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A162784

/-- `A151712(n)/2` -/
def P6167208712163994257.Spec : Prop :=
  ∀ n, P6167208712163994257.a n = (A162784 n : ℚ)

end A162784

/-! ## A162784.P6548468869680957789

`(A048883(n)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162784.P6548468869680957789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048883 n + 1 : ℚ) / 2

end

end A162784.P6548468869680957789

namespace A162784

/-- `(A048883(n)+1)/2` -/
def P6548468869680957789.Spec : Prop :=
  ∀ n, P6548468869680957789.a n = (A162784 n : ℚ)

end A162784

/-! ## A162784.P11095259253349962280

`3*a(and(n, n-1))-1` with `a(0)=1`
-/

namespace A162784.P11095259253349962280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - 1

end

end A162784.P11095259253349962280

namespace A162784

/-- `3*a(and(n, n-1))-1` -/
def P11095259253349962280.Spec : Prop :=
  ∀ n, P11095259253349962280.a n = A162784 n

end A162784

/-! ## A162784.P11387293924297354012

`lcm(3, a(and(n, n-1)))-1` with `a(0)=1`
-/

namespace A162784.P11387293924297354012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 3 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) : ℤ) - 1

end

end A162784.P11387293924297354012

namespace A162784

/-- `lcm(3, a(and(n, n-1)))-1` -/
def P11387293924297354012.Spec : Prop :=
  ∀ n, P11387293924297354012.a n = A162784 n

end A162784

/-! ## A162784.P16897548601432428201

`3*a(xor(n, -n)/2+n)-1` with `a(0)=1`
-/

namespace A162784.P16897548601432428201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (SequenceMachineLib.roundAway ((Int.xor (n : ℤ) (-(n : ℤ)) : ℚ) / 2 + (n : ℚ))).toNat - 1

end

end A162784.P16897548601432428201

namespace A162784

/-- `3*a(xor(n, -n)/2+n)-1` -/
def P16897548601432428201.Spec : Prop :=
  ∀ n, P16897548601432428201.a n = A162784 n

end A162784

/-! ## A162784.P2046721282162901409

`ceil(A048883(n)/2)`
-/

namespace A162784.P2046721282162901409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048883 n : ℚ) / 2⌉

end

end A162784.P2046721282162901409

namespace A162784

/-- `ceil(A048883(n)/2)` -/
def P2046721282162901409.Spec : Prop :=
  ∀ n, P2046721282162901409.a n = A162784 n

end A162784

/-! ## A162784.P7556966466358517163

`ceil(3^A000120(n)/2)`
-/

namespace A162784.P7556966466358517163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ (A000120 n : ℤ) / 2⌉

end

end A162784.P7556966466358517163

namespace A162784

/-- `ceil(3^A000120(n)/2)` -/
def P7556966466358517163.Spec : Prop :=
  ∀ n, P7556966466358517163.a n = A162784 n

end A162784

/-! ## A162784.P13585914054676497774

`round(3^log2(A001316(n))/2)`
-/

namespace A162784.P13585914054676497774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℝ) ^ (Real.logb 2 (A001316 n : ℝ)) / 2)

end

end A162784.P13585914054676497774

namespace A162784

/-- `round(3^log2(A001316(n))/2)` -/
def P13585914054676497774.Spec : Prop :=
  ∀ n, P13585914054676497774.a n = A162784 n

end A162784

/-! ## A162784.P17787037356603399064

`3*a(A006257(n)-1)-1` with `a(0)=1`
-/

namespace A162784.P17787037356603399064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (A006257 n - 1).toNat - 1

end

end A162784.P17787037356603399064

namespace A162784

/-- `3*a(A006257(n)-1)-1` -/
def P17787037356603399064.Spec : Prop :=
  ∀ n, P17787037356603399064.a n = A162784 n

end A162784

/-! ## A162784.P6996757854089032425

`round(3^(2*n-A005187(n))/2)`
-/

namespace A162784.P6996757854089032425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) ^ ((2 * n : ℤ) - A005187 n : ℤ) / 2)

end

end A162784.P6996757854089032425

namespace A162784

/-- `round(3^(2*n-A005187(n))/2)` -/
def P6996757854089032425.Spec : Prop :=
  ∀ n, P6996757854089032425.a n = A162784 n

end A162784

/-! ## A162784.P5847408841831124568

`3*a(A166466(n)/3-1)-1` with `a(0)=1`
-/

namespace A162784.P5847408841831124568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (SequenceMachineLib.roundAway ((A166466 n : ℚ) / 3 - 1)).toNat - 1

end

end A162784.P5847408841831124568

namespace A162784

/-- `3*a(A166466(n)/3-1)-1` -/
def P5847408841831124568.Spec : Prop :=
  ∀ n, P5847408841831124568.a n = A162784 n

end A162784

/-! ## A162784.P13804983801806236642

`A147991(2^∑[1-val(abs(1-n)+1, 2)])`
-/

namespace A162784.P13804983801806236642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147991 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A162784.P13804983801806236642

namespace A162784

/-- `A147991(2^∑[1-val(abs(1-n)+1, 2)])` -/
def P13804983801806236642.Spec : Prop :=
  ∀ n, P13804983801806236642.a n = A162784 n

end A162784

/-! ## A162784.P13090505265105021005

`A003278(A001316(n))`
-/

namespace A162784.P13090505265105021005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A001316 n).toNat

end

end A162784.P13090505265105021005

namespace A162784

/-- `A003278(A001316(n))` -/
def P13090505265105021005.Spec : Prop :=
  ∀ n, P13090505265105021005.a n = A162784 n

end A162784

/-! ## A162784.P1320657936380249688

`A007051(A000120(n))`
-/

namespace A162784.P1320657936380249688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (A000120 n).toNat

end

end A162784.P1320657936380249688

namespace A162784

/-- `A007051(A000120(n))` -/
def P1320657936380249688.Spec : Prop :=
  ∀ n, P1320657936380249688.a n = A162784 n

end A162784

/-! ## A162784.P2088751740800291432

`A007729(A038573(n))`
-/

namespace A162784.P2088751740800291432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007729 (A038573 n).toNat

end

end A162784.P2088751740800291432

namespace A162784

/-- `A007729(A038573(n))` -/
def P2088751740800291432.Spec : Prop :=
  ∀ n, P2088751740800291432.a n = A162784 n

end A162784

/-! ## A162784.P3263610835078204527

`A243066(A057334(n))`
-/

namespace A162784.P3263610835078204527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243066 (A057334 n).toNat

end

end A162784.P3263610835078204527

namespace A162784

/-- `A243066(A057334(n))` -/
def P3263610835078204527.Spec : Prop :=
  ∀ n, P3263610835078204527.a n = A162784 n

end A162784

/-! ## A162784.P18129336648677644077

`A193494(Δ[A006046(n)])`
-/

namespace A162784.P18129336648677644077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 (f1 (n + 1) - f1 n).toNat

end

end A162784.P18129336648677644077

namespace A162784

/-- `A193494(Δ[A006046(n)])` -/
def P18129336648677644077.Spec : Prop :=
  ∀ n, P18129336648677644077.a n = A162784 n

end A162784

/-! ## A162784.P2841701712741939452

`A032924(A038573(n)+1)`
-/

namespace A162784.P2841701712741939452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (A038573 n + 1).toNat

end

end A162784.P2841701712741939452

namespace A162784

/-- `A032924(A038573(n)+1)` -/
def P2841701712741939452.Spec : Prop :=
  ∀ n, P2841701712741939452.a n = A162784 n

end A162784

/-! ## A162784.P565210820293675779

`A032924(A001316(2*n))`
-/

namespace A162784.P565210820293675779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (A001316 (2 * n)).toNat

end

end A162784.P565210820293675779

namespace A162784

/-- `A032924(A001316(2*n))` -/
def P565210820293675779.Spec : Prop :=
  ∀ n, P565210820293675779.a n = A162784 n

end A162784

/-! ## A162784.P3033701134226697821

`A003278(A060632(2*n))`
-/

namespace A162784.P3033701134226697821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A060632 (2 * n)).toNat

end

end A162784.P3033701134226697821

namespace A162784

/-- `A003278(A060632(2*n))` -/
def P3033701134226697821.Spec : Prop :=
  ∀ n, P3033701134226697821.a n = A162784 n

end A162784

/-!
# A162786: a(n) = A162526(n)/6.

The programs for A162786, the canonical program `A162786.P15387700522578825517` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162786 has offset 1).

The definition of A162786 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162526, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162786.P15387700522578825517

`A162526(n+1)/6`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A162786

/-- `A162526(n+1)/6` -/
def P15387700522578825517.Spec : Prop :=
  ∀ n, P15387700522578825517.a n = (A162786 (n + 1) : ℚ)

end A162786

/-! ## A162786.P18120020768061410403

`A151800(a(n-1))` with `a(0)=6, a(1)=7, a(2)=8, a(3)=9, a(4)=10`
-/

namespace A162786.P18120020768061410403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 7, 8, 9, 10] fun n a =>
  A151800 (a (n - 1)).toNat

end

end A162786.P18120020768061410403

namespace A162786

/-- `A151800(a(n-1))` -/
def P18120020768061410403.Spec : Prop :=
  ∀ n, P18120020768061410403.a n = A162786 (n + 1)

end A162786

/-! ## A162786.P12790265537190341346

`filter[A161839(n+2), A296079(#)]`
-/

namespace A162786.P12790265537190341346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161839 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296079 (f1 j).toNat = 1) n)

end

end A162786.P12790265537190341346

namespace A162786

/-- `filter[A161839(n+2), A296079(#)]` -/
def P12790265537190341346.Spec : Prop :=
  ∀ n, P12790265537190341346.a n = A162786 (n + 1)

end A162786

/-! ## A162786.P3053637740842247818

`lt[n-1, A006530(n+6)]+6`
-/

namespace A162786.P3053637740842247818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 6

end

end A162786.P3053637740842247818

namespace A162786

/-- `lt[n-1, A006530(n+6)]+6` -/
def P3053637740842247818.Spec : Prop :=
  ∀ n, (P3053637740842247818.a n : ℤ) = A162786 (n + 1)

end A162786

/-! ## A162786.P2311374420864799945

`lt[n-3, A020639(n+6)]+6`
-/

namespace A162786.P2311374420864799945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 6

end

end A162786.P2311374420864799945

namespace A162786

/-- `lt[n-3, A020639(n+6)]+6` -/
def P2311374420864799945.Spec : Prop :=
  ∀ n, (P2311374420864799945.a n : ℤ) = A162786 (n + 1)

end A162786

/-! ## A162786.P12123888753842528147

`record[A067747(A143097(n+3))]`
-/

namespace A162786.P12123888753842528147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A143097 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162786.P12123888753842528147

namespace A162786

/-- `record[A067747(A143097(n+3))]` -/
def P12123888753842528147.Spec : Prop :=
  ∀ n, P12123888753842528147.a n = A162786 (n + 1)

end A162786

/-! ## A162786.P428841214426092877

`record[A077158(n+2)]`
-/

namespace A162786.P428841214426092877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077158 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162786.P428841214426092877

namespace A162786

/-- `record[A077158(n+2)]` -/
def P428841214426092877.Spec : Prop :=
  ∀ n, P428841214426092877.a n = A162786 (n + 1)

end A162786

/-! ## A162786.P9617118640512014494

`record[A092487(2*(n+3))]`
-/

namespace A162786.P9617118640512014494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092487 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162786.P9617118640512014494

namespace A162786

/-- `record[A092487(2*(n+3))]` -/
def P9617118640512014494.Spec : Prop :=
  ∀ n, P9617118640512014494.a n = A162786 (n + 1)

end A162786

/-! ## A162786.P755971949186570946

`record[A033677(6*(n+3))]`
-/

namespace A162786.P755971949186570946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (6 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162786.P755971949186570946

namespace A162786

/-- `record[A033677(6*(n+3))]` -/
def P755971949186570946.Spec : Prop :=
  ∀ n, P755971949186570946.a n = A162786 (n + 1)

end A162786

/-! ## A162786.P3388767210945187417

`eq[6, A033676(6*(n+1))]+1`
-/

namespace A162786.P3388767210945187417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (6 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162786.P3388767210945187417

namespace A162786

/-- `eq[6, A033676(6*(n+1))]+1` -/
def P3388767210945187417.Spec : Prop :=
  ∀ n, (P3388767210945187417.a n : ℤ) = A162786 (n + 1)

end A162786

/-! ## A162786.P13542449142974122545

`A008615(A162526(n+1))`
-/

namespace A162786.P13542449142974122545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A162526 (n + 1)).toNat

end

end A162786.P13542449142974122545

namespace A162786

/-- `A008615(A162526(n+1))` -/
def P13542449142974122545.Spec : Prop :=
  ∀ n, P13542449142974122545.a n = A162786 (n + 1)

end A162786

/-! ## A162786.P13420781912584075486

`eq[n, A033677(A008458(n))]`
-/

namespace A162786.P13420781912584075486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162786.P13420781912584075486

namespace A162786

/-- `eq[n, A033677(A008458(n))]` -/
def P13420781912584075486.Spec : Prop :=
  ∀ n, (P13420781912584075486.a n : ℤ) = A162786 (n + 1)

end A162786

/-! ## A162786.P260766826367795913

`eq[n, A033677(A008486(2*n))]`
-/

namespace A162786.P260766826367795913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A008486 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162786.P260766826367795913

namespace A162786

/-- `eq[n, A033677(A008486(2*n))]` -/
def P260766826367795913.Spec : Prop :=
  ∀ n, (P260766826367795913.a n : ℤ) = A162786 (n + 1)

end A162786

/-!
# A162787: a(n) = A162527(n)/7.

The programs for A162787, there is no canonical definition to state claims against.
-/

/-! ## A162787.P202894332088208702

`A162527(n+1)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162787.P202894332088208702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162527 (n + 1) : ℚ) / 7

end

end A162787.P202894332088208702

/-! ## A162787.P460305249972892267

`A242062(A162527(n+1)-6)`
-/

namespace A162787.P460305249972892267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A162527 (n + 1) - 6).toNat

end

end A162787.P460305249972892267

/-! ## A162787.P10737527407103416307

`record[A033677(7*(n+1))]`
-/

namespace A162787.P10737527407103416307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (7 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162787.P10737527407103416307

/-! ## A162787.P17644564364554014731

`record[A162348(7*2*(n+1))]`
-/

namespace A162787.P17644564364554014731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (7 * (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162787.P17644564364554014731

/-! ## A162787.P13703365459095705563

`record[7*(n+1)/A033676(7*(n+1))]`
-/

namespace A162787.P13703365459095705563
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) : ℚ) / (A033676 (7 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162787.P13703365459095705563

/-! ## A162787.P14105014994615959589

`A033677(A162527(n+1))`
-/

namespace A162787.P14105014994615959589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A162527 (n + 1)).toNat

end

end A162787.P14105014994615959589

/-! ## A162787.P10409933934933406771

`eq[n, A033677(A008458(n)+n)]`
-/

namespace A162787.P10409933934933406771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A008458 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162787.P10409933934933406771

/-! ## A162787.P1589610642494373772

`eq[n, A033677(A022144(n)-n)]`
-/

namespace A162787.P1589610642494373772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A022144 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162787.P1589610642494373772

/-! ## A162787.P69526344395559801

`eq[n, A033677(A234275(n)-n)]`
-/

namespace A162787.P69526344395559801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A234275 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162787.P69526344395559801

/-! ## A162787.P8386490070828920157

`eq[n, A033677(A008574(n)+A008486(n))]`
-/

namespace A162787.P8386490070828920157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A008574 n + A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162787.P8386490070828920157

/-! ## A162787.P7393295318070290225

`eq[n, A033677(A008585(n)+A008574(n))]`
-/

namespace A162787.P7393295318070290225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A008585 n + A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162787.P7393295318070290225

/-!
# A162788: a(n) = A162528(n)/8.

The programs for A162788, there is no canonical definition to state claims against.
-/

/-! ## A162788.P11114329237948225942

`A162528(n+1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162788.P11114329237948225942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162528 (n + 1) : ℚ) / 8

end

end A162788.P11114329237948225942

/-! ## A162788.P2456812999414282544

`A006085(A162528(n+1))`
-/

namespace A162788.P2456812999414282544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A162528 (n + 1)).toNat

end

end A162788.P2456812999414282544

/-! ## A162788.P649213476310512595

`record[A033677(8*(n+4))]`
-/

namespace A162788.P649213476310512595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (8 * (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162788.P649213476310512595

/-! ## A162788.P8389491967411029520

`eq[8, A033676(8*(n+1))]+1`
-/

namespace A162788.P8389491967411029520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (8 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162788.P8389491967411029520

/-! ## A162788.P16903959498242120584

`eq[8, A033676(A022144(n))]`
-/

namespace A162788.P16903959498242120584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162788.P16903959498242120584

/-! ## A162788.P13283917022587189745

`eq[8, A033676(A234275(n))]`
-/

namespace A162788.P13283917022587189745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A234275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162788.P13283917022587189745

/-! ## A162788.P717493673371409486

`eq[8, A033676(A008574(2*n))]`
-/

namespace A162788.P717493673371409486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A008574 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162788.P717493673371409486

/-! ## A162788.P2793533588334254143

`eq[n, A033677(A168103(n)-n)]`
-/

namespace A162788.P2793533588334254143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A168103 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162788.P2793533588334254143

/-! ## A162788.P151159104660853391

`A020725(eq[8, A033676(8*(n+1))])`
-/

namespace A162788.P151159104660853391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (8 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A162788.P151159104660853391

/-! ## A162788.P611152876666997308

`eq[n, A033677(A004275(4*n+1))]`
-/

namespace A162788.P611152876666997308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A004275 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162788.P611152876666997308

/-! ## A162788.P6908744381147158435

`eq[A033677(A022144(n)), A254667(n)]`
-/

namespace A162788.P6908744381147158435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A022144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162788.P6908744381147158435

/-!
# A162789: a(n) = A162529(n)/9.

The programs for A162789, there is no canonical definition to state claims against.
-/

/-! ## A162789.P1272306965700665907

`A162529(n+1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162789.P1272306965700665907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162529 (n + 1) : ℚ) / 9

end

end A162789.P1272306965700665907

/-! ## A162789.P1576043593587969506

`A106610(A162529(n+1))`
-/

namespace A162789.P1576043593587969506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A162529 (n + 1)).toNat

end

end A162789.P1576043593587969506

/-! ## A162789.P3846094225584284323

`record[A033677(9*(n+3))]`
-/

namespace A162789.P3846094225584284323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (9 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162789.P3846094225584284323

/-! ## A162789.P16070366464770108914

`eq[9, A033676(A168103(n))]`
-/

namespace A162789.P16070366464770108914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A168103 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162789.P16070366464770108914

/-! ## A162789.P1308769287712535797

`A226787(A162529(n+1)-1)`
-/

namespace A162789.P1308769287712535797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226787 (A162529 (n + 1) - 1).toNat

end

end A162789.P1308769287712535797

/-! ## A162789.P3839341342072126719

`A033677(lcm(3, A162529(n+1)))`
-/

namespace A162789.P3839341342072126719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (Int.lcm 3 (A162529 (n + 1)))

end

end A162789.P3839341342072126719

/-! ## A162789.P9808338119505298671

`eq[n, A033677(A008486(3*n))]`
-/

namespace A162789.P9808338119505298671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A008486 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162789.P9808338119505298671

/-! ## A162789.P6685080725989957616

`eq[n, A033677(A022144(n)+n)]`
-/

namespace A162789.P6685080725989957616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A022144 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162789.P6685080725989957616

/-! ## A162789.P11460628692769207339

`eq[n, A033677(A234275(n)+n)]`
-/

namespace A162789.P11460628692769207339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A234275 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162789.P11460628692769207339

/-! ## A162789.P18395375042190594438

`eq[9, A033676(A008486(A008486(n)))]`
-/

namespace A162789.P18395375042190594438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A008486 (A008486 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162789.P18395375042190594438

/-! ## A162789.P14408473045119332305

`eq[A033677(A168103(n)), A254667(n)]`
-/

namespace A162789.P14408473045119332305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A168103 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162789.P14408473045119332305

/-! ## A162789.P14710017774976675929

`A033677(2*A162529(n+1)-A162529(n+1))`
-/

namespace A162789.P14710017774976675929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (2 * A162529 (n + 1) - A162529 (n + 1)).toNat

end

end A162789.P14710017774976675929

/-!
# A162790: a(n) = A162530(n)/10.

The programs for A162790, there is no canonical definition to state claims against.
-/

/-! ## A162790.P3542931835126420308

`A162530(n+1)/10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162790.P3542931835126420308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162530 (n + 1) : ℚ) / 10

end

end A162790.P3542931835126420308

/-! ## A162790.P7964254413392426054

`record[A033677(10*(n+5))]`
-/

namespace A162790.P7964254413392426054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (10 * (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162790.P7964254413392426054

/-! ## A162790.P5897174707011649542

`eq[10, A033676(10*(abs(1-n)+1))]`
-/

namespace A162790.P5897174707011649542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (10 * (|1 - (n : ℤ)| + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162790.P5897174707011649542

/-! ## A162790.P7713602326306021283

`A033677(A162530(n+1))`
-/

namespace A162790.P7713602326306021283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A162530 (n + 1)).toNat

end

end A162790.P7713602326306021283

/-! ## A162790.P12808684770243600299

`A008616(A162530(n+1)+1)`
-/

namespace A162790.P12808684770243600299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A162530 (n + 1) + 1).toNat

end

end A162790.P12808684770243600299

/-! ## A162790.P18355680768351538285

`A059995(A162530(n+1)+1)`
-/

namespace A162790.P18355680768351538285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A162530 (n + 1) + 1).toNat

end

end A162790.P18355680768351538285

/-! ## A162790.P18098840394509118192

`A348582(lcm(2, A162530(n+1)))`
-/

namespace A162790.P18098840394509118192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348582 (Int.lcm 2 (A162530 (n + 1)))

end

end A162790.P18098840394509118192

/-! ## A162790.P4736647487832226062

`eq[n, A033677(A168103(n)+n)]`
-/

namespace A162790.P4736647487832226062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A168103 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162790.P4736647487832226062

/-! ## A162790.P2074057626603264476

`eq[n, A033677(A168104(n)-n)]`
-/

namespace A162790.P2074057626603264476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A168104 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162790.P2074057626603264476

/-! ## A162790.P14698008945846093014

`A106621(2*A162530(n+1))`
-/

namespace A162790.P14698008945846093014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (2 * A162530 (n + 1)).toNat

end

end A162790.P14698008945846093014

/-!
# A162792: a(n) = A162532(n)/12.

The programs for A162792, there is no canonical definition to state claims against.
-/

/-! ## A162792.P9237851242343846574

`A162532(n+1)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162792.P9237851242343846574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162532 (n + 1) : ℚ) / 12

end

end A162792.P9237851242343846574

/-! ## A162792.P9430169495604861667

`A033677(A162532(n+1))`
-/

namespace A162792.P9430169495604861667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A162532 (n + 1)).toNat

end

end A162792.P9430169495604861667

/-! ## A162792.P10559811173908142916

`A008647(A162532(n+1)+1)`
-/

namespace A162792.P10559811173908142916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A162532 (n + 1) + 1).toNat

end

end A162792.P10559811173908142916

/-! ## A162792.P9734387076359769294

`A342696(A162532(n+1)+1)`
-/

namespace A162792.P9734387076359769294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A162532 (n + 1) + 1).toNat

end

end A162792.P9734387076359769294

/-! ## A162792.P15536215240398372631

`A162348(2*A162532(n+1))`
-/

namespace A162792.P15536215240398372631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * A162532 (n + 1)).toNat

end

end A162792.P15536215240398372631

/-! ## A162792.P4339235990687515312

`A130747(A162532(n+1)-8)`
-/

namespace A162792.P4339235990687515312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (A162532 (n + 1) - 8).toNat

end

end A162792.P4339235990687515312

/-! ## A162792.P490955388023631571

`eq[12, A033676(A332019(n+1))]`
-/

namespace A162792.P490955388023631571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A332019 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162792.P490955388023631571

/-! ## A162792.P3200723420295570487

`eq[12, A033676(A008458(2*n))]`
-/

namespace A162792.P3200723420295570487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A008458 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162792.P3200723420295570487

/-! ## A162792.P313324722460288157

`eq[n, A033677(A168104(n)+n)]`
-/

namespace A162792.P313324722460288157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A168104 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162792.P313324722460288157

/-! ## A162792.P3066685334621071463

`A194698(2*A162532(n+1))`
-/

namespace A162792.P3066685334621071463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (2 * A162532 (n + 1)).toNat

end

end A162792.P3066685334621071463

/-!
# A162793: Number of toothpicks added to the toothpick structure A139250 at the n-th odd round.

The programs for A162793, there is no canonical definition to state claims against.
-/

/-! ## A162793.P4054659013024727936

`A139251(Δ[n²])`
-/

namespace A162793.P4054659013024727936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A162793.P4054659013024727936

/-! ## A162793.P15865711729328776682

`and(-1, A139251(record[xor(1, n)]))`
-/

namespace A162793.P15865711729328776682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A139251 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A162793.P15865711729328776682

/-! ## A162793.P14931819538403146928

`A187221(2*(n+1))/2`
-/

namespace A162793.P14931819538403146928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187221 (2 * (n + 1)) : ℚ) / 2

end

end A162793.P14931819538403146928

/-! ## A162793.P7054021953328054939

`and(-1, A139251(2*n+1))`
-/

namespace A162793.P7054021953328054939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A139251 (2 * n + 1))

end

end A162793.P7054021953328054939

/-! ## A162793.P13747139766863268106

`round(sqrt(A139251(n+1+n)²+1))`
-/

namespace A162793.P13747139766863268106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A139251 (n + 1 + n) ^ 2 + 1 : ℝ))

end

end A162793.P13747139766863268106

/-! ## A162793.P16952419415655633604

`Δ[A255747(A004273(n))]`
-/

namespace A162793.P16952419415655633604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162793.P16952419415655633604

/-! ## A162793.P1247876659950201797

`A000027(A139251(comp[2*n]))`
-/

namespace A162793.P1247876659950201797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A139251 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A162793.P1247876659950201797

/-! ## A162793.P16305221730821440502

`A151548(2*n)-A160552(2*n)`
-/

namespace A162793.P16305221730821440502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 (2 * n) - A160552 (2 * n)

end

end A162793.P16305221730821440502

/-! ## A162793.P8003283859808582455

`lcm(A057077(n), A139251(2*n+1))`
-/

namespace A162793.P8003283859808582455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A139251 (2 * n + 1))

end

end A162793.P8003283859808582455

/-! ## A162793.P1133916294103817831

`or(A000007(n), A139251(2*n+1))`
-/

namespace A162793.P1133916294103817831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A139251 (2 * n + 1))

end

end A162793.P1133916294103817831

/-! ## A162793.P13264257327481870868

`filter[A139251(2*n+1), A005171(#)]`
-/

namespace A162793.P13264257327481870868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A162793.P13264257327481870868

/-! ## A162793.P5781073006053365740

`filter[A139251(2*n+1), A087049(#)]`
-/

namespace A162793.P5781073006053365740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A162793.P5781073006053365740

/-! ## A162793.P17252484775742338192

`filter[A139251(2*n+1), A105234(#)]`
-/

namespace A162793.P17252484775742338192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A162793.P17252484775742338192

/-! ## A162793.P5923572521316971197

`filter[A139251(2*n+1), A152822(#)]`
-/

namespace A162793.P5923572521316971197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A162793.P5923572521316971197

/-! ## A162793.P15955454233328173927

`A139251(2*n+1)+A000007(n+1)`
-/

namespace A162793.P15955454233328173927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n + 1) + A000007 (n + 1)

end

end A162793.P15955454233328173927

/-! ## A162793.P9541737017201590200

`A139250(2*n+1)-A159791(n+1)`
-/

namespace A162793.P9541737017201590200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (2 * n + 1) - A159791 (n + 1)

end

end A162793.P9541737017201590200

/-! ## A162793.P14980249734995789578

`A139251(2*n+1)+A010673(2*n)`
-/

namespace A162793.P14980249734995789578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n + 1) + A010673 (2 * n)

end

end A162793.P14980249734995789578

/-! ## A162793.P10119983608685137576

`A139251(2*n+1)+A063524(2*n)`
-/

namespace A162793.P10119983608685137576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n + 1) + A063524 (2 * n)

end

end A162793.P10119983608685137576

/-! ## A162793.P9129522666554914469

`A151704(2*n+1)+A151704(2*n)`
-/

namespace A162793.P9129522666554914469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151704 (2 * n + 1) + A151704 (2 * n)

end

end A162793.P9129522666554914469

/-! ## A162793.P18163389569519722652

`A160552(2*n+1)+A160552(2*n)`
-/

namespace A162793.P18163389569519722652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (2 * n + 1) + A160552 (2 * n)

end

end A162793.P18163389569519722652

/-!
# A162794: Number of toothpicks added to the toothpick structure A139250 at the n-th even round.

The programs for A162794, there is no canonical definition to state claims against.
-/

/-! ## A162794.P2308672558833386533

`A139251(2*n)`
-/

namespace A162794.P2308672558833386533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n)

end

end A162794.P2308672558833386533

/-! ## A162794.P15936598011940594107

`lcm(2, A139251(comp[or(1, n)]))`
-/

namespace A162794.P15936598011940594107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A139251 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A162794.P15936598011940594107

/-! ## A162794.P11567625192769610515

`and(-2, A139251(gcd(n, C(2, n))+n))`
-/

namespace A162794.P11567625192769610515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A139251 (Nat.gcd n (Nat.choose 2 n) + n))

end

end A162794.P11567625192769610515

/-! ## A162794.P17937992196721361441

`lcm(2, A139251(A005843(n)))`
-/

namespace A162794.P17937992196721361441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A139251 (A005843 n).toNat)

end

end A162794.P17937992196721361441

/-! ## A162794.P1865101758547840248

`∑{d}[A139251(Δ[n²]-1), A000010(#)]`
-/

namespace A162794.P1865101758547840248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A162794.P1865101758547840248

/-! ## A162794.P12063296086976855900

`floor(A187221(2*n+1)/2)`
-/

namespace A162794.P12063296086976855900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187221 (2 * n + 1) : ℚ) / 2⌋

end

end A162794.P12063296086976855900

/-! ## A162794.P688670736631410689

`A173069(2*n)+A105321(2*n)`
-/

namespace A162794.P688670736631410689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173069 (2 * n) + A105321 (2 * n)

end

end A162794.P688670736631410689

/-! ## A162794.P15699447491902127596

`A173531(2*n)-A173532(2*n)`
-/

namespace A162794.P15699447491902127596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173531 (2 * n) - A173532 (2 * n)

end

end A162794.P15699447491902127596

/-! ## A162794.P687338324474170759

`A004151(A139251(comp[or(1, n)])+1)-1`
-/

namespace A162794.P687338324474170759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A139251 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat - 1

end

end A162794.P687338324474170759

/-! ## A162794.P14293433218762278350

`A004526(A187221(2*n+1))`
-/

namespace A162794.P14293433218762278350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187221 (2 * n + 1)).toNat

end

end A162794.P14293433218762278350

/-!
# A162795: Total number of toothpicks in the toothpick structure A139250 that are parallel to the initial toothpick, after n odd rounds.

The programs for A162795, there is no canonical definition to state claims against.
-/

/-! ## A162795.P8519628543652545218

`1+4*A255737(n)`
-/

namespace A162795.P8519628543652545218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 4 * A255737 n

end

end A162795.P8519628543652545218

/-! ## A162795.P10993968304458590050

`∑[A139251(Δ[n²])]`
-/

namespace A162795.P10993968304458590050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162795.P10993968304458590050

/-! ## A162795.P3043507510330539758

`or(1, ∑[A139251(2*n+1)])`
-/

namespace A162795.P3043507510330539758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162795.P3043507510330539758

/-! ## A162795.P4315147999824962121

`lcm(∑[A139251(2*n+1)], A057077(n))`
-/

namespace A162795.P4315147999824962121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A057077 n)

end

end A162795.P4315147999824962121

/-! ## A162795.P11015148481449417645

`∑[A139251(2*n+1)+A063524(2*n)]`
-/

namespace A162795.P11015148481449417645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n + 1) + A063524 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162795.P11015148481449417645

/-! ## A162795.P14250000353823592212

`∑[A139250(2*n+1)-A139250(2*n)]`
-/

namespace A162795.P14250000353823592212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (2 * n + 1) - A139250 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162795.P14250000353823592212

/-! ## A162795.P13075339627501710175

`∑[A165586(n+1)²*A139251(2*n+1)]`
-/

namespace A162795.P13075339627501710175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165586 (n + 1) ^ 2 * A139251 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162795.P13075339627501710175

/-! ## A162795.P8997290747748829808

`A160552(2*n+1)+∑[A139251(2*n)]`
-/

namespace A162795.P8997290747748829808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162795.P8997290747748829808

/-! ## A162795.P11649897709681391941

`∑[A160552(2*n+1)+A160552(2*n)]`
-/

namespace A162795.P11649897709681391941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (2 * n + 1) + A160552 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162795.P11649897709681391941

/-! ## A162795.P7956830112467668281

`(A160552(2*n+1)+A139250(2*n+1))/2`
-/

namespace A162795.P7956830112467668281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160552 (2 * n + 1) + A139250 (2 * n + 1) : ℚ) / 2

end

end A162795.P7956830112467668281

/-! ## A162795.P788954093428629440

`A160164(2*n+1)-A246336(2*n)`
-/

namespace A162795.P788954093428629440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 (2 * n + 1) - A246336 (2 * n)

end

end A162795.P788954093428629440

/-! ## A162795.P17959512222720479803

`2*A139250(2*n+1)-A246336(2*n)`
-/

namespace A162795.P17959512222720479803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139250 (2 * n + 1) - A246336 (2 * n)

end

end A162795.P17959512222720479803

/-! ## A162795.P12995154576442501575

`A255747(Δ[n²])`
-/

namespace A162795.P12995154576442501575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A162795.P12995154576442501575

/-! ## A162795.P6877470401403120879

`record[A255747(A014681(n)+1)]`
-/

namespace A162795.P6877470401403120879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162795.P6877470401403120879

/-! ## A162795.P12812612897429543690

`record[A255747(A237420(n)+1)]`
-/

namespace A162795.P12812612897429543690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (A237420 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162795.P12812612897429543690

/-! ## A162795.P10066843845600140866

`A255747(2*n)+A160552(2*n+1)`
-/

namespace A162795.P10066843845600140866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (2 * n) + A160552 (2 * n + 1)

end

end A162795.P10066843845600140866

/-! ## A162795.P5507495315612626613

`A139250(2*n+1)-A255747(2*n)`
-/

namespace A162795.P5507495315612626613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (2 * n + 1) - A255747 (2 * n)

end

end A162795.P5507495315612626613

/-! ## A162795.P15765771107636107852

`A246336(2*n)-2*A255747(2*n)`
-/

namespace A162795.P15765771107636107852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246336 (2 * n) - 2 * A255747 (2 * n)

end

end A162795.P15765771107636107852

/-! ## A162795.P8147077611994779511

`∑[A151704(2*n+1)+A151704(2*n)]`
-/

namespace A162795.P8147077611994779511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151704 (2 * n + 1) + A151704 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162795.P8147077611994779511

/-! ## A162795.P7621508955333094669

`Δ[∑[A255747(2*n+1)]-A255747(2*n+1)]`
-/

namespace A162795.P7621508955333094669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A255747 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162795.P7621508955333094669

/-!
# A162796: Number of toothpicks in the toothpick structure A139250 that are orthogonal to the initial toothpick after n even rounds.

The programs for A162796, there is no canonical definition to state claims against.
-/

/-! ## A162796.P2327708224650079710

`∑[A162794(n)]`
-/

namespace A162796.P2327708224650079710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162796.P2327708224650079710

/-! ## A162796.P742593789179155468

`2*A163094(n)`
-/

namespace A162796.P742593789179155468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163094 n

end

end A162796.P742593789179155468

/-! ## A162796.P7194056857113416393

`A255747(2*n)`
-/

namespace A162796.P7194056857113416393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (2 * n)

end

end A162796.P7194056857113416393

/-! ## A162796.P11392460626513106068

`∑[A139251(2*n)]`
-/

namespace A162796.P11392460626513106068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162796.P11392460626513106068

/-! ## A162796.P5381617797122943506

`record[A255747(and(n, n+1))]`
-/

namespace A162796.P5381617797122943506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162796.P5381617797122943506

/-! ## A162796.P5835592112769385267

`record[A255747(n%or(1, n))]`
-/

namespace A162796.P5835592112769385267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (n % Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162796.P5835592112769385267

/-! ## A162796.P18022450379293816034

`record[A255747(n)/(-1)^n]`
-/

namespace A162796.P18022450379293816034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255747 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162796.P18022450379293816034

/-! ## A162796.P6373433251757238089

`∑[lcm(2, A139251(Δ[n²]-1))]`
-/

namespace A162796.P6373433251757238089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A139251 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162796.P6373433251757238089

/-! ## A162796.P3760766648447231461

`(A169707(2*n+1)-1)/4`
-/

namespace A162796.P3760766648447231461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169707 (2 * n + 1) - 1 : ℚ) / 4

end

end A162796.P3760766648447231461

/-! ## A162796.P8256831519636589135

`A005843(A163094(n))`
-/

namespace A162796.P8256831519636589135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A163094 n).toNat

end

end A162796.P8256831519636589135

/-!
# A162797: a(n) = difference between the number of toothpicks of A139250 that are orthogonal to the initial toothpick and the number of toothpicks that are parallel to the initial toothpick, after n even rounds.

The programs for A162797, there is no canonical definition to state claims against.
-/

/-! ## A162797.P4318145776931652600

`A162796(n+1)-A162795(n+1)`
-/

namespace A162797.P4318145776931652600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162796 (n + 1) - A162795 (n + 1)

end

end A162797.P4318145776931652600

/-! ## A162797.P9620978671102596666

`A160552(2*(n+1))`
-/

namespace A162797.P9620978671102596666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (2 * (n + 1))

end

end A162797.P9620978671102596666

/-! ## A162797.P3543997367471874413

`A266529(4*n+5)`
-/

namespace A162797.P3543997367471874413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266529 (4 * n + 5)

end

end A162797.P3543997367471874413

/-! ## A162797.P11295245420356485656

`A151704(2*(n+1))-1`
-/

namespace A162797.P11295245420356485656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151704 (2 * (n + 1)) - 1

end

end A162797.P11295245420356485656

/-! ## A162797.P4894619547156018582

`A255049(2*(n+1))/2`
-/

namespace A162797.P4894619547156018582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255049 (2 * (n + 1)) : ℚ) / 2

end

end A162797.P4894619547156018582

/-! ## A162797.P2402204256309801749

`A169708(2*(n+1))/4`
-/

namespace A162797.P2402204256309801749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169708 (2 * (n + 1)) : ℚ) / 4

end

end A162797.P2402204256309801749

/-! ## A162797.P14987625005060852642

`xor(3, A151704(2*n+2))`
-/

namespace A162797.P14987625005060852642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A151704 (2 * n + 2))

end

end A162797.P14987625005060852642

/-! ## A162797.P12320535113557259526

`or(1, A160552(n+2+n))`
-/

namespace A162797.P12320535113557259526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A160552 (n + 2 + n))

end

end A162797.P12320535113557259526

/-! ## A162797.P10852039810730640825

`floor(A151568(2*(n+1))/2)`
-/

namespace A162797.P10852039810730640825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151568 (2 * (n + 1)) : ℚ) / 2⌋

end

end A162797.P10852039810730640825

/-! ## A162797.P9237415875155845133

`floor(A151569(2*(n+1))/3)`
-/

namespace A162797.P9237415875155845133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151569 (2 * (n + 1)) : ℚ) / 3⌋

end

end A162797.P9237415875155845133

/-!
# A162798: a(n) = A160161(n+1)/2.

The programs for A162798, there is no canonical definition to state claims against.
-/

/-! ## A162798.P6881666137305665514

`A160161(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162798.P6881666137305665514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160161 (n + 2) : ℚ) / 2

end

end A162798.P6881666137305665514

/-! ## A162798.P2717850846338669885

`Δ[A160160(n+1)/2]`
-/

namespace A162798.P2717850846338669885
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160160 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162798.P2717850846338669885

/-! ## A162798.P10749629320893203523

`Δ[Δ[∑[A160160(n)]/2]]`
-/

namespace A162798.P10749629320893203523
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162798.P10749629320893203523

/-! ## A162798.P13457197754146338829

`A001281(A160161(n+2))`
-/

namespace A162798.P13457197754146338829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A160161 (n + 2)).toNat

end

end A162798.P13457197754146338829

/-! ## A162798.P14213757445330926738

`A001281(Δ[A160160(n+1)])`
-/

namespace A162798.P14213757445330926738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A162798.P14213757445330926738

/-! ## A162798.P7916991818931061778

`A004525(Δ[A160160(n+1)])`
-/

namespace A162798.P7916991818931061778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A162798.P7916991818931061778

/-! ## A162798.P134142210355485691

`A025480(Δ[A160160(n+1)])`
-/

namespace A162798.P134142210355485691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n).toNat

end

end A162798.P134142210355485691

/-! ## A162798.P13867976599346113973

`A026741(Δ[A160160(n+1)])`
-/

namespace A162798.P13867976599346113973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A162798.P13867976599346113973

/-! ## A162798.P3144152297029312746

`A038572(Δ[A160160(n+1)])`
-/

namespace A162798.P3144152297029312746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (f1 (n + 1) - f1 n).toNat

end

end A162798.P3144152297029312746

/-! ## A162798.P18034887293048950475

`A273943(Δ[A160160(n+1)])`
-/

namespace A162798.P18034887293048950475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (f1 (n + 1) - f1 n).toNat

end

end A162798.P18034887293048950475

/-!
# A162799: a(n) = A160161(n+2)/4.

The programs for A162799, there is no canonical definition to state claims against.
-/

/-! ## A162799.P14114648180068865496

`A160161(n+3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162799.P14114648180068865496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160161 (n + 3) : ℚ) / 4

end

end A162799.P14114648180068865496

/-! ## A162799.P14670363783192112929

`A162798(n+2)/2`
-/

namespace A162799.P14670363783192112929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162798 (n + 2) : ℚ) / 2

end

end A162799.P14670363783192112929

/-! ## A162799.P10750472978975568811

`Δ[A160160(n+2)/4]`
-/

namespace A162799.P10750472978975568811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160160 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162799.P10750472978975568811

/-! ## A162799.P13100123565620255942

`A002265(A160161(n+3))`
-/

namespace A162799.P13100123565620255942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A160161 (n + 3)).toNat

end

end A162799.P13100123565620255942

/-! ## A162799.P8608903577336791519

`A002265(Δ[A160160(n+2)])`
-/

namespace A162799.P8608903577336791519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A162799.P8608903577336791519

/-! ## A162799.P16494716803658163843

`A110657(Δ[A160160(n+2)])`
-/

namespace A162799.P16494716803658163843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (f1 (n + 1) - f1 n).toNat

end

end A162799.P16494716803658163843

/-! ## A162799.P3632139576011082766

`A131508(Δ[A160160(n+2)])`
-/

namespace A162799.P3632139576011082766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (f1 (n + 1) - f1 n).toNat

end

end A162799.P3632139576011082766

/-! ## A162799.P7907769343201377642

`A008624(A160161(n+3)+1)`
-/

namespace A162799.P7907769343201377642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A160161 (n + 3) + 1).toNat

end

end A162799.P7907769343201377642

/-! ## A162799.P13816211484659059855

`A008621(A160161(n+3)-1)`
-/

namespace A162799.P13816211484659059855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A160161 (n + 3) - 1).toNat

end

end A162799.P13816211484659059855

/-! ## A162799.P12074841991084134843

`A003602(A160161(n+3)-2)`
-/

namespace A162799.P12074841991084134843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A160161 (n + 3) - 2).toNat

end

end A162799.P12074841991084134843

