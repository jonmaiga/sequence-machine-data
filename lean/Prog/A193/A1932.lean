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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
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
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A193200: G.f.: A(x) = Sum_{n>=0} x^n * Product_{d|n} (1 + x^d)^(n/d).

The programs for A193200, there is no canonical definition to state claims against.
-/

/-! ## A193200.P14175890839566040894

`A135304(A018051(2*n+1))+A064911(n+2)`
-/

namespace A193200.P14175890839566040894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A018051 (2 * n + 1)).toNat + A064911 (n + 2)

end

end A193200.P14175890839566040894

/-! ## A193200.P15602739269661794740

`A091245(∑[3*a(n-2)])` with `a(0)=4, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A193200.P15602739269661794740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 0, 1, 2] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193200.P15602739269661794740

/-! ## A193200.P1719050655936925664

`A230313(A124642(n))`
-/

namespace A193200.P1719050655936925664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230313 (A124642 n).toNat

end

end A193200.P1719050655936925664

/-! ## A193200.P2682394723728525089

`A333638(A092424(n))`
-/

namespace A193200.P2682394723728525089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333638 (A092424 n).toNat

end

end A193200.P2682394723728525089

/-! ## A193200.P7578281527510344418

`A122921(A320802(n+1))`
-/

namespace A193200.P7578281527510344418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A320802 (n + 1)).toNat

end

end A193200.P7578281527510344418

/-!
# A193201: G.f.: A(x) = Sum_{n>=0} x^n / Product_{d|n} (1 - x^d)^(n/d).

The programs for A193201, there is no canonical definition to state claims against.
-/

/-! ## A193201.P13598849411197324692

`A008618(or(8, A048469(n)))`
-/

namespace A193201.P13598849411197324692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (Int.lor 8 (A048469 n)).toNat

end

end A193201.P13598849411197324692

/-! ## A193201.P16020744414112716848

`A008618(A048469(n)+1-n)`
-/

namespace A193201.P16020744414112716848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A048469 n + (1 - (n : ℤ))).toNat

end

end A193201.P16020744414112716848

/-! ## A193201.P8257823721979570336

`A008618(1-(n-A048469(n)))`
-/

namespace A193201.P8257823721979570336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (1 - ((n : ℤ) - A048469 n)).toNat

end

end A193201.P8257823721979570336

/-! ## A193201.P17810675364774634106

`A008618(xor(n+3, A048469(n)))`
-/

namespace A193201.P17810675364774634106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (Int.xor (n + 3 : ℤ) (A048469 n)).toNat

end

end A193201.P17810675364774634106

/-! ## A193201.P3548722449522162232

`A008618(A048469(n)%(8^n))`
-/

namespace A193201.P3548722449522162232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (Int.tmod (A048469 n) (8 ^ n : ℤ)).toNat

end

end A193201.P3548722449522162232

/-!
# A193202: E.g.f. A(x) satisfies: A(A(x)) = x*A'(A(x)).

The programs for A193202, there is no canonical definition to state claims against.
-/

/-! ## A193202.P11190337567518922907

`A139158(A041193(n))`
-/

namespace A193202.P11190337567518922907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139158 (A041193 n).toNat

end

end A193202.P11190337567518922907

/-!
# A193203: G.f. satisfies: A(A(x)) = Sum_{n>=1} a(n)*x^n * (1+2^n*x)^n, where g.f. A(x) = Sum_{n>=1} a(n)*x^n.

The programs for A193203, there is no canonical definition to state claims against.
-/

/-! ## A193203.P17601879405526570743

`A368222(A221235(n+1))`
-/

namespace A193203.P17601879405526570743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368222 (A221235 (n + 1)).toNat

end

end A193203.P17601879405526570743

/-!
# A193204: G.f. satisfies: A(A(x)) = Sum_{n>=1} a(n)*x^n / (1-2^n*x)^n, where g.f. A(x) = Sum_{n>=1} a(n)*x^n.

The programs for A193204, there is no canonical definition to state claims against.
-/

/-! ## A193204.P9379795768027209371

`A004525(A352860(n))*A196724(n)`
-/

namespace A193204.P9379795768027209371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A352860 n).toNat * A196724 n

end

end A193204.P9379795768027209371

/-!
# A193205: G.f. satisfies: A(A(x)) = Sum_{n>=1} a(n)*x^n * (Sum_{k=0..n} C(n,k)^2*x^k), where g.f. A(x) = Sum_{n>=1} a(n)*x^n.

The programs for A193205, there is no canonical definition to state claims against.
-/

/-! ## A193205.P14448530675586500135

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A129017(ceil(2^(n-1)))`
-/

namespace A193205.P14448530675586500135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A129017 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat : ℚ)

end

end A193205.P14448530675586500135

/-! ## A193205.P14946593043798614601

`A336713(n)+A294927(ceil(10^n/9))`
-/

namespace A193205.P14946593043798614601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336713 n + A294927 ⌈(10 ^ n : ℚ) / 9⌉.toNat

end

end A193205.P14946593043798614601

/-!
# A193206: G.f. satisfies: A(A(x)) = Sum_{n>=1} a(n)*x^n * (Sum_{k>=0} C(n+k-1,k)^2*x^k), where g.f. A(x) = Sum_{n>=1} a(n)*x^n.

The programs for A193206, there is no canonical definition to state claims against.
-/

/-! ## A193206.P8961676277313952492

`A274089(n!²)`
-/

namespace A193206.P8961676277313952492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274089 (Nat.factorial n ^ 2)

end

end A193206.P8961676277313952492

/-!
# A193207: G.f. satisfies: A(A(x)) = Sum_{n>=1} a(n)*x^n * Product_{k=1..n} (1 + k*x), where g.f. A(x) = Sum_{n>=1} a(n)*x^n.

The programs for A193207, there is no canonical definition to state claims against.
-/

/-! ## A193207.P14430421460864127147

`A177849(2*n^n)`
-/

namespace A193207.P14430421460864127147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (2 * n ^ n)

end

end A193207.P14430421460864127147

/-! ## A193207.P1605826975992105361

`ceil(A276798(n^n)/4)`
-/

namespace A193207.P1605826975992105361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A276798 (n ^ n) : ℚ) / 4⌉

end

end A193207.P1605826975992105361

/-!
# A193208: G.f. satisfies: A(A(x)) = Sum_{n>=1} a(n)*x^n / Product_{k=1..n} (1 - k*x), where g.f. A(x) = Sum_{n>=1} a(n)*x^n.

The programs for A193208, there is no canonical definition to state claims against.
-/

/-! ## A193208.P981962023984693714

`A296882(A119489(n))-n`
-/

namespace A193208.P981962023984693714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296882 (A119489 n).toNat - (n : ℤ)

end

end A193208.P981962023984693714

/-! ## A193208.P16510578139417988134

`A332487(A006245(n+1))-1`
-/

namespace A193208.P16510578139417988134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332487 (A006245 (n + 1)).toNat - 1

end

end A193208.P16510578139417988134

/-!
# A193209: G.f. satisfies: A(A(x)) = Sum_{n>=1} a(n)*x^n * (1 + n*x)^n, where g.f. A(x) = Sum_{n>=1} a(n)*x^n.

The programs for A193209, there is no canonical definition to state claims against.
-/

/-! ## A193209.P2202066651206689902

`A033948(A004102(n)-A251653(n))`
-/

namespace A193209.P2202066651206689902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (A004102 n - A251653 n).toNat

end

end A193209.P2202066651206689902

/-! ## A193209.P4204345024223055863

`A033948(A004102(n))-A090976(n+1)`
-/

namespace A193209.P4204345024223055863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (A004102 n).toNat - A090976 (n + 1)

end

end A193209.P4204345024223055863

/-!
# A193210: G.f. satisfies: A(A(x)) = Sum_{n>=1} a(n)*x^n / (1 - n*x)^n, where g.f. A(x) = Sum_{n>=1} a(n)*x^n.

The programs for A193210, there is no canonical definition to state claims against.
-/

/-! ## A193210.P16808151712555444900

`A005374(n!²)`
-/

namespace A193210.P16808151712555444900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (Nat.factorial n ^ 2)

end

end A193210.P16808151712555444900

/-!
# A193212: Triangle T(n, k): T(n, 1) = n, T(n, n) = -n if n>1, T(n, k+n) = T(n, k) if n>1.

The programs for A193212, there is no canonical definition to state claims against.
-/

/-! ## A193212.P2866923752195309710

`A140756(A080036(n)^A147056(n+1))`
-/

namespace A193212.P2866923752195309710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (SequenceMachineLib.roundAway ((A080036 n : ℚ) ^ (A147056 (n + 1) : ℤ))).toNat

end

end A193212.P2866923752195309710

/-! ## A193212.P16521694396188841719

`A140756(A147056(n+1)!*A080036(n))`
-/

namespace A193212.P16521694396188841719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 ((Nat.factorial (A147056 (n + 1)).toNat : ℤ) * A080036 n).toNat

end

end A193212.P16521694396188841719

/-! ## A193212.P11608780792969984528

`A034947(A251123(n+1))*A131818(n+1)`
-/

namespace A193212.P11608780792969984528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A251123 (n + 1)).toNat * A131818 (n + 1)

end

end A193212.P11608780792969984528

/-! ## A193212.P11910017969057891952

`A131818(n+1)*A175629(A187408(n+1))`
-/

namespace A193212.P11910017969057891952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) * A175629 (A187408 (n + 1)).toNat

end

end A193212.P11910017969057891952

/-!
# A193213: Primes generated by the golden sieve, cf. A099267.

The programs for A193213, the canonical program `A193213.P463286399093326122` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193213 has offset 1).

The definition of A193213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193213.P463286399093326122

