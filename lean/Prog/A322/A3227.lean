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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B006.C001
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
# A322700: Number of unlabeled graphs with loops spanning n vertices.

The programs for A322700, there is no canonical definition to state claims against.
-/

/-! ## A322700.P7159473784895765725

`A369200(n)+A369147(n)`
-/

namespace A322700.P7159473784895765725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369200 n + A369147 n

end

end A322700.P7159473784895765725

/-! ## A322700.P8058914180180594085

`A360189(A214768(n)+A001076(n))`
-/

namespace A322700.P8058914180180594085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360189 (A214768 n + A001076 n).toNat

end

end A322700.P8058914180180594085

/-!
# A322701: The successive approximations up to 2^n for 2-adic integer 3^(1/3).

The programs for A322701, there is no canonical definition to state claims against.
-/

/-! ## A322701.P10248733020274576807

`379%A026741(A000079(n+1))`
-/

namespace A322701.P10248733020274576807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 379 (A026741 (A000079 (n + 1)).toNat)

end

end A322701.P10248733020274576807

/-! ## A322701.P2716549697022877092

`∑[and(A002231(2*n+1), A131577(n))]`
-/

namespace A322701.P2716549697022877092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002231 (2 * n + 1)) (A131577 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322701.P2716549697022877092

/-! ## A322701.P10798563301705834110

`A106839(A341539(n+2))%A000079(n)`
-/

namespace A322701.P10798563301705834110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106839 (A341539 (n + 2)).toNat) (A000079 n)

end

end A322701.P10798563301705834110

/-! ## A322701.P1393954775009445898

`and(A000225(n), A106839(A341539(n+2)))`
-/

namespace A322701.P1393954775009445898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A106839 (A341539 (n + 2)).toNat)

end

end A322701.P1393954775009445898

/-! ## A322701.P15536216705592995592

`A106839(2^(n+2)-A341538(n+2))%A000079(n)`
-/

namespace A322701.P15536216705592995592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106839 ((2 ^ (n + 2) : ℤ) - A341538 (n + 2)).toNat) (A000079 n)

end

end A322701.P15536216705592995592

/-!
# A322702: a(n) is the product of primes p such that p+1 divides n.

The programs for A322702, the canonical program `A322702.P18111369324308497529` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322702 has offset 1).

The definition of A322702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322702.P2510211891296315756

`lcm(n+1, A323155(n+1))/(n+1)`
-/

namespace A322702.P2510211891296315756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A323155 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A322702.P2510211891296315756

namespace A322702

/-- `lcm(n+1, A323155(n+1))/(n+1)` -/
def P2510211891296315756.Spec : Prop :=
  ∀ n, P2510211891296315756.a n = (A322702 (n + 1) : ℚ)

end A322702

/-! ## A322702.P18111369324308497529

`∏{d}[n+1, A089026(A028310(#-1))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A322702

/-- `∏{d}[n+1, A089026(A028310(#-1))]` -/
def P18111369324308497529.Spec : Prop :=
  ∀ n, P18111369324308497529.a n = A322702 (n + 1)

theorem P18111369324308497529.correct : P18111369324308497529.Spec := by
  intro n
  simp only [A322702, Nat.add_sub_cancel]

end A322702

/-! ## A322702.P12354993437378883548

`gcd(A034386(n), A323155(n+1))`
-/

namespace A322702.P12354993437378883548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A323155 (n + 1))

end

end A322702.P12354993437378883548

namespace A322702

/-- `gcd(A034386(n), A323155(n+1))` -/
def P12354993437378883548.Spec : Prop :=
  ∀ n, (P12354993437378883548.a n : ℤ) = A322702 (n + 1)

end A322702

/-! ## A322702.P6129007060487204494

`gcd(A323155(n+1)², A056606(n))`
-/

namespace A322702.P6129007060487204494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323155 (n + 1) ^ 2) (A056606 n)

end

end A322702.P6129007060487204494

namespace A322702

/-- `gcd(A323155(n+1)², A056606(n))` -/
def P6129007060487204494.Spec : Prop :=
  ∀ n, (P6129007060487204494.a n : ℤ) = A322702 (n + 1)

end A322702

/-! ## A322702.P5005391043271948188

`∏{p}[A323155(n+1), #]`
-/

namespace A322702.P5005391043271948188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A322702.P5005391043271948188

namespace A322702

/-- `∏{p}[A323155(n+1), #]` -/
def P5005391043271948188.Spec : Prop :=
  ∀ n, (P5005391043271948188.a n : ℤ) = A322702 (n + 1)

end A322702

/-!
# A322703: Squarefree MM-numbers of strict uniform regular multiset systems spanning an initial interval of positive integers.

The programs for A322703, there is no canonical definition to state claims against.
-/

/-! ## A322703.P9842978826922590976

`record[∏{p}[A321699(n+1), #]]`
-/

namespace A322703.P9842978826922590976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321699 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322703.P9842978826922590976

/-! ## A322703.P3591003766927358685

`record[A007947(A321699(n+1))]`
-/

namespace A322703.P3591003766927358685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A321699 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322703.P3591003766927358685

/-! ## A322703.P11913940477995918606

`filter[A321699(n+1), A008966(#)]`
-/

namespace A322703.P11913940477995918606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A322703.P11913940477995918606

/-! ## A322703.P7480487972313393646

`filter[A321699(n+1), A132350(#)]`
-/

namespace A322703.P7480487972313393646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A322703.P7480487972313393646

/-! ## A322703.P3482900654344047997

`filter[A321699(n+1), A323154(#)]`
-/

namespace A322703.P3482900654344047997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A322703.P3482900654344047997

/-!
# A322705: Number of k-uniform k-regular hypergraphs spanning n vertices, for some 1 <= k <= n.

The programs for A322705, there is no canonical definition to state claims against.
-/

/-! ## A322705.P14566827341554585177

`A318585(A028495(n)+A000079(n))`
-/

namespace A322705.P14566827341554585177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318585 (A028495 n + A000079 n).toNat

end

end A322705.P14566827341554585177

/-! ## A322705.P12924809296214763994

`A318585(A224958(n)+A000051(n))`
-/

namespace A322705.P12924809296214763994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318585 (A224958 n + A000051 n).toNat

end

end A322705.P12924809296214763994

/-!
# A322706: Regular triangle read by rows where T(n,k) is the number of k-regular k-uniform hypergraphs spanning n vertices.

The programs for A322706, there is no canonical definition to state claims against.
-/

/-! ## A322706.P15893094028255586861

`A347963(7^A071919(n))`
-/

namespace A322706.P15893094028255586861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347963 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A071919 n : ℤ))).toNat

end

end A322706.P15893094028255586861

/-! ## A322706.P14153631880194316397

`A347963(7^A277504(n))`
-/

namespace A322706.P14153631880194316397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347963 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A277504 n : ℤ))).toNat

end

end A322706.P14153631880194316397

/-! ## A322706.P18307720906631573652

`A347963(7^A339649(n))`
-/

namespace A322706.P18307720906631573652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347963 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A339649 n : ℤ))).toNat

end

end A322706.P18307720906631573652

/-! ## A322706.P7644788131922576874

`A199087(A131198(n)²)`
-/

namespace A322706.P7644788131922576874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199087 (A131198 n ^ 2).toNat

end

end A322706.P7644788131922576874

/-! ## A322706.P13633327246799542021

`A332502(A131198(n)²)`
-/

namespace A322706.P13633327246799542021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332502 (A131198 n ^ 2).toNat

end

end A322706.P13633327246799542021

/-!
# A322707: a(0)=0, a(1)=5 and a(n) = 22*a(n-1) - a(n-2) + 10 for n > 1.

The programs for A322707, the canonical program `A322707.P7052637586328087672` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322707 has offset 0).

The definition of A322707 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22*a(n-1)-a(n-2)+10` (program `A322707.P7052637586328087672`, by `A322707.P7052637586328087672.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322707.P7052637586328087672

`22*a(n-1)-a(n-2)+10` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322707

/-- `22*a(n-1)-a(n-2)+10` -/
def P7052637586328087672.Spec : Prop :=
  ∀ n, P7052637586328087672.a n = A322707 n

theorem P7052637586328087672.correct : P7052637586328087672.Spec := by
  intro n
  simp only [A322707]

end A322707

/-! ## A322707.P6270343720535481708

`floor(A077422(n)/2)`
-/

namespace A322707.P6270343720535481708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077422 n : ℚ) / 2⌋

end

end A322707.P6270343720535481708

namespace A322707

/-- `floor(A077422(n)/2)` -/
def P6270343720535481708.Spec : Prop :=
  ∀ n, P6270343720535481708.a n = A322707 n

end A322707

/-! ## A322707.P14747688090127100276

`floor(A090730(n)/4)`
-/

namespace A322707.P14747688090127100276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090730 n : ℚ) / 4⌋

end

end A322707.P14747688090127100276

namespace A322707

/-- `floor(A090730(n)/4)` -/
def P14747688090127100276.Spec : Prop :=
  ∀ n, P14747688090127100276.a n = A322707 n

end A322707

/-! ## A322707.P7445434076272158667

`(A153318(A004273(n))-1)/2`
-/

namespace A322707.P7445434076272158667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153318 (A004273 n).toNat - 1 : ℚ) / 2

end

end A322707.P7445434076272158667

namespace A322707

/-- `(A153318(A004273(n))-1)/2` -/
def P7445434076272158667.Spec : Prop :=
  ∀ n, P7445434076272158667.a n = (A322707 n : ℚ)

end A322707

/-! ## A322707.P5632399535891266609

`A157097(n)-(A157096(n)+5)`
-/

namespace A322707.P5632399535891266609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157097 n - (A157096 n + 5)

end

end A322707.P5632399535891266609

namespace A322707

/-- `A157097(n)-(A157096(n)+5)` -/
def P5632399535891266609.Spec : Prop :=
  ∀ n, P5632399535891266609.a n = A322707 n

end A322707

/-! ## A322707.P17434128258633449988

`xor(A077422(n), A177704(n²+1))/2`
-/

namespace A322707.P17434128258633449988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A077422 n) (A177704 (n ^ 2 + 1)) : ℚ) / 2

end

end A322707.P17434128258633449988

namespace A322707

/-- `xor(A077422(n), A177704(n²+1))/2` -/
def P17434128258633449988.Spec : Prop :=
  ∀ n, P17434128258633449988.a n = (A322707 n : ℚ)

end A322707

/-! ## A322707.P2353892978567280246

`round(A090730(n)/4)-A000203(((-1)^n)²)`
-/

namespace A322707.P2353892978567280246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A090730 n : ℚ) / 4) - A000203 (((-1) ^ n) ^ 2).toNat

end

end A322707.P2353892978567280246

namespace A322707

/-- `round(A090730(n)/4)-A000203(((-1)^n)²)` -/
def P2353892978567280246.Spec : Prop :=
  ∀ n, P2353892978567280246.a n = A322707 n

end A322707

/-! ## A322707.P18055644519554637241

`(A103737(2*n+1)+A103737(2*(n+1)))/2`
-/

namespace A322707.P18055644519554637241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103737 (2 * n + 1) + A103737 (2 * (n + 1)) : ℚ) / 2

end

end A322707.P18055644519554637241

namespace A322707

/-- `(A103737(2*n+1)+A103737(2*(n+1)))/2` -/
def P18055644519554637241.Spec : Prop :=
  ∀ n, P18055644519554637241.a n = (A322707 n : ℚ)

end A322707

/-! ## A322707.P18246643529679471255

`5*A133284(n+1)-(5*(∑[A077422(n)]-1)+5)`
-/

namespace A322707.P18246643529679471255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A133284 (n + 1) - (5 * (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 5)

end

end A322707.P18246643529679471255

namespace A322707

/-- `5*A133284(n+1)-(5*(∑[A077422(n)]-1)+5)` -/
def P18246643529679471255.Spec : Prop :=
  ∀ n, P18246643529679471255.a n = A322707 n

end A322707

/-!
# A322708: a(0)=0, a(1)=6 and a(n) = 26*a(n-1) - a(n-2) + 12 for n > 1.

The programs for A322708, the canonical program `A322708.P5643082611058019864` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322708 has offset 0).

