import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
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

/-!
# A368200: Terms of A105774 given in ascending order.

The programs for A368200, there is no canonical definition to state claims against.
-/

/-! ## A368200.P14843388965545264677

`and(1, floor(Δ[ϕ*n²]))+n`
-/

namespace A368200.P14843388965545264677
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (n ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊f1 (n + 1) - f1 n⌋ + (n : ℤ)

end

end A368200.P14843388965545264677

/-! ## A368200.P1363665288491337832

`floor(ϕ*(2*n+1))%2+n`
-/

namespace A368200.P1363665288491337832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.goldenRatio * (2 * n + 1 : ℝ)⌋ 2 + (n : ℤ)

end

end A368200.P1363665288491337832

/-! ## A368200.P5634143707882738641

`n+1-floor(Δ[n²/ϕ])%2`
-/

namespace A368200.P5634143707882738641
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod ⌊f1 (n + 1) - f1 n⌋ 2

end

end A368200.P5634143707882738641

/-! ## A368200.P15929074909387252407

`(ceil((2*n+1)/ϕ)%2)²+n`
-/

namespace A368200.P15929074909387252407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(2 * n + 1 : ℝ) / Real.goldenRatio⌉ 2 ^ 2 + (n : ℤ)

end

end A368200.P15929074909387252407

/-! ## A368200.P18034932257536035756

`gcd(2, floor((2*n+1)/ϕ))+n-1`
-/

namespace A368200.P18034932257536035756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 ⌊(2 * n + 1 : ℝ) / Real.goldenRatio⌋ : ℤ) + ((n : ℤ) - 1)

end

end A368200.P18034932257536035756

/-! ## A368200.P8216620495908866430

`n+1-and(1, ceil(ϕ*(2*n+1)))`
-/

namespace A368200.P8216620495908866430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.land 1 ⌈Real.goldenRatio * (2 * n + 1 : ℝ)⌉

end

end A368200.P8216620495908866430

/-! ## A368200.P8658025720231614779

`∑[2-A368199(n)]`
-/

namespace A368200.P8658025720231614779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A368199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368200.P8658025720231614779

/-! ## A368200.P6987131706561491710

`A380151(n+1)+n`
-/

namespace A368200.P6987131706561491710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380151 (n + 1) + (n : ℤ)

end

end A368200.P6987131706561491710

/-! ## A368200.P13044162878513024171

`A085002(Δ[n²])+n`
-/

namespace A368200.P13044162878513024171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A368200.P13044162878513024171

/-! ## A368200.P5643011470668231143

`n+1-A171587(2*n)`
-/

namespace A368200.P5643011470668231143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A171587 (2 * n)

end

end A368200.P5643011470668231143

/-!
# A368201: Least k such that 9*n*k+1 is a prime.

The programs for A368201, there is no canonical definition to state claims against.
-/

/-! ## A368201.P1968555361403868582

`A366931(3*(n+1))`
-/

namespace A368201.P1968555361403868582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366931 (3 * (n + 1))

end

end A368201.P1968555361403868582

/-! ## A368201.P3803008325225164506

`ceil(A070853(n+1)/A016777(3*n+4))`
-/

namespace A368201.P3803008325225164506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070853 (n + 1) : ℚ) / (A016777 (3 * n + 4) : ℚ)⌉

end

end A368201.P3803008325225164506

/-! ## A368201.P15859571946136157274

`A034693(9*(n+1))`
-/

namespace A368201.P15859571946136157274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (9 * (n + 1))

end

end A368201.P15859571946136157274

/-!
# A368202: Least k such that 6*n*k+1 is a prime.

The programs for A368202, there is no canonical definition to state claims against.
-/

/-! ## A368202.P11513221616825091298

`A366931(2*(n+1))`
-/

namespace A368202.P11513221616825091298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366931 (2 * (n + 1))

end

end A368202.P11513221616825091298

/-! ## A368202.P9197228523036447949

`A016014(3*(n+1))`
-/

namespace A368202.P9197228523036447949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (3 * (n + 1))

end

end A368202.P9197228523036447949

/-! ## A368202.P9426868962384140691

`A034693(6*(n+1))`
-/

namespace A368202.P9426868962384140691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (6 * (n + 1))

end

end A368202.P9426868962384140691

/-! ## A368202.P9241159767914331486

`A008615(A070850(n+1))/(n+1)`
-/

namespace A368202.P9241159767914331486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008615 (A070850 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A368202.P9241159767914331486

/-! ## A368202.P7194148508820931176

`A290981(A070850(n+1))/A289441(2*(n+1))`
-/

namespace A368202.P7194148508820931176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290981 (A070850 (n + 1)).toNat : ℚ) / (A289441 (2 * (n + 1)) : ℚ)

end

end A368202.P7194148508820931176

/-! ## A368202.P11799960437299045726

`ceil(A070846(3*(n+1))/A122986(n+5))`
-/

namespace A368202.P11799960437299045726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070846 (3 * (n + 1)) : ℚ) / (A122986 (n + 5) : ℚ)⌉

end

end A368202.P11799960437299045726

/-!
# A368203: Least k such that 7*n*k+1 is a prime.

The programs for A368203, there is no canonical definition to state claims against.
-/

/-! ## A368203.P6162720577689759805

`A034693(7*(n+1))`
-/

namespace A368203.P6162720577689759805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (7 * (n + 1))

end

end A368203.P6162720577689759805

/-!
# A368205: a(n) = 3*a(n-1) - 2*a(n-2) - a(n-3), with a(0)=1, a(1)=3 and a(2)=7.

The programs for A368205, the canonical program `A368205.P12925364709045541498` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368205 has offset 0).

The definition of A368205 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)-a(n-3)` (program `A368205.P12925364709045541498`, by `A368205.P12925364709045541498.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368205.P12925364709045541498

`3*a(n-1)-2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368205

/-- `3*a(n-1)-2*a(n-2)-a(n-3)` -/
def P12925364709045541498.Spec : Prop :=
  ∀ n, P12925364709045541498.a n = A368205 n

theorem P12925364709045541498.correct : P12925364709045541498.Spec := by
  intro n
  simp only [A368205]

end A368205

/-! ## A368205.P6032276025878122395

`ogf(1/(1-3x+2x^2+x^3))`
-/

namespace A368205.P6032276025878122395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 2, 1] n

end

end A368205.P6032276025878122395

namespace A368205

/-- `ogf(1/(1-3x+2x^2+x^3))` -/
def P6032276025878122395.Spec : Prop :=
  ∀ n, P6032276025878122395.a n = A368205 n

end A368205

/-! ## A368205.P14689189540371477694

`∑[A056594(2*n)*A077954(2*n+1)]`
-/

namespace A368205.P14689189540371477694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A077954 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368205.P14689189540371477694

namespace A368205

/-- `∑[A056594(2*n)*A077954(2*n+1)]` -/
def P14689189540371477694.Spec : Prop :=
  ∀ n, P14689189540371477694.a n = A368205 n

end A368205

/-! ## A368205.P13757277797364375303

`A078019(2*n+3)/A034947(2*n+3)`
-/

namespace A368205.P13757277797364375303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078019 (2 * n + 3) : ℚ) / (A034947 (2 * n + 3) : ℚ)

end

end A368205.P13757277797364375303

namespace A368205

/-- `A078019(2*n+3)/A034947(2*n+3)` -/
def P13757277797364375303.Spec : Prop :=
  ∀ n, P13757277797364375303.a n = (A368205 n : ℚ)

end A368205

/-! ## A368205.P7690774091895820171

`A033999(n)*A247917(A131098(n+3))`
-/

namespace A368205.P7690774091895820171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A247917 (A131098 (n + 3)).toNat

end

end A368205.P7690774091895820171

namespace A368205

/-- `A033999(n)*A247917(A131098(n+3))` -/
def P7690774091895820171.Spec : Prop :=
  ∀ n, P7690774091895820171.a n = A368205 n

end A368205

/-!
# A368207: Bacher numbers: number of nonnegative representations of n = w*x+y*z with max(w,x) < min(y,z).

The programs for A368207, there is no canonical definition to state claims against.
-/

/-! ## A368207.P9046123432273660724

`A368581(n+1)+A368580(n+1)`
-/

namespace A368207.P9046123432273660724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368581 (n + 1) + A368580 (n + 1)

end

end A368207.P9046123432273660724

/-! ## A368207.P17153366958976241490

`A368581(n+1)+A004277(A117004(n+1))-A000005(n+1)`
-/

namespace A368207.P17153366958976241490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368581 (n + 1) + (A004277 (A117004 (n + 1)).toNat - A000005 (n + 1))

end

end A368207.P17153366958976241490

/-! ## A368207.P2293185593484766655

`A368580(n+1)+A329152(n+1)^A107459(3*n+7)`
-/

namespace A368207.P2293185593484766655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368580 (n + 1) : ℚ) + (A329152 (n + 1) : ℚ) ^ (A107459 (3 * n + 7) : ℤ)

end

end A368207.P2293185593484766655

/-! ## A368207.P13687895669964267480

`A368580(n+1)+A032741(A000003(3*n+1)^A329152(n+1))`
-/

namespace A368207.P13687895669964267480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368580 (n + 1) + A032741 (SequenceMachineLib.roundAway ((A000003 (3 * n + 1) : ℚ) ^ (A329152 (n + 1) : ℤ))).toNat

end

end A368207.P13687895669964267480

/-! ## A368207.P16307858399757655787

`A368580(n+1)+A000194(A329152(n+1)^(xor(n, n+1)+1))`
-/

namespace A368207.P16307858399757655787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368580 (n + 1) + A000194 (A329152 (n + 1) ^ (Nat.xor n (n + 1) + 1)).toNat

end

end A368207.P16307858399757655787

/-!
# A368208: a(n) is the least k such that, if p is the greatest prime less than k, there is a prime between n*p and n*k, but for 1 < j < n there is no prime between j*p and j*k.

The programs for A368208, there is no canonical definition to state claims against.
-/

/-! ## A368208.P13958058024477629469

`∩[A084541(n+1), A183991(n+1)]`
-/

namespace A368208.P13958058024477629469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368208.P13958058024477629469

/-!
# A368210: Irregular triangle T(n,k) read by rows (n >= 1, 0 <= k <= max(A001222([1..n]))), giving the number of k-almost primes in [1,n].

The programs for A368210, there is no canonical definition to state claims against.
-/

/-! ## A368210.P8028075207212913395

`gcd(A099244(A001037(n)), A260653(n+1))`
-/

namespace A368210.P8028075207212913395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099244 (A001037 n).toNat) (A260653 (n + 1))

end

end A368210.P8028075207212913395

/-! ## A368210.P14852601765266164989

`gcd(A055642(A224364(n)), A056239(2*(n+2)))`
-/

namespace A368210.P14852601765266164989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055642 (A224364 n).toNat) (A056239 (2 * (n + 2)))

end

end A368210.P14852601765266164989

/-! ## A368210.P444751666769642579

`A008619(A362615(n))%A147972(2*n+3)`
-/

namespace A368210.P444751666769642579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A362615 n).toNat) (A147972 (2 * n + 3))

end

end A368210.P444751666769642579

/-!
# A368212: Square spiral of positive integers built by greedy algorithm such that each value corresponds to the area of the connected component with terms of the same value and containing this value.

The programs for A368212, there is no canonical definition to state claims against.
-/

/-! ## A368212.P7322101749374945202

`A352516(A035441(2*n+1))+A000034(n)`
-/

namespace A368212.P7322101749374945202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 (A035441 (2 * n + 1)).toNat + A000034 n

end

end A368212.P7322101749374945202

/-! ## A368212.P2596613752042755339

`A001221(A245480(n+2)+A100587(3*(n+1)))`
-/

namespace A368212.P2596613752042755339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A245480 (n + 2) + A100587 (3 * (n + 1))).toNat

end

end A368212.P2596613752042755339

/-! ## A368212.P3110142126858582066

`A260452(xor(A213891(n+1), A276086(3*n+4)))`
-/

namespace A368212.P3110142126858582066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (Int.xor (A213891 (n + 1)) (A276086 (3 * n + 4))).toNat

end

end A368212.P3110142126858582066

/-! ## A368212.P12670890044713577257

`A001221(A286118(n)+A000010(n+4))`
-/

namespace A368212.P12670890044713577257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A286118 n + A000010 (n + 4)).toNat

end

end A368212.P12670890044713577257

/-! ## A368212.P16716828956220230990

`A001221(A106282(n+1)+A073728(n+1))`
-/

namespace A368212.P16716828956220230990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A106282 (n + 1) + A073728 (n + 1)).toNat

end

end A368212.P16716828956220230990

/-!
# A368213: Triangular array read by rows: Number of permutations of [n] that factor into exactly k-cycles, ordered by n (rows) and divisors k of n (columns).

The programs for A368213, there is no canonical definition to state claims against.
-/

/-! ## A368213.P6995213673900665164

`A066387(n+1)/A335259(n+1)`
-/

namespace A368213.P6995213673900665164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066387 (n + 1) : ℚ) / (A335259 (n + 1) : ℚ)

end

end A368213.P6995213673900665164

/-! ## A368213.P11604182893786277795

`gcd(A066387(n+1), A213279(n+1))`
-/

namespace A368213.P11604182893786277795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066387 (n + 1)) (A213279 (n + 1))

end

end A368213.P11604182893786277795

/-! ## A368213.P17553097427108186095

`and(A008279(n), A038550(A000055(n)))`
-/

namespace A368213.P17553097427108186095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008279 n) (A038550 (A000055 n).toNat)

end

end A368213.P17553097427108186095

/-!
# A368216: Number of divisors of n that are antiharmonic numbers (A020487).

The programs for A368216, there is no canonical definition to state claims against.
-/

/-! ## A368216.P9451692472282567442

`A046951(n+1)+A010052(A247464(n+1))`
-/

namespace A368216.P9451692472282567442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) + A010052 (A247464 (n + 1)).toNat

end

end A368216.P9451692472282567442

/-! ## A368216.P4713560562320552126

`or(A046951(n+1), A316866(A207467(n+1)))`
-/

namespace A368216.P4713560562320552126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046951 (n + 1)) (A316866 (A207467 (n + 1)).toNat)

end

end A368216.P4713560562320552126

/-! ## A368216.P13552618996449719165

`or(A025426(A035363(2*n)), A046951(n+1))`
-/

namespace A368216.P13552618996449719165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025426 (A035363 (2 * n)).toNat) (A046951 (n + 1))

end

end A368216.P13552618996449719165

/-! ## A368216.P13766204414240061070

`A046951(n+1)+A025464(A014105(2*n))`
-/

namespace A368216.P13766204414240061070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) + A025464 (A014105 (2 * n)).toNat

end

end A368216.P13766204414240061070

/-! ## A368216.P7759036342473464258

`A056170(A086892(n+1))+∏{p}[n+1, val(n+1, #²)+1]`
-/

namespace A368216.P7759036342473464258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A086892 (n + 1)).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) (p ^ 2) + 1) : ℕ) : ℤ)