`p?[floor(ϕ*n)+2]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193213

/-- `p?[floor(ϕ*n)+2]` -/
def P463286399093326122.Spec : Prop :=
  ∀ n, P463286399093326122.a n = A193213 (n + 1)

theorem P463286399093326122.correct : P463286399093326122.Spec := by
  intro n
  simp only [A193213, Nat.add_sub_cancel]

end A193213

/-! ## A193213.P4147581374514848348

`record[A006530(floor(ϕ*n)+2)]`
-/

namespace A193213.P4147581374514848348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (⌊Real.goldenRatio * (n : ℝ)⌋ + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193213.P4147581374514848348

namespace A193213

/-- `record[A006530(floor(ϕ*n)+2)]` -/
def P4147581374514848348.Spec : Prop :=
  ∀ n, P4147581374514848348.a n = A193213 (n + 1)

end A193213

/-! ## A193213.P8337964866516587890

`record[A020639(floor(ϕ*n)+2)]`
-/

namespace A193213.P8337964866516587890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌊Real.goldenRatio * (n : ℝ)⌋ + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193213.P8337964866516587890

namespace A193213

/-- `record[A020639(floor(ϕ*n)+2)]` -/
def P8337964866516587890.Spec : Prop :=
  ∀ n, P8337964866516587890.a n = A193213 (n + 1)

end A193213

/-! ## A193213.P1864981238127038648

`record[∏{p}[ceil(n/ϕ)+n+1, #-1]]+1`
-/

namespace A193213.P1864981238127038648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉ + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A193213.P1864981238127038648

namespace A193213

/-- `record[∏{p}[ceil(n/ϕ)+n+1, #-1]]+1` -/
def P1864981238127038648.Spec : Prop :=
  ∀ n, P1864981238127038648.a n = A193213 (n + 1)

end A193213

/-! ## A193213.P10986121768498720335

`record[A000010(comp[ceil(n*ϕ²)]+1)]+1`
-/

namespace A193213.P10986121768498720335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A193213.P10986121768498720335

namespace A193213

/-- `record[A000010(comp[ceil(n*ϕ²)]+1)]+1` -/
def P10986121768498720335.Spec : Prop :=
  ∀ n, P10986121768498720335.a n = A193213 (n + 1)

end A193213

/-! ## A193213.P13658514002069920387

`filter[A026355(n), A010051(#)]`
-/

namespace A193213.P13658514002069920387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A193213.P13658514002069920387

namespace A193213

/-- `filter[A026355(n), A010051(#)]` -/
def P13658514002069920387.Spec : Prop :=
  ∀ n, P13658514002069920387.a n = A193213 (n + 1)

end A193213

/-! ## A193213.P1373149306290842710

`filter[A099267(n+1), A010051(#)]`
-/

namespace A193213.P1373149306290842710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A193213.P1373149306290842710

namespace A193213

/-- `filter[A099267(n+1), A010051(#)]` -/
def P1373149306290842710.Spec : Prop :=
  ∀ n, P1373149306290842710.a n = A193213 (n + 1)

end A193213

/-! ## A193213.P15339333182771693245

`∩[A000040(n+1), A026355(n)]`
-/

namespace A193213.P15339333182771693245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193213.P15339333182771693245

namespace A193213

/-- `∩[A000040(n+1), A026355(n)]` -/
def P15339333182771693245.Spec : Prop :=
  ∀ n, (P15339333182771693245.a n : ℤ) = A193213 (n + 1)

end A193213

/-! ## A193213.P647690069078498611

`∩[A175787(n+1), A026355(n)]`
-/

namespace A193213.P647690069078498611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193213.P647690069078498611

namespace A193213

/-- `∩[A175787(n+1), A026355(n)]` -/
def P647690069078498611.Spec : Prop :=
  ∀ n, (P647690069078498611.a n : ℤ) = A193213 (n + 1)

end A193213

/-! ## A193213.P12346252834642922283

`∩[A182986(n+1), A026355(n)]`
-/

namespace A193213.P12346252834642922283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193213.P12346252834642922283

namespace A193213

/-- `∩[A182986(n+1), A026355(n)]` -/
def P12346252834642922283.Spec : Prop :=
  ∀ n, (P12346252834642922283.a n : ℤ) = A193213 (n + 1)

end A193213

/-! ## A193213.P8160036080468171238

`∩[A000040(n+1), A099267(n+1)]`
-/

namespace A193213.P8160036080468171238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193213.P8160036080468171238

namespace A193213

/-- `∩[A000040(n+1), A099267(n+1)]` -/
def P8160036080468171238.Spec : Prop :=
  ∀ n, (P8160036080468171238.a n : ℤ) = A193213 (n + 1)

end A193213

/-! ## A193213.P9857322010313481424

`∩[A008578(n+1), A099267(n+1)]`
-/

namespace A193213.P9857322010313481424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193213.P9857322010313481424

namespace A193213

/-- `∩[A008578(n+1), A099267(n+1)]` -/
def P9857322010313481424.Spec : Prop :=
  ∀ n, (P9857322010313481424.a n : ℤ) = A193213 (n + 1)

end A193213

/-! ## A193213.P11931932156814399840

`∩[A046022(n+1), A099267(n+1)]`
-/

namespace A193213.P11931932156814399840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193213.P11931932156814399840

namespace A193213

/-- `∩[A046022(n+1), A099267(n+1)]` -/
def P11931932156814399840.Spec : Prop :=
  ∀ n, (P11931932156814399840.a n : ℤ) = A193213 (n + 1)

end A193213

/-! ## A193213.P11737880062935354928

`∩[A067126(n+1), A099267(n+1)]`
-/

namespace A193213.P11737880062935354928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193213.P11737880062935354928

namespace A193213

/-- `∩[A067126(n+1), A099267(n+1)]` -/
def P11737880062935354928.Spec : Prop :=
  ∀ n, (P11737880062935354928.a n : ℤ) = A193213 (n + 1)

end A193213

/-! ## A193213.P936604358730225133

`∩[A099267(n+1), A158611(n+1)]`
-/

namespace A193213.P936604358730225133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193213.P936604358730225133

namespace A193213

/-- `∩[A099267(n+1), A158611(n+1)]` -/
def P936604358730225133.Spec : Prop :=
  ∀ n, (P936604358730225133.a n : ℤ) = A193213 (n + 1)

end A193213

/-! ## A193213.P7235440874141160212

`∩[A326715(n+1), A099267(n+1)]`
-/

namespace A193213.P7235440874141160212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193213.P7235440874141160212

namespace A193213

/-- `∩[A326715(n+1), A099267(n+1)]` -/
def P7235440874141160212.Spec : Prop :=
  ∀ n, (P7235440874141160212.a n : ℤ) = A193213 (n + 1)

end A193213

/-! ## A193213.P16629801310429439301

`∩[A000040(n+1), A066096(n)+2]`
-/

namespace A193213.P16629801310429439301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193213.P16629801310429439301

namespace A193213

/-- `∩[A000040(n+1), A066096(n)+2]` -/
def P16629801310429439301.Spec : Prop :=
  ∀ n, (P16629801310429439301.a n : ℤ) = A193213 (n + 1)

end A193213

/-! ## A193213.P6785640434672079292

`record[A014963(floor(ϕ*n)+2)]`
-/

namespace A193213.P6785640434672079292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (⌊Real.goldenRatio * (n : ℝ)⌋ + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193213.P6785640434672079292

namespace A193213

/-- `record[A014963(floor(ϕ*n)+2)]` -/
def P6785640434672079292.Spec : Prop :=
  ∀ n, P6785640434672079292.a n = A193213 (n + 1)

end A193213

/-!
# A193214: Primes in A007066.

The programs for A193214, the canonical program `A193214.P16510650390074874461` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193214 has offset 1).

The definition of A193214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8816 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193214.P16510650390074874461

`p?[ceil(n*ϕ²)+1]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193214

/-- `p?[ceil(n*ϕ²)+1]` -/
def P16510650390074874461.Spec : Prop :=
  ∀ n, P16510650390074874461.a n = A193214 (n + 1)

theorem P16510650390074874461.correct : P16510650390074874461.Spec := by
  intro n
  simp only [A193214, Nat.add_sub_cancel]

end A193214

/-! ## A193214.P5449408015184991198

`or(1, p?[A004957(n)+1])`
-/

namespace A193214.P5449408015184991198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A193214.P5449408015184991198

namespace A193214

/-- `or(1, p?[A004957(n)+1])` -/
def P5449408015184991198.Spec : Prop :=
  ∀ n, P5449408015184991198.a n = A193214 (n + 1)

end A193214

/-! ## A193214.P7951500535255528329

`or(1, p?[A007066(n+1)])`
-/

namespace A193214.P7951500535255528329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A193214.P7951500535255528329

namespace A193214

/-- `or(1, p?[A007066(n+1)])` -/
def P7951500535255528329.Spec : Prop :=
  ∀ n, P7951500535255528329.a n = A193214 (n + 1)

end A193214

/-! ## A193214.P6764448796490103851

`or(1, p?[A026356(n+2)])`
-/

namespace A193214.P6764448796490103851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A193214.P6764448796490103851

namespace A193214

/-- `or(1, p?[A026356(n+2)])` -/
def P6764448796490103851.Spec : Prop :=
  ∀ n, P6764448796490103851.a n = A193214 (n + 1)

end A193214

/-! ## A193214.P13599818330473108861

`or(1, p?[A189662(n+1)+n])`
-/

namespace A193214.P13599818330473108861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189662 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A193214.P13599818330473108861

namespace A193214

/-- `or(1, p?[A189662(n+1)+n])` -/
def P13599818330473108861.Spec : Prop :=
  ∀ n, P13599818330473108861.a n = A193214 (n + 1)

end A193214

/-! ## A193214.P13411290333866742140

`record[A020639(A007066(n+3))]`
-/

namespace A193214.P13411290333866742140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007066 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193214.P13411290333866742140

namespace A193214

/-- `record[A020639(A007066(n+3))]` -/
def P13411290333866742140.Spec : Prop :=
  ∀ n, P13411290333866742140.a n = A193214 (n + 1)

end A193214

/-! ## A193214.P15280250969678534666

`record[A020639(A026356(n+3))]`
-/

namespace A193214.P15280250969678534666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A026356 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193214.P15280250969678534666

namespace A193214

/-- `record[A020639(A026356(n+3))]` -/
def P15280250969678534666.Spec : Prop :=
  ∀ n, P15280250969678534666.a n = A193214 (n + 1)

end A193214

/-! ## A193214.P17770526250939674906

`filter[A007066(n+1), A010051(#)]`
-/

namespace A193214.P17770526250939674906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A193214.P17770526250939674906

namespace A193214

/-- `filter[A007066(n+1), A010051(#)]` -/
def P17770526250939674906.Spec : Prop :=
  ∀ n, P17770526250939674906.a n = A193214 (n + 1)

end A193214

/-! ## A193214.P16480937154894827377

`filter[A026356(n+2), A010051(#)]`
-/

namespace A193214.P16480937154894827377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A193214.P16480937154894827377

namespace A193214

/-- `filter[A026356(n+2), A010051(#)]` -/
def P16480937154894827377.Spec : Prop :=
  ∀ n, P16480937154894827377.a n = A193214 (n + 1)

end A193214

/-! ## A193214.P2587014567534509351

`record[A020639(A001950(n+2)+2)]`
-/

namespace A193214.P2587014567534509351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001950 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193214.P2587014567534509351

namespace A193214

/-- `record[A020639(A001950(n+2)+2)]` -/
def P2587014567534509351.Spec : Prop :=
  ∀ n, P2587014567534509351.a n = A193214 (n + 1)

end A193214

/-! ## A193214.P5075595554518423273

`∩[A000040(n+1), A007066(n+1)]`
-/

namespace A193214.P5075595554518423273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193214.P5075595554518423273

namespace A193214

/-- `∩[A000040(n+1), A007066(n+1)]` -/
def P5075595554518423273.Spec : Prop :=
  ∀ n, (P5075595554518423273.a n : ℤ) = A193214 (n + 1)

end A193214

/-! ## A193214.P76249593676707403

`∩[A004139(n+1), A007066(n+1)]`
-/

namespace A193214.P76249593676707403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193214.P76249593676707403

namespace A193214

/-- `∩[A004139(n+1), A007066(n+1)]` -/
def P76249593676707403.Spec : Prop :=
  ∀ n, (P76249593676707403.a n : ℤ) = A193214 (n + 1)

end A193214

/-! ## A193214.P15880303813070833507

`∩[A004139(n+1), A026356(n+1)]`
-/

namespace A193214.P15880303813070833507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193214.P15880303813070833507

namespace A193214

/-- `∩[A004139(n+1), A026356(n+1)]` -/
def P15880303813070833507.Spec : Prop :=
  ∀ n, (P15880303813070833507.a n : ℤ) = A193214 (n + 1)

end A193214

/-! ## A193214.P8410365891454385542

`∩[A006005(n+1), A026356(n+1)]`
-/

namespace A193214.P8410365891454385542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193214.P8410365891454385542

namespace A193214

/-- `∩[A006005(n+1), A026356(n+1)]` -/
def P8410365891454385542.Spec : Prop :=
  ∀ n, (P8410365891454385542.a n : ℤ) = A193214 (n + 1)

end A193214

/-! ## A193214.P5215923755274879579

`∩[A007066(n+1), A045319(n+1)]`
-/

namespace A193214.P5215923755274879579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193214.P5215923755274879579

namespace A193214

/-- `∩[A007066(n+1), A045319(n+1)]` -/
def P5215923755274879579.Spec : Prop :=
  ∀ n, (P5215923755274879579.a n : ℤ) = A193214 (n + 1)

end A193214

/-! ## A193214.P4896077755908262343

`∩[A007066(n+1), A045344(n+1)]`
-/

namespace A193214.P4896077755908262343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193214.P4896077755908262343

namespace A193214

/-- `∩[A007066(n+1), A045344(n+1)]` -/
def P4896077755908262343.Spec : Prop :=
  ∀ n, (P4896077755908262343.a n : ℤ) = A193214 (n + 1)

end A193214

/-! ## A193214.P5323456152568140603

`∩[A007066(n+1), A065091(n+1)]`
-/

namespace A193214.P5323456152568140603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193214.P5323456152568140603

namespace A193214

/-- `∩[A007066(n+1), A065091(n+1)]` -/
def P5323456152568140603.Spec : Prop :=
  ∀ n, (P5323456152568140603.a n : ℤ) = A193214 (n + 1)

end A193214

/-! ## A193214.P11196170583080626416

`∩[A026356(n+1), A065091(n+1)]`
-/

namespace A193214.P11196170583080626416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193214.P11196170583080626416

namespace A193214

/-- `∩[A026356(n+1), A065091(n+1)]` -/
def P11196170583080626416.Spec : Prop :=
  ∀ n, (P11196170583080626416.a n : ℤ) = A193214 (n + 1)

end A193214

/-! ## A193214.P12748891603847601132

`∩[A007066(n+1), A108719(n+1)]`
-/

namespace A193214.P12748891603847601132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193214.P12748891603847601132

namespace A193214

/-- `∩[A007066(n+1), A108719(n+1)]` -/
def P12748891603847601132.Spec : Prop :=
  ∀ n, (P12748891603847601132.a n : ℤ) = A193214 (n + 1)

end A193214

/-! ## A193214.P17197131322210015869

`∩[A007066(n+1), A116974(n+1)]`
-/

namespace A193214.P17197131322210015869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193214.P17197131322210015869

namespace A193214

/-- `∩[A007066(n+1), A116974(n+1)]` -/
def P17197131322210015869.Spec : Prop :=
  ∀ n, (P17197131322210015869.a n : ℤ) = A193214 (n + 1)

end A193214

/-!
# A193215: Number of Dyck paths of semilength n having the property that the heights of the first and the last peaks do not disagree.

The programs for A193215, the canonical program `A193215.P13640404979239094247` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193215 has offset 0).

The definition of A193215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193215.P3755016143761168922

`A135336(n)+1-A289589(n)`
-/

namespace A193215.P3755016143761168922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135336 n + (1 - A289589 n)

end

end A193215.P3755016143761168922

namespace A193215

/-- `A135336(n)+1-A289589(n)` -/
def P3755016143761168922.Spec : Prop :=
  ∀ n, P3755016143761168922.a n = A193215 n

theorem P3755016143761168922.correct : P3755016143761168922.Spec := by
  intro n
  simp only [A193215, Nat.add_sub_cancel, A193215.P3755016143761168922.a, A193215.P13640404979239094247.a, A000108, A000108.P17551949696095299361.a, A135336, A135336.P8279202122990715746.f1, A135336.P8279202122990715746.a, A289589, A289589.P10535227749720856808.a, A000957, A000957.P17024256012114130201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193215

/-! ## A193215.P13640404979239094247

`A135336(n)+A135336(n)-A000108(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A193215

/-- `A135336(n)+A135336(n)-A000108(n)` -/
def P13640404979239094247.Spec : Prop :=
  ∀ n, P13640404979239094247.a n = A193215 n

theorem P13640404979239094247.correct : P13640404979239094247.Spec := by
  intro n
  simp only [A193215]

end A193215

/-! ## A193215.P10250950461803856565

`A091208(A166296(n))`
-/

namespace A193215.P10250950461803856565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091208 (A166296 n).toNat

end

end A193215.P10250950461803856565

namespace A193215

/-- `A091208(A166296(n))` -/
def P10250950461803856565.Spec : Prop :=
  ∀ n, P10250950461803856565.a n = A193215 n

end A193215

/-! ## A193215.P8842348476050141526

`A166155(A145062(n))`
-/

namespace A193215.P8842348476050141526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166155 (A145062 n).toNat

end

end A193215.P8842348476050141526

namespace A193215

/-- `A166155(A145062(n))` -/
def P8842348476050141526.Spec : Prop :=
  ∀ n, P8842348476050141526.a n = A193215 n

end A193215

/-!
# A193216: Least semiprime whose sum of prime factors equals n!

The programs for A193216, there is no canonical definition to state claims against.
-/

/-! ## A193216.P11767724269089383512

`A037154(n+3)*A037155(n+3)`
-/

namespace A193216.P11767724269089383512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037154 (n + 3) * A037155 (n + 3)

end

end A193216.P11767724269089383512

/-! ## A193216.P3185063972417174329

`(A301427(n+3)+n+3)*A037154(n+3)`
-/

namespace A193216.P3185063972417174329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A301427 (n + 3) + (n + 3 : ℤ)) * A037154 (n + 3)

end

end A193216.P3185063972417174329

/-! ## A193216.P6473471453966229449

`(A000142(n+3)-A037154(n+3))*A037154(n+3)`
-/

namespace A193216.P6473471453966229449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 3) - A037154 (n + 3)) * A037154 (n + 3)

end

end A193216.P6473471453966229449

/-! ## A193216.P11779609232527348199

`A014963((n+3)!-A037154(n+3))*A037154(n+3)`
-/

namespace A193216.P11779609232527348199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((Nat.factorial (n + 3) : ℤ) - A037154 (n + 3)).toNat * A037154 (n + 3)

end

end A193216.P11779609232527348199

/-! ## A193216.P18117160233478327838

`A028310((n+3)!-A037154(n+3))*A037154(n+3)`
-/

namespace A193216.P18117160233478327838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((Nat.factorial (n + 3) : ℤ) - A037154 (n + 3)).toNat * A037154 (n + 3)

end

end A193216.P18117160233478327838

/-!
# A193217: Number of non-Wiener index-unique simple connected graphs on n nodes.

The programs for A193217, there is no canonical definition to state claims against.
-/

/-! ## A193217.P3232052098503847168

`A004524(A143740(n)-A328747(n))`
-/

namespace A193217.P3232052098503847168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A143740 n - A328747 n).toNat

end

end A193217.P3232052098503847168

/-! ## A193217.P17956780614792834554

`A004524(A143740(n)-A342134(n))`
-/

namespace A193217.P17956780614792834554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A143740 n - A342134 n).toNat

end

end A193217.P17956780614792834554

/-! ## A193217.P1590787882025772257

`A241840(n+1)-A175267(A006503(n))`
-/

namespace A193217.P1590787882025772257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241840 (n + 1) - A175267 (A006503 n).toNat

end

end A193217.P1590787882025772257

/-!
# A193218: Number of vertices in truncated tetrahedron with faces that are centered polygons.

The programs for A193218, the canonical program `A193218.P10662141217646071315` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193218 has offset 1).

The definition of A193218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193218.P10662141217646071315

`6*(n+1)^3-9*(n+1)²+5*(n+1)-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193218

/-- `6*(n+1)^3-9*(n+1)²+5*(n+1)-1` -/
def P10662141217646071315.Spec : Prop :=
  ∀ n, P10662141217646071315.a n = A193218 (n + 1)

theorem P10662141217646071315.correct : P10662141217646071315.Spec := by
  intro n
  simp only [A193218, Nat.add_sub_cancel]

end A193218

/-! ## A193218.P8279719728679607116

`lcm(Δ[n^3], Δ[n²])`
-/

namespace A193218.P8279719728679607116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A193218.P8279719728679607116

namespace A193218

/-- `lcm(Δ[n^3], Δ[n²])` -/
def P8279719728679607116.Spec : Prop :=
  ∀ n, (P8279719728679607116.a n : ℤ) = A193218 (n + 1)

end A193218

/-! ## A193218.P10690896468506479772

`Δ[C(3*n², 2)/3]`
-/

namespace A193218.P10690896468506479772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n ^ 2) 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193218.P10690896468506479772

namespace A193218

/-- `Δ[C(3*n², 2)/3]` -/
def P10690896468506479772.Spec : Prop :=
  ∀ n, P10690896468506479772.a n = (A193218 (n + 1) : ℚ)

theorem P10690896468506479772.correct : P10690896468506479772.Spec := by
  intro n
  simp only [A193218, Nat.add_sub_cancel, A193218.P10690896468506479772.f1, A193218.P10690896468506479772.a, A193218.P10662141217646071315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193218

/-! ## A193218.P16551789222020974628

`∑[ceil(2/acot(3*n)²)]`
-/

namespace A193218.P16551789222020974628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (3 * n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193218.P16551789222020974628

namespace A193218

/-- `∑[ceil(2/acot(3*n)²)]` -/
def P16551789222020974628.Spec : Prop :=
  ∀ n, P16551789222020974628.a n = A193218 (n + 1)

end A193218

/-! ## A193218.P10468889002141402319

`Δ[C(n², 2)+n²²]`
-/

namespace A193218.P10468889002141402319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2 + (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A193218.P10468889002141402319

namespace A193218

/-- `Δ[C(n², 2)+n²²]` -/
def P10468889002141402319.Spec : Prop :=
  ∀ n, P10468889002141402319.a n = A193218 (n + 1)

theorem P10468889002141402319.correct : P10468889002141402319.Spec := by
  intro n
  simp only [A193218, Nat.add_sub_cancel, A193218.P10468889002141402319.f1, A193218.P10468889002141402319.a, A193218.P10662141217646071315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193218

/-! ## A193218.P16120284147493826613

`or(1, (2*n+1)*Δ[n^3])`
-/

namespace A193218.P16120284147493826613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 * n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A193218.P16120284147493826613

namespace A193218

/-- `or(1, (2*n+1)*Δ[n^3])` -/
def P16120284147493826613.Spec : Prop :=
  ∀ n, P16120284147493826613.a n = A193218 (n + 1)

end A193218

/-! ## A193218.P9060251714408132713

`∑[A010008(n)]`
-/

namespace A193218.P9060251714408132713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193218.P9060251714408132713

namespace A193218

/-- `∑[A010008(n)]` -/
def P9060251714408132713.Spec : Prop :=
  ∀ n, P9060251714408132713.a n = A193218 (n + 1)

end A193218

/-! ## A193218.P2687059059133296085

`∑[A010007(n)+n²]`
-/

namespace A193218.P2687059059133296085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010007 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193218.P2687059059133296085

namespace A193218

/-- `∑[A010007(n)+n²]` -/
def P2687059059133296085.Spec : Prop :=
  ∀ n, P2687059059133296085.a n = A193218 (n + 1)

end A193218

/-! ## A193218.P16556588695047161083

`∑[A010009(n)-n²]`
-/

namespace A193218.P16556588695047161083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010009 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193218.P16556588695047161083

namespace A193218

/-- `∑[A010009(n)-n²]` -/
def P16556588695047161083.Spec : Prop :=
  ∀ n, P16556588695047161083.a n = A193218 (n + 1)

end A193218

/-! ## A193218.P8997284069294969852

`(2*n+1)*A003215(n)`
-/

namespace A193218.P8997284069294969852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A003215 n

end

end A193218.P8997284069294969852

namespace A193218

/-- `(2*n+1)*A003215(n)` -/
def P8997284069294969852.Spec : Prop :=
  ∀ n, P8997284069294969852.a n = A193218 (n + 1)

theorem P8997284069294969852.correct : P8997284069294969852.Spec := by
  intro n
  simp only [A193218, Nat.add_sub_cancel, A193218.P8997284069294969852.a, A193218.P10662141217646071315.a, A003215, A003215.P5851317289441473820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193218

/-! ## A193218.P18022362778293797673

`abs(Δ[n^3]*A005408(n))`
-/

namespace A193218.P18022362778293797673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A005408 n|

end

end A193218.P18022362778293797673

namespace A193218

/-- `abs(Δ[n^3]*A005408(n))` -/
def P18022362778293797673.Spec : Prop :=
  ∀ n, P18022362778293797673.a n = A193218 (n + 1)

end A193218

/-! ## A193218.P12849042089895358996

`ceil(A193228(n+1)/2+n)`
-/

namespace A193218.P12849042089895358996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A193228 (n + 1) : ℚ) / 2 + (n : ℚ)⌉

end

end A193218.P12849042089895358996

namespace A193218

/-- `ceil(A193228(n+1)/2+n)` -/
def P12849042089895358996.Spec : Prop :=
  ∀ n, P12849042089895358996.a n = A193218 (n + 1)

end A193218

/-! ## A193218.P10804916902507943891

`A003215(n)*A004273(n+1)`
-/

namespace A193218.P10804916902507943891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n * A004273 (n + 1)

end

end A193218.P10804916902507943891

namespace A193218

/-- `A003215(n)*A004273(n+1)` -/
def P10804916902507943891.Spec : Prop :=
  ∀ n, P10804916902507943891.a n = A193218 (n + 1)

end A193218

/-! ## A193218.P6834463691860408102

`A022522(n)/A002061(n+1)`
-/

namespace A193218.P6834463691860408102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022522 n : ℚ) / (A002061 (n + 1) : ℚ)

end

end A193218.P6834463691860408102

namespace A193218

/-- `A022522(n)/A002061(n+1)` -/
def P6834463691860408102.Spec : Prop :=
  ∀ n, P6834463691860408102.a n = (A193218 (n + 1) : ℚ)

end A193218

/-! ## A193218.P6055438510867696711

`(2*n+1)*A068626(A016777(n))`
-/

namespace A193218.P6055438510867696711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A068626 (A016777 n).toNat

end

end A193218.P6055438510867696711

namespace A193218

/-- `(2*n+1)*A068626(A016777(n))` -/
def P6055438510867696711.Spec : Prop :=
  ∀ n, P6055438510867696711.a n = A193218 (n + 1)

end A193218

/-! ## A193218.P13123630241554025214

`Δ[A260810(n)]`
-/

namespace A193218.P13123630241554025214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193218.P13123630241554025214

namespace A193218

/-- `Δ[A260810(n)]` -/
def P13123630241554025214.Spec : Prop :=
  ∀ n, P13123630241554025214.a n = A193218 (n + 1)

end A193218

/-! ## A193218.P13997187651382888385

`Δ[n*A004188(n)]`
-/

namespace A193218.P13997187651382888385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193218.P13997187651382888385

namespace A193218

/-- `Δ[n*A004188(n)]` -/
def P13997187651382888385.Spec : Prop :=
  ∀ n, P13997187651382888385.a n = A193218 (n + 1)

end A193218

/-! ## A193218.P4766375649709642469

`∑[A009946(2*n)]`
-/

namespace A193218.P4766375649709642469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193218.P4766375649709642469

namespace A193218

/-- `∑[A009946(2*n)]` -/
def P4766375649709642469.Spec : Prop :=
  ∀ n, P4766375649709642469.a n = A193218 (n + 1)

end A193218

/-! ## A193218.P4593085890412251151

`A235988(Δ[n²])/3`
-/

namespace A193218.P4593085890412251151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235988 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A193218.P4593085890412251151

namespace A193218

/-- `A235988(Δ[n²])/3` -/
def P4593085890412251151.Spec : Prop :=
  ∀ n, P4593085890412251151.a n = (A193218 (n + 1) : ℚ)

end A193218

/-! ## A193218.P10555120483531210451

`(2*n+1)*A077043(2*n+1)`
-/

namespace A193218.P10555120483531210451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A077043 (2 * n + 1)

end

end A193218.P10555120483531210451

namespace A193218

/-- `(2*n+1)*A077043(2*n+1)` -/
def P10555120483531210451.Spec : Prop :=
  ∀ n, P10555120483531210451.a n = A193218 (n + 1)

end A193218

/-!
# A193220: Denominators of the fourth row of Akiyama-Tanigawa algorithm leading to Bernoulli numbers A164555(n)/A027642(n).

The programs for A193220, there is no canonical definition to state claims against.
-/

/-! ## A193220.P12671955568823702511

`A051715(∑[n+3]+6)`
-/

namespace A193220.P12671955568823702511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051715 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A193220.P12671955568823702511

/-! ## A193220.P9431197789212635716

`A051713(n+1)/gcd(6, n+1)`
-/

namespace A193220.P9431197789212635716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051713 (n + 1) : ℚ) / (Nat.gcd 6 (n + 1) : ℚ)

end

end A193220.P9431197789212635716

/-! ## A193220.P6907448875202747780

`gcd(Δ[A034263(n)], A051713(n+1))`
-/

namespace A193220.P6907448875202747780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A051713 (n + 1))

end

end A193220.P6907448875202747780

/-! ## A193220.P17230851598583338854

`A051713(n+1)/A089128(n+1)`
-/

namespace A193220.P17230851598583338854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051713 (n + 1) : ℚ) / (A089128 (n + 1) : ℚ)

end

end A193220.P17230851598583338854

/-! ## A193220.P10976917366970685828

`A063524(2*n)+A051715(A167614(n+2))`
-/

namespace A193220.P10976917366970685828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (2 * n) + A051715 (A167614 (n + 2)).toNat

end

end A193220.P10976917366970685828

/-!
# A193226: Least semiprime whose sum of prime factors equals 2^n.

The programs for A193226, there is no canonical definition to state claims against.
-/

/-! ## A193226.P14587806096978718428

`A057673(n+2)*A057674(n+1)`
-/

namespace A193226.P14587806096978718428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (n + 2) * A057674 (n + 1)

end

end A193226.P14587806096978718428

/-! ## A193226.P17653596235986928322

`p?[A057674(n)]*A057673(n+2)`
-/

namespace A193226.P17653596235986928322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057673 (n + 2)

end

end A193226.P17653596235986928322

/-! ## A193226.P15978994884199281158

`A073046(2^(n+1))`
-/

namespace A193226.P15978994884199281158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073046 (2 ^ (n + 1))

end

end A193226.P15978994884199281158

/-! ## A193226.P14635595715242333085

`or(4, A073046(A000079(n+1)))`
-/

namespace A193226.P14635595715242333085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A073046 (A000079 (n + 1)).toNat)

end

end A193226.P14635595715242333085

/-! ## A193226.P3068736416648026171

`A073046(A000079(n+1))+A025442(n)`
-/

namespace A193226.P3068736416648026171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073046 (A000079 (n + 1)).toNat + A025442 n

end

end A193226.P3068736416648026171

/-!
# A193227: Semiprimes p*q such that p+1 and q+1 are semiprimes.

The programs for A193227, there is no canonical definition to state claims against.
-/

/-! ## A193227.P9444822382494625652

`A071904(A000009(3*n))%A164065(n+1)`
-/

namespace A193227.P9444822382494625652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071904 (A000009 (3 * n)).toNat) (A164065 (n + 1))

end

end A193227.P9444822382494625652

/-! ## A193227.P6135041581687481975

`A046315(A000045(n+3)^A284761(n+1)-1)`
-/

namespace A193227.P6135041581687481975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (SequenceMachineLib.roundAway ((A000045 (n + 3) : ℚ) ^ (A284761 (n + 1) : ℤ) - 1)).toNat

end

end A193227.P6135041581687481975

/-! ## A193227.P335223197029718111

`A046315(A000045(n+3)^A287377(n+2)-1)`
-/

namespace A193227.P335223197029718111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (SequenceMachineLib.roundAway ((A000045 (n + 3) : ℚ) ^ (A287377 (n + 2) : ℤ) - 1)).toNat

end

end A193227.P335223197029718111

/-!
# A193228: Truncated octahedron with faces of centered polygons.

The programs for A193228, the canonical program `A193228.P3355603474307553126` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193228 has offset 1).

The definition of A193228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193228.P3355603474307553126

`12*(n+1)^3-18*(n+1)²+8*(n+1)-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193228

/-- `12*(n+1)^3-18*(n+1)²+8*(n+1)-1` -/
def P3355603474307553126.Spec : Prop :=
  ∀ n, P3355603474307553126.a n = A193228 (n + 1)

theorem P3355603474307553126.correct : P3355603474307553126.Spec := by
  intro n
  simp only [A193228, Nat.add_sub_cancel]

end A193228

/-! ## A193228.P15280022904554309098

`lcm(∑[12*n]+1, Δ[n²])`
-/

namespace A193228.P15280022904554309098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A193228.P15280022904554309098

namespace A193228

/-- `lcm(∑[12*n]+1, Δ[n²])` -/
def P15280022904554309098.Spec : Prop :=
  ∀ n, (P15280022904554309098.a n : ℤ) = A193228 (n + 1)

end A193228

/-! ## A193228.P13684483182940004909

`(∑[12*n]+1)*record[(n+1)/2^val(n+1, 2)]`
-/

namespace A193228.P13684483182940004909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A193228.P13684483182940004909

namespace A193228

/-- `(∑[12*n]+1)*record[(n+1)/2^val(n+1, 2)]` -/
def P13684483182940004909.Spec : Prop :=
  ∀ n, P13684483182940004909.a n = (A193228 (n + 1) : ℚ)

end A193228

/-! ## A193228.P17705373840337953034

`Δ[n²]*Δ[A007588(n)]`
-/

namespace A193228.P17705373840337953034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (f2 (n + 1) - f2 n)

end

end A193228.P17705373840337953034

namespace A193228

/-- `Δ[n²]*Δ[A007588(n)]` -/
def P17705373840337953034.Spec : Prop :=
  ∀ n, P17705373840337953034.a n = A193228 (n + 1)

theorem P17705373840337953034.correct : P17705373840337953034.Spec := by
  intro n
  simp only [A193228, Nat.add_sub_cancel, A193228.P17705373840337953034.f1, A193228.P17705373840337953034.f2, A193228.P17705373840337953034.a, A193228.P3355603474307553126.a, A007588, A007588.P13302891266756921093.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193228

/-! ## A193228.P9300859116869063490

`Δ[n²]*A003154(n+1)`
-/

namespace A193228.P9300859116869063490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A003154 (n + 1)

end

end A193228.P9300859116869063490

namespace A193228

/-- `Δ[n²]*A003154(n+1)` -/
def P9300859116869063490.Spec : Prop :=
  ∀ n, P9300859116869063490.a n = A193228 (n + 1)

theorem P9300859116869063490.correct : P9300859116869063490.Spec := by
  intro n
  simp only [A193228, Nat.add_sub_cancel, A193228.P9300859116869063490.f1, A193228.P9300859116869063490.a, A193228.P3355603474307553126.a, A003154, A003154.P12292724974289202885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193228

/-! ## A193228.P6812133338167469483

`(2*n+1)*∑[A298036(2*n)]`
-/

namespace A193228.P6812133338167469483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298036 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193228.P6812133338167469483

namespace A193228

/-- `(2*n+1)*∑[A298036(2*n)]` -/
def P6812133338167469483.Spec : Prop :=
  ∀ n, P6812133338167469483.a n = A193228 (n + 1)

end A193228

/-! ## A193228.P2092980575577182297

`(2*n+1)*Δ[Δ[C(n²-n, 2)]]`
-/

namespace A193228.P2092980575577182297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n ^ 2 : ℤ) - (n : ℤ)).toNat 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A193228.P2092980575577182297

namespace A193228

/-- `(2*n+1)*Δ[Δ[C(n²-n, 2)]]` -/
def P2092980575577182297.Spec : Prop :=
  ∀ n, P2092980575577182297.a n = A193228 (n + 1)

end A193228

/-! ## A193228.P184218463159060595

`A003154(n+1)*A060747(n+1)`
-/

namespace A193228.P184218463159060595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) * A060747 (n + 1)

end

end A193228.P184218463159060595

namespace A193228

/-- `A003154(n+1)*A060747(n+1)` -/
def P184218463159060595.Spec : Prop :=
  ∀ n, P184218463159060595.a n = A193228 (n + 1)

theorem P184218463159060595.correct : P184218463159060595.Spec := by
  intro n
  simp only [A193228, Nat.add_sub_cancel, A193228.P184218463159060595.a, A193228.P3355603474307553126.a, A003154, A003154.P12292724974289202885.a, A060747, A060747.P16920431360270313306.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193228

/-! ## A193228.P9146665480130404620

`A003154(n+1)*A141310(2*n)`
-/

namespace A193228.P9146665480130404620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) * A141310 (2 * n)

end

end A193228.P9146665480130404620

namespace A193228

/-- `A003154(n+1)*A141310(2*n)` -/
def P9146665480130404620.Spec : Prop :=
  ∀ n, P9146665480130404620.a n = A193228 (n + 1)

end A193228

/-! ## A193228.P8933852650657019797

`(2*n+1)*∑[A298028(2*n)]`
-/

namespace A193228.P8933852650657019797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193228.P8933852650657019797

namespace A193228

/-- `(2*n+1)*∑[A298028(2*n)]` -/
def P8933852650657019797.Spec : Prop :=
  ∀ n, P8933852650657019797.a n = A193228 (n + 1)

end A193228

/-! ## A193228.P16428789234857343985

`A003154(n+1)*A109613(2*n)`
-/

namespace A193228.P16428789234857343985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) * A109613 (2 * n)

end

end A193228.P16428789234857343985

namespace A193228

/-- `A003154(n+1)*A109613(2*n)` -/
def P16428789234857343985.Spec : Prop :=
  ∀ n, P16428789234857343985.a n = A193228 (n + 1)

end A193228

/-! ## A193228.P3845943860636473985

`A003154(n+1)*A392334(2*n)`
-/

namespace A193228.P3845943860636473985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) * A392334 (2 * n)

end

end A193228.P3845943860636473985

namespace A193228

/-- `A003154(n+1)*A392334(2*n)` -/
def P3845943860636473985.Spec : Prop :=
  ∀ n, P3845943860636473985.a n = A193228 (n + 1)

end A193228

/-! ## A193228.P11100089707513258029

`A004188(Δ[n²])`
-/

namespace A193228.P11100089707513258029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A193228.P11100089707513258029

namespace A193228

/-- `A004188(Δ[n²])` -/
def P11100089707513258029.Spec : Prop :=
  ∀ n, P11100089707513258029.a n = A193228 (n + 1)

end A193228

/-! ## A193228.P7246565514981155729

`∑[A010002(2*n)]`
-/

namespace A193228.P7246565514981155729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193228.P7246565514981155729

namespace A193228

/-- `∑[A010002(2*n)]` -/
def P7246565514981155729.Spec : Prop :=
  ∀ n, P7246565514981155729.a n = A193228 (n + 1)

end A193228

/-! ## A193228.P2316069794546557830

`Δ[n²]*A032528(2*n+1)`
-/

namespace A193228.P2316069794546557830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A032528 (2 * n + 1)

end

end A193228.P2316069794546557830

namespace A193228

/-- `Δ[n²]*A032528(2*n+1)` -/
def P2316069794546557830.Spec : Prop :=
  ∀ n, P2316069794546557830.a n = A193228 (n + 1)

end A193228

/-! ## A193228.P12795062541568569487

`Δ[n²]*A322462(2*n+1)`
-/

namespace A193228.P12795062541568569487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A322462 (2 * n + 1)

end

end A193228.P12795062541568569487

namespace A193228

/-- `Δ[n²]*A322462(2*n+1)` -/
def P12795062541568569487.Spec : Prop :=
  ∀ n, P12795062541568569487.a n = A193228 (n + 1)

end A193228

/-! ## A193228.P9104635942730347423

`A260810(2*n+1)/Δ[n²]`
-/

namespace A193228.P9104635942730347423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260810 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A193228.P9104635942730347423

namespace A193228

/-- `A260810(2*n+1)/Δ[n²]` -/
def P9104635942730347423.Spec : Prop :=
  ∀ n, P9104635942730347423.a n = (A193228 (n + 1) : ℚ)

end A193228

/-! ## A193228.P280568831051558949

`(2*n+1)*∑[A008458(2*n)]`
-/

namespace A193228.P280568831051558949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193228.P280568831051558949

namespace A193228

/-- `(2*n+1)*∑[A008458(2*n)]` -/
def P280568831051558949.Spec : Prop :=
  ∀ n, P280568831051558949.a n = A193228 (n + 1)

end A193228

/-! ## A193228.P3854469721250109185

`(2*n+1)*A375786(2*n+1)`
-/

namespace A193228.P3854469721250109185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A375786 (2 * n + 1)

end

end A193228.P3854469721250109185

namespace A193228

/-- `(2*n+1)*A375786(2*n+1)` -/
def P3854469721250109185.Spec : Prop :=
  ∀ n, P3854469721250109185.a n = A193228 (n + 1)

end A193228

/-!
# A193229: A double factorial triangle.

The programs for A193229, the canonical program `A193229.P10999994925577061172` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193229 has offset 0).

The definition of A193229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193229.P10999994925577061172

`A001497(n)*A233543(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A193229

/-- `A001497(n)*A233543(n)` -/
def P10999994925577061172.Spec : Prop :=
  ∀ n, P10999994925577061172.a n = A193229 n

theorem P10999994925577061172.correct : P10999994925577061172.Spec := by
  intro n
  simp only [A193229]

end A193229

/-! ## A193229.P18402610023689235337

`A102625(n)/A002260(n+1)`
-/

namespace A193229.P18402610023689235337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102625 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A193229.P18402610023689235337

namespace A193229

/-- `A102625(n)/A002260(n+1)` -/
def P18402610023689235337.Spec : Prop :=
  ∀ n, P18402610023689235337.a n = (A193229 n : ℚ)

end A193229

/-! ## A193229.P4427180918236370405

`A102625(n)/(A002262(n)+1)`
-/

namespace A193229.P4427180918236370405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102625 n : ℚ) / (A002262 n + 1 : ℚ)