The definition of A322708 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `26*a(n-1)-a(n-2)+12` (program `A322708.P5643082611058019864`, by `A322708.P5643082611058019864.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322708.P5643082611058019864

`26*a(n-1)-a(n-2)+12` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322708

/-- `26*a(n-1)-a(n-2)+12` -/
def P5643082611058019864.Spec : Prop :=
  ∀ n, P5643082611058019864.a n = A322708 n

theorem P5643082611058019864.correct : P5643082611058019864.Spec := by
  intro n
  simp only [A322708]

end A322708

/-! ## A322708.P4747780604278594401

`floor(A097308(n)/2)`
-/

namespace A322708.P4747780604278594401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097308 n : ℚ) / 2⌋

end

end A322708.P4747780604278594401

namespace A322708

/-- `floor(A097308(n)/2)` -/
def P4747780604278594401.Spec : Prop :=
  ∀ n, P4747780604278594401.a n = A322708 n

end A322708

/-! ## A322708.P1564301615258845391

`floor(A090247(n)/4)`
-/

namespace A322708.P1564301615258845391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090247 n : ℚ) / 4⌋

end

end A322708.P1564301615258845391

namespace A322708

/-- `floor(A090247(n)/4)` -/
def P1564301615258845391.Spec : Prop :=
  ∀ n, P1564301615258845391.a n = A322708 n

end A322708

/-! ## A322708.P8318366960950711704

`ceil((A097308(n)-A055642(n))/2)`
-/

namespace A322708.P8318366960950711704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A097308 n - A055642 n : ℚ) / 2⌉

end

end A322708.P8318366960950711704

namespace A322708

/-- `ceil((A097308(n)-A055642(n))/2)` -/
def P8318366960950711704.Spec : Prop :=
  ∀ n, P8318366960950711704.a n = A322708 n

end A322708

/-! ## A322708.P3807433142582385034

`∑[A041070(2*n)]-A041070(2*n)`
-/

namespace A322708.P3807433142582385034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041070 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A041070 (2 * n)

end

end A322708.P3807433142582385034

namespace A322708

/-- `∑[A041070(2*n)]-A041070(2*n)` -/
def P3807433142582385034.Spec : Prop :=
  ∀ n, P3807433142582385034.a n = A322708 n

end A322708

/-! ## A322708.P13337005713507429840

`A322699(eq[6, A002262(n)])`
-/

namespace A322708.P13337005713507429840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322708.P13337005713507429840

namespace A322708

/-- `A322699(eq[6, A002262(n)])` -/
def P13337005713507429840.Spec : Prop :=
  ∀ n, P13337005713507429840.a n = A322708 n

end A322708

/-! ## A322708.P1847177446009720772

`A322699(eq[7, A002260(n+1)])`
-/

namespace A322708.P1847177446009720772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322708.P1847177446009720772

namespace A322708

/-- `A322699(eq[7, A002260(n+1)])` -/
def P1847177446009720772.Spec : Prop :=
  ∀ n, P1847177446009720772.a n = A322708 n

end A322708

/-!
# A322709: a(0)=0, a(1)=7 and a(n) = 30*a(n-1) - a(n-2) + 14 for n > 1.

The programs for A322709, the canonical program `A322709.P8172770795328590569` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322709 has offset 0).

The definition of A322709 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30*a(n-1)-a(n-2)+14` (program `A322709.P8172770795328590569`, by `A322709.P8172770795328590569.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322709.P8172770795328590569

`30*a(n-1)-a(n-2)+14` with `a(0)=0, a(1)=7`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322709

/-- `30*a(n-1)-a(n-2)+14` -/
def P8172770795328590569.Spec : Prop :=
  ∀ n, P8172770795328590569.a n = A322709 n

theorem P8172770795328590569.correct : P8172770795328590569.Spec := by
  intro n
  simp only [A322709]

end A322709

/-! ## A322709.P2648150328388374007

`floor(A068203(n)/2)`
-/

namespace A322709.P2648150328388374007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A068203 n : ℚ) / 2⌋

end

end A322709.P2648150328388374007

namespace A322709

/-- `floor(A068203(n)/2)` -/
def P2648150328388374007.Spec : Prop :=
  ∀ n, P2648150328388374007.a n = A322709 n

end A322709

/-! ## A322709.P8728474921654824073

`ceil(A068203(n)/2-A007318(∑[n]))`
-/

namespace A322709.P8728474921654824073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068203 n : ℚ) / 2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌉

end

end A322709.P8728474921654824073

namespace A322709

/-- `ceil(A068203(n)/2-A007318(∑[n]))` -/
def P8728474921654824073.Spec : Prop :=
  ∀ n, P8728474921654824073.a n = A322709 n

end A322709

/-! ## A322709.P9794968009126214664

`∑[A041096(2*n)]-A041096(2*n)`
-/

namespace A322709.P9794968009126214664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041096 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A041096 (2 * n)

end

end A322709.P9794968009126214664

namespace A322709

/-- `∑[A041096(2*n)]-A041096(2*n)` -/
def P9794968009126214664.Spec : Prop :=
  ∀ n, P9794968009126214664.a n = A322709 n

end A322709

/-! ## A322709.P4034485213297474498

`A322699(eq[7, A002262(n)])`
-/

namespace A322709.P4034485213297474498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322709.P4034485213297474498

namespace A322709

/-- `A322699(eq[7, A002262(n)])` -/
def P4034485213297474498.Spec : Prop :=
  ∀ n, P4034485213297474498.a n = A322709 n

end A322709

/-! ## A322709.P11976682069304166882

`A322699(eq[8, A002260(n+1)])`
-/

namespace A322709.P11976682069304166882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322709.P11976682069304166882

namespace A322709

/-- `A322699(eq[8, A002260(n+1)])` -/
def P11976682069304166882.Spec : Prop :=
  ∀ n, P11976682069304166882.a n = A322709 n

end A322709

/-!
# A322710: Negative discriminants with form class number 2 (negated).

The programs for A322710, there is no canonical definition to state claims against.
-/

/-! ## A322710.P16393148620417999780

`A350395(eq[2, A014600(n)])`
-/

namespace A322710.P16393148620417999780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322710.P16393148620417999780

/-! ## A322710.P10857970061039936695

`∩[A133288(n+1), A379722(n+1)]`
-/

namespace A322710.P10857970061039936695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322710.P10857970061039936695

/-! ## A322710.P5564188709318990898

`A133288(A077168(n))`
-/

namespace A322710.P5564188709318990898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133288 (A077168 n).toNat

end

end A322710.P5564188709318990898

/-! ## A322710.P13399651922214702046

`A133288(A043319(n+1))`
-/

namespace A322710.P13399651922214702046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133288 (A043319 (n + 1)).toNat

end

end A322710.P13399651922214702046

/-! ## A322710.P12338138165780438980

`A133288(A044916(n+1))`
-/

namespace A322710.P12338138165780438980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133288 (A044916 (n + 1)).toNat

end

end A322710.P12338138165780438980

/-!
# A322713: a(n) = numerator of the Riemann prime counting function for 10^n.

The programs for A322713, there is no canonical definition to state claims against.
-/

/-! ## A322713.P4923726282233228081

`A099319(10^n)`
-/

namespace A322713.P4923726282233228081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099319 (10 ^ n)

end

end A322713.P4923726282233228081

/-!
# A322714: a(n) = denominator of the Riemann prime counting function for 10^n.

The programs for A322714, there is no canonical definition to state claims against.
-/

/-! ## A322714.P8525105082923246876

`A099320(10^n)`
-/

namespace A322714.P8525105082923246876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099320 (10 ^ n)

end

end A322714.P8525105082923246876

/-!
# A322719: Number of times the digit 4 appears in the first 10^n decimal digits of Euler's number e = exp(1), counting starts after the decimal point.

The programs for A322719, there is no canonical definition to state claims against.
-/

/-! ## A322719.P6734363738746808984

`A277441(n)+A107128(A277436(n+1))`
-/

namespace A322719.P6734363738746808984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277441 n + A107128 (A277436 (n + 1)).toNat

end

end A322719.P6734363738746808984

/-!
# A322725: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n * (2 + x*A(x)^n)^n.

The programs for A322725, there is no canonical definition to state claims against.
-/

/-! ## A322725.P13600671166326289573

`A036234(A289431(n)+A289388(n))`
-/

namespace A322725.P13600671166326289573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A289431 n + A289388 n).toNat

end

end A322725.P13600671166326289573

/-! ## A322725.P11516225355669137422

`A036234(or(A000296(n), A289431(n)))`
-/

namespace A322725.P11516225355669137422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (Int.lor (A000296 n) (A289431 n)).toNat

end

end A322725.P11516225355669137422

/-! ## A322725.P15454329479257457736

`A036234(or(A289388(n), A289431(n)))`
-/

namespace A322725.P15454329479257457736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (Int.lor (A289388 n) (A289431 n)).toNat

end

end A322725.P15454329479257457736

/-!
# A322726: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n * (3 + x*A(x)^n)^n.

The programs for A322726, there is no canonical definition to state claims against.
-/

/-! ## A322726.P11342080993163719372

`A255338(A270229(n))+A007526(n)`
-/

namespace A322726.P11342080993163719372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255338 (A270229 n).toNat + A007526 n

end

end A322726.P11342080993163719372

/-! ## A322726.P13701388534091160757

`A003056(A379588(n))+A000142(n+1)`
-/

namespace A322726.P13701388534091160757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A379588 n).toNat + A000142 (n + 1)

end

end A322726.P13701388534091160757

/-!
# A322728: Continued fraction expansion of a constant r such that the odd-indexed bisection equals the continued fraction of 2*r, with an even-indexed bisection of all 2's.

The programs for A322728, there is no canonical definition to state claims against.
-/

/-! ## A322728.P9693859933185498284

`A100380(or(50, A066532(n+1)))`
-/

namespace A322728.P9693859933185498284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100380 (Int.lor 50 (A066532 (n + 1))).toNat

end

end A322728.P9693859933185498284

/-! ## A322728.P6260131575860968173

`A214546(A126120(n+5))+A001511(n+3)`
-/

namespace A322728.P6260131575860968173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 (A126120 (n + 5)).toNat + A001511 (n + 3)

end

end A322728.P6260131575860968173

/-! ## A322728.P9009677702237443964

`A317994(∪[A017533(3*n+1), A194382(n+5)])`
-/

namespace A322728.P9009677702237443964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194382 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317994 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A322728.P9009677702237443964

/-! ## A322728.P15086763720709654444

`A269592(A001511(n+1))+A014707(A293025(n))`
-/

namespace A322728.P15086763720709654444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269592 (A001511 (n + 1)).toNat + A014707 (A293025 n).toNat

end

end A322728.P15086763720709654444

/-!
# A322729: G.f.: Sum_{n>=0} ((1+x)^n - 1 - x)^n / (2 - (1+x)^(n+1))^(n+1).

The programs for A322729, there is no canonical definition to state claims against.
-/

/-! ## A322729.P12338331408282991775

`A049225(A258046(∏[ceil(2^(n-1))]))`
-/

namespace A322729.P12338331408282991775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049225 (A258046 (∏ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A322729.P12338331408282991775

/-!
# A322730: E.g.f. S(x,y) = Integral C(x,y)*C(y,x) dx such that C(x,y)^2 - S(x,y)^2 = 1 and C(y,x) = 1 + Integral S(y,x)*C(x,y) dy, where S(x,y) = Sum_{n>=0} Sum_{k=0..n} T(n,k) * x^(2*n+1-2*k)*y^(2*k)/(2*n+1)!, as a triangle of coefficients T(n,k) read by rows.

The programs for A322730, there is no canonical definition to state claims against.
-/

/-! ## A322730.P6550965401034433871

`A091042(n)*A322220(n)`
-/

namespace A322730.P6550965401034433871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 n * A322220 n

end

end A322730.P6550965401034433871

/-! ## A322730.P217592161969344054

`A028310(∏{p}[A367380(n), #])*A091042(n)`
-/

namespace A322730.P217592161969344054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) * A091042 n

end

end A322730.P217592161969344054

/-! ## A322730.P3585370182216344104

`A033862(A022168(n))*A091042(n)`
-/

namespace A322730.P3585370182216344104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A022168 n).toNat * A091042 n

end

end A322730.P3585370182216344104

/-! ## A322730.P11705420442664378376

`A087559(A156764(n))*A091042(n)`
-/

namespace A322730.P11705420442664378376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087559 (A156764 n).toNat * A091042 n

end

end A322730.P11705420442664378376

/-! ## A322730.P5290568965816819930

`A091042(n)*A145819(A168621(n))`
-/

namespace A322730.P5290568965816819930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 n * A145819 (A168621 n).toNat

end

end A322730.P5290568965816819930

/-!
# A322731: E.g.f. C(x,y) = 1 + Integral S(x,y)*C(y,x) dx such that C(x,y)^2 - S(x,y)^2 = 1 and C(y,x) = Integral S(y,x)*C(x,y) dy, where C(x,y) = Sum_{n>=0} Sum_{k=0..n} T(n,k) * x^(2*n-2*k)*y^(2*k)/(2*n)!, as a triangle of coefficients T(n,k) read by rows.

The programs for A322731, there is no canonical definition to state claims against.
-/

/-! ## A322731.P8751685274351610222

`A086645(n)*A322221(n)`
-/

namespace A322731.P8751685274351610222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 n * A322221 n

end

end A322731.P8751685274351610222

/-! ## A322731.P4443510495821858968

`A086645(n)*A322222(A061579(n))`
-/

namespace A322731.P4443510495821858968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 n * A322222 (A061579 n).toNat

end

end A322731.P4443510495821858968

/-! ## A322731.P17400357295239271453

`A322732(A061579(n))`
-/

namespace A322731.P17400357295239271453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322732 (A061579 n).toNat

end

end A322731.P17400357295239271453

/-! ## A322731.P11486708095132047804

`A322732(A114327(n)+n)`
-/

namespace A322731.P11486708095132047804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322732 (A114327 n + (n : ℤ)).toNat

end

end A322731.P11486708095132047804

/-! ## A322731.P7347293048612405159

`A322732(A038722(n+1)-1)`
-/

namespace A322731.P7347293048612405159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322732 (A038722 (n + 1) - 1).toNat

end

end A322731.P7347293048612405159

/-!
# A322732: E.g.f. C(y,x) = 1 + Integral S(y,x)*C(x,y) dy such that C(x,y)^2 - S(x,y)^2 = 1 and C(x,y) = Integral S(x,y)*C(y,x) dx, where C(y,x) = Sum_{n>=0} Sum_{k=0..n} T(n,k) * x^(2*n-2*k)*y^(2*k)/(2*n)!, as a triangle of coefficients T(n,k) read by rows.

The programs for A322732, there is no canonical definition to state claims against.
-/

/-! ## A322732.P6055117896438278864

`A086645(n)*A322222(n)`
-/

namespace A322732.P6055117896438278864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 n * A322222 n

end

end A322732.P6055117896438278864

/-! ## A322732.P6741765976459890884

`A322731(A061579(n))`
-/

namespace A322732.P6741765976459890884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322731 (A061579 n).toNat

end

end A322732.P6741765976459890884

/-! ## A322732.P9391515575016138603

`A322731(A038722(n+1)-1)`
-/

namespace A322732.P9391515575016138603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322731 (A038722 (n + 1) - 1).toNat

end

end A322732.P9391515575016138603

/-! ## A322732.P7995268154244562156

`A322731(A002378(n)%A014132(n+1))`
-/

namespace A322732.P7995268154244562156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322731 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A322732.P7995268154244562156

/-! ## A322732.P4384966520392463641

`A322731(A038722(n+2))`
-/

namespace A322732.P4384966520392463641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322731 (A038722 (n + 2)).toNat

end

end A322732.P4384966520392463641

/-!
# A322734: Row sums of triangle A322731.

The programs for A322734, there is no canonical definition to state claims against.
-/

/-! ## A322734.P8987146722941828950

`A007782(A130907(n))-A306826(n)`
-/

namespace A322734.P8987146722941828950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007782 (A130907 n).toNat - A306826 n

end

end A322734.P8987146722941828950

/-!
# A322735: G.f. satisfies: A(x) = Sum_{n>=0} ( (1+x)^n - A(x)^(1/2) )^n / ( 2 - (1+x)^n * A(x)^(1/2) )^(n+1).

The programs for A322735, there is no canonical definition to state claims against.
-/

/-! ## A322735.P6711287205412299018

`A073289(n!²)`
-/

namespace A322735.P6711287205412299018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (Nat.factorial n ^ 2)

end

end A322735.P6711287205412299018

/-!
# A322736: G.f. satisfies: A(x) = Sum_{n>=0} 2^n * ( (1+x)^n - A(x)^(1/2) )^n / ( 3 - 2*(1+x)^n * A(x)^(1/2) )^(n+1).

The programs for A322736, there is no canonical definition to state claims against.
-/

/-! ## A322736.P3445198177036835677

`A351235(Δ[a(n-1)²])` with `a(0)=1, a(1)=2`
-/

namespace A322736.P3445198177036835677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351235 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A322736.P3445198177036835677

/-!
# A322737: G.f. satisfies: A(x) = Sum_{n>=0} ( 1/(1-x)^n - A(x) )^n / (2 - A(x)/(1-x)^n)^(n+1).

The programs for A322737, there is no canonical definition to state claims against.
-/

/-! ## A322737.P8025947876272261632

`A006166(A006109(n)+A005251(n))`
-/

namespace A322737.P8025947876272261632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006166 (A006109 n + A005251 n).toNat

end

end A322737.P8025947876272261632

/-! ## A322737.P665820176318706237

`A006166(A006109(n)+A006053(n))`
-/

namespace A322737.P665820176318706237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006166 (A006109 n + A006053 n).toNat

end

end A322737.P665820176318706237

/-!
# A322738: E.g.f. A(x) = (1 + Integral A(x) dx) * (1 + Integral A(x)^2 dx).

The programs for A322738, there is no canonical definition to state claims against.
-/

/-! ## A322738.P16841049060546774965

`A051724(n)+A004273(A305323(n))`
-/

namespace A322738.P16841049060546774965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 n + A004273 (A305323 n).toNat

end

end A322738.P16841049060546774965

/-! ## A322738.P16244731770431461248

`A144396(A082278(n+1))-A082282(n+1)`
-/

namespace A322738.P16244731770431461248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A082278 (n + 1)).toNat - A082282 (n + 1)

end

end A322738.P16244731770431461248

/-!
# A322739: E.g.f. A(x) satisfies: A(x) = Sum_{n>=0} ( exp(2*n*x) - A(x)^n )^n.

The programs for A322739, there is no canonical definition to state claims against.
-/

/-! ## A322739.P2109175567193180652

`A053632(A125247(n+1)-(n-1))`
-/

namespace A322739.P2109175567193180652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053632 (A125247 (n + 1) - ((n : ℤ) - 1)).toNat

end

end A322739.P2109175567193180652

/-!
# A322740: Least area of a grid rectangle from which n >= 3 grid points can be chosen such that the binomial(n,3) triangles formed by any 3 of the points have distinct areas > 0.

The programs for A322740, there is no canonical definition to state claims against.
-/

/-! ## A322740.P16343642756004479133

`A283024(A293421(n+1))`
-/

namespace A322740.P16343642756004479133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283024 (A293421 (n + 1)).toNat

end

end A322740.P16343642756004479133

/-! ## A322740.P15270761181708322937

`∑[∑[A006694(A051418(n+1))]]`
-/

namespace A322740.P15270761181708322937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (A051418 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322740.P15270761181708322937

/-!
# A322741: Sorted list of 84 distinct triangle areas corresponding to the unique solution to the problem of placing 9 points on a grid rectangle of minimal area, such that all triangles formed by any 3 of the points have distinct areas > 0.

The programs for A322741, there is no canonical definition to state claims against.
-/

/-! ## A322741.P14213981169990655319

`record[A227177(A227142((n+1)²))]`
-/

namespace A322741.P14213981169990655319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A227142 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322741.P14213981169990655319

/-! ## A322741.P6545239882262646753

`A227177(A008578(A005893(n)))`
-/

namespace A322741.P6545239882262646753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A008578 (A005893 n).toNat).toNat

end

end A322741.P6545239882262646753

/-! ## A322741.P1041272007661290243

`record[A061071(A008619(A045896(n)))]`
-/

namespace A322741.P1041272007661290243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (A008619 (A045896 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322741.P1041272007661290243

/-! ## A322741.P10145765659321018320

`record[A188462(A061071(A084849(n)))]`
-/

namespace A322741.P10145765659321018320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A061071 (A084849 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322741.P10145765659321018320

/-! ## A322741.P4780522664515149001

`lt[A383477(2*(n+1)), A186664(A278104(n+1))]`
-/

namespace A322741.P4780522664515149001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383477 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186664 (A278104 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322741.P4780522664515149001

/-!
# A322744: Array T(n,k) = (3*n*k - A319929(n,k))/2, n >= 1, k >= 1, read by antidiagonals.

The programs for A322744, the canonical program `A322744.P7428208251532424710` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322744 has offset 1).

The definition of A322744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322744.P9419775869229983601

`2*A003991(n+1)-A322630(n+1)`
-/

namespace A322744.P9419775869229983601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003991 (n + 1) - A322630 (n + 1)

end

end A322744.P9419775869229983601

namespace A322744

/-- `2*A003991(n+1)-A322630(n+1)` -/
def P9419775869229983601.Spec : Prop :=
  ∀ n, P9419775869229983601.a n = A322744 (n + 1)

end A322744

/-! ## A322744.P12044157063281746819

`A003991(n+1)+A001281(A003991(n+1)-A319929(n+1))`
-/

namespace A322744.P12044157063281746819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + A001281 (A003991 (n + 1) - A319929 (n + 1)).toNat

end

end A322744.P12044157063281746819

namespace A322744

/-- `A003991(n+1)+A001281(A003991(n+1)-A319929(n+1))` -/
def P12044157063281746819.Spec : Prop :=
  ∀ n, P12044157063281746819.a n = A322744 (n + 1)

end A322744

/-! ## A322744.P16363879870339973161

`A004525(A003991(n+1)-A319929(n+1))+A003991(n+1)`
-/

namespace A322744.P16363879870339973161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003991 (n + 1) - A319929 (n + 1)).toNat + A003991 (n + 1)

end

end A322744.P16363879870339973161

namespace A322744

/-- `A004525(A003991(n+1)-A319929(n+1))+A003991(n+1)` -/
def P16363879870339973161.Spec : Prop :=
  ∀ n, P16363879870339973161.a n = A322744 (n + 1)

end A322744

/-! ## A322744.P3318143893057472580

`A004526(A003991(n+1)-A319929(n+1))+A003991(n+1)`
-/

namespace A322744.P3318143893057472580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003991 (n + 1) - A319929 (n + 1)).toNat + A003991 (n + 1)

end

end A322744.P3318143893057472580

namespace A322744

/-- `A004526(A003991(n+1)-A319929(n+1))+A003991(n+1)` -/
def P3318143893057472580.Spec : Prop :=
  ∀ n, P3318143893057472580.a n = A322744 (n + 1)

end A322744

/-! ## A322744.P15302139881051856858

`A006370(A003991(n+1)-A319929(n+1))+A003991(n+1)`
-/

namespace A322744.P15302139881051856858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A003991 (n + 1) - A319929 (n + 1)).toNat + A003991 (n + 1)

end

end A322744.P15302139881051856858

namespace A322744

/-- `A006370(A003991(n+1)-A319929(n+1))+A003991(n+1)` -/
def P15302139881051856858.Spec : Prop :=
  ∀ n, P15302139881051856858.a n = A322744 (n + 1)

end A322744

/-! ## A322744.P8454371451880611074

`A014682(A003991(n+1)-A319929(n+1))+A003991(n+1)`
-/

namespace A322744.P8454371451880611074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A003991 (n + 1) - A319929 (n + 1)).toNat + A003991 (n + 1)