end

end A368216.P7759036342473464258

/-!
# A368217: a(n) is the first number == 1 (mod n) that is the product of n primes, counted by multiplicity.

The programs for A368217, there is no canonical definition to state claims against.
-/

/-! ## A368217.P16455186197227959263

`A350944(A000712(n+1))-n`
-/

namespace A368217.P16455186197227959263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350944 (A000712 (n + 1)).toNat - (n : ℤ)

end

end A368217.P16455186197227959263

/-!
# A368221: Table read by downward antidiagonals: T(n,k) is the number of tilings of the n X k grid up to horizontal reflection by two tiles that are each fixed under horizontal reflection.

The programs for A368221, there is no canonical definition to state claims against.
-/

/-! ## A368221.P15541571740998507170

`A368264(n+1)+A276206(A001764(n))`
-/

namespace A368221.P15541571740998507170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368264 (n + 1) + A276206 (A001764 n).toNat

end

end A368221.P15541571740998507170

/-!
# A368223: Table read by antidiagonals: T(n,k) is the number of tilings of the n X k grid up to 180-degree rotation by two tiles that are each fixed under 180-degree rotation.

The programs for A368223, there is no canonical definition to state claims against.
-/

/-! ## A368223.P4128558186748700371

`A005418(A059036(n)+2)`
-/

namespace A368223.P4128558186748700371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (A059036 n + 2).toNat

end

end A368223.P4128558186748700371

/-! ## A368223.P194930595989618461

`A005418(A003991(n+1)+1)`
-/

namespace A368223.P194930595989618461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (A003991 (n + 1) + 1).toNat

end

end A368223.P194930595989618461

/-! ## A368223.P12193729904088201705

`∑{d}[A003991(n+1), A045625(#)]`
-/

namespace A368223.P12193729904088201705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045625 d

end

end A368223.P12193729904088201705

/-! ## A368223.P10445113744232934704

`A368221(A185957(n+1))`
-/

namespace A368223.P10445113744232934704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368221 (A185957 (n + 1)).toNat

end

end A368223.P10445113744232934704

/-! ## A368223.P10626799177643129495

`A368219(A185957(n+1)+1)`
-/

namespace A368223.P10626799177643129495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368219 (A185957 (n + 1) + 1).toNat

end

end A368223.P10626799177643129495

/-!
# A368224: Table read by antidiagonals: T(n,k) is the number of tilings of the n X k grid up to 180-degree rotation by an asymmetric tile.

The programs for A368224, there is no canonical definition to state claims against.
-/

/-! ## A368224.P16884807831530302378

`A051437(A059036(n))`
-/

namespace A368224.P16884807831530302378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051437 (A059036 n).toNat

end

end A368224.P16884807831530302378

/-! ## A368224.P13102678868297538103

`A051437(A003991(n+1)-1)`
-/

namespace A368224.P13102678868297538103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051437 (A003991 (n + 1) - 1).toNat

end

end A368224.P13102678868297538103

/-! ## A368224.P17343401555913820128

`A368222(A286102(n+1))`
-/

namespace A368224.P17343401555913820128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368222 (A286102 (n + 1)).toNat

end

end A368224.P17343401555913820128

/-! ## A368224.P17112578732740095353

`A368222(A185957(n+1))`
-/

namespace A368224.P17112578732740095353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368222 (A185957 (n + 1)).toNat

end

end A368224.P17112578732740095353

/-!
# A368225: Irregular table of nonnegative integers read by rows: the 1's in the binary expansion of n exactly match the nonzero digits in the balanced ternary expansions of the terms in the n-th row.

The programs for A368225, there is no canonical definition to state claims against.
-/

/-! ## A368225.P12935935168365375903

`A353662(lt[-1, A353662(n)])`
-/

namespace A368225.P12935935168365375903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353662 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A368225.P12935935168365375903

/-!
# A368226: Inverse permutation to A368225.

The programs for A368226, there is no canonical definition to state claims against.
-/

/-! ## A368226.P4449178893851983369

`A342753(A062326(n+1))+A338246(n)`
-/

namespace A368226.P4449178893851983369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (A062326 (n + 1)).toNat + A338246 n

end

end A368226.P4449178893851983369

/-!
# A368227: Square array read by ascending antidiagonals: row n is the trajectory of n under the A006369 map.

The programs for A368227, there is no canonical definition to state claims against.
-/

/-! ## A368227.P1389673297150019640

`A122284(n)-A118917(A118892(n))`
-/

namespace A368227.P1389673297150019640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122284 n - A118917 (A118892 n).toNat

end

end A368227.P1389673297150019640

/-! ## A368227.P14593089401779840741

`A122283(n)-A210714(A210714(n))`
-/

namespace A368227.P14593089401779840741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122283 n - A210714 (A210714 n).toNat

end

end A368227.P14593089401779840741

/-! ## A368227.P12374883265097417043

`A122288(n)-A210714(A210714(n))`
-/

namespace A368227.P12374883265097417043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122288 n - A210714 (A210714 n).toNat

end

end A368227.P12374883265097417043

/-! ## A368227.P6502243019036171033

`and(A130402(n), A199329(A001060(n)))`
-/

namespace A368227.P6502243019036171033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130402 n) (A199329 (A001060 n).toNat)

end

end A368227.P6502243019036171033

/-! ## A368227.P8604820085855031312

`A122283(n)-A087436(A118655(n+1))`
-/

namespace A368227.P8604820085855031312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122283 n - A087436 (A118655 (n + 1)).toNat

end

end A368227.P8604820085855031312

/-!
# A368228: Main diagonal of A368227: the n-th term in the trajectory of n under the A006369 map.

The programs for A368228, there is no canonical definition to state claims against.
-/

/-! ## A368228.P12416329026384715886

`A368227(∑[4*n])`
-/

namespace A368228.P12416329026384715886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368227 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A368228.P12416329026384715886

/-! ## A368228.P15744262302710944338

`A218829(A046713(n+1))`
-/

namespace A368228.P15744262302710944338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218829 (A046713 (n + 1)).toNat

end

end A368228.P15744262302710944338

/-!
# A368229: Irregular table of nonnegative integers T(n, k), n >= 0, k = 1..A001316(n), read by rows: the 1's in the binary expansion of n exactly match the nonzero digits in the ternary expansions of the terms in the n-th row.

The programs for A368229, there is no canonical definition to state claims against.
-/

/-! ## A368229.P12841156443404214959

`A004488(A353660(n))`
-/

namespace A368229.P12841156443404214959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A353660 n).toNat

end

end A368229.P12841156443404214959

/-! ## A368229.P15322537638679764658

`A353662(n)+A353660(n)`
-/

namespace A368229.P15322537638679764658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353662 n + A353660 n

end

end A368229.P15322537638679764658

/-!
# A368230: Inverse permutation to A368229.

The programs for A368230, there is no canonical definition to state claims against.
-/

/-! ## A368230.P16402739530281347150

`A353661(A004488(n))`
-/

namespace A368230.P16402739530281347150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353661 (A004488 n).toNat

end

end A368230.P16402739530281347150

/-! ## A368230.P14808141442477363062

`A353661(A117966(n)+n)`
-/

namespace A368230.P14808141442477363062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353661 (A117966 n + (n : ℤ)).toNat

end

end A368230.P14808141442477363062

/-! ## A368230.P12905811486626668008

`A353661(n-3/2*A300222(n)+n)`
-/

namespace A368230.P12905811486626668008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353661 (SequenceMachineLib.roundAway ((n : ℚ) - (3 : ℚ) / 2 * (A300222 n : ℚ) + (n : ℚ))).toNat

end

end A368230.P12905811486626668008

/-! ## A368230.P1719569677005339054

`A353661(A353662(A353661(n))+n)`
-/

namespace A368230.P1719569677005339054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353661 (A353662 (A353661 n).toNat + (n : ℤ)).toNat

end

end A368230.P1719569677005339054

/-! ## A368230.P3812554254000759312

`A353661(A374363(3*n)-n)`
-/

namespace A368230.P3812554254000759312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353661 (A374363 (3 * n) - (n : ℤ)).toNat

end

end A368230.P3812554254000759312

/-!
# A368231: Lexicographically earliest infinite sequence of distinct positive numbers such that, for n>3, a(n) has a common factor with a(n-1) but not with a(n-2) or n.

The programs for A368231, there is no canonical definition to state claims against.
-/

/-! ## A368231.P5653983070959399539

`A249730(A062886(n))`
-/

namespace A368231.P5653983070959399539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249730 (A062886 n).toNat

end

end A368231.P5653983070959399539

/-!
# A368232: Expansion of e.g.f. 1/(1 - x - log(1 + x)).

The programs for A368232, there is no canonical definition to state claims against.
-/

/-! ## A368232.P13647199100976112158