end

end A193229.P4427180918236370405

namespace A193229

/-- `A102625(n)/(A002262(n)+1)` -/
def P4427180918236370405.Spec : Prop :=
  ∀ n, P4427180918236370405.a n = (A193229 n : ℚ)

end A193229

/-! ## A193229.P2680887688890257106

`A102625(n)/A004736(A038722(n+1))`
-/

namespace A193229.P2680887688890257106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102625 n : ℚ) / (A004736 (A038722 (n + 1)).toNat : ℚ)

end

end A193229.P2680887688890257106

namespace A193229

/-- `A102625(n)/A004736(A038722(n+1))` -/
def P2680887688890257106.Spec : Prop :=
  ∀ n, P2680887688890257106.a n = (A193229 n : ℚ)

end A193229

/-! ## A193229.P5423018631332353024

`A001497(n)/A007318(n)*A008279(n)`
-/

namespace A193229.P5423018631332353024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001497 n : ℚ) / (A007318 n : ℚ) * (A008279 n : ℚ)

end

end A193229.P5423018631332353024

namespace A193229

/-- `A001497(n)/A007318(n)*A008279(n)` -/
def P5423018631332353024.Spec : Prop :=
  ∀ n, P5423018631332353024.a n = (A193229 n : ℚ)

end A193229

/-! ## A193229.P1787850109496620408

`(2*row(n)-col(n))!/(2^(row(n)-col(n))*(row(n)-col(n))!)`
-/

namespace A193229.P1787850109496620408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((2 * SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ) / ((2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ))

end

end A193229.P1787850109496620408

namespace A193229

/-- `(2*row(n)-col(n))!/(2^(row(n)-col(n))*(row(n)-col(n))!)` -/
def P1787850109496620408.Spec : Prop :=
  ∀ n, P1787850109496620408.a n = (A193229 n : ℚ)

end A193229

/-! ## A193229.P8467245879385969221

`A102625(n)/A000005(A059268(n))`
-/

namespace A193229.P8467245879385969221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102625 n : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A193229.P8467245879385969221

namespace A193229

/-- `A102625(n)/A000005(A059268(n))` -/
def P8467245879385969221.Spec : Prop :=
  ∀ n, P8467245879385969221.a n = (A193229 n : ℚ)

end A193229

/-!
# A193230: Start with 1; if even, divide by 2; if odd, add the next three primes.

The programs for A193230, there is no canonical definition to state claims against.
-/

/-! ## A193230.P9431215244657341265

`A174221(a(n-1))` with `a(0)=1`
-/

namespace A193230.P9431215244657341265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A174221 (a (n - 1)).toNat

end

end A193230.P9431215244657341265

/-!
# A193231: Blue code for n: in binary coding of a polynomial over GF(2), substitute x+1 for x (see Comments for precise definition).

The programs for A193231, there is no canonical definition to state claims against.
-/

/-! ## A193231.P11158366475224360963

`xor(n, A280507(n))`
-/

namespace A193231.P11158366475224360963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A280507 n)

end

end A193231.P11158366475224360963

/-! ## A193231.P4795424202762353579

`A302793(a(n-1)+1)` with `a(0)=0`
-/

namespace A193231.P4795424202762353579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A302793 (a (n - 1) + 1).toNat

end

end A193231.P4795424202762353579

/-! ## A193231.P15259099354263880123

`A003188(A234613(n))`
-/

namespace A193231.P15259099354263880123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A234613 n).toNat

end

end A193231.P15259099354263880123

/-! ## A193231.P3033805798658568288

`A379471(A057889(n))`
-/

namespace A193231.P3033805798658568288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379471 (A057889 n).toNat

end

end A193231.P3033805798658568288

/-! ## A193231.P6182367232768297717

`A057889(A379472(n))`
-/

namespace A193231.P6182367232768297717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A379472 n).toNat

end

end A193231.P6182367232768297717

/-! ## A193231.P15366439014838464078

`xor(A234612(A004526(n)), A234612(n))`
-/

namespace A193231.P15366439014838464078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A234612 (A004526 n).toNat) (A234612 n)

end

end A193231.P15366439014838464078

/-! ## A193231.P6727592798473224740

`A234612(floor(xor(n, 2*n)/2))`
-/

namespace A193231.P6727592798473224740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 ⌊(Nat.xor n (2 * n) : ℚ) / 2⌋.toNat

end

end A193231.P6727592798473224740

/-! ## A193231.P7267497802623041460

`A234612(xor(n, n-∑[n%2]))`
-/

namespace A193231.P7267497802623041460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (Int.xor (n : ℤ) ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat

end

end A193231.P7267497802623041460

/-! ## A193231.P11190236099728311826

`A234612(xor(n, (or(1, n)-1)/2))`
-/

namespace A193231.P11190236099728311826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (Int.xor (n : ℤ) (SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2))).toNat

end

end A193231.P11190236099728311826

/-! ## A193231.P915804041886811378

`A234612(xor(n, ∑[char[2*(n+1)]]))`
-/

namespace A193231.P915804041886811378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (Nat.xor n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A193231.P915804041886811378

/-! ## A193231.P11353436453836323117

`A234612(ceil(xor(n-1, 2*n)/2))`
-/

namespace A193231.P11353436453836323117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉.toNat

end

end A193231.P11353436453836323117

/-! ## A193231.P16303434589623796166

`A234612(round(xor(n+1, 2*n+1)/2))`
-/

namespace A193231.P16303434589623796166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (SequenceMachineLib.roundAway ((Nat.xor (n + 1) (2 * n + 1) : ℚ) / 2)).toNat

end

end A193231.P16303434589623796166

/-! ## A193231.P11421195183476308193

`A234612(A003188(n))`
-/

namespace A193231.P11421195183476308193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A003188 n).toNat

end

end A193231.P11421195183476308193

/-! ## A193231.P2531850766881885827

`A234613(A006068(n))`
-/

namespace A193231.P2531850766881885827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A006068 n).toNat

end

end A193231.P2531850766881885827

/-! ## A193231.P10365657684385190155

`A006068(A234612(n))`
-/

namespace A193231.P10365657684385190155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A234612 n).toNat

end

end A193231.P10365657684385190155

/-! ## A193231.P5363871735810242017

`A234612(A286548(n)+n)`
-/

namespace A193231.P5363871735810242017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A286548 n + (n : ℤ)).toNat

end

end A193231.P5363871735810242017

/-! ## A193231.P2537497332752302025

`A234612(or(n, 2*n)+A008619(n)-(2*n+1))`
-/

namespace A193231.P2537497332752302025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 ((Nat.lor n (2 * n) : ℤ) + (A008619 n - (2 * n + 1 : ℤ))).toNat

end

end A193231.P2537497332752302025

/-! ## A193231.P9284244744639169133

`A234027(A234025(A234025(n)))`
-/

namespace A193231.P9284244744639169133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234027 (A234025 (A234025 n).toNat).toNat

end

end A193231.P9284244744639169133

/-! ## A193231.P12293109154213482999

`A234027(A234026(A234026(n)))`
-/

namespace A193231.P12293109154213482999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234027 (A234026 (A234026 n).toNat).toNat

end

end A193231.P12293109154213482999

/-! ## A193231.P913610747513598018

`A234024(A234025(A234024(A234026(A234024(n)))))`
-/

namespace A193231.P913610747513598018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234024 (A234025 (A234024 (A234026 (A234024 n).toNat).toNat).toNat).toNat

end

end A193231.P913610747513598018

/-!
# A193232: Bitwise XOR of first n triangular numbers.

The programs for A193232, the canonical program `A193232.P15831239089002491736` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193232 has offset 0).

The definition of A193232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193232.P15831239089002491736

`xor(a(n-1), ∑[n])` with `a(0)=0`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193232

/-- `xor(a(n-1), ∑[n])` -/
def P15831239089002491736.Spec : Prop :=
  ∀ n, (P15831239089002491736.a n : ℤ) = A193232 n

theorem P15831239089002491736.correct : P15831239089002491736.Spec := by
  intro n
  simp only [A193232]

end A193232

/-! ## A193232.P15134644775841658938

`xor(C(n+1, 2), a(n-1))` with `a(0)=0`
-/

namespace A193232.P15134644775841658938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (Nat.choose (n + 1) 2) (a (n - 1))

end

end A193232.P15134644775841658938

namespace A193232

/-- `xor(C(n+1, 2), a(n-1))` -/
def P15134644775841658938.Spec : Prop :=
  ∀ n, (P15134644775841658938.a n : ℤ) = A193232 n

end A193232

/-! ## A193232.P8719164108084817275

`xor((n²+n)/2, a(n-1))` with `a(0)=0`
-/

namespace A193232.P8719164108084817275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)) (a (n - 1))

end

end A193232.P8719164108084817275

namespace A193232

/-- `xor((n²+n)/2, a(n-1))` -/
def P8719164108084817275.Spec : Prop :=
  ∀ n, P8719164108084817275.a n = A193232 n

end A193232

/-! ## A193232.P10109459078844086835

`xor(n*(n+1), 2*a(n-1))/2` with `a(0)=0`
-/

namespace A193232.P10109459078844086835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Int.xor (n * (n + 1) : ℤ) (SequenceMachineLib.roundAway (2 * a (n - 1))) : ℚ) / 2

end

end A193232.P10109459078844086835

namespace A193232

/-- `xor(n*(n+1), 2*a(n-1))/2` -/
def P10109459078844086835.Spec : Prop :=
  ∀ n, P10109459078844086835.a n = (A193232 n : ℚ)

end A193232

/-! ## A193232.P7560528674520285595

`abs(xor(2*n-(n-C(n, 2)), a(n-1)))` with `a(0)=0`
-/

namespace A193232.P7560528674520285595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |Int.xor ((2 * n : ℤ) - ((n : ℤ) - (Nat.choose n 2 : ℤ))) (a (n - 1))|

end

end A193232.P7560528674520285595

namespace A193232

/-- `abs(xor(2*n-(n-C(n, 2)), a(n-1)))` -/
def P7560528674520285595.Spec : Prop :=
  ∀ n, P7560528674520285595.a n = A193232 n

end A193232

/-! ## A193232.P13221468894494322812

`abs(xor(a(n-1), A000217(n)))` with `a(0)=0`
-/

namespace A193232.P13221468894494322812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |Int.xor (a (n - 1)) (A000217 n)|

end

end A193232.P13221468894494322812

namespace A193232

/-- `abs(xor(a(n-1), A000217(n)))` -/
def P13221468894494322812.Spec : Prop :=
  ∀ n, P13221468894494322812.a n = A193232 n

end A193232

/-! ## A193232.P12696401051476855606

`abs(xor(a(n-1), A179865(n+1)))` with `a(0)=0`
-/

namespace A193232.P12696401051476855606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |Int.xor (a (n - 1)) (A179865 (n + 1))|

end

end A193232.P12696401051476855606

namespace A193232

/-- `abs(xor(a(n-1), A179865(n+1)))` -/
def P12696401051476855606.Spec : Prop :=
  ∀ n, P12696401051476855606.a n = A193232 n

end A193232

/-! ## A193232.P8727356805664615418

`xor(a(n-1), A000217(n))%A023855(n+1)` with `a(0)=0`
-/

namespace A193232.P8727356805664615418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (Int.xor (a (n - 1)) (A000217 n)) (A023855 (n + 1))

end

end A193232.P8727356805664615418

namespace A193232

/-- `xor(a(n-1), A000217(n))%A023855(n+1)` -/
def P8727356805664615418.Spec : Prop :=
  ∀ n, P8727356805664615418.a n = A193232 n

end A193232

/-! ## A193232.P2314106269328320452

`A000027(xor(a(n-1), A000217(n)))` with `a(0)=0`
-/

namespace A193232.P2314106269328320452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000027 (Int.xor (a (n - 1)) (A000217 n)).toNat

end

end A193232.P2314106269328320452

namespace A193232

/-- `A000027(xor(a(n-1), A000217(n)))` -/
def P2314106269328320452.Spec : Prop :=
  ∀ n, P2314106269328320452.a n = A193232 n

end A193232

/-!
# A193234: G.f.: A(x) = ( 1 + Sum_{n>=1} 2*(-2)^n * x^(n^2) )^(-1/2).

The programs for A193234, there is no canonical definition to state claims against.
-/

/-! ## A193234.P6237620677741831055

`A032742(A214201(n+4)/2)`
-/

namespace A193234.P6237620677741831055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((A214201 (n + 4) : ℚ) / 2)).toNat

end

end A193234.P6237620677741831055

/-! ## A193234.P4116181044014757806

`A060681(A214201(n+4)/2)`
-/

namespace A193234.P4116181044014757806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (SequenceMachineLib.roundAway ((A214201 (n + 4) : ℚ) / 2)).toNat

end

end A193234.P4116181044014757806

/-! ## A193234.P2010543016473193570

`A246277(A214201(n+4)/2)`
-/

namespace A193234.P2010543016473193570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (SequenceMachineLib.roundAway ((A214201 (n + 4) : ℚ) / 2)).toNat

end

end A193234.P2010543016473193570

/-! ## A193234.P12087724772684452605

`A348717(A214201(n+4)/2)/2`
-/

namespace A193234.P12087724772684452605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348717 (SequenceMachineLib.roundAway ((A214201 (n + 4) : ℚ) / 2)).toNat : ℚ) / 2

end

end A193234.P12087724772684452605

/-!
# A193235: G.f.: A(x) = ( Sum_{n>=0} (-4)^n * x^(n^2) )^(-1/2).

The programs for A193235, there is no canonical definition to state claims against.
-/

/-! ## A193235.P3702498589416873735

`A004526(A303307(n)+A000984(n))`
-/

namespace A193235.P3702498589416873735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A303307 n + A000984 n).toNat

end

end A193235.P3702498589416873735

/-! ## A193235.P17814897044733129327

`A123108(A303307(n)+A000984(n))`
-/

namespace A193235.P17814897044733129327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A303307 n + A000984 n).toNat

end

end A193235.P17814897044733129327

/-! ## A193235.P8400152279762488557

`A246277(A303307(n)+A000984(n))`
-/

namespace A193235.P8400152279762488557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A303307 n + A000984 n).toNat

end

end A193235.P8400152279762488557

/-!
# A193236: Expansion of g.f.: ( Sum_{n>=0} (-3)^n*(2*n+1)*x^(n*(n+1)/2) )^(-1/3).

The programs for A193236, there is no canonical definition to state claims against.
-/

/-! ## A193236.P8842764726477768279

`A055748(A165312(n))+n`
-/

namespace A193236.P8842764726477768279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055748 (A165312 n).toNat + (n : ℤ)

end

end A193236.P8842764726477768279

/-!
# A193237: Expansion of g.f.: ( Sum_{n>=0} (2*n+1)*3^n*(-x)^(n*(n+1)/2) )^(-1/3).

The programs for A193237, there is no canonical definition to state claims against.
-/

/-! ## A193237.P12209162023596547713

`A020915(7^n-5^n)+n`
-/

namespace A193237.P12209162023596547713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (7 ^ n - 5 ^ n) + (n : ℤ)

end

end A193237.P12209162023596547713

/-!
# A193238: Number of prime digits in decimal representation of n.

The programs for A193238, the canonical program `A193238.P11744037946728214642` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193238 has offset 0).

The definition of A193238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193238.P11744037946728214642

`a(floor(n/10))+a(n%10)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=0, a(5)=1, a(6)=0, a(7)=1, a(8)=0, a(9)=0`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193238

/-- `a(floor(n/10))+a(n%10)` -/
def P11744037946728214642.Spec : Prop :=
  ∀ n, (P11744037946728214642.a n : ℤ) = A193238 n

theorem P11744037946728214642.correct : P11744037946728214642.Spec := by
  intro n
  simp only [A193238]

end A193238

/-! ## A193238.P10800429857758919927

`∑{digits}[n, A075053(#)]`
-/

namespace A193238.P10800429857758919927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A075053 x).sum

end

end A193238.P10800429857758919927

namespace A193238

/-- `∑{digits}[n, A075053(#)]` -/
def P10800429857758919927.Spec : Prop :=
  ∀ n, P10800429857758919927.a n = A193238 n

end A193238

/-! ## A193238.P16328533156318245329

`∑{digits}[n, A090418(#)]`
-/

namespace A193238.P16328533156318245329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A090418 x).sum

end

end A193238.P16328533156318245329

namespace A193238

/-- `∑{digits}[n, A090418(#)]` -/
def P16328533156318245329.Spec : Prop :=
  ∀ n, P16328533156318245329.a n = A193238 n

end A193238

/-! ## A193238.P17249602523996159491

`∑{digits}[n, A117814(#)]`
-/

namespace A193238.P17249602523996159491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A117814 x).sum

end

end A193238.P17249602523996159491

namespace A193238

/-- `∑{digits}[n, A117814(#)]` -/
def P17249602523996159491.Spec : Prop :=
  ∀ n, P17249602523996159491.a n = A193238 n

end A193238

/-! ## A193238.P18014826509166540830

`∑{digits}[n, A184172(#)]`
-/

namespace A193238.P18014826509166540830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A184172 x).sum

end

end A193238.P18014826509166540830

namespace A193238

/-- `∑{digits}[n, A184172(#)]` -/
def P18014826509166540830.Spec : Prop :=
  ∀ n, P18014826509166540830.a n = A193238 n

end A193238

/-! ## A193238.P11290313063944958918

`∑{digits}[n, A209914(#)]`
-/

namespace A193238.P11290313063944958918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A209914 x).sum

end

end A193238.P11290313063944958918

namespace A193238

/-- `∑{digits}[n, A209914(#)]` -/
def P11290313063944958918.Spec : Prop :=
  ∀ n, P11290313063944958918.a n = A193238 n

end A193238

/-! ## A193238.P16877193946773483299

`∑{digits}[n, A257000(#)]`
-/

namespace A193238.P16877193946773483299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A257000 x).sum

end

end A193238.P16877193946773483299

namespace A193238

/-- `∑{digits}[n, A257000(#)]` -/
def P16877193946773483299.Spec : Prop :=
  ∀ n, P16877193946773483299.a n = A193238 n

end A193238

/-! ## A193238.P413919438489620913

`∑{digits}[n, A328515(#)]`
-/

namespace A193238.P413919438489620913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A328515 x).sum

end

end A193238.P413919438489620913

namespace A193238

/-- `∑{digits}[n, A328515(#)]` -/
def P413919438489620913.Spec : Prop :=
  ∀ n, P413919438489620913.a n = A193238 n

end A193238

/-! ## A193238.P658462759168621465

`∑{digits}[n, A328516(#)]`
-/

namespace A193238.P658462759168621465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A328516 x).sum

end

end A193238.P658462759168621465

namespace A193238

/-- `∑{digits}[n, A328516(#)]` -/
def P658462759168621465.Spec : Prop :=
  ∀ n, P658462759168621465.a n = A193238 n

end A193238

/-! ## A193238.P5777157191528498192

`∑{digits}[n, A328517(#)]`
-/

namespace A193238.P5777157191528498192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A328517 x).sum

end

end A193238.P5777157191528498192

namespace A193238

/-- `∑{digits}[n, A328517(#)]` -/
def P5777157191528498192.Spec : Prop :=
  ∀ n, P5777157191528498192.a n = A193238 n

end A193238

/-! ## A193238.P3368739953214194166

`∑{digits}[n, A339433(#)]`
-/

namespace A193238.P3368739953214194166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A339433 x).sum

end

end A193238.P3368739953214194166

namespace A193238

/-- `∑{digits}[n, A339433(#)]` -/
def P3368739953214194166.Spec : Prop :=
  ∀ n, P3368739953214194166.a n = A193238 n

end A193238

/-! ## A193238.P17790361609488365295

`∑{digits}[n, A374769(#)]`
-/

namespace A193238.P17790361609488365295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A374769 x).sum

end

end A193238.P17790361609488365295

namespace A193238

/-- `∑{digits}[n, A374769(#)]` -/
def P17790361609488365295.Spec : Prop :=
  ∀ n, P17790361609488365295.a n = A193238 n

end A193238

/-! ## A193238.P6949787959270471969

`∑{digits}[n, A397252(#)]`
-/

namespace A193238.P6949787959270471969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A397252 x).sum

end

end A193238.P6949787959270471969

namespace A193238

/-- `∑{digits}[n, A397252(#)]` -/
def P6949787959270471969.Spec : Prop :=
  ∀ n, P6949787959270471969.a n = A193238 n

end A193238

/-! ## A193238.P10325099849022998101

`∑{digits}[n, A302048(#²)]`
-/

namespace A193238.P10325099849022998101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A302048 (x ^ 2)).sum

end

end A193238.P10325099849022998101

namespace A193238

/-- `∑{digits}[n, A302048(#²)]` -/
def P10325099849022998101.Spec : Prop :=
  ∀ n, P10325099849022998101.a n = A193238 n

end A193238

/-! ## A193238.P3388522799066545590

`A055642(n)-A276729(n)`
-/

namespace A193238.P3388522799066545590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - A276729 n

end

end A193238.P3388522799066545590

namespace A193238

/-- `A055642(n)-A276729(n)` -/
def P3388522799066545590.Spec : Prop :=
  ∀ n, P3388522799066545590.a n = A193238 n

theorem P3388522799066545590.correct : P3388522799066545590.Spec := by
  intro n
  simp only [A193238, Nat.add_sub_cancel, A193238.P3388522799066545590.a, A193238.P11744037946728214642.a, A055642, A055642.P2478179801723442865.a, A276729, A276729.P16499400846689770455.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193238

/-! ## A193238.P5773212384881569773

`A102669(n)-A102673(A107130(n))`
-/

namespace A193238.P5773212384881569773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n - A102673 (A107130 n).toNat

end

end A193238.P5773212384881569773

namespace A193238

/-- `A102669(n)-A102673(A107130(n))` -/
def P5773212384881569773.Spec : Prop :=
  ∀ n, P5773212384881569773.a n = A193238 n

end A193238

/-! ## A193238.P18067393626127817504

`A257994(A113581(n))`
-/

namespace A193238.P18067393626127817504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A113581 n).toNat

end

end A193238.P18067393626127817504

namespace A193238

/-- `A257994(A113581(n))` -/
def P18067393626127817504.Spec : Prop :=
  ∀ n, P18067393626127817504.a n = A193238 n

end A193238

/-!
# A193242: a(n) = (C(n, floor(n/2)) + 2)^n for n >= 0.

The programs for A193242, the canonical program `A193242.P17033215725337538225` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193242 has offset 0).

The definition of A193242 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(C(n, floor(n/2))+2)^n` (program `A193242.P17033215725337538225`, by `A193242.P17033215725337538225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193242.P17033215725337538225

