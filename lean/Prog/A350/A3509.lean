import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
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
# A350901: a(n) = F(n) * (2*F(n-1)^2 + (-1)^(n-1)) * (2*F(n)^2 + (-1)^n), where F(n) is the n-th Fibonacci number.

The programs for A350901, there is no canonical definition to state claims against.
-/

/-! ## A350901.P11354869231806473505

`A306080(n)-A226304(A097889(n+1))`
-/

namespace A350901.P11354869231806473505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306080 n - A226304 (A097889 (n + 1)).toNat

end

end A350901.P11354869231806473505

/-!
# A350902: a(n) = (5*F(n)*F(n-1)*F(2*n-1)*a(n-1) + F(n-1)*L(n)*a(n-2))/(L(n-1)*F(n)), with a(0) = 1, a(1) = 0, where F(n) = A000045(n) and L(n) = A000032(n).

The programs for A350902, there is no canonical definition to state claims against.
-/

/-! ## A350902.P7189958534274035276

`xor(n, A262472(A152766(n+2)))`
-/

namespace A350902.P7189958534274035276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A262472 (A152766 (n + 2)).toNat)

end

end A350902.P7189958534274035276

/-!
# A350903: Numerators of the sequence of fractions defined by u(n) = ((5*F(n)*F(n-1)*F(2*n-1)*u(n-1) + F(n-1)*L(n)*u(n-2))/(L(n-1)*F(n))), with u(0) = 0 and u(1) = 1, where F(n) = A000045(n) and L(n) = A000032(n).

The programs for A350903, there is no canonical definition to state claims against.
-/

/-! ## A350903.P11673340885673711056

`A255165(A269993(n+1))-A192804(n)`
-/

namespace A350903.P11673340885673711056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255165 (A269993 (n + 1)).toNat - A192804 n

end

end A350903.P11673340885673711056

/-!
# A350904: Denominators of the sequence of fractions defined by u(n) = ((5*F(n)*F(n-1)*F(2*n-1)*u(n-1) + F(n-1)*L(n)*u(n-2))/(L(n-1)*F(n))), with u(0) = 0 and u(1) = 1, where F(n) = A000045(n) and L(n) = A000032(n).

The programs for A350904, there is no canonical definition to state claims against.
-/

/-! ## A350904.P11782628153690792801

`A084600(A030737(n!))`
-/

namespace A350904.P11782628153690792801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 (A030737 (Nat.factorial n)).toNat

end

end A350904.P11782628153690792801

/-! ## A350904.P17309866882716981890

`A181187(∏[A004149(n)])`
-/

namespace A350904.P17309866882716981890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350904.P17309866882716981890

/-! ## A350904.P1370320023636832887

`A181187(∏[A126683(n)])`
-/

namespace A350904.P1370320023636832887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350904.P1370320023636832887

/-! ## A350904.P15528515460134908799

`A181187(2^A101551(n))`
-/

namespace A350904.P15528515460134908799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A101551 n : ℤ))).toNat

end

end A350904.P15528515460134908799

/-!
# A350905: Numbers k such that binomial(k, 3) divides binomial(3^k-3, 2).

The programs for A350905, there is no canonical definition to state claims against.
-/

/-! ## A350905.P8595930522071291293

`A390448(A011755(n+1)-A391614(n))`
-/

namespace A350905.P8595930522071291293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390448 (A011755 (n + 1) - A391614 n).toNat

end

end A350905.P8595930522071291293

/-!
# A350906: Number of unlabeled initially-finally connected digraphs with n arcs.

The programs for A350906, there is no canonical definition to state claims against.
-/

/-! ## A350906.P14399160900448323334

`A078898(A355747(n)+A279571(n))`
-/

namespace A350906.P14399160900448323334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A355747 n + A279571 n).toNat

end

end A350906.P14399160900448323334

/-! ## A350906.P14267030636396363459