end

end A322744.P8454371451880611074

namespace A322744

/-- `A014682(A003991(n+1)-A319929(n+1))+A003991(n+1)` -/
def P8454371451880611074.Spec : Prop :=
  ∀ n, P8454371451880611074.a n = A322744 (n + 1)

end A322744

/-! ## A322744.P8633060915402417259

`A026741(A003991(n+1)-A319929(n+1))+A003991(n+1)`
-/

namespace A322744.P8633060915402417259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003991 (n + 1) - A319929 (n + 1)).toNat + A003991 (n + 1)

end

end A322744.P8633060915402417259

namespace A322744

/-- `A026741(A003991(n+1)-A319929(n+1))+A003991(n+1)` -/
def P8633060915402417259.Spec : Prop :=
  ∀ n, P8633060915402417259.a n = A322744 (n + 1)

end A322744

/-! ## A322744.P7585501548118926934

`A029578(A003991(n+1)-A319929(n+1))+A003991(n+1)`
-/

namespace A322744.P7585501548118926934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A003991 (n + 1) - A319929 (n + 1)).toNat + A003991 (n + 1)

end

end A322744.P7585501548118926934

namespace A322744

/-- `A029578(A003991(n+1)-A319929(n+1))+A003991(n+1)` -/
def P7585501548118926934.Spec : Prop :=
  ∀ n, P7585501548118926934.a n = A322744 (n + 1)

end A322744

/-! ## A322744.P12207622332286442892

`(A327259(n+1)+A003991(n+1))/2`
-/

namespace A322744.P12207622332286442892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327259 (n + 1) + A003991 (n + 1) : ℚ) / 2

end

end A322744.P12207622332286442892

namespace A322744

/-- `(A327259(n+1)+A003991(n+1))/2` -/
def P12207622332286442892.Spec : Prop :=
  ∀ n, P12207622332286442892.a n = (A322744 (n + 1) : ℚ)