`(C(n, floor(n/2))+2)^n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193242

/-- `(C(n, floor(n/2))+2)^n` -/
def P17033215725337538225.Spec : Prop :=
  ∀ n, (P17033215725337538225.a n : ℤ) = A193242 n

theorem P17033215725337538225.correct : P17033215725337538225.Spec := by
  intro n
  simp only [A193242]

end A193242

/-! ## A193242.P6050082455267062372

`(A051920(n)+1)^n`
-/

namespace A193242.P6050082455267062372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051920 n + 1) ^ n

end

end A193242.P6050082455267062372

namespace A193242

/-- `(A051920(n)+1)^n` -/
def P6050082455267062372.Spec : Prop :=
  ∀ n, P6050082455267062372.a n = A193242 n

theorem P6050082455267062372.correct : P6050082455267062372.Spec := by
  intro n
  simp only [A193242, Nat.add_sub_cancel, A193242.P6050082455267062372.a, A193242.P17033215725337538225.a, A051920, A051920.P2707849764288868979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193242

/-! ## A193242.P13764201097540819158

`(A001405(n)+2)^n`
-/

namespace A193242.P13764201097540819158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001405 n + 2) ^ n

end

end A193242.P13764201097540819158

namespace A193242

/-- `(A001405(n)+2)^n` -/
def P13764201097540819158.Spec : Prop :=
  ∀ n, P13764201097540819158.a n = A193242 n

theorem P13764201097540819158.correct : P13764201097540819158.Spec := by
  intro n
  simp only [A193242, Nat.add_sub_cancel, A193242.P13764201097540819158.a, A193242.P17033215725337538225.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193242

/-! ## A193242.P13376929750322303071

`((∏[2*or(1, n)/(n+1)]-2)/2+3)^n`
-/

namespace A193242.P13376929750322303071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j - 2) / 2 + 3) ^ n

end

end A193242.P13376929750322303071

namespace A193242

/-- `((∏[2*or(1, n)/(n+1)]-2)/2+3)^n` -/
def P13376929750322303071.Spec : Prop :=
  ∀ n, P13376929750322303071.a n = (A193242 n : ℚ)

end A193242

/-! ## A193242.P10795098180964071545

`(A014495(n)+3)^n`
-/

namespace A193242.P10795098180964071545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014495 n + 3) ^ n

end

end A193242.P10795098180964071545

namespace A193242

/-- `(A014495(n)+3)^n` -/
def P10795098180964071545.Spec : Prop :=
  ∀ n, P10795098180964071545.a n = A193242 n

theorem P10795098180964071545.correct : P10795098180964071545.Spec := by
  intro n
  simp only [A193242, Nat.add_sub_cancel, A193242.P10795098180964071545.a, A193242.P17033215725337538225.a, A014495, A014495.P8648755420632744383.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193242

/-!
# A193243: Number of representations of n as sum of three positive biquadrates, i.e., fourth powers.

The programs for A193243, there is no canonical definition to state claims against.
-/

/-! ## A193243.P8553353752532294272

`char[A003337(n+1)]*A350071(A350071(2*n+5))`
-/

namespace A193243.P8553353752532294272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A350071 (A350071 (2 * n + 5)).toNat

end

end A193243.P8553353752532294272

/-! ## A193243.P18274784829888622996

`char[A003337(n+1)]*A350071(A000040(n+1))`
-/

namespace A193243.P18274784829888622996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A350071 (A000040 (n + 1)).toNat

end

end A193243.P18274784829888622996

/-! ## A193243.P3270264647699014728

`and(char[A003337(n+1)], A324180(2*(n+1)))`
-/

namespace A193243.P3270264647699014728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A324180 (2 * (n + 1)))

end

end A193243.P3270264647699014728

/-! ## A193243.P4258786372698985188

`(4%A002377(A233583(n+1)))%2`
-/

namespace A193243.P4258786372698985188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod 4 (A002377 (A233583 (n + 1)).toNat)) 2

end

end A193243.P4258786372698985188

/-! ## A193243.P7040049695634002267

`and(char[A003337(n+1)], A217195(n+1))`
-/

namespace A193243.P7040049695634002267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A217195 (n + 1))

end

end A193243.P7040049695634002267

/-! ## A193243.P8110676484722447874

`and(char[A344188(n+1)], A344186(n+1))`
-/

namespace A193243.P8110676484722447874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344188 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A344186 (n + 1))

end

end A193243.P8110676484722447874

/-! ## A193243.P3837985409388341069

`A325961(A030430(n+1))+char[A003337(n+1)]`
-/

namespace A193243.P3837985409388341069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325961 (A030430 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A193243.P3837985409388341069

/-! ## A193243.P5251155880330660464

`char[A003337(n+1)]*A350071(A092178(n+1))`
-/

namespace A193243.P5251155880330660464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A350071 (A092178 (n + 1)).toNat

end

end A193243.P5251155880330660464

/-! ## A193243.P13488516814380892701

`char[A003337(n+1)]*A272901(n+1)`
-/

namespace A193243.P13488516814380892701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A272901 (n + 1)

end

end A193243.P13488516814380892701

/-! ## A193243.P14415346545175162544

`char[A003337(n+1)]/A098666(n+1)`
-/

namespace A193243.P14415346545175162544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / (A098666 (n + 1) : ℚ)

end

end A193243.P14415346545175162544

/-! ## A193243.P1300791449390371187

`char[A003337(n+1)]*A350071(A092542(n+1))`
-/

namespace A193243.P1300791449390371187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A350071 (A092542 (n + 1)).toNat

end

end A193243.P1300791449390371187

/-!
# A193244: Numbers that are the sum of three biquadrates (fourth powers) in more than one way.

The programs for A193244, there is no canonical definition to state claims against.
-/

/-! ## A193244.P6915796269259961735

`A309762(A293215(2*(n+2))^A288069(n+1))`
-/

namespace A193244.P6915796269259961735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309762 (SequenceMachineLib.roundAway ((A293215 (2 * (n + 2)) : ℚ) ^ (A288069 (n + 1) : ℤ))).toNat

end

end A193244.P6915796269259961735

/-! ## A193244.P4928927542489277744

`A309762(A293215(2*(n+2))%A091464(n+1))`
-/

namespace A193244.P4928927542489277744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309762 (Int.tmod (A293215 (2 * (n + 2))) (A091464 (n + 1))).toNat

end

end A193244.P4928927542489277744

/-! ## A193244.P12165195474260603548

`A309762(lt[A276913(n+1), A003216(n+1)])`
-/

namespace A193244.P12165195474260603548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309762 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A193244.P12165195474260603548

/-!
# A193245: Ordered Stirling numbers S1(n,k) >= 0.

The programs for A193245, there is no canonical definition to state claims against.
-/

/-! ## A193245.P2654777155611459716

`record[A048994(A233459(n+1))]`
-/

namespace A193245.P2654777155611459716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A233459 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193245.P2654777155611459716

/-! ## A193245.P8368510236296765647

`record[A008275(n+1)%A078106(n+5)]`
-/

namespace A193245.P8368510236296765647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008275 (n + 1)) (A078106 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193245.P8368510236296765647

/-! ## A193245.P14267952963064261005

`record[A048994(n+1)%A321738(2*(n+1))]`
-/

namespace A193245.P14267952963064261005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048994 (n + 1)) (A321738 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193245.P14267952963064261005

/-! ## A193245.P15513799042851524234

`record[A048994(n+3)%A151747(2*(n+1))]`
-/

namespace A193245.P15513799042851524234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048994 (n + 3)) (A151747 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193245.P15513799042851524234

/-!
# A193246: Ordered unsigned Stirling numbers |S1(n,k)|.

The programs for A193246, there is no canonical definition to state claims against.
-/

/-! ## A193246.P9382938529246792435

`lt[A160468(n+1), A119678(A002326(n))]`
-/

namespace A193246.P9382938529246792435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119678 (A002326 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193246.P9382938529246792435

/-! ## A193246.P9971284468337011816

`record[A269380(n+1)]-A066099(A300913(n))`
-/

namespace A193246.P9971284468337011816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A066099 (A300913 n).toNat

end

end A193246.P9971284468337011816

/-!
# A193247: Inverse binomial transform of A000371.

The programs for A193247, there is no canonical definition to state claims against.
-/

/-! ## A193247.P4520063632843774539

`A000079(n+1)*A323816(n)`
-/

namespace A193247.P4520063632843774539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A323816 n

end

end A193247.P4520063632843774539

/-! ## A193247.P16370930412951257770

`2*A000079(n)*A323816(n)`
-/

namespace A193247.P16370930412951257770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n * A323816 n)

end

end A193247.P16370930412951257770

/-! ## A193247.P9547361820814916948

`A005843(2^n)*A323816(n)`
-/

namespace A193247.P9547361820814916948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 ^ n) * A323816 n

end

end A193247.P9547361820814916948

/-! ## A193247.P356752446533656415

`Δ[record[A130330(n)]]*A323816(n)`
-/

namespace A193247.P356752446533656415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A323816 n

end

end A193247.P356752446533656415

/-!
# A193248: Truncated dodecahedron, and truncated icosahedron with faces of centered polygons.

The programs for A193248, the canonical program `A193248.P3267529436430552946` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193248 has offset 1).

The definition of A193248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193248.P3267529436430552946

`30*(n+1)^3-45*(n+1)²+17*(n+1)-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193248

/-- `30*(n+1)^3-45*(n+1)²+17*(n+1)-1` -/
def P3267529436430552946.Spec : Prop :=
  ∀ n, P3267529436430552946.a n = A193248 (n + 1)

theorem P3267529436430552946.correct : P3267529436430552946.Spec := by
  intro n
  simp only [A193248, Nat.add_sub_cancel]

end A193248

/-! ## A193248.P8312180065580737329

`Δ[n²]*A389799(n+1)`
-/

namespace A193248.P8312180065580737329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A389799 (n + 1)

end

end A193248.P8312180065580737329

namespace A193248

/-- `Δ[n²]*A389799(n+1)` -/
def P8312180065580737329.Spec : Prop :=
  ∀ n, P8312180065580737329.a n = A193248 (n + 1)

theorem P8312180065580737329.correct : P8312180065580737329.Spec := by
  intro n
  simp only [A193248, Nat.add_sub_cancel, A193248.P8312180065580737329.f1, A193248.P8312180065580737329.a, A193248.P3267529436430552946.a, A389799, A389799.P12456178853448985860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193248

/-! ## A193248.P15929185777487223290

`A001505(n)%A006221(n)`
-/

namespace A193248.P15929185777487223290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001505 n) (A006221 n)

end

end A193248.P15929185777487223290

namespace A193248

/-- `A001505(n)%A006221(n)` -/
def P15929185777487223290.Spec : Prop :=
  ∀ n, P15929185777487223290.a n = A193248 (n + 1)

end A193248

/-! ## A193248.P11134062948813346564

`(2*n+1)*A195046(2*n+1)`
-/

namespace A193248.P11134062948813346564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A195046 (2 * n + 1)

end

end A193248.P11134062948813346564

namespace A193248

/-- `(2*n+1)*A195046(2*n+1)` -/
def P11134062948813346564.Spec : Prop :=
  ∀ n, P11134062948813346564.a n = A193248 (n + 1)

end A193248

/-! ## A193248.P8216723544062411099

`∑[A005901(3*n)]`
-/

namespace A193248.P8216723544062411099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193248.P8216723544062411099

namespace A193248

/-- `∑[A005901(3*n)]` -/
def P8216723544062411099.Spec : Prop :=
  ∀ n, P8216723544062411099.a n = A193248 (n + 1)

end A193248

/-! ## A193248.P943541414473378492

`Δ[A051869(n²)]`
-/

namespace A193248.P943541414473378492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051869 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193248.P943541414473378492

namespace A193248

/-- `Δ[A051869(n²)]` -/
def P943541414473378492.Spec : Prop :=
  ∀ n, P943541414473378492.a n = A193248 (n + 1)

end A193248

/-! ## A193248.P13559333766461647994

`Δ[A263226(n²)/2]`
-/

namespace A193248.P13559333766461647994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263226 (n ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193248.P13559333766461647994

namespace A193248

/-- `Δ[A263226(n²)/2]` -/
def P13559333766461647994.Spec : Prop :=
  ∀ n, P13559333766461647994.a n = (A193248 (n + 1) : ℚ)

theorem P13559333766461647994.correct : P13559333766461647994.Spec := by
  intro n
  simp only [A193248, Nat.add_sub_cancel, A193248.P13559333766461647994.f1, A193248.P13559333766461647994.a, A193248.P3267529436430552946.a, A263226, A263226.P10219769499938942172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193248

/-! ## A193248.P5973177386284064312

`(2*n+1)*A016921(A028895(n))`
-/

namespace A193248.P5973177386284064312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A016921 (A028895 n).toNat

end

end A193248.P5973177386284064312

namespace A193248

/-- `(2*n+1)*A016921(A028895(n))` -/
def P5973177386284064312.Spec : Prop :=
  ∀ n, P5973177386284064312.a n = A193248 (n + 1)

end A193248

/-! ## A193248.P14254599047579143619

`(2*n+1)*A007775(A000290(2*n+1))`
-/

namespace A193248.P14254599047579143619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A007775 (A000290 (2 * n + 1)).toNat

end

end A193248.P14254599047579143619

namespace A193248

/-- `(2*n+1)*A007775(A000290(2*n+1))` -/
def P14254599047579143619.Spec : Prop :=
  ∀ n, P14254599047579143619.a n = A193248 (n + 1)

end A193248

/-!
# A193249: Snub dodecahedron with faces of centered polygons.

The programs for A193249, the canonical program `A193249.P5171767169871233911` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193249 has offset 1).

The definition of A193249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193249.P5171767169871233911

`(2*(n+1)-1)*(25*(n+1)²-25*(n+1)+1)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193249

/-- `(2*(n+1)-1)*(25*(n+1)²-25*(n+1)+1)` -/
def P5171767169871233911.Spec : Prop :=
  ∀ n, P5171767169871233911.a n = A193249 (n + 1)

theorem P5171767169871233911.correct : P5171767169871233911.Spec := by
  intro n
  simp only [A193249, Nat.add_sub_cancel]

end A193249

/-! ## A193249.P14312010026527582679

`(n+1)*(10*n+1)*A016873(n)-1`
-/

namespace A193249.P14312010026527582679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (10 * n + 1) : ℤ) * A016873 n - 1

end

end A193249.P14312010026527582679

namespace A193249

/-- `(n+1)*(10*n+1)*A016873(n)-1` -/
def P14312010026527582679.Spec : Prop :=
  ∀ n, P14312010026527582679.a n = A193249 (n + 1)

theorem P14312010026527582679.correct : P14312010026527582679.Spec := by
  intro n
  simp only [A193249, Nat.add_sub_cancel, A193249.P14312010026527582679.a, A193249.P5171767169871233911.a, A016873, A016873.P366335242068170250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193249

/-! ## A193249.P16042152621013492545

`A193248(n+1)+A063497(n)`
-/

namespace A193249.P16042152621013492545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193248 (n + 1) + A063497 n

end

end A193249.P16042152621013492545

namespace A193249

/-- `A193248(n+1)+A063497(n)` -/
def P16042152621013492545.Spec : Prop :=
  ∀ n, P16042152621013492545.a n = A193249 (n + 1)

theorem P16042152621013492545.correct : P16042152621013492545.Spec := by
  intro n
  simp only [A193249, Nat.add_sub_cancel, A193249.P16042152621013492545.a, A193249.P5171767169871233911.a, A063497, A063497.P14189921204005272401.a, A193248, A193248.P3267529436430552946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193249

/-! ## A193249.P2865461633317083517

`A005904(n)+2*A063497(n)`
-/

namespace A193249.P2865461633317083517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 n + 2 * A063497 n

end

end A193249.P2865461633317083517

namespace A193249

/-- `A005904(n)+2*A063497(n)` -/
def P2865461633317083517.Spec : Prop :=
  ∀ n, P2865461633317083517.a n = A193249 (n + 1)

theorem P2865461633317083517.correct : P2865461633317083517.Spec := by
  intro n
  simp only [A193249, Nat.add_sub_cancel, A193249.P2865461633317083517.a, A193249.P5171767169871233911.a, A005904, A005904.P6150330656000877991.a, A063497, A063497.P14189921204005272401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193249

/-! ## A193249.P13789878781955588365

`A193251(n+1)+A063497(n)/2`
-/

namespace A193249.P13789878781955588365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193251 (n + 1) : ℚ) + (A063497 n : ℚ) / 2

end

end A193249.P13789878781955588365

namespace A193249

/-- `A193251(n+1)+A063497(n)/2` -/
def P13789878781955588365.Spec : Prop :=
  ∀ n, P13789878781955588365.a n = (A193249 (n + 1) : ℚ)

theorem P13789878781955588365.correct : P13789878781955588365.Spec := by
  intro n
  simp only [A193249, Nat.add_sub_cancel, A193249.P13789878781955588365.a, A193249.P5171767169871233911.a, A063497, A063497.P14189921204005272401.a, A193251, A193251.P9469378301288820821.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193249

/-! ## A193249.P8011653111380222197

`A193253(n+1)-A063497(n)/2`
-/

namespace A193249.P8011653111380222197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193253 (n + 1) : ℚ) - (A063497 n : ℚ) / 2

end

end A193249.P8011653111380222197

namespace A193249

/-- `A193253(n+1)-A063497(n)/2` -/
def P8011653111380222197.Spec : Prop :=
  ∀ n, P8011653111380222197.a n = (A193249 (n + 1) : ℚ)

theorem P8011653111380222197.correct : P8011653111380222197.Spec := by
  intro n
  simp only [A193249, Nat.add_sub_cancel, A193249.P8011653111380222197.a, A193249.P5171767169871233911.a, A063497, A063497.P14189921204005272401.a, A193253, A193253.P419280682585307305.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193249

/-! ## A193249.P17459824248147901779

`2*A193251(n+1)-A193248(n+1)`
-/

namespace A193249.P17459824248147901779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193251 (n + 1) - A193248 (n + 1)

end

end A193249.P17459824248147901779

namespace A193249

/-- `2*A193251(n+1)-A193248(n+1)` -/
def P17459824248147901779.Spec : Prop :=
  ∀ n, P17459824248147901779.a n = A193249 (n + 1)

theorem P17459824248147901779.correct : P17459824248147901779.Spec := by
  intro n
  simp only [A193249, Nat.add_sub_cancel, A193249.P17459824248147901779.a, A193249.P5171767169871233911.a, A193248, A193248.P3267529436430552946.a, A193251, A193251.P9469378301288820821.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193249

/-! ## A193249.P13657939780533513037

`(n+1)*A262221(2*n)+n`
-/

namespace A193249.P13657939780533513037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A262221 (2 * n) + (n : ℤ)

end

end A193249.P13657939780533513037

namespace A193249

/-- `(n+1)*A262221(2*n)+n` -/
def P13657939780533513037.Spec : Prop :=
  ∀ n, P13657939780533513037.a n = A193249 (n + 1)

theorem P13657939780533513037.correct : P13657939780533513037.Spec := by
  intro n
  simp only [A193249, Nat.add_sub_cancel, A193249.P13657939780533513037.a, A193249.P5171767169871233911.a, A262221, A262221.P9616285065150363173.a, A034856, A034856.P1676305901281367657.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193249

/-! ## A193249.P9953981424778560480

`∑[A010023(2*n)-A195321(n)]`
-/

namespace A193249.P9953981424778560480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010023 (2 * n) - A195321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193249.P9953981424778560480

namespace A193249

/-- `∑[A010023(2*n)-A195321(n)]` -/
def P9953981424778560480.Spec : Prop :=
  ∀ n, P9953981424778560480.a n = A193249 (n + 1)

end A193249

/-! ## A193249.P13799611192712631463

`record[A028242(n)*A262221(n)]+n`
-/

namespace A193249.P13799611192712631463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n * A262221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A193249.P13799611192712631463

namespace A193249

/-- `record[A028242(n)*A262221(n)]+n` -/
def P13799611192712631463.Spec : Prop :=
  ∀ n, P13799611192712631463.a n = A193249 (n + 1)

end A193249

/-! ## A193249.P14238999989311572535

`A000566(n+1)*A017293(2*n)-1`
-/

namespace A193249.P14238999989311572535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (n + 1) * A017293 (2 * n) - 1

end

end A193249.P14238999989311572535

namespace A193249

/-- `A000566(n+1)*A017293(2*n)-1` -/
def P14238999989311572535.Spec : Prop :=
  ∀ n, P14238999989311572535.a n = A193249 (n + 1)

end A193249

/-! ## A193249.P13644070189415346631

`A316725(2*n+1)²-A316725(2*n)²`
-/

namespace A193249.P13644070189415346631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316725 (2 * n + 1) ^ 2 - A316725 (2 * n) ^ 2

end

end A193249.P13644070189415346631

namespace A193249

/-- `A316725(2*n+1)²-A316725(2*n)²` -/
def P13644070189415346631.Spec : Prop :=
  ∀ n, P13644070189415346631.a n = A193249 (n + 1)

end A193249

/-! ## A193249.P327596337746537364

`A144129(2*n+1)+n*A027468(2*n+1)`
-/

namespace A193249.P327596337746537364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144129 (2 * n + 1) + (n : ℤ) * A027468 (2 * n + 1)

end

end A193249.P327596337746537364

namespace A193249

/-- `A144129(2*n+1)+n*A027468(2*n+1)` -/
def P327596337746537364.Spec : Prop :=
  ∀ n, P327596337746537364.a n = A193249 (n + 1)

end A193249

/-! ## A193249.P9489865357098726849

`∑[A005897(5*n)]`
-/

namespace A193249.P9489865357098726849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193249.P9489865357098726849

namespace A193249

/-- `∑[A005897(5*n)]` -/
def P9489865357098726849.Spec : Prop :=
  ∀ n, P9489865357098726849.a n = A193249 (n + 1)

end A193249

/-! ## A193249.P17899831679113581585

`∑[A397625(5*n)]`
-/

namespace A193249.P17899831679113581585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397625 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193249.P17899831679113581585

namespace A193249

/-- `∑[A397625(5*n)]` -/
def P17899831679113581585.Spec : Prop :=
  ∀ n, P17899831679113581585.a n = A193249 (n + 1)

end A193249

/-! ## A193249.P13900161510427493841

`n*A014106(A016885(n))+1`
-/

namespace A193249.P13900161510427493841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014106 (A016885 n).toNat + 1

end

end A193249.P13900161510427493841

namespace A193249

/-- `n*A014106(A016885(n))+1` -/
def P13900161510427493841.Spec : Prop :=
  ∀ n, P13900161510427493841.a n = A193249 (n + 1)

end A193249

/-! ## A193249.P9708617847776644750

`(n+1)*A034856(10*n+1)+n`
-/

namespace A193249.P9708617847776644750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034856 (10 * n + 1) + (n : ℤ)

end

end A193249.P9708617847776644750

namespace A193249

/-- `(n+1)*A034856(10*n+1)+n` -/
def P9708617847776644750.Spec : Prop :=
  ∀ n, P9708617847776644750.a n = A193249 (n + 1)

theorem P9708617847776644750.correct : P9708617847776644750.Spec := by
  intro n
  simp only [A193249, Nat.add_sub_cancel, A193249.P9708617847776644750.a, A193249.P5171767169871233911.a, A034856, A034856.P1676305901281367657.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193249

/-!
# A193250: Small rhombicuboctahedron with faces of centered polygons.

The programs for A193250, the canonical program `A193250.P11851534502741015744` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193250 has offset 1).

The definition of A193250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193250.P11851534502741015744

`16*(n+1)^3-24*(n+1)²+10*(n+1)-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193250

/-- `16*(n+1)^3-24*(n+1)²+10*(n+1)-1` -/
def P11851534502741015744.Spec : Prop :=
  ∀ n, P11851534502741015744.a n = A193250 (n + 1)

theorem P11851534502741015744.correct : P11851534502741015744.Spec := by
  intro n
  simp only [A193250, Nat.add_sub_cancel]

end A193250

/-! ## A193250.P10423291590824646545

`lcm(2*n+1, (n+1)*8*n+1)`
-/

namespace A193250.P10423291590824646545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) ((n + 1) * (8 * n) + 1)

end

end A193250.P10423291590824646545

namespace A193250

/-- `lcm(2*n+1, (n+1)*8*n+1)` -/
def P10423291590824646545.Spec : Prop :=
  ∀ n, (P10423291590824646545.a n : ℤ) = A193250 (n + 1)

end A193250

/-! ## A193250.P6565041729949494667

`C(2*(2*n+1)², 2)/(2*n+1)`
-/

namespace A193250.P6565041729949494667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (2 * n + 1) ^ 2) 2 : ℚ) / (2 * n + 1 : ℚ)

end

end A193250.P6565041729949494667

namespace A193250

/-- `C(2*(2*n+1)², 2)/(2*n+1)` -/
def P6565041729949494667.Spec : Prop :=
  ∀ n, P6565041729949494667.a n = (A193250 (n + 1) : ℚ)

theorem P6565041729949494667.correct : P6565041729949494667.Spec := by
  intro n
  simp only [A193250, Nat.add_sub_cancel, A193250.P6565041729949494667.a, A193250.P11851534502741015744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193250

/-! ## A193250.P6859982819658464664

`(2*n+1)*xor(3, 2*(2*n+1)²)`
-/

namespace A193250.P6859982819658464664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.xor 3 (2 * (2 * n + 1) ^ 2)

end

end A193250.P6859982819658464664

namespace A193250

/-- `(2*n+1)*xor(3, 2*(2*n+1)²)` -/
def P6859982819658464664.Spec : Prop :=
  ∀ n, (P6859982819658464664.a n : ℤ) = A193250 (n + 1)

end A193250

/-! ## A193250.P3840399792803531498

`(C(2*(2*n+1), 2)+2*n)*(2*n+1)`
-/

namespace A193250.P3840399792803531498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (2 * n + 1)) 2 + 2 * n) * (2 * n + 1)

end

end A193250.P3840399792803531498

namespace A193250

/-- `(C(2*(2*n+1), 2)+2*n)*(2*n+1)` -/
def P3840399792803531498.Spec : Prop :=
  ∀ n, (P3840399792803531498.a n : ℤ) = A193250 (n + 1)