`∑[A343225(a(n-1)+a(n-2))]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A350906.P14267030636396363459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  A343225 (f1 (n - 1) + f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350906.P14267030636396363459

/-!
# A350907: Number of unlabeled initially connected digraphs with n arcs.

The programs for A350907, there is no canonical definition to state claims against.
-/

/-! ## A350907.P110127064620878087

`A385860(A000272(n))+A317077(n)`
-/

namespace A350907.P110127064620878087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385860 (A000272 n).toNat + A317077 n

end

end A350907.P110127064620878087

/-! ## A350907.P5142024133307227082

`A194640(A085223(n)*A087949(n))`
-/

namespace A350907.P5142024133307227082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A085223 n * A087949 n).toNat

end

end A350907.P5142024133307227082

/-! ## A350907.P15039127333661082990

`A317077(n)+A127325(A183947(n+1))`
-/

namespace A350907.P15039127333661082990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317077 n + A127325 (A183947 (n + 1)).toNat

end

end A350907.P15039127333661082990

/-!
# A350909: Triangle read by rows: T(n,k) is the number of weakly connected acyclic digraphs on n labeled nodes with k arcs, k=0..n*(n-1).

The programs for A350909, there is no canonical definition to state claims against.
-/

/-! ## A350909.P14999184546911496378

`A187213(A057568(n+5))*A336255(n+1)`
-/

namespace A350909.P14999184546911496378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187213 (A057568 (n + 5)).toNat * A336255 (n + 1)

end

end A350909.P14999184546911496378

/-! ## A350909.P13264036866658356864

`A062735(A005117(n+1)^A299203(n+1))`
-/

namespace A350909.P13264036866658356864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062735 (SequenceMachineLib.roundAway ((A005117 (n + 1) : ℚ) ^ (A299203 (n + 1) : ℤ))).toNat

end

end A350909.P13264036866658356864

/-! ## A350909.P3746860905460005521

`A350732(n+1)-A105824(A350814(2*n+3))`
-/

namespace A350909.P3746860905460005521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350732 (n + 1) - A105824 (A350814 (2 * n + 3)).toNat

end

end A350909.P3746860905460005521

/-! ## A350909.P10388738073212367102

`A001227(A184644(3*n+2))*A062734(n+1)`
-/

namespace A350909.P10388738073212367102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A184644 (3 * n + 2)).toNat * A062734 (n + 1)

end

end A350909.P10388738073212367102

/-!
# A350910: Triangle read by rows: T(n,k) is the number of k-regular digraphs on n unlabeled nodes, k = 0..n-1.

The programs for A350910, there is no canonical definition to state claims against.
-/

/-! ## A350910.P2871839198306310118

`A008284(A238688(n)%A051783(2*n+5))`
-/

namespace A350910.P2871839198306310118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (Int.tmod (A238688 n) (A051783 (2 * n + 5))).toNat

end

end A350910.P2871839198306310118

/-! ## A350910.P1562512371003206058

`A008284(A238688(n))%A331912(3*n+2)`
-/

namespace A350910.P1562512371003206058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008284 (A238688 n).toNat) (A331912 (3 * n + 2))

end

end A350910.P1562512371003206058

/-! ## A350910.P4192892398119215893

`A362610(A034254(n+1)%A232852(3*n+1))`
-/

namespace A350910.P4192892398119215893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362610 (Int.tmod (A034254 (n + 1)) (A232852 (3 * n + 1))).toNat

end

end A350910.P4192892398119215893

/-! ## A350910.P3480836766582576668

`A362610(A034254(n+1))%A179146(3*n+5)`
-/

namespace A350910.P3480836766582576668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362610 (A034254 (n + 1)).toNat) (A179146 (3 * n + 5))

end

end A350910.P3480836766582576668

/-!
# A350913: Number of oriented graphs on n unlabeled nodes whose underlying graph is regular.

The programs for A350913, there is no canonical definition to state claims against.
-/

/-! ## A350913.P1379278866505842178

`A176541(6*a(n-2)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=10, a(5)=17`
-/

namespace A350913.P1379278866505842178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 10, 17] fun n a =>
  A176541 (6 * a (n - 2) - a (n - 4)).toNat

end

end A350913.P1379278866505842178

/-! ## A350913.P15385559357506315426

`A316470(6*a(n-2)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=10, a(5)=17`
-/

namespace A350913.P15385559357506315426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 10, 17] fun n a =>
  A316470 (6 * a (n - 2) - a (n - 4)).toNat

end

end A350913.P15385559357506315426

/-! ## A350913.P2781893028977927148

`A092683(A329454(2^n+1))`
-/

namespace A350913.P2781893028977927148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092683 (A329454 (2 ^ n + 1)).toNat

end

end A350913.P2781893028977927148

/-!
# A350914: Triangle read by rows: T(n,k) is the number of unlabeled weakly connected oriented graphs with n arcs and k vertices, k = 1..n+1.

The programs for A350914, there is no canonical definition to state claims against.
-/

/-! ## A350914.P5541640518325414135

`A054923(n)*A154958(A077168(n))`
-/

namespace A350914.P5541640518325414135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 n * A154958 (A077168 n).toNat

end

end A350914.P5541640518325414135

/-! ## A350914.P11751354725228001344

`A126305(A000124(n))*A171871(n)`
-/

namespace A350914.P11751354725228001344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126305 (A000124 n).toNat * A171871 n

end

end A350914.P11751354725228001344

/-! ## A350914.P5234822770235297552

`A330240(A016777(n)*A054923(n))`
-/

namespace A350914.P5234822770235297552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330240 (A016777 n * A054923 n).toNat

end

end A350914.P5234822770235297552

/-! ## A350914.P6332454431974007167

`A334291(A025425(n)*A343088(n))`
-/

namespace A350914.P6332454431974007167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334291 (A025425 n * A343088 n).toNat

end

end A350914.P6332454431974007167

/-! ## A350914.P12687612314361187969

`A007966(A259198(n+3)*A350450(n))`
-/

namespace A350914.P12687612314361187969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A259198 (n + 3 + 16) * A350450 n).toNat

end

end A350914.P12687612314361187969

/-!
# A350915: Number of weakly connected oriented graphs with n arcs.

The programs for A350915, there is no canonical definition to state claims against.
-/

/-! ## A350915.P12556125891736989987

`A004525(or(A130321(n), A195254(n)))`
-/

namespace A350915.P12556125891736989987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lor (A130321 n) (A195254 n)).toNat

end

end A350915.P12556125891736989987

/-! ## A350915.P2745953188161058464

`or(A004525(A195254(n)), A193554(n))`
-/

namespace A350915.P2745953188161058464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004525 (A195254 n).toNat) (A193554 n)

end

end A350915.P2745953188161058464

/-!
# A350916: Positive integers k such that (k+1)^4 has a divisor congruent to -1 modulo k.

The programs for A350916, there is no canonical definition to state claims against.
-/

/-! ## A350916.P12983369707807178150

`lt[A185953(n+1), A263273(n)]`
-/

namespace A350916.P12983369707807178150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350916.P12983369707807178150

/-! ## A350916.P10592126761982592316

`lt[A053182(A364557(n+1)), ∑{d}[n+1, #]]`
-/

namespace A350916.P10592126761982592316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (A364557 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350916.P10592126761982592316

/-! ## A350916.P5106719109060694867

`lt[A005117(A000041(n)), A317944(n+1)]`
-/

namespace A350916.P5106719109060694867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A000041 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350916.P5106719109060694867

/-! ## A350916.P826772577251496623

`lt[A028304(A060789(n+1)), A349942(n)]`
-/

namespace A350916.P826772577251496623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (A060789 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349942 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350916.P826772577251496623

/-! ## A350916.P2366596088474450480

`lt[A079900(n+1), A079931(A079893(n+1))]`
-/

namespace A350916.P2366596088474450480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079931 (A079893 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350916.P2366596088474450480

/-!
# A350917: a(0) = 1, a(1) = 2, and a(n) = 23*a(n-1) - a(n-2) - 4 for n >= 2.

The programs for A350917, the canonical program `A350917.P14773146112471006440` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350917 has offset 0).

The definition of A350917 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `23*a(n-1)-a(n-2)-4` (program `A350917.P14773146112471006440`, by `A350917.P14773146112471006440.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350917.P14773146112471006440

`23*a(n-1)-a(n-2)-4` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350917

/-- `23*a(n-1)-a(n-2)-4` -/
def P14773146112471006440.Spec : Prop :=
  ∀ n, P14773146112471006440.a n = A350917 n

theorem P14773146112471006440.correct : P14773146112471006440.Spec := by
  intro n
  simp only [A350917]

end A350917

/-! ## A350917.P17941337366676556423

`A004253(A028310(n))²+A004254(n)²`
-/

namespace A350917.P17941337366676556423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (A028310 n).toNat ^ 2 + A004254 n ^ 2

end

end A350917.P17941337366676556423

namespace A350917

/-- `A004253(A028310(n))²+A004254(n)²` -/
def P17941337366676556423.Spec : Prop :=
  ∀ n, P17941337366676556423.a n = A350917 n

end A350917

/-! ## A350917.P3649568173167343828

`A004253(A001097(n+1)!%5+n)²+A004254(n)²`
-/

namespace A350917.P3649568173167343828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (Nat.factorial (A001097 (n + 1)).toNat % 5 + n) ^ 2 + A004254 n ^ 2

end

end A350917.P3649568173167343828

namespace A350917

/-- `A004253(A001097(n+1)!%5+n)²+A004254(n)²` -/
def P3649568173167343828.Spec : Prop :=
  ∀ n, P3649568173167343828.a n = A350917 n

end A350917

/-! ## A350917.P16080490747631903955

`∩[A293173(n+1), A056105(n)]`
-/

namespace A350917.P16080490747631903955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350917.P16080490747631903955

namespace A350917

/-- `∩[A293173(n+1), A056105(n)]` -/
def P16080490747631903955.Spec : Prop :=
  ∀ n, (P16080490747631903955.a n : ℤ) = A350917 n

end A350917

/-!
# A350919: a(0) = 9, a(1) = 9, and a(n) = 3*a(n-1) - a(n-2) - 4 for n >= 2.

The programs for A350919, the canonical program `A350919.P6695825255205249320` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350919 has offset 0).

The definition of A350919 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)-4` (program `A350919.P6695825255205249320`, by `A350919.P6695825255205249320.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350919.P6695825255205249320

`3*a(n-1)-a(n-2)-4` with `a(0)=9, a(1)=9`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350919

/-- `3*a(n-1)-a(n-2)-4` -/
def P6695825255205249320.Spec : Prop :=
  ∀ n, P6695825255205249320.a n = A350919 n

theorem P6695825255205249320.correct : P6695825255205249320.Spec := by
  intro n
  simp only [A350919]

end A350919

/-! ## A350919.P5401202849032802135

`5*A032908(n)-1`
-/

namespace A350919.P5401202849032802135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A032908 n - 1

end

end A350919.P5401202849032802135

namespace A350919

/-- `5*A032908(n)-1` -/
def P5401202849032802135.Spec : Prop :=
  ∀ n, P5401202849032802135.a n = A350919 n

end A350919

/-! ## A350919.P11300961910895623417

`5*A001519(n)+4`
-/

namespace A350919.P11300961910895623417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001519 n + 4

end

end A350919.P11300961910895623417

namespace A350919

/-- `5*A001519(n)+4` -/
def P11300961910895623417.Spec : Prop :=
  ∀ n, P11300961910895623417.a n = A350919 n

end A350919

/-! ## A350919.P15924305691118770109

`5*A000045(abs(1-2*n))+4`
-/

namespace A350919.P15924305691118770109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 |1 - (2 * n : ℤ)|.toNat + 4

end

end A350919.P15924305691118770109

namespace A350919

/-- `5*A000045(abs(1-2*n))+4` -/
def P15924305691118770109.Spec : Prop :=
  ∀ n, P15924305691118770109.a n = A350919 n

end A350919

/-! ## A350919.P15102597301377906921

`A000032(n)²+Δ[A000032(n)]²+4`
-/

namespace A350919.P15102597301377906921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 2 + ((f1 (n + 1) - f1 n) ^ 2 + 4)

end

end A350919.P15102597301377906921

namespace A350919

/-- `A000032(n)²+Δ[A000032(n)]²+4` -/
def P15102597301377906921.Spec : Prop :=
  ∀ n, P15102597301377906921.a n = A350919 n

end A350919

/-! ## A350919.P16888463022753248944

`3*A099925(2*n)-A099925(2*n+1)`
-/

namespace A350919.P16888463022753248944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A099925 (2 * n) - A099925 (2 * n + 1)

end

end A350919.P16888463022753248944

namespace A350919

/-- `3*A099925(2*n)-A099925(2*n+1)` -/
def P16888463022753248944.Spec : Prop :=
  ∀ n, P16888463022753248944.a n = A350919 n

end A350919

/-!
# A350920: a(0) = 5, a(1) = 5, and a(n) = 4*a(n-1) - a(n-2) - 4 for n >= 2.

The programs for A350920, the canonical program `A350920.P5233066556476720052` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350920 has offset 0).

The definition of A350920 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)-4` (program `A350920.P5233066556476720052`, by `A350920.P5233066556476720052.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350920.P5233066556476720052

`4*a(n-1)-a(n-2)-4` with `a(0)=5, a(1)=5`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350920

/-- `4*a(n-1)-a(n-2)-4` -/
def P5233066556476720052.Spec : Prop :=
  ∀ n, P5233066556476720052.a n = A350920 n

theorem P5233066556476720052.correct : P5233066556476720052.Spec := by
  intro n
  simp only [A350920]

end A350920

/-! ## A350920.P6719800706853234692

`3*A001835(n)+2`
-/

namespace A350920.P6719800706853234692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001835 n + 2

end

end A350920.P6719800706853234692

namespace A350920

/-- `3*A001835(n)+2` -/
def P6719800706853234692.Spec : Prop :=
  ∀ n, P6719800706853234692.a n = A350920 n

end A350920

/-! ## A350920.P17129183413933687508

`6*A101879(n)-1`
-/

namespace A350920.P17129183413933687508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A101879 n - 1

end

end A350920.P17129183413933687508

namespace A350920

/-- `6*A101879(n)-1` -/
def P17129183413933687508.Spec : Prop :=
  ∀ n, P17129183413933687508.a n = A350920 n

end A350920

/-! ## A350920.P3693502768396627622

`3*A005246(2*n)+2`
-/

namespace A350920.P3693502768396627622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005246 (2 * n) + 2

end

end A350920.P3693502768396627622

namespace A350920

/-- `3*A005246(2*n)+2` -/
def P3693502768396627622.Spec : Prop :=
  ∀ n, P3693502768396627622.a n = A350920 n

end A350920

/-! ## A350920.P11360157761212874321

`3*A122573(A103517(n))+2`
-/

namespace A350920.P11360157761212874321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A122573 (A103517 n).toNat + 2

end

end A350920.P11360157761212874321

namespace A350920

/-- `3*A122573(A103517(n))+2` -/
def P11360157761212874321.Spec : Prop :=
  ∀ n, P11360157761212874321.a n = A350920 n

end A350920

/-! ## A350920.P15330280206382907551

`A321119(2*n)+2-A002531(2*n+1)`
-/

namespace A350920.P15330280206382907551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321119 (2 * n) + (2 - A002531 (2 * n + 1))

end

end A350920.P15330280206382907551

namespace A350920

/-- `A321119(2*n)+2-A002531(2*n+1)` -/
def P15330280206382907551.Spec : Prop :=
  ∀ n, P15330280206382907551.a n = A350920 n

end A350920

/-! ## A350920.P14461507539545453037

`A321119(2*n)+2-A143643(2*n+1)`
-/

namespace A350920.P14461507539545453037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321119 (2 * n) + (2 - A143643 (2 * n + 1))

end

end A350920.P14461507539545453037

namespace A350920

/-- `A321119(2*n)+2-A143643(2*n+1)` -/
def P14461507539545453037.Spec : Prop :=
  ∀ n, P14461507539545453037.a n = A350920 n

end A350920

/-!
# A350921: a(0) = 3, a(1) = 3, and a(n) = 6*a(n-1) - a(n-2) - 4 for n >= 2.

The programs for A350921, the canonical program `A350921.P7990311783868166794` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350921 has offset 0).

The definition of A350921 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)-4` (program `A350921.P7990311783868166794`, by `A350921.P7990311783868166794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350921.P7990311783868166794

`6*a(n-1)-a(n-2)-4` with `a(0)=3, a(1)=3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350921

/-- `6*a(n-1)-a(n-2)-4` -/
def P7990311783868166794.Spec : Prop :=
  ∀ n, P7990311783868166794.a n = A350921 n

theorem P7990311783868166794.correct : P7990311783868166794.Spec := by
  intro n
  simp only [A350921]

end A350921

/-! ## A350921.P7130556459794340452

`A137199(2*n)+2`
-/

namespace A350921.P7130556459794340452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137199 (2 * n) + 2

end

end A350921.P7130556459794340452

namespace A350921

/-- `A137199(2*n)+2` -/
def P7130556459794340452.Spec : Prop :=
  ∀ n, P7130556459794340452.a n = A350921 n

end A350921

/-! ## A350921.P17380841779138515040

`lcm(2, A176981(2*n))+1`
-/

namespace A350921.P17380841779138515040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A176981 (2 * n)) + 1

end

end A350921.P17380841779138515040

namespace A350921

/-- `lcm(2, A176981(2*n))+1` -/
def P17380841779138515040.Spec : Prop :=
  ∀ n, (P17380841779138515040.a n : ℤ) = A350921 n

end A350921

/-! ## A350921.P10002221964985577431

`2*A215936(Δ[n²])+1`
-/

namespace A350921.P10002221964985577431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215936 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A350921.P10002221964985577431

namespace A350921

/-- `2*A215936(Δ[n²])+1` -/
def P10002221964985577431.Spec : Prop :=
  ∀ n, P10002221964985577431.a n = A350921 n

end A350921

/-! ## A350921.P12714875479022335850

`2*A001653(A028310(n))+1`
-/

namespace A350921.P12714875479022335850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001653 (A028310 n).toNat + 1

end

end A350921.P12714875479022335850

namespace A350921

/-- `2*A001653(A028310(n))+1` -/
def P12714875479022335850.Spec : Prop :=
  ∀ n, P12714875479022335850.a n = A350921 n

end A350921

/-! ## A350921.P5688698959741375088

`A052937(2*n)-A078343(2*n)`
-/

namespace A350921.P5688698959741375088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 (2 * n) - A078343 (2 * n)

end

end A350921.P5688698959741375088

namespace A350921

/-- `A052937(2*n)-A078343(2*n)` -/
def P5688698959741375088.Spec : Prop :=
  ∀ n, P5688698959741375088.a n = A350921 n

end A350921

/-! ## A350921.P5866949740558136713

`A114647(2*n)-A111955(2*n)`
-/

namespace A350921.P5866949740558136713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114647 (2 * n) - A111955 (2 * n)

end

end A350921.P5866949740558136713

namespace A350921

/-- `A114647(2*n)-A111955(2*n)` -/
def P5866949740558136713.Spec : Prop :=
  ∀ n, P5866949740558136713.a n = A350921 n

end A350921

/-! ## A350921.P1959414269996234400

`A174191(2*n+1)-A078343(2*n)`
-/

namespace A350921.P1959414269996234400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 (2 * n + 1) - A078343 (2 * n)

end

end A350921.P1959414269996234400

namespace A350921

/-- `A174191(2*n+1)-A078343(2*n)` -/
def P1959414269996234400.Spec : Prop :=
  ∀ n, P1959414269996234400.a n = A350921 n

end A350921

/-! ## A350921.P15987195630621351697

`A000129(2*n+1)+1-A078343(2*n)`
-/

namespace A350921.P15987195630621351697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n + 1) + (1 - A078343 (2 * n))

end

end A350921.P15987195630621351697

namespace A350921

/-- `A000129(2*n+1)+1-A078343(2*n)` -/
def P15987195630621351697.Spec : Prop :=
  ∀ n, P15987195630621351697.a n = A350921 n

end A350921

/-! ## A350921.P17077036574061911466

`A135532(2*n+1)+1-A048655(2*n)`
-/

namespace A350921.P17077036574061911466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 (2 * n + 1) + (1 - A048655 (2 * n))

end

end A350921.P17077036574061911466

namespace A350921

/-- `A135532(2*n+1)+1-A048655(2*n)` -/
def P17077036574061911466.Spec : Prop :=
  ∀ n, P17077036574061911466.a n = A350921 n

end A350921

/-! ## A350921.P7281659442304287781

`A221172(2*n+1)+1-A048654(2*n)`
-/

namespace A350921.P7281659442304287781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (2 * n + 1) + (1 - A048654 (2 * n))

end

end A350921.P7281659442304287781

namespace A350921

/-- `A221172(2*n+1)+1-A048654(2*n)` -/
def P7281659442304287781.Spec : Prop :=
  ∀ n, P7281659442304287781.a n = A350921 n

end A350921

/-! ## A350921.P13725734799142735232

`A215928(2*n+1)+1-A078343(2*n)`
-/

namespace A350921.P13725734799142735232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (2 * n + 1) + (1 - A078343 (2 * n))

end

end A350921.P13725734799142735232

namespace A350921

/-- `A215928(2*n+1)+1-A078343(2*n)` -/
def P13725734799142735232.Spec : Prop :=
  ∀ n, P13725734799142735232.a n = A350921 n

end A350921

/-! ## A350921.P2124057466787468537

`A000129(2*n+1)+2-A111955(2*n)`
-/

namespace A350921.P2124057466787468537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n + 1) + (2 - A111955 (2 * n))

end

end A350921.P2124057466787468537

namespace A350921

/-- `A000129(2*n+1)+2-A111955(2*n)` -/
def P2124057466787468537.Spec : Prop :=
  ∀ n, P2124057466787468537.a n = A350921 n

end A350921

/-! ## A350921.P17301064169798752371

`A111954(2*n+1)+2-A078343(2*n)`
-/

namespace A350921.P17301064169798752371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 (2 * n + 1) + (2 - A078343 (2 * n))

end

end A350921.P17301064169798752371

namespace A350921

/-- `A111954(2*n+1)+2-A078343(2*n)` -/
def P17301064169798752371.Spec : Prop :=
  ∀ n, P17301064169798752371.a n = A350921 n

end A350921

/-! ## A350921.P4049652240545270888

`A182143(2*n)+2-A163271(2*n+1)`
-/

namespace A350921.P4049652240545270888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 (2 * n) + (2 - A163271 (2 * n + 1))

end

end A350921.P4049652240545270888

namespace A350921

/-- `A182143(2*n)+2-A163271(2*n+1)` -/
def P4049652240545270888.Spec : Prop :=
  ∀ n, P4049652240545270888.a n = A350921 n

end A350921

/-! ## A350921.P4811900168618078486

`A077443(2*n+1)+1-A077446(2*n+1)`
-/

namespace A350921.P4811900168618078486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077443 (2 * n + 1) + (1 - A077446 (2 * n + 1))

end

end A350921.P4811900168618078486

namespace A350921

/-- `A077443(2*n+1)+1-A077446(2*n+1)` -/
def P4811900168618078486.Spec : Prop :=
  ∀ n, P4811900168618078486.a n = A350921 n

end A350921

/-! ## A350921.P9797262107917545692

`A006451(2*n+1)+1-A154142(2*n+1)`
-/

namespace A350921.P9797262107917545692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (2 * n + 1) + (1 - A154142 (2 * n + 1))

end

end A350921.P9797262107917545692

namespace A350921

/-- `A006451(2*n+1)+1-A154142(2*n+1)` -/
def P9797262107917545692.Spec : Prop :=
  ∀ n, P9797262107917545692.a n = A350921 n

end A350921

/-! ## A350921.P13443354661177784676

`A002315(n+1)-2*A154140(2*n+1)`
-/

namespace A350921.P13443354661177784676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 (n + 1) - 2 * A154140 (2 * n + 1)

end

end A350921.P13443354661177784676

namespace A350921

/-- `A002315(n+1)-2*A154140(2*n+1)` -/
def P13443354661177784676.Spec : Prop :=
  ∀ n, P13443354661177784676.a n = A350921 n

end A350921

/-! ## A350921.P4857142983399649157

`A133325(2*n+1)+1-A077443(2*(n+1))`
-/

namespace A350921.P4857142983399649157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133325 (2 * n + 1) + (1 - A077443 (2 * (n + 1)))

end

end A350921.P4857142983399649157

namespace A350921

/-- `A133325(2*n+1)+1-A077443(2*(n+1))` -/
def P4857142983399649157.Spec : Prop :=
  ∀ n, P4857142983399649157.a n = A350921 n

end A350921

/-!
# A350922: a(0) = 2, a(1) = 5, and a(n) = 7*a(n-1) - a(n-2) - 4 for n >= 2.

The programs for A350922, the canonical program `A350922.P12825235039014483269` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350922 has offset 0).

The definition of A350922 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-a(n-2)-4` (program `A350922.P12825235039014483269`, by `A350922.P12825235039014483269.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350922.P12825235039014483269

`7*a(n-1)-a(n-2)-4` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350922

/-- `7*a(n-1)-a(n-2)-4` -/
def P12825235039014483269.Spec : Prop :=
  ∀ n, P12825235039014483269.a n = A350922 n

theorem P12825235039014483269.correct : P12825235039014483269.Spec := by
  intro n
  simp only [A350922]

end A350922

/-! ## A350922.P681469756255894189

`3*A049684(n)+2`
-/

namespace A350922.P681469756255894189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049684 n + 2

end

end A350922.P681469756255894189

namespace A350922

/-- `3*A049684(n)+2` -/
def P681469756255894189.Spec : Prop :=
  ∀ n, P681469756255894189.a n = A350922 n

end A350922

/-! ## A350922.P15071454702488691213

`3*A064170(n+2)-1`
-/

namespace A350922.P15071454702488691213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A064170 (n + 2) - 1

end

end A350922.P15071454702488691213

namespace A350922

/-- `3*A064170(n+2)-1` -/
def P15071454702488691213.Spec : Prop :=
  ∀ n, P15071454702488691213.a n = A350922 n

end A350922

/-! ## A350922.P16792479013400293095

`∑[ogf((3x+3x^2)/(1-7x+x^2))]+2`
-/

namespace A350922.P16792479013400293095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 3] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A350922.P16792479013400293095

namespace A350922

/-- `∑[ogf((3x+3x^2)/(1-7x+x^2))]+2` -/
def P16792479013400293095.Spec : Prop :=
  ∀ n, P16792479013400293095.a n = A350922 n

end A350922

/-! ## A350922.P15761545302790695542

`A295690(4*n)`
-/

namespace A350922.P15761545302790695542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295690 (4 * n)

end

end A350922.P15761545302790695542

namespace A350922

/-- `A295690(4*n)` -/
def P15761545302790695542.Spec : Prop :=
  ∀ n, P15761545302790695542.a n = A350922 n

end A350922

/-! ## A350922.P5265056252889030598

`A099016(2*n)+1`
-/

namespace A350922.P5265056252889030598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099016 (2 * n) + 1

end

end A350922.P5265056252889030598

namespace A350922

/-- `A099016(2*n)+1` -/
def P5265056252889030598.Spec : Prop :=
  ∀ n, P5265056252889030598.a n = A350922 n

end A350922

/-! ## A350922.P15318834849884958918

`A295682(3*n+n+1)`
-/

namespace A350922.P15318834849884958918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295682 (3 * n + (n + 1))

end

end A350922.P15318834849884958918

namespace A350922

/-- `A295682(3*n+n+1)` -/
def P15318834849884958918.Spec : Prop :=
  ∀ n, P15318834849884958918.a n = A350922 n

end A350922

/-! ## A350922.P33627861383240977

`3*A000045(2*n)²+2`
-/

namespace A350922.P33627861383240977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 (2 * n) ^ 2 + 2

end

end A350922.P33627861383240977

namespace A350922

/-- `3*A000045(2*n)²+2` -/
def P33627861383240977.Spec : Prop :=
  ∀ n, P33627861383240977.a n = A350922 n

end A350922

/-! ## A350922.P11472370062469247827

`floor(3*A000032(2*n)²/5)`
-/

namespace A350922.P11472370062469247827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A000032 (2 * n) ^ 2 : ℚ) / 5)⌋

end

end A350922.P11472370062469247827

namespace A350922

/-- `floor(3*A000032(2*n)²/5)` -/
def P11472370062469247827.Spec : Prop :=
  ∀ n, P11472370062469247827.a n = A350922 n

end A350922

/-! ## A350922.P11500748716134272461

`A362388(A111284(n+1))`
-/

namespace A350922.P11500748716134272461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362388 (A111284 (n + 1)).toNat

end

end A350922.P11500748716134272461

namespace A350922

/-- `A362388(A111284(n+1))` -/
def P11500748716134272461.Spec : Prop :=
  ∀ n, P11500748716134272461.a n = A350922 n

end A350922

/-! ## A350922.P6843007421663528164

`A081068(n)+A001519(n)²`
-/

namespace A350922.P6843007421663528164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081068 n + A001519 n ^ 2

end

end A350922.P6843007421663528164

namespace A350922

/-- `A081068(n)+A001519(n)²` -/
def P6843007421663528164.Spec : Prop :=
  ∀ n, P6843007421663528164.a n = A350922 n

end A350922

/-! ## A350922.P11511190682750698408

`A172968(n)+∑[A172968(n)]`
-/

namespace A350922.P11511190682750698408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172968 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350922.P11511190682750698408

namespace A350922

/-- `A172968(n)+∑[A172968(n)]` -/
def P11511190682750698408.Spec : Prop :=
  ∀ n, P11511190682750698408.a n = A350922 n

end A350922

/-! ## A350922.P154029797675524742

`A081018(n+1)-A081017(n)`
-/

namespace A350922.P154029797675524742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081018 (n + 1) - A081017 n

end

end A350922.P154029797675524742

namespace A350922

/-- `A081018(n+1)-A081017(n)` -/
def P154029797675524742.Spec : Prop :=
  ∀ n, P154029797675524742.a n = A350922 n

end A350922

/-! ## A350922.P8197686506024876818

`A206351(n+2)-A056914(n)`
-/

namespace A350922.P8197686506024876818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206351 (n + 2) - A056914 n

end

end A350922.P8197686506024876818

namespace A350922

/-- `A206351(n+2)-A056914(n)` -/
def P8197686506024876818.Spec : Prop :=
  ∀ n, P8197686506024876818.a n = A350922 n

end A350922

/-! ## A350922.P16075655490535870449

`A110034(2*n)+A081016(n)`
-/

namespace A350922.P16075655490535870449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110034 (2 * n) + A081016 n

end

end A350922.P16075655490535870449

namespace A350922

/-- `A110034(2*n)+A081016(n)` -/
def P16075655490535870449.Spec : Prop :=
  ∀ n, P16075655490535870449.a n = A350922 n

end A350922

/-! ## A350922.P1388987801744070196

`A001519(n)²+A122367(n)²`
-/

namespace A350922.P1388987801744070196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n ^ 2 + A122367 n ^ 2

end

end A350922.P1388987801744070196

namespace A350922

/-- `A001519(n)²+A122367(n)²` -/
def P1388987801744070196.Spec : Prop :=
  ∀ n, P1388987801744070196.a n = A350922 n

end A350922

/-! ## A350922.P4224106748029457681

`A056854(n)-2*A001906(n)²`
-/

namespace A350922.P4224106748029457681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056854 n - 2 * A001906 n ^ 2

end

end A350922.P4224106748029457681

namespace A350922

/-- `A056854(n)-2*A001906(n)²` -/
def P4224106748029457681.Spec : Prop :=
  ∀ n, P4224106748029457681.a n = A350922 n

end A350922

/-! ## A350922.P1999142001483027457

`A206351(n+1)+A001519(2*n)`
-/

namespace A350922.P1999142001483027457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206351 (n + 1) + A001519 (2 * n)

end

end A350922.P1999142001483027457

namespace A350922

/-- `A206351(n+1)+A001519(2*n)` -/
def P1999142001483027457.Spec : Prop :=
  ∀ n, P1999142001483027457.a n = A350922 n

end A350922

/-! ## A350922.P9286613120274252008

`A192921(2*n)+A192872(2*n)`
-/

namespace A350922.P9286613120274252008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192921 (2 * n) + A192872 (2 * n)

end

end A350922.P9286613120274252008

namespace A350922

/-- `A192921(2*n)+A192872(2*n)` -/
def P9286613120274252008.Spec : Prop :=
  ∀ n, P9286613120274252008.a n = A350922 n

end A350922

/-!
# A350923: a(0) = 2, a(1) = 2, and a(n) = 10*a(n-1) - a(n-2) - 4 for n >= 2.

The programs for A350923, the canonical program `A350923.P13664756292269271448` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350923 has offset 0).

The definition of A350923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-a(n-2)-4` (program `A350923.P13664756292269271448`, by `A350923.P13664756292269271448.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350923.P13664756292269271448

`10*a(n-1)-a(n-2)-4` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350923

/-- `10*a(n-1)-a(n-2)-4` -/
def P13664756292269271448.Spec : Prop :=
  ∀ n, P13664756292269271448.a n = A350923 n

theorem P13664756292269271448.correct : P13664756292269271448.Spec := by
  intro n
  simp only [A350923]

end A350923

/-! ## A350923.P17479348312305893891

`A157085((n-1)%(n+1))`
-/

namespace A350923.P17479348312305893891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157085 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A350923.P17479348312305893891

namespace A350923

/-- `A157085((n-1)%(n+1))` -/
def P17479348312305893891.Spec : Prop :=
  ∀ n, P17479348312305893891.a n = A350923 n

end A350923

/-! ## A350923.P15444108676275285871

`A031138(round(sqrt(n²+1)))+1`
-/

namespace A350923.P15444108676275285871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031138 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

end

end A350923.P15444108676275285871

namespace A350923

/-- `A031138(round(sqrt(n²+1)))+1` -/
def P15444108676275285871.Spec : Prop :=
  ∀ n, P15444108676275285871.a n = A350923 n

end A350923

/-! ## A350923.P7879728660863697756

`A157085(A028310(n)-1)`
-/

namespace A350923.P7879728660863697756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157085 (A028310 n - 1).toNat

end

end A350923.P7879728660863697756

namespace A350923

/-- `A157085(A028310(n)-1)` -/
def P7879728660863697756.Spec : Prop :=
  ∀ n, P7879728660863697756.a n = A350923 n

end A350923

/-! ## A350923.P862805418030836253

`A157085(n-A178334(n))`
-/

namespace A350923.P862805418030836253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157085 ((n : ℤ) - A178334 n).toNat

end

end A350923.P862805418030836253

namespace A350923

/-- `A157085(n-A178334(n))` -/
def P862805418030836253.Spec : Prop :=
  ∀ n, P862805418030836253.a n = A350923 n

end A350923

/-! ## A350923.P13146624703551515236

`2*(A140780(n)-∑[A001078(n)])`
-/

namespace A350923.P13146624703551515236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A140780 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350923.P13146624703551515236

namespace A350923

/-- `2*(A140780(n)-∑[A001078(n)])` -/
def P13146624703551515236.Spec : Prop :=
  ∀ n, P13146624703551515236.a n = A350923 n

end A350923

/-! ## A350923.P9372976417666118889

`A179934(2*n+1)-2*A216073(2*n+1)`
-/

namespace A350923.P9372976417666118889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179934 (2 * n + 1) - 2 * A216073 (2 * n + 1)

end

end A350923.P9372976417666118889

namespace A350923

/-- `A179934(2*n+1)-2*A216073(2*n+1)` -/
def P9372976417666118889.Spec : Prop :=
  ∀ n, P9372976417666118889.a n = A350923 n

end A350923

/-!
# A350924: a(0) = 1, a(1) = 3, and a(n) = 16*a(n-1) - a(n-2) - 4 for n >= 2.

The programs for A350924, the canonical program `A350924.P14529904885184717052` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350924 has offset 0).

The definition of A350924 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-a(n-2)-4` (program `A350924.P14529904885184717052`, by `A350924.P14529904885184717052.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350924.P14529904885184717052

`16*a(n-1)-a(n-2)-4` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350924

/-- `16*a(n-1)-a(n-2)-4` -/
def P14529904885184717052.Spec : Prop :=
  ∀ n, P14529904885184717052.a n = A350924 n

theorem P14529904885184717052.correct : P14529904885184717052.Spec := by
  intro n
  simp only [A350924]

end A350924

/-! ## A350924.P604597557171769019

`A350925(n)-2*A001080(n)`
-/

namespace A350924.P604597557171769019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350925 n - 2 * A001080 n

end

end A350924.P604597557171769019

namespace A350924

/-- `A350925(n)-2*A001080(n)` -/
def P604597557171769019.Spec : Prop :=
  ∀ n, P604597557171769019.a n = A350924 n

end A350924

/-! ## A350924.P10127698439930681949

`A350925(n+1)%A273052(n+1)`
-/

namespace A350924.P10127698439930681949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350925 (n + 1)) (A273052 (n + 1))

end

end A350924.P10127698439930681949

namespace A350924

/-- `A350925(n+1)%A273052(n+1)` -/
def P10127698439930681949.Spec : Prop :=
  ∀ n, P10127698439930681949.a n = A350924 n

end A350924

/-! ## A350924.P11544572531146631892

`A350925(n+2)%A001080(n+1)`
-/

namespace A350924.P11544572531146631892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350925 (n + 2)) (A001080 (n + 1))

end

end A350924.P11544572531146631892

namespace A350924

/-- `A350925(n+2)%A001080(n+1)` -/
def P11544572531146631892.Spec : Prop :=
  ∀ n, P11544572531146631892.a n = A350924 n

end A350924

/-! ## A350924.P16331937863021352580

`A350925(n+3)%Δ[A098303(n+1)]`
-/

namespace A350924.P16331937863021352580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350925 (n + 3)) (f1 (n + 1) - f1 n)

end

end A350924.P16331937863021352580

namespace A350924

/-- `A350925(n+3)%Δ[A098303(n+1)]` -/
def P16331937863021352580.Spec : Prop :=
  ∀ n, P16331937863021352580.a n = A350924 n

end A350924

/-!
# A350925: a(0) = 1, a(1) = 9, and a(n) = 16*a(n-1) - a(n-2) - 4 for n >= 2.

The programs for A350925, the canonical program `A350925.P10526501611951582661` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350925 has offset 0).

The definition of A350925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-a(n-2)-4` (program `A350925.P10526501611951582661`, by `A350925.P10526501611951582661.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350925.P10526501611951582661

`16*a(n-1)-a(n-2)-4` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350925

/-- `16*a(n-1)-a(n-2)-4` -/
def P10526501611951582661.Spec : Prop :=
  ∀ n, P10526501611951582661.a n = A350925 n

theorem P10526501611951582661.correct : P10526501611951582661.Spec := by
  intro n
  simp only [A350925]

end A350925

/-! ## A350925.P15525030723265991366

`∑[ogf((1-8x+3x^2)/(1-16x+x^2))]`
-/