theorem P12207622332286442892.correct : P12207622332286442892.Spec := by
  intro n
  simp only [A322744, Nat.add_sub_cancel, A322744.P12207622332286442892.a, A322744.P7428208251532424710.a, A003991, A003991.P14084851459366035567.a, A327259, A327259.P9875520771987652429.a, A334923, A334923.P17285238801038389709.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A334922, A334922.P17964154798392453556.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A143902, A143902.P5916339437029833280.a, A243866, A243866.P720417055199170297.a, A008619, A008619.P16053834178911111118.a, A057944, A057944.P16851463738746886639.a, A059036, A059036.P10984433159116004346.a, A115514, A115514.P8808865076358654155.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A322744

/-! ## A322744.P7428208251532424710

`2*A334923(n+1)-A003991(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A322744

/-- `2*A334923(n+1)-A003991(n+1)` -/
def P7428208251532424710.Spec : Prop :=
  ∀ n, P7428208251532424710.a n = A322744 (n + 1)

theorem P7428208251532424710.correct : P7428208251532424710.Spec := by
  intro n
  simp only [A322744, Nat.add_sub_cancel]

end A322744

/-! ## A322744.P7142868920214524560

`2*A334922(n+1)-A319929(n+1)`
-/

namespace A322744.P7142868920214524560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334922 (n + 1) - A319929 (n + 1)

end

end A322744.P7142868920214524560

namespace A322744

/-- `2*A334922(n+1)-A319929(n+1)` -/
def P7142868920214524560.Spec : Prop :=
  ∀ n, P7142868920214524560.a n = A322744 (n + 1)

end A322744

/-! ## A322744.P1476886730795321934

`A004525(A327259(n+1)+A003991(n+1))`
-/

namespace A322744.P1476886730795321934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A327259 (n + 1) + A003991 (n + 1)).toNat

end

end A322744.P1476886730795321934

namespace A322744

/-- `A004525(A327259(n+1)+A003991(n+1))` -/
def P1476886730795321934.Spec : Prop :=
  ∀ n, P1476886730795321934.a n = A322744 (n + 1)

end A322744

/-! ## A322744.P11801514352274569089

`A004526(A327259(n+1)+A003991(n+1))`
-/

namespace A322744.P11801514352274569089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A327259 (n + 1) + A003991 (n + 1)).toNat

end

end A322744.P11801514352274569089

namespace A322744

/-- `A004526(A327259(n+1)+A003991(n+1))` -/
def P11801514352274569089.Spec : Prop :=
  ∀ n, P11801514352274569089.a n = A322744 (n + 1)

end A322744

/-! ## A322744.P14865167631003888980

`A005843(A334923(n+1))-A003991(n+1)`
-/

namespace A322744.P14865167631003888980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A334923 (n + 1)).toNat - A003991 (n + 1)

end

end A322744.P14865167631003888980

namespace A322744

/-- `A005843(A334923(n+1))-A003991(n+1)` -/
def P14865167631003888980.Spec : Prop :=
  ∀ n, P14865167631003888980.a n = A322744 (n + 1)

end A322744

/-! ## A322744.P1256979340930729909

`A008486(A003991(n+1))-2*A334922(n+1)`
-/

namespace A322744.P1256979340930729909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A003991 (n + 1)).toNat - 2 * A334922 (n + 1)

end

end A322744.P1256979340930729909

namespace A322744

/-- `A008486(A003991(n+1))-2*A334922(n+1)` -/
def P1256979340930729909.Spec : Prop :=
  ∀ n, P1256979340930729909.a n = A322744 (n + 1)

end A322744

/-! ## A322744.P17340004508074982724

`A003991(n+1)+A334923(n+1)-A334922(n+1)`
-/

namespace A322744.P17340004508074982724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A334923 (n + 1) - A334922 (n + 1))

end

end A322744.P17340004508074982724

namespace A322744

/-- `A003991(n+1)+A334923(n+1)-A334922(n+1)` -/
def P17340004508074982724.Spec : Prop :=
  ∀ n, P17340004508074982724.a n = A322744 (n + 1)

theorem P17340004508074982724.correct : P17340004508074982724.Spec := by
  intro n
  simp only [A322744, Nat.add_sub_cancel, A322744.P17340004508074982724.a, A322744.P7428208251532424710.a, A003991, A003991.P14084851459366035567.a, A334922, A334922.P17964154798392453556.a, A334923, A334923.P17285238801038389709.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A143902, A143902.P5916339437029833280.a, A243866, A243866.P720417055199170297.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A008619, A008619.P16053834178911111118.a, A059036, A059036.P10984433159116004346.a, A115514, A115514.P8808865076358654155.a, A057944, A057944.P16851463738746886639.a, A099375, A099375.P13700148065993022910.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A322744

/-! ## A322744.P15472806659606543763

`A319929(n+1)+A327259(n+1)-A322630(n+1)`
-/

namespace A322744.P15472806659606543763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319929 (n + 1) + (A327259 (n + 1) - A322630 (n + 1))

end

end A322744.P15472806659606543763

namespace A322744

/-- `A319929(n+1)+A327259(n+1)-A322630(n+1)` -/
def P15472806659606543763.Spec : Prop :=
  ∀ n, P15472806659606543763.a n = A322744 (n + 1)

end A322744

/-! ## A322744.P10126978328343282335

`A334922(n+1)+A334923(n+1)-A322630(n+1)`
-/

namespace A322744.P10126978328343282335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334922 (n + 1) + (A334923 (n + 1) - A322630 (n + 1))

end

end A322744.P10126978328343282335

namespace A322744

/-- `A334922(n+1)+A334923(n+1)-A322630(n+1)` -/
def P10126978328343282335.Spec : Prop :=
  ∀ n, P10126978328343282335.a n = A322744 (n + 1)

end A322744

/-! ## A322744.P2704502911530933448

`A327259(n+1)+A334922(n+1)-A334923(n+1)`
-/

namespace A322744.P2704502911530933448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327259 (n + 1) + (A334922 (n + 1) - A334923 (n + 1))

end

end A322744.P2704502911530933448

namespace A322744

/-- `A327259(n+1)+A334922(n+1)-A334923(n+1)` -/
def P2704502911530933448.Spec : Prop :=
  ∀ n, P2704502911530933448.a n = A322744 (n + 1)

theorem P2704502911530933448.correct : P2704502911530933448.Spec := by
  intro n
  simp only [A322744, Nat.add_sub_cancel, A322744.P2704502911530933448.a, A322744.P7428208251532424710.a, A003991, A003991.P14084851459366035567.a, A327259, A327259.P9875520771987652429.a, A334922, A334922.P17964154798392453556.a, A334923, A334923.P17285238801038389709.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A143902, A143902.P5916339437029833280.a, A243866, A243866.P720417055199170297.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A008619, A008619.P16053834178911111118.a, A059036, A059036.P10984433159116004346.a, A115514, A115514.P8808865076358654155.a, A057944, A057944.P16851463738746886639.a, A099375, A099375.P13700148065993022910.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A322744

/-! ## A322744.P8464308355884400877

`A005843(A003991(n+1)-A334922(n+1))+A003991(n+1)`
-/

namespace A322744.P8464308355884400877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A003991 (n + 1) - A334922 (n + 1)).toNat + A003991 (n + 1)

end

end A322744.P8464308355884400877

namespace A322744

/-- `A005843(A003991(n+1)-A334922(n+1))+A003991(n+1)` -/
def P8464308355884400877.Spec : Prop :=
  ∀ n, P8464308355884400877.a n = A322744 (n + 1)

end A322744

/-!
# A322745: a(n) = n * (16*n^2+20*n+5)^2.

The programs for A322745, the canonical program `A322745.P6959186847412511194` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322745 has offset 0).

The definition of A322745 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(16*n²+20*n+5)²` (program `A322745.P6959186847412511194`, by `A322745.P6959186847412511194.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322745.P6959186847412511194

`n*(16*n²+20*n+5)²`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322745

/-- `n*(16*n²+20*n+5)²` -/
def P6959186847412511194.Spec : Prop :=
  ∀ n, (P6959186847412511194.a n : ℤ) = A322745 n

theorem P6959186847412511194.correct : P6959186847412511194.Spec := by
  intro n
  simp only [A322745]

end A322745

/-! ## A322745.P6430774571277445297

`n*A054777(n+1)+n`
-/

namespace A322745.P6430774571277445297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054777 (n + 1) + (n : ℤ)

end

end A322745.P6430774571277445297

namespace A322745

/-- `n*A054777(n+1)+n` -/
def P6430774571277445297.Spec : Prop :=
  ∀ n, P6430774571277445297.a n = A322745 n

theorem P6430774571277445297.correct : P6430774571277445297.Spec := by
  intro n
  simp only [A322745, Nat.add_sub_cancel, A322745.P6430774571277445297.a, A322745.P6959186847412511194.a, A054777, A054777.P991679116214926285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322745

/-! ## A322745.P13593730394670003393

`A069129(n+1)*A322830(n)-(n+1)`
-/

namespace A322745.P13593730394670003393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1) * A322830 n - (n + 1 : ℤ)

end

end A322745.P13593730394670003393

namespace A322745

/-- `A069129(n+1)*A322830(n)-(n+1)` -/
def P13593730394670003393.Spec : Prop :=
  ∀ n, P13593730394670003393.a n = A322745 n

end A322745

/-! ## A322745.P3077890748894497521

`floor(A243131(2*n+1)/2)`
-/

namespace A322745.P3077890748894497521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A243131 (2 * n + 1) : ℚ) / 2⌋

end

end A322745.P3077890748894497521

namespace A322745

/-- `floor(A243131(2*n+1)/2)` -/
def P3077890748894497521.Spec : Prop :=
  ∀ n, P3077890748894497521.a n = A322745 n

end A322745

/-! ## A322745.P4694487062046532269

`A293615(4*n)/2+n`
-/

namespace A322745.P4694487062046532269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293615 (4 * n) : ℚ) / 2 + (n : ℚ)

end

end A322745.P4694487062046532269

namespace A322745

/-- `A293615(4*n)/2+n` -/
def P4694487062046532269.Spec : Prop :=
  ∀ n, P4694487062046532269.a n = (A322745 n : ℚ)

end A322745

/-! ## A322745.P17031540587873540640

`(n+1)*A062938(4*n)-1`
-/

namespace A322745.P17031540587873540640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062938 (4 * n) - 1

end

end A322745.P17031540587873540640

namespace A322745

/-- `(n+1)*A062938(4*n)-1` -/
def P17031540587873540640.Spec : Prop :=
  ∀ n, P17031540587873540640.a n = A322745 n

theorem P17031540587873540640.correct : P17031540587873540640.Spec := by
  intro n
  simp only [A322745, Nat.add_sub_cancel, A322745.P17031540587873540640.a, A322745.P6959186847412511194.a, A062938, A062938.P5210963884579662397.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322745

/-! ## A322745.P14957168899767962032

`(A052762(4*n+3)+1)*(n+1)-1`
-/

namespace A322745.P14957168899767962032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052762 (4 * n + 3) + 1) * (n + 1 : ℤ) - 1

end

end A322745.P14957168899767962032

namespace A322745

/-- `(A052762(4*n+3)+1)*(n+1)-1` -/
def P14957168899767962032.Spec : Prop :=
  ∀ n, P14957168899767962032.a n = A322745 n

theorem P14957168899767962032.correct : P14957168899767962032.Spec := by
  intro n
  simp only [A322745, Nat.add_sub_cancel, A322745.P14957168899767962032.a, A322745.P6959186847412511194.a, A052762, A052762.P17182617027547716710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322745

/-! ## A322745.P82803667350319431

`2*A151974(A008586(n))+n`
-/

namespace A322745.P82803667350319431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151974 (A008586 n).toNat + (n : ℤ)

end

end A322745.P82803667350319431

namespace A322745

/-- `2*A151974(A008586(n))+n` -/
def P82803667350319431.Spec : Prop :=
  ∀ n, P82803667350319431.a n = A322745 n

end A322745

/-! ## A322745.P11861854700877246564

`A002492(2*n+1)*A045943(4*n)+n`
-/

namespace A322745.P11861854700877246564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 (2 * n + 1) * A045943 (4 * n) + (n : ℤ)

end

end A322745.P11861854700877246564

namespace A322745

/-- `A002492(2*n+1)*A045943(4*n)+n` -/
def P11861854700877246564.Spec : Prop :=
  ∀ n, P11861854700877246564.a n = A322745 n

end A322745

/-! ## A322745.P18406075053819939407

`A001095(4*(n+1))/4-1`
-/

namespace A322745.P18406075053819939407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001095 (4 * (n + 1)) : ℚ) / 4 - 1

end

end A322745.P18406075053819939407

namespace A322745

/-- `A001095(4*(n+1))/4-1` -/
def P18406075053819939407.Spec : Prop :=
  ∀ n, P18406075053819939407.a n = (A322745 n : ℚ)

theorem P18406075053819939407.correct : P18406075053819939407.Spec := by
  intro n
  simp only [A322745, Nat.add_sub_cancel, A322745.P18406075053819939407.a, A322745.P6959186847412511194.a, A001095, A001095.P5999656701398893294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322745

/-!
# A322746: a(n) = 1/2 * (-1 + Sum_{k=0..n} binomial(2*n,2*k)*(n+1)^(n-k)*n^k).

The programs for A322746, there is no canonical definition to state claims against.
-/

/-! ## A322746.P14099809940675199689

`(A173174(n)-1)/2`
-/

namespace A322746.P14099809940675199689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173174 n - 1 : ℚ) / 2

end

end A322746.P14099809940675199689

/-! ## A322746.P13956090491314773897

`floor(A173174(n)/2)`
-/

namespace A322746.P13956090491314773897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173174 n : ℚ) / 2⌋

end

end A322746.P13956090491314773897

/-! ## A322746.P17174747119211131456

`A322699(∑[4*n])`
-/

namespace A322746.P17174747119211131456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322699 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322746.P17174747119211131456

/-! ## A322746.P6409275073680556600

`record[A322699(A028242(n²))]`
-/

namespace A322746.P6409275073680556600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322699 (A028242 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322746.P6409275073680556600

/-! ## A322746.P16616438219354417447

`record[A322699(∑[A110657(n)])]`
-/

namespace A322746.P16616438219354417447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322699 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322746.P16616438219354417447

/-!
# A322747: a(n) = sqrt(1 + A322746(2*n)).

The programs for A322747, there is no canonical definition to state claims against.
-/

/-! ## A322747.P1794788075775544726

`sqrt(1+A322746(2*n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322747.P1794788075775544726
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (1 + A322746 (2 * n) : ℝ)

end

end A322747.P1794788075775544726

/-! ## A322747.P3789314886103717101

`A322790(A062728(n))`
-/

namespace A322747.P3789314886103717101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322790 (A062728 n).toNat

end

end A322747.P3789314886103717101

/-! ## A322747.P17338263652568568641

`A322790(A062725(n)+n)`
-/

namespace A322747.P17338263652568568641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322790 (A062725 n + (n : ℤ)).toNat

end

end A322747.P17338263652568568641

/-! ## A322747.P6530313330788324431

`A322790(A022266(n)+A008574(n))`
-/

namespace A322747.P6530313330788324431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322790 (A022266 n + A008574 n).toNat

end

end A322747.P6530313330788324431

/-! ## A322747.P17935404025749139950

`A322790(A022266(n)+A008586(n))`
-/

namespace A322747.P17935404025749139950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322790 (A022266 n + A008586 n).toNat

end

end A322747.P17935404025749139950

/-!
# A322748: Primes p such that q=p^2+p+1 is prime and (q^2+q+1)/3 is prime.

The programs for A322748, there is no canonical definition to state claims against.
-/

/-! ## A322748.P6292930446844411484

`p?[A097723(∑[A097750(n)])]`
-/

namespace A322748.P6292930446844411484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097723 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322748.P6292930446844411484

/-!
# A322749: Primes in A032420.

The programs for A322749, there is no canonical definition to state claims against.
-/

/-! ## A322749.P8468917943201226923

`p?[A032420(n+1)]`
-/

namespace A322749.P8468917943201226923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322749.P8468917943201226923

/-! ## A322749.P4358124971096209141

`p?[record[A032420(A117910(n))]]`
-/

namespace A322749.P4358124971096209141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032420 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322749.P4358124971096209141

/-! ## A322749.P17579307954290242653

`p?[record[A032420(A126759(n))]]`
-/

namespace A322749.P17579307954290242653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032420 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322749.P17579307954290242653

/-! ## A322749.P13185177710723308875

`p?[record[A032420(A133310(n))]]`
-/

namespace A322749.P13185177710723308875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032420 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322749.P13185177710723308875

/-! ## A322749.P260052686105344632

`p?[record[A032420(A242112(n))]]`
-/

namespace A322749.P260052686105344632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032420 (A242112 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322749.P260052686105344632

/-!
# A322750: Number of directed graphs of 2*n vertices each having an in-degree and out-degree of 1 such that the graph specifies a pairwise connected gift exchange with no reciprocal gifts.

The programs for A322750, there is no canonical definition to state claims against.
-/

/-! ## A322750.P6860570092609608308

`A110472(10*a(n-1)-17)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A322750.P6860570092609608308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  A110472 (10 * a (n - 1) - 17).toNat

end

end A322750.P6860570092609608308

/-!
# A322751: Number of directed graphs of 2*n vertices each having an in-degree and out-degree of 1 such that the graph specifies a pairwise connected gift exchange.

The programs for A322751, there is no canonical definition to state claims against.
-/

/-! ## A322751.P12967585268814267894

`A259711(A186003(a(n-1)+n²))` with `a(0)=1, a(1)=0`
-/

namespace A322751.P12967585268814267894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A259711 (A186003 (a (n - 1) + (n ^ 2 : ℤ)).toNat).toNat

end

end A322751.P12967585268814267894

/-!
# A322752: Number of "funny trees" on n nodes.

The programs for A322752, there is no canonical definition to state claims against.
-/

/-! ## A322752.P4520092675241572015

`A008616(or(2, (2^n+1)²-1))`
-/

namespace A322752.P4520092675241572015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.lor 2 (((2 ^ n + 1) ^ 2 : ℤ) - 1)).toNat

end

end A322752.P4520092675241572015

/-! ## A322752.P15359728915063404548

`A008616(xor(2, (2^n+1)²-1))`
-/

namespace A322752.P15359728915063404548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.xor 2 (((2 ^ n + 1) ^ 2 : ℤ) - 1)).toNat

end

end A322752.P15359728915063404548

/-!
# A322753: Expansion of x*(1 + 2*x - 3*x^2 + 4*x^3) / (1 - x - x^2 + x^3 - x^4).

The programs for A322753, the canonical program `A322753.P9982383516474699105` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322753 has offset 0).

The definition of A322753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+2x^2-3x^3+4x^4)/(1-x-x^2+x^3-x^4))` (program `A322753.P9982383516474699105`, by `A322753.P9982383516474699105.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322753.P9982383516474699105

`ogf((x+2x^2-3x^3+4x^4)/(1-x-x^2+x^3-x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322753

/-- `ogf((x+2x^2-3x^3+4x^4)/(1-x-x^2+x^3-x^4))` -/
def P9982383516474699105.Spec : Prop :=
  ∀ n, P9982383516474699105.a n = A322753 n

theorem P9982383516474699105.correct : P9982383516474699105.Spec := by
  intro n
  simp only [A322753]

end A322753

/-! ## A322753.P8503474119730462089

`a(n-1)+a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1, a(4)=7`
-/

namespace A322753.P8503474119730462089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 1, 7] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3) + a (n - 4)

end

end A322753.P8503474119730462089

namespace A322753

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-4)` -/
def P8503474119730462089.Spec : Prop :=
  ∀ n, P8503474119730462089.a n = A322753 n

end A322753

/-! ## A322753.P6606215690487747556

`∑{d}[n, #*A006207(#)]`
-/

namespace A322753.P6606215690487747556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A006207 d

end

end A322753.P6606215690487747556

namespace A322753

/-- `∑{d}[n, #*A006207(#)]` -/
def P6606215690487747556.Spec : Prop :=
  ∀ n, P6606215690487747556.a n = A322753 n

end A322753

/-! ## A322753.P16028316507413221867

`A003817(A003714(n))%A114973(n+1)`
-/

namespace A322753.P16028316507413221867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003817 (A003714 n).toNat) (A114973 (n + 1))

end

end A322753.P16028316507413221867

namespace A322753

/-- `A003817(A003714(n))%A114973(n+1)` -/
def P16028316507413221867.Spec : Prop :=
  ∀ n, P16028316507413221867.a n = A322753 n

end A322753

/-! ## A322753.P16799366959213334280

`A003817(A003817(n)+1)%A114973(n+1)`
-/

namespace A322753.P16799366959213334280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003817 (A003817 n + 1).toNat) (A114973 (n + 1))

end

end A322753.P16799366959213334280

namespace A322753

/-- `A003817(A003817(n)+1)%A114973(n+1)` -/
def P16799366959213334280.Spec : Prop :=
  ∀ n, P16799366959213334280.a n = A322753 n

end A322753

/-!
# A322754: Number of unlabeled 7-trees on n nodes.

The programs for A322754, there is no canonical definition to state claims against.
-/

/-! ## A322754.P18218734189639659838

`A202037(A028240(n)+n)`
-/

namespace A322754.P18218734189639659838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202037 (A028240 n + (n : ℤ)).toNat

end

end A322754.P18218734189639659838

/-! ## A322754.P1986841526000845193

`A202037(xor(n, A028240(n)))`
-/

namespace A322754.P1986841526000845193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202037 (Int.xor (n : ℤ) (A028240 n)).toNat

end

end A322754.P1986841526000845193

/-! ## A322754.P16346032610117354791

`A202037(A187829(n+1)-A057427(n))`
-/

namespace A322754.P16346032610117354791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202037 (A187829 (n + 1) - A057427 n).toNat

end

end A322754.P16346032610117354791

/-! ## A322754.P17835696182061434308

`A202037(n^A025430(3*n+4))`
-/

namespace A322754.P17835696182061434308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202037 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A025430 (3 * n + 4) : ℤ))).toNat

end

end A322754.P17835696182061434308

/-! ## A322754.P6609220563410216128

`A202037(n^A320001(n+1))`
-/

namespace A322754.P6609220563410216128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202037 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A320001 (n + 1) : ℤ))).toNat