theorem P3840399792803531498.correct : P3840399792803531498.Spec := by
  intro n
  simp only [A193250, Nat.add_sub_cancel, A193250.P3840399792803531498.a, A193250.P11851534502741015744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193250

/-! ## A193250.P5724425793681725001

`Δ[n²+A056220(n)²]`
-/

namespace A193250.P5724425793681725001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A056220 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193250.P5724425793681725001

namespace A193250

/-- `Δ[n²+A056220(n)²]` -/
def P5724425793681725001.Spec : Prop :=
  ∀ n, P5724425793681725001.a n = A193250 (n + 1)

theorem P5724425793681725001.correct : P5724425793681725001.Spec := by
  intro n
  simp only [A193250, Nat.add_sub_cancel, A193250.P5724425793681725001.f1, A193250.P5724425793681725001.a, A193250.P11851534502741015744.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193250

/-! ## A193250.P8336373302739820647

`Δ[n²]*A069129(n+1)`
-/

namespace A193250.P8336373302739820647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A069129 (n + 1)

end

end A193250.P8336373302739820647

namespace A193250

/-- `Δ[n²]*A069129(n+1)` -/
def P8336373302739820647.Spec : Prop :=
  ∀ n, P8336373302739820647.a n = A193250 (n + 1)

end A193250

/-! ## A193250.P5190511148117511755

`xor(1, n*(A004767(n)²+1))`
-/

namespace A193250.P5190511148117511755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * (A004767 n ^ 2 + 1))

end

end A193250.P5190511148117511755

namespace A193250

/-- `xor(1, n*(A004767(n)²+1))` -/
def P5190511148117511755.Spec : Prop :=
  ∀ n, P5190511148117511755.a n = A193250 (n + 1)

end A193250

/-! ## A193250.P17046623562437900965

`(2*n+1)*A275543(2*n+1)`
-/

namespace A193250.P17046623562437900965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A275543 (2 * n + 1)

end

end A193250.P17046623562437900965

namespace A193250

/-- `(2*n+1)*A275543(2*n+1)` -/
def P17046623562437900965.Spec : Prop :=
  ∀ n, P17046623562437900965.a n = A193250 (n + 1)

end A193250

/-! ## A193250.P3803330645850974562

`A275496(2*n+1)/(2*n+1)`
-/

namespace A193250.P3803330645850974562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275496 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A193250.P3803330645850974562

namespace A193250

/-- `A275496(2*n+1)/(2*n+1)` -/
def P3803330645850974562.Spec : Prop :=
  ∀ n, P3803330645850974562.a n = (A193250 (n + 1) : ℚ)

end A193250

/-! ## A193250.P3879080441433029830

`Δ[A144139(n)/4]`
-/

namespace A193250.P3879080441433029830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144139 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193250.P3879080441433029830

namespace A193250

/-- `Δ[A144139(n)/4]` -/
def P3879080441433029830.Spec : Prop :=
  ∀ n, P3879080441433029830.a n = (A193250 (n + 1) : ℚ)

theorem P3879080441433029830.correct : P3879080441433029830.Spec := by
  intro n
  simp only [A193250, Nat.add_sub_cancel, A193250.P3879080441433029830.f1, A193250.P3879080441433029830.a, A193250.P11851534502741015744.a, A144139, A144139.P1469581140721025765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193250

/-! ## A193250.P8828471161877962667

`Δ[n*A144129(n)]`
-/

namespace A193250.P8828471161877962667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A144129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193250.P8828471161877962667

namespace A193250

/-- `Δ[n*A144129(n)]` -/
def P8828471161877962667.Spec : Prop :=
  ∀ n, P8828471161877962667.a n = A193250 (n + 1)

theorem P8828471161877962667.correct : P8828471161877962667.Spec := by
  intro n
  simp only [A193250, Nat.add_sub_cancel, A193250.P8828471161877962667.f1, A193250.P8828471161877962667.a, A193250.P11851534502741015744.a, A144129, A144129.P2880121179738500010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193250

/-! ## A193250.P868055209301225956

`Δ[A173121(n)+n²]`
-/

namespace A193250.P868055209301225956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173121 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193250.P868055209301225956

namespace A193250

/-- `Δ[A173121(n)+n²]` -/
def P868055209301225956.Spec : Prop :=
  ∀ n, P868055209301225956.a n = A193250 (n + 1)

theorem P868055209301225956.correct : P868055209301225956.Spec := by
  intro n
  simp only [A193250, Nat.add_sub_cancel, A193250.P868055209301225956.f1, A193250.P868055209301225956.a, A193250.P11851534502741015744.a, A173121, A173121.P5048505696504643898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193250

/-! ## A193250.P13724997378406360730

`Δ[A239607(n)+n²]`
-/

namespace A193250.P13724997378406360730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239607 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193250.P13724997378406360730

namespace A193250

/-- `Δ[A239607(n)+n²]` -/
def P13724997378406360730.Spec : Prop :=
  ∀ n, P13724997378406360730.a n = A193250 (n + 1)

theorem P13724997378406360730.correct : P13724997378406360730.Spec := by
  intro n
  simp only [A193250, Nat.add_sub_cancel, A193250.P13724997378406360730.f1, A193250.P13724997378406360730.a, A193250.P11851534502741015744.a, A239607, A239607.P10195960424083872381.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193250

/-! ## A193250.P15889830258398791662

`Δ[n*sqrt(A239608(n))]`
-/

namespace A193250.P15889830258398791662
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A239608 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193250.P15889830258398791662

namespace A193250

/-- `Δ[n*sqrt(A239608(n))]` -/
def P15889830258398791662.Spec : Prop :=
  ∀ n, P15889830258398791662.a n = (A193250 (n + 1) : ℝ)

end A193250

/-! ## A193250.P16601919086280918141

`Δ[n*(A280089(n)-1)]`
-/

namespace A193250.P16601919086280918141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A280089 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193250.P16601919086280918141

namespace A193250

/-- `Δ[n*(A280089(n)-1)]` -/
def P16601919086280918141.Spec : Prop :=
  ∀ n, P16601919086280918141.a n = A193250 (n + 1)

theorem P16601919086280918141.correct : P16601919086280918141.Spec := by
  intro n
  simp only [A193250, Nat.add_sub_cancel, A193250.P16601919086280918141.f1, A193250.P16601919086280918141.a, A193250.P11851534502741015744.a, A280089, A280089.P6118679900806487457.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193250

/-! ## A193250.P30033558610075917

`Δ[n*(A272871(n)+n)]`
-/

namespace A193250.P30033558610075917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A272871 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193250.P30033558610075917

namespace A193250

/-- `Δ[n*(A272871(n)+n)]` -/
def P30033558610075917.Spec : Prop :=
  ∀ n, P30033558610075917.a n = A193250 (n + 1)

theorem P30033558610075917.correct : P30033558610075917.Spec := by
  intro n
  simp only [A193250, Nat.add_sub_cancel, A193250.P30033558610075917.f1, A193250.P30033558610075917.a, A193250.P11851534502741015744.a, A272871, A272871.P8216137526329413230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193250

/-! ## A193250.P1609017002290274855

`Δ[n²]*Δ[A063523(n)]`
-/

namespace A193250.P1609017002290274855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (f2 (n + 1) - f2 n)

end

end A193250.P1609017002290274855

namespace A193250

/-- `Δ[n²]*Δ[A063523(n)]` -/
def P1609017002290274855.Spec : Prop :=
  ∀ n, P1609017002290274855.a n = A193250 (n + 1)

end A193250

/-! ## A193250.P7022575091242925377

`∑[A005914(2*n)]`
-/

namespace A193250.P7022575091242925377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193250.P7022575091242925377

namespace A193250

/-- `∑[A005914(2*n)]` -/
def P7022575091242925377.Spec : Prop :=
  ∀ n, P7022575091242925377.a n = A193250 (n + 1)

end A193250

/-!
# A193251: Small rhombicosidodecahedron with faces of centered polygons.

The programs for A193251, the canonical program `A193251.P9469378301288820821` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193251 has offset 1).

The definition of A193251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193251.P9469378301288820821

`(2*(n+1)-1)*(20*n*(n+1)+1)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193251

/-- `(2*(n+1)-1)*(20*n*(n+1)+1)` -/
def P9469378301288820821.Spec : Prop :=
  ∀ n, P9469378301288820821.a n = A193251 (n + 1)

theorem P9469378301288820821.correct : P9469378301288820821.Spec := by
  intro n
  simp only [A193251, Nat.add_sub_cancel]

end A193251

/-! ## A193251.P6610927756492150853

`A160674(n)+A063497(n)`
-/

namespace A193251.P6610927756492150853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160674 n + A063497 n

end

end A193251.P6610927756492150853

namespace A193251

/-- `A160674(n)+A063497(n)` -/
def P6610927756492150853.Spec : Prop :=
  ∀ n, P6610927756492150853.a n = A193251 (n + 1)

theorem P6610927756492150853.correct : P6610927756492150853.Spec := by
  intro n
  simp only [A193251, Nat.add_sub_cancel, A193251.P6610927756492150853.a, A193251.P9469378301288820821.a, A063497, A063497.P14189921204005272401.a, A160674, A160674.P9701766189526379957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193251

/-! ## A193251.P9902914402835909059

`A193253(n+1)-A063497(n)`
-/

namespace A193251.P9902914402835909059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193253 (n + 1) - A063497 n

end

end A193251.P9902914402835909059

namespace A193251

/-- `A193253(n+1)-A063497(n)` -/
def P9902914402835909059.Spec : Prop :=
  ∀ n, P9902914402835909059.a n = A193251 (n + 1)

theorem P9902914402835909059.correct : P9902914402835909059.Spec := by
  intro n
  simp only [A193251, Nat.add_sub_cancel, A193251.P9902914402835909059.a, A193251.P9469378301288820821.a, A063497, A063497.P14189921204005272401.a, A193253, A193253.P419280682585307305.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193251

/-! ## A193251.P12335462613652340014

`lcm(A157142(n), A195317(n+1))`
-/

namespace A193251.P12335462613652340014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A157142 n) (A195317 (n + 1))

end

end A193251.P12335462613652340014

namespace A193251

/-- `lcm(A157142(n), A195317(n+1))` -/
def P12335462613652340014.Spec : Prop :=
  ∀ n, (P12335462613652340014.a n : ℤ) = A193251 (n + 1)

end A193251

/-! ## A193251.P11389921848917564600

`A193252(n+1)+A181773(n+1)`
-/

namespace A193251.P11389921848917564600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193252 (n + 1) + A181773 (n + 1)

end

end A193251.P11389921848917564600

namespace A193251

/-- `A193252(n+1)+A181773(n+1)` -/
def P11389921848917564600.Spec : Prop :=
  ∀ n, P11389921848917564600.a n = A193251 (n + 1)

theorem P11389921848917564600.correct : P11389921848917564600.Spec := by
  intro n
  simp only [A193251, Nat.add_sub_cancel, A193251.P11389921848917564600.a, A193251.P9469378301288820821.a, A181773, A181773.P17003731437091766161.a, A193252, A193252.P2015560325737173779.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193251

/-! ## A193251.P8765588244842366805

`record[A271532(n)]`
-/

namespace A193251.P8765588244842366805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193251.P8765588244842366805

namespace A193251

/-- `record[A271532(n)]` -/
def P8765588244842366805.Spec : Prop :=
  ∀ n, P8765588244842366805.a n = A193251 (n + 1)

end A193251

/-! ## A193251.P3783591845428383424

`A271532(2*n)`
-/

namespace A193251.P3783591845428383424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271532 (2 * n)

end

end A193251.P3783591845428383424

namespace A193251

/-- `A271532(2*n)` -/
def P3783591845428383424.Spec : Prop :=
  ∀ n, P3783591845428383424.a n = A193251 (n + 1)

end A193251

/-! ## A193251.P13438119984163761437

`∑[A005903(2*n)]`
-/

namespace A193251.P13438119984163761437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005903 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193251.P13438119984163761437

namespace A193251

/-- `∑[A005903(2*n)]` -/
def P13438119984163761437.Spec : Prop :=
  ∀ n, P13438119984163761437.a n = A193251 (n + 1)

end A193251

/-! ## A193251.P9533969308707581281

`∑[∑[A101095(2*n+1)]]`
-/

namespace A193251.P9533969308707581281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193251.P9533969308707581281

namespace A193251

/-- `∑[∑[A101095(2*n+1)]]` -/
def P9533969308707581281.Spec : Prop :=
  ∀ n, P9533969308707581281.a n = A193251 (n + 1)

end A193251

/-! ## A193251.P3343768142632168167

`∑[A299254(5*n)]`
-/

namespace A193251.P3343768142632168167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299254 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193251.P3343768142632168167

namespace A193251

/-- `∑[A299254(5*n)]` -/
def P3343768142632168167.Spec : Prop :=
  ∀ n, P3343768142632168167.a n = A193251 (n + 1)

end A193251

/-!
# A193252: Great rhombicuboctahedron with faces of centered polygons.

The programs for A193252, the canonical program `A193252.P2015560325737173779` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193252 has offset 1).

The definition of A193252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193252.P2015560325737173779

`24*(n+1)^3-36*(n+1)²+14*(n+1)-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193252

/-- `24*(n+1)^3-36*(n+1)²+14*(n+1)-1` -/
def P2015560325737173779.Spec : Prop :=
  ∀ n, P2015560325737173779.a n = A193252 (n + 1)

theorem P2015560325737173779.correct : P2015560325737173779.Spec := by
  intro n
  simp only [A193252, Nat.add_sub_cancel]

end A193252

/-! ## A193252.P10343404360623159828

`(2*(n+1)-1)*A069190(n+1)`
-/

namespace A193252.P10343404360623159828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1) * A069190 (n + 1)

end

end A193252.P10343404360623159828

namespace A193252

/-- `(2*(n+1)-1)*A069190(n+1)` -/
def P10343404360623159828.Spec : Prop :=
  ∀ n, P10343404360623159828.a n = A193252 (n + 1)

end A193252

/-! ## A193252.P8747979605077426034

`(2*n+1)*xor(2, 3*(2*n+1)²)`
-/

namespace A193252.P8747979605077426034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.xor 2 (3 * (2 * n + 1) ^ 2)

end

end A193252.P8747979605077426034

namespace A193252

/-- `(2*n+1)*xor(2, 3*(2*n+1)²)` -/
def P8747979605077426034.Spec : Prop :=
  ∀ n, (P8747979605077426034.a n : ℤ) = A193252 (n + 1)

end A193252

/-! ## A193252.P12752152947726271104

`or(1, (2*n+1)*(3*(2*n+1)²-2))`
-/

namespace A193252.P12752152947726271104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 * n + 1 : ℤ) * ((3 * (2 * n + 1) ^ 2 : ℤ) - 2))

end

end A193252.P12752152947726271104

namespace A193252

/-- `or(1, (2*n+1)*(3*(2*n+1)²-2))` -/
def P12752152947726271104.Spec : Prop :=
  ∀ n, P12752152947726271104.a n = A193252 (n + 1)

end A193252

/-! ## A193252.P1106783703143325129

`lcm(2*n+1, Δ[(2*n+1)*(2*n+1)*(n-1)])`
-/

namespace A193252.P1106783703143325129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((2 * n + 1 : ℤ) * ((n : ℤ) - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A193252.P1106783703143325129

namespace A193252

/-- `lcm(2*n+1, Δ[(2*n+1)*(2*n+1)*(n-1)])` -/
def P1106783703143325129.Spec : Prop :=
  ∀ n, (P1106783703143325129.a n : ℤ) = A193252 (n + 1)

end A193252

/-! ## A193252.P4669381595365940877

`Δ[n²]*Δ[A144129(n)]`
-/

namespace A193252.P4669381595365940877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (f2 (n + 1) - f2 n)

end

end A193252.P4669381595365940877

namespace A193252

/-- `Δ[n²]*Δ[A144129(n)]` -/
def P4669381595365940877.Spec : Prop :=
  ∀ n, P4669381595365940877.a n = A193252 (n + 1)

theorem P4669381595365940877.correct : P4669381595365940877.Spec := by
  intro n
  simp only [A193252, Nat.add_sub_cancel, A193252.P4669381595365940877.f1, A193252.P4669381595365940877.f2, A193252.P4669381595365940877.a, A193252.P2015560325737173779.a, A144129, A144129.P2880121179738500010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193252

/-! ## A193252.P4852868295723750782

`Δ[n²]*Δ[A280089(n)]`
-/

namespace A193252.P4852868295723750782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (f2 (n + 1) - f2 n)

end

end A193252.P4852868295723750782

namespace A193252

/-- `Δ[n²]*Δ[A280089(n)]` -/
def P4852868295723750782.Spec : Prop :=
  ∀ n, P4852868295723750782.a n = A193252 (n + 1)

theorem P4852868295723750782.correct : P4852868295723750782.Spec := by
  intro n
  simp only [A193252, Nat.add_sub_cancel, A193252.P4852868295723750782.f1, A193252.P4852868295723750782.f2, A193252.P4852868295723750782.a, A193252.P2015560325737173779.a, A280089, A280089.P6118679900806487457.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193252

/-! ## A193252.P978387517972327240

`∑[A010008(2*n)]`
-/

namespace A193252.P978387517972327240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010008 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193252.P978387517972327240

namespace A193252

/-- `∑[A010008(2*n)]` -/
def P978387517972327240.Spec : Prop :=
  ∀ n, P978387517972327240.a n = A193252 (n + 1)

end A193252

/-! ## A193252.P17418982882453700228

`Δ[n²]*A100536(2*n+1)`
-/

namespace A193252.P17418982882453700228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A100536 (2 * n + 1)

end

end A193252.P17418982882453700228

namespace A193252

/-- `Δ[n²]*A100536(2*n+1)` -/
def P17418982882453700228.Spec : Prop :=
  ∀ n, P17418982882453700228.a n = A193252 (n + 1)

theorem P17418982882453700228.correct : P17418982882453700228.Spec := by
  intro n
  simp only [A193252, Nat.add_sub_cancel, A193252.P17418982882453700228.f1, A193252.P17418982882453700228.a, A193252.P2015560325737173779.a, A100536, A100536.P12167223128897193754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193252

/-! ## A193252.P14105660306932404193

`Δ[n²]*A195143(2*n+1)`
-/

namespace A193252.P14105660306932404193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A195143 (2 * n + 1)

end

end A193252.P14105660306932404193

namespace A193252

/-- `Δ[n²]*A195143(2*n+1)` -/
def P14105660306932404193.Spec : Prop :=
  ∀ n, P14105660306932404193.a n = A193252 (n + 1)

end A193252

/-! ## A193252.P10479288549942433448

`(A067725(2*n)+1)*(2*n+1)`
-/

namespace A193252.P10479288549942433448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067725 (2 * n) + 1) * (2 * n + 1 : ℤ)

end

end A193252.P10479288549942433448

namespace A193252

/-- `(A067725(2*n)+1)*(2*n+1)` -/
def P10479288549942433448.Spec : Prop :=
  ∀ n, P10479288549942433448.a n = A193252 (n + 1)

theorem P10479288549942433448.correct : P10479288549942433448.Spec := by
  intro n
  simp only [A193252, Nat.add_sub_cancel, A193252.P10479288549942433448.a, A193252.P2015560325737173779.a, A067725, A067725.P18258344800788486266.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193252

/-! ## A193252.P5832986693142505464

`(A080663(2*n+1)-1)*(2*n+1)`
-/

namespace A193252.P5832986693142505464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080663 (2 * n + 1) - 1) * (2 * n + 1 : ℤ)

end

end A193252.P5832986693142505464

namespace A193252

/-- `(A080663(2*n+1)-1)*(2*n+1)` -/
def P5832986693142505464.Spec : Prop :=
  ∀ n, P5832986693142505464.a n = A193252 (n + 1)

theorem P5832986693142505464.correct : P5832986693142505464.Spec := by
  intro n
  simp only [A193252, Nat.add_sub_cancel, A193252.P5832986693142505464.a, A193252.P2015560325737173779.a, A080663, A080663.P16382865435079334463.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193252

/-! ## A193252.P7821906300068325875

`(A033428(2*n+1)-2)*(2*n+1)`
-/

namespace A193252.P7821906300068325875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033428 (2 * n + 1) - 2) * (2 * n + 1 : ℤ)

end

end A193252.P7821906300068325875

namespace A193252

/-- `(A033428(2*n+1)-2)*(2*n+1)` -/
def P7821906300068325875.Spec : Prop :=
  ∀ n, P7821906300068325875.a n = A193252 (n + 1)

theorem P7821906300068325875.correct : P7821906300068325875.Spec := by
  intro n
  simp only [A193252, Nat.add_sub_cancel, A193252.P7821906300068325875.a, A193252.P2015560325737173779.a, A033428, A033428.P10473664201403486648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193252

/-! ## A193252.P6839587370779688285

`∑[A244636(n)+A007899(2*n)]`
-/

namespace A193252.P6839587370779688285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244636 n + A007899 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193252.P6839587370779688285

namespace A193252

/-- `∑[A244636(n)+A007899(2*n)]` -/
def P6839587370779688285.Spec : Prop :=
  ∀ n, P6839587370779688285.a n = A193252 (n + 1)

end A193252

/-! ## A193252.P7037253576825000048

`(A316724(2*n+1)-n)*A004273(n+1)`
-/

namespace A193252.P7037253576825000048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A316724 (2 * n + 1) - (n : ℤ)) * A004273 (n + 1)

end

end A193252.P7037253576825000048

namespace A193252

/-- `(A316724(2*n+1)-n)*A004273(n+1)` -/
def P7037253576825000048.Spec : Prop :=
  ∀ n, P7037253576825000048.a n = A193252 (n + 1)

end A193252

/-! ## A193252.P14282232857080461613

`∑[A008527(3*n)]`
-/

namespace A193252.P14282232857080461613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193252.P14282232857080461613

namespace A193252

/-- `∑[A008527(3*n)]` -/
def P14282232857080461613.Spec : Prop :=
  ∀ n, P14282232857080461613.a n = A193252 (n + 1)

end A193252

/-! ## A193252.P15606504874513414784

`∑[A009945(4*n)]`
-/

namespace A193252.P15606504874513414784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009945 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193252.P15606504874513414784

namespace A193252

/-- `∑[A009945(4*n)]` -/
def P15606504874513414784.Spec : Prop :=
  ∀ n, P15606504874513414784.a n = A193252 (n + 1)

end A193252

/-! ## A193252.P10995771065547790893

`∑[A009946(4*n)]`
-/

namespace A193252.P10995771065547790893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193252.P10995771065547790893

namespace A193252

/-- `∑[A009946(4*n)]` -/
def P10995771065547790893.Spec : Prop :=
  ∀ n, P10995771065547790893.a n = A193252 (n + 1)

end A193252

/-! ## A193252.P287179023490439814

`∑[A005893(6*n)]`
-/

namespace A193252.P287179023490439814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193252.P287179023490439814

namespace A193252

/-- `∑[A005893(6*n)]` -/
def P287179023490439814.Spec : Prop :=
  ∀ n, P287179023490439814.a n = A193252 (n + 1)

end A193252

/-!
# A193253: Great rhombicosidodecahedron with faces of centered polygons.

The programs for A193253, the canonical program `A193253.P419280682585307305` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193253 has offset 1).

The definition of A193253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193253.P419280682585307305

`60*(n+1)^3-90*(n+1)²+32*(n+1)-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193253

/-- `60*(n+1)^3-90*(n+1)²+32*(n+1)-1` -/
def P419280682585307305.Spec : Prop :=
  ∀ n, P419280682585307305.a n = A193253 (n + 1)

theorem P419280682585307305.correct : P419280682585307305.Spec := by
  intro n
  simp only [A193253, Nat.add_sub_cancel]

end A193253

/-! ## A193253.P15555374720052660358

`∑[A010010(3*n)]`
-/

namespace A193253.P15555374720052660358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010010 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193253.P15555374720052660358

namespace A193253

/-- `∑[A010010(3*n)]` -/
def P15555374720052660358.Spec : Prop :=
  ∀ n, P15555374720052660358.a n = A193253 (n + 1)

end A193253

/-! ## A193253.P14591807492099333554

`Δ[A360436(n²)]`
-/

namespace A193253.P14591807492099333554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360436 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193253.P14591807492099333554

namespace A193253

/-- `Δ[A360436(n²)]` -/
def P14591807492099333554.Spec : Prop :=
  ∀ n, P14591807492099333554.a n = A193253 (n + 1)

theorem P14591807492099333554.correct : P14591807492099333554.Spec := by
  intro n
  simp only [A193253, Nat.add_sub_cancel, A193253.P14591807492099333554.f1, A193253.P14591807492099333554.a, A193253.P419280682585307305.a, A360436, A360436.P9205183385112475839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193253

/-!
# A193254: Sum of odd divisors of lambda(n).

The programs for A193254, there is no canonical definition to state claims against.
-/

/-! ## A193254.P15902005360623142299

`A000593(A002322(n+1))`
-/

namespace A193254.P15902005360623142299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A002322 (n + 1)).toNat

end

end A193254.P15902005360623142299

/-! ## A193254.P6711891535650447122

`A000593(A011773(n+1))`
-/

namespace A193254.P6711891535650447122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A011773 (n + 1)).toNat

end

end A193254.P6711891535650447122

/-! ## A193254.P13467188777383733814

`A000593((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A034380(n+1))`
-/

namespace A193254.P13467188777383733814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A193254.P13467188777383733814

/-! ## A193254.P180180243163300414

`A000593(A134198(n+1)-A051903(n+1))`
-/

namespace A193254.P180180243163300414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A134198 (n + 1) - A051903 (n + 1)).toNat

end

end A193254.P180180243163300414

/-! ## A193254.P17249394039672556737

`A000593(A104192(n+1)-A104195(n+1))`
-/

namespace A193254.P17249394039672556737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A104192 (n + 1) - A104195 (n + 1)).toNat

end

end A193254.P17249394039672556737

/-! ## A193254.P2663399804296328808

`A000593(A000010(n+1)/A034380(n+1))`
-/

namespace A193254.P2663399804296328808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A193254.P2663399804296328808

/-! ## A193254.P14274661823035462319

`A000593(A007434(n+1)/A220345(n+1))`
-/

namespace A193254.P14274661823035462319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((A007434 (n + 1) : ℚ) / (A220345 (n + 1) : ℚ))).toNat

end

end A193254.P14274661823035462319

/-! ## A193254.P1772392098075821623

`A000593((A109606(n+1)+1)/A034380(n+1))`
-/

namespace A193254.P1772392098075821623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((A109606 (n + 1) + 1 : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A193254.P1772392098075821623

/-! ## A193254.P3145420102067794036

`A000593((A039649(n+1)-1)/A034380(n+1))`
-/

namespace A193254.P3145420102067794036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((A039649 (n + 1) - 1 : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A193254.P3145420102067794036

/-! ## A193254.P12387987589121063742

`A000593((1-A051953(n+1)+n)/A034380(n+1))`
-/

namespace A193254.P12387987589121063742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A193254.P12387987589121063742

/-! ## A193254.P16309575807719894550

`A000593((n+1)/∏{p}[n+1, #]*A173557(n+1)/A034380(n+1))`
-/

namespace A193254.P16309575807719894550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A193254.P16309575807719894550

/-! ## A193254.P1015714413835356693

`A000593((A300725(n+1)+A300724(n+1))/A034380(n+1))`
-/

namespace A193254.P1015714413835356693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((A300725 (n + 1) + A300724 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A193254.P1015714413835356693

/-! ## A193254.P8212613735690253589

`A091570(2*A002322(n+1))`
-/

namespace A193254.P8212613735690253589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (2 * A002322 (n + 1)).toNat

end

end A193254.P8212613735690253589

/-! ## A193254.P9137111144595244299

`A091570(2*A011773(n+1))`
-/

namespace A193254.P9137111144595244299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (2 * A011773 (n + 1)).toNat

end

end A193254.P9137111144595244299

/-! ## A193254.P15947203314732856858

`A000203(A000265(A002322(2*(n+1))))`
-/

namespace A193254.P15947203314732856858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000265 (A002322 (2 * (n + 1))).toNat).toNat

end

end A193254.P15947203314732856858

/-!
# A193257: Floor((10^n)/(log(10^n) - 1)).

The programs for A193257, the canonical program `A193257.P2712193741920394094` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193257 has offset 1).

The definition of A193257 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(10^(n+1)/(log(10^(n+1))-1))` (program `A193257.P2712193741920394094`, by `A193257.P2712193741920394094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193257.P2712193741920394094

`floor(10^(n+1)/(log(10^(n+1))-1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193257

/-- `floor(10^(n+1)/(log(10^(n+1))-1))` -/
def P2712193741920394094.Spec : Prop :=
  ∀ n, P2712193741920394094.a n = A193257 (n + 1)

theorem P2712193741920394094.correct : P2712193741920394094.Spec := by
  intro n
  simp only [A193257, Nat.add_sub_cancel]

end A193257

/-! ## A193257.P9509175815668365626

`A226744(n+1)-A259044(A000108(n))`
-/

namespace A193257.P9509175815668365626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226744 (n + 1) - A259044 (A000108 n).toNat

end

end A193257.P9509175815668365626

namespace A193257

/-- `A226744(n+1)-A259044(A000108(n))` -/
def P9509175815668365626.Spec : Prop :=
  ∀ n, P9509175815668365626.a n = A193257 (n + 1)

end A193257

/-! ## A193257.P308502431644832605

`A103649(n+1)-A127244(A103637(n+1)²)`
-/

namespace A193257.P308502431644832605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103649 (n + 1) - A127244 (A103637 (n + 1) ^ 2).toNat

end

end A193257.P308502431644832605

namespace A193257

/-- `A103649(n+1)-A127244(A103637(n+1)²)` -/
def P308502431644832605.Spec : Prop :=
  ∀ n, P308502431644832605.a n = A193257 (n + 1)

end A193257

/-! ## A193257.P10231772501670870786

`A103649(n+1)+A010060(A380235(2*n+1))`
-/

namespace A193257.P10231772501670870786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103649 (n + 1) + A010060 (A380235 (2 * n + 1)).toNat

end

end A193257.P10231772501670870786

namespace A193257

/-- `A103649(n+1)+A010060(A380235(2*n+1))` -/
def P10231772501670870786.Spec : Prop :=
  ∀ n, P10231772501670870786.a n = A193257 (n + 1)

end A193257

/-!
# A193258: Sprimes: A sparse prime-like set of numbers that are constructed recursively to satisfy a Goldbach-type conjecture.

The programs for A193258, there is no canonical definition to state claims against.
-/

/-! ## A193258.P8835365524767701474

`2*eq[1, A254634(n)]+1`
-/

namespace A193258.P8835365524767701474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193258.P8835365524767701474

/-! ## A193258.P8698922995111310921

`A005408(lt[0, A254634(n)])`
-/

namespace A193258.P8698922995111310921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193258.P8698922995111310921

/-! ## A193258.P16031885055762664413

`A005408(eq[1, A254634(n)])`
-/

namespace A193258.P16031885055762664413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193258.P16031885055762664413

/-! ## A193258.P6295073191700508048

`A005408(record[n*A254634(n)])`
-/

namespace A193258.P6295073191700508048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A254634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A193258.P6295073191700508048

/-! ## A193258.P11658074576990832846

`A004273(eq[1, A254634(n)]+1)`
-/

namespace A193258.P11658074576990832846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A193258.P11658074576990832846

/-!
# A193259: G.f.: x = Sum_{n>=1} x^n * ((1+x)^n - x^n) / (1+x)^a(n).

The programs for A193259, the canonical program `A193259.P11107591307749392286` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193259 has offset 1).

The definition of A193259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193259.P17809440396674943789

`a(n-1)+A135560(n+1)` with `a(0)=1`
-/

namespace A193259.P17809440396674943789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A135560 (n + 1)

end

end A193259.P17809440396674943789

namespace A193259

/-- `a(n-1)+A135560(n+1)` -/
def P17809440396674943789.Spec : Prop :=
  ∀ n, P17809440396674943789.a n = A193259 (n + 1)

end A193259

/-! ## A193259.P11107591307749392286

`n+1+floor(log2(n+1))+A011371(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A193259

/-- `n+1+floor(log2(n+1))+A011371(n+1)` -/
def P11107591307749392286.Spec : Prop :=
  ∀ n, P11107591307749392286.a n = A193259 (n + 1)

theorem P11107591307749392286.correct : P11107591307749392286.Spec := by
  intro n
  simp only [A193259, Nat.add_sub_cancel]

end A193259

/-! ## A193259.P120244184710439558

`a(floor(sinh(log(n))))+2+n` with `a(0)=1`
-/

namespace A193259.P120244184710439558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊Real.sinh (Real.log (n : ℝ))⌋.toNat + 2 + n

end

end A193259.P120244184710439558

namespace A193259

/-- `a(floor(sinh(log(n))))+2+n` -/
def P120244184710439558.Spec : Prop :=
  ∀ n, (P120244184710439558.a n : ℤ) = A193259 (n + 1)

end A193259

/-! ## A193259.P7773240919402803542

`record[a(ceil(n/2))+n]` with `a(0)=1, a(1)=-1`
-/

namespace A193259.P7773240919402803542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  f1 ⌈(n : ℚ) / 2⌉.toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193259.P7773240919402803542

namespace A193259

/-- `record[a(ceil(n/2))+n]` -/
def P7773240919402803542.Spec : Prop :=
  ∀ n, P7773240919402803542.a n = A193259 (n + 1)

end A193259

/-! ## A193259.P4957302710678704846

`a(floor(n*tan(79)))+2+n` with `a(0)=1`
-/

namespace A193259.P4957302710678704846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℝ) * Real.tan (79 : ℝ)⌋.toNat + 2 + n

end

end A193259.P4957302710678704846

namespace A193259

/-- `a(floor(n*tan(79)))+2+n` -/
def P4957302710678704846.Spec : Prop :=
  ∀ n, (P4957302710678704846.a n : ℤ) = A193259 (n + 1)

end A193259

/-! ## A193259.P16791043353016350590

`a(floor((n-1)/2))+2+n` with `a(0)=1`
-/

namespace A193259.P16791043353016350590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + 2 + n

end

end A193259.P16791043353016350590

namespace A193259

/-- `a(floor((n-1)/2))+2+n` -/
def P16791043353016350590.Spec : Prop :=
  ∀ n, (P16791043353016350590.a n : ℤ) = A193259 (n + 1)

end A193259

/-! ## A193259.P16681549613860440957

`a(ceil(n/2)-1)+n+2` with `a(0)=1`
-/

namespace A193259.P16681549613860440957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (⌈(n : ℚ) / 2⌉ - 1).toNat + (n + 2)

end

end A193259.P16681549613860440957

namespace A193259

/-- `a(ceil(n/2)-1)+n+2` -/
def P16681549613860440957.Spec : Prop :=
  ∀ n, (P16681549613860440957.a n : ℤ) = A193259 (n + 1)

end A193259

/-! ## A193259.P12526678366404363286

`floor(a(∑[n%2]-1)+2+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A193259.P12526678366404363286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 2 + n

end

end A193259.P12526678366404363286

namespace A193259

/-- `floor(a(∑[n%2]-1)+2+n)` -/
def P12526678366404363286.Spec : Prop :=
  ∀ n, (P12526678366404363286.a n : ℤ) = A193259 (n + 1)

end A193259

/-! ## A193259.P11234890975934431020

`∑[val(n+1, 2)+1]+floor(log2(n+1))`
-/

namespace A193259.P11234890975934431020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.log 2 (n + 1)

end

end A193259.P11234890975934431020

namespace A193259

/-- `∑[val(n+1, 2)+1]+floor(log2(n+1))` -/
def P11234890975934431020.Spec : Prop :=
  ∀ n, (P11234890975934431020.a n : ℤ) = A193259 (n + 1)

end A193259

/-! ## A193259.P6121501479948100602

`A120511(n+2)-2`
-/

namespace A193259.P6121501479948100602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120511 (n + 2) - 2

end

end A193259.P6121501479948100602

namespace A193259

/-- `A120511(n+2)-2` -/
def P6121501479948100602.Spec : Prop :=
  ∀ n, P6121501479948100602.a n = A193259 (n + 1)

end A193259

/-!
# A193260: G.f.: x+x^2 = Sum_{n>=1} x^n * ((1+x+x^2)^n - x^(2*n)) / (1+x+x^2)^a(n).

The programs for A193260, the canonical program `A193260.P10241466370602997627` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193260 has offset 1).

The definition of A193260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193260.P10241466370602997627

`a(floor((n-2)/3))+2+n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193260

/-- `a(floor((n-2)/3))+2+n` -/
def P10241466370602997627.Spec : Prop :=
  ∀ n, (P10241466370602997627.a n : ℤ) = A193260 (n + 1)

theorem P10241466370602997627.correct : P10241466370602997627.Spec := by
  intro n
  simp only [A193260, Nat.add_sub_cancel]

end A193260

/-! ## A193260.P9935572113575726158

`A120515(n+2)-2`
-/

namespace A193260.P9935572113575726158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120515 (n + 2) - 2

end

end A193260.P9935572113575726158

namespace A193260

/-- `A120515(n+2)-2` -/
def P9935572113575726158.Spec : Prop :=
  ∀ n, P9935572113575726158.a n = A193260 (n + 1)

end A193260

/-! ## A193260.P18143673865774044182

`eq[1, A120526(n+2)]`
-/

namespace A193260.P18143673865774044182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120526 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193260.P18143673865774044182

namespace A193260

/-- `eq[1, A120526(n+2)]` -/
def P18143673865774044182.Spec : Prop :=
  ∀ n, (P18143673865774044182.a n : ℤ) = A193260 (n + 1)

end A193260

/-! ## A193260.P15713427431212724541

`∑[val((n+1)*A014963(n+1), 3)+1]`
-/

namespace A193260.P15713427431212724541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1 : ℤ) * A014963 (n + 1)).toNat 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193260.P15713427431212724541

namespace A193260

/-- `∑[val((n+1)*A014963(n+1), 3)+1]` -/
def P15713427431212724541.Spec : Prop :=
  ∀ n, (P15713427431212724541.a n : ℤ) = A193260 (n + 1)

end A193260

/-! ## A193260.P11446648450702312328

`A023444(A120515(n+2))`
-/

namespace A193260.P11446648450702312328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A120515 (n + 2)).toNat

end

end A193260.P11446648450702312328

namespace A193260

/-- `A023444(A120515(n+2))` -/
def P11446648450702312328.Spec : Prop :=
  ∀ n, P11446648450702312328.a n = A193260 (n + 1)

end A193260

/-! ## A193260.P12228843394639083490

`A062153(n+1)+A004128(n+1)`
-/

namespace A193260.P12228843394639083490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1) + A004128 (n + 1)

end

end A193260.P12228843394639083490

namespace A193260

/-- `A062153(n+1)+A004128(n+1)` -/
def P12228843394639083490.Spec : Prop :=
  ∀ n, P12228843394639083490.a n = A193260 (n + 1)

end A193260

/-! ## A193260.P10628818140284903512

`∑[val(A253560(A195817(n+1)), 3)+1]`
-/

namespace A193260.P10628818140284903512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A253560 (A195817 (n + 1)).toNat).toNat 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193260.P10628818140284903512

namespace A193260

/-- `∑[val(A253560(A195817(n+1)), 3)+1]` -/
def P10628818140284903512.Spec : Prop :=
  ∀ n, (P10628818140284903512.a n : ℤ) = A193260 (n + 1)

end A193260

/-! ## A193260.P3717710292367204803

`A062153(n+1)+∑[A051064(n+1)]`
-/

namespace A193260.P3717710292367204803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193260.P3717710292367204803

namespace A193260

/-- `A062153(n+1)+∑[A051064(n+1)]` -/
def P3717710292367204803.Spec : Prop :=
  ∀ n, P3717710292367204803.a n = A193260 (n + 1)

end A193260

/-! ## A193260.P222950654683252718

`A004128(n+1)+A080342(n+2)-1`
-/

namespace A193260.P222950654683252718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (n + 1) + (A080342 (n + 2) - 1)

end

end A193260.P222950654683252718

namespace A193260

/-- `A004128(n+1)+A080342(n+2)-1` -/
def P222950654683252718.Spec : Prop :=
  ∀ n, P222950654683252718.a n = A193260 (n + 1)

end A193260

/-! ## A193260.P11196140764342602091

`∑[Δ[A077267(n)]+2-A080846(n+1)]`
-/

namespace A193260.P11196140764342602091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (2 - A080846 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193260.P11196140764342602091

namespace A193260

/-- `∑[Δ[A077267(n)]+2-A080846(n+1)]` -/
def P11196140764342602091.Spec : Prop :=
  ∀ n, P11196140764342602091.a n = A193260 (n + 1)

end A193260

/-! ## A193260.P4473499105469154138

`A004128(n+1)+A061282(n+1)-A053735(n+1)`
-/

namespace A193260.P4473499105469154138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (n + 1) + (A061282 (n + 1) - A053735 (n + 1))

end

end A193260.P4473499105469154138

namespace A193260

/-- `A004128(n+1)+A061282(n+1)-A053735(n+1)` -/
def P4473499105469154138.Spec : Prop :=
  ∀ n, P4473499105469154138.a n = A193260 (n + 1)

end A193260

/-! ## A193260.P1241499575928720886

`∑[A051064((n+1)*A014963(n+1))]`
-/

namespace A193260.P1241499575928720886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 ((n + 1 : ℤ) * A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193260.P1241499575928720886

namespace A193260

/-- `∑[A051064((n+1)*A014963(n+1))]` -/
def P1241499575928720886.Spec : Prop :=
  ∀ n, P1241499575928720886.a n = A193260 (n + 1)

end A193260

/-!
# A193262: Number of representations of 2*p_n as sum of two primes p,q such that p*q-2 is prime (p_n is the n-th prime).

The programs for A193262, there is no canonical definition to state claims against.
-/

/-! ## A193262.P4162928465007264631

`A193238(A000325(n))+A010056(n)`
-/

namespace A193262.P4162928465007264631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A000325 n).toNat + A010056 n

end

end A193262.P4162928465007264631

/-! ## A193262.P15613047410440686255

`A033761(A162985(n)+A074324(n))`
-/

namespace A193262.P15613047410440686255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 (A162985 n + A074324 n).toNat

end

end A193262.P15613047410440686255

/-! ## A193262.P1307308097771724860

`A283156(A298600(n)+A011782(n+1))`
-/

namespace A193262.P1307308097771724860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283156 (A298600 n + A011782 (n + 1)).toNat

end

end A193262.P1307308097771724860

/-! ## A193262.P1915287534303430115

`A190436(lcm(A013921(n+1), A301692(n)))`
-/

namespace A193262.P1915287534303430115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190436 (Int.lcm (A013921 (n + 1)) (A301692 n))

end

end A193262.P1915287534303430115

/-!
# A193264: E.g.f. A(x) satisfies: A(A(A(x))) = 2*x*A'(x) - A(x), where A(x) = Sum_{n>=1} a(n)*x^n, with a(1)=1, a(2)=2.

The programs for A193264, there is no canonical definition to state claims against.
-/

/-! ## A193264.P17842007846353221553

`(n+1)*A193265(n)`
-/

namespace A193264.P17842007846353221553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A193265 n

end

end A193264.P17842007846353221553

/-! ## A193264.P12519924333797593989

`A193265(n)*A328399(2*n)`
-/

namespace A193264.P12519924333797593989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193265 n * A328399 (2 * n)

end

end A193264.P12519924333797593989

/-! ## A193264.P6057210231146747840

`A193265(n)-A001489(n)*A193265(n)`
-/

namespace A193264.P6057210231146747840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193265 n - A001489 n * A193265 n

end

end A193264.P6057210231146747840

/-! ## A193264.P4192705372105930908

`A193265(n)*A210992(∑[n])`
-/

namespace A193264.P4192705372105930908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193265 n * A210992 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193264.P4192705372105930908

/-! ## A193264.P13280347834456903627

`A193265(n)*A193278(A000124(n))`
-/

namespace A193264.P13280347834456903627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193265 n * A193278 (A000124 n).toNat

end

end A193264.P13280347834456903627

/-!
# A193265: E.g.f. A(x) = G(x)/x where G(x) satisfies: G(G(G(x))) = 2*x*G'(x) - G(x).

The programs for A193265, there is no canonical definition to state claims against.
-/

/-! ## A193265.P1071822668245984120

`A193264(n+1)/(n+1)`
-/

namespace A193265.P1071822668245984120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193264 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A193265.P1071822668245984120

/-!
# A193266: Numbers k such that k + 3 and k^2 + 9 are both prime.

The programs for A193266, there is no canonical definition to state claims against.
-/

/-! ## A193266.P17468611262415816584

`p?[A114272(n+1)+3]-3`
-/

namespace A193266.P17468611262415816584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114272 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3

end

end A193266.P17468611262415816584

/-! ## A193266.P4410829431846956426

`∩[A086801(n+1), A114272(n+1)]`
-/

namespace A193266.P4410829431846956426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193266.P4410829431846956426

/-! ## A193266.P3924656751564133806

`∩[A114272(n+1), A154115(n+1)]`
-/

namespace A193266.P3924656751564133806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193266.P3924656751564133806

/-! ## A193266.P3097428335385481720

`∩[A114272(n+1), A169606(n+1)]`
-/

namespace A193266.P3097428335385481720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193266.P3097428335385481720

/-! ## A193266.P16264676518779751089

`A326068(4*p?[A114272(n+1)+3])`
-/

namespace A193266.P16264676518779751089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114272 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326068 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A193266.P16264676518779751089

/-! ## A193266.P1003455331921033614

`A023444(xor(1, p?[A114272(n+1)+3]))`
-/

namespace A193266.P1003455331921033614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114272 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A193266.P1003455331921033614

/-! ## A193266.P1048569621513122438

`-(A131738(p?[A114272(n+1)+3])+4)`
-/

namespace A193266.P1048569621513122438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114272 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A131738 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 4)

end

end A193266.P1048569621513122438

/-! ## A193266.P10548247054572500499

`A023444(and(-2, p?[A114272(n+1)+3]))`
-/

namespace A193266.P10548247054572500499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114272 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (Int.land (-2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A193266.P10548247054572500499

/-! ## A193266.P17255868470378970197

`record[A014963(2*A002970(n+1)+3)]-3`
-/

namespace A193266.P17255868470378970197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A002970 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 3

end

end A193266.P17255868470378970197

/-!
# A193267: The number 1 alternating with the numbers A006953/A002445 (which are integers).

The programs for A193267, there is no canonical definition to state claims against.
-/

/-! ## A193267.P8461002863357037089

`A185633(n+1)/A027760(n+1)`
-/

namespace A193267.P8461002863357037089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185633 (n + 1) : ℚ) / (A027760 (n + 1) : ℚ)

end

end A193267.P8461002863357037089

/-! ## A193267.P6814918965103817195

`gcd(n+1, A075180(n))`
-/

namespace A193267.P6814918965103817195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A075180 n)

end

end A193267.P6814918965103817195

/-! ## A193267.P11685851639321274460

`(n+1)/A300330(n+1)`
-/

namespace A193267.P11685851639321274460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A300330 (n + 1) : ℚ)

end

end A193267.P11685851639321274460

/-! ## A193267.P12953140667059914783

`gcd(C(n+1, n), A079612(n+1))`
-/

namespace A193267.P12953140667059914783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (n + 1) n : ℤ) (A079612 (n + 1))

end

end A193267.P12953140667059914783

/-! ## A193267.P4298433733244585980

`A075180(n)/A027642(n+1)`
-/

namespace A193267.P4298433733244585980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 n : ℚ) / (A027642 (n + 1) : ℚ)

end

end A193267.P4298433733244585980

/-! ## A193267.P494419245043069572

`gcd(A079612(n+1), A092486(n))`
-/

namespace A193267.P494419245043069572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079612 (n + 1)) (A092486 n)