`A305307(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A368232.P13647199100976112158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A305307 n + (n : ℤ) * a (n - 1)

end

end A368232.P13647199100976112158

/-! ## A368232.P14071177737043773902

`xor(A001515(n), A059995(A001515(n)))`
-/

namespace A368232.P14071177737043773902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001515 n) (A059995 (A001515 n).toNat)

end

end A368232.P14071177737043773902

/-!
# A368233: Expansion of e.g.f. 1/(1 - 2*x - log(1 + x)).

The programs for A368233, there is no canonical definition to state claims against.
-/

/-! ## A368233.P6779750130116680097

`A366378(2*A363589(n))`
-/

namespace A368233.P6779750130116680097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366378 (2 * A363589 n).toNat

end

end A368233.P6779750130116680097

/-!
# A368234: Number of nondeterministic Dyck excursions of length 2*n.

The programs for A368234, the canonical program `A368234.P9995598727139784369` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368234 has offset 0).

The definition of A368234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368234.P9995598727139784369

`2^n*A090317(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A368234

/-- `2^n*A090317(n)` -/
def P9995598727139784369.Spec : Prop :=
  ∀ n, P9995598727139784369.a n = A368234 n

theorem P9995598727139784369.correct : P9995598727139784369.Spec := by
  intro n
  simp only [A368234]

end A368234

/-! ## A368234.P8483167127288193159

`A090317(n)*A297112(A000040(n+1))`
-/

namespace A368234.P8483167127288193159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090317 n * A297112 (A000040 (n + 1)).toNat

end

end A368234.P8483167127288193159

namespace A368234

/-- `A090317(n)*A297112(A000040(n+1))` -/
def P8483167127288193159.Spec : Prop :=
  ∀ n, P8483167127288193159.a n = A368234 n

end A368234

/-! ## A368234.P1654115677542560033

`2^n*A128308(A001844(n))`
-/

namespace A368234.P1654115677542560033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A128308 (A001844 n).toNat

end

end A368234.P1654115677542560033

namespace A368234

/-- `2^n*A128308(A001844(n))` -/
def P1654115677542560033.Spec : Prop :=
  ∀ n, P1654115677542560033.a n = A368234 n

end A368234

/-! ## A368234.P3011966678019942859

`A090317(n)*A305769(A000217(n+1))`
-/

namespace A368234.P3011966678019942859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090317 n * A305769 (A000217 (n + 1)).toNat

end

end A368234.P3011966678019942859

namespace A368234

/-- `A090317(n)*A305769(A000217(n+1))` -/
def P3011966678019942859.Spec : Prop :=
  ∀ n, P3011966678019942859.a n = A368234 n

end A368234

/-!
# A368235: Triangle read by rows: n-th row polynomial equals the numerator of the rational function (-1)^n*f(x) * (d/dx)^n (1/f(x)), where f(x) = sqrt(x + x^2).

The programs for A368235, there is no canonical definition to state claims against.
-/

/-! ## A368235.P11654063835952200190

`(4*row(n)-2*col(n))*T(n-1,k-1)+(2*row(n)-(2*col(n)+1))*T(n-1,k)` with `a(0)=1`
-/

namespace A368235.P11654063835952200190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((4 * SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triUpLeft a n + ((2 * SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n + 1 : ℤ)) * SequenceMachineLib.triUp a n

end

end A368235.P11654063835952200190

/-! ## A368235.P7679525997513713696

`A013609(n)*A108032(n)`
-/

namespace A368235.P7679525997513713696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A108032 n

end

end A368235.P7679525997513713696

/-! ## A368235.P34363446859898960

`A007318(n)*A122774(n+1)`
-/

namespace A368235.P34363446859898960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A122774 (n + 1)

end

end A368235.P34363446859898960

/-! ## A368235.P3720261267878690664

`A122774(n+1)*A374452(n)`
-/

namespace A368235.P3720261267878690664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122774 (n + 1) * A374452 n

end

end A368235.P3720261267878690664

/-! ## A368235.P10970921016893789879

`A122774(n+1)*A383566(n)`
-/

namespace A368235.P10970921016893789879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122774 (n + 1) * A383566 n

end

end A368235.P10970921016893789879

/-!
# A368236: Expansion of e.g.f. 1/(exp(-x) - 2*x).

The programs for A368236, the canonical program `A368236.P14748929359200532883` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368236 has offset 0).

The definition of A368236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368236.P14748929359200532883

`n!*∑{#}[n, 2^(n-#)*(n-#+1)^#/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368236

/-- `n!*∑{#}[n, 2^(n-#)*(n-#+1)^#/#!]` -/
def P14748929359200532883.Spec : Prop :=
  ∀ n, P14748929359200532883.a n = (A368236 n : ℚ)

end A368236

/-! ## A368236.P7779659660414507192

`A351762(n+1)/(2*(n+1))`
-/

namespace A368236.P7779659660414507192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351762 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A368236.P7779659660414507192

namespace A368236

/-- `A351762(n+1)/(2*(n+1))` -/
def P7779659660414507192.Spec : Prop :=
  ∀ n, P7779659660414507192.a n = (A368236 n : ℚ)

end A368236

/-!
# A368237: Expansion of e.g.f. 1/(exp(-x) - 3*x).

The programs for A368237, the canonical program `A368237.P13438900816003139407` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368237 has offset 0).

The definition of A368237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368237.P13438900816003139407

`n!*∑{#}[n, 3^(n-#)*(n-#+1)^#/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368237

/-- `n!*∑{#}[n, 3^(n-#)*(n-#+1)^#/#!]` -/
def P13438900816003139407.Spec : Prop :=
  ∀ n, P13438900816003139407.a n = (A368237 n : ℚ)

end A368237

/-! ## A368237.P2489000997544633003

`A351763(n+1)/A020725(3*n+2)`
-/

namespace A368237.P2489000997544633003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351763 (n + 1) : ℚ) / (A020725 (3 * n + 2) : ℚ)

end

end A368237.P2489000997544633003

namespace A368237

/-- `A351763(n+1)/A020725(3*n+2)` -/
def P2489000997544633003.Spec : Prop :=
  ∀ n, P2489000997544633003.a n = (A368237 n : ℚ)

end A368237

/-!
# A368238: Semiprimes whose reversal is a prime, ordered by the prime.

The programs for A368238, there is no canonical definition to state claims against.
-/

/-! ## A368238.P4906935152493037171

`A004086(A085778(n+1))`
-/

namespace A368238.P4906935152493037171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A085778 (n + 1)).toNat

end

end A368238.P4906935152493037171

/-! ## A368238.P343378430316488700

`A210625(A085778(C(n+1, n)))`
-/

namespace A368238.P343378430316488700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210625 (A085778 (Nat.choose (n + 1) n)).toNat

end

end A368238.P343378430316488700

/-! ## A368238.P6046946455364882177

`filter[A004087(n+1), A064911(#)]`
-/

namespace A368238.P6046946455364882177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A368238.P6046946455364882177

/-! ## A368238.P13130368317785455145

`A210625(A085778(n+1)%A223091(n+1))`
-/

namespace A368238.P13130368317785455145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210625 (Int.tmod (A085778 (n + 1)) (A223091 (n + 1))).toNat

end

end A368238.P13130368317785455145

/-! ## A368238.P12286734876676745502

`A210625(A085778(n+1))%A350781(n+1)`
-/

namespace A368238.P12286734876676745502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210625 (A085778 (n + 1)).toNat) (A350781 (n + 1))

end

end A368238.P12286734876676745502

/-! ## A368238.P6935566939353053470

`A210625(A085778(n+1))+A025428(A320841(n))`
-/

namespace A368238.P6935566939353053470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210625 (A085778 (n + 1)).toNat + A025428 (A320841 n).toNat

end

end A368238.P6935566939353053470

/-! ## A368238.P10188955727225085646

`A001221(A000040(n+1))*A210625(A085778(n+1))`
-/

namespace A368238.P10188955727225085646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000040 (n + 1)).toNat * A210625 (A085778 (n + 1)).toNat

end

end A368238.P10188955727225085646

/-! ## A368238.P1474918411093171562

`A210625(A085778(n+1))+A025455(A272928(n))`
-/

namespace A368238.P1474918411093171562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210625 (A085778 (n + 1)).toNat + A025455 (A272928 n).toNat

end

end A368238.P1474918411093171562

/-!
# A368240: Inverse permutation to A368239.

The programs for A368240, there is no canonical definition to state claims against.
-/

/-! ## A368240.P1244601591442470646

`A380182(A368239(A380182(n)))`
-/

namespace A368240.P1244601591442470646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380182 (A368239 (A380182 n).toNat).toNat

end

end A368240.P1244601591442470646

/-!
# A368242: Numbers k whose number of proper divisors is greater than sqrt(k).

The programs for A368242, there is no canonical definition to state claims against.
-/

/-! ## A368242.P11994045065436905061

`lt[n, A032741(n)²]`
-/

namespace A368242.P11994045065436905061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A368242.P11994045065436905061

/-! ## A368242.P13101710119535397493

`lt[A000196(n), A032741(n)]`
-/

namespace A368242.P13101710119535397493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368242.P13101710119535397493

/-! ## A368242.P12896765235733424091

`lt[sqrt(A028310(n)), A032741(n)]`
-/

namespace A368242.P12896765235733424091
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028310 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A368242.P12896765235733424091

/-! ## A368242.P10268090369128804608

`lt[sqrt(A059292(n+1)), A032741(n)]`
-/

namespace A368242.P10268090369128804608
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059292 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A368242.P10268090369128804608

/-! ## A368242.P3294085867530297497

`lt[A001844(n), A275496(A032741(n))]`
-/

namespace A368242.P3294085867530297497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275496 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368242.P3294085867530297497

/-!
# A368244: Number of compositions of n into parts 1, 9, and 10.

The programs for A368244, the canonical program `A368244.P14291836961479602960` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368244 has offset 0).

The definition of A368244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368244.P14718012234988460171

`ogf(1/(1-x-x^9-x^10))`
-/

namespace A368244.P14718012234988460171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, 0, 0, 0, 0, 0, 0, -1, -1] n

end

end A368244.P14718012234988460171

namespace A368244

/-- `ogf(1/(1-x-x^9-x^10))` -/
def P14718012234988460171.Spec : Prop :=
  ∀ n, P14718012234988460171.a n = A368244 n

end A368244

/-! ## A368244.P14291836961479602960

`a(n-1)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1, a(9)=2`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368244

/-- `a(n-1)+a(n-9)+a(n-10)` -/
def P14291836961479602960.Spec : Prop :=
  ∀ n, (P14291836961479602960.a n : ℤ) = A368244 n

theorem P14291836961479602960.correct : P14291836961479602960.Spec := by
  intro n
  simp only [A368244]

end A368244

/-!
# A368245: Numbers k such that there is a positive integer r for which k^(1/r) = digsum(k) - r.

The programs for A368245, there is no canonical definition to state claims against.
-/

/-! ## A368245.P11733161982988307262

`A158340(A038435(n))`
-/

namespace A368245.P11733161982988307262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158340 (A038435 n).toNat

end

end A368245.P11733161982988307262

/-!
# A368247: The number of cubefree divisors of the cubefull part of n (A360540).

The programs for A368247, the canonical program `A368247.P6979336993255888350` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368247 has offset 1).

The definition of A368247 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073184, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368247.P6979336993255888350