namespace A350925.P15525030723265991366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8, 3] [1, -16, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350925.P15525030723265991366

namespace A350925

/-- `∑[ogf((1-8x+3x^2)/(1-16x+x^2))]` -/
def P15525030723265991366.Spec : Prop :=
  ∀ n, P15525030723265991366.a n = A350925 n

end A350925

/-! ## A350925.P11774399734515295732

`A007751(n)+A098303(n)+1`
-/

namespace A350925.P11774399734515295732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007751 n + (A098303 n + 1)

end

end A350925.P11774399734515295732

namespace A350925

/-- `A007751(n)+A098303(n)+1` -/
def P11774399734515295732.Spec : Prop :=
  ∀ n, P11774399734515295732.a n = A350925 n

end A350925

/-! ## A350925.P13078011443863061333

`A266698(n+1)-∑[A273052(n+1)]`
-/

namespace A350925.P13078011443863061333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266698 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350925.P13078011443863061333

namespace A350925

/-- `A266698(n+1)-∑[A273052(n+1)]` -/
def P13078011443863061333.Spec : Prop :=
  ∀ n, P13078011443863061333.a n = A350925 n

end A350925

/-! ## A350925.P11645411388614585150

`A266698(n+1)-∑[2*A159678(n+1)]`
-/

namespace A350925.P11645411388614585150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266698 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350925.P11645411388614585150

namespace A350925

/-- `A266698(n+1)-∑[2*A159678(n+1)]` -/
def P11645411388614585150.Spec : Prop :=
  ∀ n, P11645411388614585150.a n = A350925 n

end A350925

/-!
# A350926: a(0) = 1, a(1) = 17, and a(n) = 23*a(n-1) - a(n-2) - 4 for n >= 2.

The programs for A350926, the canonical program `A350926.P1012862867603091154` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350926 has offset 0).

The definition of A350926 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `23*a(n-1)-a(n-2)-4` (program `A350926.P1012862867603091154`, by `A350926.P1012862867603091154.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350926.P1012862867603091154

`23*a(n-1)-a(n-2)-4` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350926

/-- `23*a(n-1)-a(n-2)-4` -/
def P1012862867603091154.Spec : Prop :=
  ∀ n, P1012862867603091154.a n = A350926 n

theorem P1012862867603091154.correct : P1012862867603091154.Spec := by
  intro n
  simp only [A350926]

end A350926

/-! ## A350926.P5149351334773896716

`ceil(A055271(n)²/3)`
-/

namespace A350926.P5149351334773896716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055271 n ^ 2 : ℚ) / 3⌉

end

end A350926.P5149351334773896716

namespace A350926

/-- `ceil(A055271(n)²/3)` -/
def P5149351334773896716.Spec : Prop :=
  ∀ n, P5149351334773896716.a n = A350926 n

end A350926

/-! ## A350926.P1536887307487474522

`A004254(n)²+Δ[A004254(n)]²`
-/

namespace A350926.P1536887307487474522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n ^ 2 + (f1 (n + 1) - f1 n) ^ 2

end

end A350926.P1536887307487474522

namespace A350926

/-- `A004254(n)²+Δ[A004254(n)]²` -/
def P1536887307487474522.Spec : Prop :=
  ∀ n, P1536887307487474522.a n = A350926 n

end A350926

/-! ## A350926.P15966209256464729197

`A004253(n+1)²+A004254(n)²`
-/

namespace A350926.P15966209256464729197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1) ^ 2 + A004254 n ^ 2

end

end A350926.P15966209256464729197

namespace A350926

/-- `A004253(n+1)²+A004254(n)²` -/
def P15966209256464729197.Spec : Prop :=
  ∀ n, P15966209256464729197.a n = A350926 n

end A350926

/-! ## A350926.P5094769025398935300

`A350917(n+1)-A004254(2*n+1)`
-/

namespace A350926.P5094769025398935300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350917 (n + 1) - A004254 (2 * n + 1)

end

end A350926.P5094769025398935300

namespace A350926

/-- `A350917(n+1)-A004254(2*n+1)` -/
def P5094769025398935300.Spec : Prop :=
  ∀ n, P5094769025398935300.a n = A350926 n

end A350926

/-! ## A350926.P4078376095283368440

`floor(A007318(∑[n+2])+A055271(n)²/3)`
-/

namespace A350926.P4078376095283368440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + (A055271 n ^ 2 : ℚ) / 3⌋

end

end A350926.P4078376095283368440

namespace A350926

/-- `floor(A007318(∑[n+2])+A055271(n)²/3)` -/
def P4078376095283368440.Spec : Prop :=
  ∀ n, P4078376095283368440.a n = A350926 n

end A350926

/-!
# A350928: {Partial sums of A095258} + 2.

The programs for A350928, there is no canonical definition to state claims against.
-/

/-! ## A350928.P2986384156715860047

`A095258(n+1)*A350929(n+1)`
-/

namespace A350928.P2986384156715860047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095258 (n + 1) * A350929 (n + 1)

end

end A350928.P2986384156715860047

/-! ## A350928.P9271542465363061200

`∑[A095258(n+1)]+2`
-/

namespace A350928.P9271542465363061200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A350928.P9271542465363061200

/-! ## A350928.P9749452431561244883

`∑[A095258(A028310(n)+1)]`
-/

namespace A350928.P9749452431561244883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095258 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350928.P9749452431561244883

/-! ## A350928.P12651297420370204489

`A095258(n+1)+a(A023443(n))` with `a(0)=3`
-/

namespace A350928.P12651297420370204489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A095258 (n + 1) + a (A023443 n).toNat

end

end A350928.P12651297420370204489

/-! ## A350928.P15444340118097685038

`(A308751(n+1)+1)*A095258(n+1)`
-/

namespace A350928.P15444340118097685038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A308751 (n + 1) + 1) * A095258 (n + 1)

end

end A350928.P15444340118097685038

/-! ## A350928.P57746086282273198

`A095258(n+2)*A308751(n+2)`
-/

namespace A350928.P57746086282273198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095258 (n + 2) * A308751 (n + 2)

end

end A350928.P57746086282273198

/-!
# A350929: a(n) = A350928(n)/A095258(n).

The programs for A350929, there is no canonical definition to state claims against.
-/

/-! ## A350929.P198713758213764749

`A350928(n+1)/A095258(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350929.P198713758213764749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350928 (n + 1) : ℚ) / (A095258 (n + 1) : ℚ)

end

end A350929.P198713758213764749

/-! ## A350929.P7062981831613859788

`A308751(n+1)+1`
-/

namespace A350929.P7062981831613859788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308751 (n + 1) + 1

end

end A350929.P7062981831613859788

/-! ## A350929.P11527100137493905968

`A350928(n+1)/(A000007(n)+Δ[A350928(A028310(n))])`
-/

namespace A350929.P11527100137493905968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350928 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350928 (n + 1) : ℚ) / (A000007 n + (f1 (n + 1) - f1 n) : ℚ)

end

end A350929.P11527100137493905968

/-! ## A350929.P11668543292621676570

`A350928(n+1)/Δ[A350928(A028310(n))+A057427(n)]`
-/

namespace A350929.P11668543292621676570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350928 (A028310 n).toNat + A057427 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350928 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A350929.P11668543292621676570

/-! ## A350929.P14646352200204030379

`A020725(A308751(n+1))`
-/

namespace A350929.P14646352200204030379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A308751 (n + 1)).toNat

end

end A350929.P14646352200204030379

/-! ## A350929.P1239346023207527749

`A028310((∑[A095258(n+1)]+2)/A095258(n+1))`
-/

namespace A350929.P1239346023207527749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℤ) : ℚ) / (A095258 (n + 1) : ℚ))).toNat

end

end A350929.P1239346023207527749

/-!
# A350930: Minimal determinant of an n X n Toeplitz matrix using the integers 1 to 2*n - 1.

The programs for A350930, there is no canonical definition to state claims against.
-/

/-! ## A350930.P14002571019662772904

`or(-A275619(2*n+3), A275593(n+1))`
-/

namespace A350930.P14002571019662772904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A275619 (2 * n + 3)) (A275593 (n + 1))

end

end A350930.P14002571019662772904

/-!
# A350931: Maximal determinant of an n X n Toeplitz matrix using the integers 1 to 2*n - 1.

The programs for A350931, there is no canonical definition to state claims against.
-/

/-! ## A350931.P16223950612729704667

`A347573(∑[∑[floor((n/2)²+n)]])`
-/

namespace A350931.P16223950612729704667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2 + (n : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347573 ((∑ j ∈ Finset.range (n + 1), f1 j).toNat + 21)

end

end A350931.P16223950612729704667

/-!
# A350935: a(n) is the smallest number m such that tau(m-1) = tau(m+1) = n*tau(m) or 0 if no such m exists, where tau(k) = A000005(k).

The programs for A350935, there is no canonical definition to state claims against.
-/

/-! ## A350935.P17952254482509145879

`A350934(2*n*A217490(n+1))`
-/

namespace A350935.P17952254482509145879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350934 (2 * ((n : ℤ) * A217490 (n + 1))).toNat

end

end A350935.P17952254482509145879

/-! ## A350935.P6174192641936927552

`A350934(A032741(n)!*A005843(n))`
-/

namespace A350935.P6174192641936927552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350934 ((Nat.factorial (A032741 n).toNat : ℤ) * A005843 n).toNat

end

end A350935.P6174192641936927552

/-!
# A350937: Minimal permanent of an n X n Toeplitz matrix using the integers 1 to 2*n - 1.

The programs for A350937, there is no canonical definition to state claims against.
-/

/-! ## A350937.P3244313620558073836

`A046066(or(2*a(n-1), a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A350937.P3244313620558073836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A046066 (Int.lor (2 * a (n - 1)) (a (n - 2))).toNat

end

end A350937.P3244313620558073836

/-!
# A350938: Maximal permanent of an n X n Toeplitz matrix using the integers 1 to 2*n - 1.

The programs for A350938, there is no canonical definition to state claims against.
-/

/-! ## A350938.P3179363931796236211

`A188163(A320337(n)-A302983(n+1))`
-/

namespace A350938.P3179363931796236211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (A320337 n - A302983 (n + 1)).toNat

end

end A350938.P3179363931796236211

/-!
# A350941: Number of odd conjugate parts minus number of even conjugate parts in the integer partition with Heinz number n.

The programs for A350941, the canonical program `A350941.P4525697528803141176` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350941 has offset 0).

The definition of A350941 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344616, A350847, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350941.P4525697528803141176

`A344616(n+1)-A350847(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A350941

/-- `A344616(n+1)-A350847(n+1)` -/
def P4525697528803141176.Spec : Prop :=
  ∀ n, P4525697528803141176.a n = A350941 n

theorem P4525697528803141176.correct : P4525697528803141176.Spec := by
  intro n
  simp only [A350941]

end A350941

/-! ## A350941.P5037178528321949684

`A350950(n+1)+A350849(n+1)`
-/

namespace A350941.P5037178528321949684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350950 (n + 1) + A350849 (n + 1)

end

end A350941.P5037178528321949684

namespace A350941

/-- `A350950(n+1)+A350849(n+1)` -/
def P5037178528321949684.Spec : Prop :=
  ∀ n, P5037178528321949684.a n = A350941 n

theorem P5037178528321949684.correct : P5037178528321949684.Spec := by
  intro n
  simp only [A350941, Nat.add_sub_cancel, A350941.P5037178528321949684.a, A350941.P4525697528803141176.a, A344616, A344616.P9154132711565358048.a, A350847, A350847.P6937331175885194980.a, A350849, A350849.P10248614631853328535.a, A350950, A350950.P795215447450625617.a, A122111, A122111.P18124015185857335041.a, A257991, A257991.P9003885035180655311.f1, A257991.P9003885035180655311.a, A257992, A257992.P14262373692572386717.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001222, A001222.P11318177267732088261.a, A014963, A014963.P5975177236000282614.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A350941

/-! ## A350941.P5936470591063356307

`abs(A316524(n+1))-A350847(n+1)`
-/

namespace A350941.P5936470591063356307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316524 (n + 1)| - A350847 (n + 1)

end

end A350941.P5936470591063356307

namespace A350941

/-- `abs(A316524(n+1))-A350847(n+1)` -/
def P5936470591063356307.Spec : Prop :=
  ∀ n, P5936470591063356307.a n = A350941 n

end A350941

/-! ## A350941.P2368919219067519227

`2*A344616(n+1)-A061395(n+1)`
-/

namespace A350941.P2368919219067519227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344616 (n + 1) - A061395 (n + 1)

end

end A350941.P2368919219067519227

namespace A350941

/-- `2*A344616(n+1)-A061395(n+1)` -/
def P2368919219067519227.Spec : Prop :=
  ∀ n, P2368919219067519227.a n = A350941 n

end A350941

/-! ## A350941.P2645401634903847147

`A061395(n+1)-2*A350847(n+1)`
-/

namespace A350941.P2645401634903847147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - 2 * A350847 (n + 1)

end

end A350941.P2645401634903847147

namespace A350941

/-- `A061395(n+1)-2*A350847(n+1)` -/
def P2645401634903847147.Spec : Prop :=
  ∀ n, P2645401634903847147.a n = A350941 n

end A350941

/-! ## A350941.P13187060460750356349

`abs(A316524(n+1))-∑{e}[A331188(n+1), #%2]`
-/

namespace A350941.P13187060460750356349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316524 (n + 1)| - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p % 2 : ℕ) : ℤ)

end

end A350941.P13187060460750356349

namespace A350941

/-- `abs(A316524(n+1))-∑{e}[A331188(n+1), #%2]` -/
def P13187060460750356349.Spec : Prop :=
  ∀ n, P13187060460750356349.a n = A350941 n

end A350941

/-! ## A350941.P15621286925096514688

`A241917(n+1)+A195017(A322865(n+1))`
-/

namespace A350941.P15621286925096514688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (n + 1) + A195017 (A322865 (n + 1)).toNat

end

end A350941.P15621286925096514688

namespace A350941

/-- `A241917(n+1)+A195017(A322865(n+1))` -/
def P15621286925096514688.Spec : Prop :=
  ∀ n, P15621286925096514688.a n = A350941 n

end A350941

/-! ## A350941.P1595738873364945435

`A005843(A344616(n+1))-A061395(n+1)`
-/

namespace A350941.P1595738873364945435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A344616 (n + 1)).toNat - A061395 (n + 1)

end

end A350941.P1595738873364945435

namespace A350941

/-- `A005843(A344616(n+1))-A061395(n+1)` -/
def P1595738873364945435.Spec : Prop :=
  ∀ n, P1595738873364945435.a n = A350941 n

end A350941

/-! ## A350941.P16190420803943545812

`A344616(n+1)-A344616(A052126(n+1))`
-/

namespace A350941.P16190420803943545812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1) - A344616 (A052126 (n + 1)).toNat

end

end A350941.P16190420803943545812

namespace A350941

/-- `A344616(n+1)-A344616(A052126(n+1))` -/
def P16190420803943545812.Spec : Prop :=
  ∀ n, P16190420803943545812.a n = A350941 n

end A350941

/-! ## A350941.P18069644114623683572

`A241917(n+1)-A316523(A331188(n+1))`
-/

namespace A350941.P18069644114623683572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (n + 1) - A316523 (A331188 (n + 1)).toNat

end

end A350941.P18069644114623683572

namespace A350941

/-- `A241917(n+1)-A316523(A331188(n+1))` -/
def P18069644114623683572.Spec : Prop :=
  ∀ n, P18069644114623683572.a n = A350941 n

end A350941

/-!
# A350942: Number of odd parts minus number of even conjugate parts of the integer partition with Heinz number n.

The programs for A350942, there is no canonical definition to state claims against.
-/

/-! ## A350942.P5570761547973562366

`A257991(n+1)-A350847(n+1)`
-/

namespace A350942.P5570761547973562366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) - A350847 (n + 1)

end

end A350942.P5570761547973562366

/-! ## A350942.P10110489359913682445

`∑{e}[A247503(n+1), #]-A350847(n+1)`
-/

namespace A350942.P10110489359913682445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A350847 (n + 1)

end

end A350942.P10110489359913682445

/-! ## A350942.P16782965788330179509

`A257991(n+1)-∑{e}[A331188(n+1), #%2]`
-/

namespace A350942.P16782965788330179509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p % 2 : ℕ) : ℤ)

end

end A350942.P16782965788330179509

/-! ## A350942.P17067750697970981551

`A001222(A247503(n+1))-A350847(n+1)`
-/

namespace A350942.P17067750697970981551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A247503 (n + 1)).toNat - A350847 (n + 1)

end

end A350942.P17067750697970981551

/-! ## A350942.P1278515955148222902

`A257992(A003961(n+1))-A350847(n+1)`
-/

namespace A350942.P1278515955148222902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A003961 (n + 1)).toNat - A350847 (n + 1)

end

end A350942.P1278515955148222902

/-! ## A350942.P9285607242620552842

`A257991(n+1)-A344616(A052126(n+1))`
-/

namespace A350942.P9285607242620552842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) - A344616 (A052126 (n + 1)).toNat

end

end A350942.P9285607242620552842

/-! ## A350942.P15020232978991738198

`A257991(n+1)-A344616((n+1)*A006530(n+1))`
-/

namespace A350942.P15020232978991738198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) - A344616 ((n + 1 : ℤ) * A006530 (n + 1)).toNat

end

end A350942.P15020232978991738198

/-! ## A350942.P1154816312127995646

`A257991(n+1)-A344616((n+1)/A006530(n+1))`
-/

namespace A350942.P1154816312127995646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) - A344616 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A350942.P1154816312127995646

/-! ## A350942.P14906983734179557544

`A001222(n+1)-A257992(n+1)-A344616((n+1)*A006530(n+1))`
-/

namespace A350942.P14906983734179557544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A257992 (n + 1) - A344616 ((n + 1 : ℤ) * A006530 (n + 1)).toNat

end

end A350942.P14906983734179557544

/-! ## A350942.P1684141880219798421

`A001222(n+1)-A257992(n+1)-A344616((n+1)/A006530(n+1))`
-/

namespace A350942.P1684141880219798421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A257992 (n + 1) - A344616 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A350942.P1684141880219798421

/-!
# A350943: Heinz numbers of integer partitions of which the number of even conjugate parts is equal to the number of odd parts.

The programs for A350943, there is no canonical definition to state claims against.
-/

/-! ## A350943.P7794098493905075598

`eq[A257991(n+1), A350847(n+1)]+1`
-/

namespace A350943.P7794098493905075598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350943.P7794098493905075598

/-! ## A350943.P1587218559828182515

`eq[A001222(A247503(n+1)), A350847(n+1)]+1`
-/

namespace A350943.P1587218559828182515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A247503 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350943.P1587218559828182515

/-! ## A350943.P1376264141803006410

`eq[0, A350942(n+1)]+1`
-/

namespace A350943.P1376264141803006410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350943.P1376264141803006410

/-! ## A350943.P2564781973823383572

`lt[(n*A350942(gcd(n, A008574(n))+1))², 1]+1`
-/

namespace A350943.P2564781973823383572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A350942 (Int.gcd (n : ℤ) (A008574 n) + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A350943.P2564781973823383572

/-! ## A350943.P9559979356861522693

`lt[(A000040(n+1)²*A350942(n+1))², 1]+1`
-/

namespace A350943.P9559979356861522693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 2 * A350942 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A350943.P9559979356861522693

/-!
# A350944: Heinz numbers of integer partitions of which the number of odd parts is equal to the number of odd conjugate parts.

The programs for A350944, there is no canonical definition to state claims against.
-/

/-! ## A350944.P14192464845811166142

`eq[A257991(n+1), A344616(n+1)]+1`
-/

namespace A350944.P14192464845811166142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350944.P14192464845811166142

/-! ## A350944.P12145992755885677641

`eq[0, A257991(n+1)-abs(A316524(n+1))]+1`
-/

namespace A350944.P12145992755885677641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) - |A316524 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350944.P12145992755885677641

/-! ## A350944.P8221763629935297970

`eq[A257992(A003961(n+1)), A344616(n+1)]+1`
-/

namespace A350944.P8221763629935297970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A003961 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350944.P8221763629935297970

/-! ## A350944.P8277769314469694292

`eq[0, A001222(n+1)-(A344616(n+1)+A257992(n+1))]+1`
-/

namespace A350944.P8277769314469694292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - (A344616 (n + 1) + A257992 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350944.P8277769314469694292

/-! ## A350944.P14143815903842506504

`eq[A350941(n), A350942(n+1)]+1`
-/

namespace A350944.P14143815903842506504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350941 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350944.P14143815903842506504

/-!
# A350945: Heinz numbers of integer partitions of which the number of even parts is equal to the number of even conjugate parts.

The programs for A350945, there is no canonical definition to state claims against.
-/

/-! ## A350945.P15142948223711841853

`eq[A257992(n+1), A350847(n+1)]+1`
-/

namespace A350945.P15142948223711841853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350945.P15142948223711841853

/-! ## A350945.P1119968875874853109

`eq[0, A350950(n+1)]+1`
-/

namespace A350945.P1119968875874853109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350945.P1119968875874853109

/-! ## A350945.P9591821614516024674

`eq[A000007(n), A350950(A028310(n))]`
-/

namespace A350945.P9591821614516024674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350950 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350945.P9591821614516024674

/-! ## A350945.P6475726217573100434

`eq[A000038(n), A350950(A028310(n))]`
-/

namespace A350945.P6475726217573100434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350950 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350945.P6475726217573100434

/-! ## A350945.P11492775938789890249

`eq[A350849(n+1), A350941(n)]+1`
-/

namespace A350945.P11492775938789890249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350941 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350945.P11492775938789890249

/-!
# A350946: Heinz numbers of integer partitions with as many even parts as odd parts and as many even conjugate parts as odd conjugate parts.

The programs for A350946, there is no canonical definition to state claims against.
-/

/-! ## A350946.P13849148367442152729

`filter[A350848(n+1), A353370(#)]`
-/

namespace A350946.P13849148367442152729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353370 (f1 j).toNat = 1) n)