end

end A193267.P494419245043069572

/-! ## A193267.P17885800908824235634

`gcd(A110332(n), A185633(n+1))`
-/

namespace A193267.P17885800908824235634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110332 n) (A185633 (n + 1))

end

end A193267.P17885800908824235634

/-! ## A193267.P1426254409136078629

`A185633(n+1)/A141056(n+1)`
-/

namespace A193267.P1426254409136078629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185633 (n + 1) : ℚ) / (A141056 (n + 1) : ℚ)

end

end A193267.P1426254409136078629

/-! ## A193267.P10367907410303895368

`gcd(2*A185633(n+1), A271830(n))`
-/

namespace A193267.P10367907410303895368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A185633 (n + 1)) (A271830 n)

end

end A193267.P10367907410303895368

/-! ## A193267.P220580389420977525

`gcd((2*A185633(n+1))², A114285(n))`
-/

namespace A193267.P220580389420977525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * A185633 (n + 1)) ^ 2) (A114285 n)

end

end A193267.P220580389420977525

/-! ## A193267.P17406312762616054723

`gcd(A185633(A271830(n)), A271830(n))`
-/

namespace A193267.P17406312762616054723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185633 (A271830 n).toNat) (A271830 n)

end

end A193267.P17406312762616054723

/-!
# A193268: Number of n X n symmetric 0..2 arrays with no element equal to any horizontal or vertical neighbor and with new values 0..2 introduced in lower triangular row major order.

The programs for A193268, there is no canonical definition to state claims against.
-/

/-! ## A193268.P17679564265456158160

`A193308(n+1)+1`
-/

namespace A193268.P17679564265456158160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193308 (n + 1) + 1

end

end A193268.P17679564265456158160

/-! ## A193268.P9102855583816142974

`ceil(A145237(n+1)/2)`
-/

namespace A193268.P9102855583816142974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A145237 (n + 1) : ℚ) / 2⌉

end

end A193268.P9102855583816142974

/-! ## A193268.P7988894107146795095

`A145237(n+1)/A020639(A310503(n))`
-/

namespace A193268.P7988894107146795095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145237 (n + 1) : ℚ) / (A020639 (A310503 n).toNat : ℚ)

end

end A193268.P7988894107146795095

/-! ## A193268.P2937305409917026178

`A145237(n+1)/A020639(A311340(n))`
-/

namespace A193268.P2937305409917026178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145237 (n + 1) : ℚ) / (A020639 (A311340 n).toNat : ℚ)

end

end A193268.P2937305409917026178

/-! ## A193268.P9815584281782013503

`A145237(n+1)/A014963(A000079(n))`
-/

namespace A193268.P9815584281782013503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145237 (n + 1) : ℚ) / (A014963 (A000079 n).toNat : ℚ)

end

end A193268.P9815584281782013503

/-!
# A193269: Number of n X n symmetric 0..3 arrays with no element equal to any horizontal or vertical neighbor and with new values 0..3 introduced in lower triangular row major order.

The programs for A193269, there is no canonical definition to state claims against.
-/

/-! ## A193269.P6208361203288259720

`A193309(n+1)+A193268(n+1)`
-/

namespace A193269.P6208361203288259720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193309 (n + 1) + A193268 (n + 1)

end

end A193269.P6208361203288259720

/-! ## A193269.P11259190393304289585

`A193308(n+1)+A193309(n+1)+1`
-/

namespace A193269.P11259190393304289585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193308 (n + 1) + (A193309 (n + 1) + 1)

end

end A193269.P11259190393304289585

/-! ## A193269.P29528739280307237

`ceil(A193309(n+1)+A145237(n+1)/2)`
-/

namespace A193269.P29528739280307237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A193309 (n + 1) : ℚ) + (A145237 (n + 1) : ℚ) / 2⌉

end

end A193269.P29528739280307237

/-! ## A193269.P4482674067987404288

`A193309(n+1)+A145237(n+1)/A020639(A310503(n))`
-/