end

end A322754.P6609220563410216128

/-!
# A322755: Numerator of expected payoff in the "Guessing Card Colors" game with a 2n-card deck, using an optimal strategy.

The programs for A322755, there is no canonical definition to state claims against.
-/

/-! ## A322755.P9538669453193319911

`A173396(n+1)-A322756(n+1)`
-/

namespace A322755.P9538669453193319911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173396 (n + 1) - A322756 (n + 1)

end

end A322755.P9538669453193319911

/-! ## A322755.P9971105083517344015

`A014314(2*(n+1))/A048896(n)`
-/

namespace A322755.P9971105083517344015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014314 (2 * (n + 1)) : ℚ) / (A048896 n : ℚ)

end

end A322755.P9971105083517344015

/-! ## A322755.P2939042259890960490

`A173396(n+1)-2*A001790(n+1)`
-/

namespace A322755.P2939042259890960490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173396 (n + 1) - 2 * A001790 (n + 1)

end

end A322755.P2939042259890960490

/-! ## A322755.P3289851104915549366

`A046161(n+1)+(2*n+1)*A001790(n+1)`
-/

namespace A322755.P3289851104915549366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (n + 1) + (2 * n + 1 : ℤ) * A001790 (n + 1)

end

end A322755.P3289851104915549366

/-! ## A322755.P11248011863062458257

`A001803(n+1)+A120778(n)-A001790(n+1)`
-/

namespace A322755.P11248011863062458257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 (n + 1) + (A120778 n - A001790 (n + 1))

end

end A322755.P11248011863062458257

/-!
# A322756: Denominator of expected payoff in the "Guessing Card Colors" game with a 2n-card deck, using an optimal strategy.

The programs for A322756, the canonical program `A322756.P15132893621044649410` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322756 has offset 1).

The definition of A322756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322756.P15773276112195877207

`(2*n+1)*a(n-1)/gcd(n+1, a(n-1)/2)` with `a(0)=2`
-/

namespace A322756.P15773276112195877207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (2 * n + 1 : ℚ) * (a (n - 1) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1) / 2)) : ℚ))

end

end A322756.P15773276112195877207

namespace A322756

/-- `(2*n+1)*a(n-1)/gcd(n+1, a(n-1)/2)` -/
def P15773276112195877207.Spec : Prop :=
  ∀ n, P15773276112195877207.a n = (A322756 (n + 1) : ℚ)

end A322756

/-! ## A322756.P15132893621044649410

`2*A001790(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A322756

/-- `2*A001790(n+1)` -/
def P15132893621044649410.Spec : Prop :=
  ∀ n, P15132893621044649410.a n = A322756 (n + 1)

theorem P15132893621044649410.correct : P15132893621044649410.Spec := by
  intro n
  simp only [A322756, Nat.add_sub_cancel]

end A322756

/-! ## A322756.P9940366001296563431

`A016825(n)*A098597(n)`
-/

namespace A322756.P9940366001296563431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n * A098597 n

end

end A322756.P9940366001296563431

namespace A322756

/-- `A016825(n)*A098597(n)` -/
def P9940366001296563431.Spec : Prop :=
  ∀ n, P9940366001296563431.a n = A322756 (n + 1)

end A322756

/-! ## A322756.P12110574217460964925

`A005843(2*n+1)*A098597(n)`
-/

namespace A322756.P12110574217460964925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 * n + 1) * A098597 n

end

end A322756.P12110574217460964925

namespace A322756

/-- `A005843(2*n+1)*A098597(n)` -/
def P12110574217460964925.Spec : Prop :=
  ∀ n, P12110574217460964925.a n = A322756 (n + 1)

end A322756

/-! ## A322756.P17548843499603543214

`A001790(n+1)+A001790(A028310(n+1))`
-/

namespace A322756.P17548843499603543214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (n + 1) + A001790 (A028310 (n + 1)).toNat

end

end A322756.P17548843499603543214

namespace A322756

/-- `A001790(n+1)+A001790(A028310(n+1))` -/
def P17548843499603543214.Spec : Prop :=
  ∀ n, P17548843499603543214.a n = A322756 (n + 1)

end A322756

/-! ## A322756.P7917888942442623231

`(A068111(n+1)+A068111(n+1))*A356637(n+1)`
-/

namespace A322756.P7917888942442623231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A068111 (n + 1) + A068111 (n + 1)) * A356637 (n + 1)

end

end A322756.P7917888942442623231

namespace A322756

/-- `(A068111(n+1)+A068111(n+1))*A356637(n+1)` -/
def P7917888942442623231.Spec : Prop :=
  ∀ n, P7917888942442623231.a n = A322756 (n + 1)

end A322756

/-! ## A322756.P17803317400970493189

`2*A004730(Δ[n²])`
-/

namespace A322756.P17803317400970493189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004730 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A322756.P17803317400970493189

namespace A322756

/-- `2*A004730(Δ[n²])` -/
def P17803317400970493189.Spec : Prop :=
  ∀ n, P17803317400970493189.a n = A322756 (n + 1)

end A322756

/-! ## A322756.P682797684491131392

`2*A004734(Δ[n²])`
-/

namespace A322756.P682797684491131392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004734 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A322756.P682797684491131392

namespace A322756

/-- `2*A004734(Δ[n²])` -/
def P682797684491131392.Spec : Prop :=
  ∀ n, P682797684491131392.a n = A322756 (n + 1)

end A322756

/-! ## A322756.P1886658666050168112

`2*A036069(2*(n+1))`
-/

namespace A322756.P1886658666050168112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036069 (2 * (n + 1))

end

end A322756.P1886658666050168112

namespace A322756

/-- `2*A036069(2*(n+1))` -/
def P1886658666050168112.Spec : Prop :=
  ∀ n, P1886658666050168112.a n = A322756 (n + 1)

end A322756

/-! ## A322756.P17949222993032828182

`2*A380910(2*(n+1))`
-/

namespace A322756.P17949222993032828182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A380910 (2 * (n + 1))

end

end A322756.P17949222993032828182

namespace A322756

/-- `2*A380910(2*(n+1))` -/
def P17949222993032828182.Spec : Prop :=
  ∀ n, P17949222993032828182.a n = A322756 (n + 1)

end A322756

/-! ## A322756.P5920771647159509654

`record[2*A004730(A026741(n))]`
-/

namespace A322756.P5920771647159509654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004730 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322756.P5920771647159509654

namespace A322756

/-- `record[2*A004730(A026741(n))]` -/
def P5920771647159509654.Spec : Prop :=
  ∀ n, P5920771647159509654.a n = A322756 (n + 1)

end A322756

/-! ## A322756.P225343555208490493

`A000984(n+1)/A048896(n)`
-/

namespace A322756.P225343555208490493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) / (A048896 n : ℚ)

end

end A322756.P225343555208490493

namespace A322756

/-- `A000984(n+1)/A048896(n)` -/
def P225343555208490493.Spec : Prop :=
  ∀ n, P225343555208490493.a n = (A322756 (n + 1) : ℚ)

end A322756

/-! ## A322756.P7226538772022119306

`2*A163590(2*(n+1))`
-/

namespace A322756.P7226538772022119306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163590 (2 * (n + 1))

end

end A322756.P7226538772022119306

namespace A322756

/-- `2*A163590(2*(n+1))` -/
def P7226538772022119306.Spec : Prop :=
  ∀ n, P7226538772022119306.a n = A322756 (n + 1)

end A322756

/-! ## A322756.P13676493294257240384

`(A000984(n+1)+A000984(n+1))/A001316(n+1)`
-/

namespace A322756.P13676493294257240384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) + A000984 (n + 1) : ℚ) / (A001316 (n + 1) : ℚ)

end

end A322756.P13676493294257240384

namespace A322756

/-- `(A000984(n+1)+A000984(n+1))/A001316(n+1)` -/
def P13676493294257240384.Spec : Prop :=
  ∀ n, P13676493294257240384.a n = (A322756 (n + 1) : ℚ)

end A322756

/-! ## A322756.P1937440505953242749

`record[1/(floor(n/and(n, 1-n))*a(n-2))]` with `a(0)=2, a(1)=1`
-/

namespace A322756.P1937440505953242749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  1 / ((⌊(n : ℚ) / (Int.land (n : ℤ) (1 - (n : ℤ)) : ℚ)⌋ : ℚ) * f1 (n - 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322756.P1937440505953242749

namespace A322756

/-- `record[1/(floor(n/and(n, 1-n))*a(n-2))]` -/
def P1937440505953242749.Spec : Prop :=
  ∀ n, P1937440505953242749.a n = (A322756 (n + 1) : ℚ)

end A322756

/-! ## A322756.P10080072560063098594

`2*A273171(∑[n])`
-/

namespace A322756.P10080072560063098594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A273171 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322756.P10080072560063098594

namespace A322756

/-- `2*A273171(∑[n])` -/
def P10080072560063098594.Spec : Prop :=
  ∀ n, P10080072560063098594.a n = A322756 (n + 1)

end A322756

/-! ## A322756.P11505554393281968968

`2*A180955(∑[n+1])`
-/

namespace A322756.P11505554393281968968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322756.P11505554393281968968

namespace A322756

/-- `2*A180955(∑[n+1])` -/
def P11505554393281968968.Spec : Prop :=
  ∀ n, P11505554393281968968.a n = A322756 (n + 1)

end A322756

/-! ## A322756.P14248377768731423922

`2*A273167(∑[n+1])`
-/

namespace A322756.P14248377768731423922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A273167 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322756.P14248377768731423922

namespace A322756

/-- `2*A273167(∑[n+1])` -/
def P14248377768731423922.Spec : Prop :=
  ∀ n, P14248377768731423922.a n = A322756 (n + 1)

end A322756

/-! ## A322756.P17197226123200402661

`2*A273169(∑[n+1])`
-/

namespace A322756.P17197226123200402661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A273169 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322756.P17197226123200402661

namespace A322756

/-- `2*A273169(∑[n+1])` -/
def P17197226123200402661.Spec : Prop :=
  ∀ n, P17197226123200402661.a n = A322756 (n + 1)

end A322756

/-! ## A322756.P2947167519627205722

`2*A100258(A000096(n+1))`
-/

namespace A322756.P2947167519627205722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100258 (A000096 (n + 1)).toNat

end

end A322756.P2947167519627205722

namespace A322756

/-- `2*A100258(A000096(n+1))` -/
def P2947167519627205722.Spec : Prop :=
  ∀ n, P2947167519627205722.a n = A322756 (n + 1)

end A322756

/-!
# A322761: Irregular triangle read by rows in which n-th row lists all partitions of n, in graded reverse lexicographic ordering, using a compressed notation.

The programs for A322761, there is no canonical definition to state claims against.
-/

/-! ## A322761.P16923736429519927120

`A127668(A129129(n+1))`
-/

namespace A322761.P16923736429519927120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127668 (A129129 (n + 1)).toNat

end

end A322761.P16923736429519927120

/-! ## A322761.P14030413539575234839

`A261300(A114994(n+1))`
-/

namespace A322761.P14030413539575234839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (A114994 (n + 1)).toNat

end

end A322761.P14030413539575234839

/-! ## A322761.P14216196430488373139

`A261300(eq[1, A124765(n)])`
-/

namespace A322761.P14216196430488373139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322761.P14216196430488373139

/-! ## A322761.P12131061063548451324

`A261300(record[A267508(n+1)])`
-/

namespace A322761.P12131061063548451324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322761.P12131061063548451324

/-! ## A322761.P10998436304944379274

`A261300(eq[A000007(n), A124760(n)])`
-/

namespace A322761.P10998436304944379274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A322761.P10998436304944379274

/-!
# A322762: Irregular triangle read by rows: to get row n, take partitions of n ordered as in A080577, and in each partition, change each j-th occurrence of k to j; use compressed notation as in A322761.

The programs for A322762, there is no canonical definition to state claims against.
-/

/-! ## A322762.P4940326304403848070

`A064770(A389342(n+1))`
-/

namespace A322762.P4940326304403848070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A389342 (n + 1)).toNat

end

end A322762.P4940326304403848070

/-! ## A322762.P6717706401586115474

`∏{p}[A058135(n+2), A358497(#-1)]`
-/

namespace A322762.P6717706401586115474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058135 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A358497 (p - 1)

end

end A322762.P6717706401586115474

/-!
# A322763: Irregular triangle read by rows: to get row n, take partitions of n ordered as in A080577, and in each partition, change each j-th occurrence of k to j; use uncompressed notation as in A080577.

The programs for A322763, there is no canonical definition to state claims against.
-/

/-! ## A322763.P15798370119488413062

`A334297(A293226(n+1)*A340102(3*n+2))`
-/

namespace A322763.P15798370119488413062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (A293226 (n + 1) * A340102 (3 * n + 2)).toNat

end

end A322763.P15798370119488413062

/-! ## A322763.P10890007022639898484

`∑{e}[A000079(A305800(n+1)), A277446(#)]`
-/

namespace A322763.P10890007022639898484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A305800 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277446 (Nat.factorization (f1 n).natAbs p)

end

end A322763.P10890007022639898484

/-! ## A322763.P14107303721628793808

`gcd(A324579(n+1), A334297(A329381(n+1)))`
-/

namespace A322763.P14107303721628793808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324579 (n + 1)) (A334297 (A329381 (n + 1)).toNat)

end

end A322763.P14107303721628793808

/-! ## A322763.P17882976097254837642

`A334029(A293217(n+1)%A003875(2*n+3))`
-/

namespace A322763.P17882976097254837642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (Int.tmod (A293217 (n + 1)) (A003875 (2 * n + 3))).toNat

end

end A322763.P17882976097254837642

/-! ## A322763.P7399308717951613201

`A334029(A293217(n+1)%A140791(n+1))`
-/

namespace A322763.P7399308717951613201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (Int.tmod (A293217 (n + 1)) (A140791 (n + 1))).toNat

end

end A322763.P7399308717951613201

/-!
# A322764: Number of set partitions of the multiset consisting of one copy each of x_1, x_2, ..., x_n, and 2 copies each of y_1 and y_2.

The programs for A322764, there is no canonical definition to state claims against.
-/

/-! ## A322764.P1621279462185833837

`A346500(Δ[A111396(n)])`
-/

namespace A322764.P1621279462185833837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (f1 (n + 1) - f1 n).toNat

end

end A322764.P1621279462185833837

/-! ## A322764.P5355000203506275632

`A346500(A055998(n+3))`
-/

namespace A322764.P5355000203506275632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A055998 (n + 3)).toNat