`A073184(A360540(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A368247

/-- `A073184(A360540(n+1))` -/
def P6979336993255888350.Spec : Prop :=
  ∀ n, P6979336993255888350.a n = A368247 (n + 1)

theorem P6979336993255888350.correct : P6979336993255888350.Spec := by
  intro n
  simp only [A368247, Nat.add_sub_cancel]

end A368247

/-! ## A368247.P16435396017056708002

`3^A295659(n+1)`
-/

namespace A368247.P16435396017056708002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A295659 (n + 1) : ℤ)

end

end A368247.P16435396017056708002

namespace A368247

/-- `3^A295659(n+1)` -/
def P16435396017056708002.Spec : Prop :=
  ∀ n, P16435396017056708002.a n = (A368247 (n + 1) : ℚ)

end A368247

/-! ## A368247.P16948954779914088812

`A392451(A366906(n+1))`
-/

namespace A368247.P16948954779914088812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392451 (A366906 (n + 1)).toNat

end

end A368247.P16948954779914088812

namespace A368247

/-- `A392451(A366906(n+1))` -/
def P16948954779914088812.Spec : Prop :=
  ∀ n, P16948954779914088812.a n = A368247 (n + 1)

end A368247

/-! ## A368247.P18082750963852113118

`A073184(n+1)/A366147(n+1)`
-/

namespace A368247.P18082750963852113118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073184 (n + 1) : ℚ) / (A366147 (n + 1) : ℚ)

end

end A368247.P18082750963852113118

namespace A368247

/-- `A073184(n+1)/A366147(n+1)` -/
def P18082750963852113118.Spec : Prop :=
  ∀ n, P18082750963852113118.a n = (A368247 (n + 1) : ℚ)

end A368247

/-! ## A368247.P2501153843983583739

`gcd(A056449(n), A111217(n+1))`
-/

namespace A368247.P2501153843983583739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056449 n) (A111217 (n + 1))

end

end A368247.P2501153843983583739

namespace A368247

/-- `gcd(A056449(n), A111217(n+1))` -/
def P2501153843983583739.Spec : Prop :=
  ∀ n, (P2501153843983583739.a n : ℤ) = A368247 (n + 1)

end A368247

/-! ## A368247.P10563153101239488491

`gcd(A287661(n+1), A380922(n+1))`
-/

namespace A368247.P10563153101239488491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A287661 (n + 1)) (A380922 (n + 1))

end

end A368247.P10563153101239488491

namespace A368247

/-- `gcd(A287661(n+1), A380922(n+1))` -/
def P10563153101239488491.Spec : Prop :=
  ∀ n, (P10563153101239488491.a n : ℤ) = A368247 (n + 1)

end A368247

/-! ## A368247.P8386408734806622612

`gcd(A026565(n), A256690(n+1))`
-/

namespace A368247.P8386408734806622612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026565 n) (A256690 (n + 1))

end

end A368247.P8386408734806622612

namespace A368247

/-- `gcd(A026565(n), A256690(n+1))` -/
def P8386408734806622612.Spec : Prop :=
  ∀ n, (P8386408734806622612.a n : ℤ) = A368247 (n + 1)

end A368247

/-! ## A368247.P14362520411139909688

`gcd(A331519(n), A380922(n+1))`
-/

namespace A368247.P14362520411139909688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A331519 n) (A380922 (n + 1))

end

end A368247.P14362520411139909688

namespace A368247

/-- `gcd(A331519(n), A380922(n+1))` -/
def P14362520411139909688.Spec : Prop :=
  ∀ n, (P14362520411139909688.a n : ℤ) = A368247 (n + 1)

end A368247

/-! ## A368247.P5510024527820758568

`gcd(A141413(n), A257101(n+1))`
-/

namespace A368247.P5510024527820758568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141413 n) (A257101 (n + 1))

end

end A368247.P5510024527820758568

namespace A368247

/-- `gcd(A141413(n), A257101(n+1))` -/
def P5510024527820758568.Spec : Prop :=
  ∀ n, (P5510024527820758568.a n : ℤ) = A368247 (n + 1)

end A368247

/-! ## A368247.P11379210751787411210

`gcd(A026097(n), A256690(n+1))`
-/

namespace A368247.P11379210751787411210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026097 n) (A256690 (n + 1))

end

end A368247.P11379210751787411210

namespace A368247

/-- `gcd(A026097(n), A256690(n+1))` -/
def P11379210751787411210.Spec : Prop :=
  ∀ n, (P11379210751787411210.a n : ℤ) = A368247 (n + 1)

end A368247

/-! ## A368247.P106901048186974019

`gcd(A140429(n), A294873(n+1))`
-/

namespace A368247.P106901048186974019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140429 n) (A294873 (n + 1))

end

end A368247.P106901048186974019

namespace A368247

/-- `gcd(A140429(n), A294873(n+1))` -/
def P106901048186974019.Spec : Prop :=
  ∀ n, (P106901048186974019.a n : ℤ) = A368247 (n + 1)

end A368247

/-! ## A368247.P5369576979520238200

`gcd(A155734(n), A294875(n+1))`
-/

namespace A368247.P5369576979520238200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155734 n) (A294875 (n + 1))

end

end A368247.P5369576979520238200

namespace A368247

/-- `gcd(A155734(n), A294875(n+1))` -/
def P5369576979520238200.Spec : Prop :=
  ∀ n, (P5369576979520238200.a n : ℤ) = A368247 (n + 1)

end A368247

/-! ## A368247.P1219103980963923922

`gcd(A376478(n+1), A383292(n+1))`
-/

namespace A368247.P1219103980963923922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A376478 (n + 1)) (A383292 (n + 1))

end

end A368247.P1219103980963923922

namespace A368247

/-- `gcd(A376478(n+1), A383292(n+1))` -/
def P1219103980963923922.Spec : Prop :=
  ∀ n, (P1219103980963923922.a n : ℤ) = A368247 (n + 1)

end A368247

/-! ## A368247.P1237313395281279109

`gcd(A000244(n), A111217(n+1))`
-/

namespace A368247.P1237313395281279109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000244 n) (A111217 (n + 1))

end

end A368247.P1237313395281279109

namespace A368247

/-- `gcd(A000244(n), A111217(n+1))` -/
def P1237313395281279109.Spec : Prop :=
  ∀ n, (P1237313395281279109.a n : ℤ) = A368247 (n + 1)

end A368247

/-! ## A368247.P17177510776559243019

`gcd(A003946(n), A256690(n+1))`
-/

namespace A368247.P17177510776559243019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003946 n) (A256690 (n + 1))

end

end A368247.P17177510776559243019

namespace A368247

/-- `gcd(A003946(n), A256690(n+1))` -/
def P17177510776559243019.Spec : Prop :=
  ∀ n, (P17177510776559243019.a n : ℤ) = A368247 (n + 1)

end A368247

/-! ## A368247.P6594553719816486055

`gcd(A084244(n), A257101(n+1))`
-/

namespace A368247.P6594553719816486055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084244 n) (A257101 (n + 1))

end

end A368247.P6594553719816486055

namespace A368247

/-- `gcd(A084244(n), A257101(n+1))` -/
def P6594553719816486055.Spec : Prop :=
  ∀ n, (P6594553719816486055.a n : ℤ) = A368247 (n + 1)

end A368247

/-! ## A368247.P5922637327725248847

`gcd(2*A294875(n+1), A352779(n))`
-/

namespace A368247.P5922637327725248847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A294875 (n + 1)) (A352779 n)

end

end A368247.P5922637327725248847

namespace A368247

/-- `gcd(2*A294875(n+1), A352779(n))` -/
def P5922637327725248847.Spec : Prop :=
  ∀ n, (P5922637327725248847.a n : ℤ) = A368247 (n + 1)

end A368247

/-! ## A368247.P17234270487106888203

`gcd(A005030(n), A257101(n+1))`
-/

namespace A368247.P17234270487106888203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005030 n) (A257101 (n + 1))

end

end A368247.P17234270487106888203

namespace A368247

/-- `gcd(A005030(n), A257101(n+1))` -/
def P17234270487106888203.Spec : Prop :=
  ∀ n, (P17234270487106888203.a n : ℤ) = A368247 (n + 1)

end A368247

/-! ## A368247.P4330919270214704141

`gcd(A383292(n+1), A383912(n))`
-/

namespace A368247.P4330919270214704141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A383292 (n + 1)) (A383912 n)

end

end A368247.P4330919270214704141

namespace A368247

/-- `gcd(A383292(n+1), A383912(n))` -/
def P4330919270214704141.Spec : Prop :=
  ∀ n, (P4330919270214704141.a n : ℤ) = A368247 (n + 1)

end A368247

/-! ## A368247.P13830030632328839129

`gcd(A235880(n+1), A354358(n+1))`
-/

namespace A368247.P13830030632328839129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A235880 (n + 1)) (A354358 (n + 1))

end

end A368247.P13830030632328839129

namespace A368247

/-- `gcd(A235880(n+1), A354358(n+1))` -/
def P13830030632328839129.Spec : Prop :=
  ∀ n, (P13830030632328839129.a n : ℤ) = A368247 (n + 1)

end A368247

/-!
# A368248: The number of unitary divisors of the cubefull part of n (A360540).

The programs for A368248, the canonical program `A368248.P13460108604890349551` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368248 has offset 1).

The definition of A368248 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307428, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368248.P13460108604890349551

`abs(A307428(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A368248

/-- `abs(A307428(n+1))` -/
def P13460108604890349551.Spec : Prop :=
  ∀ n, P13460108604890349551.a n = A368248 (n + 1)

theorem P13460108604890349551.correct : P13460108604890349551.Spec := by
  intro n
  simp only [A368248, Nat.add_sub_cancel]

end A368248

/-! ## A368248.P11017697482856568469

`A034444(A360540(n+1))`
-/

namespace A368248.P11017697482856568469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A360540 (n + 1)).toNat

end

end A368248.P11017697482856568469

namespace A368248

/-- `A034444(A360540(n+1))` -/
def P11017697482856568469.Spec : Prop :=
  ∀ n, P11017697482856568469.a n = A368248 (n + 1)

end A368248

/-! ## A368248.P625494934752475101

`A392452(A008834(n+1))`
-/

namespace A368248.P625494934752475101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392452 (A008834 (n + 1)).toNat

end

end A368248.P625494934752475101

namespace A368248

/-- `A392452(A008834(n+1))` -/
def P625494934752475101.Spec : Prop :=
  ∀ n, P625494934752475101.a n = A368248 (n + 1)

end A368248

/-! ## A368248.P627637234303858385

`A367516(A366906(n+1))`
-/

namespace A368248.P627637234303858385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367516 (A366906 (n + 1)).toNat

end

end A368248.P627637234303858385

namespace A368248

/-- `A367516(A366906(n+1))` -/
def P627637234303858385.Spec : Prop :=
  ∀ n, P627637234303858385.a n = A368248 (n + 1)

end A368248

/-! ## A368248.P15125785449406725814

`A368168(A368170(n+1))`
-/

namespace A368248.P15125785449406725814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368168 (A368170 (n + 1)).toNat

end

end A368248.P15125785449406725814

namespace A368248

/-- `A368168(A368170(n+1))` -/
def P15125785449406725814.Spec : Prop :=
  ∀ n, P15125785449406725814.a n = A368248 (n + 1)

end A368248

/-! ## A368248.P3163370694847621022

`gcd(A007038(n), A307428(n+1))`
-/

namespace A368248.P3163370694847621022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007038 n) (A307428 (n + 1))

end

end A368248.P3163370694847621022

namespace A368248

/-- `gcd(A007038(n), A307428(n+1))` -/
def P3163370694847621022.Spec : Prop :=
  ∀ n, (P3163370694847621022.a n : ℤ) = A368248 (n + 1)

end A368248

/-! ## A368248.P4515628461265669139

`lcm(A076479(n+1), A307428(n+1))`
-/

namespace A368248.P4515628461265669139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A076479 (n + 1)) (A307428 (n + 1))

end

end A368248.P4515628461265669139

namespace A368248

/-- `lcm(A076479(n+1), A307428(n+1))` -/
def P4515628461265669139.Spec : Prop :=
  ∀ n, (P4515628461265669139.a n : ℤ) = A368248 (n + 1)

end A368248

/-! ## A368248.P3596257681521416547

`∑{d}[n+1, A008966(#)*A112526((n+1)/#)]`
-/

namespace A368248.P3596257681521416547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A112526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368248.P3596257681521416547

namespace A368248

/-- `∑{d}[n+1, A008966(#)*A112526((n+1)/#)]` -/
def P3596257681521416547.Spec : Prop :=
  ∀ n, P3596257681521416547.a n = A368248 (n + 1)

end A368248

/-! ## A368248.P3566678232907024149

`∑{d}[n+1, A005361(#)*A271102((n+1)/#)]`
-/

namespace A368248.P3566678232907024149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005361 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368248.P3566678232907024149

namespace A368248