namespace A193269.P4482674067987404288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193309 (n + 1) : ℚ) + (A145237 (n + 1) : ℚ) / (A020639 (A310503 n).toNat : ℚ)

end

end A193269.P4482674067987404288

/-! ## A193269.P934857611213082408

`A193309(n+1)+A145237(n+1)/A014963(A000079(n))`
-/

namespace A193269.P934857611213082408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193309 (n + 1) : ℚ) + (A145237 (n + 1) : ℚ) / (A014963 (A000079 n).toNat : ℚ)

end

end A193269.P934857611213082408

/-!
# A193270: Number of n X n symmetric 0..4 arrays with no element equal to any horizontal or vertical neighbor and with new values 0..4 introduced in lower triangular row major order.

The programs for A193270, there is no canonical definition to state claims against.
-/

/-! ## A193270.P17199285382626112586

`A193310(n+1)+A193269(n+1)`
-/

namespace A193270.P17199285382626112586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193310 (n + 1) + A193269 (n + 1)

end

end A193270.P17199285382626112586

/-! ## A193270.P15725806666291259342

`A193268(n+1)+A193310(n+1)+A193309(n+1)`
-/

namespace A193270.P15725806666291259342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193268 (n + 1) + (A193310 (n + 1) + A193309 (n + 1))

end

end A193270.P15725806666291259342

/-! ## A193270.P2281519135627478080

`A193310(n+1)+A193308(n+1)+A193309(n+1)+1`
-/

namespace A193270.P2281519135627478080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193310 (n + 1) + (A193308 (n + 1) + (A193309 (n + 1) + 1))

end

end A193270.P2281519135627478080

/-! ## A193270.P17118592834611504447

`A193310(n+1)+ceil(A193309(n+1)+A145237(n+1)/2)`
-/

namespace A193270.P17118592834611504447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193310 (n + 1) + ⌈(A193309 (n + 1) : ℚ) + (A145237 (n + 1) : ℚ) / 2⌉

end

end A193270.P17118592834611504447

/-! ## A193270.P12425873386424304010

`A193271(n+1)-A193311(n+1)`
-/

namespace A193270.P12425873386424304010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193271 (n + 1) - A193311 (n + 1)

end

end A193270.P12425873386424304010

/-!
# A193271: Number of n X n symmetric 0..5 arrays with no element equal to any horizontal or vertical neighbor and with new values 0..5 introduced in lower triangular row major order.

The programs for A193271, there is no canonical definition to state claims against.
-/

/-! ## A193271.P8283747105488462847

`A193311(n+1)+A193270(n+1)`
-/

namespace A193271.P8283747105488462847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193311 (n + 1) + A193270 (n + 1)

end

end A193271.P8283747105488462847

/-! ## A193271.P16582761419507020315

`A193269(n+1)+A193311(n+1)+A193310(n+1)`
-/

namespace A193271.P16582761419507020315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193269 (n + 1) + (A193311 (n + 1) + A193310 (n + 1))

end

end A193271.P16582761419507020315

/-! ## A193271.P12902900554456204512

`A193311(n+1)+A193268(n+1)+A193310(n+1)+A193309(n+1)`
-/

namespace A193271.P12902900554456204512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193311 (n + 1) + (A193268 (n + 1) + (A193310 (n + 1) + A193309 (n + 1)))

end

end A193271.P12902900554456204512

/-! ## A193271.P1496196968639502515

`A193311(n+1)+A193310(n+1)+A193308(n+1)+A193309(n+1)+1`
-/

namespace A193271.P1496196968639502515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193311 (n + 1) + (A193310 (n + 1) + (A193308 (n + 1) + (A193309 (n + 1) + 1)))

end

end A193271.P1496196968639502515

/-! ## A193271.P11653222722458287099

`A193272(n+1)-A193312(n+1)`
-/

namespace A193271.P11653222722458287099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193272 (n + 1) - A193312 (n + 1)

end

end A193271.P11653222722458287099

/-!
# A193272: Number of n X n symmetric 0..6 arrays with no element equal to any horizontal or vertical neighbor and with new values 0..6 introduced in lower triangular row major order.

The programs for A193272, there is no canonical definition to state claims against.
-/

/-! ## A193272.P11126234439540548228

`A193312(n+1)+A193271(n+1)`
-/

namespace A193272.P11126234439540548228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193312 (n + 1) + A193271 (n + 1)

end

end A193272.P11126234439540548228

/-! ## A193272.P7034989729922239248

`A193273(n+1)-A193313(n+1)`
-/

namespace A193272.P7034989729922239248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193273 (n + 1) - A193313 (n + 1)

end

end A193272.P7034989729922239248

/-!
# A193273: Number of n X n symmetric 0..7 arrays with no element equal to any horizontal or vertical neighbor and with new values 0..7 introduced in lower triangular row major order.

The programs for A193273, there is no canonical definition to state claims against.
-/

/-! ## A193273.P8449529572641466413

`A193313(n+1)+A193272(n+1)`
-/

namespace A193273.P8449529572641466413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193313 (n + 1) + A193272 (n + 1)

end

end A193273.P8449529572641466413

/-!
# A193274: a(n) = binomial(Bell(n), 2) where B(n) = Bell numbers A000110(n).

The programs for A193274, there is no canonical definition to state claims against.
-/

/-! ## A193274.P9681317695658125597

`C(A000110(n), 2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A193274.P9681317695658125597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000110 n).toNat 2

end

end A193274.P9681317695658125597

/-! ## A193274.P18444589664793158935

`C(abs(A292935(n)), 2)`
-/

namespace A193274.P18444589664793158935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A292935 n|.toNat 2

end

end A193274.P18444589664793158935

/-! ## A193274.P12212320217450083165

`C(sqrt(A001247(n)), 2)`
-/

namespace A193274.P12212320217450083165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A001247 n : ℝ))).toNat 2

end

end A193274.P12212320217450083165

/-! ## A193274.P5859330413239031594

`C(A011971(∑[n]), 2)`
-/

namespace A193274.P5859330413239031594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A193274.P5859330413239031594

/-! ## A193274.P16282523116746088532

`C(A033306(∑[n]), 2)`
-/

namespace A193274.P16282523116746088532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033306 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A193274.P16282523116746088532

/-! ## A193274.P17902119619252400206

`C(A095149(∑[n]), 2)`
-/

namespace A193274.P17902119619252400206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A095149 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A193274.P17902119619252400206

/-! ## A193274.P5559591168023812243

`C(A327884(∑[n]), 2)`
-/

namespace A193274.P5559591168023812243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327884 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A193274.P5559591168023812243

/-! ## A193274.P4932090086689666017

`C(A346426(∑[n]), 2)`
-/

namespace A193274.P4932090086689666017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A346426 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A193274.P4932090086689666017

/-! ## A193274.P1753864597415592297

`C(A346500(∑[n]), 2)`
-/

namespace A193274.P1753864597415592297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A346500 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A193274.P1753864597415592297

/-! ## A193274.P17210844951197305852

`C(A188164(2*n), 2)`
-/

namespace A193274.P17210844951197305852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A188164 (2 * n)).toNat 2

end

end A193274.P17210844951197305852

/-!
# A193277: Triangle T(n,k), n>=1, 0<=k<=(3+3^n)/2, read by rows: row n gives the coefficients of the chromatic polynomial of the Sierpinski gasket graph S_n, highest powers first.

The programs for A193277, there is no canonical definition to state claims against.
-/

/-! ## A193277.P4556236662354028467

`A193283(A004917(n+1)+3)`
-/

namespace A193277.P4556236662354028467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193283 (A004917 (n + 1) + 3).toNat

end

end A193277.P4556236662354028467

/-! ## A193277.P7851938540458819538

`A193283(n+3)^(A140792(n)+1)`
-/

namespace A193277.P7851938540458819538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193283 (n + 3) : ℚ) ^ (A140792 n + 1 : ℤ)

end

end A193277.P7851938540458819538

/-! ## A193277.P3649912990550596632

`A193283(n+3)+A024155(A041997(n))`
-/

namespace A193277.P3649912990550596632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193283 (n + 3) + A024155 (A041997 n).toNat

end

end A193277.P3649912990550596632

/-! ## A193277.P6107520129907219010

`A193283(n+3)+A024155(A042037(n))`
-/

namespace A193277.P6107520129907219010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193283 (n + 3) + A024155 (A042037 n).toNat

end

end A193277.P6107520129907219010

/-! ## A193277.P14084716253022037172

`A193283(n+3)*A258280(A331227(n+3))`
-/

namespace A193277.P14084716253022037172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193283 (n + 3) * A258280 (A331227 (n + 3)).toNat

end

end A193277.P14084716253022037172

/-!
# A193278: Triangle T(n, k) where T(n, k) = T(k, n), T(n, n*k) = k, and T(n, n+k) = T(n, k) if k not divisible by n.

The programs for A193278, there is no canonical definition to state claims against.
-/

/-! ## A193278.P17969751769278045633

`A211161(A080036(n)%A212074(n+4))`
-/

namespace A193278.P17969751769278045633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211161 (Int.tmod (A080036 n) (A212074 (n + 4))).toNat

end

end A193278.P17969751769278045633

/-! ## A193278.P10592038679789899659

`A211161(A080036(n))%A212079(n+4)`
-/

namespace A193278.P10592038679789899659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211161 (A080036 n).toNat) (A212079 (n + 4))

end

end A193278.P10592038679789899659

/-! ## A193278.P9636087384343386941

`A326921(A194909(n+1))-A055641(A022112(n))`
-/

namespace A193278.P9636087384343386941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326921 (A194909 (n + 1)).toNat - A055641 (A022112 n).toNat

end

end A193278.P9636087384343386941

/-! ## A193278.P3934126717519410853

`A326921(A194910(n+1))-A055641(A022112(n))`
-/

namespace A193278.P3934126717519410853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326921 (A194910 (n + 1)).toNat - A055641 (A022112 n).toNat

end

end A193278.P3934126717519410853

/-! ## A193278.P9244724866096548059

`A345874(A362926(n+2))`
-/

namespace A193278.P9244724866096548059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345874 (A362926 (n + 2)).toNat

end

end A193278.P9244724866096548059

/-!
# A193279: Number of distinct sums of distinct proper divisors of n.

The programs for A193279, there is no canonical definition to state claims against.
-/

/-! ## A193279.P10173669714996290683

`A119347(n+1)-A378447(n+1)`
-/

namespace A193279.P10173669714996290683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119347 (n + 1) - A378447 (n + 1)

end

end A193279.P10173669714996290683

/-! ## A193279.P16654901643263021976

`A308605(n+1)-1-A378447(n+1)`
-/

namespace A193279.P16654901643263021976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308605 (n + 1) - 1 - A378447 (n + 1)

end

end A193279.P16654901643263021976

/-! ## A193279.P8484457613917066621

`A000203(n+1)-A378450(n+1)-A378447(n+1)`
-/

namespace A193279.P8484457613917066621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A378450 (n + 1) - A378447 (n + 1)

end

end A193279.P8484457613917066621

/-! ## A193279.P12656696785814427669

`A088580(n+1)-(A378450(n+1)+1)-A378447(n+1)`
-/

namespace A193279.P12656696785814427669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A378450 (n + 1) + 1) - A378447 (n + 1)

end

end A193279.P12656696785814427669

/-! ## A193279.P9962853155569746315

`A023443(A308605(n+1))-A378447(n+1)`
-/

namespace A193279.P9962853155569746315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A308605 (n + 1)).toNat - A378447 (n + 1)

end

end A193279.P9962853155569746315

/-! ## A193279.P2012909108875314579

`A289207(2/A000203(n+1)*A237290(n+1)+1)-A378447(n+1)`
-/

namespace A193279.P2012909108875314579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (SequenceMachineLib.roundAway (2 / (A000203 (n + 1) : ℚ) * (A237290 (n + 1) : ℚ) + 1)).toNat - A378447 (n + 1)

end

end A193279.P2012909108875314579

/-! ## A193279.P3162347350415094533

`Δ[eq[1, A119348(n+1)]]-A378447(n+1)`
-/

namespace A193279.P3162347350415094533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119348 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A378447 (n + 1)

end

end A193279.P3162347350415094533

/-!
# A193281: E.g.f.: A(x) = 1/[(1 - x^2)^(1 + 1/x)].

The programs for A193281, there is no canonical definition to state claims against.
-/

/-! ## A193281.P15187149827236921667

`A114790(n)+A106249(A198892(n))`
-/

namespace A193281.P15187149827236921667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114790 n + A106249 (A198892 n).toNat

end

end A193281.P15187149827236921667

/-! ## A193281.P18444783420109920830

`A230641(A000166(n+1))+A008683(n+1)`
-/

namespace A193281.P18444783420109920830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 (A000166 (n + 1)).toNat + A008683 (n + 1)

end

end A193281.P18444783420109920830

/-! ## A193281.P4507533530310733962

`A028310(A177260(n+1)+A026810(2*n))`
-/

namespace A193281.P4507533530310733962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A177260 (n + 1) + A026810 (2 * n)).toNat

end

end A193281.P4507533530310733962

/-!
# A193282: a(n) = (n!/floor(n/2)!)^2.

The programs for A193282, the canonical program `A193282.P14628151566617801030` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193282 has offset 0).

The definition of A193282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193282.P8444453513005993310

`(n!/floor(n/2)!)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A193282.P8444453513005993310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) / (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℚ)) ^ 2

end

end A193282.P8444453513005993310

namespace A193282

/-- `(n!/floor(n/2)!)²` -/
def P8444453513005993310.Spec : Prop :=
  ∀ n, P8444453513005993310.a n = (A193282 n : ℚ)

end A193282

/-! ## A193282.P14628151566617801030

`A081125(n)²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A193282

/-- `A081125(n)²` -/
def P14628151566617801030.Spec : Prop :=
  ∀ n, P14628151566617801030.a n = A193282 n

theorem P14628151566617801030.correct : P14628151566617801030.Spec := by
  intro n
  simp only [A193282]

end A193282

/-! ## A193282.P6303149567930625742

`A056040(n)*A000142(n)`
-/

namespace A193282.P6303149567930625742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n * A000142 n

end

end A193282.P6303149567930625742

namespace A193282

/-- `A056040(n)*A000142(n)` -/
def P6303149567930625742.Spec : Prop :=
  ∀ n, P6303149567930625742.a n = A193282 n

end A193282

/-! ## A193282.P16548531705361859669

`∏[n/ceil(a(n-1)/2)]²` with `a(0)=1`
-/

namespace A193282.P16548531705361859669
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / (⌈f1 (n - 1) / 2⌉ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A193282.P16548531705361859669

namespace A193282

/-- `∏[n/ceil(a(n-1)/2)]²` -/
def P16548531705361859669.Spec : Prop :=
  ∀ n, P16548531705361859669.a n = (A193282 n : ℚ)

end A193282

/-! ## A193282.P12667667257222416380

`(n!/∏[gcd(n, ceil(abs((1-n)/2)))])²`
-/

namespace A193282.P12667667257222416380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) ^ 2

end

end A193282.P12667667257222416380

namespace A193282

/-- `(n!/∏[gcd(n, ceil(abs((1-n)/2)))])²` -/
def P12667667257222416380.Spec : Prop :=
  ∀ n, P12667667257222416380.a n = (A193282 n : ℚ)

end A193282

/-! ## A193282.P16713731681726059398

`lcm(-∏[-n^(n%2)], 2^floor(n/2))²`
-/

namespace A193282.P16713731681726059398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ (n % 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-(∏ j ∈ Finset.range (n + 1), f1 j)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) ^ 2

end

end A193282.P16713731681726059398

namespace A193282

/-- `lcm(-∏[-n^(n%2)], 2^floor(n/2))²` -/
def P16713731681726059398.Spec : Prop :=
  ∀ n, (P16713731681726059398.a n : ℤ) = A193282 n

end A193282

/-! ## A193282.P3481286994869264192

`(n!/ceil(abs((1-n)/2))!^ceil(acot(n)))²`
-/

namespace A193282.P3481286994869264192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) / (Nat.factorial ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)) ^ 2

end

end A193282.P3481286994869264192

namespace A193282

/-- `(n!/ceil(abs((1-n)/2))!^ceil(acot(n)))²` -/
def P3481286994869264192.Spec : Prop :=
  ∀ n, P3481286994869264192.a n = (A193282 n : ℚ)

end A193282

/-! ## A193282.P7916748296791310369

`(n!/lcm((-1)^n, ceil(abs((1-n)/2))!))²`
-/

namespace A193282.P7916748296791310369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) / (Int.lcm ((-1) ^ n) (Nat.factorial ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat : ℤ) : ℚ)) ^ 2

end

end A193282.P7916748296791310369

namespace A193282

/-- `(n!/lcm((-1)^n, ceil(abs((1-n)/2))!))²` -/
def P7916748296791310369.Spec : Prop :=
  ∀ n, P7916748296791310369.a n = (A193282 n : ℚ)

end A193282

/-! ## A193282.P6294564647159121236

`(n!/ceil(abs((1-n)/2))!^ceil(sin(n)²))²`
-/

namespace A193282.P6294564647159121236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) / (Nat.factorial ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)) ^ 2

end

end A193282.P6294564647159121236

namespace A193282

/-- `(n!/ceil(abs((1-n)/2))!^ceil(sin(n)²))²` -/
def P6294564647159121236.Spec : Prop :=
  ∀ n, P6294564647159121236.a n = (A193282 n : ℚ)

end A193282

/-!
# A193284: Number of allowed patterns of length n of the map f(x) = 4x(1-x) on the unit interval. A permutation pi is an allowed pattern if there exists x in [0,1] such that the values x,f(x),f(f(x)),...,f^{n-1}(x) are different and in the same relative order as pi_1,pi_2,...,pi_n.

The programs for A193284, there is no canonical definition to state claims against.
-/

/-! ## A193284.P6359717589238592530

`n!-A193285(n)`
-/

namespace A193284.P6359717589238592530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A193285 n

end

end A193284.P6359717589238592530

/-! ## A193284.P441159561410738949

`A000142(n)-A193285(n)`
-/

namespace A193284.P441159561410738949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A193285 n

end

end A193284.P441159561410738949

/-! ## A193284.P12914402844168559199

`abs(A133942(n))-A193285(n)`
-/

namespace A193284.P12914402844168559199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n| - A193285 n

end

end A193284.P12914402844168559199

/-! ## A193284.P4225692947003900765

`A214080(n²)-A193285(n)`
-/

namespace A193284.P4225692947003900765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 (n ^ 2) - A193285 n

end

end A193284.P4225692947003900765

/-!
# A193285: Number of forbidden patterns of length n of the map f(x) = 4x(1-x) on the unit interval. A permutation pi is a forbidden pattern if there is no x in [0,1] such that the values x,f(x),f(f(x)),...,f^{n-1}(x) are in the same relative order as pi_1,pi_2,...,pi_n.

The programs for A193285, there is no canonical definition to state claims against.
-/

/-! ## A193285.P15306277142443886792

`n!-A193284(n)`
-/

namespace A193285.P15306277142443886792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A193284 n

end

end A193285.P15306277142443886792

/-! ## A193285.P13960972485019865008

`A000142(n)-A193284(n)`
-/

namespace A193285.P13960972485019865008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A193284 n

end

end A193285.P13960972485019865008

/-! ## A193285.P8369803920193236921

`Δ[A003422(n)]-A193284(n)`
-/

namespace A193285.P8369803920193236921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A193284 n

end

end A193285.P8369803920193236921

/-! ## A193285.P1097786944811311977

`∏[A007318(∑[n]+1)]-A193284(n)`
-/

namespace A193285.P1097786944811311977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A193284 n

end

end A193285.P1097786944811311977

/-!
# A193286: a(n) is the maximal number of a's that can be produced in a blank document with n "keystrokes".

The programs for A193286, there is no canonical definition to state claims against.
-/

/-! ## A193286.P12801109707971324146

`A246096(2*(n+1))/2`
-/

namespace A193286.P12801109707971324146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246096 (2 * (n + 1)) : ℚ) / 2

end

end A193286.P12801109707971324146

/-! ## A193286.P18092104823218834554

`ceil(A246096(A103517(n))/2)`
-/

namespace A193286.P18092104823218834554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A246096 (A103517 n).toNat : ℚ) / 2⌉

end

end A193286.P18092104823218834554

/-! ## A193286.P894675142869643684

`record[A246096(n+1)/A141056(n)]`
-/

namespace A193286.P894675142869643684
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246096 (n + 1) : ℚ) / (A141056 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193286.P894675142869643684

/-! ## A193286.P8669212876748727650

`record[A246096(n+1)/A141310(n)]`
-/

namespace A193286.P8669212876748727650
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246096 (n + 1) : ℚ) / (A141310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193286.P8669212876748727650

/-!
# A193287: E.g.f.: A(x) = 1/(1 - 2*x^2)^(1 + 1/(2*x)).

The programs for A193287, there is no canonical definition to state claims against.
-/

/-! ## A193287.P1103151199534490762

`A307447(A242527(2*(n+2))+floor(n/4)-floor((n-1)/4))`
-/

namespace A193287.P1103151199534490762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307447 (A242527 (2 * (n + 2)) + (⌊(n : ℚ) / 4⌋ - ⌊((n : ℤ) - 1 : ℚ) / 4⌋)).toNat

end

end A193287.P1103151199534490762

/-! ## A193287.P176924083631496111

`A133310(A184949(n)+A000629(n))`
-/

namespace A193287.P176924083631496111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A184949 n + A000629 n).toNat

end

end A193287.P176924083631496111

/-!
# A193288: E.g.f.: A(x) = 1/(1 - 3*x^2)^(1 + 1/(3*x)).

The programs for A193288, there is no canonical definition to state claims against.
-/

/-! ## A193288.P18147497903506133055

`A319877(A089387(n))`
-/

namespace A193288.P18147497903506133055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319877 (A089387 n).toNat

end

end A193288.P18147497903506133055

/-!
# A193289: E.g.f.: A(x) = 1/(1 - 6*x^2)^(1 + 1/(3*x)).

The programs for A193289, there is no canonical definition to state claims against.
-/

/-! ## A193289.P11879727599739591428

`A162565(a(n-1)+n)+3` with `a(0)=1, a(1)=2`
-/

namespace A193289.P11879727599739591428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A162565 (a (n - 1) + (n : ℤ)).toNat + 3

end

end A193289.P11879727599739591428

/-!
# A193290: E.g.f. satisfies: A(x) = 1/(1 - x*A(x))^(1 + 1/A(x)).

The programs for A193290, there is no canonical definition to state claims against.
-/

/-! ## A193290.P16561576625496332311

`A313478((n-1)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A193290.P16561576625496332311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A313478 (((n : ℤ) - 1) * a (n - 1)).toNat

end

end A193290.P16561576625496332311

/-!
# A193291: Number of even divisors of Fibonacci(n).

The programs for A193291, the canonical program `A193291.P12186419772948378566` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193291 has offset 1).

The definition of A193291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193291.P12186419772948378566