end

end A322764.P5355000203506275632

/-! ## A322764.P17287956097755870962

`A346500(A133263(n+4))`
-/

namespace A322764.P17287956097755870962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A133263 (n + 4)).toNat

end

end A322764.P17287956097755870962

/-! ## A322764.P7687980841729863510

`A346500(A155212(n)+10)`
-/

namespace A322764.P7687980841729863510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A155212 n + 10).toNat

end

end A322764.P7687980841729863510

/-! ## A322764.P16335148058134563404

`A346500(A056000(n)+12)`
-/

namespace A322764.P16335148058134563404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A056000 n + 12).toNat

end

end A322764.P16335148058134563404

/-! ## A322764.P11214312026333224803

`A346500(A000217(n+4)+2)`
-/

namespace A322764.P11214312026333224803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A000217 (n + 4) + 2).toNat

end

end A322764.P11214312026333224803

/-! ## A322764.P7783524003721899395

`A346500(A059605(n)-A103145(n))`
-/

namespace A322764.P7783524003721899395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A059605 n - A103145 n).toNat

end

end A322764.P7783524003721899395

/-! ## A322764.P669901621649408780

`A346500(A111396(n+1)-A111396(n))`
-/

namespace A322764.P669901621649408780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A111396 (n + 1) - A111396 n).toNat

end

end A322764.P669901621649408780

/-! ## A322764.P12117037172466511309

`A346500(A055999(n)+2*A020715(n))`
-/

namespace A322764.P12117037172466511309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A055999 n + 2 * A020715 n).toNat

end

end A322764.P12117037172466511309

/-! ## A322764.P17084194295077072073

`A346500(A020715(n)+A020715(A055999(n)+n))`
-/

namespace A322764.P17084194295077072073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A020715 n + A020715 (A055999 n + (n : ℤ)).toNat).toNat

end

end A322764.P17084194295077072073

/-!
# A322765: Array read by upwards antidiagonals: T(m,n) = number of set partitions of the multiset consisting of one copy each of x_1, x_2, ..., x_m, and two copies each of y_1, y_2, ..., y_n, for m >= 0, n >= 0.

The programs for A322765, there is no canonical definition to state claims against.
-/

/-! ## A322765.P13325394729909148986

`A346500(A245300(n))`
-/

namespace A322765.P13325394729909148986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A245300 n).toNat

end

end A322765.P13325394729909148986

/-! ## A322765.P11569373578645062137

`A346500((A214661(n+1)-1)/2)`
-/

namespace A322765.P11569373578645062137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.roundAway ((A214661 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A322765.P11569373578645062137

/-! ## A322765.P9339220368454884731

`A346500(A123108(A214661(n+1)))`
-/

namespace A322765.P9339220368454884731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A123108 (A214661 (n + 1)).toNat).toNat

end

end A322765.P9339220368454884731

/-! ## A322765.P6343423603551652098

`A318284(A036561(n))`
-/

namespace A322765.P6343423603551652098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A036561 n).toNat

end

end A322765.P6343423603551652098

/-! ## A322765.P9526558259651043140

`A318284(A230445(n)+1)`
-/

namespace A322765.P9526558259651043140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A230445 n + 1).toNat

end

end A322765.P9526558259651043140

/-!
# A322766: Row 1 of array in A322765.

The programs for A322766, there is no canonical definition to state claims against.
-/

/-! ## A322766.P8391855599550434519

`A322765(∑[n+2]-1)`
-/

namespace A322766.P8391855599550434519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322765 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A322766.P8391855599550434519

/-! ## A322766.P12159038329381770943

`record[gcd(1-A025581(n), A322765(n))]`
-/

namespace A322766.P12159038329381770943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A025581 n) (A322765 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322766.P12159038329381770943

/-! ## A322766.P7630688817776239736

`A346500(2*(n+1)²)`
-/

namespace A322766.P7630688817776239736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (2 * (n + 1) ^ 2)

end

end A322766.P7630688817776239736

/-! ## A322766.P6291677929566306257

`record[and(A143259(n+1), A346500(n))]`
-/

namespace A322766.P6291677929566306257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143259 (n + 1)) (A346500 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322766.P6291677929566306257

/-! ## A322766.P16060225108992232212

`A346500(A184636(n+1))-A000007(n)`
-/

namespace A322766.P16060225108992232212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A184636 (n + 1)).toNat - A000007 n

end

end A322766.P16060225108992232212

/-!
# A322767: Row 2 of array in A322765.

The programs for A322767, there is no canonical definition to state claims against.
-/

/-! ## A322767.P14525079709261309064

`A322765(∑[n+3])`
-/

namespace A322767.P14525079709261309064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322765 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322767.P14525079709261309064

/-! ## A322767.P1564070263787153095

`A346500((n+1)²+(n+2)²)`
-/

namespace A322767.P1564070263787153095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A322767.P1564070263787153095

/-! ## A322767.P8754497530096562721

`record[A346500(A001844(∑[(-1)^(n%3)]))]`
-/

namespace A322767.P8754497530096562721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A001844 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322767.P8754497530096562721

/-! ## A322767.P13751525360692061199

`A294619(2*n+1)*A346500(A001844(n+1))`
-/

namespace A322767.P13751525360692061199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 (2 * n + 1) * A346500 (A001844 (n + 1)).toNat

end

end A322767.P13751525360692061199

/-! ## A322767.P1197764073315797686

`record[A346500(A001844(val(n+1, 2)+1))]`
-/

namespace A322767.P1197764073315797686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A001844 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322767.P1197764073315797686

/-!
# A322768: Column 3 of array in A322765.

The programs for A322768, there is no canonical definition to state claims against.
-/

/-! ## A322768.P5714563302524178873

`A346500(A167614(n+5))`
-/

namespace A322768.P5714563302524178873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A167614 (n + 5)).toNat

end

end A322768.P5714563302524178873

/-! ## A322768.P12963637424238296320

`A346500(Δ[A103145(n)]+8)`
-/

namespace A322768.P12963637424238296320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (f1 (n + 1) - f1 n + 8).toNat

end

end A322768.P12963637424238296320

/-! ## A322768.P10894695411482658923

`A346500(A000124(n+6)+2)`
-/

namespace A322768.P10894695411482658923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A000124 (n + 6) + 2).toNat

end

end A322768.P10894695411482658923

/-! ## A322768.P12004813648988852216

`A346500(A000217(n+7)-4)`
-/

namespace A322768.P12004813648988852216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A000217 (n + 7) - 4).toNat

end

end A322768.P12004813648988852216

/-! ## A322768.P696631601660968488

`A346500(Δ[A023551(n+2)]+2)`
-/

namespace A322768.P696631601660968488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (f1 (n + 1) - f1 n + 2).toNat

end

end A322768.P696631601660968488

/-! ## A322768.P10465404954686169752

`A346500(A027689(n+10)-A000096(n+12))`
-/

namespace A322768.P10465404954686169752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A027689 (n + 10) - A000096 (n + 12)).toNat

end

end A322768.P10465404954686169752

/-! ## A322768.P9824315945550331256

`A346500(A027689(n+10)%A000096(n+12))`
-/

namespace A322768.P9824315945550331256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (Int.tmod (A027689 (n + 10)) (A000096 (n + 12))).toNat

end

end A322768.P9824315945550331256

/-!
# A322769: Main diagonal of array in A322765.

The programs for A322769, there is no canonical definition to state claims against.
-/

/-! ## A322769.P15787491036897755377

`A346500(A062725(n))`
-/

namespace A322769.P15787491036897755377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A062725 n).toNat

end

end A322769.P15787491036897755377

/-! ## A322769.P14150598305928451953

`A346500(A062728(n))`
-/

namespace A322769.P14150598305928451953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A062728 n).toNat

end

end A322769.P14150598305928451953

/-! ## A322769.P14893064411412963705

`A346500(A055999(9*n)/9)`
-/

namespace A322769.P14893064411412963705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.roundAway ((A055999 (9 * n) : ℚ) / 9)).toNat

end

end A322769.P14893064411412963705

/-! ## A322769.P10424344893188568149

`A346500(A000217(3*n)+n)`
-/

namespace A322769.P10424344893188568149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A000217 (3 * n) + (n : ℤ)).toNat

end

end A322769.P10424344893188568149

/-! ## A322769.P16094551717463073791

`A346500(A053755(n)+A046691(n))`
-/

namespace A322769.P16094551717463073791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A053755 n + A046691 n).toNat

end

end A322769.P16094551717463073791

/-!
# A322770: Array read by upwards antidiagonals: T(m,n) = number of set partitions into distinct parts of the multiset consisting of one copy each of x_1, x_2, ..., x_m, and two copies each of y_1, y_2, ..., y_n, for m >= 0, n >= 0.

The programs for A322770, there is no canonical definition to state claims against.
-/

/-! ## A322770.P14507061309766430767

`A346517(A245300(n))`
-/

namespace A322770.P14507061309766430767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A245300 n).toNat

end

end A322770.P14507061309766430767

/-! ## A322770.P7591399427743860408

`A318286(A036561(n))`
-/

namespace A322770.P7591399427743860408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (A036561 n).toNat

end

end A322770.P7591399427743860408

/-! ## A322770.P8377998488847145464

`A318286(A230445(n)+1)`
-/

namespace A322770.P8377998488847145464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (A230445 n + 1).toNat

end

end A322770.P8377998488847145464

/-! ## A322770.P7650139752764735403

`A318286(A094617(n+1)-1)`
-/

namespace A322770.P7650139752764735403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (A094617 (n + 1) - 1).toNat

end

end A322770.P7650139752764735403

/-! ## A322770.P2329843769181026160

`A318286(A081954(n+1)/2)`
-/

namespace A322770.P2329843769181026160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (SequenceMachineLib.roundAway ((A081954 (n + 1) : ℚ) / 2)).toNat

end

end A322770.P2329843769181026160

/-!
# A322771: Row 1 of array in A322770.

The programs for A322771, there is no canonical definition to state claims against.
-/

/-! ## A322771.P8372169975927482207

`A322770(∑[n+2]-1)`
-/

namespace A322771.P8372169975927482207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322770 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A322771.P8372169975927482207

/-! ## A322771.P14332249364520882222

`gcd(A020761(n), A322770(A034856(n+1)))`
-/

namespace A322771.P14332249364520882222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020761 n) (A322770 (A034856 (n + 1)).toNat)

end

end A322771.P14332249364520882222

/-! ## A322771.P10013853844586708734

`or(A000007(n), A322770(A034856(n+1)))`
-/

namespace A322771.P10013853844586708734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A322770 (A034856 (n + 1)).toNat)

end

end A322771.P10013853844586708734

/-! ## A322771.P9879553168624012035

`record[A322770(A114327(n)+A038722(n+1))]`
-/

namespace A322771.P9879553168624012035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322770 (A114327 n + A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322771.P9879553168624012035

/-! ## A322771.P13380973116341558554

`A346517(2*(n+1)²)`
-/

namespace A322771.P13380973116341558554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (2 * (n + 1) ^ 2)

end

end A322771.P13380973116341558554

/-!
# A322772: Row 2 of array in A322770.

The programs for A322772, there is no canonical definition to state claims against.
-/

/-! ## A322772.P5386404908766301970

`A322770(∑[n+3])`
-/

namespace A322772.P5386404908766301970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322770 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322772.P5386404908766301970

/-! ## A322772.P11620727362302598441

`A346517((n+1)²+(n+2)²)`
-/

namespace A322772.P11620727362302598441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A322772.P11620727362302598441

/-! ## A322772.P1760150502083279202

`record[A346517(A001844(∑[(-1)^(n%3)]))]`
-/

namespace A322772.P1760150502083279202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A001844 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322772.P1760150502083279202

/-! ## A322772.P8122715086112241144

`A346517(A001844(n+1))%A322767(n+1)`
-/

namespace A322772.P8122715086112241144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346517 (A001844 (n + 1)).toNat) (A322767 (n + 1))

end

end A322772.P8122715086112241144

/-! ## A322772.P9988040304033629678

`A294619(2*n+1)*A346517(A001844(n+1))`
-/

namespace A322772.P9988040304033629678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 (2 * n + 1) * A346517 (A001844 (n + 1)).toNat

end

end A322772.P9988040304033629678

/-!
# A322773: Column 2 of array in A322770.

The programs for A322773, there is no canonical definition to state claims against.
-/

/-! ## A322773.P7573731722198287151

`A346517(Δ[A111396(n)])`
-/

namespace A322773.P7573731722198287151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (f1 (n + 1) - f1 n).toNat

end

end A322773.P7573731722198287151