/-- `∑{d}[n+1, A005361(#)*A271102((n+1)/#)]` -/
def P3566678232907024149.Spec : Prop :=
  ∀ n, P3566678232907024149.a n = A368248 (n + 1)

end A368248

/-! ## A368248.P10134948712385381043

`∑{d}[n+1, A007427(#)*A389831((n+1)/#)]`
-/

namespace A368248.P10134948712385381043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A389831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368248.P10134948712385381043

namespace A368248

/-- `∑{d}[n+1, A007427(#)*A389831((n+1)/#)]` -/
def P10134948712385381043.Spec : Prop :=
  ∀ n, P10134948712385381043.a n = A368248 (n + 1)

end A368248

/-! ## A368248.P15905985453711890063

`∑{d}[n+1, A069208(#)*A328729((n+1)/#)]`
-/

namespace A368248.P15905985453711890063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069208 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368248.P15905985453711890063

namespace A368248

/-- `∑{d}[n+1, A069208(#)*A328729((n+1)/#)]` -/
def P15905985453711890063.Spec : Prop :=
  ∀ n, P15905985453711890063.a n = A368248 (n + 1)

end A368248

/-! ## A368248.P1700661382329421769

`∑{d}[n+1, A034444(#)*A363551((n+1)/#)]`
-/

namespace A368248.P1700661382329421769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A363551 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368248.P1700661382329421769

namespace A368248

/-- `∑{d}[n+1, A034444(#)*A363551((n+1)/#)]` -/
def P1700661382329421769.Spec : Prop :=
  ∀ n, P1700661382329421769.a n = A368248 (n + 1)

end A368248

/-! ## A368248.P7801481417043677132

`lcm(A210247(n), A307428(n+1))`
-/

namespace A368248.P7801481417043677132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A210247 n) (A307428 (n + 1))

end

end A368248.P7801481417043677132

namespace A368248

/-- `lcm(A210247(n), A307428(n+1))` -/
def P7801481417043677132.Spec : Prop :=
  ∀ n, (P7801481417043677132.a n : ℤ) = A368248 (n + 1)

end A368248

/-! ## A368248.P13347353398511562575

`gcd(A001792(n), A307428(n+1))`
-/

namespace A368248.P13347353398511562575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001792 n) (A307428 (n + 1))

end

end A368248.P13347353398511562575

namespace A368248

/-- `gcd(A001792(n), A307428(n+1))` -/
def P13347353398511562575.Spec : Prop :=
  ∀ n, (P13347353398511562575.a n : ℤ) = A368248 (n + 1)

end A368248

/-! ## A368248.P7670401273337165903

`gcd(A001788(n), A307428(n+1))`
-/

namespace A368248.P7670401273337165903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001788 n) (A307428 (n + 1))

end

end A368248.P7670401273337165903

namespace A368248

/-- `gcd(A001788(n), A307428(n+1))` -/
def P7670401273337165903.Spec : Prop :=
  ∀ n, (P7670401273337165903.a n : ℤ) = A368248 (n + 1)

end A368248

/-! ## A368248.P16973876802921932132

`gcd(A007462(n), A072911(n+1))`
-/

namespace A368248.P16973876802921932132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007462 n) (A072911 (n + 1))

end

end A368248.P16973876802921932132

namespace A368248

/-- `gcd(A007462(n), A072911(n+1))` -/
def P16973876802921932132.Spec : Prop :=
  ∀ n, (P16973876802921932132.a n : ℤ) = A368248 (n + 1)

end A368248

/-! ## A368248.P17969522652986502930

`gcd(A091003(n), A368172(n+1))`
-/

namespace A368248.P17969522652986502930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091003 n) (A368172 (n + 1))

end

end A368248.P17969522652986502930

namespace A368248

/-- `gcd(A091003(n), A368172(n+1))` -/
def P17969522652986502930.Spec : Prop :=
  ∀ n, (P17969522652986502930.a n : ℤ) = A368248 (n + 1)

end A368248

/-! ## A368248.P8264534176231134055

`A294873(gcd(A140429(n), A294873(n+1)))`
-/

namespace A368248.P8264534176231134055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294873 (Int.gcd (A140429 n) (A294873 (n + 1)))

end

end A368248.P8264534176231134055

namespace A368248

/-- `A294873(gcd(A140429(n), A294873(n+1)))` -/
def P8264534176231134055.Spec : Prop :=
  ∀ n, P8264534176231134055.a n = A368248 (n + 1)

end A368248

/-! ## A368248.P1387621357567921911

`A294875(gcd(A294875(n+1)², A273893(n)))`
-/

namespace A368248.P1387621357567921911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294875 (Int.gcd (A294875 (n + 1) ^ 2) (A273893 n))

end

end A368248.P1387621357567921911

namespace A368248

/-- `A294875(gcd(A294875(n+1)², A273893(n)))` -/
def P1387621357567921911.Spec : Prop :=
  ∀ n, P1387621357567921911.a n = A368248 (n + 1)

end A368248

/-! ## A368248.P6275743605923117154

`gcd(A084182(n), A368172(n+1))`
-/

namespace A368248.P6275743605923117154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084182 n) (A368172 (n + 1))

end

end A368248.P6275743605923117154

namespace A368248

/-- `gcd(A084182(n), A368172(n+1))` -/
def P6275743605923117154.Spec : Prop :=
  ∀ n, (P6275743605923117154.a n : ℤ) = A368248 (n + 1)

end A368248

/-!
# A368249: a(n) = A002378(A005117(n)-1).

The programs for A368249, the canonical program `A368249.P9478047494338687151` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368249 has offset 1).

The definition of A368249 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002378(A005117(n+1)-1)` (program `A368249.P9478047494338687151`, by `A368249.P9478047494338687151.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368249.P9478047494338687151

`A002378(A005117(n+1)-1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A368249

/-- `A002378(A005117(n+1)-1)` -/
def P9478047494338687151.Spec : Prop :=
  ∀ n, P9478047494338687151.a n = A368249 (n + 1)

theorem P9478047494338687151.correct : P9478047494338687151.Spec := by
  intro n
  simp only [A368249, Nat.add_sub_cancel]

end A368249

/-! ## A368249.P282549225227449725

`record[n*A007913(n+1)]`
-/

namespace A368249.P282549225227449725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368249.P282549225227449725

namespace A368249

/-- `record[n*A007913(n+1)]` -/
def P282549225227449725.Spec : Prop :=
  ∀ n, P282549225227449725.a n = A368249 (n + 1)

end A368249

/-! ## A368249.P2070526370190051836

`record[n*A007947(n+1)]`
-/

namespace A368249.P2070526370190051836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368249.P2070526370190051836

namespace A368249

/-- `record[n*A007947(n+1)]` -/
def P2070526370190051836.Spec : Prop :=
  ∀ n, P2070526370190051836.a n = A368249 (n + 1)

end A368249

/-! ## A368249.P11295160932810945197

`record[n*A055231(n+1)]`
-/

namespace A368249.P11295160932810945197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368249.P11295160932810945197

namespace A368249

/-- `record[n*A055231(n+1)]` -/
def P11295160932810945197.Spec : Prop :=
  ∀ n, P11295160932810945197.a n = A368249 (n + 1)

end A368249

/-! ## A368249.P17437332687780688713

`record[n*A083346(n+1)]`
-/

namespace A368249.P17437332687780688713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A083346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368249.P17437332687780688713

namespace A368249

/-- `record[n*A083346(n+1)]` -/
def P17437332687780688713.Spec : Prop :=
  ∀ n, P17437332687780688713.a n = A368249 (n + 1)

end A368249

/-! ## A368249.P14306086720111255969

`record[n*A325978(n+1)]`
-/

namespace A368249.P14306086720111255969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A325978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368249.P14306086720111255969

namespace A368249

/-- `record[n*A325978(n+1)]` -/
def P14306086720111255969.Spec : Prop :=
  ∀ n, P14306086720111255969.a n = A368249 (n + 1)

end A368249

/-! ## A368249.P9255576869956433703

`record[abs(n*A055615(n+1))]`
-/

namespace A368249.P9255576869956433703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A055615 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368249.P9255576869956433703

namespace A368249

/-- `record[abs(n*A055615(n+1))]` -/
def P9255576869956433703.Spec : Prop :=
  ∀ n, P9255576869956433703.a n = A368249 (n + 1)

end A368249

/-! ## A368249.P16841218656497368717

`A062503(n+1)-A005117(n+1)`
-/

namespace A368249.P16841218656497368717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1) - A005117 (n + 1)

end

end A368249.P16841218656497368717

namespace A368249

/-- `A062503(n+1)-A005117(n+1)` -/
def P16841218656497368717.Spec : Prop :=
  ∀ n, P16841218656497368717.a n = A368249 (n + 1)

end A368249

/-! ## A368249.P11870553180461092669

`∪[A370494(n+1), A370495(n+1)]`
-/

namespace A368249.P11870553180461092669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368249.P11870553180461092669

namespace A368249

/-- `∪[A370494(n+1), A370495(n+1)]` -/
def P11870553180461092669.Spec : Prop :=
  ∀ n, (P11870553180461092669.a n : ℤ) = A368249 (n + 1)

end A368249

/-! ## A368249.P13326179783978518071

`A062838(n+1)/A005117(n+1)-A005117(n+1)`
-/

namespace A368249.P13326179783978518071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062838 (n + 1) : ℚ) / (A005117 (n + 1) : ℚ) - (A005117 (n + 1) : ℚ)

end

end A368249.P13326179783978518071

namespace A368249

/-- `A062838(n+1)/A005117(n+1)-A005117(n+1)` -/
def P13326179783978518071.Spec : Prop :=
  ∀ n, P13326179783978518071.a n = (A368249 (n + 1) : ℚ)

end A368249

/-! ## A368249.P3297147279212497297

`A062503(n+1)-A062838(n+1)/A062503(n+1)`
-/

namespace A368249.P3297147279212497297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062503 (n + 1) : ℚ) - (A062838 (n + 1) : ℚ) / (A062503 (n + 1) : ℚ)

end

end A368249.P3297147279212497297

namespace A368249

/-- `A062503(n+1)-A062838(n+1)/A062503(n+1)` -/
def P3297147279212497297.Spec : Prop :=
  ∀ n, P3297147279212497297.a n = (A368249 (n + 1) : ℚ)

end A368249

/-! ## A368249.P614992512858160148

`record[n*A325314(n+1)]`
-/

namespace A368249.P614992512858160148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A325314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368249.P614992512858160148

namespace A368249

/-- `record[n*A325314(n+1)]` -/
def P614992512858160148.Spec : Prop :=
  ∀ n, P614992512858160148.a n = A368249 (n + 1)

end A368249

/-! ## A368249.P4080943908363108763

`record[n*A347230(n+1)]`
-/

namespace A368249.P4080943908363108763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A347230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368249.P4080943908363108763

namespace A368249

/-- `record[n*A347230(n+1)]` -/
def P4080943908363108763.Spec : Prop :=
  ∀ n, P4080943908363108763.a n = A368249 (n + 1)

end A368249

/-! ## A368249.P8486004491120779679

`A062503(n+1)-A382888(A371188(n+1))`
-/

namespace A368249.P8486004491120779679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1) - A382888 (A371188 (n + 1)).toNat

end

end A368249.P8486004491120779679

namespace A368249

/-- `A062503(n+1)-A382888(A371188(n+1))` -/
def P8486004491120779679.Spec : Prop :=
  ∀ n, P8486004491120779679.a n = A368249 (n + 1)

end A368249

/-! ## A368249.P9637139952746751082

`record[n*∏{p}[n+1, #]]`
-/

namespace A368249.P9637139952746751082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368249.P9637139952746751082

namespace A368249

/-- `record[n*∏{p}[n+1, #]]` -/
def P9637139952746751082.Spec : Prop :=
  ∀ n, (P9637139952746751082.a n : ℤ) = A368249 (n + 1)

end A368249

/-! ## A368249.P5658009629628600762

`record[n*(∏{p}[n, #]-1)]`
-/

namespace A368249.P5658009629628600762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368249.P5658009629628600762

namespace A368249

/-- `record[n*(∏{p}[n, #]-1)]` -/
def P5658009629628600762.Spec : Prop :=
  ∀ n, P5658009629628600762.a n = A368249 (n + 1)

end A368249

/-! ## A368249.P14331804292559834123

`record[lcm(n, ∏{p}[n+1, #])]`
-/

namespace A368249.P14331804292559834123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368249.P14331804292559834123

namespace A368249

/-- `record[lcm(n, ∏{p}[n+1, #])]` -/
def P14331804292559834123.Spec : Prop :=
  ∀ n, (P14331804292559834123.a n : ℤ) = A368249 (n + 1)

end A368249

/-! ## A368249.P14281103425875831928

`record[n/∏{p}[n+1, 1/#]]`
-/

namespace A368249.P14281103425875831928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), 1 / (p : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368249.P14281103425875831928

namespace A368249

/-- `record[n/∏{p}[n+1, 1/#]]` -/
def P14281103425875831928.Spec : Prop :=
  ∀ n, P14281103425875831928.a n = (A368249 (n + 1) : ℚ)

end A368249

/-! ## A368249.P1857804249825577606

`record[(n-1)*n/∏{e}[n, #]]`
-/

namespace A368249.P1857804249825577606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) * ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368249.P1857804249825577606

namespace A368249

/-- `record[(n-1)*n/∏{e}[n, #]]` -/
def P1857804249825577606.Spec : Prop :=
  ∀ n, P1857804249825577606.a n = (A368249 (n + 1) : ℚ)

end A368249

/-! ## A368249.P5787225211885293558

`record[∏{p}[n+1, #²]-(n+1)]`
-/

namespace A368249.P5787225211885293558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p ^ 2 : ℕ) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368249.P5787225211885293558