end

end A350946.P13849148367442152729

/-! ## A350946.P8863632783104859429

`∩[A325698(n+1), A350848(n+1)]`
-/

namespace A350946.P8863632783104859429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350946.P8863632783104859429

/-!
# A350947: Heinz numbers of integer partitions with the same number of even parts, odd parts, even conjugate parts, and odd conjugate parts.

The programs for A350947, there is no canonical definition to state claims against.
-/

/-! ## A350947.P13749267270589191030

`filter[A351980(n+1), A391747(#)]`
-/

namespace A350947.P13749267270589191030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391747 (f1 j).toNat = 1) n)

end

end A350947.P13749267270589191030

/-! ## A350947.P4411140476064084588

`∩[A350946(n+1), A351980(n+1)]`
-/

namespace A350947.P4411140476064084588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350947.P4411140476064084588

/-! ## A350947.P5950118959762588743

`filter[A351980(n+1), A353370(#)]`
-/

namespace A350947.P5950118959762588743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353370 (f1 j).toNat = 1) n)

end

end A350947.P5950118959762588743

/-! ## A350947.P3361002254295267714

`filter[A350949(n+1), A353370(#)]`
-/

namespace A350947.P3361002254295267714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353370 (f1 j).toNat = 1) n)

end

end A350947.P3361002254295267714

/-!
# A350950: Number of even parts minus number of even conjugate parts in the integer partition with Heinz number n.

The programs for A350950, the canonical program `A350950.P795215447450625617` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350950 has offset 1).

The definition of A350950 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257992, A350847, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350950.P795215447450625617

`A257992(n+1)-A350847(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A350950

/-- `A257992(n+1)-A350847(n+1)` -/
def P795215447450625617.Spec : Prop :=
  ∀ n, P795215447450625617.a n = A350950 (n + 1)

theorem P795215447450625617.correct : P795215447450625617.Spec := by
  intro n
  simp only [A350950, Nat.add_sub_cancel]

end A350950

/-! ## A350950.P15808721383398618621

`A350942(n+1)-A195017(n+1)`
-/

namespace A350950.P15808721383398618621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350942 (n + 1) - A195017 (n + 1)

end

end A350950.P15808721383398618621

namespace A350950

/-- `A350942(n+1)-A195017(n+1)` -/
def P15808721383398618621.Spec : Prop :=
  ∀ n, P15808721383398618621.a n = A350950 (n + 1)

end A350950

/-! ## A350950.P6206431284999888091

`A350941(n)-A350849(n+1)`
-/

namespace A350950.P6206431284999888091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350941 n - A350849 (n + 1)

end

end A350950.P6206431284999888091

namespace A350950

/-- `A350941(n)-A350849(n+1)` -/
def P6206431284999888091.Spec : Prop :=
  ∀ n, P6206431284999888091.a n = A350950 (n + 1)

theorem P6206431284999888091.correct : P6206431284999888091.Spec := by
  intro n
  simp only [A350950, Nat.add_sub_cancel, A350950.P6206431284999888091.a, A350950.P795215447450625617.a, A257992, A257992.P14262373692572386717.a, A350847, A350847.P6937331175885194980.a, A350849, A350849.P10248614631853328535.a, A350941, A350941.P4525697528803141176.a, A001222, A001222.P11318177267732088261.a, A122111, A122111.P18124015185857335041.a, A257991, A257991.P9003885035180655311.f1, A257991.P9003885035180655311.a, A344616, A344616.P9154132711565358048.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014963, A014963.P5975177236000282614.a, A061395, A061395.P8431317036300486107.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A052126, A052126.P1944428405920482243.a, A087207, A087207.P12536008426233777954.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A350950

/-! ## A350950.P14733628000782319588

`A300056(A296560(n+1))-A300056(A296188(n+1))`
-/

namespace A350950.P14733628000782319588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300056 (A296560 (n + 1)).toNat - A300056 (A296188 (n + 1)).toNat

end

end A350950.P14733628000782319588

namespace A350950

/-- `A300056(A296560(n+1))-A300056(A296188(n+1))` -/
def P14733628000782319588.Spec : Prop :=
  ∀ n, P14733628000782319588.a n = A350950 (n + 1)

end A350950

/-! ## A350950.P8122104568969811185

`A008683(or(A000096(n), A223762(n+1)))`
-/

namespace A350950.P8122104568969811185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor (A000096 n) (A223762 (n + 1))).toNat

end

end A350950.P8122104568969811185

namespace A350950

/-- `A008683(or(A000096(n), A223762(n+1)))` -/
def P8122104568969811185.Spec : Prop :=
  ∀ n, P8122104568969811185.a n = A350950 (n + 1)

end A350950

/-!
# A350951: Number of odd parts minus number of odd conjugate parts in the integer partition with Heinz number n.

The programs for A350951, there is no canonical definition to state claims against.
-/

/-! ## A350951.P2444829558012108358

`A350942(n+1)-A350941(n)`
-/

namespace A350951.P2444829558012108358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350942 (n + 1) - A350941 n

end

end A350951.P2444829558012108358

/-! ## A350951.P14362873407143093959

`A195017(n+1)-A350849(n+1)`
-/

namespace A350951.P14362873407143093959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (n + 1) - A350849 (n + 1)

end

end A350951.P14362873407143093959

/-! ## A350951.P2632018421542638794

`A257991(n+1)-A344616(n+1)`
-/

namespace A350951.P2632018421542638794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) - A344616 (n + 1)

end

end A350951.P2632018421542638794

/-! ## A350951.P17771559691708435133

`A257991(n+1)-abs(A316524(n+1))`
-/

namespace A350951.P17771559691708435133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) - |A316524 (n + 1)|

end

end A350951.P17771559691708435133

/-! ## A350951.P16033893310955584689

`A001222(A247503(n+1))-A344616(n+1)`
-/

namespace A350951.P16033893310955584689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A247503 (n + 1)).toNat - A344616 (n + 1)

end

end A350951.P16033893310955584689

/-! ## A350951.P9302977329492858746

`A257992(A003961(n+1))-A344616(n+1)`
-/

namespace A350951.P9302977329492858746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A003961 (n + 1)).toNat - A344616 (n + 1)

end

end A350951.P9302977329492858746

/-! ## A350951.P15890618848802752889

`A001222(n+1)-(A344616(n+1)+A257992(n+1))`
-/

namespace A350951.P15890618848802752889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - (A344616 (n + 1) + A257992 (n + 1))

end

end A350951.P15890618848802752889

/-! ## A350951.P10203477449412798219

`A001222(n+1)-(A344616(n+1)+A001222(A248101(n+1)))`
-/

namespace A350951.P10203477449412798219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - (A344616 (n + 1) + A001222 (A248101 (n + 1)).toNat)

end

end A350951.P10203477449412798219

/-! ## A350951.P18040184975470523761

`A257991(n+1)-(A257991(A322865(n+1))+A241917(n+1))`
-/

namespace A350951.P18040184975470523761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) - (A257991 (A322865 (n + 1)).toNat + A241917 (n + 1))

end

end A350951.P18040184975470523761

/-! ## A350951.P17718600559033846644

`A350942(n+1)-A195017(A122111(n+1))`
-/

namespace A350951.P17718600559033846644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350942 (n + 1) - A195017 (A122111 (n + 1)).toNat

end

end A350951.P17718600559033846644

/-!
# A350952: The smallest number whose binary expansion has exactly n distinct runs.

The programs for A350952, there is no canonical definition to state claims against.
-/

/-! ## A350952.P14278234909282088210

`or(n, A033097(A350268(n)))`
-/

namespace A350952.P14278234909282088210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A033097 (A350268 n).toNat)

end

end A350952.P14278234909282088210

/-! ## A350952.P4879999400825982772

`or(n, A357184(A027610(n+1)))`
-/

namespace A350952.P4879999400825982772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A357184 (A027610 (n + 1)).toNat)

end

end A350952.P4879999400825982772

/-!
# A350955: Minimal determinant of an n X n symmetric Toeplitz matrix using the first n prime numbers.

The programs for A350955, there is no canonical definition to state claims against.
-/

/-! ## A350955.P15137472922384939300

`1-A094053(A192459(n))+n`
-/

namespace A350955.P15137472922384939300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A094053 (A192459 n).toNat + (n : ℤ)

end

end A350955.P15137472922384939300

/-!
# A350956: Maximal determinant of an n X n symmetric Toeplitz matrix using the first n prime numbers.

The programs for A350956, there is no canonical definition to state claims against.
-/

/-! ## A350956.P16565857084624159182

`A294178(A229002(n))-n`
-/

namespace A350956.P16565857084624159182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294178 (A229002 n).toNat - (n : ℤ)

end

end A350956.P16565857084624159182

/-!
# A350957: Number of ways to write 2*n as 3^i (i >= 0) plus a prime.

The programs for A350957, there is no canonical definition to state claims against.
-/

/-! ## A350957.P7773526784318677207

`A282432(2*(n+1))`
-/

namespace A350957.P7773526784318677207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282432 (2 * (n + 1))

end

end A350957.P7773526784318677207

/-! ## A350957.P8273131793733332893

`dr(A282432(A103517(n)))`
-/

namespace A350957.P8273131793733332893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A282432 (A103517 n).toNat)

end

end A350957.P8273131793733332893

/-! ## A350957.P10023691089970867080

`dr(A282432(A004277(n+1)))`
-/

namespace A350957.P10023691089970867080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A282432 (A004277 (n + 1)).toNat)

end

end A350957.P10023691089970867080

/-! ## A350957.P10420085917802815359

`A350628(n+1)+A101264(n)`
-/

namespace A350957.P10420085917802815359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350628 (n + 1) + A101264 n

end

end A350957.P10420085917802815359

/-! ## A350957.P3307934029212336295

`A350628(n+1)+A010051(Δ[n²])`
-/

namespace A350957.P3307934029212336295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350628 (n + 1) + A010051 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350957.P3307934029212336295

/-! ## A350957.P15902849251324266986

`A350628(n+1)+char[A005097(n+1)]`
-/

namespace A350957.P15902849251324266986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350628 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A350957.P15902849251324266986

/-! ## A350957.P11914997952839796237

`A350628(n+1)+A061358(A062545(n))`
-/

namespace A350957.P11914997952839796237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350628 (n + 1) + A061358 (A062545 n).toNat

end

end A350957.P11914997952839796237

/-! ## A350957.P10161424455083952238

`A350628(n+1)+A121559(A004277(n+1))`
-/

namespace A350957.P10161424455083952238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350628 (n + 1) + A121559 (A004277 (n + 1)).toNat

end

end A350957.P10161424455083952238

/-!
# A350958: Positive numbers k such that 2k cannot be written as 3^i (i >= 0) plus a prime.

The programs for A350958, there is no canonical definition to state claims against.
-/

/-! ## A350958.P3612715405938108980

`A058517(n+1)/2`
-/

namespace A350958.P3612715405938108980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058517 (n + 1) : ℚ) / 2

end

end A350958.P3612715405938108980

/-! ## A350958.P9730285374976244559

`A001281(A058517(n+1))`
-/

namespace A350958.P9730285374976244559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A058517 (n + 1)).toNat

end

end A350958.P9730285374976244559

/-! ## A350958.P12087834810156538182

`A004524(A058517(n+1)+1)`
-/

namespace A350958.P12087834810156538182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A058517 (n + 1) + 1).toNat

end

end A350958.P12087834810156538182

/-! ## A350958.P15999410851692406058

`A004526(A058517(n+1)+1)`
-/

namespace A350958.P15999410851692406058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A058517 (n + 1) + 1).toNat

end

end A350958.P15999410851692406058

/-! ## A350958.P2971597541101120108

`A028242(A058517(n+1)+1)`
-/

namespace A350958.P2971597541101120108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A058517 (n + 1) + 1).toNat

end

end A350958.P2971597541101120108

/-! ## A350958.P6978944433913795654

`A057979(A058517(n+1)+1)`
-/

namespace A350958.P6978944433913795654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A058517 (n + 1) + 1).toNat

end

end A350958.P6978944433913795654

/-! ## A350958.P6869490615343791902

`A071045(A058517(n+1)+1)`
-/

namespace A350958.P6869490615343791902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (A058517 (n + 1) + 1).toNat

end

end A350958.P6869490615343791902

/-! ## A350958.P7183323945927848482

`A000463(A058517(n+1)-1)`
-/

namespace A350958.P7183323945927848482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A058517 (n + 1) - 1).toNat

end

end A350958.P7183323945927848482

/-! ## A350958.P10256140690767885667

`A001057(A058517(n+1)-1)`
-/

namespace A350958.P10256140690767885667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A058517 (n + 1) - 1).toNat

end

end A350958.P10256140690767885667

/-! ## A350958.P6620044570066933181

`A003602(A058517(n+1)-1)`
-/

namespace A350958.P6620044570066933181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A058517 (n + 1) - 1).toNat

end

end A350958.P6620044570066933181

/-!
# A350959: Number of ways to write 2*n+1 as 2^i (i >= 0) plus a prime.

The programs for A350959, there is no canonical definition to state claims against.
-/

/-! ## A350959.P4301205530103246753

`A109925(2*n+1)`
-/

namespace A350959.P4301205530103246753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (2 * n + 1)

end

end A350959.P4301205530103246753

/-! ## A350959.P9240289185746310733

`dr(A109925(record[xor(1, n)]))`
-/

namespace A350959.P9240289185746310733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A109925 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A350959.P9240289185746310733

/-! ## A350959.P14496499386326225255

`A109925(or(1, 2*n))%7`
-/

namespace A350959.P14496499386326225255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109925 (Nat.lor 1 (2 * n))) 7

end

end A350959.P14496499386326225255

/-! ## A350959.P8509779653348506835

`A109925(n+1+n)%7`
-/

namespace A350959.P8509779653348506835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109925 (n + 1 + n)) 7

end

end A350959.P8509779653348506835

/-! ## A350959.P12541265979442681579

`A397307(A223134(n))`
-/

namespace A350959.P12541265979442681579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397307 (A223134 n).toNat

end

end A350959.P12541265979442681579

/-! ## A350959.P747830706596306750

`dr(A109925(Δ[A000290(n)]))`
-/

namespace A350959.P747830706596306750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A109925 (f1 (n + 1) - f1 n).toNat)

end

end A350959.P747830706596306750

/-! ## A350959.P949230923342653393

`A007953(A109925(or(1, 2*n)))`
-/

namespace A350959.P949230923342653393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A109925 (Nat.lor 1 (2 * n))).toNat

end

end A350959.P949230923342653393

/-! ## A350959.P14848792124824724524

`A002998(A109925(n+1+n))`
-/

namespace A350959.P14848792124824724524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 (A109925 (n + 1 + n)).toNat

end

end A350959.P14848792124824724524

/-! ## A350959.P14395784790125034200

`A007318(C(2, n))*A109925(or(1, 2*n))`
-/

namespace A350959.P14395784790125034200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A109925 (Nat.lor 1 (2 * n))

end

end A350959.P14395784790125034200

/-!
# A350960: a(n) = (A006285(n)-1)/2.

The programs for A350960, there is no canonical definition to state claims against.
-/

/-! ## A350960.P2277288481397668064

`(A006285(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350960.P2277288481397668064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006285 (n + 1) - 1 : ℚ) / 2

end

end A350960.P2277288481397668064

/-! ## A350960.P15197585853006999953

`floor(A006285(n+1)/2)`
-/

namespace A350960.P15197585853006999953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006285 (n + 1) : ℚ) / 2⌋

end

end A350960.P15197585853006999953

/-! ## A350960.P5930282421398142809

`floor(A133122(ceil(sin(n)²)+1+n)/2)`
-/

namespace A350960.P5930282421398142809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133122 (⌈Real.sin (n : ℝ) ^ 2⌉ + 1 + (n : ℤ)).toNat : ℚ) / 2⌋

end

end A350960.P5930282421398142809

/-! ## A350960.P6485402849741003325

`eq[A002483(n), A276417(n)]`
-/

namespace A350960.P6485402849741003325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350960.P6485402849741003325

/-! ## A350960.P15916777260804478255

`eq[A037213(n), A276417(n)]`
-/

namespace A350960.P15916777260804478255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350960.P15916777260804478255

/-! ## A350960.P829246864790595952

`eq[A048298(n), A276417(n)]`
-/

namespace A350960.P829246864790595952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350960.P829246864790595952

/-! ## A350960.P13719863771767976900

`eq[A060147(n), A276417(n)]`
-/

namespace A350960.P13719863771767976900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060147 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350960.P13719863771767976900

/-! ## A350960.P9485300166718157789

`eq[A063524(n), A276417(n)]`
-/

namespace A350960.P9485300166718157789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350960.P9485300166718157789

/-! ## A350960.P5374986779907054885

`eq[A099892(n), A276417(n)]`
-/

namespace A350960.P5374986779907054885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350960.P5374986779907054885

/-! ## A350960.P1016639461416564885

`eq[A099893(n), A276417(n)]`
-/

namespace A350960.P1016639461416564885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350960.P1016639461416564885

/-! ## A350960.P9825254111761125110

`eq[A117911(n), A276417(n)]`
-/

namespace A350960.P9825254111761125110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350960.P9825254111761125110

/-! ## A350960.P15275848659997552621

`eq[A282459(n), A345380(n)]`
-/

namespace A350960.P15275848659997552621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282459 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350960.P15275848659997552621

/-! ## A350960.P507962480753459189

`eq[A029837(n+1), A282459(n)]`
-/

namespace A350960.P507962480753459189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350960.P507962480753459189

/-! ## A350960.P11840504014452128446

`eq[A056762(n+1), A276417(n)]`
-/

namespace A350960.P11840504014452128446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350960.P11840504014452128446

/-! ## A350960.P2646096576471531401

`eq[0, A109925(2*n+1)]`
-/

namespace A350960.P2646096576471531401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350960.P2646096576471531401

/-! ## A350960.P3687075362765366633

`A004524(A006285(n+1))`
-/

namespace A350960.P3687075362765366633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A006285 (n + 1)).toNat

end

end A350960.P3687075362765366633

/-!
# A350961: a(n) = Sum_{k=1..n} 3^Omega(k).

The programs for A350961, the canonical program `A350961.P11085812314535850052` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350961 has offset 1).

The definition of A350961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350961.P2843944106986886672

`∑[3^∑{e}[n+1, #]]`
-/

namespace A350961.P2843944106986886672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P2843944106986886672

namespace A350961

/-- `∑[3^∑{e}[n+1, #]]` -/
def P2843944106986886672.Spec : Prop :=
  ∀ n, (P2843944106986886672.a n : ℤ) = A350961 (n + 1)

end A350961

/-! ## A350961.P11085812314535850052