/-! ## A322773.P2819769991662140793

`A346517(A027379(n+3))`
-/

namespace A322773.P2819769991662140793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A027379 (n + 3)).toNat

end

end A322773.P2819769991662140793

/-! ## A322773.P3804198236388862360

`A346517(A055998(n+3))`
-/

namespace A322773.P3804198236388862360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A055998 (n + 3)).toNat

end

end A322773.P3804198236388862360

/-! ## A322773.P3879869235657408761

`A346517(A133263(n+4))`
-/

namespace A322773.P3879869235657408761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A133263 (n + 4)).toNat

end

end A322773.P3879869235657408761

/-! ## A322773.P3536481358579761791

`A346517(A056000(n)+12)`
-/

namespace A322773.P3536481358579761791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A056000 n + 12).toNat

end

end A322773.P3536481358579761791

/-! ## A322773.P1967070775337555598

`A346517(eq[2, A108947(n)])`
-/

namespace A322773.P1967070775337555598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322773.P1967070775337555598

/-! ## A322773.P5580945578095876633

`A346517(A167614(n+2)+3+n)`
-/

namespace A322773.P5580945578095876633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A167614 (n + 2) + 3 + (n : ℤ)).toNat

end

end A322773.P5580945578095876633

/-! ## A322773.P13226702780039894096

`A346517(A111396(n+1)-A111396(n))`
-/

namespace A322773.P13226702780039894096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A111396 (n + 1) - A111396 n).toNat

end

end A322773.P13226702780039894096

/-! ## A322773.P14130559826996652540

`A322764(n)-(A035098(n+2)+A035098(n+2))`
-/

namespace A322773.P14130559826996652540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322764 n - (A035098 (n + 2) + A035098 (n + 2))

end

end A322773.P14130559826996652540

/-!
# A322774: Column 3 of array in A322770.

The programs for A322774, there is no canonical definition to state claims against.
-/

/-! ## A322774.P14799027549178628998

`A346517(A167614(n+5))`
-/

namespace A322774.P14799027549178628998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A167614 (n + 5)).toNat

end

end A322774.P14799027549178628998

/-! ## A322774.P5151377680531302996

`A346517(eq[5, A108947(n)])`
-/

namespace A322774.P5151377680531302996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322774.P5151377680531302996

/-! ## A322774.P11695945187989035826

`A346517(A133263(n+6)+1)`
-/

namespace A322774.P11695945187989035826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A133263 (n + 6) + 1).toNat

end

end A322774.P11695945187989035826

/-! ## A322774.P7333668481172421981

`A346517(A000124(n+6)+2)`
-/

namespace A322774.P7333668481172421981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A000124 (n + 6) + 2).toNat

end

end A322774.P7333668481172421981

/-! ## A322774.P4503786367982125838

`A346517(A000096(n+5)+4)`
-/

namespace A322774.P4503786367982125838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A000096 (n + 5) + 4).toNat

end

end A322774.P4503786367982125838

/-! ## A322774.P10672991173218241429

`A346517(A034856(n+6)-2)`
-/

namespace A322774.P10672991173218241429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A034856 (n + 6) - 2).toNat

end

end A322774.P10672991173218241429

/-! ## A322774.P13878590692826915996

`A346517(A000217(n+7)-4)`
-/

namespace A322774.P13878590692826915996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A000217 (n + 7) - 4).toNat

end

end A322774.P13878590692826915996

/-! ## A322774.P9888127895046929584

`A346517(Δ[A026054(n+4)]+2)`
-/

namespace A322774.P9888127895046929584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (f1 (n + 1) - f1 n + 2).toNat

end

end A322774.P9888127895046929584

/-! ## A322774.P10083581831655119004

`A346517(Δ[A103145(n+1)]-n)`
-/

namespace A322774.P10083581831655119004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A322774.P10083581831655119004

/-!
# A322775: Main diagonal of array in A322770.

The programs for A322775, there is no canonical definition to state claims against.
-/

/-! ## A322775.P5607040447563093976

`A322770(∑[4*n])`
-/

namespace A322775.P5607040447563093976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322770 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322775.P5607040447563093976

/-! ## A322775.P2952671126331909581

`A346517(A062725(n))`
-/

namespace A322775.P2952671126331909581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A062725 n).toNat

end

end A322775.P2952671126331909581

/-! ## A322775.P14388474168500674776

`A346517(A062728(n))`
-/

namespace A322775.P14388474168500674776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A062728 n).toNat

end

end A322775.P14388474168500674776

/-! ## A322775.P12095353539773852081

`A346517(A081267(n)-1)`
-/

namespace A322775.P12095353539773852081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A081267 n - 1).toNat

end

end A322775.P12095353539773852081

/-! ## A322775.P7199679550638368101

`A346517(A081266(n)+n)`
-/

namespace A322775.P7199679550638368101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A081266 n + (n : ℤ)).toNat

end

end A322775.P7199679550638368101

/-!
# A322776: Scan first k digits of Pi after decimal point, for k = 1,2,3,..., record all distinct numbers in the order in which they appear.

The programs for A322776, there is no canonical definition to state claims against.
-/

/-! ## A322776.P3761907216566760991

`A322777(lt[A001203(n), A295582(n+3)])`
-/

namespace A322776.P3761907216566760991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295582 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322777 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322776.P3761907216566760991

/-! ## A322776.P2473704818471311810

`A322777(lt[A100980(2*(n+2)), A282632(n+1)])`
-/

namespace A322776.P2473704818471311810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100980 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322777 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322776.P2473704818471311810

/-! ## A322776.P15628334569718368887

`A322777(lt[A113340(2*n+3), A001366(2*n+1)])`
-/

namespace A322776.P15628334569718368887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113340 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001366 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322777 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322776.P15628334569718368887

/-!
# A322779: 132-avoiding permutations whose squares are also 132-avoiding.

The programs for A322779, there is no canonical definition to state claims against.
-/

/-! ## A322779.P2998913993623812716

`floor(log2(A248239(n)))`
-/

namespace A322779.P2998913993623812716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A248239 n).toNat

end

end A322779.P2998913993623812716

/-! ## A322779.P8774117946107949942

`ceil(log(A277091(2^n)))`
-/

namespace A322779.P8774117946107949942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A277091 (2 ^ n) : ℝ)⌉

end

end A322779.P8774117946107949942

/-! ## A322779.P12397795192668375502

`ceil(log2(A039300(2^n)))`
-/

namespace A322779.P12397795192668375502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A039300 (2 ^ n) : ℝ)⌉

end

end A322779.P12397795192668375502

/-! ## A322779.P14099678251788950415

`A206915(∑[∑[A002450(n)]])`
-/

namespace A322779.P14099678251788950415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206915 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322779.P14099678251788950415

/-!
# A322780: First differences of A237262.

The programs for A322780, the canonical program `A322780.P6283503046525586684` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322780 has offset 1).

The definition of A322780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322780.P6283503046525586684

`8*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=32`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322780

/-- `8*a(n-2)-a(n-4)` -/
def P6283503046525586684.Spec : Prop :=
  ∀ n, P6283503046525586684.a n = A322780 (n + 1)

theorem P6283503046525586684.correct : P6283503046525586684.Spec := by
  intro n
  simp only [A322780, Nat.add_sub_cancel]

end A322780

/-! ## A322780.P9474272943487622046

`∑[A199336(n+1)]`
-/

namespace A322780.P9474272943487622046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322780.P9474272943487622046

namespace A322780

/-- `∑[A199336(n+1)]` -/
def P9474272943487622046.Spec : Prop :=
  ∀ n, P9474272943487622046.a n = A322780 (n + 1)

end A322780

/-! ## A322780.P9335396022340151564

`Δ[A237262(n+1)]`
-/

namespace A322780.P9335396022340151564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322780.P9335396022340151564

namespace A322780

/-- `Δ[A237262(n+1)]` -/
def P9335396022340151564.Spec : Prop :=
  ∀ n, P9335396022340151564.a n = A322780 (n + 1)

end A322780

/-! ## A322780.P10319312242890436341

`∑[2*A105076(n+1)+1]`
-/

namespace A322780.P10319312242890436341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105076 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322780.P10319312242890436341

namespace A322780

/-- `∑[2*A105076(n+1)+1]` -/
def P10319312242890436341.Spec : Prop :=
  ∀ n, P10319312242890436341.a n = A322780 (n + 1)

end A322780

/-! ## A322780.P9353739539477406230

`∑[2*A105045(n+1)-1]`
-/

namespace A322780.P9353739539477406230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105045 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322780.P9353739539477406230

namespace A322780

/-- `∑[2*A105045(n+1)-1]` -/
def P9353739539477406230.Spec : Prop :=
  ∀ n, P9353739539477406230.a n = A322780 (n + 1)

end A322780

/-! ## A322780.P2068962759195029077

`A010685(n)*A177187(n+1)`
-/

namespace A322780.P2068962759195029077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A177187 (n + 1)

end

end A322780.P2068962759195029077

namespace A322780

/-- `A010685(n)*A177187(n+1)` -/
def P2068962759195029077.Spec : Prop :=
  ∀ n, P2068962759195029077.a n = A322780 (n + 1)

end A322780

/-! ## A322780.P10162610128040864639

`A237262(n+2)-A237262(n+1)`
-/

namespace A322780.P10162610128040864639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (n + 2) - A237262 (n + 1)

end

end A322780.P10162610128040864639

namespace A322780

/-- `A237262(n+2)-A237262(n+1)` -/
def P10162610128040864639.Spec : Prop :=
  ∀ n, P10162610128040864639.a n = A322780 (n + 1)

end A322780

/-!
# A322781: Numbers of the form p*q where p, q are distinct primes congruent to 1 mod 4 such that Legendre(p/q) = -1.

The programs for A322781, there is no canonical definition to state claims against.
-/

/-! ## A322781.P8110525210400417783

`record[∏{p}[A323272(n+1), -#]]`
-/