namespace A368249

/-- `record[∏{p}[n+1, #²]-(n+1)]` -/
def P5787225211885293558.Spec : Prop :=
  ∀ n, P5787225211885293558.a n = A368249 (n + 1)

end A368249

/-!
# A368251: The number of nonsquarefree divisors of n that are powers of squarefree numbers (A072777).

The programs for A368251, the canonical program `A368251.P3199248697924659099` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368251 has offset 1).

The definition of A368251 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327527, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368251.P3199248697924659099

`A327527(n+1)-A034444(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A368251

/-- `A327527(n+1)-A034444(n+1)` -/
def P3199248697924659099.Spec : Prop :=
  ∀ n, P3199248697924659099.a n = A368251 (n + 1)

theorem P3199248697924659099.correct : P3199248697924659099.Spec := by
  intro n
  simp only [A368251, Nat.add_sub_cancel]

end A368251

/-! ## A368251.P1759168581762252177

`A327527((n+1)/∏{p}[n+1, #])-1`
-/

namespace A368251.P1759168581762252177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat - 1

end

end A368251.P1759168581762252177

namespace A368251

/-- `A327527((n+1)/∏{p}[n+1, #])-1` -/
def P1759168581762252177.Spec : Prop :=
  ∀ n, P1759168581762252177.a n = A368251 (n + 1)

end A368251

/-! ## A368251.P17484473211255381911

`A327527(A336551(n+1)+1)-1`
-/

namespace A368251.P17484473211255381911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (A336551 (n + 1) + 1).toNat - 1

end

end A368251.P17484473211255381911

namespace A368251

/-- `A327527(A336551(n+1)+1)-1` -/
def P17484473211255381911.Spec : Prop :=
  ∀ n, P17484473211255381911.a n = A368251 (n + 1)

end A368251

/-! ## A368251.P16551151959435181297

`A327527(gcd(n+1, A065967(n+1)))-1`
-/

namespace A368251.P16551151959435181297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (Int.gcd (n + 1 : ℤ) (A065967 (n + 1))) - 1

end

end A368251.P16551151959435181297

namespace A368251

/-- `A327527(gcd(n+1, A065967(n+1)))-1` -/
def P16551151959435181297.Spec : Prop :=
  ∀ n, P16551151959435181297.a n = A368251 (n + 1)

end A368251

/-! ## A368251.P12565078000856684632

`A048675(A292589(n+1))`
-/

namespace A368251.P12565078000856684632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A292589 (n + 1)).toNat

end

end A368251.P12565078000856684632

namespace A368251

/-- `A048675(A292589(n+1))` -/
def P12565078000856684632.Spec : Prop :=
  ∀ n, P12565078000856684632.a n = A368251 (n + 1)

end A368251

/-! ## A368251.P11382610803544494599

`A091050(n+1)-A054977(A079062(n+1))`
-/

namespace A368251.P11382610803544494599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (n + 1) - A054977 (A079062 (n + 1)).toNat

end

end A368251.P11382610803544494599

namespace A368251

/-- `A091050(n+1)-A054977(A079062(n+1))` -/
def P11382610803544494599.Spec : Prop :=
  ∀ n, P11382610803544494599.a n = A368251 (n + 1)

end A368251

/-! ## A368251.P12796759735851258804

`A091050(n+1)-A227690(A280511(n+1))`
-/

namespace A368251.P12796759735851258804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (n + 1) - A227690 (A280511 (n + 1)).toNat

end

end A368251.P12796759735851258804

namespace A368251

/-- `A091050(n+1)-A227690(A280511(n+1))` -/
def P12796759735851258804.Spec : Prop :=
  ∀ n, P12796759735851258804.a n = A368251 (n + 1)

end A368251

/-! ## A368251.P1115751382416727849

`A091050(n+1)-A054977(A065941(2*(n+2)))`
-/

namespace A368251.P1115751382416727849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (n + 1) - A054977 (A065941 (2 * (n + 2))).toNat

end

end A368251.P1115751382416727849

namespace A368251

/-- `A091050(n+1)-A054977(A065941(2*(n+2)))` -/
def P1115751382416727849.Spec : Prop :=
  ∀ n, P1115751382416727849.a n = A368251 (n + 1)

end A368251

/-! ## A368251.P8374716236000620909

`A091050(n+1)-A010054(record[C(n, 2)-n]-n)`
-/

namespace A368251.P8374716236000620909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (n + 1) - A010054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A368251.P8374716236000620909

namespace A368251

/-- `A091050(n+1)-A010054(record[C(n, 2)-n]-n)` -/
def P8374716236000620909.Spec : Prop :=
  ∀ n, P8374716236000620909.a n = A368251 (n + 1)

end A368251

/-! ## A368251.P13679301073185231238

`A091050(n+1)-A010054(floor((2*n+1)²/8))`
-/

namespace A368251.P13679301073185231238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (n + 1) - A010054 ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋.toNat

end

end A368251.P13679301073185231238

namespace A368251

/-- `A091050(n+1)-A010054(floor((2*n+1)²/8))` -/
def P13679301073185231238.Spec : Prop :=
  ∀ n, P13679301073185231238.a n = A368251 (n + 1)

end A368251

/-! ## A368251.P14557310170350355819

`A091050(n+1)-A000035(A183010(3*n+2))`
-/

namespace A368251.P14557310170350355819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (n + 1) - A000035 (A183010 (3 * n + 2)).toNat

end

end A368251.P14557310170350355819

namespace A368251

/-- `A091050(n+1)-A000035(A183010(3*n+2))` -/
def P14557310170350355819.Spec : Prop :=
  ∀ n, P14557310170350355819.a n = A368251 (n + 1)

end A368251

/-! ## A368251.P10707801862340741562

`A077808(A256690(n+1))`
-/

namespace A368251.P10707801862340741562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077808 (A256690 (n + 1)).toNat

end

end A368251.P10707801862340741562

namespace A368251

/-- `A077808(A256690(n+1))` -/
def P10707801862340741562.Spec : Prop :=
  ∀ n, P10707801862340741562.a n = A368251 (n + 1)

end A368251

/-!
# A368254: Table read by downward antidiagonals: T(n,k) is the number of tilings of the n X k cylinder up to horizontal and vertical reflections by a tile that is fixed under horizontal reflections but not vertical reflections.

The programs for A368254, there is no canonical definition to state claims against.
-/

/-! ## A368254.P7847981532221539351

`A368263(n+1)-A281563(n+1)*A321935(A368263(n+1))`
-/

namespace A368254.P7847981532221539351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368263 (n + 1) - A281563 (n + 1) * A321935 (A368263 (n + 1)).toNat

end

end A368254.P7847981532221539351

/-!
# A368256: Table read by downward antidiagonals: T(n,k) is the number of tilings of the n X k cylinder up to horizontal and vertical reflections by a tile that is fixed under 180-degree rotation but not horizontal or vertical reflections.

The programs for A368256, there is no canonical definition to state claims against.
-/

/-! ## A368256.P432641870068077971

`A368255(A043317(n+1))`
-/

namespace A368256.P432641870068077971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368255 (A043317 (n + 1)).toNat

end

end A368256.P432641870068077971

/-! ## A368256.P892638545190866863

`A368255(A044914(n+1))`
-/

namespace A368256.P892638545190866863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368255 (A044914 (n + 1)).toNat

end

end A368256.P892638545190866863

/-! ## A368256.P2517640709060612846

`A368255(A055648(n+1))`
-/

namespace A368256.P2517640709060612846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368255 (A055648 (n + 1)).toNat

end

end A368256.P2517640709060612846

/-! ## A368256.P1848408095375290264

`A368255(A132378(n+1))`
-/

namespace A368256.P1848408095375290264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368255 (A132378 (n + 1)).toNat

end

end A368256.P1848408095375290264

/-! ## A368256.P14847043264284699740

`A368255(A004863(n+2))`
-/

namespace A368256.P14847043264284699740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368255 (A004863 (n + 2)).toNat

end

end A368256.P14847043264284699740

/-!
# A368258: Table read by downward antidiagonals: T(n,k) is the number of tilings of the n X k cylinder up to horizontal reflections by two tiles that are each fixed under horizontal reflection.

The programs for A368258, there is no canonical definition to state claims against.
-/

/-! ## A368258.P1590963584618353092

`A179978(A368264(n+1)+A047753(n+1))`
-/

namespace A368258.P1590963584618353092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179978 (A368264 (n + 1) + A047753 (n + 1)).toNat

end

end A368258.P1590963584618353092

/-! ## A368258.P12043074437140338386

`A368264(floor(A117403(n)/A368264(3*n+4))+n+1)`
-/

namespace A368258.P12043074437140338386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368264 (⌊(A117403 n : ℚ) / (A368264 (3 * n + 4) : ℚ)⌋ + (n + 1 : ℤ)).toNat

end

end A368258.P12043074437140338386

/-!
# A368260: Table read by downward antidiagonals: T(n,k) is the number of tilings of the n X k cylinder up to vertical reflections by two tiles that are each fixed under vertical reflection.

The programs for A368260, there is no canonical definition to state claims against.
-/

/-! ## A368260.P8427198050701283981

`A369426(A052548(n+2))+A368253(n+1)`
-/

namespace A368260.P8427198050701283981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369426 (A052548 (n + 2)).toNat + A368253 (n + 1)

end

end A368260.P8427198050701283981

/-! ## A368260.P10930413974876131289

`A368253(n+1)+A010051(A060539(3*n+4))`
-/

namespace A368260.P10930413974876131289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368253 (n + 1) + A010051 (A060539 (3 * n + 4)).toNat

end

end A368260.P10930413974876131289

/-!
# A368261: Table read by downward antidiagonals: T(n,k) is the number of tilings of the n X k cylinder up to vertical reflection by an asymmetric tile.

The programs for A368261, there is no canonical definition to state claims against.
-/

/-! ## A368261.P11124075707271000323

`A033676(A368260(n+1)*A368263(n+1))`
-/

namespace A368261.P11124075707271000323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A368260 (n + 1) * A368263 (n + 1)).toNat

end

end A368261.P11124075707271000323

/-!
# A368264: Table read by downward antidiagonals: T(n,k) is the number of tilings of the n X k cylinder by two distinct tiles.

The programs for A368264, there is no canonical definition to state claims against.
-/

/-! ## A368264.P6782324256458480885