`∑[∏{e}[n+1, 3^#]]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350961

/-- `∑[∏{e}[n+1, 3^#]]` -/
def P11085812314535850052.Spec : Prop :=
  ∀ n, (P11085812314535850052.a n : ℤ) = A350961 (n + 1)

theorem P11085812314535850052.correct : P11085812314535850052.Spec := by
  intro n
  simp only [A350961, Nat.add_sub_cancel]

end A350961

/-! ## A350961.P6901416616696455106

`∑[3^∑{p}[n+1, val(n+1, #)]]`
-/

namespace A350961.P6901416616696455106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (n + 1) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P6901416616696455106

namespace A350961

/-- `∑[3^∑{p}[n+1, val(n+1, #)]]` -/
def P6901416616696455106.Spec : Prop :=
  ∀ n, (P6901416616696455106.a n : ℤ) = A350961 (n + 1)

end A350961

/-! ## A350961.P5709599945792862448

`∑[∏{p}[n+1, 3^val(n+1, #)]]`
-/

namespace A350961.P5709599945792862448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 3 ^ SequenceMachineLib.valuation (n + 1) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P5709599945792862448

namespace A350961

/-- `∑[∏{p}[n+1, 3^val(n+1, #)]]` -/
def P5709599945792862448.Spec : Prop :=
  ∀ n, (P5709599945792862448.a n : ℤ) = A350961 (n + 1)

end A350961

/-! ## A350961.P8619466968662461912

`a(n-1)+3^∑{e}[n+1, #]` with `a(0)=1`
-/

namespace A350961.P8619466968662461912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A350961.P8619466968662461912

namespace A350961

/-- `a(n-1)+3^∑{e}[n+1, #]` -/
def P8619466968662461912.Spec : Prop :=
  ∀ n, (P8619466968662461912.a n : ℤ) = A350961 (n + 1)

end A350961

/-! ## A350961.P6935364622848895200

`∏{e}[n+1, 3^#]+a(n-1)` with `a(0)=1`
-/

namespace A350961.P6935364622848895200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), 3 ^ Nat.factorization (f1 n) p + a (n - 1)

end

end A350961.P6935364622848895200

namespace A350961

/-- `∏{e}[n+1, 3^#]+a(n-1)` -/
def P6935364622848895200.Spec : Prop :=
  ∀ n, (P6935364622848895200.a n : ℤ) = A350961 (n + 1)

end A350961

/-! ## A350961.P8128433179942931173

`∑[A165824(n+1)]`
-/

namespace A350961.P8128433179942931173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P8128433179942931173

namespace A350961

/-- `∑[A165824(n+1)]` -/
def P8128433179942931173.Spec : Prop :=
  ∀ n, P8128433179942931173.a n = A350961 (n + 1)

end A350961

/-! ## A350961.P9304639989055613928

`∑[sqrt(A165830(n+1))]`
-/

namespace A350961.P9304639989055613928
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165830 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P9304639989055613928

namespace A350961

/-- `∑[sqrt(A165830(n+1))]` -/
def P9304639989055613928.Spec : Prop :=
  ∀ n, P9304639989055613928.a n = (A350961 (n + 1) : ℝ)

end A350961

/-! ## A350961.P11093655864449707508

`∑[3^Δ[A022559(n)]]`
-/

namespace A350961.P11093655864449707508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P11093655864449707508

namespace A350961

/-- `∑[3^Δ[A022559(n)]]` -/
def P11093655864449707508.Spec : Prop :=
  ∀ n, P11093655864449707508.a n = (A350961 (n + 1) : ℚ)

end A350961

/-! ## A350961.P7951220597090294855

`∑[3^A001222(n+1)]`
-/

namespace A350961.P7951220597090294855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P7951220597090294855

namespace A350961

/-- `∑[3^A001222(n+1)]` -/
def P7951220597090294855.Spec : Prop :=
  ∀ n, P7951220597090294855.a n = (A350961 (n + 1) : ℚ)

end A350961

/-! ## A350961.P6880854099143787068

`∑[3^val(A165825(n+1), 4)]`
-/

namespace A350961.P6880854099143787068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P6880854099143787068

namespace A350961

/-- `∑[3^val(A165825(n+1), 4)]` -/
def P6880854099143787068.Spec : Prop :=
  ∀ n, (P6880854099143787068.a n : ℤ) = A350961 (n + 1)

end A350961

/-! ## A350961.P1866483567547828812

`∑[A166624(n+1)/(n+1)]`
-/

namespace A350961.P1866483567547828812
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166624 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P1866483567547828812

namespace A350961

/-- `∑[A166624(n+1)/(n+1)]` -/
def P1866483567547828812.Spec : Prop :=
  ∀ n, P1866483567547828812.a n = (A350961 (n + 1) : ℚ)

end A350961

/-! ## A350961.P9545600053828313911

`∑[A000244(A001222(n+1))]`
-/

namespace A350961.P9545600053828313911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P9545600053828313911

namespace A350961

/-- `∑[A000244(A001222(n+1))]` -/
def P9545600053828313911.Spec : Prop :=
  ∀ n, P9545600053828313911.a n = A350961 (n + 1)

end A350961

/-! ## A350961.P13348256829430558043

`∑[A003959(A061142(n+1))]`
-/

namespace A350961.P13348256829430558043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P13348256829430558043

namespace A350961

/-- `∑[A003959(A061142(n+1))]` -/
def P13348256829430558043.Spec : Prop :=
  ∀ n, P13348256829430558043.a n = A350961 (n + 1)

end A350961

/-! ## A350961.P93484116480939411

`∑[A122111(A105560(n+1)²)]`
-/

namespace A350961.P93484116480939411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A105560 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P93484116480939411

namespace A350961

/-- `∑[A122111(A105560(n+1)²)]` -/
def P93484116480939411.Spec : Prop :=
  ∀ n, P93484116480939411.a n = A350961 (n + 1)

end A350961

/-! ## A350961.P5079144102241835208

`∑[A322865(A105560(n+1)²)]`
-/

namespace A350961.P5079144102241835208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322865 (A105560 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P5079144102241835208

namespace A350961

/-- `∑[A322865(A105560(n+1)²)]` -/
def P5079144102241835208.Spec : Prop :=
  ∀ n, P5079144102241835208.a n = A350961 (n + 1)

end A350961

/-! ## A350961.P6494876286171604134

`∑[A017913(2*A001222(n+1))]`
-/

namespace A350961.P6494876286171604134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 (2 * A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P6494876286171604134

namespace A350961

/-- `∑[A017913(2*A001222(n+1))]` -/
def P6494876286171604134.Spec : Prop :=
  ∀ n, P6494876286171604134.a n = A350961 (n + 1)

end A350961

/-! ## A350961.P1875199881458792994

`∑[A140303(C(A001222(n+1)+1, 2))]`
-/

namespace A350961.P1875199881458792994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 (Nat.choose (A001222 (n + 1) + 1).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P1875199881458792994

namespace A350961

/-- `∑[A140303(C(A001222(n+1)+1, 2))]` -/
def P1875199881458792994.Spec : Prop :=
  ∀ n, P1875199881458792994.a n = A350961 (n + 1)

end A350961

/-! ## A350961.P1111043418235120065

`∑[A167325(n+1)/A167321(n+1)]`
-/

namespace A350961.P1111043418235120065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167325 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P1111043418235120065

namespace A350961

/-- `∑[A167325(n+1)/A167321(n+1)]` -/
def P1111043418235120065.Spec : Prop :=
  ∀ n, P1111043418235120065.a n = (A350961 (n + 1) : ℚ)

end A350961

/-! ## A350961.P14268362792185390729

`∑[A017913(A001222((n+1)²))]`
-/

namespace A350961.P14268362792185390729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 (A001222 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350961.P14268362792185390729

namespace A350961

/-- `∑[A017913(A001222((n+1)²))]` -/
def P14268362792185390729.Spec : Prop :=
  ∀ n, P14268362792185390729.a n = A350961 (n + 1)

end A350961

/-!
# A350962: a(n) = A068527(2*n).

The programs for A350962, the canonical program `A350962.P11725541393897597194` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350962 has offset 0).

The definition of A350962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350962.P100400543988733839

`ceil(sqrt(2*n))²-2*n`
-/

namespace A350962.P100400543988733839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n : ℝ)⌉ ^ 2 - (2 * n : ℤ)

end

end A350962.P100400543988733839

namespace A350962

/-- `ceil(sqrt(2*n))²-2*n` -/
def P100400543988733839.Spec : Prop :=
  ∀ n, P100400543988733839.a n = A350962 n

theorem P100400543988733839.correct : P100400543988733839.Spec := by
  intro n
  simp only [A350962, Nat.add_sub_cancel, A350962.P100400543988733839.a, A350962.P11725541393897597194.a, A068527, A068527.P16594543609173014161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A350962

/-! ## A350962.P11725541393897597194

`A068527(2*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A350962

/-- `A068527(2*n)` -/
def P11725541393897597194.Spec : Prop :=
  ∀ n, P11725541393897597194.a n = A350962 n

theorem P11725541393897597194.correct : P11725541393897597194.Spec := by
  intro n
  simp only [A350962]

end A350962

/-! ## A350962.P2689427949142556690

`(ceil(sqrt(2*n))²+4)%(n+2)`
-/

namespace A350962.P2689427949142556690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈Real.sqrt (2 * n : ℝ)⌉ ^ 2 + 4) (n + 2 : ℤ)

end

end A350962.P2689427949142556690

namespace A350962

/-- `(ceil(sqrt(2*n))²+4)%(n+2)` -/
def P2689427949142556690.Spec : Prop :=
  ∀ n, P2689427949142556690.a n = A350962 n

end A350962

/-! ## A350962.P10545004505896381631

`abs(ceil(sqrt(A005843(n)))²-n-n)`
-/

namespace A350962.P10545004505896381631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.sqrt (A005843 n : ℝ)⌉ ^ 2 - (n : ℤ) - (n : ℤ)|

end

end A350962.P10545004505896381631

namespace A350962

/-- `abs(ceil(sqrt(A005843(n)))²-n-n)` -/
def P10545004505896381631.Spec : Prop :=
  ∀ n, P10545004505896381631.a n = A350962 n

end A350962

/-! ## A350962.P8695377738800324881

`abs(2*n-A048761(2*n))`
-/

namespace A350962.P8695377738800324881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A048761 (2 * n)|

end

end A350962.P8695377738800324881

namespace A350962

/-- `abs(2*n-A048761(2*n))` -/
def P8695377738800324881.Spec : Prop :=
  ∀ n, P8695377738800324881.a n = A350962 n

end A350962

/-! ## A350962.P17438533749197293211

`A053186(A020703(2*n+1))`
-/

namespace A350962.P17438533749197293211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A020703 (2 * n + 1)).toNat

end

end A350962.P17438533749197293211

namespace A350962

/-- `A053186(A020703(2*n+1))` -/
def P17438533749197293211.Spec : Prop :=
  ∀ n, P17438533749197293211.a n = A350962 n

end A350962

/-! ## A350962.P5577399073226027731

`A025581(eq[A167301(n+1), A238801(n)])`
-/

namespace A350962.P5577399073226027731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A350962.P5577399073226027731

namespace A350962

/-- `A025581(eq[A167301(n+1), A238801(n)])` -/
def P5577399073226027731.Spec : Prop :=
  ∀ n, P5577399073226027731.a n = A350962 n

end A350962

/-! ## A350962.P14861762449645367463

`A025581(A099375(n)+A008574(n))`
-/

namespace A350962.P14861762449645367463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A099375 n + A008574 n).toNat

end

end A350962.P14861762449645367463

namespace A350962

/-- `A025581(A099375(n)+A008574(n))` -/
def P14861762449645367463.Spec : Prop :=
  ∀ n, P14861762449645367463.a n = A350962 n

end A350962

/-! ## A350962.P13753509427399523319

`A249142(n²+1)`
-/

namespace A350962.P13753509427399523319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249142 (n ^ 2 + 1)

end

end A350962.P13753509427399523319

namespace A350962

/-- `A249142(n²+1)` -/
def P13753509427399523319.Spec : Prop :=
  ∀ n, P13753509427399523319.a n = A350962 n

end A350962

/-!
# A350965: a(n) = sqrt(6*A138288(n)^2 - 2).

The programs for A350965, the canonical program `A350965.P17319960714308467739` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350965 has offset 0).

The definition of A350965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350965.P17319960714308467739

`sqrt(6*A138288(n)²-2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A350965

/-- `sqrt(6*A138288(n)²-2)` -/
def P17319960714308467739.Spec : Prop :=
  ∀ n, P17319960714308467739.a n = (A350965 n : ℝ)

end A350965

/-! ## A350965.P13322543611439317869

`ogf((2+2x)/(1-10x+x^2))`
-/

namespace A350965.P13322543611439317869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2] [1, -10, 1] n

end

end A350965.P13322543611439317869

namespace A350965

/-- `ogf((2+2x)/(1-10x+x^2))` -/
def P13322543611439317869.Spec : Prop :=
  ∀ n, P13322543611439317869.a n = A350965 n

end A350965

/-! ## A350965.P17828823763066785131

`10*a(n-1)-a(n-2)` with `a(0)=2, a(1)=22`
-/

namespace A350965.P17828823763066785131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 22] fun n a =>
  10 * a (n - 1) - a (n - 2)

end

end A350965.P17828823763066785131

namespace A350965

/-- `10*a(n-1)-a(n-2)` -/
def P17828823763066785131.Spec : Prop :=
  ∀ n, P17828823763066785131.a n = A350965 n

end A350965

/-! ## A350965.P3646754311947714926

`Δ[A132596(n)]`
-/

namespace A350965.P3646754311947714926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350965.P3646754311947714926

namespace A350965

/-- `Δ[A132596(n)]` -/
def P3646754311947714926.Spec : Prop :=
  ∀ n, P3646754311947714926.a n = A350965 n

end A350965

/-! ## A350965.P6617672032958720712

`A041006(2*n)`
-/

namespace A350965.P6617672032958720712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 (2 * n)

end

end A350965.P6617672032958720712

namespace A350965

/-- `A041006(2*n)` -/
def P6617672032958720712.Spec : Prop :=
  ∀ n, P6617672032958720712.a n = A350965 n

end A350965

/-! ## A350965.P8139407625622154180

`2*A054320(n)`
-/

namespace A350965.P8139407625622154180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054320 n

end

end A350965.P8139407625622154180

namespace A350965

/-- `2*A054320(n)` -/
def P8139407625622154180.Spec : Prop :=
  ∀ n, P8139407625622154180.a n = A350965 n

end A350965

/-! ## A350965.P10917270029877569438

`Δ[A171640(n+1)]`
-/

namespace A350965.P10917270029877569438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350965.P10917270029877569438

namespace A350965

/-- `Δ[A171640(n+1)]` -/
def P10917270029877569438.Spec : Prop :=
  ∀ n, P10917270029877569438.a n = A350965 n

end A350965

/-! ## A350965.P3986320435798859021

`Δ[2*A098297(n)]`
-/

namespace A350965.P3986320435798859021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350965.P3986320435798859021

namespace A350965

/-- `Δ[2*A098297(n)]` -/
def P3986320435798859021.Spec : Prop :=
  ∀ n, P3986320435798859021.a n = A350965 n

end A350965

/-! ## A350965.P7349712489915429791

`2*(A157084(n)+1)`
-/

namespace A350965.P7349712489915429791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157084 n + 1)

end

end A350965.P7349712489915429791

namespace A350965

/-- `2*(A157084(n)+1)` -/
def P7349712489915429791.Spec : Prop :=
  ∀ n, P7349712489915429791.a n = A350965 n

end A350965

/-! ## A350965.P6900502163595396189

`4*A087125(n)+2`
-/

namespace A350965.P6900502163595396189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A087125 n + 2

end

end A350965.P6900502163595396189

namespace A350965

/-- `4*A087125(n)+2` -/
def P6900502163595396189.Spec : Prop :=
  ∀ n, P6900502163595396189.a n = A350965 n

end A350965

/-! ## A350965.P12926503456696953986

`2*A142238(2*n)`
-/

namespace A350965.P12926503456696953986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A142238 (2 * n)

end

end A350965.P12926503456696953986

namespace A350965

/-- `2*A142238(2*n)` -/
def P12926503456696953986.Spec : Prop :=
  ∀ n, P12926503456696953986.a n = A350965 n

end A350965

/-! ## A350965.P16481533609452374675

`2*A259594(2*n)`
-/

namespace A350965.P16481533609452374675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259594 (2 * n)

end

end A350965.P16481533609452374675

namespace A350965

/-- `2*A259594(2*n)` -/
def P16481533609452374675.Spec : Prop :=
  ∀ n, P16481533609452374675.a n = A350965 n

end A350965

/-! ## A350965.P9142394425892008317

`2*A085376(Δ[n²])`
-/

namespace A350965.P9142394425892008317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350965.P9142394425892008317

namespace A350965

/-- `2*A085376(Δ[n²])` -/
def P9142394425892008317.Spec : Prop :=
  ∀ n, P9142394425892008317.a n = A350965 n

end A350965

/-! ## A350965.P4502582677672249627

`2*A152448(Δ[n²])`
-/

namespace A350965.P4502582677672249627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152448 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350965.P4502582677672249627

namespace A350965

/-- `2*A152448(Δ[n²])` -/
def P4502582677672249627.Spec : Prop :=
  ∀ n, P4502582677672249627.a n = A350965 n

end A350965

/-! ## A350965.P7987316009864245881

`2*(∑[A087799(n)]-1)`
-/

namespace A350965.P7987316009864245881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A350965.P7987316009864245881

namespace A350965

/-- `2*(∑[A087799(n)]-1)` -/
def P7987316009864245881.Spec : Prop :=
  ∀ n, P7987316009864245881.a n = A350965 n

end A350965

/-! ## A350965.P9845306174258615879

`4*A253475(n+1)-2`
-/

namespace A350965.P9845306174258615879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A253475 (n + 1) - 2

end

end A350965.P9845306174258615879

namespace A350965

/-- `4*A253475(n+1)-2` -/
def P9845306174258615879.Spec : Prop :=
  ∀ n, P9845306174258615879.a n = A350965 n

end A350965

/-! ## A350965.P151280163707359593

`A077249(n)+A004189(n)`
-/

namespace A350965.P151280163707359593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077249 n + A004189 n

end

end A350965.P151280163707359593

namespace A350965

/-- `A077249(n)+A004189(n)` -/
def P151280163707359593.Spec : Prop :=
  ∀ n, P151280163707359593.a n = A350965 n

end A350965

/-! ## A350965.P12685924416919060855

`A001078(n+1)+A001078(n)`
-/

namespace A350965.P12685924416919060855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 (n + 1) + A001078 n

end

end A350965.P12685924416919060855

namespace A350965

/-- `A001078(n+1)+A001078(n)` -/
def P12685924416919060855.Spec : Prop :=
  ∀ n, P12685924416919060855.a n = A350965 n

end A350965

/-! ## A350965.P8101389240627456571

`A077251(n)+A004189(n+1)`
-/

namespace A350965.P8101389240627456571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077251 n + A004189 (n + 1)

end

end A350965.P8101389240627456571

namespace A350965

/-- `A077251(n)+A004189(n+1)` -/
def P8101389240627456571.Spec : Prop :=
  ∀ n, P8101389240627456571.a n = A350965 n

end A350965

/-! ## A350965.P6757351643709032669

`A132596(n+1)-A132596(n)`
-/

namespace A350965.P6757351643709032669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132596 (n + 1) - A132596 n

end

end A350965.P6757351643709032669

namespace A350965

/-- `A132596(n+1)-A132596(n)` -/
def P6757351643709032669.Spec : Prop :=
  ∀ n, P6757351643709032669.a n = A350965 n

end A350965

/-!
# A350966: a(n) = sqrt(28*A296377(n)^2 - 3).

The programs for A350966, there is no canonical definition to state claims against.
-/

/-! ## A350966.P15155465568783225543

`sqrt(28*A296377(n+1)²-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350966.P15155465568783225543
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (28 * A296377 (n + 1) ^ 2 - 3 : ℝ)

end

end A350966.P15155465568783225543

/-! ## A350966.P11258867102209164755

`A041044(2*n)`
-/

namespace A350966.P11258867102209164755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041044 (2 * n)

end

end A350966.P11258867102209164755

/-! ## A350966.P17120861398954604735

`A041472(2*n)/3`
-/

namespace A350966.P17120861398954604735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041472 (2 * n) : ℚ) / 3

end

end A350966.P17120861398954604735

/-! ## A350966.P13457277987726220011

`2*A296376(n+1)+1`
-/

namespace A350966.P13457277987726220011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A296376 (n + 1) + 1

end

end A350966.P13457277987726220011

/-! ## A350966.P702879805407940084

`2*A350981(n+1)+3`
-/

namespace A350966.P702879805407940084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350981 (n + 1) + 3

end

end A350966.P702879805407940084

/-! ## A350966.P6823730508045099705

`record[A041044(n)/(-1)^n]`
-/

namespace A350966.P6823730508045099705
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041044 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350966.P6823730508045099705

/-! ## A350966.P14615450369681571681

`A041008(A047463(n+1))`
-/

namespace A350966.P14615450369681571681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041008 (A047463 (n + 1)).toNat

end

end A350966.P14615450369681571681

/-! ## A350966.P695294262334640564

`A202637(A042964(n+1))`
-/

namespace A350966.P695294262334640564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202637 (A042964 (n + 1)).toNat

end

end A350966.P695294262334640564

/-! ## A350966.P6147402034944734785

`A202637(A053438(n+1))`
-/

namespace A350966.P6147402034944734785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202637 (A053438 (n + 1)).toNat

end

end A350966.P6147402034944734785

/-!
# A350967: a(n) = sqrt(84*A144930(n)^2 - 3).

The programs for A350967, the canonical program `A350967.P9758198226190832862` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350967 has offset 1).

The definition of A350967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350967.P9758198226190832862

`9*A298677(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A350967

/-- `9*A298677(n)` -/
def P9758198226190832862.Spec : Prop :=
  ∀ n, P9758198226190832862.a n = A350967 (n + 1)

theorem P9758198226190832862.correct : P9758198226190832862.Spec := by
  intro n
  simp only [A350967, Nat.add_sub_cancel]

end A350967

/-! ## A350967.P11009595513882466872

`A041148(2*n)`
-/

namespace A350967.P11009595513882466872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041148 (2 * n)

end

end A350967.P11009595513882466872

namespace A350967

/-- `A041148(2*n)` -/
def P11009595513882466872.Spec : Prop :=
  ∀ n, P11009595513882466872.a n = A350967 (n + 1)

end A350967

/-! ## A350967.P8192383019544766417

`Δ[A114049(n)/6]`
-/

namespace A350967.P8192383019544766417
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114049 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350967.P8192383019544766417

namespace A350967

/-- `Δ[A114049(n)/6]` -/
def P8192383019544766417.Spec : Prop :=
  ∀ n, P8192383019544766417.a n = (A350967 (n + 1) : ℚ)

end A350967

/-! ## A350967.P4307504147170585543

`A041634(2*n)/2`
-/

namespace A350967.P4307504147170585543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041634 (2 * n) : ℚ) / 2

end

end A350967.P4307504147170585543

namespace A350967

/-- `A041634(2*n)/2` -/
def P4307504147170585543.Spec : Prop :=
  ∀ n, P4307504147170585543.a n = (A350967 (n + 1) : ℚ)

end A350967

/-! ## A350967.P14709693477009887771

`A042456(2*n)/3`
-/

namespace A350967.P14709693477009887771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042456 (2 * n) : ℚ) / 3

end

end A350967.P14709693477009887771

namespace A350967

/-- `A042456(2*n)/3` -/
def P14709693477009887771.Spec : Prop :=
  ∀ n, P14709693477009887771.a n = (A350967 (n + 1) : ℚ)

end A350967

/-!
# A350968: a(n) = (A350967(n)-1)/2.

The programs for A350968, the canonical program `A350968.P3720301099072039786` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350968 has offset 1).

The definition of A350968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350968.P3720301099072039786