`A183063(A000045(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A193291

/-- `A183063(A000045(n+1))` -/
def P12186419772948378566.Spec : Prop :=
  ∀ n, P12186419772948378566.a n = A193291 (n + 1)

theorem P12186419772948378566.correct : P12186419772948378566.Spec := by
  intro n
  simp only [A193291, Nat.add_sub_cancel]

end A193291

/-! ## A193291.P12353895983004274316

`A063375(n+1)-A193292(n+1)`
-/

namespace A193291.P12353895983004274316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1) - A193292 (n + 1)

end

end A193291.P12353895983004274316

namespace A193291

/-- `A063375(n+1)-A193292(n+1)` -/
def P12353895983004274316.Spec : Prop :=
  ∀ n, P12353895983004274316.a n = A193291 (n + 1)

theorem P12353895983004274316.correct : P12353895983004274316.Spec := by
  intro n
  simp only [A193291, Nat.add_sub_cancel, A193291.P12353895983004274316.a, A193291.P12186419772948378566.a, A000045, A000045.P11838749114346432762.a, A063375, A063375.P4586247262053786237.a, A183063, A183063.P14549643650991336837.a, A193292, A193292.P537191371568892433.a, A000005, A000005.P16091521709108585461.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193291

/-! ## A193291.P14156702020969811938

`A193292(n+1)*A337923(n+1)`
-/

namespace A193291.P14156702020969811938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193292 (n + 1) * A337923 (n + 1)

end

end A193291.P14156702020969811938

namespace A193291

/-- `A193292(n+1)*A337923(n+1)` -/
def P14156702020969811938.Spec : Prop :=
  ∀ n, P14156702020969811938.a n = A193291 (n + 1)

end A193291

/-! ## A193291.P10164886917006043327

`log2(A060865(n+1))*A193292(n+1)`
-/

namespace A193291.P10164886917006043327
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060865 (n + 1) : ℝ) * (A193292 (n + 1) : ℝ)

end

end A193291.P10164886917006043327

namespace A193291

/-- `log2(A060865(n+1))*A193292(n+1)` -/
def P10164886917006043327.Spec : Prop :=
  ∀ n, P10164886917006043327.a n = (A193291 (n + 1) : ℝ)

end A193291

/-! ## A193291.P9615634325191053512

`A152774(n+1)+1-A193292(n+1)`
-/

namespace A193291.P9615634325191053512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152774 (n + 1) + (1 - A193292 (n + 1))

end

end A193291.P9615634325191053512

namespace A193291

/-- `A152774(n+1)+1-A193292(n+1)` -/
def P9615634325191053512.Spec : Prop :=
  ∀ n, P9615634325191053512.a n = A193291 (n + 1)

end A193291

/-! ## A193291.P14394626330954970616

`A063375(n+1)-A063375(n+1)/A000005(A060865(n+1))`
-/

namespace A193291.P14394626330954970616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063375 (n + 1) : ℚ) - (A063375 (n + 1) : ℚ) / (A000005 (A060865 (n + 1)).toNat : ℚ)

end

end A193291.P14394626330954970616

namespace A193291

/-- `A063375(n+1)-A063375(n+1)/A000005(A060865(n+1))` -/
def P14394626330954970616.Spec : Prop :=
  ∀ n, P14394626330954970616.a n = (A193291 (n + 1) : ℚ)

end A193291

/-! ## A193291.P12709625081858940379

`A063375(n+1)-A063375(n+1)/A348553(A337923(n+1))`
-/

namespace A193291.P12709625081858940379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063375 (n + 1) : ℚ) - (A063375 (n + 1) : ℚ) / (A348553 (A337923 (n + 1)).toNat : ℚ)

end

end A193291.P12709625081858940379

namespace A193291

/-- `A063375(n+1)-A063375(n+1)/A348553(A337923(n+1))` -/
def P12709625081858940379.Spec : Prop :=
  ∀ n, P12709625081858940379.a n = (A193291 (n + 1) : ℚ)

end A193291

/-! ## A193291.P14187534359949516479

`A007814(A081320(n+1))*A193292(n+1)`
-/

namespace A193291.P14187534359949516479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A081320 (n + 1)).toNat * A193292 (n + 1)

end

end A193291.P14187534359949516479

namespace A193291

/-- `A007814(A081320(n+1))*A193292(n+1)` -/
def P14187534359949516479.Spec : Prop :=
  ∀ n, P14187534359949516479.a n = A193291 (n + 1)

end A193291

/-! ## A193291.P12481865933859758714

`A152774(n+1)+A024000(A193292(n+1))`
-/

namespace A193291.P12481865933859758714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152774 (n + 1) + A024000 (A193292 (n + 1)).toNat

end

end A193291.P12481865933859758714

namespace A193291

/-- `A152774(n+1)+A024000(A193292(n+1))` -/
def P12481865933859758714.Spec : Prop :=
  ∀ n, P12481865933859758714.a n = A193291 (n + 1)

end A193291

/-!
# A193292: Number of odd divisors of Fibonacci(n).

The programs for A193292, the canonical program `A193292.P537191371568892433` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193292 has offset 1).

The definition of A193292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193292.P537191371568892433

`A001227(A000045(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A193292

/-- `A001227(A000045(n+1))` -/
def P537191371568892433.Spec : Prop :=
  ∀ n, P537191371568892433.a n = A193292 (n + 1)

theorem P537191371568892433.correct : P537191371568892433.Spec := by
  intro n
  simp only [A193292, Nat.add_sub_cancel]

end A193292

/-! ## A193292.P4988080889113578877

`A063375(n+1)-A193291(n+1)`
-/

namespace A193292.P4988080889113578877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1) - A193291 (n + 1)

end

end A193292.P4988080889113578877

namespace A193292

/-- `A063375(n+1)-A193291(n+1)` -/
def P4988080889113578877.Spec : Prop :=
  ∀ n, P4988080889113578877.a n = A193292 (n + 1)

theorem P4988080889113578877.correct : P4988080889113578877.Spec := by
  intro n
  simp only [A193292, Nat.add_sub_cancel, A193292.P4988080889113578877.a, A193292.P537191371568892433.a, A000045, A000045.P11838749114346432762.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A063375, A063375.P4586247262053786237.a, A193291, A193291.P12186419772948378566.a, A000005, A000005.P16091521709108585461.a, A183063, A183063.P14549643650991336837.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193292

/-! ## A193292.P17257277209934977499

`A063375(n+1)/(A337923(n+1)+1)`
-/

namespace A193292.P17257277209934977499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063375 (n + 1) : ℚ) / (A337923 (n + 1) + 1 : ℚ)

end

end A193292.P17257277209934977499

namespace A193292

/-- `A063375(n+1)/(A337923(n+1)+1)` -/
def P17257277209934977499.Spec : Prop :=
  ∀ n, P17257277209934977499.a n = (A193292 (n + 1) : ℚ)

end A193292

/-! ## A193292.P327371218304517861

`A063375(n+1)/A000005(A060865(n+1))`
-/

namespace A193292.P327371218304517861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063375 (n + 1) : ℚ) / (A000005 (A060865 (n + 1)).toNat : ℚ)

end

end A193292.P327371218304517861

namespace A193292

/-- `A063375(n+1)/A000005(A060865(n+1))` -/
def P327371218304517861.Spec : Prop :=
  ∀ n, P327371218304517861.a n = (A193292 (n + 1) : ℚ)

end A193292

/-! ## A193292.P15958260564390030296

`A063375(n+1)/A348553(A337923(n+1))`
-/

namespace A193292.P15958260564390030296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063375 (n + 1) : ℚ) / (A348553 (A337923 (n + 1)).toNat : ℚ)

end

end A193292.P15958260564390030296

namespace A193292

/-- `A063375(n+1)/A348553(A337923(n+1))` -/
def P15958260564390030296.Spec : Prop :=
  ∀ n, P15958260564390030296.a n = (A193292 (n + 1) : ℚ)

end A193292

/-! ## A193292.P12402576159626195802

`gcd(A063375(A000027(n+1)), A193291(n+1))`
-/

namespace A193292.P12402576159626195802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063375 (A000027 (n + 1)).toNat) (A193291 (n + 1))

end

end A193292.P12402576159626195802

namespace A193292

/-- `gcd(A063375(A000027(n+1)), A193291(n+1))` -/
def P12402576159626195802.Spec : Prop :=
  ∀ n, (P12402576159626195802.a n : ℤ) = A193292 (n + 1)

end A193292

/-! ## A193292.P2969650321758395382

`gcd(A193291(n+1)*A302126(n), A063375(n+1))`
-/

namespace A193292.P2969650321758395382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193291 (n + 1) * A302126 n) (A063375 (n + 1))

end

end A193292.P2969650321758395382

namespace A193292

/-- `gcd(A193291(n+1)*A302126(n), A063375(n+1))` -/
def P2969650321758395382.Spec : Prop :=
  ∀ n, (P2969650321758395382.a n : ℤ) = A193292 (n + 1)

end A193292

/-!
# A193293: Sum of odd divisors of Fibonacci(n).

The programs for A193293, the canonical program `A193293.P5334234728514628481` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193293 has offset 1).

The definition of A193293 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000593, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A193293.P5334234728514628481

`A000593(A000045(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A193293

/-- `A000593(A000045(n+1))` -/
def P5334234728514628481.Spec : Prop :=
  ∀ n, P5334234728514628481.a n = A193293 (n + 1)

theorem P5334234728514628481.correct : P5334234728514628481.Spec := by
  intro n
  simp only [A193293, Nat.add_sub_cancel]

end A193293

/-! ## A193293.P6831191979419605340

`A063477(n+1)-A193294(n+1)`
-/

namespace A193293.P6831191979419605340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063477 (n + 1) - A193294 (n + 1)

end

end A193293.P6831191979419605340

namespace A193293

/-- `A063477(n+1)-A193294(n+1)` -/
def P6831191979419605340.Spec : Prop :=
  ∀ n, P6831191979419605340.a n = A193293 (n + 1)

end A193293

/-! ## A193293.P782004752331220140

`A063477(n+1)/A000203(A060865(n+1))`
-/

namespace A193293.P782004752331220140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063477 (n + 1) : ℚ) / (A000203 (A060865 (n + 1)).toNat : ℚ)

end

end A193293.P782004752331220140

namespace A193293

/-- `A063477(n+1)/A000203(A060865(n+1))` -/
def P782004752331220140.Spec : Prop :=
  ∀ n, P782004752331220140.a n = (A193293 (n + 1) : ℚ)

end A193293

/-! ## A193293.P8930107962991860349

`gcd(A063477(A000027(n+1)), A193294(n+1))`
-/

namespace A193293.P8930107962991860349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063477 (A000027 (n + 1)).toNat) (A193294 (n + 1))

end

end A193293.P8930107962991860349

namespace A193293

/-- `gcd(A063477(A000027(n+1)), A193294(n+1))` -/
def P8930107962991860349.Spec : Prop :=
  ∀ n, (P8930107962991860349.a n : ℤ) = A193293 (n + 1)

end A193293

/-! ## A193293.P17470619980529088025

`A074283(n+1)+A000045(n+1)-A193294(n+1)`
-/

namespace A193293.P17470619980529088025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (n + 1) + A000045 (n + 1) - A193294 (n + 1)

end

end A193293.P17470619980529088025

namespace A193293

/-- `A074283(n+1)+A000045(n+1)-A193294(n+1)` -/
def P17470619980529088025.Spec : Prop :=
  ∀ n, P17470619980529088025.a n = A193293 (n + 1)

end A193293

/-! ## A193293.P10087242797986819164

`abs(A193294(n+1)-(A000071(n+1)+A074283(n+1)+1))`
-/

namespace A193293.P10087242797986819164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A193294 (n + 1) - (A000071 (n + 1) + (A074283 (n + 1) + 1))|

end

end A193293.P10087242797986819164

namespace A193293

/-- `abs(A193294(n+1)-(A000071(n+1)+A074283(n+1)+1))` -/
def P10087242797986819164.Spec : Prop :=
  ∀ n, P10087242797986819164.a n = A193293 (n + 1)

end A193293

/-!
# A193294: Sum of even divisors of Fibonacci(n).

The programs for A193294, the canonical program `A193294.P17160305021971217046` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193294 has offset 1).

The definition of A193294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193294.P17160305021971217046

`A063477(n+1)-A193293(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A193294

/-- `A063477(n+1)-A193293(n+1)` -/
def P17160305021971217046.Spec : Prop :=
  ∀ n, P17160305021971217046.a n = A193294 (n + 1)

theorem P17160305021971217046.correct : P17160305021971217046.Spec := by
  intro n
  simp only [A193294, Nat.add_sub_cancel]

end A193294

/-! ## A193294.P12538748817798370122

`A146076(A060865(n+1))*A193293(n+1)`
-/

namespace A193294.P12538748817798370122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A060865 (n + 1)).toNat * A193293 (n + 1)

end

end A193294.P12538748817798370122

namespace A193294

/-- `A146076(A060865(n+1))*A193293(n+1)` -/
def P12538748817798370122.Spec : Prop :=
  ∀ n, P12538748817798370122.a n = A193294 (n + 1)

end A193294

/-! ## A193294.P3510647924717662047

`A074283(n+1)+∑[A212804(n)]-A193293(n+1)`
-/

namespace A193294.P3510647924717662047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A193293 (n + 1))

end

end A193294.P3510647924717662047

namespace A193294

/-- `A074283(n+1)+∑[A212804(n)]-A193293(n+1)` -/
def P3510647924717662047.Spec : Prop :=
  ∀ n, P3510647924717662047.a n = A193294 (n + 1)

end A193294

/-! ## A193294.P1962901850339485178

`A074283(n+1)+A000045(n+1)-A193293(n+1)`
-/

namespace A193294.P1962901850339485178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (n + 1) + A000045 (n + 1) - A193293 (n + 1)

end

end A193294.P1962901850339485178

namespace A193294

/-- `A074283(n+1)+A000045(n+1)-A193293(n+1)` -/
def P1962901850339485178.Spec : Prop :=
  ∀ n, P1962901850339485178.a n = A193294 (n + 1)

end A193294

/-! ## A193294.P5156012590438205898

`A000071(n+1)+A074283(n+1)+1-A193293(n+1)`
-/

namespace A193294.P5156012590438205898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A074283 (n + 1) + 1) - A193293 (n + 1)

end

end A193294.P5156012590438205898

namespace A193294

/-- `A000071(n+1)+A074283(n+1)+1-A193293(n+1)` -/
def P5156012590438205898.Spec : Prop :=
  ∀ n, P5156012590438205898.a n = A193294 (n + 1)

end A193294

/-! ## A193294.P6301411819076316121

`A063477(n+1)-A063477(n+1)/A000203(A060865(n+1))`
-/

namespace A193294.P6301411819076316121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063477 (n + 1) : ℚ) - (A063477 (n + 1) : ℚ) / (A000203 (A060865 (n + 1)).toNat : ℚ)

end

end A193294.P6301411819076316121

namespace A193294

/-- `A063477(n+1)-A063477(n+1)/A000203(A060865(n+1))` -/
def P6301411819076316121.Spec : Prop :=
  ∀ n, P6301411819076316121.a n = (A193294 (n + 1) : ℚ)

end A193294

/-! ## A193294.P4275359714118478066

`A000045(n+1)+A152990(n+1)+A152774(n+1)-A193293(n+1)`
-/

namespace A193294.P4275359714118478066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A152990 (n + 1) + A152774 (n + 1)) - A193293 (n + 1)

end

end A193294.P4275359714118478066

namespace A193294

/-- `A000045(n+1)+A152990(n+1)+A152774(n+1)-A193293(n+1)` -/
def P4275359714118478066.Spec : Prop :=
  ∀ n, P4275359714118478066.a n = A193294 (n + 1)

end A193294

/-! ## A193294.P1236078360203236962

`A074283(n+1)+A062114(n+1)-A074331(n)-A193293(n+1)`
-/

namespace A193294.P1236078360203236962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (n + 1) + (A062114 (n + 1) - A074331 n) - A193293 (n + 1)

end

end A193294.P1236078360203236962

namespace A193294

/-- `A074283(n+1)+A062114(n+1)-A074331(n)-A193293(n+1)` -/
def P1236078360203236962.Spec : Prop :=
  ∀ n, P1236078360203236962.a n = A193294 (n + 1)

end A193294

/-!
# A193295: Number of prime divisors (with multiplicity) of n^2 - 1.

The programs for A193295, the canonical program `A193295.P2846491315925427751` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193295 has offset 2).

The definition of A193295 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A193295.P2846491315925427751

`A001222((n+2)²-1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A193295

/-- `A001222((n+2)²-1)` -/
def P2846491315925427751.Spec : Prop :=
  ∀ n, P2846491315925427751.a n = A193295 (n + 2)

theorem P2846491315925427751.correct : P2846491315925427751.Spec := by
  intro n
  simp only [A193295, Nat.add_sub_cancel]

end A193295

/-! ## A193295.P13069864199161243511

`∑{e}[n+1, #]+∑{e}[n+3, #]`
-/

namespace A193295.P13069864199161243511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

end

end A193295.P13069864199161243511

namespace A193295

/-- `∑{e}[n+1, #]+∑{e}[n+3, #]` -/
def P13069864199161243511.Spec : Prop :=
  ∀ n, (P13069864199161243511.a n : ℤ) = A193295 (n + 2)

end A193295

/-! ## A193295.P7191942675320330776

`Δ[A022559(n+2)+A022559(n)]`
-/

namespace A193295.P7191942675320330776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 2) + A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193295.P7191942675320330776

namespace A193295

/-- `Δ[A022559(n+2)+A022559(n)]` -/
def P7191942675320330776.Spec : Prop :=
  ∀ n, P7191942675320330776.a n = A193295 (n + 2)

end A193295

/-! ## A193295.P9137838328340375672

`A001222(n+1)+A001222(n+3)`
-/

namespace A193295.P9137838328340375672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (n + 3)

end

end A193295.P9137838328340375672

namespace A193295

/-- `A001222(n+1)+A001222(n+3)` -/
def P9137838328340375672.Spec : Prop :=
  ∀ n, P9137838328340375672.a n = A193295 (n + 2)

end A193295

/-! ## A193295.P9228887356785613017

`log2(A061142(n+1)*A061142(n+3))`
-/

namespace A193295.P9228887356785613017
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) * A061142 (n + 3) : ℝ)

end

end A193295.P9228887356785613017

namespace A193295

/-- `log2(A061142(n+1)*A061142(n+3))` -/
def P9228887356785613017.Spec : Prop :=
  ∀ n, P9228887356785613017.a n = (A193295 (n + 2) : ℝ)

end A193295

/-! ## A193295.P6560684156834132427

`log2(A061142(n+3))+A073093(n+1)-1`
-/

namespace A193295.P6560684156834132427
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 3) : ℝ) + (A073093 (n + 1) - 1 : ℝ)

end

end A193295.P6560684156834132427

namespace A193295

/-- `log2(A061142(n+3))+A073093(n+1)-1` -/
def P6560684156834132427.Spec : Prop :=
  ∀ n, P6560684156834132427.a n = (A193295 (n + 2) : ℝ)

end A193295

/-! ## A193295.P10096615953494467250

`val(A165835(n+1), 2)+log2(A061142(n+3))`
-/

namespace A193295.P10096615953494467250
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A165835 (n + 1)).toNat 2 : ℝ) + Real.logb 2 (A061142 (n + 3) : ℝ)

end

end A193295.P10096615953494467250

namespace A193295

/-- `val(A165835(n+1), 2)+log2(A061142(n+3))` -/
def P10096615953494467250.Spec : Prop :=
  ∀ n, P10096615953494467250.a n = (A193295 (n + 2) : ℝ)

end A193295

/-! ## A193295.P4730055084659006422

`A056239(A181819(n+1)*A181819(n+3))`
-/

namespace A193295.P4730055084659006422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A181819 (n + 1) * A181819 (n + 3)).toNat

end

end A193295.P4730055084659006422

namespace A193295

/-- `A056239(A181819(n+1)*A181819(n+3))` -/
def P4730055084659006422.Spec : Prop :=
  ∀ n, P4730055084659006422.a n = A193295 (n + 2)

end A193295

/-! ## A193295.P5264293684113823927

`A302242(A000040(n+3))+val(A124508(n+1), 2)`
-/

namespace A193295.P5264293684113823927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A000040 (n + 3)).toNat + (SequenceMachineLib.valuation (A124508 (n + 1)).toNat 2 : ℤ)

end

end A193295.P5264293684113823927

namespace A193295

/-- `A302242(A000040(n+3))+val(A124508(n+1), 2)` -/
def P5264293684113823927.Spec : Prop :=
  ∀ n, P5264293684113823927.a n = A193295 (n + 2)

end A193295

/-! ## A193295.P3905047873073982947

`A302242(A000040(n+3))+val(A165827(n+1), 2)`
-/

namespace A193295.P3905047873073982947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A000040 (n + 3)).toNat + (SequenceMachineLib.valuation (A165827 (n + 1)).toNat 2 : ℤ)

end

end A193295.P3905047873073982947

namespace A193295

/-- `A302242(A000040(n+3))+val(A165827(n+1), 2)` -/
def P3905047873073982947.Spec : Prop :=
  ∀ n, P3905047873073982947.a n = A193295 (n + 2)

end A193295

/-! ## A193295.P3354003382691037176

`∑{e}[A278160(n+1), #]`
-/

namespace A193295.P3354003382691037176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278160 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A193295.P3354003382691037176

namespace A193295

/-- `∑{e}[A278160(n+1), #]` -/
def P3354003382691037176.Spec : Prop :=
  ∀ n, (P3354003382691037176.a n : ℤ) = A193295 (n + 2)

end A193295

/-! ## A193295.P10407484710732948556

`∑{e}[1-(n+2)², #]`
-/

namespace A193295.P10407484710732948556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A193295.P10407484710732948556

namespace A193295

/-- `∑{e}[1-(n+2)², #]` -/
def P10407484710732948556.Spec : Prop :=
  ∀ n, (P10407484710732948556.a n : ℤ) = A193295 (n + 2)

end A193295

/-! ## A193295.P15876674378539084492

`∑{e}[A054000(n+2), #]-1`
-/

namespace A193295.P15876674378539084492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A193295.P15876674378539084492

namespace A193295

/-- `∑{e}[A054000(n+2), #]-1` -/
def P15876674378539084492.Spec : Prop :=
  ∀ n, P15876674378539084492.a n = A193295 (n + 2)

end A193295

/-! ## A193295.P8668887419394339867

`A048675(A293442((n+1)*(n+3)))`
-/

namespace A193295.P8668887419394339867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A293442 ((n + 1) * (n + 3))).toNat

end

end A193295.P8668887419394339867

namespace A193295

/-- `A048675(A293442((n+1)*(n+3)))` -/
def P8668887419394339867.Spec : Prop :=
  ∀ n, P8668887419394339867.a n = A193295 (n + 2)

end A193295

/-!
# A193296: G.f. satisfies: A(x) = 1+x + x^2*A( (A(x)-1-x)/x ).

The programs for A193296, there is no canonical definition to state claims against.
-/

/-! ## A193296.P16710093651236129845

`A304454(A028310(abs(1-n)))`
-/

namespace A193296.P16710093651236129845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304454 (A028310 |1 - (n : ℤ)|.toNat).toNat

end

end A193296.P16710093651236129845

/-! ## A193296.P5096574836176607628

`A304454(A233583(n+1)-1)`
-/

namespace A193296.P5096574836176607628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304454 (A233583 (n + 1) - 1).toNat

end

end A193296.P5096574836176607628

/-! ## A193296.P18316538232167459264

`A304454(A002260(A027379(n)))`
-/

namespace A193296.P18316538232167459264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304454 (A002260 (A027379 n).toNat).toNat

end

end A193296.P18316538232167459264

/-! ## A193296.P6715107055711074570

`A304454(A233583(A233583(n+1)))`
-/

namespace A193296.P6715107055711074570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304454 (A233583 (A233583 (n + 1)).toNat).toNat

end

end A193296.P6715107055711074570

/-! ## A193296.P9259018746307069072

`A304454(A003056(record[A209268(n+1)]))`
-/

namespace A193296.P9259018746307069072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304454 (A003056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A193296.P9259018746307069072

/-!
# A193298: Gica-Panaitopol recursion: a(1) = 1; a(n+1) = 2*a(n) if a(n) <= n; otherwise a(n+1) = a(n) - 1.

The programs for A193298, the canonical program `A193298.P2824041073000527401` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193298 has offset 1).

The definition of A193298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193298.P2824041073000527401

`(a(n-1)%n+n)%(n+1)+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193298

/-- `(a(n-1)%n+n)%(n+1)+n` -/
def P2824041073000527401.Spec : Prop :=
  ∀ n, (P2824041073000527401.a n : ℤ) = A193298 (n + 1)

theorem P2824041073000527401.correct : P2824041073000527401.Spec := by
  intro n
  simp only [A193298, Nat.add_sub_cancel]

end A193298

/-! ## A193298.P553842725822893678

`(a(n-1)+1)*(floor(n/a(n-1))+1)-2` with `a(0)=1`
-/

namespace A193298.P553842725822893678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) * (⌊(n : ℚ) / (a (n - 1) : ℚ)⌋ + 1) - 2

end

end A193298.P553842725822893678

namespace A193298

/-- `(a(n-1)+1)*(floor(n/a(n-1))+1)-2` -/
def P553842725822893678.Spec : Prop :=
  ∀ n, P553842725822893678.a n = A193298 (n + 1)

end A193298

/-! ## A193298.P7793929091216149399

`a(n-1)+or(floor(n/a(n-1))-1, a(n-1))` with `a(0)=1`
-/

namespace A193298.P7793929091216149399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (⌊(n : ℚ) / (a (n - 1) : ℚ)⌋ - 1) (a (n - 1))

end

end A193298.P7793929091216149399

namespace A193298

/-- `a(n-1)+or(floor(n/a(n-1))-1, a(n-1))` -/
def P7793929091216149399.Spec : Prop :=
  ∀ n, P7793929091216149399.a n = A193298 (n + 1)

end A193298

/-! ## A193298.P12146857820690154783

`A028310(A023443(2*(n+1))-A382355(n+1))`
-/

namespace A193298.P12146857820690154783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A023443 (2 * (n + 1)) - A382355 (n + 1)).toNat

end

end A193298.P12146857820690154783

namespace A193298

/-- `A028310(A023443(2*(n+1))-A382355(n+1))` -/
def P12146857820690154783.Spec : Prop :=
  ∀ n, P12146857820690154783.a n = A193298 (n + 1)

end A193298

/-!
# A193299: Gica-Panaitopol sequence A193298 sorted.

The programs for A193299, there is no canonical definition to state claims against.
-/

/-! ## A193299.P11962349689253290869

`eq[1, char[(a(n-1)%n+n)%(n+1)+n]]` with `a(0)=1`
-/

namespace A193299.P11962349689253290869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  (f3 (n - 1) % n + n) % (n + 1) + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193299.P11962349689253290869

/-! ## A193299.P12230114844735402783

`lt[0, char[A193298(n+1)]]`
-/

namespace A193299.P12230114844735402783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193298 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193299.P12230114844735402783

/-! ## A193299.P7915770876633186351

`comp[A193301(n+1)-1]+1`
-/

namespace A193299.P7915770876633186351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193301 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A193299.P7915770876633186351

/-! ## A193299.P6595558956658215935

`comp[A254667(comp[A193298(n+1)])]`
-/

namespace A193299.P6595558956658215935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193298 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193299.P6595558956658215935

/-! ## A193299.P6875180353591538067

`comp[A023443(comp[A193298(n+1)+1])]`
-/

namespace A193299.P6875180353591538067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193298 (n + 1) + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193299.P6875180353591538067

/-! ## A193299.P10750352574065125110

`eq[A000038(n)!, char[A193298(n+1)]]`
-/

namespace A193299.P10750352574065125110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193298 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193299.P10750352574065125110

/-! ## A193299.P1942667315873573884

`eq[char[A193301(n+1)], A151933(n)]`
-/

namespace A193299.P1942667315873573884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193301 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A193299.P1942667315873573884