namespace A322781.P8110525210400417783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (-(p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322781.P8110525210400417783

/-! ## A322781.P14064239278615406020

`∩[A131574(n+1), A323272(n+1)]`
-/

namespace A322781.P14064239278615406020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322781.P14064239278615406020

/-! ## A322781.P2593436020932546614

`∩[A121387(n+1), A323272(n+1)]`
-/

namespace A322781.P2593436020932546614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322781.P2593436020932546614

/-! ## A322781.P10465538178657166673

`∩[A085625(n+1), A323272(n+1)]`
-/

namespace A322781.P10465538178657166673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322781.P10465538178657166673

/-! ## A322781.P7598299173615555772

`∩[A224770(n+1), A323272(n+1)]`
-/

namespace A322781.P7598299173615555772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322781.P7598299173615555772

/-! ## A322781.P8308847684511878516

`∩[A323272(n+1), A397070(n+1)]`
-/

namespace A322781.P8308847684511878516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322781.P8308847684511878516

/-! ## A322781.P9921997326049624288

`∩[A025303(n+1), A323272(n+1)]`
-/

namespace A322781.P9921997326049624288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322781.P9921997326049624288

/-! ## A322781.P9193371829708017775

`∩[A025285(n+1), A323272(n+1)]`
-/

namespace A322781.P9193371829708017775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322781.P9193371829708017775

/-! ## A322781.P15670855605652671255

`∩[A190299(n+1), A323272(n+1)]`
-/

namespace A322781.P15670855605652671255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322781.P15670855605652671255

/-! ## A322781.P13374228645423911769

`∩[A189986(n+1), A323272(n+1)]`
-/

namespace A322781.P13374228645423911769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322781.P13374228645423911769

/-! ## A322781.P12697777194183665563

`∩[A108181(n+1), A323272(n+1)]`
-/

namespace A322781.P12697777194183665563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322781.P12697777194183665563

/-! ## A322781.P15656739115050606379

`∩[A001358(n+1), A323272(n+1)]`
-/

namespace A322781.P15656739115050606379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322781.P15656739115050606379

/-! ## A322781.P9269571879157068406

`∩[A323272(n+1), A327862(n+1)]`
-/

namespace A322781.P9269571879157068406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322781.P9269571879157068406

/-! ## A322781.P5912118629420502360

`∩[A323272(n+1), A359161(n+1)]`
-/

namespace A322781.P5912118629420502360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322781.P5912118629420502360

/-! ## A322781.P47607360850935240

`∩[A323272(n+1), A391330(n+1)]`
-/

namespace A322781.P47607360850935240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322781.P47607360850935240

/-! ## A322781.P5393989299897439498

`filter[A323272(n+1), A064911(#)]`
-/

namespace A322781.P5393989299897439498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A322781.P5393989299897439498

/-! ## A322781.P16777137224374672457

`filter[A323272(n+1), A065043(#)]`
-/

namespace A322781.P16777137224374672457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A322781.P16777137224374672457

/-! ## A322781.P18037386813042439890

`filter[A323272(n+1), A101040(#)]`
-/

namespace A322781.P18037386813042439890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A322781.P18037386813042439890

/-! ## A322781.P3307950369992374184

`filter[A323272(n+1), A123927(#)]`
-/

namespace A322781.P3307950369992374184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A322781.P3307950369992374184

/-! ## A322781.P12393077341521390715

`filter[A323272(n+1), A262684(#)]`
-/

namespace A322781.P12393077341521390715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A322781.P12393077341521390715

/-!
# A322782: Number of lattice paths from {2}^n to {0}^n using steps that decrement one component by 1 such that for each point (p_1,p_2,...,p_n) we have abs(p_{i}-p_{i+1}) <= 1 and abs(p_{1}-p_{n}) <= 1.

The programs for A322782, there is no canonical definition to state claims against.
-/

/-! ## A322782.P8575098527179823360

`A048800(n)*A074279(A048801(n))`
-/

namespace A322782.P8575098527179823360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048800 n * A074279 (A048801 n).toNat

end

end A322782.P8575098527179823360

/-! ## A322782.P11931043536467483360

`A000142(n)*A364350(A007096(n))`
-/

namespace A322782.P11931043536467483360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A364350 (A007096 n).toNat

end

end A322782.P11931043536467483360

/-!
# A322783: a(n) = 1 - n + (2^(n+2) - (-1)^n)/3.

The programs for A322783, the canonical program `A322783.P1522393604668856167` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322783 has offset 0).

The definition of A322783 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-n+(2^(n+2)-(-1)^n)/3` (program `A322783.P3559132969972884655`, by `A322783.P3559132969972884655.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322783.P1522393604668856167

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322783

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P1522393604668856167.Spec : Prop :=
  ∀ n, P1522393604668856167.a n = A322783 n

theorem P1522393604668856167.correct : P1522393604668856167.Spec := by
  intro n
  simp only [A322783]

end A322783

/-! ## A322783.P3559132969972884655

`1-n+(2^(n+2)-(-1)^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322783.P3559132969972884655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ) : ℚ) + ((2 ^ (n + 2) : ℤ) - (-1) ^ n : ℚ) / 3

end

end A322783.P3559132969972884655

namespace A322783

/-- `1-n+(2^(n+2)-(-1)^n)/3` -/
def P3559132969972884655.Spec : Prop :=
  ∀ n, P3559132969972884655.a n = (A322783 n : ℚ)

theorem P3559132969972884655.correct : P3559132969972884655.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A322783, Nat.add_sub_cancel, A322783.P3559132969972884655.a, A322783.P1522393604668856167.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A322783, Nat.add_sub_cancel, A322783.P3559132969972884655.a, A322783.P1522393604668856167.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A322783

/-! ## A322783.P17806864125136812445

`xor(1, 2*a(n-1)+n-3)` with `a(0)=2`
-/

namespace A322783.P17806864125136812445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor 1 (2 * a (n - 1) + ((n : ℤ) - 3))

end

end A322783.P17806864125136812445

namespace A322783

/-- `xor(1, 2*a(n-1)+n-3)` -/
def P17806864125136812445.Spec : Prop :=
  ∀ n, P17806864125136812445.a n = A322783 n

end A322783

/-! ## A322783.P8621715453152882378

`A065190(A277955(n+1)-n)`
-/

namespace A322783.P8621715453152882378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A277955 (n + 1) - (n : ℤ)).toNat

end

end A322783.P8621715453152882378

namespace A322783

/-- `A065190(A277955(n+1)-n)` -/
def P8621715453152882378.Spec : Prop :=
  ∀ n, P8621715453152882378.a n = A322783 n

end A322783

/-! ## A322783.P10479251425988341047

`A194960(A132730(n+1))`
-/

namespace A322783.P10479251425988341047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194960 (A132730 (n + 1)).toNat

end

end A322783.P10479251425988341047

namespace A322783

/-- `A194960(A132730(n+1))` -/
def P10479251425988341047.Spec : Prop :=
  ∀ n, P10479251425988341047.a n = A322783 n

end A322783

/-!
# A322786: Irregular triangle read by rows where T(n,k) is the number of multiset partitions of a multiset with d = A027750(n,k) copies of each integer from 1 to n/d.

The programs for A322786, there is no canonical definition to state claims against.
-/

/-! ## A322786.P18439050439649878713

`A249620(∑[A249620(A187783(2*n))])`
-/

namespace A322786.P18439050439649878713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249620 (A187783 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322786.P18439050439649878713

/-! ## A322786.P2579898903791467717

`A001055(A322792(n+1)^A046563(n+1))`
-/

namespace A322786.P2579898903791467717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.roundAway ((A322792 (n + 1) : ℚ) ^ (A046563 (n + 1) : ℤ))).toNat

end

end A322786.P2579898903791467717

/-! ## A322786.P13082667781721632023

`A346520(lt[A344551(n+3), A309094(n+2)])`
-/

namespace A322786.P13082667781721632023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344551 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309094 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322786.P13082667781721632023

/-! ## A322786.P11300844127457346366

`A001055(A322792(n+1))%A322792(A100778(n+1))`
-/

namespace A322786.P11300844127457346366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (A322792 (n + 1)).toNat) (A322792 (A100778 (n + 1)).toNat)

end

end A322786.P11300844127457346366

/-!
# A322790: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where A(n,k) is Sum_{j=0..k} binomial(2*k,2*j)*(n+1)^(k-j)*n^j.

The programs for A322790, there is no canonical definition to state claims against.
-/

/-! ## A322790.P7943313264537451049

`2*A322699(n)+1`
-/

namespace A322790.P7943313264537451049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322699 n + 1

end

end A322790.P7943313264537451049

/-! ## A322790.P1062854398754513995

`or(2*A322699(n), A158388(n)²)`
-/

namespace A322790.P1062854398754513995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A322699 n) (A158388 n ^ 2)

end

end A322790.P1062854398754513995

/-! ## A322790.P1300852182336696468

`or(2*A322699(n), char[A014681(n)])`
-/

namespace A322790.P1300852182336696468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A322699 n) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322790.P1300852182336696468

/-! ## A322790.P17793836579275201955

`or(2*A322699(n), A057077(A025581(n))²)`
-/

namespace A322790.P17793836579275201955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A322699 n) (A057077 (A025581 n).toNat ^ 2)

end

end A322790.P17793836579275201955

/-! ## A322790.P3947763048508422842

`or(2*A322699(n), A087960(A002262(n))²)`
-/

namespace A322790.P3947763048508422842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A322699 n) (A087960 (A002262 n).toNat ^ 2)

end

end A322790.P3947763048508422842

/-!
# A322791: Irregular triangle read by rows in which the n-th row lists the exponential divisors (or e-divisors) of n.

The programs for A322791, there is no canonical definition to state claims against.
-/

/-! ## A322791.P7050181047809252914

`A052409(2^A383761(n+1))`
-/

namespace A322791.P7050181047809252914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A383761 (n + 1) : ℤ))).toNat

end

end A322791.P7050181047809252914

/-! ## A322791.P544958633450306878

`A383761(n+1)%A067727(A113350(n))`
-/

namespace A322791.P544958633450306878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383761 (n + 1)) (A067727 (A113350 n).toNat)

end

end A322791.P544958633450306878

/-! ## A322791.P6771481902480145127

`A383761(n+1)+A358777(A209236(n+1))`
-/

namespace A322791.P6771481902480145127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383761 (n + 1) + A358777 (A209236 (n + 1)).toNat

end

end A322791.P6771481902480145127

/-! ## A322791.P8072793267689301871

`A383761(n+1)+A079978(A383753(n+2))`
-/

namespace A322791.P8072793267689301871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383761 (n + 1) + A079978 (A383753 (n + 2)).toNat

end

end A322791.P8072793267689301871

/-! ## A322791.P8433181356520358639

`lcm(A096309(A264615(n+2)), A383761(n+1))`
-/

namespace A322791.P8433181356520358639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A096309 (A264615 (n + 2)).toNat) (A383761 (n + 1))

end

end A322791.P8433181356520358639

/-!
# A322792: Irregular triangle read by rows where T(n,k) = A002110(n/d)^d, where d = A027750(n,k) and A002110(m) is the product of the first m primes.

The programs for A322792, there is no canonical definition to state claims against.
-/

/-! ## A322792.P14961968250597848792

`A163755(A140690(n+1))`
-/

namespace A322792.P14961968250597848792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 (A140690 (n + 1)).toNat

end

end A322792.P14961968250597848792

/-! ## A322792.P9757166325359558486

`A227955(eq[1, A103921(n)])`
-/

namespace A322792.P9757166325359558486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322792.P9757166325359558486

/-! ## A322792.P16413544248790873328

`A228099(eq[1, A115623(n)])`
-/

namespace A322792.P16413544248790873328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322792.P16413544248790873328

/-! ## A322792.P7653002390955517202

`A227955(eq[A048996(n), A057427(n)])`
-/

namespace A322792.P7653002390955517202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227955 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A322792.P7653002390955517202

/-! ## A322792.P18379963259415090042

`A228099(eq[A057427(n), A072811(n)])`
-/

namespace A322792.P18379963259415090042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228099 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A322792.P18379963259415090042

/-!
# A322793: Proper powers of primorial numbers.

The programs for A322793, there is no canonical definition to state claims against.
-/

/-! ## A322793.P2135696640678760203

`∪[A020707(n), A365308(n+1)]`
-/

namespace A322793.P2135696640678760203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322793.P2135696640678760203

/-! ## A322793.P6137999568125638693

`∩[A100778(n+1), A304250(n+1)]`
-/

namespace A322793.P6137999568125638693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322793.P6137999568125638693

/-! ## A322793.P4478914001742573793

`∩[A025487(n+1), A072777(n+1)]`
-/

namespace A322793.P4478914001742573793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322793.P4478914001742573793

/-! ## A322793.P6858533750945441505

`∩[A055932(n+1), A072777(n+1)]`
-/

namespace A322793.P6858533750945441505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322793.P6858533750945441505

/-! ## A322793.P6706100225747041658

`∩[A072777(n+1), A100778(n+1)]`
-/

namespace A322793.P6706100225747041658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322793.P6706100225747041658

/-!
# A322794: Number of factorizations of n into factors > 1 where all factors have the same number of prime factors counted with multiplicity.

The programs for A322794, there is no canonical definition to state claims against.
-/

/-! ## A322794.P17201731084401787936

`A320655(n+1)+A003056(∑{e}[n+1, #])`
-/

namespace A322794.P17201731084401787936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (n + 1) + A003056 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A322794.P17201731084401787936

/-! ## A322794.P2686017357801420652

`A000005(or(∑{e}[n+1, #], A335451(n+1)))`
-/

namespace A322794.P2686017357801420652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A335451 (n + 1))).toNat

end

end A322794.P2686017357801420652

/-! ## A322794.P6000866068548863425

`A000005(or(∑{e}[n+1, #], A335452(n+1)))`
-/

namespace A322794.P6000866068548863425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A335452 (n + 1))).toNat

end

end A322794.P6000866068548863425

/-! ## A322794.P2002876021236581897

`A353337(n+1)+A001222(∑{e}[n+1, #]+1)`
-/

namespace A322794.P2002876021236581897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353337 (n + 1) + A001222 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)

end

end A322794.P2002876021236581897

/-! ## A322794.P3709199838391326871

`A000005(∏{e}[n+1, #+1]-∑{e}[n+1, #])*A089723(n+1)`
-/

namespace A322794.P3709199838391326871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) - ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) * A089723 (n + 1)

end

end A322794.P3709199838391326871

/-! ## A322794.P3168607719614830115

`A320655(n+1)+A003056(A001222(n+1))`
-/

namespace A322794.P3168607719614830115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (n + 1) + A003056 (A001222 (n + 1)).toNat

end

end A322794.P3168607719614830115

/-! ## A322794.P11831720543820021029

`A353337(n+1)+A001222(A073093(n+1))`
-/

namespace A322794.P11831720543820021029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353337 (n + 1) + A001222 (A073093 (n + 1)).toNat

end

end A322794.P11831720543820021029

/-! ## A322794.P6326419521756369267

`A000005(A081707(n+1))*A089723(n+1)`
-/

namespace A322794.P6326419521756369267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A081707 (n + 1)).toNat * A089723 (n + 1)

end

end A322794.P6326419521756369267

/-! ## A322794.P2422669594117101957

`A000005(A081707(n+1)*A316782(n+1))`
-/

namespace A322794.P2422669594117101957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A081707 (n + 1) * A316782 (n + 1)).toNat

end

end A322794.P2422669594117101957

/-! ## A322794.P10220554489214214988

`A000005(lcm(A081707(n+1), A316782(n+1)))`
-/

namespace A322794.P10220554489214214988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A081707 (n + 1)) (A316782 (n + 1)))

end

end A322794.P10220554489214214988

/-!
# A322795: Number of integers k, 0 <= k <= n, such that the Damerau-Levenshtein distance between the binary representations of n and k is strictly less than the Levenshtein distance.

The programs for A322795, there is no canonical definition to state claims against.
-/

/-! ## A322795.P16169222086888980871

`A212619(A212637(3*n+4))+A079071(n)`
-/

namespace A322795.P16169222086888980871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A212637 (3 * n + 4)).toNat + A079071 n

end

end A322795.P16169222086888980871

/-! ## A322795.P14908662346331770622

`A152487(floor(A305733(2*(n+2))^(A079071(n)-1)))`
-/

namespace A322795.P14908662346331770622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152487 ⌊(A305733 (2 * (n + 2)) : ℚ) ^ (A079071 n - 1 : ℤ)⌋.toNat

end

end A322795.P14908662346331770622

/-! ## A322795.P11915706968946258048

`A322285(floor(A305733(2*(n+2))^(A079071(n)-1)))`
-/

namespace A322795.P11915706968946258048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322285 ⌊(A305733 (2 * (n + 2)) : ℚ) ^ (A079071 n - 1 : ℤ)⌋.toNat

end

end A322795.P11915706968946258048

/-!
# A322796: a(n) = Kronecker symbol (6/n).

The programs for A322796, there is no canonical definition to state claims against.
-/

/-! ## A322796.P570195861930400672

`A260192(A057979(n))`
-/

namespace A322796.P570195861930400672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260192 (A057979 n).toNat

end

end A322796.P570195861930400672

/-!
# A322797: Powerful tau numbers.

The programs for A322797, there is no canonical definition to state claims against.
-/

/-! ## A322797.P3815471558811899150

`∩[A001694(n+1), A033950(n+1)]`
-/

namespace A322797.P3815471558811899150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322797.P3815471558811899150

/-! ## A322797.P14438416930222582032

`filter[A001694(n+1), A336040(#)]`
-/

namespace A322797.P14438416930222582032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A322797.P14438416930222582032

/-! ## A322797.P10321866715598466121

`record[A122377(A001694(n+1))]`
-/

namespace A322797.P10321866715598466121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (A001694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322797.P10321866715598466121

/-! ## A322797.P12900435385122646896

`record[A122377(n+1)/A055231(n+1)]`
-/

namespace A322797.P12900435385122646896
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122377 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322797.P12900435385122646896

/-! ## A322797.P6927614873805515619

`record[A057521(A033950(n+1))]`
-/

namespace A322797.P6927614873805515619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A033950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322797.P6927614873805515619

/-!
# A322798: Number of compositions (ordered partitions) of n into hexagonal numbers (A000384).

The programs for A322798, there is no canonical definition to state claims against.
-/

/-! ## A322798.P8573367602359205870

`A322801(n)+A185238(A137688(n))`
-/

namespace A322798.P8573367602359205870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322801 n + A185238 (A137688 n).toNat

end

end A322798.P8573367602359205870

/-! ## A322798.P10134151136360601253

`A297244(n+1)+A133137(A005708(n))`
-/

namespace A322798.P10134151136360601253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297244 (n + 1) + A133137 (A005708 n).toNat

end

end A322798.P10134151136360601253

/-! ## A322798.P10832286579859882323

`A133137(A322801(n))`
-/

namespace A322798.P10832286579859882323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A322801 n).toNat

end

end A322798.P10832286579859882323

/-! ## A322798.P15747471375180058886

`A111899(A028741(n+1))+A005708(n)`
-/

namespace A322798.P15747471375180058886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111899 (A028741 (n + 1)).toNat + A005708 n

end

end A322798.P15747471375180058886