`(A350967(n+1)-1)/2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A350968

/-- `(A350967(n+1)-1)/2` -/
def P3720301099072039786.Spec : Prop :=
  ∀ n, P3720301099072039786.a n = (A350968 (n + 1) : ℚ)

end A350968

/-! ## A350968.P2625348201619430207

`floor(A350967(n+1)/2)`
-/

namespace A350968.P2625348201619430207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350967 (n + 1) : ℚ) / 2⌋

end

end A350968.P2625348201619430207

namespace A350968

/-- `floor(A350967(n+1)/2)` -/
def P2625348201619430207.Spec : Prop :=
  ∀ n, P2625348201619430207.a n = A350968 (n + 1)

end A350968

/-! ## A350968.P15581815347530143054

`floor(A041148(2*n)/2)`
-/

namespace A350968.P15581815347530143054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A041148 (2 * n) : ℚ) / 2⌋

end

end A350968.P15581815347530143054

namespace A350968

/-- `floor(A041148(2*n)/2)` -/
def P15581815347530143054.Spec : Prop :=
  ∀ n, P15581815347530143054.a n = A350968 (n + 1)

end A350968

/-! ## A350968.P4234849444894404258

`floor(A041634(2*n)/4)`
-/

namespace A350968.P4234849444894404258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A041634 (2 * n) : ℚ) / 4⌋

end

end A350968.P4234849444894404258

namespace A350968

/-- `floor(A041634(2*n)/4)` -/
def P4234849444894404258.Spec : Prop :=
  ∀ n, P4234849444894404258.a n = A350968 (n + 1)

end A350968

/-! ## A350968.P6168773228315156740

`floor(A042456(2*n)/6)`
-/

namespace A350968.P6168773228315156740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A042456 (2 * n) : ℚ) / 6⌋

end

end A350968.P6168773228315156740

namespace A350968

/-- `floor(A042456(2*n)/6)` -/
def P6168773228315156740.Spec : Prop :=
  ∀ n, P6168773228315156740.a n = A350968 (n + 1)

end A350968

/-!
# A350969: Let phi^(k) denote the k-th iterate of phi (A000010); a(n) is smallest positive k such that phi^(k)(Fibonacci(n)) = 1.

The programs for A350969, there is no canonical definition to state claims against.
-/

/-! ## A350969.P531407584519472053

`A049108(A065449(n+1))`
-/

namespace A350969.P531407584519472053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (A065449 (n + 1)).toNat

end

end A350969.P531407584519472053

/-! ## A350969.P2686741214503588478

`A049108(A000010(A000045(n+1)))`
-/

namespace A350969.P2686741214503588478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (A000010 (A000045 (n + 1)).toNat).toNat

end

end A350969.P2686741214503588478

/-! ## A350969.P2809991241734767049

`gcd(n!, A003434(A264800(n+1)))`
-/

namespace A350969.P2809991241734767049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A003434 (A264800 (n + 1)).toNat)

end

end A350969.P2809991241734767049

/-! ## A350969.P9533460027669262666

`A003434(A000045(round(acot(n)+n)+1))`
-/

namespace A350969.P9533460027669262666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A000045 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1).toNat).toNat

end

end A350969.P9533460027669262666

/-! ## A350969.P3752375387919331885

`A003434(A000045(3^C(a(n-1), 68)+n))` with `a(0)=1, a(1)=1`
-/

namespace A350969.P3752375387919331885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A003434 (A000045 (3 ^ Nat.choose (a (n - 1)).toNat 68 + n)).toNat

end

end A350969.P3752375387919331885

/-!
# A350971: Expansion of e.g.f.: (sec(x)*tan(x))^2*(1+sin(x)).

The programs for A350971, there is no canonical definition to state claims against.
-/

/-! ## A350971.P8736575557551680331

`A028923(∑[n-A051903(n+1)])`
-/

namespace A350971.P8736575557551680331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028923 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350971.P8736575557551680331

/-! ## A350971.P17523531884739978946

`A028923(∑[∑[A056175(2*(n+1))]])`
-/

namespace A350971.P17523531884739978946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028923 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350971.P17523531884739978946

/-! ## A350971.P6545734341576975110

`A028923(A000217(n)-A047263(n+1))`
-/

namespace A350971.P6545734341576975110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028923 (A000217 n - A047263 (n + 1)).toNat

end

end A350971.P6545734341576975110

/-!
# A350972: E.g.f. = tan(x).

The programs for A350972, there is no canonical definition to state claims against.
-/

/-! ## A350972.P2667594537570789917

`n%2*A000111(n)`
-/

namespace A350972.P2667594537570789917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A000111 n

end

end A350972.P2667594537570789917

/-! ## A350972.P7331886980550572405

`A009725(lcm(2, n)-n)`
-/

namespace A350972.P7331886980550572405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009725 (Nat.lcm 2 n - n)

end

end A350972.P7331886980550572405

/-! ## A350972.P48796958567447652

`and(1, n)*A009006(n)`
-/

namespace A350972.P48796958567447652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A009006 n

end

end A350972.P48796958567447652

/-! ## A350972.P1098779688118012061

`A008280(A084265(n))`
-/

namespace A350972.P1098779688118012061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (A084265 n).toNat

end

end A350972.P1098779688118012061

/-! ## A350972.P2427862831366057727

`A008281(A084263(n+1))`
-/

namespace A350972.P2427862831366057727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A084263 (n + 1)).toNat

end

end A350972.P2427862831366057727

/-! ## A350972.P11097031205968603341

`A008280(A212342(n+1))`
-/

namespace A350972.P11097031205968603341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (A212342 (n + 1)).toNat

end

end A350972.P11097031205968603341

/-! ## A350972.P173118706344149704

`A088874(A134519(n+1))`
-/

namespace A350972.P173118706344149704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088874 (A134519 (n + 1)).toNat

end

end A350972.P173118706344149704

/-! ## A350972.P17441520058440766363

`A008280(A266665(n+1))`
-/

namespace A350972.P17441520058440766363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (A266665 (n + 1)).toNat

end

end A350972.P17441520058440766363

/-! ## A350972.P8116275298178378247

`A008280(A347553(n+3))`
-/

namespace A350972.P8116275298178378247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (A347553 (n + 3)).toNat

end

end A350972.P8116275298178378247

/-! ## A350972.P11545680224934163720

`A309845(n)-A000111(n)`
-/

namespace A350972.P11545680224934163720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309845 n - A000111 n

end

end A350972.P11545680224934163720

/-!
# A350973: T(n,n-5), where T(*,*) is A350970.

The programs for A350973, there is no canonical definition to state claims against.
-/

/-! ## A350973.P5435177601757549689

`n!*A060060(n)`
-/

namespace A350973.P5435177601757549689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A060060 n

end

end A350973.P5435177601757549689

/-! ## A350973.P6986842183301898772

`A104035(C(n+5, 2)+n)`
-/

namespace A350973.P6986842183301898772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 (Nat.choose (n + 5) 2 + n)

end

end A350973.P6986842183301898772

/-! ## A350973.P5822138256523625451

`A350970(A055999(n+3))`
-/

namespace A350973.P5822138256523625451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350970 (A055999 (n + 3)).toNat

end

end A350973.P5822138256523625451

/-! ## A350973.P17539296315810695447

`A104035(eq[4, A025581(n)])`
-/

namespace A350973.P17539296315810695447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350973.P17539296315810695447

/-! ## A350973.P2726911109453214353

`A350970(eq[5, A025581(n)])`
-/

namespace A350973.P2726911109453214353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350973.P2726911109453214353

/-!
# A350974: T(n,n-7), where T(*,*) is A350970.

The programs for A350974, there is no canonical definition to state claims against.
-/

/-! ## A350974.P3018831677710496094

`n!*A060061(n)`
-/

namespace A350974.P3018831677710496094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A060061 n

end

end A350974.P3018831677710496094

/-! ## A350974.P14881963901024598204

`A104035(eq[6, A025581(n)])`
-/

namespace A350974.P14881963901024598204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350974.P14881963901024598204

/-! ## A350974.P106460146513163229

`A350970(eq[7, A025581(n)])`
-/

namespace A350974.P106460146513163229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350974.P106460146513163229

/-! ## A350974.P2597191633256780241

`A104035(eq[64, A130321(n)])`
-/

namespace A350974.P2597191633256780241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350974.P2597191633256780241

/-! ## A350974.P3137285413494249440

`∏[A028310(n)]*A060061(n)`
-/

namespace A350974.P3137285413494249440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A060061 n

end

end A350974.P3137285413494249440

/-!
# A350975: T(n,n-8), where T(*,*) is A350970.

The programs for A350975, there is no canonical definition to state claims against.
-/

/-! ## A350975.P8946122566202098911

`A155100(eq[8, A025581(n)])`
-/

namespace A350975.P8946122566202098911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350975.P8946122566202098911

/-! ## A350975.P15566604138793617704

`A350970(eq[8, A025581(n)])`
-/

namespace A350975.P15566604138793617704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350975.P15566604138793617704

/-! ## A350975.P2348930688569953384

`A350970(eq[17, A099375(n)])`
-/

namespace A350975.P2348930688569953384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350975.P2348930688569953384

/-! ## A350975.P5275705463068822200

`A155100(eq[9, A004736(n+1)])`
-/

namespace A350975.P5275705463068822200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350975.P5275705463068822200

/-! ## A350975.P16217699755034786351

`A350970(eq[9, A004736(n+1)])`
-/

namespace A350975.P16217699755034786351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350975.P16217699755034786351

/-!
# A350977: Numbers k such that x^3 - y^2 = k has no solution.

The programs for A350977, there is no canonical definition to state claims against.
-/

/-! ## A350977.P110375367015125163

`A198343(2*n+3)-A374996(A275492(n))`
-/

namespace A350977.P110375367015125163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198343 (2 * n + 3) - A374996 (A275492 n).toNat

end

end A350977.P110375367015125163

/-!
# A350979: a(0)=1, a(1)=652, thereafter a(n) = 254*a(n-1)-a(n-2)+378.

The programs for A350979, the canonical program `A350979.P2914505081122052744` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350979 has offset 0).

The definition of A350979 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `254*a(n-1)-a(n-2)+378` (program `A350979.P2914505081122052744`, by `A350979.P2914505081122052744.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350979.P2914505081122052744

`254*a(n-1)-a(n-2)+378` with `a(0)=1, a(1)=652`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350979

/-- `254*a(n-1)-a(n-2)+378` -/
def P2914505081122052744.Spec : Prop :=
  ∀ n, P2914505081122052744.a n = A350979 n

theorem P2914505081122052744.correct : P2914505081122052744.Spec := by
  intro n
  simp only [A350979]

end A350979

/-! ## A350979.P6305880602998748014

`A350981(Δ[n²])`
-/

namespace A350979.P6305880602998748014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350981 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350979.P6305880602998748014

namespace A350979

/-- `A350981(Δ[n²])` -/
def P6305880602998748014.Spec : Prop :=
  ∀ n, P6305880602998748014.a n = A350979 n

end A350979

/-! ## A350979.P6105965269956075164

`A296376(2*n+1)-1`
-/

namespace A350979.P6105965269956075164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296376 (2 * n + 1) - 1

end

end A350979.P6105965269956075164

namespace A350979

/-- `A296376(2*n+1)-1` -/
def P6105965269956075164.Spec : Prop :=
  ∀ n, P6105965269956075164.a n = A350979 n

end A350979

/-! ## A350979.P5179645631408807026

`A263943(2*n+1)/7`
-/

namespace A350979.P5179645631408807026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263943 (2 * n + 1) : ℚ) / 7

end

end A350979.P5179645631408807026

namespace A350979

/-- `A263943(2*n+1)/7` -/
def P5179645631408807026.Spec : Prop :=
  ∀ n, P5179645631408807026.a n = (A350979 n : ℚ)

end A350979

/-! ## A350979.P8747892315407978430

`record[A350981(A099375(n))]`
-/

namespace A350979.P8747892315407978430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350981 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350979.P8747892315407978430

namespace A350979

/-- `record[A350981(A099375(n))]` -/
def P8747892315407978430.Spec : Prop :=
  ∀ n, P8747892315407978430.a n = A350979 n

end A350979

/-!
# A350980: a(0) = 17, a(1) = 4700, thereafter a(n) = 254*a(n-1) - a(n-2) + 378.

The programs for A350980, there is no canonical definition to state claims against.
-/

/-! ## A350980.P16664178060776182734

`A350981(2*(n+1))`
-/

namespace A350980.P16664178060776182734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350981 (2 * (n + 1))

end

end A350980.P16664178060776182734

/-! ## A350980.P11409945761502944280

`A296376(2*(n+1))-1`
-/

namespace A350980.P11409945761502944280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296376 (2 * (n + 1)) - 1

end

end A350980.P11409945761502944280

/-! ## A350980.P5436193218675061427

`record[A350981(A099375(n)+1)]`
-/

namespace A350980.P5436193218675061427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350981 (A099375 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350980.P5436193218675061427

/-! ## A350980.P8468697311973008852

`record[A350981(2*A261363(n))]`
-/

namespace A350980.P8468697311973008852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350981 (2 * A261363 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350980.P8468697311973008852

/-! ## A350980.P16639324464761028209

`record[A350981(A000265(n+1)+1)]`
-/

namespace A350980.P16639324464761028209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350981 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350980.P16639324464761028209

/-!
# A350981: Union of A350979 and A350980.

The programs for A350981, there is no canonical definition to state claims against.
-/

/-! ## A350981.P6614726604313033117

`A296376(n+1)-1`
-/

namespace A350981.P6614726604313033117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296376 (n + 1) - 1

end

end A350981.P6614726604313033117

/-! ## A350981.P13256641438410062681

`A263943(n+1)/7`
-/

namespace A350981.P13256641438410062681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263943 (n + 1) : ℚ) / 7

end

end A350981.P13256641438410062681

/-! ## A350981.P9298068385505325976

`(A350966(n+1)-3)/2`
-/

namespace A350981.P9298068385505325976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350966 (n + 1) - 3 : ℚ) / 2

end

end A350981.P9298068385505325976

/-! ## A350981.P14091932188728370582

`(A041044(2*n)-3)/2`
-/

namespace A350981.P14091932188728370582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041044 (2 * n) - 3 : ℚ) / 2

end

end A350981.P14091932188728370582

/-! ## A350981.P7154911950305189730

`∪[A350979(n), A350980(n)]`
-/

namespace A350981.P7154911950305189730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350981.P7154911950305189730

/-! ## A350981.P2554166344905049803

`record[A296376(A261363(n))-1]`
-/

namespace A350981.P2554166344905049803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296376 (A261363 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350981.P2554166344905049803

/-!
# A350982: a(0)=0, a(1)=49, thereafter a(n) = 14*a(n-1)-a(n-2)+42.

The programs for A350982, the canonical program `A350982.P7309107077759329058` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350982 has offset 0).

The definition of A350982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-a(n-2)+42` (program `A350982.P7309107077759329058`, by `A350982.P7309107077759329058.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350982.P7309107077759329058

`14*a(n-1)-a(n-2)+42` with `a(0)=0, a(1)=49`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350982

/-- `14*a(n-1)-a(n-2)+42` -/
def P7309107077759329058.Spec : Prop :=
  ∀ n, P7309107077759329058.a n = A350982 n

theorem P7309107077759329058.correct : P7309107077759329058.Spec := by
  intro n
  simp only [A350982]

end A350982

/-! ## A350982.P15290049447542946362

`7*floor(∑[round(((sqrt(3)+2)^n)²)]/2)`
-/

namespace A350982.P15290049447542946362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Real.sqrt (3 : ℝ) + 2) ^ n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A350982.P15290049447542946362

namespace A350982

/-- `7*floor(∑[round(((sqrt(3)+2)^n)²)]/2)` -/
def P15290049447542946362.Spec : Prop :=
  ∀ n, P15290049447542946362.a n = A350982 n

end A350982

/-! ## A350982.P5913190998336175168

`lcm(7, 7*A001921(n))`
-/

namespace A350982.P5913190998336175168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (7 * A001921 n)

end

end A350982.P5913190998336175168

namespace A350982

/-- `lcm(7, 7*A001921(n))` -/
def P5913190998336175168.Spec : Prop :=
  ∀ n, (P5913190998336175168.a n : ℤ) = A350982 n

end A350982

/-! ## A350982.P13652832532740144559

`floor(7*A157088(n)/3)`
-/

namespace A350982.P13652832532740144559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * ((A157088 n : ℚ) / 3)⌋

end

end A350982.P13652832532740144559

namespace A350982

/-- `floor(7*A157088(n)/3)` -/
def P13652832532740144559.Spec : Prop :=
  ∀ n, P13652832532740144559.a n = A350982 n

end A350982

/-! ## A350982.P16200472703345519873

`floor(7*A251963(n+1)/2)`
-/

namespace A350982.P16200472703345519873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * ((A251963 (n + 1) : ℚ) / 2)⌋

end

end A350982.P16200472703345519873

namespace A350982

/-- `floor(7*A251963(n+1)/2)` -/
def P16200472703345519873.Spec : Prop :=
  ∀ n, P16200472703345519873.a n = A350982 n

end A350982

/-!
# A350983: a(0)=1, a(1)=25, a(2)=865; a(n) = 35*(a(n-1)-a(n-2))+a(n-3).

The programs for A350983, the canonical program `A350983.P18437822753455877181` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350983 has offset 0).

The definition of A350983 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `35*(a(n-1)-a(n-2))+a(n-3)` (program `A350983.P18437822753455877181`, by `A350983.P18437822753455877181.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350983.P18437822753455877181

`35*(a(n-1)-a(n-2))+a(n-3)` with `a(0)=1, a(1)=25, a(2)=865`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350983

/-- `35*(a(n-1)-a(n-2))+a(n-3)` -/
def P18437822753455877181.Spec : Prop :=
  ∀ n, P18437822753455877181.a n = A350983 n

theorem P18437822753455877181.correct : P18437822753455877181.Spec := by
  intro n
  simp only [A350983]

end A350983

/-! ## A350983.P18153719574224346567

`A072221(2*n)`
-/

namespace A350983.P18153719574224346567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 (2 * n)

end

end A350983.P18153719574224346567

namespace A350983

/-- `A072221(2*n)` -/
def P18153719574224346567.Spec : Prop :=
  ∀ n, P18153719574224346567.a n = A350983 n

end A350983

/-! ## A350983.P15702339577976733344

`3*A132592(n)+1`
-/

namespace A350983.P15702339577976733344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A132592 n + 1

end

end A350983.P15702339577976733344

namespace A350983

/-- `3*A132592(n)+1` -/
def P15702339577976733344.Spec : Prop :=
  ∀ n, P15702339577976733344.a n = A350983 n

end A350983

/-! ## A350983.P3382671323319369053

`A033539(4*n+1)`
-/

namespace A350983.P3382671323319369053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033539 (4 * n + 1)

end

end A350983.P3382671323319369053

namespace A350983

/-- `A033539(4*n+1)` -/
def P3382671323319369053.Spec : Prop :=
  ∀ n, P3382671323319369053.a n = A350983 n

end A350983

/-! ## A350983.P15357319719825322726

`A270889(2*n)-2`
-/

namespace A350983.P15357319719825322726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270889 (2 * n) - 2

end

end A350983.P15357319719825322726

namespace A350983

/-- `A270889(2*n)-2` -/
def P15357319719825322726.Spec : Prop :=
  ∀ n, P15357319719825322726.a n = A350983 n

end A350983

/-! ## A350983.P17778571671325391711

`6*A084703(n)+1`
-/

namespace A350983.P17778571671325391711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A084703 n + 1

end

end A350983.P17778571671325391711

namespace A350983

/-- `6*A084703(n)+1` -/
def P17778571671325391711.Spec : Prop :=
  ∀ n, P17778571671325391711.a n = A350983 n

end A350983

/-! ## A350983.P18050353458680620709

`or(1, A125651(2*n+1))`
-/

namespace A350983.P18050353458680620709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A125651 (2 * n + 1))

end

end A350983.P18050353458680620709

namespace A350983

/-- `or(1, A125651(2*n+1))` -/
def P18050353458680620709.Spec : Prop :=
  ∀ n, P18050353458680620709.a n = A350983 n

end A350983

/-! ## A350983.P7791710576592288927

`floor(A106329(2*n+1)/2)`
-/

namespace A350983.P7791710576592288927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A106329 (2 * n + 1) : ℚ) / 2⌋

end

end A350983.P7791710576592288927

namespace A350983

/-- `floor(A106329(2*n+1)/2)` -/
def P7791710576592288927.Spec : Prop :=
  ∀ n, P7791710576592288927.a n = A350983 n

end A350983

/-! ## A350983.P5673098675181586860

`A132592(n)+A056771(n)`
-/

namespace A350983.P5673098675181586860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132592 n + A056771 n

end

end A350983.P5673098675181586860

namespace A350983

/-- `A132592(n)+A056771(n)` -/
def P5673098675181586860.Spec : Prop :=
  ∀ n, P5673098675181586860.a n = A350983 n

end A350983

/-! ## A350983.P14390417598913957150

`A056771(n)+A001108(2*n)`
-/

namespace A350983.P14390417598913957150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056771 n + A001108 (2 * n)

end

end A350983.P14390417598913957150

namespace A350983

/-- `A056771(n)+A001108(2*n)` -/
def P14390417598913957150.Spec : Prop :=
  ∀ n, P14390417598913957150.a n = A350983 n

end A350983

/-!
# A350984: a(0)=0, a(1)=18, a(2)=612; a(n) = 35*(a(n-1)-a(n-2))+a(n-3).

The programs for A350984, the canonical program `A350984.P6809404551541342569` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350984 has offset 0).

The definition of A350984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `35*(a(n-1)-a(n-2))+a(n-3)` (program `A350984.P6809404551541342569`, by `A350984.P6809404551541342569.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350984.P12352774403571457653

`34*a(n-1)-a(n-2)` with `a(0)=0, a(1)=18`
-/

namespace A350984.P12352774403571457653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 18] fun n a =>
  34 * a (n - 1) - a (n - 2)