`A179978(A368258(n+1))`
-/

namespace A368264.P6782324256458480885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179978 (A368258 (n + 1)).toNat

end

end A368264.P6782324256458480885

/-!
# A368265: Expansion of e.g.f. exp(2*x) / (1 - x*exp(x)).

The programs for A368265, the canonical program `A368265.P8400078420579508816` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368265 has offset 0).

The definition of A368265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368265.P8400078420579508816

`n!*∑{#}[n, (n-#+2)^#/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368265

/-- `n!*∑{#}[n, (n-#+2)^#/#!]` -/
def P8400078420579508816.Spec : Prop :=
  ∀ n, P8400078420579508816.a n = (A368265 n : ℚ)

end A368265

/-! ## A368265.P17824864843303545428

`(A072597(n+1)-1)/(n+1)`
-/

namespace A368265.P17824864843303545428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072597 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A368265.P17824864843303545428

namespace A368265

/-- `(A072597(n+1)-1)/(n+1)` -/
def P17824864843303545428.Spec : Prop :=
  ∀ n, P17824864843303545428.a n = (A368265 n : ℚ)

end A368265

/-!
# A368266: Expansion of e.g.f. exp(-2*x) / (1 - x*exp(x)).

The programs for A368266, the canonical program `A368266.P5736205402756777502` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368266 has offset 0).

The definition of A368266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368266.P5736205402756777502

`n!*∑{#}[n, (n-#-2)^#/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368266

/-- `n!*∑{#}[n, (n-#-2)^#/#!]` -/
def P5736205402756777502.Spec : Prop :=
  ∀ n, P5736205402756777502.a n = (A368266 n : ℚ)

end A368266

/-!
# A368267: Expansion of e.g.f. exp(2*x) / (1 - 2*x*exp(x)).

The programs for A368267, there is no canonical definition to state claims against.
-/

/-! ## A368267.P9115955402856746736

`A000720(A371363(n)+A084057(n))`
-/

namespace A368267.P9115955402856746736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A371363 n + A084057 n).toNat

end

end A368267.P9115955402856746736

/-!
# A368268: Expansion of e.g.f. exp(-x) / (1 - 2*x*exp(x)).

The programs for A368268, the canonical program `A368268.P13797546240732535930` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368268 has offset 0).

The definition of A368268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368268.P13797546240732535930

`n!*∑{#}[n, 2^(n-#)*(n-#-1)^#/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368268

/-- `n!*∑{#}[n, 2^(n-#)*(n-#-1)^#/#!]` -/
def P13797546240732535930.Spec : Prop :=
  ∀ n, P13797546240732535930.a n = (A368268 n : ℚ)

end A368268

/-!
# A368269: Expansion of e.g.f. exp(-2*x) / (1 - 2*x*exp(x)).

The programs for A368269, the canonical program `A368269.P17971641939292058725` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368269 has offset 0).

The definition of A368269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368269.P17971641939292058725

`n!*∑{#}[n, 2^(n-#)*(n-#-2)^#/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368269

/-- `n!*∑{#}[n, 2^(n-#)*(n-#-2)^#/#!]` -/
def P17971641939292058725.Spec : Prop :=
  ∀ n, P17971641939292058725.a n = (A368269 n : ℚ)

end A368269

/-!
# A368270: a(n) = Sum_{k=0..n} 2^(n-k) * k^n.

The programs for A368270, the canonical program `A368270.P5593215447408581550` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368270 has offset 0).

The definition of A368270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368270.P5593215447408581550

`∑{#}[n, 2^(n-#)*#^n]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368270

/-- `∑{#}[n, 2^(n-#)*#^n]` -/
def P5593215447408581550.Spec : Prop :=
  ∀ n, P5593215447408581550.a n = (A368270 n : ℚ)

end A368270

/-!
# A368276: Number of nonnegative representations of n = w*x + y*z with max(w, x) < min(y, z) and w <= x <= y <= z.

The programs for A368276, there is no canonical definition to state claims against.
-/

/-! ## A368276.P13663695544749524829

`A302481(n+3)+A001222(A324886(n+1))`
-/

namespace A368276.P13663695544749524829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302481 (n + 3) + A001222 (A324886 (n + 1)).toNat

end

end A368276.P13663695544749524829

/-! ## A368276.P8919614089475435661

`A007895(∑[A279824(n)])`
-/

namespace A368276.P8919614089475435661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A368276.P8919614089475435661

/-! ## A368276.P3960144606776969068

`xor(A059448(A207918(3*n+2)), A318287(n+1))`
-/

namespace A368276.P3960144606776969068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059448 (A207918 (3 * n + 2)).toNat) (A318287 (n + 1))

end

end A368276.P3960144606776969068

/-!
# A368278: Prime numbers that have an odd number of monotone Bacher representations (A368276).

The programs for A368278, there is no canonical definition to state claims against.
-/

/-! ## A368278.P7254872778532522542

`p?[p?[A128330(n+1)]+n]`
-/

namespace A368278.P7254872778532522542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128330 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A368278.P7254872778532522542

/-! ## A368278.P14641576032778409441

`eq[A003415(n), A375428(A344950(n+1))]`
-/

namespace A368278.P14641576032778409441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375428 (A344950 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368278.P14641576032778409441

/-! ## A368278.P18140435011335804356

`A308966(eq[A056239(n+1), A303364(n+5)])`
-/

namespace A368278.P18140435011335804356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303364 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308966 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A368278.P18140435011335804356

/-!
# A368279: a(n) is the number of compositions of n where the first part is the largest part and the last part is not 1. Row sums of A368579.

The programs for A368279, there is no canonical definition to state claims against.
-/

/-! ## A368279.P16405985360945310855

`A007059(n+1)-A007059(n)`
-/

namespace A368279.P16405985360945310855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (n + 1) - A007059 n

end

end A368279.P16405985360945310855

/-! ## A368279.P15195762312391703950

`∑[A369116(n)]`
-/

namespace A368279.P15195762312391703950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368279.P15195762312391703950

/-! ## A368279.P1902863489943400126

`Δ[A007059(n)]`
-/

namespace A368279.P1902863489943400126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368279.P1902863489943400126

/-! ## A368279.P13614914996440916839

`A079500(n)-A007059(n)`
-/

namespace A368279.P13614914996440916839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 n - A007059 n

end

end A368279.P13614914996440916839

/-! ## A368279.P8677491466096992746

`Δ[A079500(A004273(n)-n)-A000007(n)]`
-/

namespace A368279.P8677491466096992746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 (A004273 n - (n : ℤ)).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368279.P8677491466096992746

/-! ## A368279.P17229444228528646361

`A079500(n)-(A369116(n+1)+A188541(n))`
-/

namespace A368279.P17229444228528646361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 n - (A369116 (n + 1) + A188541 n)

end

end A368279.P17229444228528646361

/-! ## A368279.P10861473709699260554

`A079500(n+1)-(A369116(n+1)+A079500(n))`
-/

namespace A368279.P10861473709699260554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 (n + 1) - (A369116 (n + 1) + A079500 n)

end

end A368279.P10861473709699260554

/-! ## A368279.P11167881810553727447

`Δ[A336482(n)]-A336482(n)`
-/

namespace A368279.P11167881810553727447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A336482 n

end

end A368279.P11167881810553727447

/-! ## A368279.P3548560194008094625

`A336482(n+1)-2*A336482(n)`
-/

namespace A368279.P3548560194008094625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336482 (n + 1) - 2 * A336482 n

end

end A368279.P3548560194008094625

/-!
# A368281: Table T(n,k) n>=1, k>=1, read by downwards antidiagonals where the n-th row is the fixed point of the morphism 0->R(n), 1->R(n)0, where R(n) is the n-th repunit (A002275).

The programs for A368281, there is no canonical definition to state claims against.
-/

/-! ## A368281.P8490182155082768688

`A368282(A014132(n+1))-A368282(n+1)`
-/

namespace A368281.P8490182155082768688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368282 (A014132 (n + 1)).toNat - A368282 (n + 1)

end

end A368281.P8490182155082768688

/-! ## A368281.P313635108976662508

`A285657(A353840(n+1)+A182362(2*n+3))`
-/

namespace A368281.P313635108976662508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285657 (A353840 (n + 1) + A182362 (2 * n + 3)).toNat

end

end A368281.P313635108976662508

/-! ## A368281.P3431107514579804931

`A254651(A000120(3*n+2)*A188445(n+1))`
-/

namespace A368281.P3431107514579804931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (A000120 (3 * n + 2) * A188445 (n + 1)).toNat

end

end A368281.P3431107514579804931

/-! ## A368281.P17647710214767958744

`or(A309766(A028900(3*n+1)), A309766(3*n+2))`
-/

namespace A368281.P17647710214767958744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A309766 (A028900 (3 * n + 1)).toNat) (A309766 (3 * n + 2))

end

end A368281.P17647710214767958744

/-! ## A368281.P17421930549893126227

`A088911(2^A137587(n+1))`
-/

namespace A368281.P17421930549893126227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A137587 (n + 1) : ℤ))).toNat

end

end A368281.P17421930549893126227

/-!
# A368282: Table T(n,k) with n>=1 and k>=0, read by downwards antidiagonals where the n-th row is the sequence given by a(0) = 0 and a(k) = k - a(floor(a(k-1)/n)).

The programs for A368282, there is no canonical definition to state claims against.
-/

/-! ## A368282.P296341350209816986

`A000520(A126791(n))`
-/

namespace A368282.P296341350209816986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000520 (A126791 n).toNat

end

end A368282.P296341350209816986

/-! ## A368282.P11311216581450398523

`A077433(A113139(n))`
-/

namespace A368282.P11311216581450398523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077433 (A113139 n).toNat

end

end A368282.P11311216581450398523

/-! ## A368282.P10010017031331822767

`A077433(A177020(n))`
-/

namespace A368282.P10010017031331822767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077433 (A177020 n).toNat

end

end A368282.P10010017031331822767

/-! ## A368282.P8544995538117493640

`A077433(A188481(n))`
-/

namespace A368282.P8544995538117493640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077433 (A188481 n).toNat

end

end A368282.P8544995538117493640

/-! ## A368282.P1549588046029758021

`A004218(A344381(n))`
-/

namespace A368282.P1549588046029758021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A344381 n).toNat

end

end A368282.P1549588046029758021

/-!
# A368283: Expansion of e.g.f. exp(2*x) / (1 + log(1 - x)).

The programs for A368283, there is no canonical definition to state claims against.
-/

/-! ## A368283.P13809860351704234662