end

end A350984.P12352774403571457653

namespace A350984

/-- `34*a(n-1)-a(n-2)` -/
def P12352774403571457653.Spec : Prop :=
  ∀ n, P12352774403571457653.a n = A350984 n

end A350984

/-! ## A350984.P6809404551541342569

`35*(a(n-1)-a(n-2))+a(n-3)` with `a(0)=0, a(1)=18, a(2)=612`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350984

/-- `35*(a(n-1)-a(n-2))+a(n-3)` -/
def P6809404551541342569.Spec : Prop :=
  ∀ n, P6809404551541342569.a n = A350984 n

theorem P6809404551541342569.correct : P6809404551541342569.Spec := by
  intro n
  simp only [A350984]

end A350984

/-! ## A350984.P583889554864421661

`3*A082405(n)`
-/

namespace A350984.P583889554864421661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A082405 n

end

end A350984.P583889554864421661

namespace A350984

/-- `3*A082405(n)` -/
def P583889554864421661.Spec : Prop :=
  ∀ n, P583889554864421661.a n = A350984 n

end A350984

/-! ## A350984.P14341479788370866408

`A106328(Δ[n²])`
-/

namespace A350984.P14341479788370866408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106328 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350984.P14341479788370866408

namespace A350984

/-- `A106328(Δ[n²])` -/
def P14341479788370866408.Spec : Prop :=
  ∀ n, P14341479788370866408.a n = A350984 n

end A350984

/-! ## A350984.P5190123961678764431

`floor(A004294(n)/2)`
-/

namespace A350984.P5190123961678764431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004294 n : ℚ) / 2⌋

end

end A350984.P5190123961678764431

namespace A350984

/-- `floor(A004294(n)/2)` -/
def P5190123961678764431.Spec : Prop :=
  ∀ n, P5190123961678764431.a n = A350984 n

end A350984

/-! ## A350984.P8938256305012090844

`3*A001109(2*n)`
-/

namespace A350984.P8938256305012090844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001109 (2 * n)

end

end A350984.P8938256305012090844

namespace A350984

/-- `3*A001109(2*n)` -/
def P8938256305012090844.Spec : Prop :=
  ∀ n, P8938256305012090844.a n = A350984 n

end A350984

/-! ## A350984.P13941530300712965618

`A075848(2*n)/2`
-/

namespace A350984.P13941530300712965618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075848 (2 * n) : ℚ) / 2

end

end A350984.P13941530300712965618

namespace A350984

/-- `A075848(2*n)/2` -/
def P13941530300712965618.Spec : Prop :=
  ∀ n, P13941530300712965618.a n = (A350984 n : ℚ)

end A350984

/-! ## A350984.P3525405279652678783

`3*6*A091761(n)`
-/

namespace A350984.P3525405279652678783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (6 * A091761 n)

end

end A350984.P3525405279652678783

namespace A350984

/-- `3*6*A091761(n)` -/
def P3525405279652678783.Spec : Prop :=
  ∀ n, P3525405279652678783.a n = A350984 n

end A350984

/-! ## A350984.P15853600798998482890

`A276602(2*n+1)/3`
-/

namespace A350984.P15853600798998482890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276602 (2 * n + 1) : ℚ) / 3

end

end A350984.P15853600798998482890

namespace A350984

/-- `A276602(2*n+1)/3` -/
def P15853600798998482890.Spec : Prop :=
  ∀ n, P15853600798998482890.a n = (A350984 n : ℚ)

end A350984

/-! ## A350984.P11587980267101430825

`lcm(2, A106328(2*n+1))`
-/

namespace A350984.P11587980267101430825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A106328 (2 * n + 1))

end

end A350984.P11587980267101430825

namespace A350984

/-- `lcm(2, A106328(2*n+1))` -/
def P11587980267101430825.Spec : Prop :=
  ∀ n, (P11587980267101430825.a n : ℤ) = A350984 n

end A350984

/-!
# A350985: a(0)=4, a(1)=148, a(2)=5044; a(n) = 35*(a(n-1)-a(n-2))+a(n-3).

The programs for A350985, there is no canonical definition to state claims against.
-/

/-! ## A350985.P8904274909596692105

`A072221(Δ[n²])`
-/

namespace A350985.P8904274909596692105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350985.P8904274909596692105

/-! ## A350985.P5343213649316031518

`∑[4*A004294(n)]`
-/

namespace A350985.P5343213649316031518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350985.P5343213649316031518

/-! ## A350985.P17154430121464164084

`3*A008843(n)+1`
-/

namespace A350985.P17154430121464164084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008843 n + 1

end

end A350985.P17154430121464164084

/-! ## A350985.P13798475798987026871

`A098212(2*n)-1`
-/

namespace A350985.P13798475798987026871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098212 (2 * n) - 1

end

end A350985.P13798475798987026871

/-! ## A350985.P12569516193118310920

`4*A006062(n+1)`
-/

namespace A350985.P12569516193118310920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006062 (n + 1)

end

end A350985.P12569516193118310920

/-! ## A350985.P16544831634515983681

`3*A008845(n)+4`
-/

namespace A350985.P16544831634515983681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008845 n + 4

end

end A350985.P16544831634515983681

/-! ## A350985.P11655953305627870110

`A125651(2*(n+1))+1`
-/

namespace A350985.P11655953305627870110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125651 (2 * (n + 1)) + 1

end

end A350985.P11655953305627870110

/-! ## A350985.P12493836003132020005

`2*(A361491(n+1)+1)`
-/

namespace A350985.P12493836003132020005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A361491 (n + 1) + 1)

end

end A350985.P12493836003132020005

/-! ## A350985.P2190285834104138096

`A270889(2*n+1)-2`
-/

namespace A350985.P2190285834104138096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270889 (2 * n + 1) - 2

end

end A350985.P2190285834104138096

/-! ## A350985.P7196880755842517056

`3*A088920(n+1)-2`
-/

namespace A350985.P7196880755842517056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A088920 (n + 1) - 2

end

end A350985.P7196880755842517056

/-!
# A350986: a(0)=3, a(1)=105, a(2)=3567; a(n) = 35*(a(n-1)-a(n-2))+a(n-3).

The programs for A350986, the canonical program `A350986.P16013231584248601610` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350986 has offset 0).

The definition of A350986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350986.P16013231584248601610

`34*a(n-1)-a(n-2)` with `a(0)=3, a(1)=105`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350986

/-- `34*a(n-1)-a(n-2)` -/
def P16013231584248601610.Spec : Prop :=
  ∀ n, P16013231584248601610.a n = A350986 n

theorem P16013231584248601610.correct : P16013231584248601610.Spec := by
  intro n
  simp only [A350986]

end A350986

/-! ## A350986.P12384308152364573639

`Δ[3*A001110(n)]`
-/

namespace A350986.P12384308152364573639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350986.P12384308152364573639

namespace A350986

/-- `Δ[3*A001110(n)]` -/
def P12384308152364573639.Spec : Prop :=
  ∀ n, P12384308152364573639.a n = A350986 n

end A350986

/-! ## A350986.P7532448650949275127

`Δ[A350983(n)/8]`
-/

namespace A350986.P7532448650949275127
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350983 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350986.P7532448650949275127

namespace A350986

/-- `Δ[A350983(n)/8]` -/
def P7532448650949275127.Spec : Prop :=
  ∀ n, P7532448650949275127.a n = (A350986 n : ℚ)

end A350986

/-! ## A350986.P11718419078942216546

`A106328(2*(n+1))`
-/

namespace A350986.P11718419078942216546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106328 (2 * (n + 1))

end

end A350986.P11718419078942216546

namespace A350986

/-- `A106328(2*(n+1))` -/
def P11718419078942216546.Spec : Prop :=
  ∀ n, P11718419078942216546.a n = A350986 n

end A350986

/-! ## A350986.P16348482095757418221

`3*A046176(n+1)`
-/

namespace A350986.P16348482095757418221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046176 (n + 1)

end

end A350986.P16348482095757418221

namespace A350986

/-- `3*A046176(n+1)` -/
def P16348482095757418221.Spec : Prop :=
  ∀ n, P16348482095757418221.a n = A350986 n

end A350986

/-! ## A350986.P16431066295405861815

`A301318(6*n+4)`
-/

namespace A350986.P16431066295405861815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301318 (6 * n + 4)

end

end A350986.P16431066295405861815

namespace A350986

/-- `A301318(6*n+4)` -/
def P16431066295405861815.Spec : Prop :=
  ∀ n, P16431066295405861815.a n = A350986 n

end A350986

/-! ## A350986.P4261045869983286641

`3*A001109(Δ[n²])`
-/

namespace A350986.P4261045869983286641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001109 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350986.P4261045869983286641

namespace A350986

/-- `3*A001109(Δ[n²])` -/
def P4261045869983286641.Spec : Prop :=
  ∀ n, P4261045869983286641.a n = A350986 n

end A350986

/-! ## A350986.P6063464632160597144

`A075848(Δ[n²])/2`
-/

namespace A350986.P6063464632160597144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075848 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A350986.P6063464632160597144

namespace A350986

/-- `A075848(Δ[n²])/2` -/
def P6063464632160597144.Spec : Prop :=
  ∀ n, P6063464632160597144.a n = (A350986 n : ℚ)

end A350986

/-! ## A350986.P15548342946063491699

`3*(A251924(n+1)+1)`
-/

namespace A350986.P15548342946063491699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A251924 (n + 1) + 1)

end

end A350986.P15548342946063491699

namespace A350986

/-- `3*(A251924(n+1)+1)` -/
def P15548342946063491699.Spec : Prop :=
  ∀ n, P15548342946063491699.a n = A350986 n

end A350986

/-! ## A350986.P5453741731901439803

`3*A144534(2*n+1)`
-/

namespace A350986.P5453741731901439803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A144534 (2 * n + 1)

end

end A350986.P5453741731901439803

namespace A350986

/-- `3*A144534(2*n+1)` -/
def P5453741731901439803.Spec : Prop :=
  ∀ n, P5453741731901439803.a n = A350986 n

end A350986

/-!
# A350987: Triangular numbers that are binary palindromes.

The programs for A350987, there is no canonical definition to state claims against.
-/

/-! ## A350987.P8837825219169127155

`A000217(A350988(n+1))`
-/

namespace A350987.P8837825219169127155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A350988 (n + 1)).toNat

end

end A350987.P8837825219169127155

/-! ## A350987.P9494009369013514867

`A161680(A350988(n+1)+1)`
-/

namespace A350987.P9494009369013514867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A350988 (n + 1) + 1).toNat

end

end A350987.P9494009369013514867

/-! ## A350987.P2209079501081358901

`A002378(A350988(n+1))/A020639(2*(n+2))`
-/

namespace A350987.P2209079501081358901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A350988 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 2)) : ℚ)

end

end A350987.P2209079501081358901

/-! ## A350987.P2506235305769905124

`∩[A006995(n+1), ∑[n]]`
-/

namespace A350987.P2506235305769905124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A350987.P2506235305769905124

/-! ## A350987.P8261515966648419194

`∩[A000217(n), A006995(n+1)]`
-/

namespace A350987.P8261515966648419194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350987.P8261515966648419194

/-!
# A350988: Numbers k such that the k-th triangular number is a binary palindrome.

The programs for A350988, there is no canonical definition to state claims against.
-/

/-! ## A350988.P5331212410710831911

`floor(sqrt(2*A350987(n+1)))`
-/

namespace A350988.P5331212410710831911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A350987 (n + 1))

end

end A350988.P5331212410710831911

/-! ## A350988.P17137085207681961779

`ceil(A057428(n)+sqrt(2*A350987(n+1)))`
-/

namespace A350988.P17137085207681961779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + Real.sqrt (2 * A350987 (n + 1) : ℝ)⌉

end

end A350988.P17137085207681961779

/-! ## A350988.P17866739284495602708

`round(sqrt(2*A350987(n+1)))%A295965(n)`
-/

namespace A350988.P17866739284495602708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A350987 (n + 1) : ℝ))) (A295965 n)

end

end A350988.P17866739284495602708

/-! ## A350988.P6530083341834765144

`ceil(sqrt(2*A350987(n+1))-A043545(2*n))`
-/

namespace A350988.P6530083341834765144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A350987 (n + 1) : ℝ) - (A043545 (2 * n) : ℝ)⌉

end

end A350988.P6530083341834765144

/-! ## A350988.P4545812454686795703

`ceil(sqrt(2*A350987(n+1))-A000040(n+1)%2)`
-/

namespace A350988.P4545812454686795703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A350987 (n + 1) : ℝ) - (Int.tmod (A000040 (n + 1)) 2 : ℝ)⌉

end

end A350988.P4545812454686795703

/-!
# A350989: Numbers k such that both k and the k-th triangular number are binary palindromes.

The programs for A350989, there is no canonical definition to state claims against.
-/

/-! ## A350989.P5991580530802553133

`∩[A006995(n+1), A350988(n+1)]`
-/

namespace A350989.P5991580530802553133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350989.P5991580530802553133

/-! ## A350989.P2196106950422593901

`filter[A350988(n+1), A178225(#)]`
-/

namespace A350989.P2196106950422593901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178225 (f1 j).toNat = 1) n)

end

end A350989.P2196106950422593901

/-! ## A350989.P733667274891727282

`record[A330717(A350988(n+1))]`
-/

namespace A350989.P733667274891727282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 (A350988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350989.P733667274891727282

/-! ## A350989.P16885486682404967034

`record[A331804(A350988(n+1))]%A295965(n)`
-/

namespace A350989.P16885486682404967034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 (A350988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A295965 n)

end

end A350989.P16885486682404967034

/-! ## A350989.P7806064553394362646

`-(record[A331804(A350988(n+1))]*A057428(n))`
-/

namespace A350989.P7806064553394362646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 (A350988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A057428 n)

end

end A350989.P7806064553394362646

/-!
# A350990: Triangular numbers that are palindromes in base 3.

The programs for A350990, there is no canonical definition to state claims against.
-/

/-! ## A350990.P255588769238103284

`∩[A014190(n+1), C(n+1, 2)]`
-/

namespace A350990.P255588769238103284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A350990.P255588769238103284

/-! ## A350990.P592832245563968300

`∩[A014190(n+1), A000217(n)]`
-/

namespace A350990.P592832245563968300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350990.P592832245563968300

/-! ## A350990.P14790853751077099982

`∩[A014190(n+1), A117520(n+1)]`
-/

namespace A350990.P14790853751077099982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350990.P14790853751077099982

/-! ## A350990.P7117978114516576390

`∩[A014190(n+1), A161680(n+1)]`
-/

namespace A350990.P7117978114516576390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350990.P7117978114516576390

/-! ## A350990.P873719253202922481

`∩[A014190(n+1), A334129(n+1)]`
-/

namespace A350990.P873719253202922481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350990.P873719253202922481

/-!
# A350991: Triangular numbers that are palindromes in base 5.

The programs for A350991, there is no canonical definition to state claims against.
-/

/-! ## A350991.P6598197986753412985

`∩[A029952(n+1), ∑[n]]`
-/

namespace A350991.P6598197986753412985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A350991.P6598197986753412985

/-! ## A350991.P16879280639890054659

`∩[A000217(n), A029952(n+1)]`
-/

namespace A350991.P16879280639890054659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350991.P16879280639890054659

/-! ## A350991.P17466094926100707412

`∩[C(n+1, 2), A029952(n+1)+A000007(n+1)]`
-/

namespace A350991.P17466094926100707412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1) + A000007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350991.P17466094926100707412

/-! ## A350991.P17393509917239289426

`∩[∑[n], A029952(A008619(2*n))]`
-/

namespace A350991.P17393509917239289426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (A008619 (2 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A350991.P17393509917239289426

/-!
# A350992: Triangular numbers that are palindromes in base 7.

The programs for A350992, there is no canonical definition to state claims against.
-/

/-! ## A350992.P7377778266708983397

`∩[A029954(n+1), A000217(n)]`
-/

namespace A350992.P7377778266708983397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350992.P7377778266708983397

/-! ## A350992.P8088363879837678524

`∩[A024412(n+1), A029954(n+1)]`
-/

namespace A350992.P8088363879837678524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350992.P8088363879837678524

/-! ## A350992.P15646884208244259257

`∩[A029954(n+1), A000096(n)-n]`
-/

namespace A350992.P15646884208244259257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350992.P15646884208244259257

/-! ## A350992.P3064244895486217106

`eq[A002262(n), A055955(n)]`
-/

namespace A350992.P3064244895486217106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350992.P3064244895486217106

/-! ## A350992.P17014815704221257920

`filter[A029954(n+1), A010054(#)]`
-/

namespace A350992.P17014815704221257920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A350992.P17014815704221257920

/-!
# A350993: Triangular numbers that are palindromes in base 9.

The programs for A350993, there is no canonical definition to state claims against.
-/

/-! ## A350993.P2731011819270296112

`∩[A029955(n+1), A000217(n)]`
-/

namespace A350993.P2731011819270296112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350993.P2731011819270296112

/-! ## A350993.P3880249805765615942

`∩[A029955(n+1), A117520(n+1)]`
-/

namespace A350993.P3880249805765615942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350993.P3880249805765615942

/-! ## A350993.P2938505109290354163

`∩[A029955(n+1), A161680(n+1)]`
-/

namespace A350993.P2938505109290354163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350993.P2938505109290354163

/-! ## A350993.P3092305786013165160

`∩[A029955(n+1), A000124(n)-1]`
-/

namespace A350993.P3092305786013165160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350993.P3092305786013165160

/-!
# A350994: a(n) = (40*100^n + 6*10^n - 1)/3.

The programs for A350994, the canonical program `A350994.P10020227689203350434` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350994 has offset 0).

The definition of A350994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350994.P9379722967904437462

`(40*100^n+6*10^n-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350994.P9379722967904437462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((40 * 100 ^ n + 6 * 10 ^ n : ℤ) - 1 : ℚ) / 3

end

end A350994.P9379722967904437462

namespace A350994

/-- `(40*100^n+6*10^n-1)/3` -/
def P9379722967904437462.Spec : Prop :=
  ∀ n, P9379722967904437462.a n = (A350994 n : ℚ)

end A350994

/-! ## A350994.P10020227689203350434

`2*A332167(n)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A350994

/-- `2*A332167(n)+1` -/
def P10020227689203350434.Spec : Prop :=
  ∀ n, P10020227689203350434.a n = A350994 n

theorem P10020227689203350434.correct : P10020227689203350434.Spec := by
  intro n
  simp only [A350994]

end A350994

/-! ## A350994.P11715436004524827983

`∑[10*a(n-1)]*A199684(n)` with `a(0)=3`
-/

namespace A350994.P11715436004524827983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A199684 n

end

end A350994.P11715436004524827983

namespace A350994

/-- `∑[10*a(n-1)]*A199684(n)` -/
def P11715436004524827983.Spec : Prop :=
  ∀ n, P11715436004524827983.a n = A350994 n

end A350994

/-! ## A350994.P8483228002452198632

`A332145(n)+A332189(n)+1`
-/

namespace A350994.P8483228002452198632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332145 n + (A332189 n + 1)

end

end A350994.P8483228002452198632

namespace A350994

/-- `A332145(n)+A332189(n)+1` -/
def P8483228002452198632.Spec : Prop :=
  ∀ n, P8483228002452198632.a n = A350994 n

end A350994

/-! ## A350994.P9869307308414075128

`A332156(n)+A332178(n)+1`
-/

namespace A350994.P9869307308414075128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332156 n + (A332178 n + 1)

end

end A350994.P9869307308414075128

namespace A350994

/-- `A332156(n)+A332178(n)+1` -/
def P9869307308414075128.Spec : Prop :=
  ∀ n, P9869307308414075128.a n = A350994 n

end A350994

/-! ## A350994.P630453786210545020

`A332159(n)+A332175(n)+1`
-/

namespace A350994.P630453786210545020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332159 n + (A332175 n + 1)

end

end A350994.P630453786210545020

namespace A350994

/-- `A332159(n)+A332175(n)+1` -/
def P630453786210545020.Spec : Prop :=
  ∀ n, P630453786210545020.a n = A350994 n

end A350994

/-! ## A350994.P10561117390855281977

`A332165(n)+A332169(n)+1`
-/

namespace A350994.P10561117390855281977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332165 n + (A332169 n + 1)

end

end A350994.P10561117390855281977

namespace A350994

/-- `A332165(n)+A332169(n)+1` -/
def P10561117390855281977.Spec : Prop :=
  ∀ n, P10561117390855281977.a n = A350994 n

end A350994

/-! ## A350994.P8083621389644211312

`(A033175(n)+2)*A199684(n)`
-/

namespace A350994.P8083621389644211312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033175 n + 2) * A199684 n

end

end A350994.P8083621389644211312

namespace A350994

/-- `(A033175(n)+2)*A199684(n)` -/
def P8083621389644211312.Spec : Prop :=
  ∀ n, P8083621389644211312.a n = A350994 n

end A350994

/-! ## A350994.P11226206853175344833

`A332135(n)+10*A011557(n)²`
-/

namespace A350994.P11226206853175344833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332135 n + 10 * A011557 n ^ 2

end

end A350994.P11226206853175344833

namespace A350994

/-- `A332135(n)+10*A011557(n)²` -/
def P11226206853175344833.Spec : Prop :=
  ∀ n, P11226206853175344833.a n = A350994 n

end A350994

/-! ## A350994.P9037763944678599434

`A332135(n)+A011557(2*n+1)`
-/

namespace A350994.P9037763944678599434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332135 n + A011557 (2 * n + 1)

end

end A350994.P9037763944678599434

namespace A350994

/-- `A332135(n)+A011557(2*n+1)` -/
def P9037763944678599434.Spec : Prop :=
  ∀ n, P9037763944678599434.a n = A350994 n

end A350994

/-!
# A350995: a(n) = (16*10^n - 1)/3.

The programs for A350995, the canonical program `A350995.P17532588417785946480` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350995 has offset 0).

The definition of A350995 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(16*10^n-1)/3` (program `A350995.P1970781086227372848`, by `A350995.P1970781086227372848.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350995.P17532588417785946480

`10*a(n-1)+3` with `a(0)=5`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350995

/-- `10*a(n-1)+3` -/
def P17532588417785946480.Spec : Prop :=
  ∀ n, (P17532588417785946480.a n : ℤ) = A350995 n

theorem P17532588417785946480.correct : P17532588417785946480.Spec := by
  intro n
  simp only [A350995]

end A350995

/-! ## A350995.P1970781086227372848

`(16*10^n-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350995.P1970781086227372848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 * 10 ^ n : ℤ) - 1 : ℚ) / 3

end

end A350995.P1970781086227372848

namespace A350995

/-- `(16*10^n-1)/3` -/
def P1970781086227372848.Spec : Prop :=
  ∀ n, P1970781086227372848.a n = (A350995 n : ℚ)

theorem P1970781086227372848.correct : P1970781086227372848.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A350995, Nat.add_sub_cancel, A350995.P1970781086227372848.a, A350995.P17532588417785946480.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A350995, Nat.add_sub_cancel, A350995.P1970781086227372848.a, A350995.P17532588417785946480.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A350995

/-! ## A350995.P5448697299587063622

`ogf((5-2x)/(1-11x+10x^2))`
-/

namespace A350995.P5448697299587063622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -2] [1, -11, 10] n

end

end A350995.P5448697299587063622

namespace A350995

/-- `ogf((5-2x)/(1-11x+10x^2))` -/
def P5448697299587063622.Spec : Prop :=
  ∀ n, P5448697299587063622.a n = A350995 n

end A350995

/-! ## A350995.P6131633544986519660

`xor(7, 10*a(n-1))` with `a(0)=5`
-/

namespace A350995.P6131633544986519660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.xor 7 (10 * a (n - 1))

end

end A350995.P6131633544986519660

namespace A350995

/-- `xor(7, 10*a(n-1))` -/
def P6131633544986519660.Spec : Prop :=
  ∀ n, (P6131633544986519660.a n : ℤ) = A350995 n

end A350995

/-! ## A350995.P13053935161830982223

`∑[10*a(n-1)]` with `a(0)=5, a(1)=48`
-/

namespace A350995.P13053935161830982223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 48] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350995.P13053935161830982223

namespace A350995

/-- `∑[10*a(n-1)]` -/
def P13053935161830982223.Spec : Prop :=
  ∀ n, (P13053935161830982223.a n : ℤ) = A350995 n

end A350995

/-! ## A350995.P15420586024600233301

`5-2*(1-5*a(n-1))` with `a(0)=5`
-/

namespace A350995.P15420586024600233301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  5 - 2 * (1 - 5 * a (n - 1))

end

end A350995.P15420586024600233301

namespace A350995

/-- `5-2*(1-5*a(n-1))` -/
def P15420586024600233301.Spec : Prop :=
  ∀ n, P15420586024600233301.a n = A350995 n

end A350995

/-! ## A350995.P11539195657887283755

`2*A199688(n)-1`
-/

namespace A350995.P11539195657887283755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199688 n - 1

end

end A350995.P11539195657887283755

namespace A350995

/-- `2*A199688(n)-1` -/
def P11539195657887283755.Spec : Prop :=
  ∀ n, P11539195657887283755.a n = A350995 n

end A350995

/-! ## A350995.P9394132922653012929

`4*A097166(n)+1`
-/

namespace A350995.P9394132922653012929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A097166 n + 1

end

end A350995.P9394132922653012929

namespace A350995

/-- `4*A097166(n)+1` -/
def P9394132922653012929.Spec : Prop :=
  ∀ n, P9394132922653012929.a n = A350995 n

end A350995

/-! ## A350995.P101287800006000308

`3*A246058(n)+2`
-/

namespace A350995.P101287800006000308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A246058 n + 2

end

end A350995.P101287800006000308

namespace A350995

/-- `3*A246058(n)+2` -/
def P101287800006000308.Spec : Prop :=
  ∀ n, P101287800006000308.a n = A350995 n

end A350995

/-! ## A350995.P7909533941890541779

`4*A073553(n+1)-3`
-/

namespace A350995.P7909533941890541779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A073553 (n + 1) - 3

end

end A350995.P7909533941890541779

namespace A350995

/-- `4*A073553(n+1)-3` -/
def P7909533941890541779.Spec : Prop :=
  ∀ n, P7909533941890541779.a n = A350995 n

end A350995

/-! ## A350995.P14301656298629028255

`A093143(n+1)+A002277(n)`
-/

namespace A350995.P14301656298629028255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 (n + 1) + A002277 n

end

end A350995.P14301656298629028255

namespace A350995

/-- `A093143(n+1)+A002277(n)` -/
def P14301656298629028255.Spec : Prop :=
  ∀ n, P14301656298629028255.a n = A350995 n

end A350995

/-! ## A350995.P8569673942331678259

`A002279(n+1)-A002276(n)`
-/

namespace A350995.P8569673942331678259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 (n + 1) - A002276 n

end

end A350995.P8569673942331678259

namespace A350995

/-- `A002279(n+1)-A002276(n)` -/
def P8569673942331678259.Spec : Prop :=
  ∀ n, P8569673942331678259.a n = A350995 n

end A350995

/-! ## A350995.P3005687702312660655

`Δ[Δ[A067275(n)]]-A067275(n)`
-/

namespace A350995.P3005687702312660655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A067275 n

end

end A350995.P3005687702312660655

namespace A350995

/-- `Δ[Δ[A067275(n)]]-A067275(n)` -/
def P3005687702312660655.Spec : Prop :=
  ∀ n, P3005687702312660655.a n = A350995 n

end A350995

/-! ## A350995.P14603289638848234348

`A090019(n+1)-∑[A090019(n)]`
-/

namespace A350995.P14603289638848234348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090019 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350995.P14603289638848234348

namespace A350995

/-- `A090019(n+1)-∑[A090019(n)]` -/
def P14603289638848234348.Spec : Prop :=
  ∀ n, P14603289638848234348.a n = A350995 n

end A350995

/-! ## A350995.P15794290809571288840

`Δ[A002280(n)]-(A002280(n)+1)`
-/

namespace A350995.P15794290809571288840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A002280 n + 1)

end

end A350995.P15794290809571288840

namespace A350995

/-- `Δ[A002280(n)]-(A002280(n)+1)` -/
def P15794290809571288840.Spec : Prop :=
  ∀ n, P15794290809571288840.a n = A350995 n

end A350995

/-! ## A350995.P3375335443961413215

`A067275(n+2)-A073553(n+1)`
-/

namespace A350995.P3375335443961413215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067275 (n + 2) - A073553 (n + 1)

end

end A350995.P3375335443961413215

namespace A350995

/-- `A067275(n+2)-A073553(n+1)` -/
def P3375335443961413215.Spec : Prop :=
  ∀ n, P3375335443961413215.a n = A350995 n

end A350995

/-! ## A350995.P169177193907173247

`A093136(n+1)+∑[A093138(n+1)]`
-/

namespace A350995.P169177193907173247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093136 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350995.P169177193907173247

namespace A350995

/-- `A093136(n+1)+∑[A093138(n+1)]` -/
def P169177193907173247.Spec : Prop :=
  ∀ n, P169177193907173247.a n = A350995 n

end A350995

/-! ## A350995.P1100293331222814704

`A002277(n+1)+2*A286507(2*n)`
-/

namespace A350995.P1100293331222814704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 (n + 1) + 2 * A286507 (2 * n)

end

end A350995.P1100293331222814704

namespace A350995

/-- `A002277(n+1)+2*A286507(2*n)` -/
def P1100293331222814704.Spec : Prop :=
  ∀ n, P1100293331222814704.a n = A350995 n

end A350995

/-! ## A350995.P105477867341197385

`A002279(n+1)+A002277(n)-A002279(n)`
-/

namespace A350995.P105477867341197385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 (n + 1) + (A002277 n - A002279 n)

end

end A350995.P105477867341197385

namespace A350995

/-- `A002279(n+1)+A002277(n)-A002279(n)` -/
def P105477867341197385.Spec : Prop :=
  ∀ n, P105477867341197385.a n = A350995 n

end A350995

/-! ## A350995.P12834959953529605516

`A002279(n+1)+A002279(n)-A002281(n)`
-/

namespace A350995.P12834959953529605516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 (n + 1) + (A002279 n - A002281 n)

end

end A350995.P12834959953529605516

namespace A350995

/-- `A002279(n+1)+A002279(n)-A002281(n)` -/
def P12834959953529605516.Spec : Prop :=
  ∀ n, P12834959953529605516.a n = A350995 n

end A350995

/-!
# A350996: a(n) = Sum_{k=1..n} k * rad(k).

The programs for A350996, the canonical program `A350996.P1022720450051680212` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350996 has offset 1).

The definition of A350996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350996.P1022720450051680212

`∑[(n+1)*∏{p}[n+1, #]]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350996

/-- `∑[(n+1)*∏{p}[n+1, #]]` -/
def P1022720450051680212.Spec : Prop :=
  ∀ n, (P1022720450051680212.a n : ℤ) = A350996 (n + 1)

theorem P1022720450051680212.correct : P1022720450051680212.Spec := by
  intro n
  simp only [A350996, Nat.add_sub_cancel]

end A350996

/-! ## A350996.P5399542870630340350

`∑[(n+1)/∏{p}[n+1, 1/#]]`
-/

namespace A350996.P5399542870630340350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), 1 / (p : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P5399542870630340350

namespace A350996

/-- `∑[(n+1)/∏{p}[n+1, 1/#]]` -/
def P5399542870630340350.Spec : Prop :=
  ∀ n, P5399542870630340350.a n = (A350996 (n + 1) : ℚ)

theorem P5399542870630340350.correct : P5399542870630340350.Spec := by
  intro n
  simp only [A350996, Nat.add_sub_cancel, A350996.P5399542870630340350.f2, A350996.P5399542870630340350.f1, A350996.P5399542870630340350.a, A350996.P1022720450051680212.f2, A350996.P1022720450051680212.f1, A350996.P1022720450051680212.a, SequenceMachineLib.memo_apply]
  try simp

end A350996

/-! ## A350996.P6383845133402740591

`∑[(n+1)*exp(∑{p}[n+1, log(#)])]`
-/

namespace A350996.P6383845133402740591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.exp (∑ p ∈ Nat.primeFactors (f2 n), Real.log (p : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P6383845133402740591

namespace A350996

/-- `∑[(n+1)*exp(∑{p}[n+1, log(#)])]` -/
def P6383845133402740591.Spec : Prop :=
  ∀ n, P6383845133402740591.a n = (A350996 (n + 1) : ℝ)

end A350996

/-! ## A350996.P5954056195652488828

`∑[(n+1)*2^∑{p}[n+1, log2(#)]]`
-/

namespace A350996.P5954056195652488828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f2 n), Real.logb 2 (p : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P5954056195652488828

namespace A350996

/-- `∑[(n+1)*2^∑{p}[n+1, log2(#)]]` -/
def P5954056195652488828.Spec : Prop :=
  ∀ n, P5954056195652488828.a n = (A350996 (n + 1) : ℝ)

end A350996

/-! ## A350996.P7026756776588870851

`a(n-1)+(n+1)*∏{p}[n+1, #]` with `a(0)=1`
-/

namespace A350996.P7026756776588870851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A350996.P7026756776588870851

namespace A350996

/-- `a(n-1)+(n+1)*∏{p}[n+1, #]` -/
def P7026756776588870851.Spec : Prop :=
  ∀ n, (P7026756776588870851.a n : ℤ) = A350996 (n + 1)

end A350996

/-! ## A350996.P13574898319071981979

`∑[lcm(n+1, ∏{p}[n+1, #]+1)-n-1]`
-/

namespace A350996.P13574898319071981979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f2 n), p + 1) : ℤ) - (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P13574898319071981979

namespace A350996

/-- `∑[lcm(n+1, ∏{p}[n+1, #]+1)-n-1]` -/
def P13574898319071981979.Spec : Prop :=
  ∀ n, P13574898319071981979.a n = A350996 (n + 1)

end A350996

/-! ## A350996.P10174263664312355516

`∑[A064549(n+1)]`
-/

namespace A350996.P10174263664312355516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P10174263664312355516

namespace A350996

/-- `∑[A064549(n+1)]` -/
def P10174263664312355516.Spec : Prop :=
  ∀ n, P10174263664312355516.a n = A350996 (n + 1)

theorem P10174263664312355516.correct : P10174263664312355516.Spec := by
  intro n
  simp only [A350996, Nat.add_sub_cancel, A350996.P10174263664312355516.f1, A350996.P10174263664312355516.a, A350996.P1022720450051680212.f2, A350996.P1022720450051680212.f1, A350996.P1022720450051680212.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350996

/-! ## A350996.P7291491427210908308

`∑[A078310(n+1)-1]`
-/

namespace A350996.P7291491427210908308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078310 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P7291491427210908308

namespace A350996

/-- `∑[A078310(n+1)-1]` -/
def P7291491427210908308.Spec : Prop :=
  ∀ n, P7291491427210908308.a n = A350996 (n + 1)

theorem P7291491427210908308.correct : P7291491427210908308.Spec := by
  intro n
  simp only [A350996, Nat.add_sub_cancel, A350996.P7291491427210908308.f1, A350996.P7291491427210908308.a, A350996.P1022720450051680212.f2, A350996.P1022720450051680212.f1, A350996.P1022720450051680212.a, A078310, A078310.P13481393932737065980.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350996

/-! ## A350996.P12582030749803543045

`∑[(n+1)*A007947(n+1)]`
-/

namespace A350996.P12582030749803543045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P12582030749803543045

namespace A350996

/-- `∑[(n+1)*A007947(n+1)]` -/
def P12582030749803543045.Spec : Prop :=
  ∀ n, P12582030749803543045.a n = A350996 (n + 1)

theorem P12582030749803543045.correct : P12582030749803543045.Spec := by
  intro n
  simp only [A350996, Nat.add_sub_cancel, A350996.P12582030749803543045.f1, A350996.P12582030749803543045.a, A350996.P1022720450051680212.f2, A350996.P1022720450051680212.f1, A350996.P1022720450051680212.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350996

/-! ## A350996.P1309294316828746526

`∑[A355038(n+1)/(n+1)]`
-/

namespace A350996.P1309294316828746526
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355038 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P1309294316828746526

namespace A350996

/-- `∑[A355038(n+1)/(n+1)]` -/
def P1309294316828746526.Spec : Prop :=
  ∀ n, P1309294316828746526.a n = (A350996 (n + 1) : ℚ)

end A350996

/-! ## A350996.P11609567004275002953

`∑[(n+1)²/A003557(n+1)]`
-/

namespace A350996.P11609567004275002953
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P11609567004275002953

namespace A350996

/-- `∑[(n+1)²/A003557(n+1)]` -/
def P11609567004275002953.Spec : Prop :=
  ∀ n, P11609567004275002953.a n = (A350996 (n + 1) : ℚ)

end A350996

/-! ## A350996.P4956548016449120891

`∑[(n+1)/A003557(n+1)*A000027(n+1)]`
-/

namespace A350996.P4956548016449120891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (n + 1) : ℚ) * (A000027 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P4956548016449120891

namespace A350996

/-- `∑[(n+1)/A003557(n+1)*A000027(n+1)]` -/
def P4956548016449120891.Spec : Prop :=
  ∀ n, P4956548016449120891.a n = (A350996 (n + 1) : ℚ)

end A350996

/-! ## A350996.P17611791563860132754

`∑[(n+1)*A336643((n+1)²)]`
-/

namespace A350996.P17611791563860132754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A336643 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P17611791563860132754

namespace A350996

/-- `∑[(n+1)*A336643((n+1)²)]` -/
def P17611791563860132754.Spec : Prop :=
  ∀ n, P17611791563860132754.a n = A350996 (n + 1)

end A350996

/-! ## A350996.P9339397929308339263

`∑[A355261((n+1)²)]`
-/

namespace A350996.P9339397929308339263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P9339397929308339263

namespace A350996

/-- `∑[A355261((n+1)²)]` -/
def P9339397929308339263.Spec : Prop :=
  ∀ n, P9339397929308339263.a n = A350996 (n + 1)

end A350996

/-! ## A350996.P12453040979422752102

`∑[(n+1)*A071773((n+1)²)]`
-/

namespace A350996.P12453040979422752102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071773 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P12453040979422752102

namespace A350996

/-- `∑[(n+1)*A071773((n+1)²)]` -/
def P12453040979422752102.Spec : Prop :=
  ∀ n, P12453040979422752102.a n = A350996 (n + 1)

end A350996

/-! ## A350996.P4261015444655881312

`∑[(n+1)*A089384((n+1)²)]`
-/

namespace A350996.P4261015444655881312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A089384 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P4261015444655881312

namespace A350996

/-- `∑[(n+1)*A089384((n+1)²)]` -/
def P4261015444655881312.Spec : Prop :=
  ∀ n, P4261015444655881312.a n = A350996 (n + 1)

end A350996

/-! ## A350996.P1890817146441317603

`∑[(n+1)*A260458((n+1)²)]`
-/

namespace A350996.P1890817146441317603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A260458 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P1890817146441317603

namespace A350996

/-- `∑[(n+1)*A260458((n+1)²)]` -/
def P1890817146441317603.Spec : Prop :=
  ∀ n, P1890817146441317603.a n = A350996 (n + 1)

end A350996

/-! ## A350996.P16299421058320275530

`∑[(n+1)*A302138((n+1)²)]`
-/

namespace A350996.P16299421058320275530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A302138 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P16299421058320275530

namespace A350996

/-- `∑[(n+1)*A302138((n+1)²)]` -/
def P16299421058320275530.Spec : Prop :=
  ∀ n, P16299421058320275530.a n = A350996 (n + 1)

end A350996

/-! ## A350996.P9525024453534945418

`∑[(n+1)*A334085((n+1)²)]`
-/

namespace A350996.P9525024453534945418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A334085 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P9525024453534945418

namespace A350996

/-- `∑[(n+1)*A334085((n+1)²)]` -/
def P9525024453534945418.Spec : Prop :=
  ∀ n, P9525024453534945418.a n = A350996 (n + 1)

end A350996

/-! ## A350996.P5364943202513821084

`∑[(n+1)*A365298((n+1)²)]`
-/

namespace A350996.P5364943202513821084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A365298 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350996.P5364943202513821084

namespace A350996

/-- `∑[(n+1)*A365298((n+1)²)]` -/
def P5364943202513821084.Spec : Prop :=
  ∀ n, P5364943202513821084.a n = A350996 (n + 1)

end A350996

/-!
# A350997: a(n) = Sum_{k=1..n} k^rad(k).

The programs for A350997, there is no canonical definition to state claims against.
-/

/-! ## A350997.P15091544084551354657

`∑[(n+1)^∏{p}[n+1, #]]`
-/

namespace A350997.P15091544084551354657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350997.P15091544084551354657

/-! ## A350997.P14497420791775348372

`∑[root(n+1, 1/∏{p}[n+1, #])]`
-/

namespace A350997.P14497420791775348372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (1 / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350997.P14497420791775348372

/-! ## A350997.P13569915928615424051

`∑[(n+1)^exp(∑{p}[n+1, log(#)])]`
-/

namespace A350997.P13569915928615424051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (Real.exp (∑ p ∈ Nat.primeFactors (f2 n), Real.log (p : ℝ)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350997.P13569915928615424051

/-! ## A350997.P311820227724727071

`a(n-1)+(n+1)^∏{p}[n+1, #]` with `a(0)=1`
-/

namespace A350997.P311820227724727071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A350997.P311820227724727071

/-! ## A350997.P6732742119575597040

`∑[A176031(n+1)]`
-/

namespace A350997.P6732742119575597040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350997.P6732742119575597040

/-! ## A350997.P11677875829869300039

`∑[(n+1)^A007947(n+1)]`
-/

namespace A350997.P11677875829869300039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A007947 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350997.P11677875829869300039

/-! ## A350997.P2332747740100469593

`∑[(n+1)^A015052(n+1)]`
-/

namespace A350997.P2332747740100469593
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A015052 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350997.P2332747740100469593

/-! ## A350997.P17298260525814709755

`∑[(n+1)^A015053(n+1)]`
-/

namespace A350997.P17298260525814709755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A015053 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350997.P17298260525814709755

/-! ## A350997.P2952895018929157073

`∑[(n+1)^A071773((n+1)²)]`
-/

namespace A350997.P2952895018929157073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A071773 ((n + 1) ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350997.P2952895018929157073

/-! ## A350997.P5427881408939774090

`∑[(n+1)^A089384((n+1)²)]`
-/

namespace A350997.P5427881408939774090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A089384 ((n + 1) ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350997.P5427881408939774090

/-!
# A350999: Numerator of the limiting density of residues attained by the Fibonacci sequence modulo powers of the n-th prime.

The programs for A350999, there is no canonical definition to state claims against.
-/

/-! ## A350999.P272533754579473822

`A334526(5*A086953(n))`
-/

namespace A350999.P272533754579473822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334526 (5 * A086953 n).toNat

end

end A350999.P272533754579473822