`A337430(n*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A368283.P13809860351704234662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A337430 ((n : ℤ) * a (n - 1)).toNat

end

end A368283.P13809860351704234662

/-!
# A368285: Expansion of e.g.f. exp(2*x) / (1 + 2*log(1 - x)).

The programs for A368285, there is no canonical definition to state claims against.
-/

/-! ## A368285.P12910613245921692915

`A354375(A232699(n))+A113351(n)`
-/

namespace A368285.P12910613245921692915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354375 (A232699 n).toNat + A113351 n

end

end A368285.P12910613245921692915

/-!
# A368286: Expansion of e.g.f. exp(-x) / (1 + 2*log(1 - x)).

The programs for A368286, there is no canonical definition to state claims against.
-/

/-! ## A368286.P11284069756868252447

`A199117(((n+1)^n+(n-1)^n)/2)+1`
-/

namespace A368286.P11284069756868252447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199117 (SequenceMachineLib.roundAway ((((n + 1) ^ n : ℤ) + ((n : ℤ) - 1) ^ n : ℚ) / 2)).toNat + 1

end

end A368286.P11284069756868252447

/-!
# A368287: Expansion of e.g.f. exp(-2*x) / (1 + 2*log(1 - x)).

The programs for A368287, there is no canonical definition to state claims against.
-/

/-! ## A368287.P10439679168899911967

`A385196(A078456(n+1)+1)`
-/

namespace A368287.P10439679168899911967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385196 (A078456 (n + 1) + 1).toNat

end

end A368287.P10439679168899911967

/-!
# A368288: Expansion of e.g.f. exp(2*x) / (1 - log(1+x)).

The programs for A368288, there is no canonical definition to state claims against.
-/

/-! ## A368288.P16219121787447834619

`A276214(A184018(n))`
-/

namespace A368288.P16219121787447834619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276214 (A184018 n).toNat

end

end A368288.P16219121787447834619

/-! ## A368288.P1743074572565805606

`∑[A248227(A000752(n))]`
-/

namespace A368288.P1743074572565805606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A000752 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368288.P1743074572565805606

/-!
# A368290: a(n) is the length of the longest palindromic subsequence at symmetrically-spaced indices ending at a(n-1); a(1)=1.

The programs for A368290, there is no canonical definition to state claims against.
-/

/-! ## A368290.P6036938342535843823

`xor(A318928(A279755(n)), A326448(n))`
-/

namespace A368290.P6036938342535843823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A318928 (A279755 n).toNat) (A326448 n)

end

end A368290.P6036938342535843823

/-! ## A368290.P14214987263742410361

`A319269(A323182(n)+A319270(n+1))`
-/

namespace A368290.P14214987263742410361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319269 (A323182 n + A319270 (n + 1)).toNat

end

end A368290.P14214987263742410361

/-! ## A368290.P1839027730802707489

`A217581(A070082(n+1)+A052329(n+1))`
-/

namespace A368290.P1839027730802707489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A070082 (n + 1) + A052329 (n + 1)).toNat

end

end A368290.P1839027730802707489

/-! ## A368290.P14081306749253135836

`A045778(A243003(n+1)+A194923(n+1))`
-/

namespace A368290.P14081306749253135836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A243003 (n + 1) + A194923 (n + 1)).toNat

end

end A368290.P14081306749253135836

/-!
# A368291: Expansion of e.g.f. exp(x) / (1 - x*exp(2*x)).

The programs for A368291, the canonical program `A368291.P5438708965001710542` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368291 has offset 0).

The definition of A368291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368291.P5438708965001710542

`n!*∑{#}[n, (2*(n-#)+1)^#/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368291

/-- `n!*∑{#}[n, (2*(n-#)+1)^#/#!]` -/
def P5438708965001710542.Spec : Prop :=
  ∀ n, P5438708965001710542.a n = (A368291 n : ℚ)

end A368291

/-!
# A368292: Expansion of e.g.f. exp(x) / (1 - x*exp(3*x)).

The programs for A368292, the canonical program `A368292.P5420029519767735048` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368292 has offset 0).

The definition of A368292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368292.P5420029519767735048

`n!*∑{#}[n, (3*(n-#)+1)^#/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368292

/-- `n!*∑{#}[n, (3*(n-#)+1)^#/#!]` -/
def P5420029519767735048.Spec : Prop :=
  ∀ n, P5420029519767735048.a n = (A368292 n : ℚ)

end A368292

/-!
# A368293: Expansion of e.g.f. exp(2*x) / (1 - x*exp(3*x)).

The programs for A368293, the canonical program `A368293.P11919450843161715470` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368293 has offset 0).

The definition of A368293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368293.P11919450843161715470

`n!*∑{#}[n, (3*(n-#)+2)^#/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368293

/-- `n!*∑{#}[n, (3*(n-#)+2)^#/#!]` -/
def P11919450843161715470.Spec : Prop :=
  ∀ n, P11919450843161715470.a n = (A368293 n : ℚ)

end A368293

/-!
# A368294: Expansion of e.g.f. exp(-x) / (1 - x*exp(2*x)).

The programs for A368294, the canonical program `A368294.P7285506866261327788` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368294 has offset 0).

The definition of A368294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368294.P7285506866261327788

`n!*∑{#}[n, (2*(n-#)-1)^#/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368294

/-- `n!*∑{#}[n, (2*(n-#)-1)^#/#!]` -/
def P7285506866261327788.Spec : Prop :=
  ∀ n, P7285506866261327788.a n = (A368294 n : ℚ)

end A368294

/-!
# A368295: Expansion of e.g.f. exp(-x) / (1 - x*exp(3*x)).

The programs for A368295, the canonical program `A368295.P6575341711762192840` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368295 has offset 0).

The definition of A368295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368295.P6575341711762192840

`n!*∑{#}[n, (3*(n-#)-1)^#/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368295

/-- `n!*∑{#}[n, (3*(n-#)-1)^#/#!]` -/
def P6575341711762192840.Spec : Prop :=
  ∀ n, P6575341711762192840.a n = (A368295 n : ℚ)

end A368295

/-!
# A368296: Square array T(n,k), n >= 2, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} k^(n-j) * floor(j/2).

The programs for A368296, there is no canonical definition to state claims against.
-/

/-! ## A368296.P8811403502790335090

`ceil(A112232(A258993(n+1))/3)`
-/

namespace A368296.P8811403502790335090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112232 (A258993 (n + 1)).toNat : ℚ) / 3⌉

end

end A368296.P8811403502790335090

/-! ## A368296.P8257686202777777010

`A107324(A132813(n))`
-/

namespace A368296.P8257686202777777010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107324 (A132813 n).toNat

end

end A368296.P8257686202777777010

/-! ## A368296.P17714476681530378115

`∑{e}[A329886(A059380(n+1)), #]`
-/

namespace A368296.P17714476681530378115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329886 (A059380 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A368296.P17714476681530378115

/-! ## A368296.P18262813966366448922

`A241710(A035317(n))+A035317(n)`
-/

namespace A368296.P18262813966366448922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241710 (A035317 n).toNat + A035317 n

end

end A368296.P18262813966366448922

/-! ## A368296.P8367158502962232527

`A318950(A008459(n))+A035317(n)`
-/

namespace A368296.P8367158502962232527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318950 (A008459 n).toNat + A035317 n

end

end A368296.P8367158502962232527

/-!
# A368297: Prime plane partition numbers.

The programs for A368297, there is no canonical definition to state claims against.
-/

/-! ## A368297.P8947087070233620562

`A000219(A285216(n+1))`
-/

namespace A368297.P8947087070233620562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 (A285216 (n + 1)).toNat

end

end A368297.P8947087070233620562

/-!
# A368299: a(n) is the number of permutations pi of [n] that avoid {231,321} so that pi^4 avoids 132.

The programs for A368299, the canonical program `A368299.P7609837562833274100` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368299 has offset 0).

The definition of A368299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368299.P12580224112058752185

`ogf(x/(1-2x+x^3-x^4+x^5))`
-/

namespace A368299.P12580224112058752185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 0, 1, -1, 1] n

end

end A368299.P12580224112058752185

namespace A368299

/-- `ogf(x/(1-2x+x^3-x^4+x^5))` -/
def P12580224112058752185.Spec : Prop :=
  ∀ n, P12580224112058752185.a n = A368299 n

end A368299

/-! ## A368299.P7609837562833274100

`1+a(n-1)+a(n-2)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368299

/-- `1+a(n-1)+a(n-2)+a(n-4)` -/
def P7609837562833274100.Spec : Prop :=
  ∀ n, (P7609837562833274100.a n : ℤ) = A368299 n

theorem P7609837562833274100.correct : P7609837562833274100.Spec := by
  intro n
  simp only [A368299]

end A368299

/-! ## A368299.P1935582540627107996

`A274110(n+1)-1`
-/

namespace A368299.P1935582540627107996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274110 (n + 1) - 1

end

end A368299.P1935582540627107996

namespace A368299

/-- `A274110(n+1)-1` -/
def P1935582540627107996.Spec : Prop :=
  ∀ n, P1935582540627107996.a n = A368299 n

end A368299

/-! ## A368299.P14479864551696583158

`∑[a(n-1)+a(n-2)+a(n-4)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A368299.P14479864551696583158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368299.P14479864551696583158

namespace A368299

/-- `∑[a(n-1)+a(n-2)+a(n-4)]` -/
def P14479864551696583158.Spec : Prop :=
  ∀ n, (P14479864551696583158.a n : ℤ) = A368299 n

end A368299

/-! ## A368299.P3508759006602554267

`∑[A181532(n)]`
-/

namespace A368299.P3508759006602554267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368299.P3508759006602554267

namespace A368299

/-- `∑[A181532(n)]` -/
def P3508759006602554267.Spec : Prop :=
  ∀ n, P3508759006602554267.a n = A368299 n

end A368299

/-! ## A368299.P12073501942322951902

`∑[A017818(2*n+1)]`
-/

namespace A368299.P12073501942322951902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368299.P12073501942322951902

namespace A368299

/-- `∑[A017818(2*n+1)]` -/
def P12073501942322951902.Spec : Prop :=
  ∀ n, P12073501942322951902.a n = A368299 n

end A368299

/-! ## A368299.P4914481337178871074

`∑[∑[A347493(n)]-A347493(n)]`
-/

namespace A368299.P4914481337178871074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347493 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A347493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368299.P4914481337178871074

namespace A368299

/-- `∑[∑[A347493(n)]-A347493(n)]` -/
def P4914481337178871074.Spec : Prop :=
  ∀ n, P4914481337178871074.a n = A368299 n

end A368299

/-! ## A368299.P10684810110911811788

`A193771(2*n)-A017818(2*n)`
-/

namespace A368299.P10684810110911811788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193771 (2 * n) - A017818 (2 * n)

end

end A368299.P10684810110911811788

namespace A368299

/-- `A193771(2*n)-A017818(2*n)` -/
def P10684810110911811788.Spec : Prop :=
  ∀ n, P10684810110911811788.a n = A368299 n

end A368299

/-! ## A368299.P16270987326595666568

`A233522(2*n+1)-A017830(2*n)`
-/

namespace A368299.P16270987326595666568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233522 (2 * n + 1) - A017830 (2 * n)

end

end A368299.P16270987326595666568

namespace A368299

/-- `A233522(2*n+1)-A017830(2*n)` -/
def P16270987326595666568.Spec : Prop :=
  ∀ n, P16270987326595666568.a n = A368299 n

end A368299

/-! ## A368299.P13024670568157004465

`∑[A060945(n)]-A060945(n)`
-/

namespace A368299.P13024670568157004465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A060945 n

end

end A368299.P13024670568157004465

namespace A368299

/-- `∑[A060945(n)]-A060945(n)` -/
def P13024670568157004465.Spec : Prop :=
  ∀ n, P13024670568157004465.a n = A368299 n

end A368299

/-! ## A368299.P17051209570319461443

`A193771(2*n+1)-A060945(n)`
-/

namespace A368299.P17051209570319461443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193771 (2 * n + 1) - A060945 n

end

end A368299.P17051209570319461443

namespace A368299

/-- `A193771(2*n+1)-A060945(n)` -/
def P17051209570319461443.Spec : Prop :=
  ∀ n, P17051209570319461443.a n = A368299 n

end A368299

/-! ## A368299.P6693002342859367215

`A247907(2*n)-A003520(2*n)`
-/

namespace A368299.P6693002342859367215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247907 (2 * n) - A003520 (2 * n)

end

end A368299.P6693002342859367215

namespace A368299

/-- `A247907(2*n)-A003520(2*n)` -/
def P6693002342859367215.Spec : Prop :=
  ∀ n, P6693002342859367215.a n = A368299 n

end A368299

/-! ## A368299.P14611761381753319993

`Δ[A060945(n+1)]-A000035(n+1)`
-/

namespace A368299.P14611761381753319993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000035 (n + 1)

end

end A368299.P14611761381753319993

namespace A368299

/-- `Δ[A060945(n+1)]-A000035(n+1)` -/
def P14611761381753319993.Spec : Prop :=
  ∀ n, P14611761381753319993.a n = A368299 n

end A368299

/-! ## A368299.P15111909525116448856

`∑[A193771(2*n+1)-A193771(2*n)]`
-/

namespace A368299.P15111909525116448856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193771 (2 * n + 1) - A193771 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368299.P15111909525116448856

namespace A368299

/-- `∑[A193771(2*n+1)-A193771(2*n)]` -/
def P15111909525116448856.Spec : Prop :=
  ∀ n, P15111909525116448856.a n = A368299 n

end A368299

