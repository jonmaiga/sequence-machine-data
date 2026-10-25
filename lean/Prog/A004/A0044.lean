import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A004400: a(n) = 1 + Sum_{k=0..n} 2^k*k!.

The programs for A004400, there is no canonical definition to state claims against.
-/

/-! ## A004400.P17801611688545257219

`∑[∏[a(n-1)+2]]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A004400.P17801611688545257219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004400.P17801611688545257219

/-! ## A004400.P13126202585119480482

`∑[2*(n-1)*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A004400.P13126202585119480482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * (((n : ℤ) - 1) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004400.P13126202585119480482

/-! ## A004400.P12348304376302653920

`(2*n-1)*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A004400.P12348304376302653920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) - 2 * (((n : ℤ) - 1) * a (n - 2))

end

end A004400.P12348304376302653920

/-! ## A004400.P18393041366105977781

`∑[a(n-1)*A004275(n)]` with `a(0)=1`
-/

namespace A004400.P18393041366105977781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004400.P18393041366105977781

/-! ## A004400.P5291333519131886447

`∑[A000165(log2(ceil(2^(n-1))))]`
-/

namespace A004400.P5291333519131886447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004400.P5291333519131886447

/-! ## A004400.P4664454589026414990

`∑[∏[A028310(comp[2*n+3])]]`
-/

namespace A004400.P4664454589026414990
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004400.P4664454589026414990

/-! ## A004400.P8948833827674001156

`∑[∏[A159475(a(n-1))]]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A004400.P8948833827674001156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  A159475 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004400.P8948833827674001156

/-! ## A004400.P2247278883265338463

`A000165(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A004400.P2247278883265338463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000165 (n - 1) + a (n - 1)

end

end A004400.P2247278883265338463

/-! ## A004400.P630360432711798647

`A112368(n)+1-A000165(n)`
-/

namespace A004400.P630360432711798647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112368 n + (1 - A000165 n)

end

end A004400.P630360432711798647

/-! ## A004400.P8839357912546936346

`∑[∏[A004277(n)]/A004277(n)]`
-/

namespace A004400.P8839357912546936346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A004277 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004400.P8839357912546936346

/-!
# A004402: Expansion of 1 / Sum_{n=-oo..oo} x^(n^2).

The programs for A004402, there is no canonical definition to state claims against.
-/

/-! ## A004402.P4455683592754398712

`(-1)^n*A015128(n)`
-/

namespace A004402.P4455683592754398712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A015128 n

end

end A004402.P4455683592754398712

/-! ## A004402.P12541867511184318337

`A015128(n)*A033999(n)`
-/

namespace A004402.P12541867511184318337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n * A033999 n

end

end A004402.P12541867511184318337

/-! ## A004402.P14231466515324598288

`∑[A211971(n)]*A033999(n)`
-/

namespace A004402.P14231466515324598288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A004402.P14231466515324598288

/-! ## A004402.P3799956393879933246

`A015128(n)*A057077(A057077(n)+n)`
-/

namespace A004402.P3799956393879933246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n * A057077 (A057077 n + (n : ℤ)).toNat

end

end A004402.P3799956393879933246

/-! ## A004402.P11146383194065813945

`A015128(n)/A080054(n)*A108494(n)`
-/

namespace A004402.P11146383194065813945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015128 n : ℚ) / (A080054 n : ℚ) * (A108494 n : ℚ)

end

end A004402.P11146383194065813945

/-! ## A004402.P14857482037571450769

`A015128(n)/A273225(n)*A274621(n)`
-/

namespace A004402.P14857482037571450769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015128 n : ℚ) / (A273225 n : ℚ) * (A274621 n : ℚ)

end

end A004402.P14857482037571450769

/-! ## A004402.P18373602036231074979

`A015128(n)*A057077(2*n)`
-/

namespace A004402.P18373602036231074979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n * A057077 (2 * n)

end

end A004402.P18373602036231074979

/-! ## A004402.P16655100988028090067

`A015128(n)*A087960(2*n)`
-/

namespace A004402.P16655100988028090067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n * A087960 (2 * n)

end

end A004402.P16655100988028090067

/-! ## A004402.P3697507282085798513

`A015128(n)*A101455(2*n+1)`
-/

namespace A004402.P3697507282085798513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n * A101455 (2 * n + 1)

end

end A004402.P3697507282085798513

/-! ## A004402.P14135042210868881576

`A006950(n)*A015128(n)/A106507(n)`
-/

namespace A004402.P14135042210868881576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006950 n * A015128 n : ℚ) / (A106507 n : ℚ)

end

end A004402.P14135042210868881576

/-! ## A004402.P4349250746556537984

`A001934(n)*A015128(n)/A004403(n)`
-/

namespace A004402.P4349250746556537984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n * A015128 n : ℚ) / (A004403 n : ℚ)

end

end A004402.P4349250746556537984

/-! ## A004402.P7368754637539640833

`∑[A211971(n)]/A033999(n²)`
-/

namespace A004402.P7368754637539640833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A004402.P7368754637539640833

/-!
# A004403: Expansion of 1/theta_3(q)^2 in powers of q.

The programs for A004403, there is no canonical definition to state claims against.
-/

/-! ## A004403.P11738022822852966098

`(-1)^n*A001934(n)`
-/

namespace A004403.P11738022822852966098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001934 n

end

end A004403.P11738022822852966098

/-! ## A004403.P15446159730052669590

`A001934(n)*A033999(n)`
-/

namespace A004403.P15446159730052669590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001934 n * A033999 n

end

end A004403.P15446159730052669590

/-! ## A004403.P7685867293399301825

`A001934(n)/A004402(n)*A015128(n)`
-/

namespace A004403.P7685867293399301825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / (A004402 n : ℚ) * (A015128 n : ℚ)

end

end A004403.P7685867293399301825

/-! ## A004403.P5886331718193231831

`A001934(n)/A001935(n)*A083365(n)`
-/

namespace A004403.P5886331718193231831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / (A001935 n : ℚ) * (A083365 n : ℚ)

end

end A004403.P5886331718193231831

/-! ## A004403.P12955797920212365868

`A001934(n)/A001937(n)*A187053(n)`
-/

namespace A004403.P12955797920212365868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / (A001937 n : ℚ) * (A187053 n : ℚ)

end

end A004403.P12955797920212365868

/-! ## A004403.P6731709057351132331

`A001934(n)/A001938(n)*A093160(n)`
-/

namespace A004403.P6731709057351132331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / (A001938 n : ℚ) * (A093160 n : ℚ)

end

end A004403.P6731709057351132331

/-! ## A004403.P10880429190795913124

`A001934(n)/A001939(n)*A195861(n)`
-/

namespace A004403.P10880429190795913124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / (A001939 n : ℚ) * (A195861 n : ℚ)

end

end A004403.P10880429190795913124

/-! ## A004403.P16439080643612164629

`A001934(n)/A004404(n)*A319552(n)`
-/

namespace A004403.P16439080643612164629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / (A004404 n : ℚ) * (A319552 n : ℚ)

end

end A004403.P16439080643612164629

/-! ## A004403.P11840974424035805888

`A001934(n)/A004405(n)*A284286(n)`
-/

namespace A004403.P11840974424035805888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / (A004405 n : ℚ) * (A284286 n : ℚ)

end

end A004403.P11840974424035805888

/-! ## A004403.P6379565174169378212

`A001934(n)*A001936(n)/A079006(n)`
-/

namespace A004403.P6379565174169378212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n * A001936 n : ℚ) / (A079006 n : ℚ)

end

end A004403.P6379565174169378212

/-! ## A004403.P6420541396738946898

`A001934(n)/A004409(n)*A319553(n)`
-/

namespace A004403.P6420541396738946898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / (A004409 n : ℚ) * (A319553 n : ℚ)

end

end A004403.P6420541396738946898

/-! ## A004403.P16489031904120985796

`A001934(n)/A004413(n)*A319554(n)`
-/

namespace A004403.P16489031904120985796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / (A004413 n : ℚ) * (A319554 n : ℚ)

end

end A004403.P16489031904120985796

/-!
# A004404: Expansion of 1 / (Sum_{n=-oo..oo} x^(n^2))^3.

The programs for A004404, there is no canonical definition to state claims against.
-/

/-! ## A004404.P4900460622653155193

`A033999(n)*A319552(n)`
-/

namespace A004404.P4900460622653155193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A319552 n

end

end A004404.P4900460622653155193

/-! ## A004404.P3884460087280310784

`ratio[A057077(n)]*A319552(n)`
-/

namespace A004404.P3884460087280310784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A319552 n : ℚ)

end

end A004404.P3884460087280310784

/-! ## A004404.P15067493600820587020

`A057077(2*n)*A319552(n)`
-/

namespace A004404.P15067493600820587020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A319552 n

end

end A004404.P15067493600820587020

/-! ## A004404.P12219777990502016824

`A034947(2*n+1)*A319552(n)`
-/

namespace A004404.P12219777990502016824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A319552 n

end

end A004404.P12219777990502016824

/-! ## A004404.P13074187107807829539

`A115607(A006519(n+1))*A319552(n)`
-/

namespace A004404.P13074187107807829539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115607 (A006519 (n + 1)).toNat * A319552 n

end

end A004404.P13074187107807829539

/-! ## A004404.P6056836018536379335

`A001934(n)/A004403(n)*A319552(n)`
-/

namespace A004404.P6056836018536379335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / (A004403 n : ℚ) * (A319552 n : ℚ)

end

end A004404.P6056836018536379335

/-! ## A004404.P942978599818950383

`A004405(n)/A284286(n)*A319552(n)`
-/

namespace A004404.P942978599818950383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004405 n : ℚ) / (A284286 n : ℚ) * (A319552 n : ℚ)

end

end A004404.P942978599818950383

/-! ## A004404.P7376367889346788019

`A004409(n)/A319553(n)*A319552(n)`
-/

namespace A004404.P7376367889346788019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004409 n : ℚ) / (A319553 n : ℚ) * (A319552 n : ℚ)

end

end A004404.P7376367889346788019

/-! ## A004404.P16351585523308140994

`A004413(n)/A319554(n)*A319552(n)`
-/

namespace A004404.P16351585523308140994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004413 n : ℚ) / (A319554 n : ℚ) * (A319552 n : ℚ)

end

end A004404.P16351585523308140994

/-!
# A004405: Expansion of 1 / (Sum_{n=-oo..oo} x^(n^2))^4.

The programs for A004405, there is no canonical definition to state claims against.
-/

/-! ## A004405.P6080373909300243629

`A033999(n)*A284286(n)`
-/

namespace A004405.P6080373909300243629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A284286 n

end

end A004405.P6080373909300243629

/-! ## A004405.P5418392435403634071

`A157142(n)%2*A284286(n)`
-/

namespace A004405.P5418392435403634071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157142 n) 2 * A284286 n

end

end A004405.P5418392435403634071

/-! ## A004405.P3392041517529140070

`A227398(and(1, -n))*A284286(n)`
-/

namespace A004405.P3392041517529140070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227398 (Int.land 1 (-(n : ℤ))).toNat * A284286 n

end

end A004405.P3392041517529140070

/-! ## A004405.P2415705544825978484

`(Δ[A014601(n)]-2)*A284286(n)`
-/

namespace A004405.P2415705544825978484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 2) * A284286 n

end

end A004405.P2415705544825978484

/-! ## A004405.P6321415745546927723

`(1-2*A000035(n))*A284286(n)`
-/

namespace A004405.P6321415745546927723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) * A284286 n

end

end A004405.P6321415745546927723

/-! ## A004405.P5136573917029571565

`A106400(Δ[A014601(n)])*A284286(n)`
-/

namespace A004405.P5136573917029571565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (f1 (n + 1) - f1 n).toNat * A284286 n

end

end A004405.P5136573917029571565

/-! ## A004405.P7502012452075187218

`A004404(n)/A319552(n)*A284286(n)`
-/

namespace A004405.P7502012452075187218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004404 n : ℚ) / (A319552 n : ℚ) * (A284286 n : ℚ)

end

end A004405.P7502012452075187218

/-! ## A004405.P1003374314939258989

`A106400(A014601(n))*A106400(n)*A284286(n)`
-/

namespace A004405.P1003374314939258989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A014601 n).toNat * A106400 n * A284286 n

end

end A004405.P1003374314939258989

/-! ## A004405.P10002032471154989501

`A004409(n)/A319553(n)*A284286(n)`
-/

namespace A004405.P10002032471154989501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004409 n : ℚ) / (A319553 n : ℚ) * (A284286 n : ℚ)

end

end A004405.P10002032471154989501

/-! ## A004405.P3066488558430109516

`A004413(n)/A319554(n)*A284286(n)`
-/

namespace A004405.P3066488558430109516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004413 n : ℚ) / (A319554 n : ℚ) * (A284286 n : ℚ)

end

end A004405.P3066488558430109516

/-! ## A004405.P12739348465909148898

`∑[A002448(n²)]*A284286(n)`
-/

namespace A004405.P12739348465909148898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A284286 n

end

end A004405.P12739348465909148898

/-!
# A004406: Expansion of 1 / (Sum_{n=-oo..oo} x^(n^2))^5.

The programs for A004406, there is no canonical definition to state claims against.
-/

/-! ## A004406.P6306322592076864405

`A033999(n)*A288515(A000217(n+6)-6)`
-/

namespace A004406.P6306322592076864405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A288515 (A000217 (n + 6) - 6).toNat

end

end A004406.P6306322592076864405

/-! ## A004406.P1022828217764005893

`A056594(2*n)*A288515(A000217(n+6)-6)`
-/

namespace A004406.P1022828217764005893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A288515 (A000217 (n + 6) - 6).toNat

end

end A004406.P1022828217764005893

/-! ## A004406.P10660217563588702530

`A134824(A001511(n+1))*A288515(A000217(n+6)-6)`
-/

namespace A004406.P10660217563588702530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A001511 (n + 1)).toNat * A288515 (A000217 (n + 6) - 6).toNat

end

end A004406.P10660217563588702530

/-! ## A004406.P1732561353307795589

`A001045(n+1)/A077925(n)*A288515(A000217(n+6)-6)`
-/

namespace A004406.P1732561353307795589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) : ℚ) / (A077925 n : ℚ) * (A288515 (A000217 (n + 6) - 6).toNat : ℚ)

end

end A004406.P1732561353307795589

/-! ## A004406.P15392690920805478007

`A210736(n+1)/A126930(n)*A288515(A000217(n+6)-6)`
-/

namespace A004406.P15392690920805478007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (n + 1) : ℚ) / (A126930 n : ℚ) * (A288515 (A000217 (n + 6) - 6).toNat : ℚ)

end

end A004406.P15392690920805478007

/-!
# A004409: Expansion of ( Sum_{n = -infinity..infinity} x^(n^2) )^(-8).

The programs for A004409, there is no canonical definition to state claims against.
-/

/-! ## A004409.P7062820199910125816

`A033999(n)*A319553(n)`
-/

namespace A004409.P7062820199910125816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A319553 n

end

end A004409.P7062820199910125816

/-! ## A004409.P1037731854854436249

`A001934(n)/A004403(n)*A319553(n)`
-/

namespace A004409.P1037731854854436249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / (A004403 n : ℚ) * (A319553 n : ℚ)

end

end A004409.P1037731854854436249

/-! ## A004409.P9996078650815965671

`A004405(n)/A284286(n)*A319553(n)`
-/

namespace A004409.P9996078650815965671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004405 n : ℚ) / (A284286 n : ℚ) * (A319553 n : ℚ)

end

end A004409.P9996078650815965671

/-! ## A004409.P13384338197237462133

`A004404(n)/A319552(n)*A319553(n)`
-/

namespace A004409.P13384338197237462133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004404 n : ℚ) / (A319552 n : ℚ) * (A319553 n : ℚ)

end

end A004409.P13384338197237462133

/-! ## A004409.P7557014165583133169

`A004413(n)/A319554(n)*A319553(n)`
-/

namespace A004409.P7557014165583133169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004413 n : ℚ) / (A319554 n : ℚ) * (A319553 n : ℚ)

end

end A004409.P7557014165583133169

/-!
# A004413: Expansion of ( Sum_{n = -infinity..infinity} x^(n^2) )^(-12).

The programs for A004413, there is no canonical definition to state claims against.
-/

/-! ## A004413.P18412773495468326170

`A033999(n)*A319554(n)`
-/

namespace A004413.P18412773495468326170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A319554 n

end

end A004413.P18412773495468326170

/-! ## A004413.P13295102742028072310

`A001934(n)/A004403(n)*A319554(n)`
-/

namespace A004413.P13295102742028072310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / (A004403 n : ℚ) * (A319554 n : ℚ)

end

end A004413.P13295102742028072310

/-! ## A004413.P14460472279867531003

`A000145(n)/A286346(n)*A319554(n)`
-/

namespace A004413.P14460472279867531003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000145 n : ℚ) / (A286346 n : ℚ) * (A319554 n : ℚ)

end

end A004413.P14460472279867531003

/-! ## A004413.P13554285810239928243

`A004404(n)/A319552(n)*A319554(n)`
-/

namespace A004413.P13554285810239928243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004404 n : ℚ) / (A319552 n : ℚ) * (A319554 n : ℚ)

end

end A004413.P13554285810239928243

/-! ## A004413.P2206521736622014996

`A110511(A000217(n))*A319554(n)`
-/

namespace A004413.P2206521736622014996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110511 (A000217 n).toNat * A319554 n

end

end A004413.P2206521736622014996

/-!
# A004426: Arithmetic mean of digits of n (rounded down).

The programs for A004426, the canonical program `A004426.P7142668766808473070` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004426 has offset 0).

The definition of A004426 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004426.P7142668766808473070

`floor(A007953(n)/A055642(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004426

/-- `floor(A007953(n)/A055642(n))` -/
def P7142668766808473070.Spec : Prop :=
  ∀ n, P7142668766808473070.a n = A004426 n

theorem P7142668766808473070.correct : P7142668766808473070.Spec := by
  intro n
  simp only [A004426]

end A004426

/-! ## A004426.P8365076574343714058

`A004427(n)-floor(sqrt(A180160(n)))`
-/

namespace A004426.P8365076574343714058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n - Int.sqrt (A180160 n)

end

end A004426.P8365076574343714058

namespace A004426

/-- `A004427(n)-floor(sqrt(A180160(n)))` -/
def P8365076574343714058.Spec : Prop :=
  ∀ n, P8365076574343714058.a n = A004426 n

end A004426

/-! ## A004426.P1664908661258310025

`floor(sqrt(A118881(n))/A055642(n))`
-/

namespace A004426.P1664908661258310025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A118881 n : ℝ) / (A055642 n : ℝ)⌋

end

end A004426.P1664908661258310025

namespace A004426

/-- `floor(sqrt(A118881(n))/A055642(n))` -/
def P1664908661258310025.Spec : Prop :=
  ∀ n, P1664908661258310025.a n = A004426 n

end A004426

/-! ## A004426.P6247204155925163874

`A004427(n)-char[A180157(n+1)]`
-/

namespace A004426.P6247204155925163874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180157 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004426.P6247204155925163874

namespace A004426

/-- `A004427(n)-char[A180157(n+1)]` -/
def P6247204155925163874.Spec : Prop :=
  ∀ n, P6247204155925163874.a n = A004426 n

end A004426

/-! ## A004426.P12404857226726982133

`(A007953(n)-A180160(n))/A055642(n)`
-/

namespace A004426.P12404857226726982133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 n - A180160 n : ℚ) / (A055642 n : ℚ)

end

end A004426.P12404857226726982133

namespace A004426

/-- `(A007953(n)-A180160(n))/A055642(n)` -/
def P12404857226726982133.Spec : Prop :=
  ∀ n, P12404857226726982133.a n = (A004426 n : ℚ)

end A004426

/-! ## A004426.P639552355622300801

`A004427(n)-A180160(n)^A000040(n+1)`
-/

namespace A004426.P639552355622300801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004427 n : ℚ) - (A180160 n : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A004426.P639552355622300801

namespace A004426

/-- `A004427(n)-A180160(n)^A000040(n+1)` -/
def P639552355622300801.Spec : Prop :=
  ∀ n, P639552355622300801.a n = (A004426 n : ℚ)

end A004426

/-!
# A004427: Arithmetic mean of digits of n (rounded up).

The programs for A004427, the canonical program `A004427.P8245107043003752294` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004427 has offset 0).

The definition of A004427 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004427.P8245107043003752294

`ceil(A007953(n)/A055642(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004427

/-- `ceil(A007953(n)/A055642(n))` -/
def P8245107043003752294.Spec : Prop :=
  ∀ n, P8245107043003752294.a n = A004427 n

theorem P8245107043003752294.correct : P8245107043003752294.Spec := by
  intro n
  simp only [A004427]

end A004427

/-! ## A004427.P18169235764849947699

`A178359(n)%10`
-/

namespace A004427.P18169235764849947699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178359 n) 10

end

end A004427.P18169235764849947699

namespace A004427

/-- `A178359(n)%10` -/
def P18169235764849947699.Spec : Prop :=
  ∀ n, P18169235764849947699.a n = A004427 n

end A004427

/-! ## A004427.P13290768721995561027

`A178359(n)-A008592(n)`
-/

namespace A004427.P13290768721995561027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178359 n - A008592 n

end

end A004427.P13290768721995561027

namespace A004427

/-- `A178359(n)-A008592(n)` -/
def P13290768721995561027.Spec : Prop :=
  ∀ n, P13290768721995561027.a n = A004427 n

theorem P13290768721995561027.correct : P13290768721995561027.Spec := by
  intro n
  simp only [A004427, Nat.add_sub_cancel, A004427.P13290768721995561027.a, A004427.P8245107043003752294.a, A007953, A007953.P3472751987379697826.a, A008592, A008592.P4981059802862696142.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, A178359, A178359.P15358575876907738801.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004427

/-! ## A004427.P581459752187169685

`A178359(n)+1-A017281(n)`
-/

namespace A004427.P581459752187169685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178359 n + (1 - A017281 n)

end

end A004427.P581459752187169685

namespace A004427

/-- `A178359(n)+1-A017281(n)` -/
def P581459752187169685.Spec : Prop :=
  ∀ n, P581459752187169685.a n = A004427 n

theorem P581459752187169685.correct : P581459752187169685.Spec := by
  intro n
  simp only [A004427, Nat.add_sub_cancel, A004427.P581459752187169685.a, A004427.P8245107043003752294.a, A007953, A007953.P3472751987379697826.a, A017281, A017281.P12372910670058171543.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, A178359, A178359.P15358575876907738801.a, A008592, A008592.P4981059802862696142.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004427

/-! ## A004427.P1267458254567676537

`A178359(n)-A168461(2*n+1)`
-/

namespace A004427.P1267458254567676537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178359 n - A168461 (2 * n + 1)

end

end A004427.P1267458254567676537

namespace A004427

/-- `A178359(n)-A168461(2*n+1)` -/
def P1267458254567676537.Spec : Prop :=
  ∀ n, P1267458254567676537.a n = A004427 n

end A004427

/-! ## A004427.P4373982180303221784

`A004086(A178358(n)-n)`
-/

namespace A004427.P4373982180303221784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A178358 n - (n : ℤ)).toNat

end

end A004427.P4373982180303221784

namespace A004427

/-- `A004086(A178358(n)-n)` -/
def P4373982180303221784.Spec : Prop :=
  ∀ n, P4373982180303221784.a n = A004427 n

end A004427

/-! ## A004427.P9805616623582578950

`A010888(A178359(n)-n)`
-/

namespace A004427.P9805616623582578950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A178359 n - (n : ℤ)).toNat

end

end A004427.P9805616623582578950

namespace A004427

/-- `A010888(A178359(n)-n)` -/
def P9805616623582578950.Spec : Prop :=
  ∀ n, P9805616623582578950.a n = A004427 n

end A004427

/-! ## A004427.P16503317329094680413

`A010879(A010879(n)+A178359(n)-n)`
-/

namespace A004427.P16503317329094680413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A010879 n + (A178359 n - (n : ℤ))).toNat

end

end A004427.P16503317329094680413

namespace A004427

/-- `A010879(A010879(n)+A178359(n)-n)` -/
def P16503317329094680413.Spec : Prop :=
  ∀ n, P16503317329094680413.a n = A004427 n

end A004427

/-! ## A004427.P17698657715509158330

`A000030(A178358(n)-n)`
-/

namespace A004427.P17698657715509158330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A178358 n - (n : ℤ)).toNat

end

end A004427.P17698657715509158330

namespace A004427

/-- `A000030(A178358(n)-n)` -/
def P17698657715509158330.Spec : Prop :=
  ∀ n, P17698657715509158330.a n = A004427 n

end A004427

/-! ## A004427.P5345028400197269521

`A007953(A178358(n)-n)`
-/

namespace A004427.P5345028400197269521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A178358 n - (n : ℤ)).toNat

end

end A004427.P5345028400197269521

namespace A004427

/-- `A007953(A178358(n)-n)` -/
def P5345028400197269521.Spec : Prop :=
  ∀ n, P5345028400197269521.a n = A004427 n

end A004427

/-! ## A004427.P6347809142852853775

`A010888(A178358(n)-n)`
-/

namespace A004427.P6347809142852853775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A178358 n - (n : ℤ)).toNat

end

end A004427.P6347809142852853775

namespace A004427

/-- `A010888(A178358(n)-n)` -/
def P6347809142852853775.Spec : Prop :=
  ∀ n, P6347809142852853775.a n = A004427 n

end A004427

/-! ## A004427.P3045509752528926389

`A000030(A178358(n))`
-/

namespace A004427.P3045509752528926389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A178358 n).toNat

end

end A004427.P3045509752528926389

namespace A004427

/-- `A000030(A178358(n))` -/
def P3045509752528926389.Spec : Prop :=
  ∀ n, P3045509752528926389.a n = A004427 n

end A004427

/-! ## A004427.P8519515740724958074

`A010879(A178359(n))`
-/

namespace A004427.P8519515740724958074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A178359 n).toNat

end

end A004427.P8519515740724958074

namespace A004427

/-- `A010879(A178359(n))` -/
def P8519515740724958074.Spec : Prop :=
  ∀ n, P8519515740724958074.a n = A004427 n

end A004427

/-! ## A004427.P6289803805834698684

`A007953(A178359(n))-A007953(n)`
-/

namespace A004427.P6289803805834698684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A178359 n).toNat - A007953 n

end

end A004427.P6289803805834698684

namespace A004427

/-- `A007953(A178359(n))-A007953(n)` -/
def P6289803805834698684.Spec : Prop :=
  ∀ n, P6289803805834698684.a n = A004427 n

end A004427

/-!
# A004428: Geometric mean of digits of n (rounded down).

The programs for A004428, the canonical program `A004428.P8127486929248826252` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004428 has offset 0).

The definition of A004428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004428.P8127486929248826252

`floor(A007954(n)^(1/A055642(n)))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004428

/-- `floor(A007954(n)^(1/A055642(n)))` -/
def P8127486929248826252.Spec : Prop :=
  ∀ n, P8127486929248826252.a n = A004428 n

theorem P8127486929248826252.correct : P8127486929248826252.Spec := by
  intro n
  simp only [A004428]

end A004428

/-! ## A004428.P8797247666426019612

`A000196(A111707(A000196(n²)))`
-/

namespace A004428.P8797247666426019612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A111707 (A000196 (n ^ 2)).toNat).toNat

end

end A004428.P8797247666426019612

namespace A004428

/-- `A000196(A111707(A000196(n²)))` -/
def P8797247666426019612.Spec : Prop :=
  ∀ n, P8797247666426019612.a n = A004428 n

end A004428

/-! ## A004428.P9371844653546674392

`A000196(A014577(n*n)*A169669(n))`
-/

namespace A004428.P9371844653546674392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A014577 (n * n) * A169669 n).toNat

end

end A004428.P9371844653546674392

namespace A004428

/-- `A000196(A014577(n*n)*A169669(n))` -/
def P9371844653546674392.Spec : Prop :=
  ∀ n, P9371844653546674392.a n = A004428 n

end A004428

/-! ## A004428.P13498835091961468345

`A000196(A111707(n)%A331767(n+1))`
-/

namespace A004428.P13498835091961468345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A111707 n) (A331767 (n + 1))).toNat

end

end A004428.P13498835091961468345

namespace A004428

/-- `A000196(A111707(n)%A331767(n+1))` -/
def P13498835091961468345.Spec : Prop :=
  ∀ n, P13498835091961468345.a n = A004428 n

end A004428

/-! ## A004428.P6016451542987787471

`A000030(A257294(n))`
-/

namespace A004428.P6016451542987787471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A257294 n).toNat

end

end A004428.P6016451542987787471

namespace A004428

/-- `A000030(A257294(n))` -/
def P6016451542987787471.Spec : Prop :=
  ∀ n, P6016451542987787471.a n = A004428 n

end A004428

/-!
# A004429: Geometric mean of digits of n (rounded to nearest integer).

The programs for A004429, the canonical program `A004429.P14034330055574467056` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004429 has offset 0).

The definition of A004429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004429.P7084994227181122674

`A000194(A169669(A087019(n)))`
-/

namespace A004429.P7084994227181122674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A169669 (A087019 n).toNat).toNat

end

end A004429.P7084994227181122674

namespace A004429

/-- `A000194(A169669(A087019(n)))` -/
def P7084994227181122674.Spec : Prop :=
  ∀ n, P7084994227181122674.a n = A004429 n

end A004429

/-! ## A004429.P1936045386124122201

`round(sqrt(A169669(n)))%A323392(n+1)`
-/

namespace A004429.P1936045386124122201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A169669 n : ℝ))) (A323392 (n + 1))

end

end A004429.P1936045386124122201

namespace A004429

/-- `round(sqrt(A169669(n)))%A323392(n+1)` -/
def P1936045386124122201.Spec : Prop :=
  ∀ n, P1936045386124122201.a n = A004429 n

end A004429

/-! ## A004429.P787099959663508099

`A000194(A169669(record[A039723(n)]))`
-/

namespace A004429.P787099959663508099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A169669 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A004429.P787099959663508099

namespace A004429

/-- `A000194(A169669(record[A039723(n)]))` -/
def P787099959663508099.Spec : Prop :=
  ∀ n, P787099959663508099.a n = A004429 n

end A004429

/-! ## A004429.P778641443112517077

`A000194(A169669(n)%A000546(n+1))`
-/

namespace A004429.P778641443112517077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.tmod (A169669 n) (A000546 (n + 1))).toNat

end

end A004429.P778641443112517077

namespace A004429

/-- `A000194(A169669(n)%A000546(n+1))` -/
def P778641443112517077.Spec : Prop :=
  ∀ n, P778641443112517077.a n = A004429 n

end A004429

/-! ## A004429.P14034330055574467056

`A000194(A001511(n²+1))*A000194(A111707(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A004429

/-- `A000194(A001511(n²+1))*A000194(A111707(n))` -/
def P14034330055574467056.Spec : Prop :=
  ∀ n, P14034330055574467056.a n = A004429 n

theorem P14034330055574467056.correct : P14034330055574467056.Spec := by
  intro n
  simp only [A004429]

end A004429

/-!
# A004430: Geometric mean of digits of n (rounded up).

The programs for A004430, the canonical program `A004430.P6447519531783021545` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004430 has offset 0).

The definition of A004430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004430.P15946098400660026417

`ceil(sqrt(A111707(n)))*A075437(n²)`
-/

namespace A004430.P15946098400660026417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A111707 n : ℝ)⌉ * A075437 (n ^ 2)

end

end A004430.P15946098400660026417

namespace A004430

/-- `ceil(sqrt(A111707(n)))*A075437(n²)` -/
def P15946098400660026417.Spec : Prop :=
  ∀ n, P15946098400660026417.a n = A004430 n

end A004430

/-! ## A004430.P11762507217106612397

`ceil(sqrt(A111707(n)))*A266152(n²)`
-/

namespace A004430.P11762507217106612397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A111707 n : ℝ)⌉ * A266152 (n ^ 2)

end

end A004430.P11762507217106612397

namespace A004430

/-- `ceil(sqrt(A111707(n)))*A266152(n²)` -/
def P11762507217106612397.Spec : Prop :=
  ∀ n, P11762507217106612397.a n = A004430 n

end A004430

/-! ## A004430.P7307025512026620040

`ceil(sqrt(A111707(n)))%A016777(n²)`
-/

namespace A004430.P7307025512026620040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A111707 n : ℝ)⌉ (A016777 (n ^ 2))

end

end A004430.P7307025512026620040

namespace A004430

/-- `ceil(sqrt(A111707(n)))%A016777(n²)` -/
def P7307025512026620040.Spec : Prop :=
  ∀ n, P7307025512026620040.a n = A004430 n

end A004430

/-! ## A004430.P6447519531783021545

`ceil(sqrt(A169669(n)))%A016777(n²)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004430

/-- `ceil(sqrt(A169669(n)))%A016777(n²)` -/
def P6447519531783021545.Spec : Prop :=
  ∀ n, P6447519531783021545.a n = A004430 n

theorem P6447519531783021545.correct : P6447519531783021545.Spec := by
  intro n
  simp only [A004430]

end A004430

/-! ## A004430.P6622421333130269354

`A023961((n+1)²)+ceil(sqrt(A111707(n)))`
-/

namespace A004430.P6622421333130269354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 ((n + 1) ^ 2) + ⌈Real.sqrt (A111707 n : ℝ)⌉

end

end A004430.P6622421333130269354

namespace A004430

/-- `A023961((n+1)²)+ceil(sqrt(A111707(n)))` -/
def P6622421333130269354.Spec : Prop :=
  ∀ n, P6622421333130269354.a n = A004430 n

end A004430

/-! ## A004430.P4884138138139800995

`A000038(n²+2)+ceil(sqrt(A169669(n)))`
-/

namespace A004430.P4884138138139800995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n ^ 2 + 2) + ⌈Real.sqrt (A169669 n : ℝ)⌉

end

end A004430.P4884138138139800995

namespace A004430

/-- `A000038(n²+2)+ceil(sqrt(A169669(n)))` -/
def P4884138138139800995.Spec : Prop :=
  ∀ n, P4884138138139800995.a n = A004430 n

end A004430

/-! ## A004430.P12825854491743201766

`A023533(n²+2)+ceil(sqrt(A169669(n)))`
-/

namespace A004430.P12825854491743201766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (n ^ 2 + 2) + ⌈Real.sqrt (A169669 n : ℝ)⌉

end

end A004430.P12825854491743201766

namespace A004430

/-- `A023533(n²+2)+ceil(sqrt(A169669(n)))` -/
def P12825854491743201766.Spec : Prop :=
  ∀ n, P12825854491743201766.a n = A004430 n

end A004430

/-! ## A004430.P5049802327468218765

`(A080339((n+1)²)+1)*ceil(sqrt(A169669(n)))`
-/

namespace A004430.P5049802327468218765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080339 ((n + 1) ^ 2) + 1) * ⌈Real.sqrt (A169669 n : ℝ)⌉

end

end A004430.P5049802327468218765

namespace A004430

/-- `(A080339((n+1)²)+1)*ceil(sqrt(A169669(n)))` -/
def P5049802327468218765.Spec : Prop :=
  ∀ n, P5049802327468218765.a n = A004430 n

end A004430

/-!
# A004431: Numbers that are the sum of 2 distinct nonzero squares.

The programs for A004431, the canonical program `A004431.P13089136488273060828` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004431 has offset 1).

The definition of A004431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004431.P13089136488273060828

`eq[1, A353814(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A004431

/-- `eq[1, A353814(n+1)]+1` -/
def P13089136488273060828.Spec : Prop :=
  ∀ n, (P13089136488273060828.a n : ℤ) = A004431 (n + 1)

theorem P13089136488273060828.correct : P13089136488273060828.Spec := by
  intro n
  simp only [A004431, Nat.add_sub_cancel]

end A004431

/-! ## A004431.P11725076130051741027

`∪[A007692(n+1), A025302(n+1)]`
-/

namespace A004431.P11725076130051741027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004431.P11725076130051741027

namespace A004431

/-- `∪[A007692(n+1), A025302(n+1)]` -/
def P11725076130051741027.Spec : Prop :=
  ∀ n, (P11725076130051741027.a n : ℤ) = A004431 (n + 1)

end A004431

/-! ## A004431.P6477105088843946099

`∪[A024508(n+1), A025302(n+1)]`
-/

namespace A004431.P6477105088843946099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004431.P6477105088843946099

namespace A004431

/-- `∪[A024508(n+1), A025302(n+1)]` -/
def P6477105088843946099.Spec : Prop :=
  ∀ n, (P6477105088843946099.a n : ℤ) = A004431 (n + 1)

end A004431

/-! ## A004431.P10704863575810866657

`∪[A025302(n+1), A118882(n+1)]`
-/

namespace A004431.P10704863575810866657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004431.P10704863575810866657

namespace A004431

/-- `∪[A025302(n+1), A118882(n+1)]` -/
def P10704863575810866657.Spec : Prop :=
  ∀ n, (P10704863575810866657.a n : ℤ) = A004431 (n + 1)

end A004431

/-! ## A004431.P16570233231170630488

`filter[A000404(n+1), A353814(#)]`
-/

namespace A004431.P16570233231170630488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A004431.P16570233231170630488

namespace A004431

/-- `filter[A000404(n+1), A353814(#)]` -/
def P16570233231170630488.Spec : Prop :=
  ∀ n, P16570233231170630488.a n = A004431 (n + 1)

end A004431

/-! ## A004431.P15801427881795029474

`filter[A001983(n+1), A353814(#)]`
-/

namespace A004431.P15801427881795029474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A004431.P15801427881795029474

namespace A004431

/-- `filter[A001983(n+1), A353814(#)]` -/
def P15801427881795029474.Spec : Prop :=
  ∀ n, P15801427881795029474.a n = A004431 (n + 1)

end A004431

/-! ## A004431.P12312384147714559542

`∩[A000404(n+1), A001983(n+1)]`
-/

namespace A004431.P12312384147714559542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004431.P12312384147714559542

namespace A004431

/-- `∩[A000404(n+1), A001983(n+1)]` -/
def P12312384147714559542.Spec : Prop :=
  ∀ n, (P12312384147714559542.a n : ℤ) = A004431 (n + 1)

end A004431

/-! ## A004431.P8529737969341942634

`filter[A001481(n+2), A353814(#)]`
-/

namespace A004431.P8529737969341942634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A004431.P8529737969341942634

namespace A004431

/-- `filter[A001481(n+2), A353814(#)]` -/
def P8529737969341942634.Spec : Prop :=
  ∀ n, P8529737969341942634.a n = A004431 (n + 1)

end A004431

/-! ## A004431.P12014503779023460989

`filter[A005792(n+1), A353814(#)]`
-/

namespace A004431.P12014503779023460989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A004431.P12014503779023460989

namespace A004431

/-- `filter[A005792(n+1), A353814(#)]` -/
def P12014503779023460989.Spec : Prop :=
  ∀ n, P12014503779023460989.a n = A004431 (n + 1)

end A004431

/-! ## A004431.P1068524201527947379

`filter[A068537(n+1), A353814(#)]`
-/

namespace A004431.P1068524201527947379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A004431.P1068524201527947379

namespace A004431

/-- `filter[A068537(n+1), A353814(#)]` -/
def P1068524201527947379.Spec : Prop :=
  ∀ n, P1068524201527947379.a n = A004431 (n + 1)

end A004431

/-! ## A004431.P14578214459874822339

`filter[A391195(n+1), A353814(#)]`
-/

namespace A004431.P14578214459874822339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A004431.P14578214459874822339

namespace A004431

/-- `filter[A391195(n+1), A353814(#)]` -/
def P14578214459874822339.Spec : Prop :=
  ∀ n, P14578214459874822339.a n = A004431 (n + 1)

end A004431

/-! ## A004431.P10630737256193354062

`filter[A070049(n+1), A353814(#)]`
-/

namespace A004431.P10630737256193354062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A004431.P10630737256193354062

namespace A004431

/-- `filter[A070049(n+1), A353814(#)]` -/
def P10630737256193354062.Spec : Prop :=
  ∀ n, P10630737256193354062.a n = A004431 (n + 1)

end A004431

/-! ## A004431.P268744407720633750

`filter[A327609(n+2), A353814(#)]`
-/

namespace A004431.P268744407720633750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327609 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A004431.P268744407720633750

namespace A004431

/-- `filter[A327609(n+2), A353814(#)]` -/
def P268744407720633750.Spec : Prop :=
  ∀ n, P268744407720633750.a n = A004431 (n + 1)

end A004431

/-! ## A004431.P6503031795586249323

`filter[A383784(n+2), A353814(#)]`
-/

namespace A004431.P6503031795586249323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A004431.P6503031795586249323

namespace A004431

/-- `filter[A383784(n+2), A353814(#)]` -/
def P6503031795586249323.Spec : Prop :=
  ∀ n, P6503031795586249323.a n = A004431 (n + 1)

end A004431

/-! ## A004431.P15319811111005565051

`filter[A353202(n+1), A353814(#)]`
-/

namespace A004431.P15319811111005565051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A004431.P15319811111005565051

namespace A004431

/-- `filter[A353202(n+1), A353814(#)]` -/
def P15319811111005565051.Spec : Prop :=
  ∀ n, P15319811111005565051.a n = A004431 (n + 1)

end A004431

/-! ## A004431.P9155811158002868819

`filter[A225836(n+1), A353814(#)]`
-/

namespace A004431.P9155811158002868819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A004431.P9155811158002868819

namespace A004431

/-- `filter[A225836(n+1), A353814(#)]` -/
def P9155811158002868819.Spec : Prop :=
  ∀ n, P9155811158002868819.a n = A004431 (n + 1)

end A004431

/-! ## A004431.P4727461301740323444

`filter[A304433(n+1), A353814(#)]`
-/

namespace A004431.P4727461301740323444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A004431.P4727461301740323444

namespace A004431

/-- `filter[A304433(n+1), A353814(#)]` -/
def P4727461301740323444.Spec : Prop :=
  ∀ n, P4727461301740323444.a n = A004431 (n + 1)

end A004431

/-! ## A004431.P10955409878074350487

`filter[A091072(n+1), A353814(#)]`
-/

namespace A004431.P10955409878074350487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A004431.P10955409878074350487

namespace A004431

/-- `filter[A091072(n+1), A353814(#)]` -/
def P10955409878074350487.Spec : Prop :=
  ∀ n, P10955409878074350487.a n = A004431 (n + 1)

end A004431

/-! ## A004431.P17238164895463447923

`filter[A225857(n+1), A353814(#)]`
-/

namespace A004431.P17238164895463447923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A004431.P17238164895463447923

namespace A004431

/-- `filter[A225857(n+1), A353814(#)]` -/
def P17238164895463447923.Spec : Prop :=
  ∀ n, P17238164895463447923.a n = A004431 (n + 1)

end A004431

/-! ## A004431.P15435411800231186204

`filter[A351723(n+2), A353814(#)]`
-/

namespace A004431.P15435411800231186204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351723 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A004431.P15435411800231186204

namespace A004431

/-- `filter[A351723(n+2), A353814(#)]` -/
def P15435411800231186204.Spec : Prop :=
  ∀ n, P15435411800231186204.a n = A004431 (n + 1)

end A004431

/-!
# A004432: Numbers that are the sum of 3 distinct nonzero squares.

The programs for A004432, there is no canonical definition to state claims against.
-/

/-! ## A004432.P2823316730224862596

`comp[A004440(n+1)-1]+1`
-/

namespace A004432.P2823316730224862596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004440 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A004432.P2823316730224862596

/-! ## A004432.P16882293373480609531

`∪[A024804(n+1), A025339(n+1)]`
-/

namespace A004432.P16882293373480609531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004432.P16882293373480609531

/-! ## A004432.P13707247054014483792

`lt[0, A025442(n)]`
-/

namespace A004432.P13707247054014483792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004432.P13707247054014483792

/-! ## A004432.P15563722231964653955

`lt[A025441(n), A025436(n)]`
-/

namespace A004432.P15563722231964653955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004432.P15563722231964653955

/-! ## A004432.P12716947273573282540

`eq[1, A057427(A025442(n)²)]`
-/

namespace A004432.P12716947273573282540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A025442 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004432.P12716947273573282540

/-! ## A004432.P17426128740546475493

`eq[2, A000122(A025442(n)²)]`
-/

namespace A004432.P17426128740546475493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A025442 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004432.P17426128740546475493

/-! ## A004432.P9437976074429811311

`eq[1, A141044(A025442(n)+1)]`
-/

namespace A004432.P9437976074429811311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A025442 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004432.P9437976074429811311

/-! ## A004432.P7176372054547485215

`eq[1, A157928(A025442(n)+1)]`
-/

namespace A004432.P7176372054547485215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A025442 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004432.P7176372054547485215

/-! ## A004432.P8923876868200677220

`eq[2, A178815(A025442(n)+1)]`
-/

namespace A004432.P8923876868200677220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (A025442 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004432.P8923876868200677220

/-! ## A004432.P11043909970562063774

`eq[1, A057427(2*A025442(n))]`
-/

namespace A004432.P11043909970562063774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * A025442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004432.P11043909970562063774

/-! ## A004432.P11962792580250786231

`eq[1, A141044(2*A025442(n))]`
-/

namespace A004432.P11962792580250786231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (2 * A025442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004432.P11962792580250786231

/-! ## A004432.P14483246045900028645

`eq[1, A157928(2*A025442(n))]`
-/

namespace A004432.P14483246045900028645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (2 * A025442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004432.P14483246045900028645

/-! ## A004432.P6097903208335471220

`eq[1, A051023(a(A025442(n)))]` with `a(0)=2`
-/

namespace A004432.P6097903208335471220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A051023 (f2 (A025442 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004432.P6097903208335471220

/-! ## A004432.P17439600843136186692

`eq[1, A227782(a(A025442(n)))]` with `a(0)=28`
-/

namespace A004432.P17439600843136186692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [28] fun n f2 =>
  A227782 (f2 (A025442 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004432.P17439600843136186692

/-! ## A004432.P6313247430265753141

`eq[1, A118977(ceil(A025442(n)/(n+1)))]`
-/

namespace A004432.P6313247430265753141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 ⌈(A025442 n : ℚ) / (n + 1 : ℚ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004432.P6313247430265753141

/-! ## A004432.P857782679557299747

`eq[1, A159195(ceil(A025442(n)/(n+1)))]`
-/

namespace A004432.P857782679557299747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159195 ⌈(A025442 n : ℚ) / (n + 1 : ℚ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004432.P857782679557299747

/-! ## A004432.P17610567131436651247

`eq[A000007(A025442(n)), A000038(n)]`
-/

namespace A004432.P17610567131436651247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A025442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004432.P17610567131436651247

/-! ## A004432.P10383804884087880463

`lt[A025443(n), A025437(n)]`
-/

namespace A004432.P10383804884087880463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004432.P10383804884087880463

/-! ## A004432.P14891899671752320053

`eq[1, gcd(A025442(n), A050265(n+1))]`
-/

namespace A004432.P14891899671752320053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025442 n) (A050265 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004432.P14891899671752320053

/-! ## A004432.P15853905063769585564

`eq[A000007(n+1), A000007(A025442(n))]`
-/

namespace A004432.P15853905063769585564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A025442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004432.P15853905063769585564

/-!
# A004433: Numbers that are the sum of 4 distinct nonzero squares: of form w^2+x^2+y^2+z^2 with 0

The programs for A004433, there is no canonical definition to state claims against.
-/

/-! ## A004433.P15573619003855942641

`lt[0, A025443(n)]`
-/

namespace A004433.P15573619003855942641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004433.P15573619003855942641

/-! ## A004433.P4228269327205375342

`A316835(n+1)/4`
-/

namespace A004433.P4228269327205375342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316835 (n + 1) : ℚ) / 4

end

end A004433.P4228269327205375342

/-! ## A004433.P17406629110880244751

`comp[A004441(n+1)-1]+1`
-/

namespace A004433.P17406629110880244751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004441 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A004433.P17406629110880244751

/-! ## A004433.P16771613821122457981

`eq[1, A141044(A025443(n)+1)]`
-/

namespace A004433.P16771613821122457981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A025443 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004433.P16771613821122457981

/-! ## A004433.P10187595378394350562

`eq[1, A157928(A025443(n)+1)]`
-/

namespace A004433.P10187595378394350562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A025443 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004433.P10187595378394350562

/-! ## A004433.P11692846772640896309

`eq[1, A141044(2*A025443(n))]`
-/

namespace A004433.P11692846772640896309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (2 * A025443 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004433.P11692846772640896309

/-! ## A004433.P17128500040391995497

`eq[1, A157928(2*A025443(n))]`
-/

namespace A004433.P17128500040391995497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (2 * A025443 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004433.P17128500040391995497

/-! ## A004433.P18419447604187324052

`eq[2, A107393(6*A025443(n))]`
-/

namespace A004433.P18419447604187324052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (6 * A025443 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004433.P18419447604187324052

/-! ## A004433.P5255004632112617130

`eq[1, A000700(a(A025443(n)))]` with `a(0)=2`
-/

namespace A004433.P5255004632112617130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A000700 (f2 (A025443 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004433.P5255004632112617130

/-! ## A004433.P1150500933920520225

`∪[A025376(n+1), A025386(n+1)]`
-/

namespace A004433.P1150500933920520225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004433.P1150500933920520225

/-! ## A004433.P10091095864982965320

`eq[A000038(n)², A000038(A025443(n))]`
-/

namespace A004433.P10091095864982965320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A025443 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004433.P10091095864982965320

/-! ## A004433.P13153252078861001493

`lt[A025442(n), A025437(n)]`
-/

namespace A004433.P13153252078861001493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004433.P13153252078861001493

/-! ## A004433.P11565469537171018509

`lt[A025444(n), A025438(n)]`
-/

namespace A004433.P11565469537171018509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004433.P11565469537171018509

/-! ## A004433.P5346605307292185713

`eq[1, gcd(A025443(n), A216884(n+1))]`
-/

namespace A004433.P5346605307292185713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025443 n) (A216884 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004433.P5346605307292185713

/-! ## A004433.P3629926981282466253

`eq[A000038(n+1), A000038(A025443(n))]`
-/

namespace A004433.P3629926981282466253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A025443 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004433.P3629926981282466253

/-! ## A004433.P6308938263480665908

`eq[2*A000007(n), A000007(A025443(n))]`
-/

namespace A004433.P6308938263480665908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A025443 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004433.P6308938263480665908

/-! ## A004433.P5074647282423516607

`eq[A000007(n+1), A000007(A025443(n))]`
-/

namespace A004433.P5074647282423516607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A025443 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004433.P5074647282423516607

/-! ## A004433.P13006526486831475796

`eq[2, A020639(A235452(6*A025443(n)+1))]`
-/

namespace A004433.P13006526486831475796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A235452 (6 * A025443 n + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004433.P13006526486831475796

/-! ## A004433.P5147606894074936374

`A002265(A316835(n+1))`
-/

namespace A004433.P5147606894074936374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A316835 (n + 1)).toNat

end

end A004433.P5147606894074936374

/-! ## A004433.P1004227843340913429

`eq[2, A000122(A025443(n)²)]`
-/

namespace A004433.P1004227843340913429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A025443 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004433.P1004227843340913429

/-!
# A004434: Numbers that are the sum of 5 distinct nonzero squares.

The programs for A004434, there is no canonical definition to state claims against.
-/

/-! ## A004434.P1601764056198896380

`lt[A010054(A000040(2*n+1)), A025444(n)]`
-/

namespace A004434.P1601764056198896380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000040 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004434.P1601764056198896380

/-!
# A004435: Positive integers that are not the sum of 2 distinct square integers.

The programs for A004435, the canonical program `A004435.P8512248828130465738` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004435 has offset 1).

The definition of A004435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9937 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004435.P1469275079616587282

`∪[A022544(n+1), A050804(n+1)]`
-/

namespace A004435.P1469275079616587282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004435.P1469275079616587282

namespace A004435

/-- `∪[A022544(n+1), A050804(n+1)]` -/
def P1469275079616587282.Spec : Prop :=
  ∀ n, (P1469275079616587282.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P8512248828130465738

`filter[A004439(n+1), A049240(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A004435

/-- `filter[A004439(n+1), A049240(#)]` -/
def P8512248828130465738.Spec : Prop :=
  ∀ n, P8512248828130465738.a n = A004435 (n + 1)

theorem P8512248828130465738.correct : P8512248828130465738.Spec := by
  intro n
  simp only [A004435, Nat.add_sub_cancel]

end A004435

/-! ## A004435.P17289695582697545861

`∩[A000037(n+1), A004439(n+1)]`
-/

namespace A004435.P17289695582697545861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004435.P17289695582697545861

namespace A004435

/-- `∩[A000037(n+1), A004439(n+1)]` -/
def P17289695582697545861.Spec : Prop :=
  ∀ n, (P17289695582697545861.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P4279806953410223933

`lt[A143574(n), n]`
-/

namespace A004435.P4279806953410223933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004435.P4279806953410223933

namespace A004435

/-- `lt[A143574(n), n]` -/
def P4279806953410223933.Spec : Prop :=
  ∀ n, (P4279806953410223933.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P9442146449405125148

`lt[A000925(n), atan(n)]`
-/

namespace A004435.P9442146449405125148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A004435.P9442146449405125148

namespace A004435

/-- `lt[A000925(n), atan(n)]` -/
def P9442146449405125148.Spec : Prop :=
  ∀ n, (P9442146449405125148.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P16747049347889997643

`lt[n*A025435(n), n]`
-/

namespace A004435.P16747049347889997643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025435 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004435.P16747049347889997643

namespace A004435

/-- `lt[n*A025435(n), n]` -/
def P16747049347889997643.Spec : Prop :=
  ∀ n, (P16747049347889997643.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P14476174029529998264

`eq[0, A025435(n+1)]+1`
-/

namespace A004435.P14476174029529998264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004435.P14476174029529998264

namespace A004435

/-- `eq[0, A025435(n+1)]+1` -/
def P14476174029529998264.Spec : Prop :=
  ∀ n, (P14476174029529998264.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P6485811982434318789

`lt[A000925(n+1), 2]+1`
-/

namespace A004435.P6485811982434318789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004435.P6485811982434318789

namespace A004435

/-- `lt[A000925(n+1), 2]+1` -/
def P6485811982434318789.Spec : Prop :=
  ∀ n, (P6485811982434318789.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P253648079123194723

`lt[A025441(n), 1-char[n²]]`
-/

namespace A004435.P253648079123194723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004435.P253648079123194723

namespace A004435

/-- `lt[A025441(n), 1-char[n²]]` -/
def P253648079123194723.Spec : Prop :=
  ∀ n, (P253648079123194723.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P5413862541175608577

`eq[A000007(n), A025435(n)]`
-/

namespace A004435.P5413862541175608577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004435.P5413862541175608577

namespace A004435

/-- `eq[A000007(n), A025435(n)]` -/
def P5413862541175608577.Spec : Prop :=
  ∀ n, (P5413862541175608577.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P2791562258195170549

`eq[A000038(n), A025435(n)]`
-/

namespace A004435.P2791562258195170549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004435.P2791562258195170549

namespace A004435

/-- `eq[A000038(n), A025435(n)]` -/
def P2791562258195170549.Spec : Prop :=
  ∀ n, (P2791562258195170549.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P16696803861268801744

`eq[A000925(n), A025426(n)]`
-/

namespace A004435.P16696803861268801744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004435.P16696803861268801744

namespace A004435

/-- `eq[A000925(n), A025426(n)]` -/
def P16696803861268801744.Spec : Prop :=
  ∀ n, (P16696803861268801744.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P15802231315565303329

`eq[A025435(n), A130706(n)]`
-/

namespace A004435.P15802231315565303329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004435.P15802231315565303329

namespace A004435

/-- `eq[A025435(n), A130706(n)]` -/
def P15802231315565303329.Spec : Prop :=
  ∀ n, (P15802231315565303329.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P3322448202036817059

`eq[A063725(n), A093709(n)]`
-/

namespace A004435.P3322448202036817059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004435.P3322448202036817059

namespace A004435

/-- `eq[A063725(n), A093709(n)]` -/
def P3322448202036817059.Spec : Prop :=
  ∀ n, (P3322448202036817059.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P5193778740723802846

`eq[A025435(n), A169585(n)]`
-/

namespace A004435.P5193778740723802846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004435.P5193778740723802846

namespace A004435

/-- `eq[A025435(n), A169585(n)]` -/
def P5193778740723802846.Spec : Prop :=
  ∀ n, (P5193778740723802846.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P10311499078596590452

`eq[A063725(n), A229062(n)]`
-/

namespace A004435.P10311499078596590452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004435.P10311499078596590452

namespace A004435

/-- `eq[A063725(n), A229062(n)]` -/
def P10311499078596590452.Spec : Prop :=
  ∀ n, (P10311499078596590452.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P17860528914217125857

`lt[A000925(n), A002828(n)]`
-/

namespace A004435.P17860528914217125857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004435.P17860528914217125857

namespace A004435

/-- `lt[A000925(n), A002828(n)]` -/
def P17860528914217125857.Spec : Prop :=
  ∀ n, (P17860528914217125857.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P2089655083300947637

`eq[A002448(n)², A025435(n)]`
-/

namespace A004435.P2089655083300947637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004435.P2089655083300947637

namespace A004435

/-- `eq[A002448(n)², A025435(n)]` -/
def P2089655083300947637.Spec : Prop :=
  ∀ n, (P2089655083300947637.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P535740075423801886

`eq[A063725(n)², A000161(n)]`
-/

namespace A004435.P535740075423801886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004435.P535740075423801886

namespace A004435

/-- `eq[A063725(n)², A000161(n)]` -/
def P535740075423801886.Spec : Prop :=
  ∀ n, (P535740075423801886.a n : ℤ) = A004435 (n + 1)

end A004435

/-! ## A004435.P16131953411839950771

`eq[A025435(n)², A089807(n)]`
-/

namespace A004435.P16131953411839950771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004435.P16131953411839950771

namespace A004435

/-- `eq[A025435(n)², A089807(n)]` -/
def P16131953411839950771.Spec : Prop :=
  ∀ n, (P16131953411839950771.a n : ℤ) = A004435 (n + 1)

end A004435

/-!
# A004436: Numbers that are not the sum of 3 distinct squares.

The programs for A004436, there is no canonical definition to state claims against.
-/

/-! ## A004436.P8690861474956959430

`∩[A004439(n+1), A004440(n+1)]`
-/

namespace A004436.P8690861474956959430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004436.P8690861474956959430

/-! ## A004436.P15018587823889688621

`lt[n*A025436(n), n]`
-/

namespace A004436.P15018587823889688621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025436 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004436.P15018587823889688621

/-! ## A004436.P6224931397780607496

`eq[0, A025436(n+1)]+1`
-/

namespace A004436.P6224931397780607496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004436.P6224931397780607496

/-! ## A004436.P8217420712509636073

`eq[A000007(n), A025436(n)]`
-/

namespace A004436.P8217420712509636073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004436.P8217420712509636073

/-! ## A004436.P7045541761306322258

`eq[A000038(n), A025436(n)]`
-/

namespace A004436.P7045541761306322258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004436.P7045541761306322258

/-! ## A004436.P9659515829149788420

`eq[A025436(n)², A089803(n)]`
-/

namespace A004436.P9659515829149788420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004436.P9659515829149788420

/-! ## A004436.P8519103568340560216

`eq[2, A000040(a(A025436(n)))]` with `a(0)=1`
-/

namespace A004436.P8519103568340560216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A025436 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004436.P8519103568340560216

/-! ## A004436.P9029499846834532664

`eq[1, A054977(n)+A025436(n)]`
-/

namespace A004436.P9029499846834532664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004436.P9029499846834532664

/-! ## A004436.P12273521378787204373

`eq[1, A057427(n)+A025436(n)]`
-/

namespace A004436.P12273521378787204373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004436.P12273521378787204373

/-! ## A004436.P1418882202742513066

`lt[A025436(n), n/A022144(n)]`
-/

namespace A004436.P1418882202742513066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A022144 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A004436.P1418882202742513066

/-! ## A004436.P5188829894050427264

`record[n+1-A007918(n)*A025436(n+1)]`
-/

namespace A004436.P5188829894050427264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007918 n * A025436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004436.P5188829894050427264

/-! ## A004436.P13256799802537557607

`eq[A025436(n), A089803(2*n)]`
-/

namespace A004436.P13256799802537557607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089803 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004436.P13256799802537557607

/-!
# A004437: Numbers that are not the sum of 4 distinct squares.

The programs for A004437, there is no canonical definition to state claims against.
-/

/-! ## A004437.P4545344853521247404

`∩[A004440(n+1), A004441(n+1)]`
-/

namespace A004437.P4545344853521247404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004437.P4545344853521247404

/-! ## A004437.P540668410781734034

`∩[A004441(n+1), A026495(n+1)]`
-/

namespace A004437.P540668410781734034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004437.P540668410781734034

/-! ## A004437.P16238246613477671203

`lt[n*A025437(n), n]`
-/

namespace A004437.P16238246613477671203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025437 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004437.P16238246613477671203

/-! ## A004437.P9350241413053086885

`eq[0, A025437(n+1)]+1`
-/

namespace A004437.P9350241413053086885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004437.P9350241413053086885

/-! ## A004437.P3599344240076138976

`eq[A000007(n), A025437(n)]`
-/

namespace A004437.P3599344240076138976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004437.P3599344240076138976

/-! ## A004437.P17859443007437762653

`eq[A000038(n), A025437(n)]`
-/

namespace A004437.P17859443007437762653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004437.P17859443007437762653

/-! ## A004437.P5049393091741759913

`eq[A025435(n), A357069(n)]`
-/

namespace A004437.P5049393091741759913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357069 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004437.P5049393091741759913

/-! ## A004437.P3735116944141350707

`record[A028310(gcd(n, A025437(n)))]`
-/

namespace A004437.P3735116944141350707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A025437 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004437.P3735116944141350707

/-! ## A004437.P18324832515488599637

`lt[A025437(n), A001221(A001316(n))]`
-/

namespace A004437.P18324832515488599637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004437.P18324832515488599637

/-! ## A004437.P6911659912573141996

`eq[A025443(n)+A025442(n), A000038(n)]`
-/

namespace A004437.P6911659912573141996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n + A025442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004437.P6911659912573141996

/-!
# A004438: Numbers that are not the sum of 5 distinct squares.

The programs for A004438, there is no canonical definition to state claims against.
-/

/-! ## A004438.P13611072495355380900

`lt[n*A025438(n), n]`
-/

namespace A004438.P13611072495355380900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025438 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004438.P13611072495355380900

/-! ## A004438.P15808260111451108310

`eq[0, A025438(n+1)]+1`
-/

namespace A004438.P15808260111451108310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004438.P15808260111451108310

/-! ## A004438.P12451784131686214774

`eq[A000007(n), A025438(n)]`
-/

namespace A004438.P12451784131686214774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004438.P12451784131686214774

/-! ## A004438.P6559008189375497167

`eq[A000038(n), A025438(n)]`
-/

namespace A004438.P6559008189375497167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004438.P6559008189375497167

/-! ## A004438.P9208942395877699428

`lt[A025438(n), A057427(n)]`
-/

namespace A004438.P9208942395877699428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004438.P9208942395877699428

/-! ## A004438.P3818373945292346677

`record[A028310(gcd(n, A025438(n)))]`
-/

namespace A004438.P3818373945292346677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A025438 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004438.P3818373945292346677

/-! ## A004438.P15317252765265920823

`lt[A025438(n), (1-A166926(n))²]`
-/

namespace A004438.P15317252765265920823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A166926 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004438.P15317252765265920823

/-! ## A004438.P11170045041538399604

`∩[A004441(n+1), A120951(n+1)]`
-/

namespace A004438.P11170045041538399604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004438.P11170045041538399604

/-! ## A004438.P8499831394174048058

`lt[lcm(n, A001222(A025438(n)+1)²), n]`
-/

namespace A004438.P8499831394174048058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A001222 (A025438 n + 1).toNat ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004438.P8499831394174048058

/-! ## A004438.P1926152241366073756

`eq[0, n^a(A001221(n))*A025438(n)]` with `a(0)=1`
-/

namespace A004438.P1926152241366073756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℝ) ^ (f2 (A001221 n).toNat) * (A025438 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A004438.P1926152241366073756

/-!
# A004439: Numbers that are not the sum of 2 distinct nonzero squares.

The programs for A004439, the canonical program `A004439.P13435589376260114249` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004439 has offset 1).

The definition of A004439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7658 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004439.P16778865139790014393

`comp[A004431(n+1)-1]+1`
-/

namespace A004439.P16778865139790014393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A004439.P16778865139790014393

namespace A004439

/-- `comp[A004431(n+1)-1]+1` -/
def P16778865139790014393.Spec : Prop :=
  ∀ n, (P16778865139790014393.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P17623618848831219873

`eq[A025426(n), A379480(n)]`
-/

namespace A004439.P17623618848831219873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004439.P17623618848831219873

namespace A004439

/-- `eq[A025426(n), A379480(n)]` -/
def P17623618848831219873.Spec : Prop :=
  ∀ n, (P17623618848831219873.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P17245546078099910929

`∪[A000548(n+1), A004435(n+1)]`
-/

namespace A004439.P17245546078099910929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004439.P17245546078099910929

namespace A004439

/-- `∪[A000548(n+1), A004435(n+1)]` -/
def P17245546078099910929.Spec : Prop :=
  ∀ n, (P17245546078099910929.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P13351003454637476837

`∪[A004144(n+1), A004435(n+1)]`
-/

namespace A004439.P13351003454637476837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004439.P13351003454637476837

namespace A004439

/-- `∪[A004144(n+1), A004435(n+1)]` -/
def P13351003454637476837.Spec : Prop :=
  ∀ n, (P13351003454637476837.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P8806792195653870228

`∪[A004144(n+1), A018825(n+1)]`
-/

namespace A004439.P8806792195653870228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004439.P8806792195653870228

namespace A004439

/-- `∪[A004144(n+1), A018825(n+1)]` -/
def P8806792195653870228.Spec : Prop :=
  ∀ n, (P8806792195653870228.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P14858345756666668833

`∪[A004435(n+1), A018825(n+1)]`
-/

namespace A004439.P14858345756666668833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004439.P14858345756666668833

namespace A004439

/-- `∪[A004435(n+1), A018825(n+1)]` -/
def P14858345756666668833.Spec : Prop :=
  ∀ n, (P14858345756666668833.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P9462072062612550606

`∪[A004144(n+1), A022544(n+1)]`
-/

namespace A004439.P9462072062612550606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004439.P9462072062612550606

namespace A004439

/-- `∪[A004144(n+1), A022544(n+1)]` -/
def P9462072062612550606.Spec : Prop :=
  ∀ n, (P9462072062612550606.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P10002920447438929444

`∪[A018825(n+1), A050804(n+1)]`
-/

namespace A004439.P10002920447438929444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004439.P10002920447438929444

namespace A004439

/-- `∪[A018825(n+1), A050804(n+1)]` -/
def P10002920447438929444.Spec : Prop :=
  ∀ n, (P10002920447438929444.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P13435589376260114249

`comp[A055096(n+2)-1]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A004439

/-- `comp[A055096(n+2)-1]+1` -/
def P13435589376260114249.Spec : Prop :=
  ∀ n, (P13435589376260114249.a n : ℤ) = A004439 (n + 1)

theorem P13435589376260114249.correct : P13435589376260114249.Spec := by
  intro n
  simp only [A004439, Nat.add_sub_cancel]

end A004439

/-! ## A004439.P11827266718883666089

`lt[n*A025441(n), n]`
-/

namespace A004439.P11827266718883666089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025441 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004439.P11827266718883666089

namespace A004439

/-- `lt[n*A025441(n), n]` -/
def P11827266718883666089.Spec : Prop :=
  ∀ n, (P11827266718883666089.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P597509877994745358

`lt[A025441(n+1), 1]+1`
-/

namespace A004439.P597509877994745358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004439.P597509877994745358

namespace A004439

/-- `lt[A025441(n+1), 1]+1` -/
def P597509877994745358.Spec : Prop :=
  ∀ n, (P597509877994745358.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P7958320534752309849

`lt[A002654(n+1), 2]+1`
-/

namespace A004439.P7958320534752309849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004439.P7958320534752309849

namespace A004439

/-- `lt[A002654(n+1), 2]+1` -/
def P7958320534752309849.Spec : Prop :=
  ∀ n, (P7958320534752309849.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P9262050473030483670

`lt[A063725(n+1), 2]+1`
-/

namespace A004439.P9262050473030483670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004439.P9262050473030483670

namespace A004439

/-- `lt[A063725(n+1), 2]+1` -/
def P9262050473030483670.Spec : Prop :=
  ∀ n, (P9262050473030483670.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P7528953001981879312

`lt[A113446(n+1), 2]+1`
-/

namespace A004439.P7528953001981879312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004439.P7528953001981879312

namespace A004439

/-- `lt[A113446(n+1), 2]+1` -/
def P7528953001981879312.Spec : Prop :=
  ∀ n, (P7528953001981879312.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P13972543168101766887

`lt[A138950(n+1), 2]+1`
-/

namespace A004439.P13972543168101766887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138950 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004439.P13972543168101766887

namespace A004439

/-- `lt[A138950(n+1), 2]+1` -/
def P13972543168101766887.Spec : Prop :=
  ∀ n, (P13972543168101766887.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P9713686662810090681

`eq[1, A287740(A004018(n))]`
-/

namespace A004439.P9713686662810090681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287740 (A004018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004439.P9713686662810090681

namespace A004439

/-- `eq[1, A287740(A004018(n))]` -/
def P9713686662810090681.Spec : Prop :=
  ∀ n, (P9713686662810090681.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P16887414105855109823

`eq[A000007(n), A025441(n)]`
-/

namespace A004439.P16887414105855109823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004439.P16887414105855109823

namespace A004439

/-- `eq[A000007(n), A025441(n)]` -/
def P16887414105855109823.Spec : Prop :=
  ∀ n, (P16887414105855109823.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P1359130423808132551

`eq[A000038(n), A025441(n)]`
-/

namespace A004439.P1359130423808132551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004439.P1359130423808132551

namespace A004439

/-- `eq[A000038(n), A025441(n)]` -/
def P1359130423808132551.Spec : Prop :=
  ∀ n, (P1359130423808132551.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P6940421886819976706

`eq[A010052(n), A025435(n)]`
-/

namespace A004439.P6940421886819976706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004439.P6940421886819976706

namespace A004439

/-- `eq[A010052(n), A025435(n)]` -/
def P6940421886819976706.Spec : Prop :=
  ∀ n, (P6940421886819976706.a n : ℤ) = A004439 (n + 1)

end A004439

/-! ## A004439.P13768958604205461831

`eq[A063725(n), A379480(n)]`
-/

namespace A004439.P13768958604205461831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004439.P13768958604205461831

namespace A004439

/-- `eq[A063725(n), A379480(n)]` -/
def P13768958604205461831.Spec : Prop :=
  ∀ n, (P13768958604205461831.a n : ℤ) = A004439 (n + 1)

end A004439

/-!
# A004440: Numbers that are not the sum of 3 distinct nonzero squares.

The programs for A004440, there is no canonical definition to state claims against.
-/

/-! ## A004440.P8956231273681692440

`lt[n*A025442(n), n]`
-/

namespace A004440.P8956231273681692440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025442 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004440.P8956231273681692440

/-! ## A004440.P1402363351521672687

`lt[A025442(n+1), 1]+1`
-/

namespace A004440.P1402363351521672687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004440.P1402363351521672687

/-! ## A004440.P15755028727160905790

`eq[A000007(n), A025442(n)]`
-/

namespace A004440.P15755028727160905790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004440.P15755028727160905790

/-! ## A004440.P16832490257599006399

`eq[A000038(n), A025442(n)]`
-/

namespace A004440.P16832490257599006399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004440.P16832490257599006399

/-! ## A004440.P3535888026824816554

`eq[A025435(n), A347534(n)]`
-/

namespace A004440.P3535888026824816554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004440.P3535888026824816554

/-! ## A004440.P2913978317634667517

`lt[A025442(n), A057427(n)]`
-/

namespace A004440.P2913978317634667517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004440.P2913978317634667517

/-! ## A004440.P2056431590187880642

`eq[2, A000122(a(A025442(n)))]` with `a(0)=1`
-/

namespace A004440.P2056431590187880642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000122 (f2 (A025442 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004440.P2056431590187880642

/-! ## A004440.P5310077958125430095

`eq[2, A028291(a(A025442(n)))]` with `a(0)=1`
-/

namespace A004440.P5310077958125430095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A028291 (f2 (A025442 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004440.P5310077958125430095

/-! ## A004440.P3500183655825336551

`eq[A057428(n)+1, A025442(n)]`
-/

namespace A004440.P3500183655825336551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004440.P3500183655825336551

/-! ## A004440.P4326225272507601886

`lt[A025442(n), n/A020710(n)]`
-/

namespace A004440.P4326225272507601886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A020710 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A004440.P4326225272507601886

/-! ## A004440.P12667554358238018899

`eq[A025442(n), A341629(2*n+1)]`
-/

namespace A004440.P12667554358238018899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004440.P12667554358238018899

/-! ## A004440.P17037628321315610784

`record[(n+1)/A000041(A025442(n+1)+1)]`
-/

namespace A004440.P17037628321315610784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000041 (A025442 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004440.P17037628321315610784

/-! ## A004440.P17272388276002026203

`record[(n+1)/A004885(A025442(n+1)+2)]`
-/

namespace A004440.P17272388276002026203
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A004885 (A025442 (n + 1) + 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004440.P17272388276002026203

/-! ## A004440.P13665898677256646731

`eq[A025442(n), A169585(n+1)]`
-/

namespace A004440.P13665898677256646731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004440.P13665898677256646731

/-!
# A004441: Numbers that are not the sum of 4 distinct nonzero squares.

The programs for A004441, there is no canonical definition to state claims against.
-/

/-! ## A004441.P1232124656737744542

`lt[n*A025443(n), n]`
-/

namespace A004441.P1232124656737744542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025443 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004441.P1232124656737744542

/-! ## A004441.P16218687220337377906

`eq[0, A025443(n+1)]+1`
-/

namespace A004441.P16218687220337377906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004441.P16218687220337377906

/-! ## A004441.P3855206134969475354

`lt[A025443(n), n/A000203(n+1)]`
-/

namespace A004441.P3855206134969475354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000203 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A004441.P3855206134969475354

/-! ## A004441.P6013374621316338780

`lt[A025443(n), n/A000217(n+3)]`
-/

namespace A004441.P6013374621316338780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000217 (n + 3) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A004441.P6013374621316338780

/-! ## A004441.P683898200131521926

`lt[A025443(n), A010051(A006530(n+1))]`
-/

namespace A004441.P683898200131521926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A006530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004441.P683898200131521926

/-! ## A004441.P1659527141480419939

`lt[A025443(n), A100995(A020639(n+1))]`
-/

namespace A004441.P1659527141480419939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004441.P1659527141480419939

/-! ## A004441.P14394734950276025289

`eq[A000007(n), A025443(n)]`
-/

namespace A004441.P14394734950276025289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004441.P14394734950276025289

/-! ## A004441.P6663175130179262177

`eq[A000038(n), A025443(n)]`
-/

namespace A004441.P6663175130179262177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004441.P6663175130179262177

/-! ## A004441.P12214810351994100018

`lt[A025443(n), A057427(n)]`
-/

namespace A004441.P12214810351994100018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004441.P12214810351994100018

/-! ## A004441.P3059974402626328302

`lt[A025443(n), A158388(n)]`
-/

namespace A004441.P3059974402626328302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004441.P3059974402626328302

/-! ## A004441.P16206094959233309412

`record[A028310(gcd(n, A025443(n)))]`
-/

namespace A004441.P16206094959233309412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A025443 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004441.P16206094959233309412

/-! ## A004441.P4911110746689988799

`lt[A025443(n), A060576(n+1)]`
-/

namespace A004441.P4911110746689988799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004441.P4911110746689988799

/-! ## A004441.P588067250259797807

`eq[A025443(n), A166926(n+2)]`
-/

namespace A004441.P588067250259797807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004441.P588067250259797807

/-! ## A004441.P2863672397834329619

`eq[A008452(n)%2, A025443(n)]`
-/

namespace A004441.P2863672397834329619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008452 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004441.P2863672397834329619

/-! ## A004441.P11063387047715790746

`lt[A025443(n), n/A028310(n)]`
-/

namespace A004441.P11063387047715790746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A004441.P11063387047715790746

/-! ## A004441.P6933700553904398740

`eq[floor(1/A000143(n)), A025443(n)]`
-/

namespace A004441.P6933700553904398740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A000143 n : ℚ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004441.P6933700553904398740

/-! ## A004441.P15252339267430280994

`eq[A008683(A000118(n)), A025443(n)]`
-/

namespace A004441.P15252339267430280994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000118 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004441.P15252339267430280994

/-!
# A004442: Natural numbers, pairs reversed: a(n) = n + (-1)^n; also Nimsum n + 1.

The programs for A004442, the canonical program `A004442.P2439415777187857398` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004442 has offset 0).

The definition of A004442 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+(-1)^n` (program `A004442.P2439415777187857398`, by `A004442.P2439415777187857398.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004442.P2439415777187857398

`n+(-1)^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004442

/-- `n+(-1)^n` -/
def P2439415777187857398.Spec : Prop :=
  ∀ n, P2439415777187857398.a n = A004442 n

theorem P2439415777187857398.correct : P2439415777187857398.Spec := by
  intro n
  simp only [A004442]

end A004442

/-! ## A004442.P984407763967073847

`xor(1, n)`
-/

namespace A004442.P984407763967073847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

end

end A004442.P984407763967073847

namespace A004442

/-- `xor(1, n)` -/
def P984407763967073847.Spec : Prop :=
  ∀ n, (P984407763967073847.a n : ℤ) = A004442 n

end A004442

/-! ## A004442.P5548762215559018394

`abs(or(1, n)-n%2)`
-/

namespace A004442.P5548762215559018394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 n : ℤ) - ((n % 2 : ℕ) : ℤ)|

end

end A004442.P5548762215559018394

namespace A004442

/-- `abs(or(1, n)-n%2)` -/
def P5548762215559018394.Spec : Prop :=
  ∀ n, P5548762215559018394.a n = A004442 n

end A004442

/-! ## A004442.P13782056908663948904

`Δ[C(n, 2)-gcd(2, n)]`
-/

namespace A004442.P13782056908663948904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004442.P13782056908663948904

namespace A004442

/-- `Δ[C(n, 2)-gcd(2, n)]` -/
def P13782056908663948904.Spec : Prop :=
  ∀ n, P13782056908663948904.a n = A004442 n

end A004442

/-! ## A004442.P16597667226327724494

`Δ[and(1, n)+C(n, 2)]`
-/

namespace A004442.P16597667226327724494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A004442.P16597667226327724494

namespace A004442

/-- `Δ[and(1, n)+C(n, 2)]` -/
def P16597667226327724494.Spec : Prop :=
  ∀ n, P16597667226327724494.a n = A004442 n

end A004442

/-! ## A004442.P4667697611360223604

`abs(a(n-2)+2)` with `a(0)=1, a(1)=0`
-/

namespace A004442.P4667697611360223604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + 2

end

end A004442.P4667697611360223604

namespace A004442

/-- `abs(a(n-2)+2)` -/
def P4667697611360223604.Spec : Prop :=
  ∀ n, (P4667697611360223604.a n : ℤ) = A004442 n

theorem P4667697611360223604.correct : P4667697611360223604.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A004442, Nat.add_sub_cancel, A004442.P4667697611360223604.a, A004442.P2439415777187857398.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A004442, Nat.add_sub_cancel, A004442.P4667697611360223604.a, A004442.P2439415777187857398.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A004442

/-! ## A004442.P15802426679288671177

`(lcm(2, n)+1)%(n+2)`
-/

namespace A004442.P15802426679288671177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n + 1) % (n + 2)

end

end A004442.P15802426679288671177

namespace A004442

/-- `(lcm(2, n)+1)%(n+2)` -/
def P15802426679288671177.Spec : Prop :=
  ∀ n, (P15802426679288671177.a n : ℤ) = A004442 n

end A004442

/-! ## A004442.P15473611892489427156

`or(3, 2*n)%(n+2)`
-/

namespace A004442.P15473611892489427156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (2 * n) % (n + 2)

end

end A004442.P15473611892489427156

namespace A004442

/-- `or(3, 2*n)%(n+2)` -/
def P15473611892489427156.Spec : Prop :=
  ∀ n, (P15473611892489427156.a n : ℤ) = A004442 n

end A004442

/-! ## A004442.P9085274816221025106

`ceil(a(n-2)+ϕ)` with `a(0)=1, a(1)=0`
-/

namespace A004442.P9085274816221025106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ⌈(a (n - 2) : ℝ) + Real.goldenRatio⌉

end

end A004442.P9085274816221025106

namespace A004442

/-- `ceil(a(n-2)+ϕ)` -/
def P9085274816221025106.Spec : Prop :=
  ∀ n, P9085274816221025106.a n = A004442 n

end A004442

/-! ## A004442.P17523235328376350352

`round(a(n-2)+ϕ)` with `a(0)=1, a(1)=0`
-/

namespace A004442.P17523235328376350352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℝ) + Real.goldenRatio)

end

end A004442.P17523235328376350352

namespace A004442

/-- `round(a(n-2)+ϕ)` -/
def P17523235328376350352.Spec : Prop :=
  ∀ n, P17523235328376350352.a n = A004442 n

end A004442

/-! ## A004442.P13573137265662240608

`∑[or(2, -a(n-1))]` with `a(0)=1`
-/

namespace A004442.P13573137265662240608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lor 2 (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004442.P13573137265662240608

namespace A004442

/-- `∑[or(2, -a(n-1))]` -/
def P13573137265662240608.Spec : Prop :=
  ∀ n, P13573137265662240608.a n = A004442 n

end A004442

/-! ## A004442.P15833445800449384400

`floor(or(1, n)²/(n+1))`
-/

namespace A004442.P15833445800449384400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n ^ 2 : ℚ) / (n + 1 : ℚ)⌋

end

end A004442.P15833445800449384400

namespace A004442

/-- `floor(or(1, n)²/(n+1))` -/
def P15833445800449384400.Spec : Prop :=
  ∀ n, P15833445800449384400.a n = A004442 n

end A004442

/-! ## A004442.P3680477911020594204

`floor(cos((2*n)%4)+n)`
-/

namespace A004442.P3680477911020594204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos ((2 * n % 4 : ℕ) : ℝ) + (n : ℝ)⌋

end

end A004442.P3680477911020594204

namespace A004442

/-- `floor(cos((2*n)%4)+n)` -/
def P3680477911020594204.Spec : Prop :=
  ∀ n, P3680477911020594204.a n = A004442 n

end A004442

/-! ## A004442.P2588439298404796873

`∑[∑[ogf((1-x+2x^2)/(1+x))]]`
-/

namespace A004442.P2588439298404796873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004442.P2588439298404796873

namespace A004442

/-- `∑[∑[ogf((1-x+2x^2)/(1+x))]]` -/
def P2588439298404796873.Spec : Prop :=
  ∀ n, P2588439298404796873.a n = A004442 n

end A004442

/-! ## A004442.P8642620098454574937

`ogf((1-x+2x^2)/(1-x-x^2+x^3))`
-/

namespace A004442.P8642620098454574937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, -1, -1, 1] n

end

end A004442.P8642620098454574937

namespace A004442

/-- `ogf((1-x+2x^2)/(1-x-x^2+x^3))` -/
def P8642620098454574937.Spec : Prop :=
  ∀ n, P8642620098454574937.a n = A004442 n

end A004442

/-! ## A004442.P1072016956810670669

`∑[2-or(2, a(n-1))]` with `a(0)=1`
-/

namespace A004442.P1072016956810670669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - Int.lor 2 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004442.P1072016956810670669

namespace A004442

/-- `∑[2-or(2, a(n-1))]` -/
def P1072016956810670669.Spec : Prop :=
  ∀ n, P1072016956810670669.a n = A004442 n

end A004442

/-! ## A004442.P17788271437326683770

`abs(2*and(1, n)-(n+1))`
-/

namespace A004442.P17788271437326683770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * Nat.land 1 n : ℤ) - (n + 1 : ℤ)|

end

end A004442.P17788271437326683770

namespace A004442

/-- `abs(2*and(1, n)-(n+1))` -/
def P17788271437326683770.Spec : Prop :=
  ∀ n, P17788271437326683770.a n = A004442 n

end A004442

/-! ## A004442.P10529190237328265990

`abs(3-(gcd(4, 2*n)+n))`
-/

namespace A004442.P10529190237328265990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (Nat.gcd 4 (2 * n) + n : ℤ)|

end

end A004442.P10529190237328265990

namespace A004442

/-- `abs(3-(gcd(4, 2*n)+n))` -/
def P10529190237328265990.Spec : Prop :=
  ∀ n, P10529190237328265990.a n = A004442 n

end A004442

/-! ## A004442.P3622085466504205954

`abs(1-(2*and(1, n)-n))`
-/

namespace A004442.P3622085466504205954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((2 * Nat.land 1 n : ℤ) - (n : ℤ))|

end

end A004442.P3622085466504205954

namespace A004442

/-- `abs(1-(2*and(1, n)-n))` -/
def P3622085466504205954.Spec : Prop :=
  ∀ n, P3622085466504205954.a n = A004442 n

end A004442

/-! ## A004442.P10039492646723144068

`abs(2*or(1, n)-(n+1))`
-/

namespace A004442.P10039492646723144068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * Nat.lor 1 n : ℤ) - (n + 1 : ℤ)|

end

end A004442.P10039492646723144068

namespace A004442

/-- `abs(2*or(1, n)-(n+1))` -/
def P10039492646723144068.Spec : Prop :=
  ∀ n, P10039492646723144068.a n = A004442 n

end A004442

/-!
# A004443: Nimsum n + 2.

The programs for A004443, the canonical program `A004443.P9647128915024091745` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004443 has offset 0).

The definition of A004443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004443.P9647128915024091745

`xor(n, 2)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004443

/-- `xor(n, 2)` -/
def P9647128915024091745.Spec : Prop :=
  ∀ n, (P9647128915024091745.a n : ℤ) = A004443 n

theorem P9647128915024091745.correct : P9647128915024091745.Spec := by
  intro n
  simp only [A004443]

end A004443

/-! ## A004443.P12042528605263681078

`or(n, 2)-and(n, 2)`
-/

namespace A004443.P12042528605263681078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n 2 : ℤ) - (Nat.land n 2 : ℤ)

end

end A004443.P12042528605263681078

namespace A004443

/-- `or(n, 2)-and(n, 2)` -/
def P12042528605263681078.Spec : Prop :=
  ∀ n, P12042528605263681078.a n = A004443 n

end A004443

/-! ## A004443.P8732782028564840650

`n+2*(-1)^floor(n/2)`
-/

namespace A004443.P8732782028564840650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) + 2 * (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A004443.P8732782028564840650

namespace A004443

/-- `n+2*(-1)^floor(n/2)` -/
def P8732782028564840650.Spec : Prop :=
  ∀ n, P8732782028564840650.a n = (A004443 n : ℚ)

end A004443

/-! ## A004443.P6669786517632761747

`or(5, 2*n)%(n+3)`
-/

namespace A004443.P6669786517632761747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (2 * n) % (n + 3)

end

end A004443.P6669786517632761747

namespace A004443

/-- `or(5, 2*n)%(n+3)` -/
def P6669786517632761747.Spec : Prop :=
  ∀ n, (P6669786517632761747.a n : ℤ) = A004443 n

end A004443

/-! ## A004443.P6773871624248394333

`floor(n+2-and(2, n)^ϕ)`
-/

namespace A004443.P6773871624248394333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) - (Nat.land 2 n : ℝ) ^ Real.goldenRatio⌋

end

end A004443.P6773871624248394333

namespace A004443

/-- `floor(n+2-and(2, n)^ϕ)` -/
def P6773871624248394333.Spec : Prop :=
  ∀ n, P6773871624248394333.a n = A004443 n

end A004443

/-! ## A004443.P5783195088795552767

`∑[2-a(n-2)]` with `a(0)=2, a(1)=1, a(2)=-3`
-/

namespace A004443.P5783195088795552767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, -3] fun n f1 =>
  2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004443.P5783195088795552767

namespace A004443

/-- `∑[2-a(n-2)]` -/
def P5783195088795552767.Spec : Prop :=
  ∀ n, P5783195088795552767.a n = A004443 n

end A004443

/-! ## A004443.P12562482824031997615

`ogf((2-x-2x^2+3x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A004443.P12562482824031997615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -2, 3] [1, -2, 2, -2, 1] n

end

end A004443.P12562482824031997615

namespace A004443

/-- `ogf((2-x-2x^2+3x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P12562482824031997615.Spec : Prop :=
  ∀ n, P12562482824031997615.a n = A004443 n

end A004443

/-! ## A004443.P17285544815095706319

`floor(2*(n-1)-a(n-2))` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A004443.P17285544815095706319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * ((n : ℤ) - 1) - a (n - 2)

end

end A004443.P17285544815095706319

namespace A004443

/-- `floor(2*(n-1)-a(n-2))` -/
def P17285544815095706319.Spec : Prop :=
  ∀ n, P17285544815095706319.a n = A004443 n

end A004443

/-! ## A004443.P7054293446364407627

`floor(n-(2-(n-a(n-2))))` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A004443.P7054293446364407627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (n : ℤ) - (2 - ((n : ℤ) - a (n - 2)))

end

end A004443.P7054293446364407627

namespace A004443

/-- `floor(n-(2-(n-a(n-2))))` -/
def P7054293446364407627.Spec : Prop :=
  ∀ n, P7054293446364407627.a n = A004443 n

end A004443

/-! ## A004443.P12948756173358788479

`2*(n-1-a(n-2)/2)` with `a(0)=2, a(1)=3`
-/

namespace A004443.P12948756173358788479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * (((n : ℤ) - 1 : ℚ) - a (n - 2) / 2)

end

end A004443.P12948756173358788479

namespace A004443

/-- `2*(n-1-a(n-2)/2)` -/
def P12948756173358788479.Spec : Prop :=
  ∀ n, P12948756173358788479.a n = (A004443 n : ℚ)

end A004443

/-! ## A004443.P9088101981336914514

`A004444(A004442(n))`
-/

namespace A004443.P9088101981336914514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004444 (A004442 n).toNat

end

end A004443.P9088101981336914514

namespace A004443

/-- `A004444(A004442(n))` -/
def P9088101981336914514.Spec : Prop :=
  ∀ n, P9088101981336914514.a n = A004443 n

end A004443

/-! ## A004443.P14576691984307571312

`A004447(A004445(n))`
-/

namespace A004443.P14576691984307571312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004447 (A004445 n).toNat

end

end A004443.P14576691984307571312

namespace A004443

/-- `A004447(A004445(n))` -/
def P14576691984307571312.Spec : Prop :=
  ∀ n, P14576691984307571312.a n = A004443 n

end A004443

/-! ## A004443.P15753917036050699695

`A004448(A004446(n))`
-/

namespace A004443.P15753917036050699695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 (A004446 n).toNat

end

end A004443.P15753917036050699695

namespace A004443

/-- `A004448(A004446(n))` -/
def P15753917036050699695.Spec : Prop :=
  ∀ n, P15753917036050699695.a n = A004443 n

end A004443

/-! ## A004443.P15663748266180408098

`A004451(A004449(n))`
-/

namespace A004443.P15663748266180408098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004451 (A004449 n).toNat

end

end A004443.P15663748266180408098

namespace A004443

/-- `A004451(A004449(n))` -/
def P15663748266180408098.Spec : Prop :=
  ∀ n, P15663748266180408098.a n = A004443 n

end A004443

/-! ## A004443.P2352072291274557047

`A004452(A004450(n))`
-/

namespace A004443.P2352072291274557047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004452 (A004450 n).toNat

end

end A004443.P2352072291274557047

namespace A004443

/-- `A004452(A004450(n))` -/
def P2352072291274557047.Spec : Prop :=
  ∀ n, P2352072291274557047.a n = A004443 n

end A004443

/-! ## A004443.P18435116954769860059

`A004455(A004453(n))`
-/

namespace A004443.P18435116954769860059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (A004453 n).toNat

end

end A004443.P18435116954769860059

namespace A004443

/-- `A004455(A004453(n))` -/
def P18435116954769860059.Spec : Prop :=
  ∀ n, P18435116954769860059.a n = A004443 n

end A004443

/-! ## A004443.P12208111774133595495

`A004456(A004454(n))`
-/

namespace A004443.P12208111774133595495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (A004454 n).toNat

end

end A004443.P12208111774133595495

namespace A004443

/-- `A004456(A004454(n))` -/
def P12208111774133595495.Spec : Prop :=
  ∀ n, P12208111774133595495.a n = A004443 n

end A004443

/-! ## A004443.P7386186126447772549

`A263426(A159966(n))`
-/

namespace A004443.P7386186126447772549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263426 (A159966 n).toNat

end

end A004443.P7386186126447772549

namespace A004443

/-- `A263426(A159966(n))` -/
def P7386186126447772549.Spec : Prop :=
  ∀ n, P7386186126447772549.a n = A004443 n

end A004443

/-! ## A004443.P13854940478951983776

`A263313(A263313(n))`
-/

namespace A004443.P13854940478951983776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263313 (A263313 n).toNat

end

end A004443.P13854940478951983776

namespace A004443

/-- `A263313(A263313(n))` -/
def P13854940478951983776.Spec : Prop :=
  ∀ n, P13854940478951983776.a n = A004443 n

end A004443

/-! ## A004443.P12996650139219960791

`A159966(A092486(n)-1)`
-/

namespace A004443.P12996650139219960791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A092486 n - 1).toNat

end

end A004443.P12996650139219960791

namespace A004443

/-- `A159966(A092486(n)-1)` -/
def P12996650139219960791.Spec : Prop :=
  ∀ n, P12996650139219960791.a n = A004443 n

end A004443

/-!
# A004444: Nimsum n + 3.

The programs for A004444, the canonical program `A004444.P2674054276110161385` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004444 has offset 0).

The definition of A004444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004444.P17632291337957178624

`n+(-1)^n+2*(-1)^floor(n/2)`
-/

namespace A004444.P17632291337957178624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) + (-1) ^ n : ℚ) + 2 * (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A004444.P17632291337957178624

namespace A004444

/-- `n+(-1)^n+2*(-1)^floor(n/2)` -/
def P17632291337957178624.Spec : Prop :=
  ∀ n, P17632291337957178624.a n = (A004444 n : ℚ)

end A004444

/-! ## A004444.P2674054276110161385

`A004443(A004442(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004444

/-- `A004443(A004442(n))` -/
def P2674054276110161385.Spec : Prop :=
  ∀ n, P2674054276110161385.a n = A004444 n

theorem P2674054276110161385.correct : P2674054276110161385.Spec := by
  intro n
  simp only [A004444]

end A004444

/-! ## A004444.P9222660030341730514

`xor(3, n)`
-/

namespace A004444.P9222660030341730514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

end

end A004444.P9222660030341730514

namespace A004444

/-- `xor(3, n)` -/
def P9222660030341730514.Spec : Prop :=
  ∀ n, (P9222660030341730514.a n : ℤ) = A004444 n

end A004444

/-! ## A004444.P11014749054312191433

`or(7, 2*n)%(n+4)`
-/

namespace A004444.P11014749054312191433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 (2 * n) % (n + 4)

end

end A004444.P11014749054312191433

namespace A004444

/-- `or(7, 2*n)%(n+4)` -/
def P11014749054312191433.Spec : Prop :=
  ∀ n, (P11014749054312191433.a n : ℤ) = A004444 n

end A004444

/-! ## A004444.P11525803687217415693

`abs(A132429(n)+n)`
-/

namespace A004444.P11525803687217415693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132429 n + (n : ℤ)|

end

end A004444.P11525803687217415693

namespace A004444

/-- `abs(A132429(n)+n)` -/
def P11525803687217415693.Spec : Prop :=
  ∀ n, P11525803687217415693.a n = A004444 n

end A004444

/-! ## A004444.P8967926578419821156

`A004448(A004445(n))`
-/

namespace A004444.P8967926578419821156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 (A004445 n).toNat

end

end A004444.P8967926578419821156

namespace A004444

/-- `A004448(A004445(n))` -/
def P8967926578419821156.Spec : Prop :=
  ∀ n, P8967926578419821156.a n = A004444 n

end A004444

/-! ## A004444.P5509415709479529569

`A004447(A004446(n))`
-/

namespace A004444.P5509415709479529569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004447 (A004446 n).toNat

end

end A004444.P5509415709479529569

namespace A004444

/-- `A004447(A004446(n))` -/
def P5509415709479529569.Spec : Prop :=
  ∀ n, P5509415709479529569.a n = A004444 n

end A004444

/-! ## A004444.P10476085897958751365

`A004452(A004449(n))`
-/

namespace A004444.P10476085897958751365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004452 (A004449 n).toNat

end

end A004444.P10476085897958751365

namespace A004444

/-- `A004452(A004449(n))` -/
def P10476085897958751365.Spec : Prop :=
  ∀ n, P10476085897958751365.a n = A004444 n

end A004444

/-! ## A004444.P11877715134562087889

`A004451(A004450(n))`
-/

namespace A004444.P11877715134562087889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004451 (A004450 n).toNat

end

end A004444.P11877715134562087889

namespace A004444

/-- `A004451(A004450(n))` -/
def P11877715134562087889.Spec : Prop :=
  ∀ n, P11877715134562087889.a n = A004444 n

end A004444

/-! ## A004444.P742265674414217942

`A004456(A004453(n))`
-/

namespace A004444.P742265674414217942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (A004453 n).toNat

end

end A004444.P742265674414217942

namespace A004444

/-- `A004456(A004453(n))` -/
def P742265674414217942.Spec : Prop :=
  ∀ n, P742265674414217942.a n = A004444 n

end A004444

/-! ## A004444.P4926352780660985852

`A004455(A004454(n))`
-/

namespace A004444.P4926352780660985852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (A004454 n).toNat

end

end A004444.P4926352780660985852

namespace A004444

/-- `A004455(A004454(n))` -/
def P4926352780660985852.Spec : Prop :=
  ∀ n, P4926352780660985852.a n = A004444 n

end A004444

/-! ## A004444.P15965460168134370092

`A263313(A159966(n))`
-/

namespace A004444.P15965460168134370092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263313 (A159966 n).toNat

end

end A004444.P15965460168134370092

namespace A004444

/-- `A263313(A159966(n))` -/
def P15965460168134370092.Spec : Prop :=
  ∀ n, P15965460168134370092.a n = A004444 n

end A004444

/-! ## A004444.P9849549639547509508

`A263426(A263313(n))`
-/

namespace A004444.P9849549639547509508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263426 (A263313 n).toNat

end

end A004444.P9849549639547509508

namespace A004444

/-- `A263426(A263313(n))` -/
def P9849549639547509508.Spec : Prop :=
  ∀ n, P9849549639547509508.a n = A004444 n

end A004444

/-! ## A004444.P16502359921664183088

`A004443(A014681(n+1)-1)`
-/

namespace A004444.P16502359921664183088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A014681 (n + 1) - 1).toNat

end

end A004444.P16502359921664183088

namespace A004444

/-- `A004443(A014681(n+1)-1)` -/
def P16502359921664183088.Spec : Prop :=
  ∀ n, P16502359921664183088.a n = A004444 n

end A004444

/-! ## A004444.P16050920314900093923

`A004442(A256008(n+1)-1)`
-/

namespace A004444.P16050920314900093923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A256008 (n + 1) - 1).toNat

end

end A004444.P16050920314900093923

namespace A004444

/-- `A004442(A256008(n+1)-1)` -/
def P16050920314900093923.Spec : Prop :=
  ∀ n, P16050920314900093923.a n = A004444 n

end A004444

/-! ## A004444.P16827327175815327631

`A004443(A004443(2*n)/2)`
-/

namespace A004444.P16827327175815327631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004444.P16827327175815327631

namespace A004444

/-- `A004443(A004443(2*n)/2)` -/
def P16827327175815327631.Spec : Prop :=
  ∀ n, P16827327175815327631.a n = A004444 n

end A004444

/-! ## A004444.P11741966617946525692

`A004442(n-A084100(n+2))`
-/

namespace A004444.P11741966617946525692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((n : ℤ) - A084100 (n + 2)).toNat

end

end A004444.P11741966617946525692

namespace A004444

/-- `A004442(n-A084100(n+2))` -/
def P11741966617946525692.Spec : Prop :=
  ∀ n, P11741966617946525692.a n = A004444 n

end A004444

/-! ## A004444.P15778306100000366954

`A023443(A113778(n+1))`
-/

namespace A004444.P15778306100000366954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A113778 (n + 1)).toNat

end

end A004444.P15778306100000366954

namespace A004444

/-- `A023443(A113778(n+1))` -/
def P15778306100000366954.Spec : Prop :=
  ∀ n, P15778306100000366954.a n = A004444 n

end A004444

/-! ## A004444.P14103666293516562920

`A023446(A120634(n+1))`
-/

namespace A004444.P14103666293516562920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A120634 (n + 1)).toNat

end

end A004444.P14103666293516562920

namespace A004444

/-- `A023446(A120634(n+1))` -/
def P14103666293516562920.Spec : Prop :=
  ∀ n, P14103666293516562920.a n = A004444 n

end A004444

/-! ## A004444.P14107132188605087054

`A004460(A004457(n))`
-/

namespace A004444.P14107132188605087054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (A004457 n).toNat

end

end A004444.P14107132188605087054

namespace A004444

/-- `A004460(A004457(n))` -/
def P14107132188605087054.Spec : Prop :=
  ∀ n, P14107132188605087054.a n = A004444 n

end A004444

/-!
# A004445: Nimsum n + 4.

The programs for A004445, the canonical program `A004445.P14474074887130839892` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004445 has offset 0).

The definition of A004445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004445.P14474074887130839892

`xor(4, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004445

/-- `xor(4, n)` -/
def P14474074887130839892.Spec : Prop :=
  ∀ n, (P14474074887130839892.a n : ℤ) = A004445 n

theorem P14474074887130839892.correct : P14474074887130839892.Spec := by
  intro n
  simp only [A004445]

end A004445

/-! ## A004445.P987749937010738733

`or(4, n)-and(4, n)`
-/

namespace A004445.P987749937010738733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 4 n : ℤ) - (Nat.land 4 n : ℤ)

end

end A004445.P987749937010738733

namespace A004445

/-- `or(4, n)-and(4, n)` -/
def P987749937010738733.Spec : Prop :=
  ∀ n, P987749937010738733.a n = A004445 n

end A004445

/-! ## A004445.P2982305951936975029

`or(4, -and(4, n))+n`
-/

namespace A004445.P2982305951936975029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (-(Nat.land 4 n : ℤ)) + (n : ℤ)

end

end A004445.P2982305951936975029

namespace A004445

/-- `or(4, -and(4, n))+n` -/
def P2982305951936975029.Spec : Prop :=
  ∀ n, P2982305951936975029.a n = A004445 n

end A004445

/-! ## A004445.P12812544245579681051

`2*(2-and(4, n))+n`
-/

namespace A004445.P12812544245579681051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - (Nat.land 4 n : ℤ)) + (n : ℤ)

end

end A004445.P12812544245579681051

namespace A004445

/-- `2*(2-and(4, n))+n` -/
def P12812544245579681051.Spec : Prop :=
  ∀ n, P12812544245579681051.a n = A004445 n

end A004445

/-! ## A004445.P5211987256105797714

`n-2*(and(4, n)-2)`
-/

namespace A004445.P5211987256105797714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * ((Nat.land 4 n : ℤ) - 2)

end

end A004445.P5211987256105797714

namespace A004445

/-- `n-2*(and(4, n)-2)` -/
def P5211987256105797714.Spec : Prop :=
  ∀ n, P5211987256105797714.a n = A004445 n

end A004445

/-! ## A004445.P7176868431249583257

`2*(or(4, n)-2)-n`
-/

namespace A004445.P7176868431249583257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lor 4 n : ℤ) - 2) - (n : ℤ)

end

end A004445.P7176868431249583257

namespace A004445

/-- `2*(or(4, n)-2)-n` -/
def P7176868431249583257.Spec : Prop :=
  ∀ n, P7176868431249583257.a n = A004445 n

end A004445

/-! ## A004445.P16384128288298569324

`or(9, 2*n)%(n+5)`
-/

namespace A004445.P16384128288298569324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 9 (2 * n) % (n + 5)

end

end A004445.P16384128288298569324

namespace A004445

/-- `or(9, 2*n)%(n+5)` -/
def P16384128288298569324.Spec : Prop :=
  ∀ n, (P16384128288298569324.a n : ℤ) = A004445 n

end A004445

/-! ## A004445.P5237078904257176141

`n+4*(-1)^floor(n/4)`
-/

namespace A004445.P5237078904257176141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) + 4 * (-1 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ)

end

end A004445.P5237078904257176141

namespace A004445

/-- `n+4*(-1)^floor(n/4)` -/
def P5237078904257176141.Spec : Prop :=
  ∀ n, P5237078904257176141.a n = (A004445 n : ℚ)

end A004445

/-! ## A004445.P5328916569240554346

`A004446(A004442(n))`
-/

namespace A004445.P5328916569240554346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004446 (A004442 n).toNat

end

end A004445.P5328916569240554346

namespace A004445

/-- `A004446(A004442(n))` -/
def P5328916569240554346.Spec : Prop :=
  ∀ n, P5328916569240554346.a n = A004445 n

end A004445

/-! ## A004445.P15808462787145406967

`A004447(A004443(n))`
-/

namespace A004445.P15808462787145406967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004447 (A004443 n).toNat

end

end A004445.P15808462787145406967

namespace A004445

/-- `A004447(A004443(n))` -/
def P15808462787145406967.Spec : Prop :=
  ∀ n, P15808462787145406967.a n = A004445 n

end A004445

/-! ## A004445.P18025456051484206204

`A004448(A004444(n))`
-/

namespace A004445.P18025456051484206204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 (A004444 n).toNat

end

end A004445.P18025456051484206204

namespace A004445

/-- `A004448(A004444(n))` -/
def P18025456051484206204.Spec : Prop :=
  ∀ n, P18025456051484206204.a n = A004445 n

end A004445

/-! ## A004445.P17879414165037092367

`A004453(A004449(n))`
-/

namespace A004445.P17879414165037092367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (A004449 n).toNat

end

end A004445.P17879414165037092367

namespace A004445

/-- `A004453(A004449(n))` -/
def P17879414165037092367.Spec : Prop :=
  ∀ n, P17879414165037092367.a n = A004445 n

end A004445

/-! ## A004445.P12049191892487365847

`A004454(A004450(n))`
-/

namespace A004445.P12049191892487365847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 (A004450 n).toNat

end

end A004445.P12049191892487365847

namespace A004445

/-- `A004454(A004450(n))` -/
def P12049191892487365847.Spec : Prop :=
  ∀ n, P12049191892487365847.a n = A004445 n

end A004445

/-! ## A004445.P8753696323200116782

`A004455(A004451(n))`
-/

namespace A004445.P8753696323200116782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (A004451 n).toNat

end

end A004445.P8753696323200116782

namespace A004445

/-- `A004455(A004451(n))` -/
def P8753696323200116782.Spec : Prop :=
  ∀ n, P8753696323200116782.a n = A004445 n

end A004445

/-! ## A004445.P8847903469413017993

`A004456(A004452(n))`
-/

namespace A004445.P8847903469413017993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (A004452 n).toNat

end

end A004445.P8847903469413017993

namespace A004445

/-- `A004456(A004452(n))` -/
def P8847903469413017993.Spec : Prop :=
  ∀ n, P8847903469413017993.a n = A004445 n

end A004445

/-! ## A004445.P9427079105919575763

`A004446(A033999(n)+n)`
-/

namespace A004445.P9427079105919575763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004446 (A033999 n + (n : ℤ)).toNat

end

end A004445.P9427079105919575763

namespace A004445

/-- `A004446(A033999(n)+n)` -/
def P9427079105919575763.Spec : Prop :=
  ∀ n, P9427079105919575763.a n = A004445 n

end A004445

/-! ## A004445.P13722678372962891935

`A004448(A132429(n)+n)`
-/

namespace A004445.P13722678372962891935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 (A132429 n + (n : ℤ)).toNat

end

end A004445.P13722678372962891935

namespace A004445

/-- `A004448(A132429(n)+n)` -/
def P13722678372962891935.Spec : Prop :=
  ∀ n, P13722678372962891935.a n = A004445 n

end A004445

/-! ## A004445.P11588539613019716031

`A080414(A004442(A080413(n)))`
-/

namespace A004445.P11588539613019716031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080414 (A004442 (A080413 n).toNat).toNat

end

end A004445.P11588539613019716031

namespace A004445

/-- `A080414(A004442(A080413(n)))` -/
def P11588539613019716031.Spec : Prop :=
  ∀ n, P11588539613019716031.a n = A004445 n

end A004445

/-! ## A004445.P18108467133091040482

`A080414(A080414(A004443(A080414(n))))`
-/

namespace A004445.P18108467133091040482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080414 (A080414 (A004443 (A080414 n).toNat).toNat).toNat

end

end A004445.P18108467133091040482

namespace A004445

/-- `A080414(A080414(A004443(A080414(n))))` -/
def P18108467133091040482.Spec : Prop :=
  ∀ n, P18108467133091040482.a n = A004445 n

end A004445

/-! ## A004445.P7684332639514656191

`A080413(A080412(A004442(A080413(A080412(n)))))`
-/

namespace A004445.P7684332639514656191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080413 (A080412 (A004442 (A080413 (A080412 n).toNat).toNat).toNat).toNat

end

end A004445.P7684332639514656191

namespace A004445

/-- `A080413(A080412(A004442(A080413(A080412(n)))))` -/
def P7684332639514656191.Spec : Prop :=
  ∀ n, P7684332639514656191.a n = A004445 n

end A004445

/-!
# A004446: a(n) = Nimsum n + 5.

The programs for A004446, the canonical program `A004446.P531468877949612266` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004446 has offset 0).

The definition of A004446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004446.P531468877949612266

`xor(n, 5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004446

/-- `xor(n, 5)` -/
def P531468877949612266.Spec : Prop :=
  ∀ n, (P531468877949612266.a n : ℤ) = A004446 n

theorem P531468877949612266.correct : P531468877949612266.Spec := by
  intro n
  simp only [A004446]

end A004446

/-! ## A004446.P17525730283177154714

`n+(-1)^n+4*(-1)^floor(n/4)`
-/

namespace A004446.P17525730283177154714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) + (-1) ^ n : ℚ) + 4 * (-1 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ)

end

end A004446.P17525730283177154714

namespace A004446

/-- `n+(-1)^n+4*(-1)^floor(n/4)` -/
def P17525730283177154714.Spec : Prop :=
  ∀ n, P17525730283177154714.a n = (A004446 n : ℚ)

end A004446

/-! ## A004446.P17373408019519677948

`or(11, 2*n)%(n+6)`
-/

namespace A004446.P17373408019519677948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 11 (2 * n) % (n + 6)

end

end A004446.P17373408019519677948

namespace A004446

/-- `or(11, 2*n)%(n+6)` -/
def P17373408019519677948.Spec : Prop :=
  ∀ n, (P17373408019519677948.a n : ℤ) = A004446 n

end A004446

/-! ## A004446.P5229030234028975030

`A004445(A004442(n))`
-/

namespace A004446.P5229030234028975030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004445 (A004442 n).toNat

end

end A004446.P5229030234028975030

namespace A004446

/-- `A004445(A004442(n))` -/
def P5229030234028975030.Spec : Prop :=
  ∀ n, P5229030234028975030.a n = A004446 n

end A004446

/-! ## A004446.P5736702420936912932

`A004448(A004443(n))`
-/

namespace A004446.P5736702420936912932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 (A004443 n).toNat

end

end A004446.P5736702420936912932

namespace A004446

/-- `A004448(A004443(n))` -/
def P5736702420936912932.Spec : Prop :=
  ∀ n, P5736702420936912932.a n = A004446 n

end A004446

/-! ## A004446.P6633576385400609841

`A004447(A004444(n))`
-/

namespace A004446.P6633576385400609841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004447 (A004444 n).toNat

end

end A004446.P6633576385400609841

namespace A004446

/-- `A004447(A004444(n))` -/
def P6633576385400609841.Spec : Prop :=
  ∀ n, P6633576385400609841.a n = A004446 n

end A004446

/-! ## A004446.P10580469981816709421

`A004454(A004449(n))`
-/

namespace A004446.P10580469981816709421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 (A004449 n).toNat

end

end A004446.P10580469981816709421

namespace A004446

/-- `A004454(A004449(n))` -/
def P10580469981816709421.Spec : Prop :=
  ∀ n, P10580469981816709421.a n = A004446 n

end A004446

/-! ## A004446.P467111178540947270

`A004453(A004450(n))`
-/

namespace A004446.P467111178540947270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (A004450 n).toNat

end

end A004446.P467111178540947270

namespace A004446

/-- `A004453(A004450(n))` -/
def P467111178540947270.Spec : Prop :=
  ∀ n, P467111178540947270.a n = A004446 n

end A004446

/-! ## A004446.P11039095322350135538

`A004456(A004451(n))`
-/

namespace A004446.P11039095322350135538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (A004451 n).toNat

end

end A004446.P11039095322350135538

namespace A004446

/-- `A004456(A004451(n))` -/
def P11039095322350135538.Spec : Prop :=
  ∀ n, P11039095322350135538.a n = A004446 n

end A004446

/-! ## A004446.P15421777539815645439

`A004455(A004452(n))`
-/

namespace A004446.P15421777539815645439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (A004452 n).toNat

end

end A004446.P15421777539815645439

namespace A004446

/-- `A004455(A004452(n))` -/
def P15421777539815645439.Spec : Prop :=
  ∀ n, P15421777539815645439.a n = A004446 n

end A004446

/-! ## A004446.P13195208032992833942

`A004442(A080414(A004442(A080413(n))))`
-/

namespace A004446.P13195208032992833942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A080414 (A004442 (A080413 n).toNat).toNat).toNat

end

end A004446.P13195208032992833942

namespace A004446

/-- `A004442(A080414(A004442(A080413(n))))` -/
def P13195208032992833942.Spec : Prop :=
  ∀ n, P13195208032992833942.a n = A004446 n

end A004446

/-! ## A004446.P7226725497190793929

`A080414(A004444(A080414(A080414(n))))`
-/

namespace A004446.P7226725497190793929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080414 (A004444 (A080414 (A080414 n).toNat).toNat).toNat

end

end A004446.P7226725497190793929

namespace A004446

/-- `A080414(A004444(A080414(A080414(n))))` -/
def P7226725497190793929.Spec : Prop :=
  ∀ n, P7226725497190793929.a n = A004446 n

end A004446

/-! ## A004446.P16275810425744784324

`A004462(A004457(n))`
-/

namespace A004446.P16275810425744784324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (A004457 n).toNat

end

end A004446.P16275810425744784324

namespace A004446

/-- `A004462(A004457(n))` -/
def P16275810425744784324.Spec : Prop :=
  ∀ n, P16275810425744784324.a n = A004446 n

end A004446

/-! ## A004446.P7909706437447959026

`A004461(A004458(n))`
-/

namespace A004446.P7909706437447959026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (A004458 n).toNat

end

end A004446.P7909706437447959026

namespace A004446

/-- `A004461(A004458(n))` -/
def P7909706437447959026.Spec : Prop :=
  ∀ n, P7909706437447959026.a n = A004446 n

end A004446

/-! ## A004446.P12329464965302693653

`A004464(A004459(n))`
-/

namespace A004446.P12329464965302693653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (A004459 n).toNat

end

end A004446.P12329464965302693653

namespace A004446

/-- `A004464(A004459(n))` -/
def P12329464965302693653.Spec : Prop :=
  ∀ n, P12329464965302693653.a n = A004446 n

end A004446

/-! ## A004446.P9745162310293758165

`A004463(A004460(n))`
-/

namespace A004446.P9745162310293758165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (A004460 n).toNat

end

end A004446.P9745162310293758165

namespace A004446

/-- `A004463(A004460(n))` -/
def P9745162310293758165.Spec : Prop :=
  ∀ n, P9745162310293758165.a n = A004446 n

end A004446

/-! ## A004446.P2677343771309417968

`A004451(2*n)/2`
-/

namespace A004446.P2677343771309417968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004451 (2 * n) : ℚ) / 2

end

end A004446.P2677343771309417968

namespace A004446

/-- `A004451(2*n)/2` -/
def P2677343771309417968.Spec : Prop :=
  ∀ n, P2677343771309417968.a n = (A004446 n : ℚ)

end A004446

/-! ## A004446.P3332582608950049349

`A004452(Δ[n²])/2`
-/

namespace A004446.P3332582608950049349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004452 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A004446.P3332582608950049349

namespace A004446

/-- `A004452(Δ[n²])/2` -/
def P3332582608950049349.Spec : Prop :=
  ∀ n, P3332582608950049349.a n = (A004446 n : ℚ)

end A004446

/-! ## A004446.P5043248270465733066

`A004447(A004447(2*n)/2)`
-/

namespace A004446.P5043248270465733066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004447 (SequenceMachineLib.roundAway ((A004447 (2 * n) : ℚ) / 2)).toNat

end

end A004446.P5043248270465733066

namespace A004446

/-- `A004447(A004447(2*n)/2)` -/
def P5043248270465733066.Spec : Prop :=
  ∀ n, P5043248270465733066.a n = A004446 n

end A004446

/-! ## A004446.P1840026199323045266

`A004448(A004444(A174239(A004444(2*n))))`
-/

namespace A004446.P1840026199323045266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 (A004444 (A174239 (A004444 (2 * n)).toNat).toNat).toNat

end

end A004446.P1840026199323045266

namespace A004446

/-- `A004448(A004444(A174239(A004444(2*n))))` -/
def P1840026199323045266.Spec : Prop :=
  ∀ n, P1840026199323045266.a n = A004446 n

end A004446

/-!
# A004447: Nimsum n + 6.

The programs for A004447, the canonical program `A004447.P4564016562929070659` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004447 has offset 0).

The definition of A004447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004447.P4564016562929070659

`xor(n, 6)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004447

/-- `xor(n, 6)` -/
def P4564016562929070659.Spec : Prop :=
  ∀ n, (P4564016562929070659.a n : ℤ) = A004447 n

theorem P4564016562929070659.correct : P4564016562929070659.Spec := by
  intro n
  simp only [A004447]

end A004447

/-! ## A004447.P15935914391319892890

`n+2*(-1)^floor(n/2)+4*(-1)^floor(n/4)`
-/

namespace A004447.P15935914391319892890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) + 2 * (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) + 4 * (-1 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ)

end

end A004447.P15935914391319892890

namespace A004447

/-- `n+2*(-1)^floor(n/2)+4*(-1)^floor(n/4)` -/
def P15935914391319892890.Spec : Prop :=
  ∀ n, P15935914391319892890.a n = (A004447 n : ℚ)

end A004447

/-! ## A004447.P11925721426538053030

`A004448(A004442(n))`
-/

namespace A004447.P11925721426538053030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 (A004442 n).toNat

end

end A004447.P11925721426538053030

namespace A004447

/-- `A004448(A004442(n))` -/
def P11925721426538053030.Spec : Prop :=
  ∀ n, P11925721426538053030.a n = A004447 n

end A004447

/-! ## A004447.P15185740294973239072

`A004445(A004443(n))`
-/

namespace A004447.P15185740294973239072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004445 (A004443 n).toNat

end

end A004447.P15185740294973239072

namespace A004447

/-- `A004445(A004443(n))` -/
def P15185740294973239072.Spec : Prop :=
  ∀ n, P15185740294973239072.a n = A004447 n

end A004447

/-! ## A004447.P5375082833831359102

`A004446(A004444(n))`
-/

namespace A004447.P5375082833831359102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004446 (A004444 n).toNat

end

end A004447.P5375082833831359102

namespace A004447

/-- `A004446(A004444(n))` -/
def P5375082833831359102.Spec : Prop :=
  ∀ n, P5375082833831359102.a n = A004447 n

end A004447

/-! ## A004447.P1964834840331032255

`A004455(A004449(n))`
-/

namespace A004447.P1964834840331032255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (A004449 n).toNat

end

end A004447.P1964834840331032255

namespace A004447

/-- `A004455(A004449(n))` -/
def P1964834840331032255.Spec : Prop :=
  ∀ n, P1964834840331032255.a n = A004447 n

end A004447

/-! ## A004447.P9236732634633425693

`A004456(A004450(n))`
-/

namespace A004447.P9236732634633425693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (A004450 n).toNat

end

end A004447.P9236732634633425693

namespace A004447

/-- `A004456(A004450(n))` -/
def P9236732634633425693.Spec : Prop :=
  ∀ n, P9236732634633425693.a n = A004447 n

end A004447

/-! ## A004447.P18304927414891303117

`A004453(A004451(n))`
-/

namespace A004447.P18304927414891303117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (A004451 n).toNat

end

end A004447.P18304927414891303117

namespace A004447

/-- `A004453(A004451(n))` -/
def P18304927414891303117.Spec : Prop :=
  ∀ n, P18304927414891303117.a n = A004447 n

end A004447

/-! ## A004447.P2812860346992377840

`A004454(A004452(n))`
-/

namespace A004447.P2812860346992377840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 (A004452 n).toNat

end

end A004447.P2812860346992377840

namespace A004447

/-- `A004454(A004452(n))` -/
def P2812860346992377840.Spec : Prop :=
  ∀ n, P2812860346992377840.a n = A004447 n

end A004447

/-! ## A004447.P1048643268078179632

`A004448(A033999(n)+n)`
-/

namespace A004447.P1048643268078179632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 (A033999 n + (n : ℤ)).toNat

end

end A004447.P1048643268078179632

namespace A004447

/-- `A004448(A033999(n)+n)` -/
def P1048643268078179632.Spec : Prop :=
  ∀ n, P1048643268078179632.a n = A004447 n

end A004447

/-! ## A004447.P8507642213138225302

`A004448(A014681(n+1)-1)`
-/

namespace A004447.P8507642213138225302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 (A014681 (n + 1) - 1).toNat

end

end A004447.P8507642213138225302

namespace A004447

/-- `A004448(A014681(n+1)-1)` -/
def P8507642213138225302.Spec : Prop :=
  ∀ n, P8507642213138225302.a n = A004447 n

end A004447

/-! ## A004447.P2572217328553273963

`A004448(A004443(2*n)/2)`
-/

namespace A004447.P2572217328553273963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004447.P2572217328553273963

namespace A004447

/-- `A004448(A004443(2*n)/2)` -/
def P2572217328553273963.Spec : Prop :=
  ∀ n, P2572217328553273963.a n = A004447 n

end A004447

/-! ## A004447.P1100984713641654966

`A080414(A080414(A004444(A080414(n))))`
-/

namespace A004447.P1100984713641654966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080414 (A080414 (A004444 (A080414 n).toNat).toNat).toNat

end

end A004447.P1100984713641654966

namespace A004447

/-- `A080414(A080414(A004444(A080414(n))))` -/
def P1100984713641654966.Spec : Prop :=
  ∀ n, P1100984713641654966.a n = A004447 n

end A004447

/-! ## A004447.P8750090589565870940

`A080413(A004442(A080413(A004442(A080413(n)))))`
-/

namespace A004447.P8750090589565870940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080413 (A004442 (A080413 (A004442 (A080413 n).toNat).toNat).toNat).toNat

end

end A004447.P8750090589565870940

namespace A004447

/-- `A080413(A004442(A080413(A004442(A080413(n)))))` -/
def P8750090589565870940.Spec : Prop :=
  ∀ n, P8750090589565870940.a n = A004447 n

end A004447

/-! ## A004447.P4665860110511924201

`A004463(A004457(n))`
-/

namespace A004447.P4665860110511924201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (A004457 n).toNat

end

end A004447.P4665860110511924201

namespace A004447

/-- `A004463(A004457(n))` -/
def P4665860110511924201.Spec : Prop :=
  ∀ n, P4665860110511924201.a n = A004447 n

end A004447

/-! ## A004447.P6144884648967966223

`A004464(A004458(n))`
-/

namespace A004447.P6144884648967966223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (A004458 n).toNat

end

end A004447.P6144884648967966223

namespace A004447

/-- `A004464(A004458(n))` -/
def P6144884648967966223.Spec : Prop :=
  ∀ n, P6144884648967966223.a n = A004447 n

end A004447

/-! ## A004447.P14095152901002197902

`A004461(A004459(n))`
-/

namespace A004447.P14095152901002197902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (A004459 n).toNat

end

end A004447.P14095152901002197902

namespace A004447

/-- `A004461(A004459(n))` -/
def P14095152901002197902.Spec : Prop :=
  ∀ n, P14095152901002197902.a n = A004447 n

end A004447

/-! ## A004447.P6808448495725455680

`A004462(A004460(n))`
-/

namespace A004447.P6808448495725455680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (A004460 n).toNat

end

end A004447.P6808448495725455680

namespace A004447

/-- `A004462(A004460(n))` -/
def P6808448495725455680.Spec : Prop :=
  ∀ n, P6808448495725455680.a n = A004447 n

end A004447

/-! ## A004447.P10090944386597173324

`A004445(A004445(2*n)/2)`
-/

namespace A004447.P10090944386597173324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004445 (SequenceMachineLib.roundAway ((A004445 (2 * n) : ℚ) / 2)).toNat

end

end A004447.P10090944386597173324

namespace A004447

/-- `A004445(A004445(2*n)/2)` -/
def P10090944386597173324.Spec : Prop :=
  ∀ n, P10090944386597173324.a n = A004447 n

end A004447

/-! ## A004447.P3849728936378104136

`A004453(2*n)/2`
-/

namespace A004447.P3849728936378104136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004453 (2 * n) : ℚ) / 2

end

end A004447.P3849728936378104136

namespace A004447

/-- `A004453(2*n)/2` -/
def P3849728936378104136.Spec : Prop :=
  ∀ n, P3849728936378104136.a n = (A004447 n : ℚ)

end A004447

/-!
# A004448: Nimsum n + 7.

The programs for A004448, the canonical program `A004448.P15591202624035850960` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004448 has offset 0).

The definition of A004448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004448.P15591202624035850960

`n+(-1)^n+2*(-1)^floor(n/2)+4*(-1)^floor(n/4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004448

/-- `n+(-1)^n+2*(-1)^floor(n/2)+4*(-1)^floor(n/4)` -/
def P15591202624035850960.Spec : Prop :=
  ∀ n, P15591202624035850960.a n = (A004448 n : ℚ)

end A004448

/-! ## A004448.P11349541683829177834

`xor(7, n)`
-/

namespace A004448.P11349541683829177834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

end

end A004448.P11349541683829177834

namespace A004448

/-- `xor(7, n)` -/
def P11349541683829177834.Spec : Prop :=
  ∀ n, (P11349541683829177834.a n : ℤ) = A004448 n

end A004448

/-! ## A004448.P7552528826509627322

`A004447(A004442(n))`
-/

namespace A004448.P7552528826509627322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004447 (A004442 n).toNat

end

end A004448.P7552528826509627322

namespace A004448

/-- `A004447(A004442(n))` -/
def P7552528826509627322.Spec : Prop :=
  ∀ n, P7552528826509627322.a n = A004448 n

end A004448

/-! ## A004448.P6502198814621421135

`A004446(A004443(n))`
-/

namespace A004448.P6502198814621421135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004446 (A004443 n).toNat

end

end A004448.P6502198814621421135

namespace A004448

/-- `A004446(A004443(n))` -/
def P6502198814621421135.Spec : Prop :=
  ∀ n, P6502198814621421135.a n = A004448 n

end A004448

/-! ## A004448.P526481769357216932

`A004445(A004444(n))`
-/

namespace A004448.P526481769357216932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004445 (A004444 n).toNat

end

end A004448.P526481769357216932

namespace A004448

/-- `A004445(A004444(n))` -/
def P526481769357216932.Spec : Prop :=
  ∀ n, P526481769357216932.a n = A004448 n

end A004448

/-! ## A004448.P13278546085155579499

`A004456(A004449(n))`
-/

namespace A004448.P13278546085155579499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (A004449 n).toNat

end

end A004448.P13278546085155579499

namespace A004448

/-- `A004456(A004449(n))` -/
def P13278546085155579499.Spec : Prop :=
  ∀ n, P13278546085155579499.a n = A004448 n

end A004448

/-! ## A004448.P8698976621004066999

`A004455(A004450(n))`
-/

namespace A004448.P8698976621004066999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (A004450 n).toNat

end

end A004448.P8698976621004066999

namespace A004448

/-- `A004455(A004450(n))` -/
def P8698976621004066999.Spec : Prop :=
  ∀ n, P8698976621004066999.a n = A004448 n

end A004448

/-! ## A004448.P13329857280593488943

`A004454(A004451(n))`
-/

namespace A004448.P13329857280593488943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 (A004451 n).toNat

end

end A004448.P13329857280593488943

namespace A004448

/-- `A004454(A004451(n))` -/
def P13329857280593488943.Spec : Prop :=
  ∀ n, P13329857280593488943.a n = A004448 n

end A004448

/-! ## A004448.P14374328913582634036

`A004453(A004452(n))`
-/

namespace A004448.P14374328913582634036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (A004452 n).toNat

end

end A004448.P14374328913582634036

namespace A004448

/-- `A004453(A004452(n))` -/
def P14374328913582634036.Spec : Prop :=
  ∀ n, P14374328913582634036.a n = A004448 n

end A004448

/-! ## A004448.P10545784955039663336

`A004447(A033999(n)+n)`
-/

namespace A004448.P10545784955039663336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004447 (A033999 n + (n : ℤ)).toNat

end

end A004448.P10545784955039663336

namespace A004448

/-- `A004447(A033999(n)+n)` -/
def P10545784955039663336.Spec : Prop :=
  ∀ n, P10545784955039663336.a n = A004448 n

end A004448

/-! ## A004448.P15705790866057113751

`A004445(A132429(n)+n)`
-/

namespace A004448.P15705790866057113751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004445 (A132429 n + (n : ℤ)).toNat

end

end A004448.P15705790866057113751

namespace A004448

/-- `A004445(A132429(n)+n)` -/
def P15705790866057113751.Spec : Prop :=
  ∀ n, P15705790866057113751.a n = A004448 n

end A004448

/-! ## A004448.P13238959206425889570

`A004443(2*A004447(n))/2`
-/

namespace A004448.P13238959206425889570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004443 (2 * A004447 n).toNat : ℚ) / 2

end

end A004448.P13238959206425889570

namespace A004448

/-- `A004443(2*A004447(n))/2` -/
def P13238959206425889570.Spec : Prop :=
  ∀ n, P13238959206425889570.a n = (A004448 n : ℚ)

end A004448

/-! ## A004448.P14274978661160069554

`A004464(A004457(n))`
-/

namespace A004448.P14274978661160069554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (A004457 n).toNat

end

end A004448.P14274978661160069554

namespace A004448

/-- `A004464(A004457(n))` -/
def P14274978661160069554.Spec : Prop :=
  ∀ n, P14274978661160069554.a n = A004448 n

end A004448

/-! ## A004448.P9834324232436332258

`A004463(A004458(n))`
-/

namespace A004448.P9834324232436332258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (A004458 n).toNat

end

end A004448.P9834324232436332258

namespace A004448

/-- `A004463(A004458(n))` -/
def P9834324232436332258.Spec : Prop :=
  ∀ n, P9834324232436332258.a n = A004448 n

end A004448

/-! ## A004448.P8241602849113614393

`A004462(A004459(n))`
-/

namespace A004448.P8241602849113614393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (A004459 n).toNat

end

end A004448.P8241602849113614393

namespace A004448

/-- `A004462(A004459(n))` -/
def P8241602849113614393.Spec : Prop :=
  ∀ n, P8241602849113614393.a n = A004448 n

end A004448

/-! ## A004448.P11742064138632481730

`A004461(A004460(n))`
-/

namespace A004448.P11742064138632481730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (A004460 n).toNat

end

end A004448.P11742064138632481730

namespace A004448

/-- `A004461(A004460(n))` -/
def P11742064138632481730.Spec : Prop :=
  ∀ n, P11742064138632481730.a n = A004448 n

end A004448

/-! ## A004448.P4669016618009969495

`A057300(A004452(A057300(n)))`
-/

namespace A004448.P4669016618009969495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A004452 (A057300 n).toNat).toNat

end

end A004448.P4669016618009969495

namespace A004448

/-- `A057300(A004452(A057300(n)))` -/
def P4669016618009969495.Spec : Prop :=
  ∀ n, P4669016618009969495.a n = A004448 n

end A004448

/-! ## A004448.P9980800124615237658

`A004455(2*n)/2`
-/

namespace A004448.P9980800124615237658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004455 (2 * n) : ℚ) / 2

end

end A004448.P9980800124615237658

namespace A004448

/-- `A004455(2*n)/2` -/
def P9980800124615237658.Spec : Prop :=
  ∀ n, P9980800124615237658.a n = (A004448 n : ℚ)

end A004448

/-! ## A004448.P6586688698364240892

`A004456(Δ[n²])/2`
-/

namespace A004448.P6586688698364240892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004456 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A004448.P6586688698364240892

namespace A004448

/-- `A004456(Δ[n²])/2` -/
def P6586688698364240892.Spec : Prop :=
  ∀ n, P6586688698364240892.a n = (A004448 n : ℚ)

end A004448

/-! ## A004448.P11256840090592090856

`(A004456(2*n)-1)/2`
-/

namespace A004448.P11256840090592090856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004456 (2 * n) - 1 : ℚ) / 2

end

end A004448.P11256840090592090856

namespace A004448

/-- `(A004456(2*n)-1)/2` -/
def P11256840090592090856.Spec : Prop :=
  ∀ n, P11256840090592090856.a n = (A004448 n : ℚ)

end A004448

/-!
# A004449: Nimsum n + 8.

The programs for A004449, the canonical program `A004449.P313340910208716549` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004449 has offset 0).

The definition of A004449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004449.P313340910208716549

`xor(n, 8)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004449

/-- `xor(n, 8)` -/
def P313340910208716549.Spec : Prop :=
  ∀ n, (P313340910208716549.a n : ℤ) = A004449 n

theorem P313340910208716549.correct : P313340910208716549.Spec := by
  intro n
  simp only [A004449]

end A004449

/-! ## A004449.P6680035915443143283

`n+8*(-1)^floor(n/8)`
-/

namespace A004449.P6680035915443143283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) + 8 * (-1 : ℚ) ^ (⌊(n : ℚ) / 8⌋ : ℤ)

end

end A004449.P6680035915443143283

namespace A004449

/-- `n+8*(-1)^floor(n/8)` -/
def P6680035915443143283.Spec : Prop :=
  ∀ n, P6680035915443143283.a n = (A004449 n : ℚ)

end A004449

/-! ## A004449.P18224102325700853764

`A004450(A004442(n))`
-/

namespace A004449.P18224102325700853764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004450 (A004442 n).toNat

end

end A004449.P18224102325700853764

namespace A004449

/-- `A004450(A004442(n))` -/
def P18224102325700853764.Spec : Prop :=
  ∀ n, P18224102325700853764.a n = A004449 n

end A004449

/-! ## A004449.P759916451467705692

`A004451(A004443(n))`
-/

namespace A004449.P759916451467705692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004451 (A004443 n).toNat

end

end A004449.P759916451467705692

namespace A004449

/-- `A004451(A004443(n))` -/
def P759916451467705692.Spec : Prop :=
  ∀ n, P759916451467705692.a n = A004449 n

end A004449

/-! ## A004449.P3587108916005083993

`A004452(A004444(n))`
-/

namespace A004449.P3587108916005083993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004452 (A004444 n).toNat

end

end A004449.P3587108916005083993

namespace A004449

/-- `A004452(A004444(n))` -/
def P3587108916005083993.Spec : Prop :=
  ∀ n, P3587108916005083993.a n = A004449 n

end A004449

/-! ## A004449.P16563797032711297403

`A004453(A004445(n))`
-/

namespace A004449.P16563797032711297403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (A004445 n).toNat

end

end A004449.P16563797032711297403

namespace A004449

/-- `A004453(A004445(n))` -/
def P16563797032711297403.Spec : Prop :=
  ∀ n, P16563797032711297403.a n = A004449 n

end A004449

/-! ## A004449.P1832267544113928425

`A004454(A004446(n))`
-/

namespace A004449.P1832267544113928425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 (A004446 n).toNat

end

end A004449.P1832267544113928425

namespace A004449

/-- `A004454(A004446(n))` -/
def P1832267544113928425.Spec : Prop :=
  ∀ n, P1832267544113928425.a n = A004449 n

end A004449

/-! ## A004449.P799230951361651176

`A004455(A004447(n))`
-/

namespace A004449.P799230951361651176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (A004447 n).toNat

end

end A004449.P799230951361651176

namespace A004449

/-- `A004455(A004447(n))` -/
def P799230951361651176.Spec : Prop :=
  ∀ n, P799230951361651176.a n = A004449 n

end A004449

/-! ## A004449.P14459802786495023313

`A004456(A004448(n))`
-/

namespace A004449.P14459802786495023313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (A004448 n).toNat

end

end A004449.P14459802786495023313

namespace A004449

/-- `A004456(A004448(n))` -/
def P14459802786495023313.Spec : Prop :=
  ∀ n, P14459802786495023313.a n = A004449 n

end A004449

/-! ## A004449.P9774301144152598254

`A004450(A033999(n)+n)`
-/

namespace A004449.P9774301144152598254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004450 (A033999 n + (n : ℤ)).toNat

end

end A004449.P9774301144152598254

namespace A004449

/-- `A004450(A033999(n)+n)` -/
def P9774301144152598254.Spec : Prop :=
  ∀ n, P9774301144152598254.a n = A004449 n

end A004449

/-! ## A004449.P2747646700780029667

`A004452(A132429(n)+n)`
-/

namespace A004449.P2747646700780029667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004452 (A132429 n + (n : ℤ)).toNat

end

end A004449.P2747646700780029667

namespace A004449

/-- `A004452(A132429(n)+n)` -/
def P2747646700780029667.Spec : Prop :=
  ∀ n, P2747646700780029667.a n = A004449 n

end A004449

/-! ## A004449.P7051002416363856885

`A004450(A004443(2*n)/2)`
-/

namespace A004449.P7051002416363856885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004450 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004449.P7051002416363856885

namespace A004449

/-- `A004450(A004443(2*n)/2)` -/
def P7051002416363856885.Spec : Prop :=
  ∀ n, P7051002416363856885.a n = A004449 n

end A004449

/-! ## A004449.P4821157432381265572

`A004465(A004457(n))`
-/

namespace A004449.P4821157432381265572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A004457 n).toNat

end

end A004449.P4821157432381265572

namespace A004449

/-- `A004465(A004457(n))` -/
def P4821157432381265572.Spec : Prop :=
  ∀ n, P4821157432381265572.a n = A004449 n

end A004449

/-! ## A004449.P1837183594007166266

`A004457(2*n)/2`
-/

namespace A004449.P1837183594007166266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004457 (2 * n) : ℚ) / 2

end

end A004449.P1837183594007166266

namespace A004449

/-- `A004457(2*n)/2` -/
def P1837183594007166266.Spec : Prop :=
  ∀ n, P1837183594007166266.a n = (A004449 n : ℚ)

end A004449

/-! ## A004449.P9273748075672901857

`A004458(Δ[n²])/2`
-/

namespace A004449.P9273748075672901857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004458 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A004449.P9273748075672901857

namespace A004449

/-- `A004458(Δ[n²])/2` -/
def P9273748075672901857.Spec : Prop :=
  ∀ n, P9273748075672901857.a n = (A004449 n : ℚ)

end A004449

/-! ## A004449.P11802168332806324822

`floor(A004458(2*n)/2)`
-/

namespace A004449.P11802168332806324822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004458 (2 * n) : ℚ) / 2⌋

end

end A004449.P11802168332806324822

namespace A004449

/-- `floor(A004458(2*n)/2)` -/
def P11802168332806324822.Spec : Prop :=
  ∀ n, P11802168332806324822.a n = A004449 n

end A004449

/-! ## A004449.P6535232869587363614

`A004456(A004456(2*n+1)/2)`
-/

namespace A004449.P6535232869587363614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (SequenceMachineLib.roundAway ((A004456 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004449.P6535232869587363614

namespace A004449

/-- `A004456(A004456(2*n+1)/2)` -/
def P6535232869587363614.Spec : Prop :=
  ∀ n, P6535232869587363614.a n = A004449 n

end A004449

/-!
# A004450: Nimsum n + 9.

The programs for A004450, the canonical program `A004450.P1899869037817167883` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004450 has offset 0).

The definition of A004450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004450.P1899869037817167883

`xor(n, 9)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004450

/-- `xor(n, 9)` -/
def P1899869037817167883.Spec : Prop :=
  ∀ n, (P1899869037817167883.a n : ℤ) = A004450 n

theorem P1899869037817167883.correct : P1899869037817167883.Spec := by
  intro n
  simp only [A004450]

end A004450

/-! ## A004450.P3725323996476794749

`n+(-1)^n+8*(-1)^floor(n/8)`
-/

namespace A004450.P3725323996476794749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) + (-1) ^ n : ℚ) + 8 * (-1 : ℚ) ^ (⌊(n : ℚ) / 8⌋ : ℤ)

end

end A004450.P3725323996476794749

namespace A004450

/-- `n+(-1)^n+8*(-1)^floor(n/8)` -/
def P3725323996476794749.Spec : Prop :=
  ∀ n, P3725323996476794749.a n = (A004450 n : ℚ)

end A004450

/-! ## A004450.P16989235001336973793

`A004449(A004442(n))`
-/

namespace A004450.P16989235001336973793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (A004442 n).toNat

end

end A004450.P16989235001336973793

namespace A004450

/-- `A004449(A004442(n))` -/
def P16989235001336973793.Spec : Prop :=
  ∀ n, P16989235001336973793.a n = A004450 n

end A004450

/-! ## A004450.P15971175768869256645

`A004452(A004443(n))`
-/

namespace A004450.P15971175768869256645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004452 (A004443 n).toNat

end

end A004450.P15971175768869256645

namespace A004450

/-- `A004452(A004443(n))` -/
def P15971175768869256645.Spec : Prop :=
  ∀ n, P15971175768869256645.a n = A004450 n

end A004450

/-! ## A004450.P5680127401207557421

`A004451(A004444(n))`
-/

namespace A004450.P5680127401207557421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004451 (A004444 n).toNat

end

end A004450.P5680127401207557421

namespace A004450

/-- `A004451(A004444(n))` -/
def P5680127401207557421.Spec : Prop :=
  ∀ n, P5680127401207557421.a n = A004450 n

end A004450

/-! ## A004450.P16234741499599950227

`A004454(A004445(n))`
-/

namespace A004450.P16234741499599950227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 (A004445 n).toNat

end

end A004450.P16234741499599950227

namespace A004450

/-- `A004454(A004445(n))` -/
def P16234741499599950227.Spec : Prop :=
  ∀ n, P16234741499599950227.a n = A004450 n

end A004450

/-! ## A004450.P11487830653902378916

`A004453(A004446(n))`
-/

namespace A004450.P11487830653902378916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (A004446 n).toNat

end

end A004450.P11487830653902378916

namespace A004450

/-- `A004453(A004446(n))` -/
def P11487830653902378916.Spec : Prop :=
  ∀ n, P11487830653902378916.a n = A004450 n

end A004450

/-! ## A004450.P597489692876873217

`A004456(A004447(n))`
-/

namespace A004450.P597489692876873217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (A004447 n).toNat

end

end A004450.P597489692876873217

namespace A004450

/-- `A004456(A004447(n))` -/
def P597489692876873217.Spec : Prop :=
  ∀ n, P597489692876873217.a n = A004450 n

end A004450

/-! ## A004450.P1578153043193309173

`A004455(A004448(n))`
-/

namespace A004450.P1578153043193309173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (A004448 n).toNat

end

end A004450.P1578153043193309173

namespace A004450

/-- `A004455(A004448(n))` -/
def P1578153043193309173.Spec : Prop :=
  ∀ n, P1578153043193309173.a n = A004450 n

end A004450

/-! ## A004450.P715403425003565518

`A004449(A033999(n)+n)`
-/

namespace A004450.P715403425003565518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (A033999 n + (n : ℤ)).toNat

end

end A004450.P715403425003565518

namespace A004450

/-- `A004449(A033999(n)+n)` -/
def P715403425003565518.Spec : Prop :=
  ∀ n, P715403425003565518.a n = A004450 n

end A004450

/-! ## A004450.P15200577802955712357

`A004449(A004443(2*n)/2)`
-/

namespace A004450.P15200577802955712357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004450.P15200577802955712357

namespace A004450

/-- `A004449(A004443(2*n)/2)` -/
def P15200577802955712357.Spec : Prop :=
  ∀ n, P15200577802955712357.a n = A004450 n

end A004450

/-! ## A004450.P6769318282952125223

`A004465(A004458(n))`
-/

namespace A004450.P6769318282952125223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A004458 n).toNat

end

end A004450.P6769318282952125223

namespace A004450

/-- `A004465(A004458(n))` -/
def P6769318282952125223.Spec : Prop :=
  ∀ n, P6769318282952125223.a n = A004450 n

end A004450

/-! ## A004450.P9631230548982355434

`floor(A004460(2*n)/2)`
-/

namespace A004450.P9631230548982355434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004460 (2 * n) : ℚ) / 2⌋

end

end A004450.P9631230548982355434

namespace A004450

/-- `floor(A004460(2*n)/2)` -/
def P9631230548982355434.Spec : Prop :=
  ∀ n, P9631230548982355434.a n = A004450 n

end A004450

/-! ## A004450.P9554680107077387921

`A004459(2*n)/2`
-/

namespace A004450.P9554680107077387921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004459 (2 * n) : ℚ) / 2

end

end A004450.P9554680107077387921

namespace A004450

/-- `A004459(2*n)/2` -/
def P9554680107077387921.Spec : Prop :=
  ∀ n, P9554680107077387921.a n = (A004450 n : ℚ)

end A004450

/-! ## A004450.P633378606416916802

`A004460(Δ[n²])/2`
-/

namespace A004450.P633378606416916802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004460 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A004450.P633378606416916802

namespace A004450

/-- `A004460(Δ[n²])/2` -/
def P633378606416916802.Spec : Prop :=
  ∀ n, P633378606416916802.a n = (A004450 n : ℚ)

end A004450

/-! ## A004450.P13745950574087142555

`A004458(A004444(2*n))/2`
-/

namespace A004450.P13745950574087142555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004458 (A004444 (2 * n)).toNat : ℚ) / 2

end

end A004450.P13745950574087142555

namespace A004450

/-- `A004458(A004444(2*n))/2` -/
def P13745950574087142555.Spec : Prop :=
  ∀ n, P13745950574087142555.a n = (A004450 n : ℚ)

end A004450

/-! ## A004450.P8015909230824632474

`A004442(A004457(2*n)/2)`
-/

namespace A004450.P8015909230824632474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.roundAway ((A004457 (2 * n) : ℚ) / 2)).toNat

end

end A004450.P8015909230824632474

namespace A004450

/-- `A004442(A004457(2*n)/2)` -/
def P8015909230824632474.Spec : Prop :=
  ∀ n, P8015909230824632474.a n = A004450 n

end A004450

/-! ## A004450.P3969919130407942127

`A004455(A004455(2*n)/2)`
-/

namespace A004450.P3969919130407942127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (SequenceMachineLib.roundAway ((A004455 (2 * n) : ℚ) / 2)).toNat

end

end A004450.P3969919130407942127

namespace A004450

/-- `A004455(A004455(2*n)/2)` -/
def P3969919130407942127.Spec : Prop :=
  ∀ n, P3969919130407942127.a n = A004450 n

end A004450

/-! ## A004450.P17292480572592797111

`A004458(A004443(2*n+1))/2`
-/

namespace A004450.P17292480572592797111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004458 (A004443 (2 * n + 1)).toNat : ℚ) / 2

end

end A004450.P17292480572592797111

namespace A004450

/-- `A004458(A004443(2*n+1))/2` -/
def P17292480572592797111.Spec : Prop :=
  ∀ n, P17292480572592797111.a n = (A004450 n : ℚ)

end A004450

/-! ## A004450.P7608585004971658934

`A004442(A004458(2*n+1)/2)`
-/

namespace A004450.P7608585004971658934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.roundAway ((A004458 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004450.P7608585004971658934

namespace A004450

/-- `A004442(A004458(2*n+1)/2)` -/
def P7608585004971658934.Spec : Prop :=
  ∀ n, P7608585004971658934.a n = A004450 n

end A004450

/-!
# A004451: Nimsum n + 10.

The programs for A004451, the canonical program `A004451.P8630416807129997723` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004451 has offset 0).

The definition of A004451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004451.P8630416807129997723

`n+2*(-1)^floor(n/2)+8*(-1)^floor(n/8)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004451

/-- `n+2*(-1)^floor(n/2)+8*(-1)^floor(n/8)` -/
def P8630416807129997723.Spec : Prop :=
  ∀ n, P8630416807129997723.a n = (A004451 n : ℚ)

end A004451

/-! ## A004451.P2467365523945181139

`xor(10, n)`
-/

namespace A004451.P2467365523945181139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 10 n

end

end A004451.P2467365523945181139

namespace A004451

/-- `xor(10, n)` -/
def P2467365523945181139.Spec : Prop :=
  ∀ n, (P2467365523945181139.a n : ℤ) = A004451 n

end A004451

/-! ## A004451.P194096945887309458

`A004452(A004442(n))`
-/

namespace A004451.P194096945887309458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004452 (A004442 n).toNat

end

end A004451.P194096945887309458

namespace A004451

/-- `A004452(A004442(n))` -/
def P194096945887309458.Spec : Prop :=
  ∀ n, P194096945887309458.a n = A004451 n

end A004451

/-! ## A004451.P11766057719937701899

`A004449(A004443(n))`
-/

namespace A004451.P11766057719937701899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (A004443 n).toNat

end

end A004451.P11766057719937701899

namespace A004451

/-- `A004449(A004443(n))` -/
def P11766057719937701899.Spec : Prop :=
  ∀ n, P11766057719937701899.a n = A004451 n

end A004451

/-! ## A004451.P12433759550875743283

`A004450(A004444(n))`
-/

namespace A004451.P12433759550875743283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004450 (A004444 n).toNat

end

end A004451.P12433759550875743283

namespace A004451

/-- `A004450(A004444(n))` -/
def P12433759550875743283.Spec : Prop :=
  ∀ n, P12433759550875743283.a n = A004451 n

end A004451

/-! ## A004451.P7216207910692414741

`A004455(A004445(n))`
-/

namespace A004451.P7216207910692414741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (A004445 n).toNat

end

end A004451.P7216207910692414741

namespace A004451

/-- `A004455(A004445(n))` -/
def P7216207910692414741.Spec : Prop :=
  ∀ n, P7216207910692414741.a n = A004451 n

end A004451

/-! ## A004451.P4021287137434603147

`A004456(A004446(n))`
-/

namespace A004451.P4021287137434603147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (A004446 n).toNat

end

end A004451.P4021287137434603147

namespace A004451

/-- `A004456(A004446(n))` -/
def P4021287137434603147.Spec : Prop :=
  ∀ n, P4021287137434603147.a n = A004451 n

end A004451

/-! ## A004451.P6350522263515303101

`A004453(A004447(n))`
-/

namespace A004451.P6350522263515303101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (A004447 n).toNat

end

end A004451.P6350522263515303101

namespace A004451

/-- `A004453(A004447(n))` -/
def P6350522263515303101.Spec : Prop :=
  ∀ n, P6350522263515303101.a n = A004451 n

end A004451

/-! ## A004451.P15047745398293184746

`A004454(A004448(n))`
-/

namespace A004451.P15047745398293184746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 (A004448 n).toNat

end

end A004451.P15047745398293184746

namespace A004451

/-- `A004454(A004448(n))` -/
def P15047745398293184746.Spec : Prop :=
  ∀ n, P15047745398293184746.a n = A004451 n

end A004451

/-! ## A004451.P13892623415618477861

`A004452(A033999(n)+n)`
-/

namespace A004451.P13892623415618477861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004452 (A033999 n + (n : ℤ)).toNat

end

end A004451.P13892623415618477861

namespace A004451

/-- `A004452(A033999(n)+n)` -/
def P13892623415618477861.Spec : Prop :=
  ∀ n, P13892623415618477861.a n = A004451 n

end A004451

/-! ## A004451.P12592937255279327791

`A004452(A004443(2*n)/2)`
-/

namespace A004451.P12592937255279327791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004452 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004451.P12592937255279327791

namespace A004451

/-- `A004452(A004443(2*n)/2)` -/
def P12592937255279327791.Spec : Prop :=
  ∀ n, P12592937255279327791.a n = A004451 n

end A004451

/-! ## A004451.P10635664087786469659

`A004465(A004459(n))`
-/

namespace A004451.P10635664087786469659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A004459 n).toNat

end

end A004451.P10635664087786469659

namespace A004451

/-- `A004465(A004459(n))` -/
def P10635664087786469659.Spec : Prop :=
  ∀ n, P10635664087786469659.a n = A004451 n

end A004451

/-! ## A004451.P17117886295349364383

`A004461(2*n)/2`
-/

namespace A004451.P17117886295349364383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004461 (2 * n) : ℚ) / 2

end

end A004451.P17117886295349364383

namespace A004451

/-- `A004461(2*n)/2` -/
def P17117886295349364383.Spec : Prop :=
  ∀ n, P17117886295349364383.a n = (A004451 n : ℚ)

end A004451

/-! ## A004451.P12409427750719662790

`A004449(A004445(2*n)/2)`
-/

namespace A004451.P12409427750719662790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (SequenceMachineLib.roundAway ((A004445 (2 * n) : ℚ) / 2)).toNat

end

end A004451.P12409427750719662790

namespace A004451

/-- `A004449(A004445(2*n)/2)` -/
def P12409427750719662790.Spec : Prop :=
  ∀ n, P12409427750719662790.a n = A004451 n

end A004451

/-! ## A004451.P10714096925737720008

`A004462(Δ[n²])/2`
-/

namespace A004451.P10714096925737720008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004462 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A004451.P10714096925737720008

namespace A004451

/-- `A004462(Δ[n²])/2` -/
def P10714096925737720008.Spec : Prop :=
  ∀ n, P10714096925737720008.a n = (A004451 n : ℚ)

end A004451

/-! ## A004451.P3351892553527034578

`(A004462(2*n)-1)/2`
-/

namespace A004451.P3351892553527034578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004462 (2 * n) - 1 : ℚ) / 2

end

end A004451.P3351892553527034578

namespace A004451

/-- `(A004462(2*n)-1)/2` -/
def P3351892553527034578.Spec : Prop :=
  ∀ n, P3351892553527034578.a n = (A004451 n : ℚ)

end A004451

/-! ## A004451.P12992415164298935244

`A004453(A004453(2*n)/2)`
-/

namespace A004451.P12992415164298935244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (SequenceMachineLib.roundAway ((A004453 (2 * n) : ℚ) / 2)).toNat

end

end A004451.P12992415164298935244

namespace A004451

/-- `A004453(A004453(2*n)/2)` -/
def P12992415164298935244.Spec : Prop :=
  ∀ n, P12992415164298935244.a n = A004451 n

end A004451

/-! ## A004451.P13896518028557810646

`A004443(A004458(2*n+1)/2)`
-/

namespace A004451.P13896518028557810646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (SequenceMachineLib.roundAway ((A004458 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004451.P13896518028557810646

namespace A004451

/-- `A004443(A004458(2*n+1)/2)` -/
def P13896518028557810646.Spec : Prop :=
  ∀ n, P13896518028557810646.a n = A004451 n

end A004451

/-!
# A004452: Nimsum n + 11.

The programs for A004452, the canonical program `A004452.P9652803155959929146` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004452 has offset 0).

The definition of A004452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004452.P9652803155959929146

`xor(n, 11)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004452

/-- `xor(n, 11)` -/
def P9652803155959929146.Spec : Prop :=
  ∀ n, (P9652803155959929146.a n : ℤ) = A004452 n

theorem P9652803155959929146.correct : P9652803155959929146.Spec := by
  intro n
  simp only [A004452]

end A004452

/-! ## A004452.P3642052414430413839

`n+(-1)^n+2*(-1)^floor(n/2)+8*(-1)^floor(n/8)`
-/

namespace A004452.P3642052414430413839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) + (-1) ^ n : ℚ) + 2 * (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) + 8 * (-1 : ℚ) ^ (⌊(n : ℚ) / 8⌋ : ℤ)

end

end A004452.P3642052414430413839

namespace A004452

/-- `n+(-1)^n+2*(-1)^floor(n/2)+8*(-1)^floor(n/8)` -/
def P3642052414430413839.Spec : Prop :=
  ∀ n, P3642052414430413839.a n = (A004452 n : ℚ)

end A004452

/-! ## A004452.P1513220593010069935

`A004451(A004442(n))`
-/

namespace A004452.P1513220593010069935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004451 (A004442 n).toNat

end

end A004452.P1513220593010069935

namespace A004452

/-- `A004451(A004442(n))` -/
def P1513220593010069935.Spec : Prop :=
  ∀ n, P1513220593010069935.a n = A004452 n

end A004452

/-! ## A004452.P12350653985932185459

`A004450(A004443(n))`
-/

namespace A004452.P12350653985932185459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004450 (A004443 n).toNat

end

end A004452.P12350653985932185459

namespace A004452

/-- `A004450(A004443(n))` -/
def P12350653985932185459.Spec : Prop :=
  ∀ n, P12350653985932185459.a n = A004452 n

end A004452

/-! ## A004452.P8400360808265604952

`A004449(A004444(n))`
-/

namespace A004452.P8400360808265604952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (A004444 n).toNat

end

end A004452.P8400360808265604952

namespace A004452

/-- `A004449(A004444(n))` -/
def P8400360808265604952.Spec : Prop :=
  ∀ n, P8400360808265604952.a n = A004452 n

end A004452

/-! ## A004452.P12101713078908993441

`A004456(A004445(n))`
-/

namespace A004452.P12101713078908993441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (A004445 n).toNat

end

end A004452.P12101713078908993441

namespace A004452

/-- `A004456(A004445(n))` -/
def P12101713078908993441.Spec : Prop :=
  ∀ n, P12101713078908993441.a n = A004452 n

end A004452

/-! ## A004452.P13392973751822150245

`A004455(A004446(n))`
-/

namespace A004452.P13392973751822150245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (A004446 n).toNat

end

end A004452.P13392973751822150245

namespace A004452

/-- `A004455(A004446(n))` -/
def P13392973751822150245.Spec : Prop :=
  ∀ n, P13392973751822150245.a n = A004452 n

end A004452

/-! ## A004452.P16542204142063306198

`A004454(A004447(n))`
-/

namespace A004452.P16542204142063306198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 (A004447 n).toNat

end

end A004452.P16542204142063306198

namespace A004452

/-- `A004454(A004447(n))` -/
def P16542204142063306198.Spec : Prop :=
  ∀ n, P16542204142063306198.a n = A004452 n

end A004452

/-! ## A004452.P2713524920624325843

`A004453(A004448(n))`
-/

namespace A004452.P2713524920624325843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (A004448 n).toNat

end

end A004452.P2713524920624325843

namespace A004452

/-- `A004453(A004448(n))` -/
def P2713524920624325843.Spec : Prop :=
  ∀ n, P2713524920624325843.a n = A004452 n

end A004452

/-! ## A004452.P12454222466077300878

`A004451(A033999(n)+n)`
-/

namespace A004452.P12454222466077300878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004451 (A033999 n + (n : ℤ)).toNat

end

end A004452.P12454222466077300878

namespace A004452

/-- `A004451(A033999(n)+n)` -/
def P12454222466077300878.Spec : Prop :=
  ∀ n, P12454222466077300878.a n = A004452 n

end A004452

/-! ## A004452.P12771980317001692642

`A004449(A132429(n)+n)`
-/

namespace A004452.P12771980317001692642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (A132429 n + (n : ℤ)).toNat

end

end A004452.P12771980317001692642

namespace A004452

/-- `A004449(A132429(n)+n)` -/
def P12771980317001692642.Spec : Prop :=
  ∀ n, P12771980317001692642.a n = A004452 n

end A004452

/-! ## A004452.P780298278454084345

`A004451(A004443(2*n)/2)`
-/

namespace A004452.P780298278454084345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004451 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004452.P780298278454084345

namespace A004452

/-- `A004451(A004443(2*n)/2)` -/
def P780298278454084345.Spec : Prop :=
  ∀ n, P780298278454084345.a n = A004452 n

end A004452

/-! ## A004452.P16809506977438107713

`A004465(A004460(n))`
-/

namespace A004452.P16809506977438107713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A004460 n).toNat

end

end A004452.P16809506977438107713

namespace A004452

/-- `A004465(A004460(n))` -/
def P16809506977438107713.Spec : Prop :=
  ∀ n, P16809506977438107713.a n = A004452 n

end A004452

/-! ## A004452.P3888098841263674846

`A004463(2*n)/2`
-/

namespace A004452.P3888098841263674846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004463 (2 * n) : ℚ) / 2

end

end A004452.P3888098841263674846

namespace A004452

/-- `A004463(2*n)/2` -/
def P3888098841263674846.Spec : Prop :=
  ∀ n, P3888098841263674846.a n = (A004452 n : ℚ)

end A004452

/-! ## A004452.P12903788410897494328

`floor(A004464(2*n)/2)`
-/

namespace A004452.P12903788410897494328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004464 (2 * n) : ℚ) / 2⌋

end

end A004452.P12903788410897494328

namespace A004452

/-- `floor(A004464(2*n)/2)` -/
def P12903788410897494328.Spec : Prop :=
  ∀ n, P12903788410897494328.a n = A004452 n

end A004452

/-! ## A004452.P530465684515843181

`A004450(A004445(2*n)/2)`
-/

namespace A004452.P530465684515843181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004450 (SequenceMachineLib.roundAway ((A004445 (2 * n) : ℚ) / 2)).toNat

end

end A004452.P530465684515843181

namespace A004452

/-- `A004450(A004445(2*n)/2)` -/
def P530465684515843181.Spec : Prop :=
  ∀ n, P530465684515843181.a n = A004452 n

end A004452

/-! ## A004452.P1001555429631540021

`A004464(Δ[n²])/2`
-/

namespace A004452.P1001555429631540021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004464 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A004452.P1001555429631540021

namespace A004452

/-- `A004464(Δ[n²])/2` -/
def P1001555429631540021.Spec : Prop :=
  ∀ n, P1001555429631540021.a n = (A004452 n : ℚ)

end A004452

/-! ## A004452.P1348810555689582111

`A004449(A004447(2*n)/2)`
-/

namespace A004452.P1348810555689582111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (SequenceMachineLib.roundAway ((A004447 (2 * n) : ℚ) / 2)).toNat

end

end A004452.P1348810555689582111

namespace A004452

/-- `A004449(A004447(2*n)/2)` -/
def P1348810555689582111.Spec : Prop :=
  ∀ n, P1348810555689582111.a n = A004452 n

end A004452

/-! ## A004452.P3146834451856344126

`A004462(A004444(2*n))/2`
-/

namespace A004452.P3146834451856344126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004462 (A004444 (2 * n)).toNat : ℚ) / 2

end

end A004452.P3146834451856344126

namespace A004452

/-- `A004462(A004444(2*n))/2` -/
def P3146834451856344126.Spec : Prop :=
  ∀ n, P3146834451856344126.a n = (A004452 n : ℚ)

end A004452

/-! ## A004452.P16568776289943031564

`A004460(A004446(2*n))/2`
-/

namespace A004452.P16568776289943031564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004460 (A004446 (2 * n)).toNat : ℚ) / 2

end

end A004452.P16568776289943031564

namespace A004452

/-- `A004460(A004446(2*n))/2` -/
def P16568776289943031564.Spec : Prop :=
  ∀ n, P16568776289943031564.a n = (A004452 n : ℚ)

end A004452

/-!
# A004453: Nimsum n + 12.

The programs for A004453, the canonical program `A004453.P17981870500129272563` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004453 has offset 0).

The definition of A004453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004453.P17981870500129272563

`xor(n, 12)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004453

/-- `xor(n, 12)` -/
def P17981870500129272563.Spec : Prop :=
  ∀ n, (P17981870500129272563.a n : ℤ) = A004453 n

theorem P17981870500129272563.correct : P17981870500129272563.Spec := by
  intro n
  simp only [A004453]

end A004453

/-! ## A004453.P13470902292718192374

`n+4*(-1)^floor(n/4)+8*(-1)^floor(n/8)`
-/

namespace A004453.P13470902292718192374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) + 4 * (-1 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ) + 8 * (-1 : ℚ) ^ (⌊(n : ℚ) / 8⌋ : ℤ)

end

end A004453.P13470902292718192374

namespace A004453

/-- `n+4*(-1)^floor(n/4)+8*(-1)^floor(n/8)` -/
def P13470902292718192374.Spec : Prop :=
  ∀ n, P13470902292718192374.a n = (A004453 n : ℚ)

end A004453

/-! ## A004453.P2144913659560077938

`A004454(A004442(n))`
-/

namespace A004453.P2144913659560077938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 (A004442 n).toNat

end

end A004453.P2144913659560077938

namespace A004453

/-- `A004454(A004442(n))` -/
def P2144913659560077938.Spec : Prop :=
  ∀ n, P2144913659560077938.a n = A004453 n

end A004453

/-! ## A004453.P5366730256563429023

`A004455(A004443(n))`
-/

namespace A004453.P5366730256563429023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (A004443 n).toNat

end

end A004453.P5366730256563429023

namespace A004453

/-- `A004455(A004443(n))` -/
def P5366730256563429023.Spec : Prop :=
  ∀ n, P5366730256563429023.a n = A004453 n

end A004453

/-! ## A004453.P14466782198967304363

`A004449(A004445(n))`
-/

namespace A004453.P14466782198967304363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (A004445 n).toNat

end

end A004453.P14466782198967304363

namespace A004453

/-- `A004449(A004445(n))` -/
def P14466782198967304363.Spec : Prop :=
  ∀ n, P14466782198967304363.a n = A004453 n

end A004453

/-! ## A004453.P9641304673040070931

`A004456(A004444(n))`
-/

namespace A004453.P9641304673040070931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (A004444 n).toNat

end

end A004453.P9641304673040070931

namespace A004453

/-- `A004456(A004444(n))` -/
def P9641304673040070931.Spec : Prop :=
  ∀ n, P9641304673040070931.a n = A004453 n

end A004453

/-! ## A004453.P2116725125148533621

`A004450(A004446(n))`
-/

namespace A004453.P2116725125148533621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004450 (A004446 n).toNat

end

end A004453.P2116725125148533621

namespace A004453

/-- `A004450(A004446(n))` -/
def P2116725125148533621.Spec : Prop :=
  ∀ n, P2116725125148533621.a n = A004453 n

end A004453

/-! ## A004453.P12921037117213751017

`A004451(A004447(n))`
-/

namespace A004453.P12921037117213751017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004451 (A004447 n).toNat

end

end A004453.P12921037117213751017

namespace A004453

/-- `A004451(A004447(n))` -/
def P12921037117213751017.Spec : Prop :=
  ∀ n, P12921037117213751017.a n = A004453 n

end A004453

/-! ## A004453.P12389538412211500139

`A004452(A004448(n))`
-/

namespace A004453.P12389538412211500139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004452 (A004448 n).toNat

end

end A004453.P12389538412211500139

namespace A004453

/-- `A004452(A004448(n))` -/
def P12389538412211500139.Spec : Prop :=
  ∀ n, P12389538412211500139.a n = A004453 n

end A004453

/-! ## A004453.P16103661199536525112

`A004454(A033999(n)+n)`
-/

namespace A004453.P16103661199536525112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 (A033999 n + (n : ℤ)).toNat

end

end A004453.P16103661199536525112

namespace A004453

/-- `A004454(A033999(n)+n)` -/
def P16103661199536525112.Spec : Prop :=
  ∀ n, P16103661199536525112.a n = A004453 n

end A004453

/-! ## A004453.P10155497755392251171

`A004456(A132429(n)+n)`
-/

namespace A004453.P10155497755392251171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (A132429 n + (n : ℤ)).toNat

end

end A004453.P10155497755392251171

namespace A004453

/-- `A004456(A132429(n)+n)` -/
def P10155497755392251171.Spec : Prop :=
  ∀ n, P10155497755392251171.a n = A004453 n

end A004453

/-! ## A004453.P10659029047815326663

`A004454(A004443(2*n)/2)`
-/

namespace A004453.P10659029047815326663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004453.P10659029047815326663

namespace A004453

/-- `A004454(A004443(2*n)/2)` -/
def P10659029047815326663.Spec : Prop :=
  ∀ n, P10659029047815326663.a n = A004453 n

end A004453

/-! ## A004453.P521006654854004902

`A004465(A004461(n))`
-/

namespace A004453.P521006654854004902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A004461 n).toNat

end

end A004453.P521006654854004902

namespace A004453

/-- `A004465(A004461(n))` -/
def P521006654854004902.Spec : Prop :=
  ∀ n, P521006654854004902.a n = A004453 n

end A004453

/-! ## A004453.P17280755051866291433

`A057300(A004452(A057300(A004452(n))))`
-/

namespace A004453.P17280755051866291433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A004452 (A057300 (A004452 n).toNat).toNat).toNat

end

end A004453.P17280755051866291433

namespace A004453

/-- `A057300(A004452(A057300(A004452(n))))` -/
def P17280755051866291433.Spec : Prop :=
  ∀ n, P17280755051866291433.a n = A004453 n

end A004453

/-! ## A004453.P15932184280826791109

`A004455(A004445(2*n)/2)`
-/

namespace A004453.P15932184280826791109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (SequenceMachineLib.roundAway ((A004445 (2 * n) : ℚ) / 2)).toNat

end

end A004453.P15932184280826791109

namespace A004453

/-- `A004455(A004445(2*n)/2)` -/
def P15932184280826791109.Spec : Prop :=
  ∀ n, P15932184280826791109.a n = A004453 n

end A004453

/-! ## A004453.P5182973890218389961

`A004465(2*n)/2`
-/

namespace A004453.P5182973890218389961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004465 (2 * n) : ℚ) / 2

end

end A004453.P5182973890218389961

namespace A004453

/-- `A004465(2*n)/2` -/
def P5182973890218389961.Spec : Prop :=
  ∀ n, P5182973890218389961.a n = (A004453 n : ℚ)

end A004453

/-! ## A004453.P12821301323097389139

`A004456(A004447(2*n)/2)`
-/

namespace A004453.P12821301323097389139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (SequenceMachineLib.roundAway ((A004447 (2 * n) : ℚ) / 2)).toNat

end

end A004453.P12821301323097389139

namespace A004453

/-- `A004456(A004447(2*n)/2)` -/
def P12821301323097389139.Spec : Prop :=
  ∀ n, P12821301323097389139.a n = A004453 n

end A004453

/-! ## A004453.P3589029117629240641

`A004449(A004449(2*n)/2)`
-/

namespace A004453.P3589029117629240641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (SequenceMachineLib.roundAway ((A004449 (2 * n) : ℚ) / 2)).toNat

end

end A004453.P3589029117629240641

namespace A004453

/-- `A004449(A004449(2*n)/2)` -/
def P3589029117629240641.Spec : Prop :=
  ∀ n, P3589029117629240641.a n = A004453 n

end A004453

/-! ## A004453.P2344388236331085119

`A004458(A004450(2*n))/2`
-/

namespace A004453.P2344388236331085119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004458 (A004450 (2 * n)).toNat : ℚ) / 2

end

end A004453.P2344388236331085119

namespace A004453

/-- `A004458(A004450(2*n))/2` -/
def P2344388236331085119.Spec : Prop :=
  ∀ n, P2344388236331085119.a n = (A004453 n : ℚ)

end A004453

/-!
# A004454: Nimsum n + 13.

The programs for A004454, the canonical program `A004454.P13525141591151696075` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004454 has offset 0).

The definition of A004454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004454.P13525141591151696075

`xor(13, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004454

/-- `xor(13, n)` -/
def P13525141591151696075.Spec : Prop :=
  ∀ n, (P13525141591151696075.a n : ℤ) = A004454 n

theorem P13525141591151696075.correct : P13525141591151696075.Spec := by
  intro n
  simp only [A004454]

end A004454

/-! ## A004454.P11898246232474427672

`A004453(A004442(n))`
-/

namespace A004454.P11898246232474427672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (A004442 n).toNat

end

end A004454.P11898246232474427672

namespace A004454

/-- `A004453(A004442(n))` -/
def P11898246232474427672.Spec : Prop :=
  ∀ n, P11898246232474427672.a n = A004454 n

end A004454

/-! ## A004454.P15624100796516218885

`A004456(A004443(n))`
-/

namespace A004454.P15624100796516218885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (A004443 n).toNat

end

end A004454.P15624100796516218885

namespace A004454

/-- `A004456(A004443(n))` -/
def P15624100796516218885.Spec : Prop :=
  ∀ n, P15624100796516218885.a n = A004454 n

end A004454

/-! ## A004454.P7743596603997598235

`A004455(A004444(n))`
-/

namespace A004454.P7743596603997598235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (A004444 n).toNat

end

end A004454.P7743596603997598235

namespace A004454

/-- `A004455(A004444(n))` -/
def P7743596603997598235.Spec : Prop :=
  ∀ n, P7743596603997598235.a n = A004454 n

end A004454

/-! ## A004454.P16627987178786294

`A004450(A004445(n))`
-/

namespace A004454.P16627987178786294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004450 (A004445 n).toNat

end

end A004454.P16627987178786294

namespace A004454

/-- `A004450(A004445(n))` -/
def P16627987178786294.Spec : Prop :=
  ∀ n, P16627987178786294.a n = A004454 n

end A004454

/-! ## A004454.P10369503597682947397

`A004449(A004446(n))`
-/

namespace A004454.P10369503597682947397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (A004446 n).toNat

end

end A004454.P10369503597682947397

namespace A004454

/-- `A004449(A004446(n))` -/
def P10369503597682947397.Spec : Prop :=
  ∀ n, P10369503597682947397.a n = A004454 n

end A004454

/-! ## A004454.P10582999603982365068

`A004452(A004447(n))`
-/

namespace A004454.P10582999603982365068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004452 (A004447 n).toNat

end

end A004454.P10582999603982365068

namespace A004454

/-- `A004452(A004447(n))` -/
def P10582999603982365068.Spec : Prop :=
  ∀ n, P10582999603982365068.a n = A004454 n

end A004454

/-! ## A004454.P7932340724921458796

`A004451(A004448(n))`
-/

namespace A004454.P7932340724921458796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004451 (A004448 n).toNat

end

end A004454.P7932340724921458796

namespace A004454

/-- `A004451(A004448(n))` -/
def P7932340724921458796.Spec : Prop :=
  ∀ n, P7932340724921458796.a n = A004454 n

end A004454

/-! ## A004454.P1549117019430061357

`A004453(A033999(n)+n)`
-/

namespace A004454.P1549117019430061357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (A033999 n + (n : ℤ)).toNat

end

end A004454.P1549117019430061357

namespace A004454

/-- `A004453(A033999(n)+n)` -/
def P1549117019430061357.Spec : Prop :=
  ∀ n, P1549117019430061357.a n = A004454 n

end A004454

/-! ## A004454.P7577702898943849983

`A004453(A004443(2*n)/2)`
-/

namespace A004454.P7577702898943849983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004454.P7577702898943849983

namespace A004454

/-- `A004453(A004443(2*n)/2)` -/
def P7577702898943849983.Spec : Prop :=
  ∀ n, P7577702898943849983.a n = A004454 n

end A004454

/-! ## A004454.P946193706326266209

`A004465(A004462(n))`
-/

namespace A004454.P946193706326266209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A004462 n).toNat

end

end A004454.P946193706326266209

namespace A004454

/-- `A004465(A004462(n))` -/
def P946193706326266209.Spec : Prop :=
  ∀ n, P946193706326266209.a n = A004454 n

end A004454

/-! ## A004454.P7493709882083404922

`A004456(A004445(2*n)/2)`
-/

namespace A004454.P7493709882083404922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (SequenceMachineLib.roundAway ((A004445 (2 * n) : ℚ) / 2)).toNat

end

end A004454.P7493709882083404922

namespace A004454

/-- `A004456(A004445(2*n)/2)` -/
def P7493709882083404922.Spec : Prop :=
  ∀ n, P7493709882083404922.a n = A004454 n

end A004454

/-! ## A004454.P2696250007994537463

`A004448(A004461(2*n)/2)`
-/

namespace A004454.P2696250007994537463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 (SequenceMachineLib.roundAway ((A004461 (2 * n) : ℚ) / 2)).toNat

end

end A004454.P2696250007994537463

namespace A004454

/-- `A004448(A004461(2*n)/2)` -/
def P2696250007994537463.Spec : Prop :=
  ∀ n, P2696250007994537463.a n = A004454 n

end A004454

/-! ## A004454.P14377440954219876677

`A004447(A004463(2*n)/2)`
-/

namespace A004454.P14377440954219876677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004447 (SequenceMachineLib.roundAway ((A004463 (2 * n) : ℚ) / 2)).toNat

end

end A004454.P14377440954219876677

namespace A004454

/-- `A004447(A004463(2*n)/2)` -/
def P14377440954219876677.Spec : Prop :=
  ∀ n, P14377440954219876677.a n = A004454 n

end A004454

/-! ## A004454.P14708541959554968768

`A004455(A004447(2*n)/2)`
-/

namespace A004454.P14708541959554968768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (SequenceMachineLib.roundAway ((A004447 (2 * n) : ℚ) / 2)).toNat

end

end A004454.P14708541959554968768

namespace A004454

/-- `A004455(A004447(2*n)/2)` -/
def P14708541959554968768.Spec : Prop :=
  ∀ n, P14708541959554968768.a n = A004454 n

end A004454

/-! ## A004454.P17651203569158838650

`A004450(A004449(2*n)/2)`
-/

namespace A004454.P17651203569158838650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004450 (SequenceMachineLib.roundAway ((A004449 (2 * n) : ℚ) / 2)).toNat

end

end A004454.P17651203569158838650

namespace A004454

/-- `A004450(A004449(2*n)/2)` -/
def P17651203569158838650.Spec : Prop :=
  ∀ n, P17651203569158838650.a n = A004454 n

end A004454

/-! ## A004454.P1185117136711947247

`A004452(A004453(2*n)/2)`
-/

namespace A004454.P1185117136711947247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004452 (SequenceMachineLib.roundAway ((A004453 (2 * n) : ℚ) / 2)).toNat

end

end A004454.P1185117136711947247

namespace A004454

/-- `A004452(A004453(2*n)/2)` -/
def P1185117136711947247.Spec : Prop :=
  ∀ n, P1185117136711947247.a n = A004454 n

end A004454

/-! ## A004454.P11021465679044242363

`A004451(A004455(2*n)/2)`
-/

namespace A004454.P11021465679044242363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004451 (SequenceMachineLib.roundAway ((A004455 (2 * n) : ℚ) / 2)).toNat

end

end A004454.P11021465679044242363

namespace A004454

/-- `A004451(A004455(2*n)/2)` -/
def P11021465679044242363.Spec : Prop :=
  ∀ n, P11021465679044242363.a n = A004454 n

end A004454

/-! ## A004454.P10210236511932382451

`A004446(A004457(2*n)/2)`
-/

namespace A004454.P10210236511932382451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004446 (SequenceMachineLib.roundAway ((A004457 (2 * n) : ℚ) / 2)).toNat

end

end A004454.P10210236511932382451

namespace A004454

/-- `A004446(A004457(2*n)/2)` -/
def P10210236511932382451.Spec : Prop :=
  ∀ n, P10210236511932382451.a n = A004454 n

end A004454

/-! ## A004454.P1966333699630643117

`A004445(A004459(2*n)/2)`
-/

namespace A004454.P1966333699630643117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004445 (SequenceMachineLib.roundAway ((A004459 (2 * n) : ℚ) / 2)).toNat

end

end A004454.P1966333699630643117

namespace A004454

/-- `A004445(A004459(2*n)/2)` -/
def P1966333699630643117.Spec : Prop :=
  ∀ n, P1966333699630643117.a n = A004454 n

end A004454

/-!
# A004455: Nimsum n + 14.

The programs for A004455, the canonical program `A004455.P10627834048321180499` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004455 has offset 0).

The definition of A004455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004455.P10627834048321180499

`xor(14, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004455

/-- `xor(14, n)` -/
def P10627834048321180499.Spec : Prop :=
  ∀ n, (P10627834048321180499.a n : ℤ) = A004455 n

theorem P10627834048321180499.correct : P10627834048321180499.Spec := by
  intro n
  simp only [A004455]

end A004455

/-! ## A004455.P2783078910526059731

`A004456(A004442(n))`
-/

namespace A004455.P2783078910526059731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (A004442 n).toNat

end

end A004455.P2783078910526059731

namespace A004455

/-- `A004456(A004442(n))` -/
def P2783078910526059731.Spec : Prop :=
  ∀ n, P2783078910526059731.a n = A004455 n

end A004455

/-! ## A004455.P5605106751886811109

`A004453(A004443(n))`
-/

namespace A004455.P5605106751886811109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (A004443 n).toNat

end

end A004455.P5605106751886811109

namespace A004455

/-- `A004453(A004443(n))` -/
def P5605106751886811109.Spec : Prop :=
  ∀ n, P5605106751886811109.a n = A004455 n

end A004455

/-! ## A004455.P14495064487080354306

`A004454(A004444(n))`
-/

namespace A004455.P14495064487080354306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 (A004444 n).toNat

end

end A004455.P14495064487080354306

namespace A004455

/-- `A004454(A004444(n))` -/
def P14495064487080354306.Spec : Prop :=
  ∀ n, P14495064487080354306.a n = A004455 n

end A004455

/-! ## A004455.P3269039205104145191

`A004451(A004445(n))`
-/

namespace A004455.P3269039205104145191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004451 (A004445 n).toNat

end

end A004455.P3269039205104145191

namespace A004455

/-- `A004451(A004445(n))` -/
def P3269039205104145191.Spec : Prop :=
  ∀ n, P3269039205104145191.a n = A004455 n

end A004455

/-! ## A004455.P12354096093722616658

`A004452(A004446(n))`
-/

namespace A004455.P12354096093722616658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004452 (A004446 n).toNat

end

end A004455.P12354096093722616658

namespace A004455

/-- `A004452(A004446(n))` -/
def P12354096093722616658.Spec : Prop :=
  ∀ n, P12354096093722616658.a n = A004455 n

end A004455

/-! ## A004455.P4245630818760333079

`A004449(A004447(n))`
-/

namespace A004455.P4245630818760333079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (A004447 n).toNat

end

end A004455.P4245630818760333079

namespace A004455

/-- `A004449(A004447(n))` -/
def P4245630818760333079.Spec : Prop :=
  ∀ n, P4245630818760333079.a n = A004455 n

end A004455

/-! ## A004455.P11333687444740700584

`A004450(A004448(n))`
-/

namespace A004455.P11333687444740700584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004450 (A004448 n).toNat

end

end A004455.P11333687444740700584

namespace A004455

/-- `A004450(A004448(n))` -/
def P11333687444740700584.Spec : Prop :=
  ∀ n, P11333687444740700584.a n = A004455 n

end A004455

/-! ## A004455.P10079031723400373682

`A004456(A033999(n)+n)`
-/

namespace A004455.P10079031723400373682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (A033999 n + (n : ℤ)).toNat

end

end A004455.P10079031723400373682

namespace A004455

/-- `A004456(A033999(n)+n)` -/
def P10079031723400373682.Spec : Prop :=
  ∀ n, P10079031723400373682.a n = A004455 n

end A004455

/-! ## A004455.P790102846589570527

`A004456(n)-A033999(n)`
-/

namespace A004455.P790102846589570527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 n - A033999 n

end

end A004455.P790102846589570527

namespace A004455

/-- `A004456(n)-A033999(n)` -/
def P790102846589570527.Spec : Prop :=
  ∀ n, P790102846589570527.a n = A004455 n

end A004455

/-! ## A004455.P16788798563338496350

`A004456(A004443(2*n)/2)`
-/

namespace A004455.P16788798563338496350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004456 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004455.P16788798563338496350

namespace A004455

/-- `A004456(A004443(2*n)/2)` -/
def P16788798563338496350.Spec : Prop :=
  ∀ n, P16788798563338496350.a n = A004455 n

end A004455

/-! ## A004455.P10655113058834266325

`A004465(A004463(n))`
-/

namespace A004455.P10655113058834266325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A004463 n).toNat

end

end A004455.P10655113058834266325

namespace A004455

/-- `A004465(A004463(n))` -/
def P10655113058834266325.Spec : Prop :=
  ∀ n, P10655113058834266325.a n = A004455 n

end A004455

/-! ## A004455.P10320660020084587410

`A163241(A004452(A163241(n)))`
-/

namespace A004455.P10320660020084587410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A004452 (A163241 n).toNat).toNat

end

end A004455.P10320660020084587410

namespace A004455

/-- `A163241(A004452(A163241(n)))` -/
def P10320660020084587410.Spec : Prop :=
  ∀ n, P10320660020084587410.a n = A004455 n

end A004455

/-! ## A004455.P9557951677705800816

`A004453(A004445(2*n)/2)`
-/

namespace A004455.P9557951677705800816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (SequenceMachineLib.roundAway ((A004445 (2 * n) : ℚ) / 2)).toNat

end

end A004455.P9557951677705800816

namespace A004455

/-- `A004453(A004445(2*n)/2)` -/
def P9557951677705800816.Spec : Prop :=
  ∀ n, P9557951677705800816.a n = A004455 n

end A004455

/-! ## A004455.P6950611413071352516

`A004445(A004461(2*n)/2)`
-/

namespace A004455.P6950611413071352516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004445 (SequenceMachineLib.roundAway ((A004461 (2 * n) : ℚ) / 2)).toNat

end

end A004455.P6950611413071352516

namespace A004455

/-- `A004445(A004461(2*n)/2)` -/
def P6950611413071352516.Spec : Prop :=
  ∀ n, P6950611413071352516.a n = A004455 n

end A004455

/-! ## A004455.P10883629132723320578

`A004446(A004463(2*n)/2)`
-/

namespace A004455.P10883629132723320578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004446 (SequenceMachineLib.roundAway ((A004463 (2 * n) : ℚ) / 2)).toNat

end

end A004455.P10883629132723320578

namespace A004455

/-- `A004446(A004463(2*n)/2)` -/
def P10883629132723320578.Spec : Prop :=
  ∀ n, P10883629132723320578.a n = A004455 n

end A004455

/-! ## A004455.P15333376483072440122

`A004454(A004447(2*n)/2)`
-/

namespace A004455.P15333376483072440122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 (SequenceMachineLib.roundAway ((A004447 (2 * n) : ℚ) / 2)).toNat

end

end A004455.P15333376483072440122

namespace A004455

/-- `A004454(A004447(2*n)/2)` -/
def P15333376483072440122.Spec : Prop :=
  ∀ n, P15333376483072440122.a n = A004455 n

end A004455

/-! ## A004455.P4871575990687145045

`A004449(A004453(2*n)/2)`
-/

namespace A004455.P4871575990687145045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (SequenceMachineLib.roundAway ((A004453 (2 * n) : ℚ) / 2)).toNat

end

end A004455.P4871575990687145045

namespace A004455

/-- `A004449(A004453(2*n)/2)` -/
def P4871575990687145045.Spec : Prop :=
  ∀ n, P4871575990687145045.a n = A004455 n

end A004455

/-! ## A004455.P7998686976697966091

`A004447(A004457(2*n)/2)`
-/

namespace A004455.P7998686976697966091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004447 (SequenceMachineLib.roundAway ((A004457 (2 * n) : ℚ) / 2)).toNat

end

end A004455.P7998686976697966091

namespace A004455

/-- `A004447(A004457(2*n)/2)` -/
def P7998686976697966091.Spec : Prop :=
  ∀ n, P7998686976697966091.a n = A004455 n

end A004455

/-! ## A004455.P46557664064005520

`A004448(A004459(2*n)/2)`
-/

namespace A004455.P46557664064005520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 (SequenceMachineLib.roundAway ((A004459 (2 * n) : ℚ) / 2)).toNat

end

end A004455.P46557664064005520

namespace A004455

/-- `A004448(A004459(2*n)/2)` -/
def P46557664064005520.Spec : Prop :=
  ∀ n, P46557664064005520.a n = A004455 n

end A004455

/-!
# A004456: Nimsum n + 15.

The programs for A004456, the canonical program `A004456.P11933863548073512996` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004456 has offset 0).

The definition of A004456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004456.P11933863548073512996

`xor(15, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004456

/-- `xor(15, n)` -/
def P11933863548073512996.Spec : Prop :=
  ∀ n, (P11933863548073512996.a n : ℤ) = A004456 n

theorem P11933863548073512996.correct : P11933863548073512996.Spec := by
  intro n
  simp only [A004456]

end A004456

/-! ## A004456.P3291687791396264429

`15-and(30, 2*n)+n`
-/

namespace A004456.P3291687791396264429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 - (Nat.land 30 (2 * n) : ℤ) + (n : ℤ)

end

end A004456.P3291687791396264429

namespace A004456

/-- `15-and(30, 2*n)+n` -/
def P3291687791396264429.Spec : Prop :=
  ∀ n, P3291687791396264429.a n = A004456 n

end A004456

/-! ## A004456.P366389157246616890

`A004455(A004442(n))`
-/

namespace A004456.P366389157246616890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (A004442 n).toNat

end

end A004456.P366389157246616890

namespace A004456

/-- `A004455(A004442(n))` -/
def P366389157246616890.Spec : Prop :=
  ∀ n, P366389157246616890.a n = A004456 n

end A004456

/-! ## A004456.P10427869615735360574

`A004454(A004443(n))`
-/

namespace A004456.P10427869615735360574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 (A004443 n).toNat

end

end A004456.P10427869615735360574

namespace A004456

/-- `A004454(A004443(n))` -/
def P10427869615735360574.Spec : Prop :=
  ∀ n, P10427869615735360574.a n = A004456 n

end A004456

/-! ## A004456.P12051067826848273500

`A004453(A004444(n))`
-/

namespace A004456.P12051067826848273500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (A004444 n).toNat

end

end A004456.P12051067826848273500

namespace A004456

/-- `A004453(A004444(n))` -/
def P12051067826848273500.Spec : Prop :=
  ∀ n, P12051067826848273500.a n = A004456 n

end A004456

/-! ## A004456.P8894782257769148052

`A004452(A004445(n))`
-/

namespace A004456.P8894782257769148052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004452 (A004445 n).toNat

end

end A004456.P8894782257769148052

namespace A004456

/-- `A004452(A004445(n))` -/
def P8894782257769148052.Spec : Prop :=
  ∀ n, P8894782257769148052.a n = A004456 n

end A004456

/-! ## A004456.P5179313996233022696

`A004451(A004446(n))`
-/

namespace A004456.P5179313996233022696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004451 (A004446 n).toNat

end

end A004456.P5179313996233022696

namespace A004456

/-- `A004451(A004446(n))` -/
def P5179313996233022696.Spec : Prop :=
  ∀ n, P5179313996233022696.a n = A004456 n

end A004456

/-! ## A004456.P13271577867340798797

`A004450(A004447(n))`
-/

namespace A004456.P13271577867340798797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004450 (A004447 n).toNat

end

end A004456.P13271577867340798797

namespace A004456

/-- `A004450(A004447(n))` -/
def P13271577867340798797.Spec : Prop :=
  ∀ n, P13271577867340798797.a n = A004456 n

end A004456

/-! ## A004456.P17235444347655860625

`A004449(A004448(n))`
-/

namespace A004456.P17235444347655860625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (A004448 n).toNat

end

end A004456.P17235444347655860625

namespace A004456

/-- `A004449(A004448(n))` -/
def P17235444347655860625.Spec : Prop :=
  ∀ n, P17235444347655860625.a n = A004456 n

end A004456

/-! ## A004456.P2358370141933390712

`A004455(A033999(n)+n)`
-/

namespace A004456.P2358370141933390712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (A033999 n + (n : ℤ)).toNat

end

end A004456.P2358370141933390712

namespace A004456

/-- `A004455(A033999(n)+n)` -/
def P2358370141933390712.Spec : Prop :=
  ∀ n, P2358370141933390712.a n = A004456 n

end A004456

/-! ## A004456.P172921923034946251

`A004453(A132429(n)+n)`
-/

namespace A004456.P172921923034946251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (A132429 n + (n : ℤ)).toNat

end

end A004456.P172921923034946251

namespace A004456

/-- `A004453(A132429(n)+n)` -/
def P172921923034946251.Spec : Prop :=
  ∀ n, P172921923034946251.a n = A004456 n

end A004456

/-! ## A004456.P2925751265939145088

`A004455(A004443(2*n)/2)`
-/

namespace A004456.P2925751265939145088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004455 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004456.P2925751265939145088

namespace A004456

/-- `A004455(A004443(2*n)/2)` -/
def P2925751265939145088.Spec : Prop :=
  ∀ n, P2925751265939145088.a n = A004456 n

end A004456

/-! ## A004456.P10443452302928640834

`A004465(A004464(n))`
-/

namespace A004456.P10443452302928640834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A004464 n).toNat

end

end A004456.P10443452302928640834

namespace A004456

/-- `A004465(A004464(n))` -/
def P10443452302928640834.Spec : Prop :=
  ∀ n, P10443452302928640834.a n = A004456 n

end A004456

/-! ## A004456.P2659499028688265693

`A004454(A004445(2*n)/2)`
-/

namespace A004456.P2659499028688265693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 (SequenceMachineLib.roundAway ((A004445 (2 * n) : ℚ) / 2)).toNat

end

end A004456.P2659499028688265693

namespace A004456

/-- `A004454(A004445(2*n)/2)` -/
def P2659499028688265693.Spec : Prop :=
  ∀ n, P2659499028688265693.a n = A004456 n

end A004456

/-! ## A004456.P9048949104648652248

`A004453(A004447(2*n)/2)`
-/

namespace A004456.P9048949104648652248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004453 (SequenceMachineLib.roundAway ((A004447 (2 * n) : ℚ) / 2)).toNat

end

end A004456.P9048949104648652248

namespace A004456

/-- `A004453(A004447(2*n)/2)` -/
def P9048949104648652248.Spec : Prop :=
  ∀ n, P9048949104648652248.a n = A004456 n

end A004456

/-! ## A004456.P15164188402611935020

`A004452(A004449(2*n)/2)`
-/

namespace A004456.P15164188402611935020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004452 (SequenceMachineLib.roundAway ((A004449 (2 * n) : ℚ) / 2)).toNat

end

end A004456.P15164188402611935020

namespace A004456

/-- `A004452(A004449(2*n)/2)` -/
def P15164188402611935020.Spec : Prop :=
  ∀ n, P15164188402611935020.a n = A004456 n

end A004456

/-! ## A004456.P6313715920984861860

`A004451(A004451(2*n)/2)`
-/

namespace A004456.P6313715920984861860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004451 (SequenceMachineLib.roundAway ((A004451 (2 * n) : ℚ) / 2)).toNat

end

end A004456.P6313715920984861860

namespace A004456

/-- `A004451(A004451(2*n)/2)` -/
def P6313715920984861860.Spec : Prop :=
  ∀ n, P6313715920984861860.a n = A004456 n

end A004456

/-! ## A004456.P13721349274850898249

`A004450(A004453(2*n)/2)`
-/

namespace A004456.P13721349274850898249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004450 (SequenceMachineLib.roundAway ((A004453 (2 * n) : ℚ) / 2)).toNat

end

end A004456.P13721349274850898249

namespace A004456

/-- `A004450(A004453(2*n)/2)` -/
def P13721349274850898249.Spec : Prop :=
  ∀ n, P13721349274850898249.a n = A004456 n

end A004456

/-! ## A004456.P8415755923781066060

`A004449(A004455(2*n)/2)`
-/

namespace A004456.P8415755923781066060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (SequenceMachineLib.roundAway ((A004455 (2 * n) : ℚ) / 2)).toNat

end

end A004456.P8415755923781066060

namespace A004456

/-- `A004449(A004455(2*n)/2)` -/
def P8415755923781066060.Spec : Prop :=
  ∀ n, P8415755923781066060.a n = A004456 n

end A004456

/-! ## A004456.P2560409726388254441

`A004448(A004457(2*n)/2)`
-/

namespace A004456.P2560409726388254441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 (SequenceMachineLib.roundAway ((A004457 (2 * n) : ℚ) / 2)).toNat

end

end A004456.P2560409726388254441

namespace A004456

/-- `A004448(A004457(2*n)/2)` -/
def P2560409726388254441.Spec : Prop :=
  ∀ n, P2560409726388254441.a n = A004456 n

end A004456

/-!
# A004457: Nimsum n + 16.

The programs for A004457, the canonical program `A004457.P16334823226758579137` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004457 has offset 0).

The definition of A004457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004457.P16334823226758579137

`n+16*(-1)^floor(n/16)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004457

/-- `n+16*(-1)^floor(n/16)` -/
def P16334823226758579137.Spec : Prop :=
  ∀ n, P16334823226758579137.a n = (A004457 n : ℚ)

end A004457

/-! ## A004457.P6555419375182720346

`xor(16, n)`
-/

namespace A004457.P6555419375182720346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 16 n

end

end A004457.P6555419375182720346

namespace A004457

/-- `xor(16, n)` -/
def P6555419375182720346.Spec : Prop :=
  ∀ n, (P6555419375182720346.a n : ℤ) = A004457 n

end A004457

/-! ## A004457.P4355962354309201759

`A004458(A004442(n))`
-/

namespace A004457.P4355962354309201759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (A004442 n).toNat

end

end A004457.P4355962354309201759

namespace A004457

/-- `A004458(A004442(n))` -/
def P4355962354309201759.Spec : Prop :=
  ∀ n, P4355962354309201759.a n = A004457 n

end A004457

/-! ## A004457.P7565271856282960238

`A004459(A004443(n))`
-/

namespace A004457.P7565271856282960238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004459 (A004443 n).toNat

end

end A004457.P7565271856282960238

namespace A004457

/-- `A004459(A004443(n))` -/
def P7565271856282960238.Spec : Prop :=
  ∀ n, P7565271856282960238.a n = A004457 n

end A004457

/-! ## A004457.P9492674661448237058

`A004460(A004444(n))`
-/

namespace A004457.P9492674661448237058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (A004444 n).toNat

end

end A004457.P9492674661448237058

namespace A004457

/-- `A004460(A004444(n))` -/
def P9492674661448237058.Spec : Prop :=
  ∀ n, P9492674661448237058.a n = A004457 n

end A004457

/-! ## A004457.P6908821165289306439

`A004461(A004445(n))`
-/

namespace A004457.P6908821165289306439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (A004445 n).toNat

end

end A004457.P6908821165289306439

namespace A004457

/-- `A004461(A004445(n))` -/
def P6908821165289306439.Spec : Prop :=
  ∀ n, P6908821165289306439.a n = A004457 n

end A004457

/-! ## A004457.P7925730678120601802

`A004462(A004446(n))`
-/

namespace A004457.P7925730678120601802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (A004446 n).toNat

end

end A004457.P7925730678120601802

namespace A004457

/-- `A004462(A004446(n))` -/
def P7925730678120601802.Spec : Prop :=
  ∀ n, P7925730678120601802.a n = A004457 n

end A004457

/-! ## A004457.P9357178940413832956

`A004463(A004447(n))`
-/

namespace A004457.P9357178940413832956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (A004447 n).toNat

end

end A004457.P9357178940413832956

namespace A004457

/-- `A004463(A004447(n))` -/
def P9357178940413832956.Spec : Prop :=
  ∀ n, P9357178940413832956.a n = A004457 n

end A004457

/-! ## A004457.P4539108107003102544

`A004464(A004448(n))`
-/

namespace A004457.P4539108107003102544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (A004448 n).toNat

end

end A004457.P4539108107003102544

namespace A004457

/-- `A004464(A004448(n))` -/
def P4539108107003102544.Spec : Prop :=
  ∀ n, P4539108107003102544.a n = A004457 n

end A004457

/-! ## A004457.P3362228309976655488

`A004465(A004449(n))`
-/

namespace A004457.P3362228309976655488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A004449 n).toNat

end

end A004457.P3362228309976655488

namespace A004457

/-- `A004465(A004449(n))` -/
def P3362228309976655488.Spec : Prop :=
  ∀ n, P3362228309976655488.a n = A004457 n

end A004457

/-! ## A004457.P5836055442366249983

`A004458(A033999(n)+n)`
-/

namespace A004457.P5836055442366249983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (A033999 n + (n : ℤ)).toNat

end

end A004457.P5836055442366249983

namespace A004457

/-- `A004458(A033999(n)+n)` -/
def P5836055442366249983.Spec : Prop :=
  ∀ n, P5836055442366249983.a n = A004457 n

end A004457

/-! ## A004457.P1564372066386149654

`A004460(A132429(n)+n)`
-/

namespace A004457.P1564372066386149654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (A132429 n + (n : ℤ)).toNat

end

end A004457.P1564372066386149654

namespace A004457

/-- `A004460(A132429(n)+n)` -/
def P1564372066386149654.Spec : Prop :=
  ∀ n, P1564372066386149654.a n = A004457 n

end A004457

/-! ## A004457.P2664540489829673579

`A004458(A014681(n+1)-1)`
-/

namespace A004457.P2664540489829673579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (A014681 (n + 1) - 1).toNat

end

end A004457.P2664540489829673579

namespace A004457

/-- `A004458(A014681(n+1)-1)` -/
def P2664540489829673579.Spec : Prop :=
  ∀ n, P2664540489829673579.a n = A004457 n

end A004457

/-! ## A004457.P15526123282387653383

`A004458(A103889(n+1)-1)`
-/

namespace A004457.P15526123282387653383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (A103889 (n + 1) - 1).toNat

end

end A004457.P15526123282387653383

namespace A004457

/-- `A004458(A103889(n+1)-1)` -/
def P15526123282387653383.Spec : Prop :=
  ∀ n, P15526123282387653383.a n = A004457 n

end A004457

/-! ## A004457.P16683856813135167293

`A004458(A004443(2*n)/2)`
-/

namespace A004457.P16683856813135167293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004457.P16683856813135167293

namespace A004457

/-- `A004458(A004443(2*n)/2)` -/
def P16683856813135167293.Spec : Prop :=
  ∀ n, P16683856813135167293.a n = A004457 n

end A004457

/-! ## A004457.P14696869120584793592

`A004460(A004447(2*n)/2)`
-/

namespace A004457.P14696869120584793592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (SequenceMachineLib.roundAway ((A004447 (2 * n) : ℚ) / 2)).toNat

end

end A004457.P14696869120584793592

namespace A004457

/-- `A004460(A004447(2*n)/2)` -/
def P14696869120584793592.Spec : Prop :=
  ∀ n, P14696869120584793592.a n = A004457 n

end A004457

/-! ## A004457.P9497058062488726185

`A004458(A263426(2*n)/2)`
-/

namespace A004457.P9497058062488726185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (SequenceMachineLib.roundAway ((A263426 (2 * n) : ℚ) / 2)).toNat

end

end A004457.P9497058062488726185

namespace A004457

/-- `A004458(A263426(2*n)/2)` -/
def P9497058062488726185.Spec : Prop :=
  ∀ n, P9497058062488726185.a n = A004457 n

end A004457

/-! ## A004457.P8206152226086060550

`A004458(A004444(2*n+1)/2)`
-/

namespace A004457.P8206152226086060550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (SequenceMachineLib.roundAway ((A004444 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004457.P8206152226086060550

namespace A004457

/-- `A004458(A004444(2*n+1)/2)` -/
def P8206152226086060550.Spec : Prop :=
  ∀ n, P8206152226086060550.a n = A004457 n

end A004457

/-!
# A004458: Nimsum n + 17.

The programs for A004458, the canonical program `A004458.P13122105448155442734` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004458 has offset 0).

The definition of A004458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004458.P13122105448155442734

`xor(17, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004458

/-- `xor(17, n)` -/
def P13122105448155442734.Spec : Prop :=
  ∀ n, (P13122105448155442734.a n : ℤ) = A004458 n

theorem P13122105448155442734.correct : P13122105448155442734.Spec := by
  intro n
  simp only [A004458]

end A004458

/-! ## A004458.P5606925691881545337

`A004457(A004442(n))`
-/

namespace A004458.P5606925691881545337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (A004442 n).toNat

end

end A004458.P5606925691881545337

namespace A004458

/-- `A004457(A004442(n))` -/
def P5606925691881545337.Spec : Prop :=
  ∀ n, P5606925691881545337.a n = A004458 n

end A004458

/-! ## A004458.P9756456099937152994

`A004460(A004443(n))`
-/

namespace A004458.P9756456099937152994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (A004443 n).toNat

end

end A004458.P9756456099937152994

namespace A004458

/-- `A004460(A004443(n))` -/
def P9756456099937152994.Spec : Prop :=
  ∀ n, P9756456099937152994.a n = A004458 n

end A004458

/-! ## A004458.P15049639572255960324

`A004459(A004444(n))`
-/

namespace A004458.P15049639572255960324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004459 (A004444 n).toNat

end

end A004458.P15049639572255960324

namespace A004458

/-- `A004459(A004444(n))` -/
def P15049639572255960324.Spec : Prop :=
  ∀ n, P15049639572255960324.a n = A004458 n

end A004458

/-! ## A004458.P9057002412389115308

`A004462(A004445(n))`
-/

namespace A004458.P9057002412389115308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (A004445 n).toNat

end

end A004458.P9057002412389115308

namespace A004458

/-- `A004462(A004445(n))` -/
def P9057002412389115308.Spec : Prop :=
  ∀ n, P9057002412389115308.a n = A004458 n

end A004458

/-! ## A004458.P16294755682410934579

`A004461(A004446(n))`
-/

namespace A004458.P16294755682410934579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (A004446 n).toNat

end

end A004458.P16294755682410934579

namespace A004458

/-- `A004461(A004446(n))` -/
def P16294755682410934579.Spec : Prop :=
  ∀ n, P16294755682410934579.a n = A004458 n

end A004458

/-! ## A004458.P6769691689576261707

`A004464(A004447(n))`
-/

namespace A004458.P6769691689576261707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (A004447 n).toNat

end

end A004458.P6769691689576261707

namespace A004458

/-- `A004464(A004447(n))` -/
def P6769691689576261707.Spec : Prop :=
  ∀ n, P6769691689576261707.a n = A004458 n

end A004458

/-! ## A004458.P13435293780057187038

`A004463(A004448(n))`
-/

namespace A004458.P13435293780057187038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (A004448 n).toNat

end

end A004458.P13435293780057187038

namespace A004458

/-- `A004463(A004448(n))` -/
def P13435293780057187038.Spec : Prop :=
  ∀ n, P13435293780057187038.a n = A004458 n

end A004458

/-! ## A004458.P4964274436131615544

`A004465(A004450(n))`
-/

namespace A004458.P4964274436131615544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A004450 n).toNat

end

end A004458.P4964274436131615544

namespace A004458

/-- `A004465(A004450(n))` -/
def P4964274436131615544.Spec : Prop :=
  ∀ n, P4964274436131615544.a n = A004458 n

end A004458

/-! ## A004458.P6396268065846276939

`A004457(A033999(n)+n)`
-/

namespace A004458.P6396268065846276939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (A033999 n + (n : ℤ)).toNat

end

end A004458.P6396268065846276939

namespace A004458

/-- `A004457(A033999(n)+n)` -/
def P6396268065846276939.Spec : Prop :=
  ∀ n, P6396268065846276939.a n = A004458 n

end A004458

/-! ## A004458.P12726091429383364906

`A004457(A004443(2*n)/2)`
-/

namespace A004458.P12726091429383364906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004458.P12726091429383364906

namespace A004458

/-- `A004457(A004443(2*n)/2)` -/
def P12726091429383364906.Spec : Prop :=
  ∀ n, P12726091429383364906.a n = A004458 n

end A004458

/-! ## A004458.P6318084665900099241

`A004460(A004445(2*n)/2)`
-/

namespace A004458.P6318084665900099241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (SequenceMachineLib.roundAway ((A004445 (2 * n) : ℚ) / 2)).toNat

end

end A004458.P6318084665900099241

namespace A004458

/-- `A004460(A004445(2*n)/2)` -/
def P6318084665900099241.Spec : Prop :=
  ∀ n, P6318084665900099241.a n = A004458 n

end A004458

/-! ## A004458.P7233317770536035693

`A004459(A004447(2*n)/2)`
-/

namespace A004458.P7233317770536035693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004459 (SequenceMachineLib.roundAway ((A004447 (2 * n) : ℚ) / 2)).toNat

end

end A004458.P7233317770536035693

namespace A004458

/-- `A004459(A004447(2*n)/2)` -/
def P7233317770536035693.Spec : Prop :=
  ∀ n, P7233317770536035693.a n = A004458 n

end A004458

/-! ## A004458.P3824379966640838059

`A004463(A004455(2*n)/2)`
-/

namespace A004458.P3824379966640838059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (SequenceMachineLib.roundAway ((A004455 (2 * n) : ℚ) / 2)).toNat

end

end A004458.P3824379966640838059

namespace A004458

/-- `A004463(A004455(2*n)/2)` -/
def P3824379966640838059.Spec : Prop :=
  ∀ n, P3824379966640838059.a n = A004458 n

end A004458

/-! ## A004458.P9129177132954731176

`A004465(A004459(2*n)/2)`
-/

namespace A004458.P9129177132954731176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (SequenceMachineLib.roundAway ((A004459 (2 * n) : ℚ) / 2)).toNat

end

end A004458.P9129177132954731176

namespace A004458

/-- `A004465(A004459(2*n)/2)` -/
def P9129177132954731176.Spec : Prop :=
  ∀ n, P9129177132954731176.a n = A004458 n

end A004458

/-! ## A004458.P13071212078216520968

`A004457(A004444(2*n+1)/2)`
-/

namespace A004458.P13071212078216520968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (SequenceMachineLib.roundAway ((A004444 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004458.P13071212078216520968

namespace A004458

/-- `A004457(A004444(2*n+1)/2)` -/
def P13071212078216520968.Spec : Prop :=
  ∀ n, P13071212078216520968.a n = A004458 n

end A004458

/-! ## A004458.P12074507842656003332

`A004460(A004446(2*n+1)/2)`
-/

namespace A004458.P12074507842656003332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (SequenceMachineLib.roundAway ((A004446 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004458.P12074507842656003332

namespace A004458

/-- `A004460(A004446(2*n+1)/2)` -/
def P12074507842656003332.Spec : Prop :=
  ∀ n, P12074507842656003332.a n = A004458 n

end A004458

/-! ## A004458.P9288672564115002522

`A004459(A004448(2*n+1)/2)`
-/

namespace A004458.P9288672564115002522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004459 (SequenceMachineLib.roundAway ((A004448 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004458.P9288672564115002522

namespace A004458

/-- `A004459(A004448(2*n+1)/2)` -/
def P9288672564115002522.Spec : Prop :=
  ∀ n, P9288672564115002522.a n = A004458 n

end A004458

/-! ## A004458.P10416313877317947848

`A004465(A004460(2*n+1)/2)`
-/

namespace A004458.P10416313877317947848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (SequenceMachineLib.roundAway ((A004460 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004458.P10416313877317947848

namespace A004458

/-- `A004465(A004460(2*n+1)/2)` -/
def P10416313877317947848.Spec : Prop :=
  ∀ n, P10416313877317947848.a n = A004458 n

end A004458

/-!
# A004459: Nimsum n + 18.

The programs for A004459, the canonical program `A004459.P6315174008285999898` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004459 has offset 0).

The definition of A004459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004459.P6315174008285999898

`xor(18, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004459

/-- `xor(18, n)` -/
def P6315174008285999898.Spec : Prop :=
  ∀ n, (P6315174008285999898.a n : ℤ) = A004459 n

theorem P6315174008285999898.correct : P6315174008285999898.Spec := by
  intro n
  simp only [A004459]

end A004459

/-! ## A004459.P4315114534406503810

`A004460(A004442(n))`
-/

namespace A004459.P4315114534406503810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (A004442 n).toNat

end

end A004459.P4315114534406503810

namespace A004459

/-- `A004460(A004442(n))` -/
def P4315114534406503810.Spec : Prop :=
  ∀ n, P4315114534406503810.a n = A004459 n

end A004459

/-! ## A004459.P16686381508128311273

`A004457(A004443(n))`
-/

namespace A004459.P16686381508128311273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (A004443 n).toNat

end

end A004459.P16686381508128311273

namespace A004459

/-- `A004457(A004443(n))` -/
def P16686381508128311273.Spec : Prop :=
  ∀ n, P16686381508128311273.a n = A004459 n

end A004459

/-! ## A004459.P675890666379614819

`A004458(A004444(n))`
-/

namespace A004459.P675890666379614819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (A004444 n).toNat

end

end A004459.P675890666379614819

namespace A004459

/-- `A004458(A004444(n))` -/
def P675890666379614819.Spec : Prop :=
  ∀ n, P675890666379614819.a n = A004459 n

end A004459

/-! ## A004459.P9742463005749187902

`A004463(A004445(n))`
-/

namespace A004459.P9742463005749187902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (A004445 n).toNat

end

end A004459.P9742463005749187902

namespace A004459

/-- `A004463(A004445(n))` -/
def P9742463005749187902.Spec : Prop :=
  ∀ n, P9742463005749187902.a n = A004459 n

end A004459

/-! ## A004459.P10019822940653707323

`A004464(A004446(n))`
-/

namespace A004459.P10019822940653707323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (A004446 n).toNat

end

end A004459.P10019822940653707323

namespace A004459

/-- `A004464(A004446(n))` -/
def P10019822940653707323.Spec : Prop :=
  ∀ n, P10019822940653707323.a n = A004459 n

end A004459

/-! ## A004459.P16777297505288553636

`A004461(A004447(n))`
-/

namespace A004459.P16777297505288553636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (A004447 n).toNat

end

end A004459.P16777297505288553636

namespace A004459

/-- `A004461(A004447(n))` -/
def P16777297505288553636.Spec : Prop :=
  ∀ n, P16777297505288553636.a n = A004459 n

end A004459

/-! ## A004459.P2382371129173348922

`A004462(A004448(n))`
-/

namespace A004459.P2382371129173348922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (A004448 n).toNat

end

end A004459.P2382371129173348922

namespace A004459

/-- `A004462(A004448(n))` -/
def P2382371129173348922.Spec : Prop :=
  ∀ n, P2382371129173348922.a n = A004459 n

end A004459

/-! ## A004459.P11202599637525946292

`A004465(A004451(n))`
-/

namespace A004459.P11202599637525946292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A004451 n).toNat

end

end A004459.P11202599637525946292

namespace A004459

/-- `A004465(A004451(n))` -/
def P11202599637525946292.Spec : Prop :=
  ∀ n, P11202599637525946292.a n = A004459 n

end A004459

/-! ## A004459.P15758118008864243412

`A004460(A033999(n)+n)`
-/

namespace A004459.P15758118008864243412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (A033999 n + (n : ℤ)).toNat

end

end A004459.P15758118008864243412

namespace A004459

/-- `A004460(A033999(n)+n)` -/
def P15758118008864243412.Spec : Prop :=
  ∀ n, P15758118008864243412.a n = A004459 n

end A004459

/-! ## A004459.P11920299538696328992

`A004460(n)-A033999(n)`
-/

namespace A004459.P11920299538696328992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 n - A033999 n

end

end A004459.P11920299538696328992

namespace A004459

/-- `A004460(n)-A033999(n)` -/
def P11920299538696328992.Spec : Prop :=
  ∀ n, P11920299538696328992.a n = A004459 n

end A004459

/-! ## A004459.P4616585545911541117

`A004460(A004443(2*n)/2)`
-/

namespace A004459.P4616585545911541117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004459.P4616585545911541117

namespace A004459

/-- `A004460(A004443(2*n)/2)` -/
def P4616585545911541117.Spec : Prop :=
  ∀ n, P4616585545911541117.a n = A004459 n

end A004459

/-! ## A004459.P14017493594204215821

`A080412(A004458(A080412(n)))`
-/

namespace A004459.P14017493594204215821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A004458 (A080412 n).toNat).toNat

end

end A004459.P14017493594204215821

namespace A004459

/-- `A080412(A004458(A080412(n)))` -/
def P14017493594204215821.Spec : Prop :=
  ∀ n, P14017493594204215821.a n = A004459 n

end A004459

/-! ## A004459.P16754497192697142524

`A263426(A004442(A263426(A004458(n))))`
-/

namespace A004459.P16754497192697142524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263426 (A004442 (A263426 (A004458 n).toNat).toNat).toNat

end

end A004459.P16754497192697142524

namespace A004459

/-- `A263426(A004442(A263426(A004458(n))))` -/
def P16754497192697142524.Spec : Prop :=
  ∀ n, P16754497192697142524.a n = A004459 n

end A004459

/-! ## A004459.P17649511180530733304

`A004457(A004445(2*n)/2)`
-/

namespace A004459.P17649511180530733304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (SequenceMachineLib.roundAway ((A004445 (2 * n) : ℚ) / 2)).toNat

end

end A004459.P17649511180530733304

namespace A004459

/-- `A004457(A004445(2*n)/2)` -/
def P17649511180530733304.Spec : Prop :=
  ∀ n, P17649511180530733304.a n = A004459 n

end A004459

/-! ## A004459.P12310159092699038262

`A004465(A004461(2*n)/2)`
-/

namespace A004459.P12310159092699038262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (SequenceMachineLib.roundAway ((A004461 (2 * n) : ℚ) / 2)).toNat

end

end A004459.P12310159092699038262

namespace A004459

/-- `A004465(A004461(2*n)/2)` -/
def P12310159092699038262.Spec : Prop :=
  ∀ n, P12310159092699038262.a n = A004459 n

end A004459

/-! ## A004459.P1748003366843548718

`A004458(A004447(2*n)/2)`
-/

namespace A004459.P1748003366843548718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (SequenceMachineLib.roundAway ((A004447 (2 * n) : ℚ) / 2)).toNat

end

end A004459.P1748003366843548718

namespace A004459

/-- `A004458(A004447(2*n)/2)` -/
def P1748003366843548718.Spec : Prop :=
  ∀ n, P1748003366843548718.a n = A004459 n

end A004459

/-! ## A004459.P7630176011828521620

`A004461(A004453(2*n)/2)`
-/

namespace A004459.P7630176011828521620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (SequenceMachineLib.roundAway ((A004453 (2 * n) : ℚ) / 2)).toNat

end

end A004459.P7630176011828521620

namespace A004459

/-- `A004461(A004453(2*n)/2)` -/
def P7630176011828521620.Spec : Prop :=
  ∀ n, P7630176011828521620.a n = A004459 n

end A004459

/-! ## A004459.P15518391976271554643

`A004460(A004444(2*n+1)/2)`
-/

namespace A004459.P15518391976271554643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (SequenceMachineLib.roundAway ((A004444 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004459.P15518391976271554643

namespace A004459

/-- `A004460(A004444(2*n+1)/2)` -/
def P15518391976271554643.Spec : Prop :=
  ∀ n, P15518391976271554643.a n = A004459 n

end A004459

/-! ## A004459.P6272905317800794814

`A004457(A004446(2*n+1)/2)`
-/

namespace A004459.P6272905317800794814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (SequenceMachineLib.roundAway ((A004446 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004459.P6272905317800794814

namespace A004459

/-- `A004457(A004446(2*n+1)/2)` -/
def P6272905317800794814.Spec : Prop :=
  ∀ n, P6272905317800794814.a n = A004459 n

end A004459

/-!
# A004460: Nimsum n + 19.

The programs for A004460, the canonical program `A004460.P12866462814468922612` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004460 has offset 0).

The definition of A004460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004460.P12866462814468922612

`xor(19, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004460

/-- `xor(19, n)` -/
def P12866462814468922612.Spec : Prop :=
  ∀ n, (P12866462814468922612.a n : ℤ) = A004460 n

theorem P12866462814468922612.correct : P12866462814468922612.Spec := by
  intro n
  simp only [A004460]

end A004460

/-! ## A004460.P17580300341866683465

`A004459(A004442(n))`
-/

namespace A004460.P17580300341866683465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004459 (A004442 n).toNat

end

end A004460.P17580300341866683465

namespace A004460

/-- `A004459(A004442(n))` -/
def P17580300341866683465.Spec : Prop :=
  ∀ n, P17580300341866683465.a n = A004460 n

end A004460

/-! ## A004460.P162459249276516542

`A004458(A004443(n))`
-/

namespace A004460.P162459249276516542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (A004443 n).toNat

end

end A004460.P162459249276516542

namespace A004460

/-- `A004458(A004443(n))` -/
def P162459249276516542.Spec : Prop :=
  ∀ n, P162459249276516542.a n = A004460 n

end A004460

/-! ## A004460.P12633035470841865467

`A004457(A004444(n))`
-/

namespace A004460.P12633035470841865467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (A004444 n).toNat

end

end A004460.P12633035470841865467

namespace A004460

/-- `A004457(A004444(n))` -/
def P12633035470841865467.Spec : Prop :=
  ∀ n, P12633035470841865467.a n = A004460 n

end A004460

/-! ## A004460.P16570619760234174747

`A004464(A004445(n))`
-/

namespace A004460.P16570619760234174747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (A004445 n).toNat

end

end A004460.P16570619760234174747

namespace A004460

/-- `A004464(A004445(n))` -/
def P16570619760234174747.Spec : Prop :=
  ∀ n, P16570619760234174747.a n = A004460 n

end A004460

/-! ## A004460.P16937832096095868630

`A004463(A004446(n))`
-/

namespace A004460.P16937832096095868630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (A004446 n).toNat

end

end A004460.P16937832096095868630

namespace A004460

/-- `A004463(A004446(n))` -/
def P16937832096095868630.Spec : Prop :=
  ∀ n, P16937832096095868630.a n = A004460 n

end A004460

/-! ## A004460.P18416687060349272452

`A004462(A004447(n))`
-/

namespace A004460.P18416687060349272452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (A004447 n).toNat

end

end A004460.P18416687060349272452

namespace A004460

/-- `A004462(A004447(n))` -/
def P18416687060349272452.Spec : Prop :=
  ∀ n, P18416687060349272452.a n = A004460 n

end A004460

/-! ## A004460.P13782842814873644083

`A004461(A004448(n))`
-/

namespace A004460.P13782842814873644083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (A004448 n).toNat

end

end A004460.P13782842814873644083

namespace A004460

/-- `A004461(A004448(n))` -/
def P13782842814873644083.Spec : Prop :=
  ∀ n, P13782842814873644083.a n = A004460 n

end A004460

/-! ## A004460.P9790906275895327707

`A004465(A004452(n))`
-/

namespace A004460.P9790906275895327707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A004452 n).toNat

end

end A004460.P9790906275895327707

namespace A004460

/-- `A004465(A004452(n))` -/
def P9790906275895327707.Spec : Prop :=
  ∀ n, P9790906275895327707.a n = A004460 n

end A004460

/-! ## A004460.P6676172198383761478

`A004459(A033999(n)+n)`
-/

namespace A004460.P6676172198383761478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004459 (A033999 n + (n : ℤ)).toNat

end

end A004460.P6676172198383761478

namespace A004460

/-- `A004459(A033999(n)+n)` -/
def P6676172198383761478.Spec : Prop :=
  ∀ n, P6676172198383761478.a n = A004460 n

end A004460

/-! ## A004460.P742552150855378813

`A004457(A132429(n)+n)`
-/

namespace A004460.P742552150855378813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (A132429 n + (n : ℤ)).toNat

end

end A004460.P742552150855378813

namespace A004460

/-- `A004457(A132429(n)+n)` -/
def P742552150855378813.Spec : Prop :=
  ∀ n, P742552150855378813.a n = A004460 n

end A004460

/-! ## A004460.P7465106604218298533

`A004459(A004443(2*n)/2)`
-/

namespace A004460.P7465106604218298533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004459 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004460.P7465106604218298533

namespace A004460

/-- `A004459(A004443(2*n)/2)` -/
def P7465106604218298533.Spec : Prop :=
  ∀ n, P7465106604218298533.a n = A004460 n

end A004460

/-! ## A004460.P15420185497643240312

`A263426(A004458(A263426(n)))`
-/

namespace A004460.P15420185497643240312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263426 (A004458 (A263426 n).toNat).toNat

end

end A004460.P15420185497643240312

namespace A004460

/-- `A263426(A004458(A263426(n)))` -/
def P15420185497643240312.Spec : Prop :=
  ∀ n, P15420185497643240312.a n = A004460 n

end A004460

/-! ## A004460.P13208310521444469272

`A080412(A004442(A080412(A004458(n))))`
-/

namespace A004460.P13208310521444469272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A004442 (A080412 (A004458 n).toNat).toNat).toNat

end

end A004460.P13208310521444469272

namespace A004460

/-- `A080412(A004442(A080412(A004458(n))))` -/
def P13208310521444469272.Spec : Prop :=
  ∀ n, P13208310521444469272.a n = A004460 n

end A004460

/-! ## A004460.P12768142182566096332

`A004458(A004445(2*n)/2)`
-/

namespace A004460.P12768142182566096332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (SequenceMachineLib.roundAway ((A004445 (2 * n) : ℚ) / 2)).toNat

end

end A004460.P12768142182566096332

namespace A004460

/-- `A004458(A004445(2*n)/2)` -/
def P12768142182566096332.Spec : Prop :=
  ∀ n, P12768142182566096332.a n = A004460 n

end A004460

/-! ## A004460.P14048027169708726057

`A004465(A004463(2*n)/2)`
-/

namespace A004460.P14048027169708726057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (SequenceMachineLib.roundAway ((A004463 (2 * n) : ℚ) / 2)).toNat

end

end A004460.P14048027169708726057

namespace A004460

/-- `A004465(A004463(2*n)/2)` -/
def P14048027169708726057.Spec : Prop :=
  ∀ n, P14048027169708726057.a n = A004460 n

end A004460

/-! ## A004460.P1458247805798545332

`A004457(A004447(2*n)/2)`
-/

namespace A004460.P1458247805798545332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (SequenceMachineLib.roundAway ((A004447 (2 * n) : ℚ) / 2)).toNat

end

end A004460.P1458247805798545332

namespace A004460

/-- `A004457(A004447(2*n)/2)` -/
def P1458247805798545332.Spec : Prop :=
  ∀ n, P1458247805798545332.a n = A004460 n

end A004460

/-! ## A004460.P17705846119250964708

`A004459(A004444(2*n+1)/2)`
-/

namespace A004460.P17705846119250964708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004459 (SequenceMachineLib.roundAway ((A004444 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004460.P17705846119250964708

namespace A004460

/-- `A004459(A004444(2*n+1)/2)` -/
def P17705846119250964708.Spec : Prop :=
  ∀ n, P17705846119250964708.a n = A004460 n

end A004460

/-! ## A004460.P7790420483108378741

`A004458(A004446(2*n+1)/2)`
-/

namespace A004460.P7790420483108378741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (SequenceMachineLib.roundAway ((A004446 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004460.P7790420483108378741

namespace A004460

/-- `A004458(A004446(2*n+1)/2)` -/
def P7790420483108378741.Spec : Prop :=
  ∀ n, P7790420483108378741.a n = A004460 n

end A004460

/-! ## A004460.P9989455145400370377

`A004457(A004448(2*n+1)/2)`
-/

namespace A004460.P9989455145400370377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (SequenceMachineLib.roundAway ((A004448 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004460.P9989455145400370377

namespace A004460

/-- `A004457(A004448(2*n+1)/2)` -/
def P9989455145400370377.Spec : Prop :=
  ∀ n, P9989455145400370377.a n = A004460 n

end A004460

/-!
# A004461: Nimsum n + 20.

The programs for A004461, the canonical program `A004461.P6677947374748279948` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004461 has offset 0).

The definition of A004461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004461.P6677947374748279948

`xor(20, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004461

/-- `xor(20, n)` -/
def P6677947374748279948.Spec : Prop :=
  ∀ n, (P6677947374748279948.a n : ℤ) = A004461 n

theorem P6677947374748279948.correct : P6677947374748279948.Spec := by
  intro n
  simp only [A004461]

end A004461

/-! ## A004461.P6833157913558357240

`A004462(A004442(n))`
-/

namespace A004461.P6833157913558357240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (A004442 n).toNat

end

end A004461.P6833157913558357240

namespace A004461

/-- `A004462(A004442(n))` -/
def P6833157913558357240.Spec : Prop :=
  ∀ n, P6833157913558357240.a n = A004461 n

end A004461

/-! ## A004461.P17958081020505608806

`A004463(A004443(n))`
-/

namespace A004461.P17958081020505608806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (A004443 n).toNat

end

end A004461.P17958081020505608806

namespace A004461

/-- `A004463(A004443(n))` -/
def P17958081020505608806.Spec : Prop :=
  ∀ n, P17958081020505608806.a n = A004461 n

end A004461

/-! ## A004461.P9944910363902734360

`A004457(A004445(n))`
-/

namespace A004461.P9944910363902734360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (A004445 n).toNat

end

end A004461.P9944910363902734360

namespace A004461

/-- `A004457(A004445(n))` -/
def P9944910363902734360.Spec : Prop :=
  ∀ n, P9944910363902734360.a n = A004461 n

end A004461

/-! ## A004461.P14645304938056720181

`A004464(A004444(n))`
-/

namespace A004461.P14645304938056720181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (A004444 n).toNat

end

end A004461.P14645304938056720181

namespace A004461

/-- `A004464(A004444(n))` -/
def P14645304938056720181.Spec : Prop :=
  ∀ n, P14645304938056720181.a n = A004461 n

end A004461

/-! ## A004461.P6245339649779928840

`A004458(A004446(n))`
-/

namespace A004461.P6245339649779928840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (A004446 n).toNat

end

end A004461.P6245339649779928840

namespace A004461

/-- `A004458(A004446(n))` -/
def P6245339649779928840.Spec : Prop :=
  ∀ n, P6245339649779928840.a n = A004461 n

end A004461

/-! ## A004461.P17411658052116831213

`A004459(A004447(n))`
-/

namespace A004461.P17411658052116831213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004459 (A004447 n).toNat

end

end A004461.P17411658052116831213

namespace A004461

/-- `A004459(A004447(n))` -/
def P17411658052116831213.Spec : Prop :=
  ∀ n, P17411658052116831213.a n = A004461 n

end A004461

/-! ## A004461.P7650426203616140625

`A004460(A004448(n))`
-/

namespace A004461.P7650426203616140625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (A004448 n).toNat

end

end A004461.P7650426203616140625

namespace A004461

/-- `A004460(A004448(n))` -/
def P7650426203616140625.Spec : Prop :=
  ∀ n, P7650426203616140625.a n = A004461 n

end A004461

/-! ## A004461.P14814189007482939936

`A004465(A004453(n))`
-/

namespace A004461.P14814189007482939936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A004453 n).toNat

end

end A004461.P14814189007482939936

namespace A004461

/-- `A004465(A004453(n))` -/
def P14814189007482939936.Spec : Prop :=
  ∀ n, P14814189007482939936.a n = A004461 n

end A004461

/-! ## A004461.P17774940135716168077

`A004462(A033999(n)+n)`
-/

namespace A004461.P17774940135716168077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (A033999 n + (n : ℤ)).toNat

end

end A004461.P17774940135716168077

namespace A004461

/-- `A004462(A033999(n)+n)` -/
def P17774940135716168077.Spec : Prop :=
  ∀ n, P17774940135716168077.a n = A004461 n

end A004461

/-! ## A004461.P13065058325023091082

`A004464(A132429(n)+n)`
-/

namespace A004461.P13065058325023091082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (A132429 n + (n : ℤ)).toNat

end

end A004461.P13065058325023091082

namespace A004461

/-- `A004464(A132429(n)+n)` -/
def P13065058325023091082.Spec : Prop :=
  ∀ n, P13065058325023091082.a n = A004461 n

end A004461

/-! ## A004461.P17849502761259099151

`A004462(n)-A033999(n)`
-/

namespace A004461.P17849502761259099151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 n - A033999 n

end

end A004461.P17849502761259099151

namespace A004461

/-- `A004462(n)-A033999(n)` -/
def P17849502761259099151.Spec : Prop :=
  ∀ n, P17849502761259099151.a n = A004461 n

end A004461

/-! ## A004461.P11556160460622852995

`A004464(n)-A132429(n)`
-/

namespace A004461.P11556160460622852995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 n - A132429 n

end

end A004461.P11556160460622852995

namespace A004461

/-- `A004464(n)-A132429(n)` -/
def P11556160460622852995.Spec : Prop :=
  ∀ n, P11556160460622852995.a n = A004461 n

end A004461

/-! ## A004461.P11797540764013623195

`A004462(A004443(2*n)/2)`
-/

namespace A004461.P11797540764013623195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004461.P11797540764013623195

namespace A004461

/-- `A004462(A004443(2*n)/2)` -/
def P11797540764013623195.Spec : Prop :=
  ∀ n, P11797540764013623195.a n = A004461 n

end A004461

/-! ## A004461.P6114242312421009857

`A004463(A004445(2*n)/2)`
-/

namespace A004461.P6114242312421009857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (SequenceMachineLib.roundAway ((A004445 (2 * n) : ℚ) / 2)).toNat

end

end A004461.P6114242312421009857

namespace A004461

/-- `A004463(A004445(2*n)/2)` -/
def P6114242312421009857.Spec : Prop :=
  ∀ n, P6114242312421009857.a n = A004461 n

end A004461

/-! ## A004461.P4999770533363363403

`A004464(A004447(2*n)/2)`
-/

namespace A004461.P4999770533363363403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (SequenceMachineLib.roundAway ((A004447 (2 * n) : ℚ) / 2)).toNat

end

end A004461.P4999770533363363403

namespace A004461

/-- `A004464(A004447(2*n)/2)` -/
def P4999770533363363403.Spec : Prop :=
  ∀ n, P4999770533363363403.a n = A004461 n

end A004461

/-! ## A004461.P9981414954756735373

`A004457(A004449(2*n)/2)`
-/

namespace A004461.P9981414954756735373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (SequenceMachineLib.roundAway ((A004449 (2 * n) : ℚ) / 2)).toNat

end

end A004461.P9981414954756735373

namespace A004461

/-- `A004457(A004449(2*n)/2)` -/
def P9981414954756735373.Spec : Prop :=
  ∀ n, P9981414954756735373.a n = A004461 n

end A004461

/-! ## A004461.P14941464765079751646

`A004465(A004465(2*n)/2)`
-/

namespace A004461.P14941464765079751646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (SequenceMachineLib.roundAway ((A004465 (2 * n) : ℚ) / 2)).toNat

end

end A004461.P14941464765079751646

namespace A004461

/-- `A004465(A004465(2*n)/2)` -/
def P14941464765079751646.Spec : Prop :=
  ∀ n, P14941464765079751646.a n = A004461 n

end A004461

/-! ## A004461.P6084653264533313838

`A004462(A004444(2*n+1)/2)`
-/

namespace A004461.P6084653264533313838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (SequenceMachineLib.roundAway ((A004444 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004461.P6084653264533313838

namespace A004461

/-- `A004462(A004444(2*n+1)/2)` -/
def P6084653264533313838.Spec : Prop :=
  ∀ n, P6084653264533313838.a n = A004461 n

end A004461

/-! ## A004461.P9914354350897440053

`A004463(A004446(2*n+1)/2)`
-/

namespace A004461.P9914354350897440053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (SequenceMachineLib.roundAway ((A004446 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004461.P9914354350897440053

namespace A004461

/-- `A004463(A004446(2*n+1)/2)` -/
def P9914354350897440053.Spec : Prop :=
  ∀ n, P9914354350897440053.a n = A004461 n

end A004461

/-!
# A004462: Nimsum n + 21.

The programs for A004462, the canonical program `A004462.P8309459996160460028` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004462 has offset 0).

The definition of A004462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004462.P8309459996160460028

`xor(21, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004462

/-- `xor(21, n)` -/
def P8309459996160460028.Spec : Prop :=
  ∀ n, (P8309459996160460028.a n : ℤ) = A004462 n

theorem P8309459996160460028.correct : P8309459996160460028.Spec := by
  intro n
  simp only [A004462]

end A004462

/-! ## A004462.P6718503716429679468

`A004461(A004442(n))`
-/

namespace A004462.P6718503716429679468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (A004442 n).toNat

end

end A004462.P6718503716429679468

namespace A004462

/-- `A004461(A004442(n))` -/
def P6718503716429679468.Spec : Prop :=
  ∀ n, P6718503716429679468.a n = A004462 n

end A004462

/-! ## A004462.P17632459203632888961

`A004464(A004443(n))`
-/

namespace A004462.P17632459203632888961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (A004443 n).toNat

end

end A004462.P17632459203632888961

namespace A004462

/-- `A004464(A004443(n))` -/
def P17632459203632888961.Spec : Prop :=
  ∀ n, P17632459203632888961.a n = A004462 n

end A004462

/-! ## A004462.P4779559312072835622

`A004463(A004444(n))`
-/

namespace A004462.P4779559312072835622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (A004444 n).toNat

end

end A004462.P4779559312072835622

namespace A004462

/-- `A004463(A004444(n))` -/
def P4779559312072835622.Spec : Prop :=
  ∀ n, P4779559312072835622.a n = A004462 n

end A004462

/-! ## A004462.P7445157360334243684

`A004458(A004445(n))`
-/

namespace A004462.P7445157360334243684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (A004445 n).toNat

end

end A004462.P7445157360334243684

namespace A004462

/-- `A004458(A004445(n))` -/
def P7445157360334243684.Spec : Prop :=
  ∀ n, P7445157360334243684.a n = A004462 n

end A004462

/-! ## A004462.P696097824014150719

`A004457(A004446(n))`
-/

namespace A004462.P696097824014150719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (A004446 n).toNat

end

end A004462.P696097824014150719

namespace A004462

/-- `A004457(A004446(n))` -/
def P696097824014150719.Spec : Prop :=
  ∀ n, P696097824014150719.a n = A004462 n

end A004462

/-! ## A004462.P11427594313650875199

`A004460(A004447(n))`
-/

namespace A004462.P11427594313650875199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (A004447 n).toNat

end

end A004462.P11427594313650875199

namespace A004462

/-- `A004460(A004447(n))` -/
def P11427594313650875199.Spec : Prop :=
  ∀ n, P11427594313650875199.a n = A004462 n

end A004462

/-! ## A004462.P2600684631281610679

`A004459(A004448(n))`
-/

namespace A004462.P2600684631281610679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004459 (A004448 n).toNat

end

end A004462.P2600684631281610679

namespace A004462

/-- `A004459(A004448(n))` -/
def P2600684631281610679.Spec : Prop :=
  ∀ n, P2600684631281610679.a n = A004462 n

end A004462

/-! ## A004462.P16484778867165038746

`A004465(A004454(n))`
-/

namespace A004462.P16484778867165038746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A004454 n).toNat

end

end A004462.P16484778867165038746

namespace A004462

/-- `A004465(A004454(n))` -/
def P16484778867165038746.Spec : Prop :=
  ∀ n, P16484778867165038746.a n = A004462 n

end A004462

/-! ## A004462.P3607908026285610017

`A004461(A033999(n)+n)`
-/

namespace A004462.P3607908026285610017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (A033999 n + (n : ℤ)).toNat

end

end A004462.P3607908026285610017

namespace A004462

/-- `A004461(A033999(n)+n)` -/
def P3607908026285610017.Spec : Prop :=
  ∀ n, P3607908026285610017.a n = A004462 n

end A004462

/-! ## A004462.P8223749865517261310

`A004461(A004443(2*n)/2)`
-/

namespace A004462.P8223749865517261310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004462.P8223749865517261310

namespace A004462

/-- `A004461(A004443(2*n)/2)` -/
def P8223749865517261310.Spec : Prop :=
  ∀ n, P8223749865517261310.a n = A004462 n

end A004462

/-! ## A004462.P9953795891903156942

`A004464(A004445(2*n)/2)`
-/

namespace A004462.P9953795891903156942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (SequenceMachineLib.roundAway ((A004445 (2 * n) : ℚ) / 2)).toNat

end

end A004462.P9953795891903156942

namespace A004462

/-- `A004464(A004445(2*n)/2)` -/
def P9953795891903156942.Spec : Prop :=
  ∀ n, P9953795891903156942.a n = A004462 n

end A004462

/-! ## A004462.P12698743450849101720

`A004463(A004447(2*n)/2)`
-/

namespace A004462.P12698743450849101720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (SequenceMachineLib.roundAway ((A004447 (2 * n) : ℚ) / 2)).toNat

end

end A004462.P12698743450849101720

namespace A004462

/-- `A004463(A004447(2*n)/2)` -/
def P12698743450849101720.Spec : Prop :=
  ∀ n, P12698743450849101720.a n = A004462 n

end A004462

/-! ## A004462.P15271563188741502449

`A004461(A004444(2*n+1)/2)`
-/

namespace A004462.P15271563188741502449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (SequenceMachineLib.roundAway ((A004444 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004462.P15271563188741502449

namespace A004462

/-- `A004461(A004444(2*n+1)/2)` -/
def P15271563188741502449.Spec : Prop :=
  ∀ n, P15271563188741502449.a n = A004462 n

end A004462

/-! ## A004462.P13782943612509593850

`A004464(A004446(2*n+1)/2)`
-/

namespace A004462.P13782943612509593850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (SequenceMachineLib.roundAway ((A004446 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004462.P13782943612509593850

namespace A004462

/-- `A004464(A004446(2*n+1)/2)` -/
def P13782943612509593850.Spec : Prop :=
  ∀ n, P13782943612509593850.a n = A004462 n

end A004462

/-! ## A004462.P2412484956175172834

`A004463(A004448(2*n+1)/2)`
-/

namespace A004462.P2412484956175172834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (SequenceMachineLib.roundAway ((A004448 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004462.P2412484956175172834

namespace A004462

/-- `A004463(A004448(2*n+1)/2)` -/
def P2412484956175172834.Spec : Prop :=
  ∀ n, P2412484956175172834.a n = A004462 n

end A004462

/-! ## A004462.P17943767753068043239

`A004458(A004450(2*n+1)/2)`
-/

namespace A004462.P17943767753068043239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (SequenceMachineLib.roundAway ((A004450 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004462.P17943767753068043239

namespace A004462

/-- `A004458(A004450(2*n+1)/2)` -/
def P17943767753068043239.Spec : Prop :=
  ∀ n, P17943767753068043239.a n = A004462 n

end A004462

/-!
# A004463: Nimsum n + 22.

The programs for A004463, the canonical program `A004463.P4983739786013873500` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004463 has offset 0).

The definition of A004463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004463.P4983739786013873500

`xor(n, 22)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004463

/-- `xor(n, 22)` -/
def P4983739786013873500.Spec : Prop :=
  ∀ n, (P4983739786013873500.a n : ℤ) = A004463 n

theorem P4983739786013873500.correct : P4983739786013873500.Spec := by
  intro n
  simp only [A004463]

end A004463

/-! ## A004463.P9731046555204724546

`A004464(A004442(n))`
-/

namespace A004463.P9731046555204724546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (A004442 n).toNat

end

end A004463.P9731046555204724546

namespace A004463

/-- `A004464(A004442(n))` -/
def P9731046555204724546.Spec : Prop :=
  ∀ n, P9731046555204724546.a n = A004463 n

end A004463

/-! ## A004463.P10211190425222324589

`A004461(A004443(n))`
-/

namespace A004463.P10211190425222324589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (A004443 n).toNat

end

end A004463.P10211190425222324589

namespace A004463

/-- `A004461(A004443(n))` -/
def P10211190425222324589.Spec : Prop :=
  ∀ n, P10211190425222324589.a n = A004463 n

end A004463

/-! ## A004463.P10255899579247251404

`A004462(A004444(n))`
-/

namespace A004463.P10255899579247251404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (A004444 n).toNat

end

end A004463.P10255899579247251404

namespace A004463

/-- `A004462(A004444(n))` -/
def P10255899579247251404.Spec : Prop :=
  ∀ n, P10255899579247251404.a n = A004463 n

end A004463

/-! ## A004463.P14332087734735046125

`A004459(A004445(n))`
-/

namespace A004463.P14332087734735046125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004459 (A004445 n).toNat

end

end A004463.P14332087734735046125

namespace A004463

/-- `A004459(A004445(n))` -/
def P14332087734735046125.Spec : Prop :=
  ∀ n, P14332087734735046125.a n = A004463 n

end A004463

/-! ## A004463.P7281323636516686065

`A004460(A004446(n))`
-/

namespace A004463.P7281323636516686065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (A004446 n).toNat

end

end A004463.P7281323636516686065

namespace A004463

/-- `A004460(A004446(n))` -/
def P7281323636516686065.Spec : Prop :=
  ∀ n, P7281323636516686065.a n = A004463 n

end A004463

/-! ## A004463.P1927061921208148784

`A004457(A004447(n))`
-/

namespace A004463.P1927061921208148784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (A004447 n).toNat

end

end A004463.P1927061921208148784

namespace A004463

/-- `A004457(A004447(n))` -/
def P1927061921208148784.Spec : Prop :=
  ∀ n, P1927061921208148784.a n = A004463 n

end A004463

/-! ## A004463.P305735815689210965

`A004458(A004448(n))`
-/

namespace A004463.P305735815689210965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (A004448 n).toNat

end

end A004463.P305735815689210965

namespace A004463

/-- `A004458(A004448(n))` -/
def P305735815689210965.Spec : Prop :=
  ∀ n, P305735815689210965.a n = A004463 n

end A004463

/-! ## A004463.P5264966811135594017

`A004465(A004455(n))`
-/

namespace A004463.P5264966811135594017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A004455 n).toNat

end

end A004463.P5264966811135594017

namespace A004463

/-- `A004465(A004455(n))` -/
def P5264966811135594017.Spec : Prop :=
  ∀ n, P5264966811135594017.a n = A004463 n

end A004463

/-! ## A004463.P8070031137029530368

`A004464(A033999(n)+n)`
-/

namespace A004463.P8070031137029530368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (A033999 n + (n : ℤ)).toNat

end

end A004463.P8070031137029530368

namespace A004463

/-- `A004464(A033999(n)+n)` -/
def P8070031137029530368.Spec : Prop :=
  ∀ n, P8070031137029530368.a n = A004463 n

end A004463

/-! ## A004463.P2984705492043226139

`A004464(n)-A033999(n)`
-/

namespace A004463.P2984705492043226139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 n - A033999 n

end

end A004463.P2984705492043226139

namespace A004463

/-- `A004464(n)-A033999(n)` -/
def P2984705492043226139.Spec : Prop :=
  ∀ n, P2984705492043226139.a n = A004463 n

end A004463

/-! ## A004463.P17563302455534458299

`A004464(A004443(2*n)/2)`
-/

namespace A004463.P17563302455534458299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004463.P17563302455534458299

namespace A004463

/-- `A004464(A004443(2*n)/2)` -/
def P17563302455534458299.Spec : Prop :=
  ∀ n, P17563302455534458299.a n = A004463 n

end A004463

/-! ## A004463.P11699531071512612562

`A004461(A004445(2*n)/2)`
-/

namespace A004463.P11699531071512612562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (SequenceMachineLib.roundAway ((A004445 (2 * n) : ℚ) / 2)).toNat

end

end A004463.P11699531071512612562

namespace A004463

/-- `A004461(A004445(2*n)/2)` -/
def P11699531071512612562.Spec : Prop :=
  ∀ n, P11699531071512612562.a n = A004463 n

end A004463

/-! ## A004463.P1611248850007321017

`A004462(A004447(2*n)/2)`
-/

namespace A004463.P1611248850007321017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (SequenceMachineLib.roundAway ((A004447 (2 * n) : ℚ) / 2)).toNat

end

end A004463.P1611248850007321017

namespace A004463

/-- `A004462(A004447(2*n)/2)` -/
def P1611248850007321017.Spec : Prop :=
  ∀ n, P1611248850007321017.a n = A004463 n

end A004463

/-! ## A004463.P16099622945411198262

`A004464(A004444(2*n+1)/2)`
-/

namespace A004463.P16099622945411198262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (SequenceMachineLib.roundAway ((A004444 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004463.P16099622945411198262

namespace A004463

/-- `A004464(A004444(2*n+1)/2)` -/
def P16099622945411198262.Spec : Prop :=
  ∀ n, P16099622945411198262.a n = A004463 n

end A004463

/-! ## A004463.P702161934263495787

`A004461(A004446(2*n+1)/2)`
-/

namespace A004463.P702161934263495787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (SequenceMachineLib.roundAway ((A004446 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004463.P702161934263495787

namespace A004463

/-- `A004461(A004446(2*n+1)/2)` -/
def P702161934263495787.Spec : Prop :=
  ∀ n, P702161934263495787.a n = A004463 n

end A004463

/-! ## A004463.P10780413052605389195

`A004462(A004448(2*n+1)/2)`
-/

namespace A004463.P10780413052605389195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (SequenceMachineLib.roundAway ((A004448 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004463.P10780413052605389195

namespace A004463

/-- `A004462(A004448(2*n+1)/2)` -/
def P10780413052605389195.Spec : Prop :=
  ∀ n, P10780413052605389195.a n = A004463 n

end A004463

/-! ## A004463.P18220970561609239349

`A004460(A004452(2*n+1)/2)`
-/

namespace A004463.P18220970561609239349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (SequenceMachineLib.roundAway ((A004452 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004463.P18220970561609239349

namespace A004463

/-- `A004460(A004452(2*n+1)/2)` -/
def P18220970561609239349.Spec : Prop :=
  ∀ n, P18220970561609239349.a n = A004463 n

end A004463

/-!
# A004464: Nimsum n + 23.

The programs for A004464, the canonical program `A004464.P11103565470095839840` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004464 has offset 0).

The definition of A004464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004464.P11103565470095839840

`xor(23, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004464

/-- `xor(23, n)` -/
def P11103565470095839840.Spec : Prop :=
  ∀ n, (P11103565470095839840.a n : ℤ) = A004464 n

theorem P11103565470095839840.correct : P11103565470095839840.Spec := by
  intro n
  simp only [A004464]

end A004464

/-! ## A004464.P12815261120267499137

`A004463(A004442(n))`
-/

namespace A004464.P12815261120267499137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (A004442 n).toNat

end

end A004464.P12815261120267499137

namespace A004464

/-- `A004463(A004442(n))` -/
def P12815261120267499137.Spec : Prop :=
  ∀ n, P12815261120267499137.a n = A004464 n

end A004464

/-! ## A004464.P965948452023314228

`A004462(A004443(n))`
-/

namespace A004464.P965948452023314228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (A004443 n).toNat

end

end A004464.P965948452023314228

namespace A004464

/-- `A004462(A004443(n))` -/
def P965948452023314228.Spec : Prop :=
  ∀ n, P965948452023314228.a n = A004464 n

end A004464

/-! ## A004464.P2597104703041430162

`A004461(A004444(n))`
-/

namespace A004464.P2597104703041430162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (A004444 n).toNat

end

end A004464.P2597104703041430162

namespace A004464

/-- `A004461(A004444(n))` -/
def P2597104703041430162.Spec : Prop :=
  ∀ n, P2597104703041430162.a n = A004464 n

end A004464

/-! ## A004464.P8088037044811941456

`A004460(A004445(n))`
-/

namespace A004464.P8088037044811941456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (A004445 n).toNat

end

end A004464.P8088037044811941456

namespace A004464

/-- `A004460(A004445(n))` -/
def P8088037044811941456.Spec : Prop :=
  ∀ n, P8088037044811941456.a n = A004464 n

end A004464

/-! ## A004464.P12120613302384824095

`A004459(A004446(n))`
-/

namespace A004464.P12120613302384824095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004459 (A004446 n).toNat

end

end A004464.P12120613302384824095

namespace A004464

/-- `A004459(A004446(n))` -/
def P12120613302384824095.Spec : Prop :=
  ∀ n, P12120613302384824095.a n = A004464 n

end A004464

/-! ## A004464.P93736241366544850

`A004458(A004447(n))`
-/

namespace A004464.P93736241366544850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (A004447 n).toNat

end

end A004464.P93736241366544850

namespace A004464

/-- `A004458(A004447(n))` -/
def P93736241366544850.Spec : Prop :=
  ∀ n, P93736241366544850.a n = A004464 n

end A004464

/-! ## A004464.P10594632273497077697

`A004457(A004448(n))`
-/

namespace A004464.P10594632273497077697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (A004448 n).toNat

end

end A004464.P10594632273497077697

namespace A004464

/-- `A004457(A004448(n))` -/
def P10594632273497077697.Spec : Prop :=
  ∀ n, P10594632273497077697.a n = A004464 n

end A004464

/-! ## A004464.P6077917420763768392

`A004465(A004456(n))`
-/

namespace A004464.P6077917420763768392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A004456 n).toNat

end

end A004464.P6077917420763768392

namespace A004464

/-- `A004465(A004456(n))` -/
def P6077917420763768392.Spec : Prop :=
  ∀ n, P6077917420763768392.a n = A004464 n

end A004464

/-! ## A004464.P10044193401290014689

`A004463(A033999(n)+n)`
-/

namespace A004464.P10044193401290014689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (A033999 n + (n : ℤ)).toNat

end

end A004464.P10044193401290014689

namespace A004464

/-- `A004463(A033999(n)+n)` -/
def P10044193401290014689.Spec : Prop :=
  ∀ n, P10044193401290014689.a n = A004464 n

end A004464

/-! ## A004464.P15994672178413555113

`A004461(A132429(n)+n)`
-/

namespace A004464.P15994672178413555113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (A132429 n + (n : ℤ)).toNat

end

end A004464.P15994672178413555113

namespace A004464

/-- `A004461(A132429(n)+n)` -/
def P15994672178413555113.Spec : Prop :=
  ∀ n, P15994672178413555113.a n = A004464 n

end A004464

/-! ## A004464.P11272539215792333847

`A004463(A004443(2*n)/2)`
-/

namespace A004464.P11272539215792333847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

end

end A004464.P11272539215792333847

namespace A004464

/-- `A004463(A004443(2*n)/2)` -/
def P11272539215792333847.Spec : Prop :=
  ∀ n, P11272539215792333847.a n = A004464 n

end A004464

/-! ## A004464.P8416330567191280298

`A004462(A004445(2*n)/2)`
-/

namespace A004464.P8416330567191280298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (SequenceMachineLib.roundAway ((A004445 (2 * n) : ℚ) / 2)).toNat

end

end A004464.P8416330567191280298

namespace A004464

/-- `A004462(A004445(2*n)/2)` -/
def P8416330567191280298.Spec : Prop :=
  ∀ n, P8416330567191280298.a n = A004464 n

end A004464

/-! ## A004464.P16903840704916096452

`A004461(A004447(2*n)/2)`
-/

namespace A004464.P16903840704916096452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (SequenceMachineLib.roundAway ((A004447 (2 * n) : ℚ) / 2)).toNat

end

end A004464.P16903840704916096452

namespace A004464

/-- `A004461(A004447(2*n)/2)` -/
def P16903840704916096452.Spec : Prop :=
  ∀ n, P16903840704916096452.a n = A004464 n

end A004464

/-! ## A004464.P8397671462295254878

`A004459(A004451(2*n)/2)`
-/

namespace A004464.P8397671462295254878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004459 (SequenceMachineLib.roundAway ((A004451 (2 * n) : ℚ) / 2)).toNat

end

end A004464.P8397671462295254878

namespace A004464

/-- `A004459(A004451(2*n)/2)` -/
def P8397671462295254878.Spec : Prop :=
  ∀ n, P8397671462295254878.a n = A004464 n

end A004464

/-! ## A004464.P10920733274405699960

`A004463(A004444(2*n+1)/2)`
-/

namespace A004464.P10920733274405699960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (SequenceMachineLib.roundAway ((A004444 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004464.P10920733274405699960

namespace A004464

/-- `A004463(A004444(2*n+1)/2)` -/
def P10920733274405699960.Spec : Prop :=
  ∀ n, P10920733274405699960.a n = A004464 n

end A004464

/-! ## A004464.P9152658975209716425

`A004462(A004446(2*n+1)/2)`
-/

namespace A004464.P9152658975209716425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (SequenceMachineLib.roundAway ((A004446 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004464.P9152658975209716425

namespace A004464

/-- `A004462(A004446(2*n+1)/2)` -/
def P9152658975209716425.Spec : Prop :=
  ∀ n, P9152658975209716425.a n = A004464 n

end A004464

/-! ## A004464.P7796638382799706068

`A004461(A004448(2*n+1)/2)`
-/

namespace A004464.P7796638382799706068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (SequenceMachineLib.roundAway ((A004448 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004464.P7796638382799706068

namespace A004464

/-- `A004461(A004448(2*n+1)/2)` -/
def P7796638382799706068.Spec : Prop :=
  ∀ n, P7796638382799706068.a n = A004464 n

end A004464

/-!
# A004465: Nimsum n + 24.

The programs for A004465, the canonical program `A004465.P16475507626578770177` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004465 has offset 0).

The definition of A004465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004465.P16475507626578770177

`xor(24, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004465

/-- `xor(24, n)` -/
def P16475507626578770177.Spec : Prop :=
  ∀ n, (P16475507626578770177.a n : ℤ) = A004465 n

theorem P16475507626578770177.correct : P16475507626578770177.Spec := by
  intro n
  simp only [A004465]

end A004465

/-! ## A004465.P9534459145438148309

`A004457(A004449(n))`
-/

namespace A004465.P9534459145438148309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (A004449 n).toNat

end

end A004465.P9534459145438148309

namespace A004465

/-- `A004457(A004449(n))` -/
def P9534459145438148309.Spec : Prop :=
  ∀ n, P9534459145438148309.a n = A004465 n

end A004465

/-! ## A004465.P7585428486239324809

`A004458(A004450(n))`
-/

namespace A004465.P7585428486239324809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (A004450 n).toNat

end

end A004465.P7585428486239324809

namespace A004465

/-- `A004458(A004450(n))` -/
def P7585428486239324809.Spec : Prop :=
  ∀ n, P7585428486239324809.a n = A004465 n

end A004465

/-! ## A004465.P6096859127114337524

`A004459(A004451(n))`
-/

namespace A004465.P6096859127114337524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004459 (A004451 n).toNat

end

end A004465.P6096859127114337524

namespace A004465

/-- `A004459(A004451(n))` -/
def P6096859127114337524.Spec : Prop :=
  ∀ n, P6096859127114337524.a n = A004465 n

end A004465

/-! ## A004465.P11406977002908688972

`A004460(A004452(n))`
-/

namespace A004465.P11406977002908688972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (A004452 n).toNat

end

end A004465.P11406977002908688972

namespace A004465

/-- `A004460(A004452(n))` -/
def P11406977002908688972.Spec : Prop :=
  ∀ n, P11406977002908688972.a n = A004465 n

end A004465

/-! ## A004465.P16737385295330919870

`A004461(A004453(n))`
-/

namespace A004465.P16737385295330919870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004461 (A004453 n).toNat

end

end A004465.P16737385295330919870

namespace A004465

/-- `A004461(A004453(n))` -/
def P16737385295330919870.Spec : Prop :=
  ∀ n, P16737385295330919870.a n = A004465 n

end A004465

/-! ## A004465.P15213317224253858290

`A004462(A004454(n))`
-/

namespace A004465.P15213317224253858290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004462 (A004454 n).toNat

end

end A004465.P15213317224253858290

namespace A004465

/-- `A004462(A004454(n))` -/
def P15213317224253858290.Spec : Prop :=
  ∀ n, P15213317224253858290.a n = A004465 n

end A004465

/-! ## A004465.P11807229823304811719

`A004463(A004455(n))`
-/

namespace A004465.P11807229823304811719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 (A004455 n).toNat

end

end A004465.P11807229823304811719

namespace A004465

/-- `A004463(A004455(n))` -/
def P11807229823304811719.Spec : Prop :=
  ∀ n, P11807229823304811719.a n = A004465 n

end A004465

/-! ## A004465.P7978112613615432052

`A004464(A004456(n))`
-/

namespace A004465.P7978112613615432052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (A004456 n).toNat

end

end A004465.P7978112613615432052

namespace A004465

/-- `A004464(A004456(n))` -/
def P7978112613615432052.Spec : Prop :=
  ∀ n, P7978112613615432052.a n = A004465 n

end A004465

/-! ## A004465.P9023141718801390781

`A004459(A004461(2*n)/2)`
-/

namespace A004465.P9023141718801390781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004459 (SequenceMachineLib.roundAway ((A004461 (2 * n) : ℚ) / 2)).toNat

end

end A004465.P9023141718801390781

namespace A004465

/-- `A004459(A004461(2*n)/2)` -/
def P9023141718801390781.Spec : Prop :=
  ∀ n, P9023141718801390781.a n = A004465 n

end A004465

/-! ## A004465.P16047620037479609662

`A004460(A004463(2*n)/2)`
-/

namespace A004465.P16047620037479609662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (SequenceMachineLib.roundAway ((A004463 (2 * n) : ℚ) / 2)).toNat

end

end A004465.P16047620037479609662

namespace A004465

/-- `A004460(A004463(2*n)/2)` -/
def P16047620037479609662.Spec : Prop :=
  ∀ n, P16047620037479609662.a n = A004465 n

end A004465

/-! ## A004465.P8556513663257223276

`A004457(A004457(2*n)/2)`
-/

namespace A004465.P8556513663257223276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (SequenceMachineLib.roundAway ((A004457 (2 * n) : ℚ) / 2)).toNat

end

end A004465.P8556513663257223276

namespace A004465

/-- `A004457(A004457(2*n)/2)` -/
def P8556513663257223276.Spec : Prop :=
  ∀ n, P8556513663257223276.a n = A004465 n

end A004465

/-! ## A004465.P15643151153957859249

`A004458(A004459(2*n)/2)`
-/

namespace A004465.P15643151153957859249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (SequenceMachineLib.roundAway ((A004459 (2 * n) : ℚ) / 2)).toNat

end

end A004465.P15643151153957859249

namespace A004465

/-- `A004458(A004459(2*n)/2)` -/
def P15643151153957859249.Spec : Prop :=
  ∀ n, P15643151153957859249.a n = A004465 n

end A004465

/-! ## A004465.P9108899450293815619

`A004459(A004462(2*n+1)/2)`
-/

namespace A004465.P9108899450293815619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004459 (SequenceMachineLib.roundAway ((A004462 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004465.P9108899450293815619

namespace A004465

/-- `A004459(A004462(2*n+1)/2)` -/
def P9108899450293815619.Spec : Prop :=
  ∀ n, P9108899450293815619.a n = A004465 n

end A004465

/-! ## A004465.P3158109834612271657

`A004460(A004464(2*n+1)/2)`
-/

namespace A004465.P3158109834612271657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004460 (SequenceMachineLib.roundAway ((A004464 (2 * n + 1) : ℚ) / 2)).toNat

end

end A004465.P3158109834612271657

namespace A004465

/-- `A004460(A004464(2*n+1)/2)` -/
def P3158109834612271657.Spec : Prop :=
  ∀ n, P3158109834612271657.a n = A004465 n

end A004465

/-!
# A004466: a(n) = n*(5*n^2 - 2)/3.

The programs for A004466, the canonical program `A004466.P11767468550851547535` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004466 has offset 0).

The definition of A004466 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(5*n²-2)/3` (program `A004466.P17709469129505755603`, by `A004466.P17709469129505755603.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004466.P17709469129505755603

`n*(5*n²-2)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004466.P17709469129505755603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((5 * n ^ 2 : ℤ) - 2) : ℚ) / 3

end

end A004466.P17709469129505755603

namespace A004466

/-- `n*(5*n²-2)/3` -/
def P17709469129505755603.Spec : Prop :=
  ∀ n, P17709469129505755603.a n = (A004466 n : ℚ)

theorem P17709469129505755603.correct : P17709469129505755603.Spec := by
  intro n
  induction n with
  | zero => simp [A004466, A004466.P17709469129505755603.a, A004466.P11767468550851547535.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A004466, Nat.add_sub_cancel, A004466.P17709469129505755603.a, A004466.P11767468550851547535.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A004466

/-! ## A004466.P12279877381528618340

`∑[10*C(n, 2)]+n`
-/

namespace A004466.P12279877381528618340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A004466.P12279877381528618340

namespace A004466

/-- `∑[10*C(n, 2)]+n` -/
def P12279877381528618340.Spec : Prop :=
  ∀ n, (P12279877381528618340.a n : ℤ) = A004466 n

end A004466

/-! ## A004466.P5167455569250019790

`10*C(n+1, 3)+n`
-/

namespace A004466.P5167455569250019790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (n + 1) 3 + n

end

end A004466.P5167455569250019790

namespace A004466

/-- `10*C(n+1, 3)+n` -/
def P5167455569250019790.Spec : Prop :=
  ∀ n, (P5167455569250019790.a n : ℤ) = A004466 n

end A004466

/-! ## A004466.P4757473387002302469

`∑[∑[record[n*gcd(5, n%2)]]]`
-/

namespace A004466.P4757473387002302469
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 5 (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004466.P4757473387002302469

namespace A004466

/-- `∑[∑[record[n*gcd(5, n%2)]]]` -/
def P4757473387002302469.Spec : Prop :=
  ∀ n, (P4757473387002302469.a n : ℤ) = A004466 n

end A004466

/-! ## A004466.P4350656164124680091

`∑[∑[a(n-1)+10]]` with `a(0)=0, a(1)=1, a(2)=10`
-/

namespace A004466.P4350656164124680091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 10] fun n f2 =>
  f2 (n - 1) + 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004466.P4350656164124680091

namespace A004466

/-- `∑[∑[a(n-1)+10]]` -/
def P4350656164124680091.Spec : Prop :=
  ∀ n, (P4350656164124680091.a n : ℤ) = A004466 n

end A004466

/-! ## A004466.P11767468550851547535

`a(n-1)+5*n²-5*n+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004466

/-- `a(n-1)+5*n²-5*n+1` -/
def P11767468550851547535.Spec : Prop :=
  ∀ n, P11767468550851547535.a n = A004466 n

theorem P11767468550851547535.correct : P11767468550851547535.Spec := by
  intro n
  simp only [A004466]

end A004466

/-! ## A004466.P6097661445398156077

`∑[A386485(n)-1]`
-/

namespace A004466.P6097661445398156077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386485 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004466.P6097661445398156077

namespace A004466

/-- `∑[A386485(n)-1]` -/
def P6097661445398156077.Spec : Prop :=
  ∀ n, P6097661445398156077.a n = A004466 n

end A004466

/-! ## A004466.P7937347399171857269

`2*A004068(n)-n`
-/

namespace A004466.P7937347399171857269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004068 n - (n : ℤ)

end

end A004466.P7937347399171857269

namespace A004466

/-- `2*A004068(n)-n` -/
def P7937347399171857269.Spec : Prop :=
  ∀ n, P7937347399171857269.a n = A004466 n

end A004466

/-! ## A004466.P8225577655299881615

`A259110(n)-n^3`
-/

namespace A004466.P8225577655299881615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 n - (n ^ 3 : ℤ)

end

end A004466.P8225577655299881615

namespace A004466

/-- `A259110(n)-n^3` -/
def P8225577655299881615.Spec : Prop :=
  ∀ n, P8225577655299881615.a n = A004466 n

end A004466

/-! ## A004466.P7552955136844158722

`∑[A135706(n)]-n²`
-/

namespace A004466.P7552955136844158722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A004466.P7552955136844158722

namespace A004466

/-- `∑[A135706(n)]-n²` -/
def P7552955136844158722.Spec : Prop :=
  ∀ n, P7552955136844158722.a n = A004466 n

end A004466

/-! ## A004466.P4277764543392717063

`∑[(n-1)*A008706(n)+1]`
-/

namespace A004466.P4277764543392717063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A008706 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004466.P4277764543392717063

namespace A004466

/-- `∑[(n-1)*A008706(n)+1]` -/
def P4277764543392717063.Spec : Prop :=
  ∀ n, P4277764543392717063.a n = A004466 n

end A004466

/-! ## A004466.P14181937628172971175

`∑[(A004277(n)+3*n)*(n-1)+1]`
-/

namespace A004466.P14181937628172971175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n + (3 * n : ℤ)) * ((n : ℤ) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004466.P14181937628172971175

namespace A004466

/-- `∑[(A004277(n)+3*n)*(n-1)+1]` -/
def P14181937628172971175.Spec : Prop :=
  ∀ n, P14181937628172971175.a n = A004466 n

end A004466

/-! ## A004466.P11765179948163690561

`A135503(n)+A004126(n)`
-/

namespace A004466.P11765179948163690561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A004126 n

end

end A004466.P11765179948163690561

namespace A004466

/-- `A135503(n)+A004126(n)` -/
def P11765179948163690561.Spec : Prop :=
  ∀ n, P11765179948163690561.a n = A004466 n

end A004466

/-! ## A004466.P6711303767515629892

`A146298(n)+A011379(n)`
-/

namespace A004466.P6711303767515629892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146298 n + A011379 n

end

end A004466.P6711303767515629892

namespace A004466

/-- `A146298(n)+A011379(n)` -/
def P6711303767515629892.Spec : Prop :=
  ∀ n, P6711303767515629892.a n = A004466 n

end A004466

/-! ## A004466.P13137870329294512406

`A152015(n)+A006331(n)`
-/

namespace A004466.P13137870329294512406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152015 n + A006331 n

end

end A004466.P13137870329294512406

namespace A004466

/-- `A152015(n)+A006331(n)` -/
def P13137870329294512406.Spec : Prop :=
  ∀ n, P13137870329294512406.a n = A004466 n

end A004466

/-! ## A004466.P5109849811380673417

`A160378(n)+A002412(n)`
-/

namespace A004466.P5109849811380673417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + A002412 n

end

end A004466.P5109849811380673417

namespace A004466

/-- `A160378(n)+A002412(n)` -/
def P5109849811380673417.Spec : Prop :=
  ∀ n, P5109849811380673417.a n = A004466 n

end A004466

/-! ## A004466.P15982416701336601524

`A188475(n)+A083074(n)`
-/

namespace A004466.P15982416701336601524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188475 n + A083074 n

end

end A004466.P15982416701336601524

namespace A004466

/-- `A188475(n)+A083074(n)` -/
def P15982416701336601524.Spec : Prop :=
  ∀ n, P15982416701336601524.a n = A004466 n

end A004466

/-! ## A004466.P6606308388721002557

`A015237(n)-A007290(n)`
-/

namespace A004466.P6606308388721002557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n - A007290 n

end

end A004466.P6606308388721002557

namespace A004466

/-- `A015237(n)-A007290(n)` -/
def P6606308388721002557.Spec : Prop :=
  ∀ n, P6606308388721002557.a n = A004466 n

end A004466

/-! ## A004466.P9953961462880310299

`A033431(n)-A006527(n)`
-/

namespace A004466.P9953961462880310299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n - A006527 n

end

end A004466.P9953961462880310299

namespace A004466

/-- `A033431(n)-A006527(n)` -/
def P9953961462880310299.Spec : Prop :=
  ∀ n, P9953961462880310299.a n = A004466 n

end A004466

/-! ## A004466.P15159758452004348969

`A050441(n)-A005581(n)`
-/

namespace A004466.P15159758452004348969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050441 n - A005581 n

end

end A004466.P15159758452004348969

namespace A004466

/-- `A050441(n)-A005581(n)` -/
def P15159758452004348969.Spec : Prop :=
  ∀ n, P15159758452004348969.a n = A004466 n

end A004466

/-!
# A004467: a(n) = n*(11*n^2 - 5)/6.

The programs for A004467, the canonical program `A004467.P4989319355349146346` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004467 has offset 0).

The definition of A004467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n²-5)/6` (program `A004467.P2491601858511119506`, by `A004467.P2491601858511119506.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004467.P2491601858511119506

`n*(11*n²-5)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004467.P2491601858511119506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((11 * n ^ 2 : ℤ) - 5) : ℚ) / 6

end

end A004467.P2491601858511119506

namespace A004467

/-- `n*(11*n²-5)/6` -/
def P2491601858511119506.Spec : Prop :=
  ∀ n, P2491601858511119506.a n = (A004467 n : ℚ)

theorem P2491601858511119506.correct : P2491601858511119506.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A004467, Nat.add_sub_cancel, A004467.P2491601858511119506.a, A004467.P4989319355349146346.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A004467, Nat.add_sub_cancel, A004467.P2491601858511119506.a, A004467.P4989319355349146346.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A004467

/-! ## A004467.P4989319355349146346

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=13, a(3)=47`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004467

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4989319355349146346.Spec : Prop :=
  ∀ n, P4989319355349146346.a n = A004467 n

theorem P4989319355349146346.correct : P4989319355349146346.Spec := by
  intro n
  simp only [A004467]

end A004467

/-! ## A004467.P8394018076993231837

`∑[11*C(n, 2)]+n`
-/

namespace A004467.P8394018076993231837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A004467.P8394018076993231837

namespace A004467

/-- `∑[11*C(n, 2)]+n` -/
def P8394018076993231837.Spec : Prop :=
  ∀ n, (P8394018076993231837.a n : ℤ) = A004467 n

end A004467

/-! ## A004467.P17154095649724627489

`11*C(n+1, 3)+n`
-/

namespace A004467.P17154095649724627489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * Nat.choose (n + 1) 3 + n

end

end A004467.P17154095649724627489

namespace A004467

/-- `11*C(n+1, 3)+n` -/
def P17154095649724627489.Spec : Prop :=
  ∀ n, (P17154095649724627489.a n : ℤ) = A004467 n

end A004467

/-! ## A004467.P10866726005859126210

`∑[A180223(n)]-n²`
-/

namespace A004467.P10866726005859126210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A004467.P10866726005859126210

namespace A004467

/-- `∑[A180223(n)]-n²` -/
def P10866726005859126210.Spec : Prop :=
  ∀ n, P10866726005859126210.a n = A004467 n

end A004467

/-! ## A004467.P8501305776383386735

`∑[A389625(n)-(n+1)]`
-/

namespace A004467.P8501305776383386735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389625 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004467.P8501305776383386735

namespace A004467

/-- `∑[A389625(n)-(n+1)]` -/
def P8501305776383386735.Spec : Prop :=
  ∀ n, P8501305776383386735.a n = A004467 n

end A004467

/-! ## A004467.P18227891643066432431

`A215646(n)-∑[2*n]`
-/

namespace A004467.P18227891643066432431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215646 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004467.P18227891643066432431

namespace A004467

/-- `A215646(n)-∑[2*n]` -/
def P18227891643066432431.Spec : Prop :=
  ∀ n, P18227891643066432431.a n = A004467 n

end A004467

/-! ## A004467.P9263934942906389568

`A050441(n)+n-∑[n]`
-/

namespace A004467.P9263934942906389568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050441 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A004467.P9263934942906389568

namespace A004467

/-- `A050441(n)+n-∑[n]` -/
def P9263934942906389568.Spec : Prop :=
  ∀ n, P9263934942906389568.a n = A004467 n

end A004467

/-! ## A004467.P13239433582923327169

`∑[A051865(n)-n]+n`
-/

namespace A004467.P13239433582923327169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A004467.P13239433582923327169

namespace A004467

/-- `∑[A051865(n)-n]+n` -/
def P13239433582923327169.Spec : Prop :=
  ∀ n, P13239433582923327169.a n = A004467 n

end A004467

/-! ## A004467.P13182829335614150535

`a(n-1)+A069125(n)` with `a(0)=0`
-/

namespace A004467.P13182829335614150535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A069125 n

end

end A004467.P13182829335614150535

namespace A004467

/-- `a(n-1)+A069125(n)` -/
def P13182829335614150535.Spec : Prop :=
  ∀ n, P13182829335614150535.a n = A004467 n

end A004467

/-! ## A004467.P3461647878746300234

`∑[∑[11*n]]-A211013(n)`
-/

namespace A004467.P3461647878746300234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A211013 n

end

end A004467.P3461647878746300234

namespace A004467

/-- `∑[∑[11*n]]-A211013(n)` -/
def P3461647878746300234.Spec : Prop :=
  ∀ n, P3461647878746300234.a n = A004467 n

end A004467

/-! ## A004467.P4135442469473007930

`A135503(n)+A000447(n)`
-/

namespace A004467.P4135442469473007930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A000447 n

end

end A004467.P4135442469473007930

namespace A004467

/-- `A135503(n)+A000447(n)` -/
def P4135442469473007930.Spec : Prop :=
  ∀ n, P4135442469473007930.a n = A004467 n

end A004467

/-! ## A004467.P6684010087638787570

`A160378(n)+A002413(n)`
-/

namespace A004467.P6684010087638787570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + A002413 n

end

end A004467.P6684010087638787570

namespace A004467

/-- `A160378(n)+A002413(n)` -/
def P6684010087638787570.Spec : Prop :=
  ∀ n, P6684010087638787570.a n = A004467 n

end A004467

/-! ## A004467.P92708259246640414

`A033562(n)-A000125(n)`
-/

namespace A004467.P92708259246640414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 n - A000125 n

end

end A004467.P92708259246640414

namespace A004467

/-- `A033562(n)-A000125(n)` -/
def P92708259246640414.Spec : Prop :=
  ∀ n, P92708259246640414.a n = A004467 n

end A004467

/-! ## A004467.P12203385275196815834

`A033431(n)-A004006(n)`
-/

namespace A004467.P12203385275196815834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n - A004006 n

end

end A004467.P12203385275196815834

namespace A004467

/-- `A033431(n)-A004006(n)` -/
def P12203385275196815834.Spec : Prop :=
  ∀ n, P12203385275196815834.a n = A004467 n

end A004467

/-! ## A004467.P4883168131319996556

`A132112(n)-A014105(n)`
-/

namespace A004467.P4883168131319996556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132112 n - A014105 n

end

end A004467.P4883168131319996556

namespace A004467

/-- `A132112(n)-A014105(n)` -/
def P4883168131319996556.Spec : Prop :=
  ∀ n, P4883168131319996556.a n = A004467 n

end A004467

/-! ## A004467.P4013976878095733429

`A172073(n)-A005581(n)`
-/

namespace A004467.P4013976878095733429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172073 n - A005581 n

end

end A004467.P4013976878095733429

namespace A004467

/-- `A172073(n)-A005581(n)` -/
def P4013976878095733429.Spec : Prop :=
  ∀ n, P4013976878095733429.a n = A004467 n

end A004467

/-! ## A004467.P4811345456725538393

`A063521(n)-A135503(n)`
-/

namespace A004467.P4811345456725538393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063521 n - A135503 n

end

end A004467.P4811345456725538393

namespace A004467

/-- `A063521(n)-A135503(n)` -/
def P4811345456725538393.Spec : Prop :=
  ∀ n, P4811345456725538393.a n = A004467 n

end A004467

/-! ## A004467.P11274986221188300305

`A177890(n)-A051925(n)`
-/

namespace A004467.P11274986221188300305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177890 n - A051925 n

end

end A004467.P11274986221188300305

namespace A004467

/-- `A177890(n)-A051925(n)` -/
def P11274986221188300305.Spec : Prop :=
  ∀ n, P11274986221188300305.a n = A004467 n

end A004467

/-! ## A004467.P17444722426671565625

`A259110(n)-A004068(n)`
-/

namespace A004467.P17444722426671565625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 n - A004068 n

end

end A004467.P17444722426671565625

namespace A004467

/-- `A259110(n)-A004068(n)` -/
def P17444722426671565625.Spec : Prop :=
  ∀ n, P17444722426671565625.a n = A004467 n

end A004467

/-!
# A004468: a(n) = Nim product 3 * n.

The programs for A004468, the canonical program `A004468.P6433423827576270344` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004468 has offset 0).

The definition of A004468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004468.P6433423827576270344

`xor(n, floor(n/2))+2*(n-a(floor(n/2)))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004468

/-- `xor(n, floor(n/2))+2*(n-a(floor(n/2)))` -/
def P6433423827576270344.Spec : Prop :=
  ∀ n, P6433423827576270344.a n = A004468 n

theorem P6433423827576270344.correct : P6433423827576270344.Spec := by
  intro n
  simp only [A004468]

end A004468

/-! ## A004468.P1124769768418114167

`xor(n, A006015(n))`
-/

namespace A004468.P1124769768418114167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A006015 n)

end

end A004468.P1124769768418114167

namespace A004468

/-- `xor(n, A006015(n))` -/
def P1124769768418114167.Spec : Prop :=
  ∀ n, P1124769768418114167.a n = A004468 n

end A004468

/-! ## A004468.P1226691425252390670

`A003188(n)+2*(n-a(floor(n/2)))` with `a(0)=0`
-/

namespace A004468.P1226691425252390670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A003188 n + 2 * ((n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A004468.P1226691425252390670

namespace A004468

/-- `A003188(n)+2*(n-a(floor(n/2)))` -/
def P1226691425252390670.Spec : Prop :=
  ∀ n, P1226691425252390670.a n = A004468 n

end A004468

/-! ## A004468.P4476615685258500532

`A006015(A006015(n))`
-/

namespace A004468.P4476615685258500532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A006015 n).toNat

end

end A004468.P4476615685258500532

namespace A004468

/-- `A006015(A006015(n))` -/
def P4476615685258500532.Spec : Prop :=
  ∀ n, P4476615685258500532.a n = A004468 n

end A004468

/-! ## A004468.P5613004778758710544

`A057300(A048647(n))`
-/

namespace A004468.P5613004778758710544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A048647 n).toNat

end

end A004468.P5613004778758710544

namespace A004468

/-- `A057300(A048647(n))` -/
def P5613004778758710544.Spec : Prop :=
  ∀ n, P5613004778758710544.a n = A004468 n

end A004468

/-! ## A004468.P7521741955303142473

`A048647(A163241(n))`
-/

namespace A004468.P7521741955303142473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 (A163241 n).toNat

end

end A004468.P7521741955303142473

namespace A004468

/-- `A048647(A163241(n))` -/
def P7521741955303142473.Spec : Prop :=
  ∀ n, P7521741955303142473.a n = A004468 n

end A004468

/-! ## A004468.P6701841144861713388

`xor(A004469(n), A004472(n))`
-/

namespace A004468.P6701841144861713388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004469 n) (A004472 n)

end

end A004468.P6701841144861713388

namespace A004468

/-- `xor(A004469(n), A004472(n))` -/
def P6701841144861713388.Spec : Prop :=
  ∀ n, P6701841144861713388.a n = A004468 n

end A004468

/-! ## A004468.P2567188672708178794

`xor(A004470(n), A004471(n))`
-/

namespace A004468.P2567188672708178794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004470 n) (A004471 n)

end

end A004468.P2567188672708178794

namespace A004468

/-- `xor(A004470(n), A004471(n))` -/
def P2567188672708178794.Spec : Prop :=
  ∀ n, P2567188672708178794.a n = A004468 n

end A004468

/-! ## A004468.P2865139252292826751

`xor(A004473(n), A004476(n))`
-/

namespace A004468.P2865139252292826751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004473 n) (A004476 n)

end

end A004468.P2865139252292826751

namespace A004468

/-- `xor(A004473(n), A004476(n))` -/
def P2865139252292826751.Spec : Prop :=
  ∀ n, P2865139252292826751.a n = A004468 n

end A004468

/-! ## A004468.P1582386322000929583

`xor(A004474(n), A004475(n))`
-/

namespace A004468.P1582386322000929583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004474 n) (A004475 n)

end

end A004468.P1582386322000929583

namespace A004468

/-- `xor(A004474(n), A004475(n))` -/
def P1582386322000929583.Spec : Prop :=
  ∀ n, P1582386322000929583.a n = A004468 n

end A004468

/-! ## A004468.P1985065161513048413

`xor(A004477(n), A004480(n))`
-/

namespace A004468.P1985065161513048413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004477 n) (A004480 n)

end

end A004468.P1985065161513048413

namespace A004468

/-- `xor(A004477(n), A004480(n))` -/
def P1985065161513048413.Spec : Prop :=
  ∀ n, P1985065161513048413.a n = A004468 n

end A004468

/-! ## A004468.P16169426542009371691

`xor(A004478(n), A004479(n))`
-/

namespace A004468.P16169426542009371691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004478 n) (A004479 n)

end

end A004468.P16169426542009371691

namespace A004468

/-- `xor(A004478(n), A004479(n))` -/
def P16169426542009371691.Spec : Prop :=
  ∀ n, P16169426542009371691.a n = A004468 n

end A004468

/-! ## A004468.P630347209397745194

`xor(A057300(n), A063694(n))`
-/

namespace A004468.P630347209397745194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057300 n) (A063694 n)

end

end A004468.P630347209397745194

namespace A004468

/-- `xor(A057300(n), A063694(n))` -/
def P630347209397745194.Spec : Prop :=
  ∀ n, P630347209397745194.a n = A004468 n

end A004468

/-! ## A004468.P7406116030053000609

`xor(n-A063695(n), A057300(n))`
-/

namespace A004468.P7406116030053000609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A063695 n) (A057300 n)

end

end A004468.P7406116030053000609

namespace A004468

/-- `xor(n-A063695(n), A057300(n))` -/
def P7406116030053000609.Spec : Prop :=
  ∀ n, P7406116030053000609.a n = A004468 n

end A004468

/-! ## A004468.P9997360153851024738

`xor(n, xor(A004473(n), A004475(n)))`
-/

namespace A004468.P9997360153851024738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004473 n) (A004475 n))

end

end A004468.P9997360153851024738

namespace A004468

/-- `xor(n, xor(A004473(n), A004475(n)))` -/
def P9997360153851024738.Spec : Prop :=
  ∀ n, P9997360153851024738.a n = A004468 n

end A004468

/-! ## A004468.P4835549883192938793

`xor(A001196(A059906(n)), A048647(n))`
-/

namespace A004468.P4835549883192938793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001196 (A059906 n).toNat) (A048647 n)

end

end A004468.P4835549883192938793

namespace A004468

/-- `xor(A001196(A059906(n)), A048647(n))` -/
def P4835549883192938793.Spec : Prop :=
  ∀ n, P4835549883192938793.a n = A004468 n

end A004468

/-! ## A004468.P10546031254998017249

`A057300(A163485(A057300(A163486(n))))`
-/

namespace A004468.P10546031254998017249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A163485 (A057300 (A163486 n).toNat).toNat).toNat

end

end A004468.P10546031254998017249

namespace A004468

/-- `A057300(A163485(A057300(A163486(n))))` -/
def P10546031254998017249.Spec : Prop :=
  ∀ n, P10546031254998017249.a n = A004468 n

end A004468

/-! ## A004468.P3693543091154356598

`A063694(A003188(n))+2*A063694(n)`
-/

namespace A004468.P3693543091154356598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 (A003188 n).toNat + 2 * A063694 n

end

end A004468.P3693543091154356598

namespace A004468

/-- `A063694(A003188(n))+2*A063694(n)` -/
def P3693543091154356598.Spec : Prop :=
  ∀ n, P3693543091154356598.a n = A004468 n

end A004468

/-! ## A004468.P3875316755779232327

`A163241(A057300(n))`
-/

namespace A004468.P3875316755779232327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A057300 n).toNat

end

end A004468.P3875316755779232327

namespace A004468

/-- `A163241(A057300(n))` -/
def P3875316755779232327.Spec : Prop :=
  ∀ n, P3875316755779232327.a n = A004468 n

end A004468

/-! ## A004468.P3214562436745365212

`A057300(xor(n, A063695(2*n)))`
-/

namespace A004468.P3214562436745365212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (Int.xor (n : ℤ) (A063695 (2 * n))).toNat

end

end A004468.P3214562436745365212

namespace A004468

/-- `A057300(xor(n, A063695(2*n)))` -/
def P3214562436745365212.Spec : Prop :=
  ∀ n, P3214562436745365212.a n = A004468 n

end A004468

/-!
# A004469: Nim product 4 * n.

The programs for A004469, there is no canonical definition to state claims against.
-/

/-! ## A004469.P16025799183645593918

`xor(n, A004470(n))`
-/

namespace A004469.P16025799183645593918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004470 n)

end

end A004469.P16025799183645593918

/-! ## A004469.P11384014152422780398

`xor(A004468(n), A004472(n))`
-/

namespace A004469.P11384014152422780398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004468 n) (A004472 n)

end

end A004469.P11384014152422780398

/-! ## A004469.P10881733726617676710

`xor(A004473(n), A004477(n))`
-/

namespace A004469.P10881733726617676710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004473 n) (A004477 n)

end

end A004469.P10881733726617676710

/-! ## A004469.P12160144875665340456

`xor(A004474(n), A004478(n))`
-/

namespace A004469.P12160144875665340456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004474 n) (A004478 n)

end

end A004469.P12160144875665340456

/-! ## A004469.P18416313639594613130

`xor(A004475(n), A004479(n))`
-/

namespace A004469.P18416313639594613130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004475 n) (A004479 n)

end

end A004469.P18416313639594613130

/-! ## A004469.P17512913800743317525

`xor(A004476(n), A004480(n))`
-/

namespace A004469.P17512913800743317525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004476 n) (A004480 n)

end

end A004469.P17512913800743317525

/-! ## A004469.P1239676888076884575

`xor(A004471(n), A006015(n))`
-/

namespace A004469.P1239676888076884575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004471 n) (A006015 n)

end

end A004469.P1239676888076884575

/-! ## A004469.P3197657149506863010

`xor(n, xor(A004473(n), A004478(n)))`
-/

namespace A004469.P3197657149506863010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004473 n) (A004478 n))

end

end A004469.P3197657149506863010

/-! ## A004469.P15424031019623571485

`xor(n, xor(A004474(n), A004477(n)))`
-/

namespace A004469.P15424031019623571485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004474 n) (A004477 n))

end

end A004469.P15424031019623571485

/-! ## A004469.P11292520975340815150

`xor(n, xor(A004472(n), A006015(n)))`
-/

namespace A004469.P11292520975340815150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004472 n) (A006015 n))

end

end A004469.P11292520975340815150

/-! ## A004469.P11782825402343090256

`xor(A004472(n), A006015(A006015(n)))`
-/

namespace A004469.P11782825402343090256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004472 n) (A006015 (A006015 n).toNat)

end

end A004469.P11782825402343090256

/-! ## A004469.P1927626715131413933

`A004477(A006015(n))`
-/

namespace A004469.P1927626715131413933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004477 (A006015 n).toNat

end

end A004469.P1927626715131413933

/-! ## A004469.P15004969575006998586

`A004477(xor(n, A004468(n)))`
-/

namespace A004469.P15004969575006998586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004477 (Int.xor (n : ℤ) (A004468 n)).toNat

end

end A004469.P15004969575006998586

/-! ## A004469.P10389754461402384591

`xor(n, A004480(xor(n, A004468(n))))`
-/

namespace A004469.P10389754461402384591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004480 (Int.xor (n : ℤ) (A004468 n)).toNat)

end

end A004469.P10389754461402384591

/-! ## A004469.P14124516294053726218

`A004477(A004468(A004468(n)))`
-/

namespace A004469.P14124516294053726218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004477 (A004468 (A004468 n).toNat).toNat

end

end A004469.P14124516294053726218

/-! ## A004469.P4183213656157658974

`A004473(A004468(n))`
-/

namespace A004469.P4183213656157658974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004473 (A004468 n).toNat

end

end A004469.P4183213656157658974

/-! ## A004469.P4467668148237096012

`A004478(A004470(n))`
-/

namespace A004469.P4467668148237096012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004478 (A004470 n).toNat

end

end A004469.P4467668148237096012

/-! ## A004469.P5648797035708625505

`A004472(A004472(n))`
-/

namespace A004469.P5648797035708625505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004472 (A004472 n).toNat

end

end A004469.P5648797035708625505

/-! ## A004469.P15859905443788066642

`A004480(A004471(n))`
-/

namespace A004469.P15859905443788066642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004480 (A004471 n).toNat

end

end A004469.P15859905443788066642

/-! ## A004469.P17732308224279301417

`A004479(A004474(n))`
-/

namespace A004469.P17732308224279301417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004479 (A004474 n).toNat

end

end A004469.P17732308224279301417

/-!
# A004470: Nim product 5 * n.

The programs for A004470, there is no canonical definition to state claims against.
-/

/-! ## A004470.P10803228012860909188

`xor(n, A004469(n))`
-/

namespace A004470.P10803228012860909188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004469 n)

end

end A004470.P10803228012860909188

/-! ## A004470.P16413909902997494469

`xor(A004468(n), A004471(n))`
-/

namespace A004470.P16413909902997494469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004468 n) (A004471 n)

end

end A004470.P16413909902997494469

/-! ## A004470.P13716420580158377889

`xor(A004473(n), A004478(n))`
-/

namespace A004470.P13716420580158377889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004473 n) (A004478 n)

end

end A004470.P13716420580158377889

/-! ## A004470.P8744308023400124705

`xor(A004474(n), A004477(n))`
-/

namespace A004470.P8744308023400124705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004474 n) (A004477 n)

end

end A004470.P8744308023400124705

/-! ## A004470.P10188411678555363092

`xor(A004475(n), A004480(n))`
-/

namespace A004470.P10188411678555363092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004475 n) (A004480 n)

end

end A004470.P10188411678555363092

/-! ## A004470.P7760860842116766340

`xor(A004476(n), A004479(n))`
-/

namespace A004470.P7760860842116766340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004476 n) (A004479 n)

end

end A004470.P7760860842116766340

/-! ## A004470.P4766175512445412461

`xor(A004472(n), A006015(n))`
-/

namespace A004470.P4766175512445412461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004472 n) (A006015 n)

end

end A004470.P4766175512445412461

/-! ## A004470.P15243695281161708529

`xor(n, xor(A004468(n), A004472(n)))`
-/

namespace A004470.P15243695281161708529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004468 n) (A004472 n))

end

end A004470.P15243695281161708529

/-! ## A004470.P10720417507050070819

`xor(n, xor(A004473(n), A004477(n)))`
-/

namespace A004470.P10720417507050070819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004473 n) (A004477 n))

end

end A004470.P10720417507050070819

/-! ## A004470.P15521363214834241393

`xor(n, xor(A004474(n), A004478(n)))`
-/

namespace A004470.P15521363214834241393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004474 n) (A004478 n))

end

end A004470.P15521363214834241393

/-! ## A004470.P16190511807860688804

`xor(n, xor(A004475(n), A004479(n)))`
-/

namespace A004470.P16190511807860688804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004475 n) (A004479 n))

end

end A004470.P16190511807860688804

/-! ## A004470.P3213533225040271047

`xor(n, xor(A004476(n), A004480(n)))`
-/

namespace A004470.P3213533225040271047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004476 n) (A004480 n))

end

end A004470.P3213533225040271047

/-! ## A004470.P6813893477718745879

`xor(A004471(n), A006015(A006015(n)))`
-/

namespace A004470.P6813893477718745879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004471 n) (A006015 (A006015 n).toNat)

end

end A004470.P6813893477718745879

/-! ## A004470.P5100396121147990747

`A004480(A006015(n))`
-/

namespace A004470.P5100396121147990747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004480 (A006015 n).toNat

end

end A004470.P5100396121147990747

/-! ## A004470.P3381897885033183669

`A004480(xor(n, A004468(n)))`
-/

namespace A004470.P3381897885033183669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004480 (Int.xor (n : ℤ) (A004468 n)).toNat

end

end A004470.P3381897885033183669

/-! ## A004470.P16586131333037947019

`xor(n, A004477(xor(n, A004468(n))))`
-/

namespace A004470.P16586131333037947019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004477 (Int.xor (n : ℤ) (A004468 n)).toNat)

end

end A004470.P16586131333037947019

/-! ## A004470.P9442733948066470821

`A004480(A004468(A004468(n)))`
-/

namespace A004470.P9442733948066470821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004480 (A004468 (A004468 n).toNat).toNat

end

end A004470.P9442733948066470821

/-! ## A004470.P12608925041394828030

`A004475(A004468(n))`
-/

namespace A004470.P12608925041394828030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004475 (A004468 n).toNat

end

end A004470.P12608925041394828030

/-! ## A004470.P14768828503411884771

`A004471(A004471(n))`
-/

namespace A004470.P14768828503411884771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004471 (A004471 n).toNat

end

end A004470.P14768828503411884771

/-! ## A004470.P15169152631652686069

`A004479(A004469(n))`
-/

namespace A004470.P15169152631652686069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004479 (A004469 n).toNat

end

end A004470.P15169152631652686069

/-!
# A004471: Nim product 6 * n.

The programs for A004471, there is no canonical definition to state claims against.
-/

/-! ## A004471.P15555525019362314887

`xor(n, A004472(n))`
-/

namespace A004471.P15555525019362314887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004472 n)

end

end A004471.P15555525019362314887

/-! ## A004471.P393973821019037414

`xor(A004468(n), A004470(n))`
-/

namespace A004471.P393973821019037414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004468 n) (A004470 n)

end

end A004471.P393973821019037414

/-! ## A004471.P13792304116321912

`xor(A004473(n), A004479(n))`
-/

namespace A004471.P13792304116321912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004473 n) (A004479 n)

end

end A004471.P13792304116321912

/-! ## A004471.P17546235599985407799

`xor(A004474(n), A004480(n))`
-/

namespace A004471.P17546235599985407799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004474 n) (A004480 n)

end

end A004471.P17546235599985407799

/-! ## A004471.P5810633630097038973

`xor(A004475(n), A004477(n))`
-/

namespace A004471.P5810633630097038973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004475 n) (A004477 n)

end

end A004471.P5810633630097038973

/-! ## A004471.P7199878027760540110

`xor(A004476(n), A004478(n))`
-/

namespace A004471.P7199878027760540110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004476 n) (A004478 n)

end

end A004471.P7199878027760540110

/-! ## A004471.P9354598222355782250

`xor(A004469(n), A006015(n))`
-/

namespace A004471.P9354598222355782250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004469 n) (A006015 n)

end

end A004471.P9354598222355782250

/-! ## A004471.P11820671383401565434

`xor(n, xor(A004468(n), A004469(n)))`
-/

namespace A004471.P11820671383401565434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004468 n) (A004469 n))

end

end A004471.P11820671383401565434

/-! ## A004471.P3571641857966543667

`xor(n, xor(A004475(n), A004478(n)))`
-/

namespace A004471.P3571641857966543667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004475 n) (A004478 n))

end

end A004471.P3571641857966543667

/-! ## A004471.P2885567482739273278

`xor(n, xor(A004476(n), A004477(n)))`
-/

namespace A004471.P2885567482739273278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004476 n) (A004477 n))

end

end A004471.P2885567482739273278

/-! ## A004471.P16637215015860869520

`xor(A004468(A004468(n)), A004469(n))`
-/

namespace A004471.P16637215015860869520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004468 (A004468 n).toNat) (A004469 n)

end

end A004471.P16637215015860869520

/-! ## A004471.P5978670822928985730

`A004478(A006015(n))`
-/

namespace A004471.P5978670822928985730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004478 (A006015 n).toNat

end

end A004471.P5978670822928985730

/-! ## A004471.P85308270937425527

`A004478(xor(n, A004468(n)))`
-/

namespace A004471.P85308270937425527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004478 (Int.xor (n : ℤ) (A004468 n)).toNat

end

end A004471.P85308270937425527

/-! ## A004471.P7040393459849535319

`A004469(A004469(n))`
-/

namespace A004471.P7040393459849535319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004469 (A004469 n).toNat

end

end A004471.P7040393459849535319

/-! ## A004471.P1517331935920189911

`A004476(A004468(n))`
-/

namespace A004471.P1517331935920189911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004476 (A004468 n).toNat

end

end A004471.P1517331935920189911

/-! ## A004471.P5112258959674186998

`A004474(A004470(n))`
-/

namespace A004471.P5112258959674186998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004474 (A004470 n).toNat

end

end A004471.P5112258959674186998

/-! ## A004471.P7767635720360496019

`A004475(A004472(n))`
-/

namespace A004471.P7767635720360496019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004475 (A004472 n).toNat

end

end A004471.P7767635720360496019

/-! ## A004471.P3300708059508911645

`A004477(A004473(n))`
-/

namespace A004471.P3300708059508911645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004477 (A004473 n).toNat

end

end A004471.P3300708059508911645

/-! ## A004471.P820025188748697469

`A004480(A004479(n))`
-/

namespace A004471.P820025188748697469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004480 (A004479 n).toNat

end

end A004471.P820025188748697469

/-! ## A004471.P12042901762552500427

`A004468(xor(n, A004475(n)))`
-/

namespace A004471.P12042901762552500427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (Int.xor (n : ℤ) (A004475 n)).toNat

end

end A004471.P12042901762552500427

/-!
# A004472: Nim product 7 * n.

The programs for A004472, there is no canonical definition to state claims against.
-/

/-! ## A004472.P12964517721354540258

`xor(n, A004471(n))`
-/

namespace A004472.P12964517721354540258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004471 n)

end

end A004472.P12964517721354540258

/-! ## A004472.P7943368254105580953

`xor(A004468(n), A004469(n))`
-/

namespace A004472.P7943368254105580953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004468 n) (A004469 n)

end

end A004472.P7943368254105580953

/-! ## A004472.P17711132302084565281

`xor(A004473(n), A004480(n))`
-/

namespace A004472.P17711132302084565281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004473 n) (A004480 n)

end

end A004472.P17711132302084565281

/-! ## A004472.P9009155610017748974

`xor(A004474(n), A004479(n))`
-/

namespace A004472.P9009155610017748974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004474 n) (A004479 n)

end

end A004472.P9009155610017748974

/-! ## A004472.P3730545168902597507

`xor(A004475(n), A004478(n))`
-/

namespace A004472.P3730545168902597507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004475 n) (A004478 n)

end

end A004472.P3730545168902597507

/-! ## A004472.P6533824740533139481

`xor(A004476(n), A004477(n))`
-/

namespace A004472.P6533824740533139481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004476 n) (A004477 n)

end

end A004472.P6533824740533139481

/-! ## A004472.P9212537635216699485

`xor(A004470(n), A006015(n))`
-/

namespace A004472.P9212537635216699485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004470 n) (A006015 n)

end

end A004472.P9212537635216699485

/-! ## A004472.P17943256982089847276

`xor(n, xor(A004468(n), A004470(n)))`
-/

namespace A004472.P17943256982089847276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004468 n) (A004470 n))

end

end A004472.P17943256982089847276

/-! ## A004472.P5724350903643699045

`xor(n, xor(A004473(n), A004479(n)))`
-/

namespace A004472.P5724350903643699045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004473 n) (A004479 n))

end

end A004472.P5724350903643699045

/-! ## A004472.P11257241127436676705

`xor(n, xor(A004474(n), A004480(n)))`
-/

namespace A004472.P11257241127436676705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004474 n) (A004480 n))

end

end A004472.P11257241127436676705

/-! ## A004472.P18168829299507952646

`xor(n, xor(A004475(n), A004477(n)))`
-/

namespace A004472.P18168829299507952646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004475 n) (A004477 n))

end

end A004472.P18168829299507952646

/-! ## A004472.P3572362043768096292

`A004479(A006015(n))`
-/

namespace A004472.P3572362043768096292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004479 (A006015 n).toNat

end

end A004472.P3572362043768096292

/-! ## A004472.P6215111603048551120

`A004479(xor(n, A004468(n)))`
-/

namespace A004472.P6215111603048551120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004479 (Int.xor (n : ℤ) (A004468 n)).toNat

end

end A004472.P6215111603048551120

/-! ## A004472.P15309624461289187915

`A004474(A004468(n))`
-/

namespace A004472.P15309624461289187915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004474 (A004468 n).toNat

end

end A004472.P15309624461289187915

/-! ## A004472.P7156247227364175520

`A004476(A004469(n))`
-/

namespace A004472.P7156247227364175520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004476 (A004469 n).toNat

end

end A004472.P7156247227364175520

/-! ## A004472.P7871801298063093727

`A004470(A004470(n))`
-/

namespace A004472.P7871801298063093727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004470 (A004470 n).toNat

end

end A004472.P7871801298063093727

/-! ## A004472.P6491295359715572444

`A004473(A004471(n))`
-/

namespace A004472.P6491295359715572444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004473 (A004471 n).toNat

end

end A004472.P6491295359715572444

/-! ## A004472.P11484996808915532630

`A004480(A004475(n))`
-/

namespace A004472.P11484996808915532630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004480 (A004475 n).toNat

end

end A004472.P11484996808915532630

/-! ## A004472.P16868524646773229137

`A004478(A004477(n))`
-/

namespace A004472.P16868524646773229137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004478 (A004477 n).toNat

end

end A004472.P16868524646773229137

/-! ## A004472.P16702820162559831065

`A004468(xor(n, A004473(n)))`
-/

namespace A004472.P16702820162559831065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (Int.xor (n : ℤ) (A004473 n)).toNat

end

end A004472.P16702820162559831065

/-!
# A004473: Nim product 8 * n.

The programs for A004473, there is no canonical definition to state claims against.
-/

/-! ## A004473.P8559956025100985979

`xor(n, A004474(n))`
-/

namespace A004473.P8559956025100985979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004474 n)

end

end A004473.P8559956025100985979

/-! ## A004473.P12449394745110413362

`xor(A004468(n), A004476(n))`
-/

namespace A004473.P12449394745110413362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004468 n) (A004476 n)

end

end A004473.P12449394745110413362

/-! ## A004473.P13862414128759913089

`xor(A004469(n), A004477(n))`
-/

namespace A004473.P13862414128759913089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004469 n) (A004477 n)

end

end A004473.P13862414128759913089

/-! ## A004473.P2936564438856938387

`xor(A004470(n), A004478(n))`
-/

namespace A004473.P2936564438856938387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004470 n) (A004478 n)

end

end A004473.P2936564438856938387

/-! ## A004473.P6227731416142849292

`xor(A004471(n), A004479(n))`
-/

namespace A004473.P6227731416142849292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004471 n) (A004479 n)

end

end A004473.P6227731416142849292

/-! ## A004473.P10433455731945832987

`xor(A004472(n), A004480(n))`
-/

namespace A004473.P10433455731945832987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004472 n) (A004480 n)

end

end A004473.P10433455731945832987

/-! ## A004473.P1798404373851980603

`xor(A004475(n), A006015(n))`
-/

namespace A004473.P1798404373851980603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004475 n) (A006015 n)

end

end A004473.P1798404373851980603

/-! ## A004473.P3342155317602361244

`xor(n, xor(A004468(n), A004475(n)))`
-/

namespace A004473.P3342155317602361244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004468 n) (A004475 n))

end

end A004473.P3342155317602361244

/-! ## A004473.P18283744881108431007

`xor(n, xor(A004470(n), A004477(n)))`
-/

namespace A004473.P18283744881108431007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004470 n) (A004477 n))

end

end A004473.P18283744881108431007

/-! ## A004473.P4935603696528219789

`xor(A004476(n), A006015(A006015(n)))`
-/

namespace A004473.P4935603696528219789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004476 n) (A006015 (A006015 n).toNat)

end

end A004473.P4935603696528219789

/-! ## A004473.P13563343124062125547

`A004469(A006015(n))`
-/

namespace A004473.P13563343124062125547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004469 (A006015 n).toNat

end

end A004473.P13563343124062125547

/-! ## A004473.P3730127283086171987

`A004469(xor(n, A004468(n)))`
-/

namespace A004473.P3730127283086171987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004469 (Int.xor (n : ℤ) (A004468 n)).toNat

end

end A004473.P3730127283086171987

/-! ## A004473.P17980705849605896866

`xor(n, A004472(xor(n, A004468(n))))`
-/

namespace A004473.P17980705849605896866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004472 (Int.xor (n : ℤ) (A004468 n)).toNat)

end

end A004473.P17980705849605896866

/-! ## A004473.P11040501510562458244

`A004469(A004468(A004468(n)))`
-/

namespace A004473.P11040501510562458244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004469 (A004468 (A004468 n).toNat).toNat

end

end A004473.P11040501510562458244

/-! ## A004473.P3665335515739645391

`A004477(A004468(n))`
-/

namespace A004473.P3665335515739645391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004477 (A004468 n).toNat

end

end A004473.P3665335515739645391

/-! ## A004473.P16262124442936495333

`A004471(A004470(n))`
-/

namespace A004473.P16262124442936495333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004471 (A004470 n).toNat

end

end A004473.P16262124442936495333

/-! ## A004473.P17099066957289395378

`A004474(A004472(n))`
-/

namespace A004473.P17099066957289395378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004474 (A004472 n).toNat

end

end A004473.P17099066957289395378

/-! ## A004473.P9947724856294560604

`A004478(A004475(n))`
-/

namespace A004473.P9947724856294560604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004478 (A004475 n).toNat

end

end A004473.P9947724856294560604

/-! ## A004473.P10491823844121858991

`A004480(A004476(n))`
-/

namespace A004473.P10491823844121858991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004480 (A004476 n).toNat

end

end A004473.P10491823844121858991

/-! ## A004473.P15235107880981018086

`A004479(A004479(n))`
-/

namespace A004473.P15235107880981018086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004479 (A004479 n).toNat

end

end A004473.P15235107880981018086

/-!
# A004474: Nim product 9 * n.

The programs for A004474, there is no canonical definition to state claims against.
-/

/-! ## A004474.P10266987361511840295

`xor(n, A004473(n))`
-/

namespace A004474.P10266987361511840295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004473 n)

end

end A004474.P10266987361511840295

/-! ## A004474.P14041969899439876385

`xor(A004468(n), A004475(n))`
-/

namespace A004474.P14041969899439876385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004468 n) (A004475 n)

end

end A004474.P14041969899439876385

/-! ## A004474.P11756625641305796637

`xor(A004469(n), A004478(n))`
-/

namespace A004474.P11756625641305796637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004469 n) (A004478 n)

end

end A004474.P11756625641305796637

/-! ## A004474.P10574639553267325909

`xor(A004470(n), A004477(n))`
-/

namespace A004474.P10574639553267325909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004470 n) (A004477 n)

end

end A004474.P10574639553267325909

/-! ## A004474.P14918579182024181336

`xor(A004471(n), A004480(n))`
-/

namespace A004474.P14918579182024181336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004471 n) (A004480 n)

end

end A004474.P14918579182024181336

/-! ## A004474.P807099465174659975

`xor(A004472(n), A004479(n))`
-/

namespace A004474.P807099465174659975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004472 n) (A004479 n)

end

end A004474.P807099465174659975

/-! ## A004474.P10410021304293821520

`xor(A004476(n), A006015(n))`
-/

namespace A004474.P10410021304293821520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004476 n) (A006015 n)

end

end A004474.P10410021304293821520

/-! ## A004474.P6431084892783900851

`xor(n, xor(A004468(n), A004476(n)))`
-/

namespace A004474.P6431084892783900851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004468 n) (A004476 n))

end

end A004474.P6431084892783900851

/-! ## A004474.P2337533247642088811

`xor(n, xor(A004475(n), A006015(n)))`
-/

namespace A004474.P2337533247642088811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004475 n) (A006015 n))

end

end A004474.P2337533247642088811

/-! ## A004474.P17808625961001062972

`xor(A004475(n), A006015(A006015(n)))`
-/

namespace A004474.P17808625961001062972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004475 n) (A006015 (A006015 n).toNat)

end

end A004474.P17808625961001062972

/-! ## A004474.P17218801422324192082

`A004472(A006015(n))`
-/

namespace A004474.P17218801422324192082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004472 (A006015 n).toNat

end

end A004474.P17218801422324192082

/-! ## A004474.P11576316629477920456

`A004472(xor(n, A004468(n)))`
-/

namespace A004474.P11576316629477920456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004472 (Int.xor (n : ℤ) (A004468 n)).toNat

end

end A004474.P11576316629477920456

/-! ## A004474.P17222329118996596440

`xor(n, A004469(xor(n, A004468(n))))`
-/

namespace A004474.P17222329118996596440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004469 (Int.xor (n : ℤ) (A004468 n)).toNat)

end

end A004474.P17222329118996596440

/-! ## A004474.P3564360176693972511

`A004472(A004468(A004468(n)))`
-/

namespace A004474.P3564360176693972511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004472 (A004468 (A004468 n).toNat).toNat

end

end A004474.P3564360176693972511

/-! ## A004474.P18332758561198579026

`A004472(xor(A004470(n), A004472(n)))`
-/

namespace A004474.P18332758561198579026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004472 (Int.xor (A004470 n) (A004472 n)).toNat

end

end A004474.P18332758561198579026

/-! ## A004474.P10312446763442461236

`A004479(A004468(n))`
-/

namespace A004474.P10312446763442461236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004479 (A004468 n).toNat

end

end A004474.P10312446763442461236

/-! ## A004474.P1783257748700675596

`A004478(A004469(n))`
-/

namespace A004474.P1783257748700675596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004478 (A004469 n).toNat

end

end A004474.P1783257748700675596

/-! ## A004474.P12679269592242738653

`A004475(A004470(n))`
-/

namespace A004474.P12679269592242738653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004475 (A004470 n).toNat

end

end A004474.P12679269592242738653

/-! ## A004474.P13481674464320808790

`A004477(A004471(n))`
-/

namespace A004474.P13481674464320808790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004477 (A004471 n).toNat

end

end A004474.P13481674464320808790

/-! ## A004474.P1270838312348496281

`A004476(A004473(n))`
-/

namespace A004474.P1270838312348496281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004476 (A004473 n).toNat

end

end A004474.P1270838312348496281

/-!
# A004475: Nim product 10 * n.

The programs for A004475, there is no canonical definition to state claims against.
-/

/-! ## A004475.P3184101403258605679

`xor(n, A004476(n))`
-/

namespace A004475.P3184101403258605679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004476 n)

end

end A004475.P3184101403258605679

/-! ## A004475.P8127814976518438428

`xor(A004468(n), A004474(n))`
-/

namespace A004475.P8127814976518438428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004468 n) (A004474 n)

end

end A004475.P8127814976518438428

/-! ## A004475.P15739396006963012356

`xor(A004469(n), A004479(n))`
-/

namespace A004475.P15739396006963012356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004469 n) (A004479 n)

end

end A004475.P15739396006963012356

/-! ## A004475.P14409141917223913157

`xor(A004470(n), A004480(n))`
-/

namespace A004475.P14409141917223913157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004470 n) (A004480 n)

end

end A004475.P14409141917223913157

/-! ## A004475.P4584202760668743936

`xor(A004471(n), A004477(n))`
-/

namespace A004475.P4584202760668743936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004471 n) (A004477 n)

end

end A004475.P4584202760668743936

/-! ## A004475.P13099545947292322637

`xor(A004472(n), A004478(n))`
-/

namespace A004475.P13099545947292322637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004472 n) (A004478 n)

end

end A004475.P13099545947292322637

/-! ## A004475.P12565375202049244859

`xor(A004473(n), A006015(n))`
-/

namespace A004475.P12565375202049244859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004473 n) (A006015 n)

end

end A004475.P12565375202049244859

/-! ## A004475.P12304558523973920970

`xor(n, xor(A004468(n), A004473(n)))`
-/

namespace A004475.P12304558523973920970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004468 n) (A004473 n))

end

end A004475.P12304558523973920970

/-! ## A004475.P8309295659551587218

`xor(A004474(n), A006015(A006015(n)))`
-/

namespace A004475.P8309295659551587218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004474 n) (A006015 (A006015 n).toNat)

end

end A004475.P8309295659551587218

/-! ## A004475.P5886034546645686856

`A004470(A006015(n))`
-/

namespace A004475.P5886034546645686856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004470 (A006015 n).toNat

end

end A004475.P5886034546645686856

/-! ## A004475.P3784553428187141078

`A004470(xor(n, A004468(n)))`
-/

namespace A004475.P3784553428187141078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004470 (Int.xor (n : ℤ) (A004468 n)).toNat

end

end A004475.P3784553428187141078

/-! ## A004475.P15444832920796136249

`xor(n, A004471(xor(n, A004468(n))))`
-/

namespace A004475.P15444832920796136249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004471 (Int.xor (n : ℤ) (A004468 n)).toNat)

end

end A004475.P15444832920796136249

/-! ## A004475.P5251115822099475526

`A004470(A004468(A004468(n)))`
-/

namespace A004475.P5251115822099475526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004470 (A004468 (A004468 n).toNat).toNat

end

end A004475.P5251115822099475526

/-! ## A004475.P10124458278684064380

`A004470(xor(A004470(n), A004472(n)))`
-/

namespace A004475.P10124458278684064380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004470 (Int.xor (A004470 n) (A004472 n)).toNat

end

end A004475.P10124458278684064380

/-! ## A004475.P16060384511949952852

`A004472(A004469(n))`
-/

namespace A004475.P16060384511949952852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004472 (A004469 n).toNat

end

end A004475.P16060384511949952852

/-! ## A004475.P8732430219840530966

`A004480(A004468(n))`
-/

namespace A004475.P8732430219840530966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004480 (A004468 n).toNat

end

end A004475.P8732430219840530966

/-! ## A004475.P9756350499838318225

`A004476(A004471(n))`
-/

namespace A004475.P9756350499838318225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004476 (A004471 n).toNat

end

end A004475.P9756350499838318225

/-! ## A004475.P18204626680739488439

`A004479(A004473(n))`
-/

namespace A004475.P18204626680739488439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004479 (A004473 n).toNat

end

end A004475.P18204626680739488439

/-! ## A004475.P2117436106472903333

`A004477(A004474(n))`
-/

namespace A004475.P2117436106472903333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004477 (A004474 n).toNat

end

end A004475.P2117436106472903333

/-! ## A004475.P1902286964963363983

`A004478(A004478(n))`
-/

namespace A004475.P1902286964963363983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004478 (A004478 n).toNat

end

end A004475.P1902286964963363983

/-!
# A004476: Nim product 11 * n.

The programs for A004476, there is no canonical definition to state claims against.
-/

/-! ## A004476.P17163019625623953608

`xor(n, A004475(n))`
-/

namespace A004476.P17163019625623953608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004475 n)

end

end A004476.P17163019625623953608

/-! ## A004476.P3470573457498118

`xor(A004468(n), A004473(n))`
-/

namespace A004476.P3470573457498118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004468 n) (A004473 n)

end

end A004476.P3470573457498118

/-! ## A004476.P16927520014375074266

`xor(A004469(n), A004480(n))`
-/

namespace A004476.P16927520014375074266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004469 n) (A004480 n)

end

end A004476.P16927520014375074266

/-! ## A004476.P7266484927639215795

`xor(A004470(n), A004479(n))`
-/

namespace A004476.P7266484927639215795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004470 n) (A004479 n)

end

end A004476.P7266484927639215795

/-! ## A004476.P5318410509769656899

`xor(A004471(n), A004478(n))`
-/

namespace A004476.P5318410509769656899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004471 n) (A004478 n)

end

end A004476.P5318410509769656899

/-! ## A004476.P13737392519509596756

`xor(A004472(n), A004477(n))`
-/

namespace A004476.P13737392519509596756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004472 n) (A004477 n)

end

end A004476.P13737392519509596756

/-! ## A004476.P10879464201177958992

`xor(A004474(n), A006015(n))`
-/

namespace A004476.P10879464201177958992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004474 n) (A006015 n)

end

end A004476.P10879464201177958992

/-! ## A004476.P11705372709181459793

`xor(n, xor(A004468(n), A004474(n)))`
-/

namespace A004476.P11705372709181459793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004468 n) (A004474 n))

end

end A004476.P11705372709181459793

/-! ## A004476.P11516626455805688918

`xor(A004473(n), A006015(A006015(n)))`
-/

namespace A004476.P11516626455805688918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004473 n) (A006015 (A006015 n).toNat)

end

end A004476.P11516626455805688918

/-! ## A004476.P11297992541312617723

`A004471(A006015(n))`
-/

namespace A004476.P11297992541312617723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004471 (A006015 n).toNat

end

end A004476.P11297992541312617723

/-! ## A004476.P14624936823589625473

`A004471(xor(n, A004468(n)))`
-/

namespace A004476.P14624936823589625473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004471 (Int.xor (n : ℤ) (A004468 n)).toNat

end

end A004476.P14624936823589625473

/-! ## A004476.P522098398681028611

`xor(n, A004470(xor(n, A004468(n))))`
-/

namespace A004476.P522098398681028611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004470 (Int.xor (n : ℤ) (A004468 n)).toNat)

end

end A004476.P522098398681028611

/-! ## A004476.P7660994601848851566

`A004471(A004468(A004468(n)))`
-/

namespace A004476.P7660994601848851566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004471 (A004468 (A004468 n).toNat).toNat

end

end A004476.P7660994601848851566

/-! ## A004476.P5046568621552698317

`A004471(xor(A004469(n), A004471(n)))`
-/

namespace A004476.P5046568621552698317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004471 (Int.xor (A004469 n) (A004471 n)).toNat

end

end A004476.P5046568621552698317

/-! ## A004476.P15726921826160547277

`A004478(A004468(n))`
-/

namespace A004476.P15726921826160547277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004478 (A004468 n).toNat

end

end A004476.P15726921826160547277

/-! ## A004476.P6307575979581862107

`A004473(A004469(n))`
-/

namespace A004476.P6307575979581862107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004473 (A004469 n).toNat

end

end A004476.P6307575979581862107

/-! ## A004476.P4986525090089154053

`A004479(A004470(n))`
-/

namespace A004476.P4986525090089154053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004479 (A004470 n).toNat

end

end A004476.P4986525090089154053

/-! ## A004476.P10058783488776321408

`A004480(A004472(n))`
-/

namespace A004476.P10058783488776321408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004480 (A004472 n).toNat

end

end A004476.P10058783488776321408

/-! ## A004476.P4160666807216454813

`A004475(A004474(n))`
-/

namespace A004476.P4160666807216454813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004475 (A004474 n).toNat

end

end A004476.P4160666807216454813

/-! ## A004476.P6370364855973381925

`A004477(A004477(n))`
-/

namespace A004476.P6370364855973381925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004477 (A004477 n).toNat

end

end A004476.P6370364855973381925

/-!
# A004477: Nim product 12 * n.

The programs for A004477, there is no canonical definition to state claims against.
-/

/-! ## A004477.P14789804912483513788

`xor(n, A004478(n))`
-/

namespace A004477.P14789804912483513788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004478 n)

end

end A004477.P14789804912483513788

/-! ## A004477.P15449950510318013836

`xor(A004468(n), A004480(n))`
-/

namespace A004477.P15449950510318013836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004468 n) (A004480 n)

end

end A004477.P15449950510318013836

/-! ## A004477.P9200096278013702644

`xor(A004469(n), A004473(n))`
-/

namespace A004477.P9200096278013702644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004469 n) (A004473 n)

end

end A004477.P9200096278013702644

/-! ## A004477.P4396210443994046576

`xor(A004470(n), A004474(n))`
-/

namespace A004477.P4396210443994046576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004470 n) (A004474 n)

end

end A004477.P4396210443994046576

/-! ## A004477.P15319306238680129083

`xor(A004471(n), A004475(n))`
-/

namespace A004477.P15319306238680129083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004471 n) (A004475 n)

end

end A004477.P15319306238680129083

/-! ## A004477.P6241532296059851346

`xor(A004472(n), A004476(n))`
-/

namespace A004477.P6241532296059851346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004472 n) (A004476 n)

end

end A004477.P6241532296059851346

/-! ## A004477.P4295892126441679667

`xor(A004479(n), A006015(n))`
-/

namespace A004477.P4295892126441679667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004479 n) (A006015 n)

end

end A004477.P4295892126441679667

/-! ## A004477.P13973589746607375288

`xor(n, xor(A004468(n), A004479(n)))`
-/

namespace A004477.P13973589746607375288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004468 n) (A004479 n))

end

end A004477.P13973589746607375288

/-! ## A004477.P4347606486485998863

`xor(n, xor(A004480(n), A006015(n)))`
-/

namespace A004477.P4347606486485998863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004480 n) (A006015 n))

end

end A004477.P4347606486485998863

/-! ## A004477.P12490739253054605540

`A004473(A006015(n))`
-/

namespace A004477.P12490739253054605540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004473 (A006015 n).toNat

end

end A004477.P12490739253054605540

/-! ## A004477.P11551004665931801376

`A004473(xor(n, A004468(n)))`
-/

namespace A004477.P11551004665931801376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004473 (Int.xor (n : ℤ) (A004468 n)).toNat

end

end A004477.P11551004665931801376

/-! ## A004477.P9237570368662765486

`xor(n, A004476(xor(n, A004468(n))))`
-/

namespace A004477.P9237570368662765486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004476 (Int.xor (n : ℤ) (A004468 n)).toNat)

end

end A004477.P9237570368662765486

/-! ## A004477.P12043312615497869577

`A004473(xor(A004473(n), A004475(n)))`
-/

namespace A004477.P12043312615497869577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004473 (Int.xor (A004473 n) (A004475 n)).toNat

end

end A004477.P12043312615497869577

/-! ## A004477.P2567950109656680163

`A004469(A004468(n))`
-/

namespace A004477.P2567950109656680163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004469 (A004468 n).toNat

end

end A004477.P2567950109656680163

/-! ## A004477.P670994720930787284

`A004476(A004470(n))`
-/

namespace A004477.P670994720930787284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004476 (A004470 n).toNat

end

end A004477.P670994720930787284

/-! ## A004477.P11979622444059661481

`A004475(A004471(n))`
-/

namespace A004477.P11979622444059661481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004475 (A004471 n).toNat

end

end A004477.P11979622444059661481

/-! ## A004477.P2134273027678567657

`A004479(A004472(n))`
-/

namespace A004477.P2134273027678567657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004479 (A004472 n).toNat

end

end A004477.P2134273027678567657

/-! ## A004477.P16755200337823657608

`A004474(A004474(n))`
-/

namespace A004477.P16755200337823657608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004474 (A004474 n).toNat

end

end A004477.P16755200337823657608

/-! ## A004477.P11234521416199968713

`A004480(A004478(n))`
-/

namespace A004477.P11234521416199968713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004480 (A004478 n).toNat

end

end A004477.P11234521416199968713

/-! ## A004477.P11642647244898671695

`A004468(xor(n, A004470(n)))`
-/

namespace A004477.P11642647244898671695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (Int.xor (n : ℤ) (A004470 n)).toNat

end

end A004477.P11642647244898671695

/-!
# A004478: Nim product 13 * n.

The programs for A004478, there is no canonical definition to state claims against.
-/

/-! ## A004478.P2015171021968152930

`xor(n, A004477(n))`
-/

namespace A004478.P2015171021968152930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004477 n)

end

end A004478.P2015171021968152930

/-! ## A004478.P1838709458128508902

`xor(A004468(n), A004479(n))`
-/

namespace A004478.P1838709458128508902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004468 n) (A004479 n)

end

end A004478.P1838709458128508902

/-! ## A004478.P15541897731581660400

`xor(A004469(n), A004474(n))`
-/

namespace A004478.P15541897731581660400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004469 n) (A004474 n)

end

end A004478.P15541897731581660400

/-! ## A004478.P3769002370908848016

`xor(A004470(n), A004473(n))`
-/

namespace A004478.P3769002370908848016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004470 n) (A004473 n)

end

end A004478.P3769002370908848016

/-! ## A004478.P15433311963499925872

`xor(A004471(n), A004476(n))`
-/

namespace A004478.P15433311963499925872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004471 n) (A004476 n)

end

end A004478.P15433311963499925872

/-! ## A004478.P13368259858691695556

`xor(A004472(n), A004475(n))`
-/

namespace A004478.P13368259858691695556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004472 n) (A004475 n)

end

end A004478.P13368259858691695556

/-! ## A004478.P16518847333826630573

`xor(A004480(n), A006015(n))`
-/

namespace A004478.P16518847333826630573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004480 n) (A006015 n)

end

end A004478.P16518847333826630573

/-! ## A004478.P3394989075654669969

`xor(n, xor(A004468(n), A004480(n)))`
-/

namespace A004478.P3394989075654669969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004468 n) (A004480 n))

end

end A004478.P3394989075654669969

/-! ## A004478.P2415319149176638108

`xor(n, xor(A004469(n), A004473(n)))`
-/

namespace A004478.P2415319149176638108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004469 n) (A004473 n))

end

end A004478.P2415319149176638108

/-! ## A004478.P11190652089072045101

`xor(n, xor(A004472(n), A004476(n)))`
-/

namespace A004478.P11190652089072045101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004472 n) (A004476 n))

end

end A004478.P11190652089072045101

/-! ## A004478.P18404880892186640446

`xor(n, xor(A004479(n), A006015(n)))`
-/

namespace A004478.P18404880892186640446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004479 n) (A006015 n))

end

end A004478.P18404880892186640446

/-! ## A004478.P5298243746356233406

`A004476(A006015(n))`
-/

namespace A004478.P5298243746356233406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004476 (A006015 n).toNat

end

end A004478.P5298243746356233406

/-! ## A004478.P6309170541532314756

`A004476(xor(n, A004468(n)))`
-/

namespace A004478.P6309170541532314756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004476 (Int.xor (n : ℤ) (A004468 n)).toNat

end

end A004478.P6309170541532314756

/-! ## A004478.P10620203947001816602

`A004471(A004468(n))`
-/

namespace A004478.P10620203947001816602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004471 (A004468 n).toNat

end

end A004478.P10620203947001816602

/-! ## A004478.P6210728809477182108

`A004477(A004469(n))`
-/

namespace A004478.P6210728809477182108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004477 (A004469 n).toNat

end

end A004478.P6210728809477182108

/-! ## A004478.P1927524087604182347

`A004472(A004470(n))`
-/

namespace A004478.P1927524087604182347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004472 (A004470 n).toNat

end

end A004478.P1927524087604182347

/-! ## A004478.P2728560703417347120

`A004473(A004473(n))`
-/

namespace A004478.P2728560703417347120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004473 (A004473 n).toNat

end

end A004478.P2728560703417347120

/-! ## A004478.P1957600899688427698

`A004480(A004474(n))`
-/

namespace A004478.P1957600899688427698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004480 (A004474 n).toNat

end

end A004478.P1957600899688427698

/-! ## A004478.P13661861203561876325

`A004479(A004475(n))`
-/

namespace A004478.P13661861203561876325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004479 (A004475 n).toNat

end

end A004478.P13661861203561876325

/-! ## A004478.P6713223163880385790

`A004472(xor(n, A004469(n)))`
-/

namespace A004478.P6713223163880385790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004472 (Int.xor (n : ℤ) (A004469 n)).toNat

end

end A004478.P6713223163880385790

/-!
# A004479: Nim product 14 * n.

The programs for A004479, there is no canonical definition to state claims against.
-/

/-! ## A004479.P9061444856846992449

`xor(n, A004480(n))`
-/

namespace A004479.P9061444856846992449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004480 n)

end

end A004479.P9061444856846992449

/-! ## A004479.P2114385111340713812

`xor(A004468(n), A004478(n))`
-/

namespace A004479.P2114385111340713812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004468 n) (A004478 n)

end

end A004479.P2114385111340713812

/-! ## A004479.P841589945220627438

`xor(A004469(n), A004475(n))`
-/

namespace A004479.P841589945220627438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004469 n) (A004475 n)

end

end A004479.P841589945220627438

/-! ## A004479.P12514386705085389792

`xor(A004470(n), A004476(n))`
-/

namespace A004479.P12514386705085389792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004470 n) (A004476 n)

end

end A004479.P12514386705085389792

/-! ## A004479.P11820094910497216121

`xor(A004471(n), A004473(n))`
-/

namespace A004479.P11820094910497216121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004471 n) (A004473 n)

end

end A004479.P11820094910497216121

/-! ## A004479.P11490656186657177129

`xor(A004472(n), A004474(n))`
-/

namespace A004479.P11490656186657177129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004472 n) (A004474 n)

end

end A004479.P11490656186657177129

/-! ## A004479.P13388640839690507472

`xor(A004477(n), A006015(n))`
-/

namespace A004479.P13388640839690507472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004477 n) (A006015 n)

end

end A004479.P13388640839690507472

/-! ## A004479.P13008144235426847880

`xor(n, xor(A004468(n), A004477(n)))`
-/

namespace A004479.P13008144235426847880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004468 n) (A004477 n))

end

end A004479.P13008144235426847880

/-! ## A004479.P3455109069492544660

`xor(n, xor(A004470(n), A004475(n)))`
-/

namespace A004479.P3455109069492544660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004470 n) (A004475 n))

end

end A004479.P3455109069492544660

/-! ## A004479.P13000949545859953280

`xor(n, xor(A004471(n), A004474(n)))`
-/

namespace A004479.P13000949545859953280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004471 n) (A004474 n))

end

end A004479.P13000949545859953280

/-! ## A004479.P5034891281821681956

`xor(n, xor(A004478(n), A006015(n)))`
-/

namespace A004479.P5034891281821681956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004478 n) (A006015 n))

end

end A004479.P5034891281821681956

/-! ## A004479.P2449025865525823774

`A004474(A006015(n))`
-/

namespace A004479.P2449025865525823774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004474 (A006015 n).toNat

end

end A004479.P2449025865525823774

/-! ## A004479.P18065535497468307797

`A004474(xor(n, A004468(n)))`
-/

namespace A004479.P18065535497468307797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004474 (Int.xor (n : ℤ) (A004468 n)).toNat

end

end A004479.P18065535497468307797

/-! ## A004479.P12159836834925672063

`A004474(A004468(A004468(n)))`
-/

namespace A004479.P12159836834925672063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004474 (A004468 (A004468 n).toNat).toNat

end

end A004479.P12159836834925672063

/-! ## A004479.P3959492880405759333

`A004472(A004468(n))`
-/

namespace A004479.P3959492880405759333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004472 (A004468 n).toNat

end

end A004479.P3959492880405759333

/-! ## A004479.P10674486465345530121

`A004471(A004469(n))`
-/

namespace A004479.P10674486465345530121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004471 (A004469 n).toNat

end

end A004479.P10674486465345530121

/-! ## A004479.P14825515377694879451

`A004480(A004470(n))`
-/

namespace A004479.P14825515377694879451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004480 (A004470 n).toNat

end

end A004479.P14825515377694879451

/-! ## A004479.P3630080726452805150

`A004478(A004473(n))`
-/

namespace A004479.P3630080726452805150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004478 (A004473 n).toNat

end

end A004479.P3630080726452805150

/-! ## A004479.P3984889755522751937

`A004475(A004475(n))`
-/

namespace A004479.P3984889755522751937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004475 (A004475 n).toNat

end

end A004479.P3984889755522751937

/-! ## A004479.P13393316853893134580

`A004477(A004476(n))`
-/

namespace A004479.P13393316853893134580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004477 (A004476 n).toNat

end

end A004479.P13393316853893134580

/-!
# A004480: Nim product 15 * n.

The programs for A004480, there is no canonical definition to state claims against.
-/

/-! ## A004480.P12945614319089968740

`xor(n, A004479(n))`
-/

namespace A004480.P12945614319089968740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004479 n)

end

end A004480.P12945614319089968740

/-! ## A004480.P159932288235402807

`xor(A004468(n), A004477(n))`
-/

namespace A004480.P159932288235402807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004468 n) (A004477 n)

end

end A004480.P159932288235402807

/-! ## A004480.P5457266576176276587

`xor(A004469(n), A004476(n))`
-/

namespace A004480.P5457266576176276587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004469 n) (A004476 n)

end

end A004480.P5457266576176276587

/-! ## A004480.P2491639137335731367

`xor(A004470(n), A004475(n))`
-/

namespace A004480.P2491639137335731367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004470 n) (A004475 n)

end

end A004480.P2491639137335731367

/-! ## A004480.P12436069249657551232

`xor(A004471(n), A004474(n))`
-/

namespace A004480.P12436069249657551232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004471 n) (A004474 n)

end

end A004480.P12436069249657551232

/-! ## A004480.P4411983281487849086

`xor(A004472(n), A004473(n))`
-/

namespace A004480.P4411983281487849086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004472 n) (A004473 n)

end

end A004480.P4411983281487849086

/-! ## A004480.P11726483823299379508

`xor(A004478(n), A006015(n))`
-/

namespace A004480.P11726483823299379508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004478 n) (A006015 n)

end

end A004480.P11726483823299379508

/-! ## A004480.P7127138604899223719

`xor(n, xor(A004468(n), A004478(n)))`
-/

namespace A004480.P7127138604899223719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004468 n) (A004478 n))

end

end A004480.P7127138604899223719

/-! ## A004480.P4968840699233858629

`xor(n, xor(A004469(n), A004475(n)))`
-/

namespace A004480.P4968840699233858629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004469 n) (A004475 n))

end

end A004480.P4968840699233858629

/-! ## A004480.P8403661952056887512

`A004475(A006015(n))`
-/

namespace A004480.P8403661952056887512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004475 (A006015 n).toNat

end

end A004480.P8403661952056887512

/-! ## A004480.P14996297877840154309

`A004475(xor(n, A004468(n)))`
-/

namespace A004480.P14996297877840154309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004475 (Int.xor (n : ℤ) (A004468 n)).toNat

end

end A004480.P14996297877840154309

/-! ## A004480.P14570194628142125917

`xor(n, A004474(xor(n, A004468(n))))`
-/

namespace A004480.P14570194628142125917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004474 (Int.xor (n : ℤ) (A004468 n)).toNat)

end

end A004480.P14570194628142125917

/-! ## A004480.P7740496358595642653

`A004475(xor(A004473(n), A004475(n)))`
-/

namespace A004480.P7740496358595642653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004475 (Int.xor (A004473 n) (A004475 n)).toNat

end

end A004480.P7740496358595642653

/-! ## A004480.P7249121331120349565

`A004470(A004468(n))`
-/

namespace A004480.P7249121331120349565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004470 (A004468 n).toNat

end

end A004480.P7249121331120349565

/-! ## A004480.P2846569772424481921

`A004474(A004469(n))`
-/

namespace A004480.P2846569772424481921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004474 (A004469 n).toNat

end

end A004480.P2846569772424481921

/-! ## A004480.P4305309944053797971

`A004478(A004471(n))`
-/

namespace A004480.P4305309944053797971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004478 (A004471 n).toNat

end

end A004480.P4305309944053797971

/-! ## A004480.P3385211458509057755

`A004473(A004472(n))`
-/

namespace A004480.P3385211458509057755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004473 (A004472 n).toNat

end

end A004480.P3385211458509057755

/-! ## A004480.P12333355685521445232

`A004476(A004476(n))`
-/

namespace A004480.P12333355685521445232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004476 (A004476 n).toNat

end

end A004480.P12333355685521445232

/-! ## A004480.P14265005091840288576

`A004479(A004477(n))`
-/

namespace A004480.P14265005091840288576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004479 (A004477 n).toNat

end

end A004480.P14265005091840288576

/-! ## A004480.P4081649210009738875

`A004468(xor(n, A004469(n)))`
-/

namespace A004480.P4081649210009738875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (Int.xor (n : ℤ) (A004469 n)).toNat

end

end A004480.P4081649210009738875

/-!
# A004481: Table of Sprague-Grundy values for Wythoff's game (Wyt Queens) read by antidiagonals.

The programs for A004481, there is no canonical definition to state claims against.
-/

/-! ## A004481.P12224204664513228819

`A307296(A048266(n+1)-1)`
-/

namespace A004481.P12224204664513228819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307296 (A048266 (n + 1) - 1).toNat

end

end A004481.P12224204664513228819

/-! ## A004481.P7762069068829065303

`A307296(n)%or(4, A010947(n))`
-/

namespace A004481.P7762069068829065303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307296 n) (Int.lor 4 (A010947 n))

end

end A004481.P7762069068829065303

/-! ## A004481.P9994359665441071357

`A004489(n)%A206798(A056617(n))`
-/

namespace A004481.P9994359665441071357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004489 n) (A206798 (A056617 n).toNat)

end

end A004481.P9994359665441071357

/-!
# A004482: Tersum n + 1 (answer recorded in base 10).

The programs for A004482, the canonical program `A004482.P3500372341776725469` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004482 has offset 0).

The definition of A004482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004482.P3500372341776725469

`3*floor(n/3)+(n+1)%3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004482

/-- `3*floor(n/3)+(n+1)%3` -/
def P3500372341776725469.Spec : Prop :=
  ∀ n, P3500372341776725469.a n = A004482 n

theorem P3500372341776725469.correct : P3500372341776725469.Spec := by
  intro n
  simp only [A004482]

end A004482

/-! ## A004482.P778638331265786285

`n-2*cos(2*(n+1)*π/3)`
-/

namespace A004482.P778638331265786285
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - 2 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3)

end

end A004482.P778638331265786285

namespace A004482

/-- `n-2*cos(2*(n+1)*π/3)` -/
def P778638331265786285.Spec : Prop :=
  ∀ n, P778638331265786285.a n = (A004482 n : ℝ)

end A004482

/-! ## A004482.P10773337321298128603

`a(n-3)+3` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A004482.P10773337321298128603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  a (n - 3) + 3

end

end A004482.P10773337321298128603

namespace A004482

/-- `a(n-3)+3` -/
def P10773337321298128603.Spec : Prop :=
  ∀ n, (P10773337321298128603.a n : ℤ) = A004482 n

end A004482

/-! ## A004482.P14707929127148771965

`n+2-(n%3)!²`
-/

namespace A004482.P14707929127148771965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.factorial (n % 3) ^ 2 : ℤ)

end

end A004482.P14707929127148771965

namespace A004482

/-- `n+2-(n%3)!²` -/
def P14707929127148771965.Spec : Prop :=
  ∀ n, P14707929127148771965.a n = A004482 n

end A004482

/-! ## A004482.P3036641795441987580

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=-2, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A004482.P3036641795441987580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -2, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004482.P3036641795441987580

namespace A004482

/-- `∑[floor(a(n-3))]` -/
def P3036641795441987580.Spec : Prop :=
  ∀ n, P3036641795441987580.a n = A004482 n

end A004482

/-! ## A004482.P18132789919463240266

`3-floor(-a(n-3))` with `a(0)=1, a(1)=2, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A004482.P18132789919463240266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  3 - (-a (n - 3))

end

end A004482.P18132789919463240266

namespace A004482

/-- `3-floor(-a(n-3))` -/
def P18132789919463240266.Spec : Prop :=
  ∀ n, P18132789919463240266.a n = A004482 n

end A004482

/-! ## A004482.P11264988168383415509

`3-ceil(-a(n-3))` with `a(0)=1, a(1)=2, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A004482.P11264988168383415509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  3 - (-a (n - 3))

end

end A004482.P11264988168383415509

namespace A004482

/-- `3-ceil(-a(n-3))` -/
def P11264988168383415509.Spec : Prop :=
  ∀ n, P11264988168383415509.a n = A004482 n

end A004482

/-! ## A004482.P11967146320666177744

`3-round(-a(n-3))` with `a(0)=1, a(1)=2, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A004482.P11967146320666177744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  3 - (-a (n - 3))

end

end A004482.P11967146320666177744

namespace A004482

/-- `3-round(-a(n-3))` -/
def P11967146320666177744.Spec : Prop :=
  ∀ n, P11967146320666177744.a n = A004482 n

end A004482

/-! ## A004482.P2051243365652768250

`∑[2-4/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A004482.P2051243365652768250
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 - 4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004482.P2051243365652768250

namespace A004482

/-- `∑[2-4/a(n-1)]` -/
def P2051243365652768250.Spec : Prop :=
  ∀ n, P2051243365652768250.a n = (A004482 n : ℚ)

end A004482

/-! ## A004482.P11633245223581884870

`n+1-C(gcd(3, n+1), 2)`
-/

namespace A004482.P11633245223581884870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose (Nat.gcd 3 (n + 1)) 2 : ℤ)

end

end A004482.P11633245223581884870

namespace A004482

/-- `n+1-C(gcd(3, n+1), 2)` -/
def P11633245223581884870.Spec : Prop :=
  ∀ n, P11633245223581884870.a n = A004482 n

end A004482

/-! ## A004482.P15647345454110037503

`ogf((1+x-2x^2+3x^3)/(1-x-x^3+x^4))`
-/

namespace A004482.P15647345454110037503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, 3] [1, -1, 0, -1, 1] n

end

end A004482.P15647345454110037503

namespace A004482

/-- `ogf((1+x-2x^2+3x^3)/(1-x-x^3+x^4))` -/
def P15647345454110037503.Spec : Prop :=
  ∀ n, P15647345454110037503.a n = A004482 n

end A004482

/-! ## A004482.P3409266528285233602

`n+1-val(dr((n+3)^3), 2)`
-/

namespace A004482.P3409266528285233602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.valuation (SequenceMachineLib.digitalRoot ((n + 3) ^ 3 : ℤ)) 2 : ℤ)

end

end A004482.P3409266528285233602

namespace A004482

/-- `n+1-val(dr((n+3)^3), 2)` -/
def P3409266528285233602.Spec : Prop :=
  ∀ n, P3409266528285233602.a n = A004482 n

end A004482

/-! ## A004482.P10196173028214659893

`n+2-gcd(4, dr((n+3)^3))`
-/

namespace A004482.P10196173028214659893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.gcd 4 (SequenceMachineLib.digitalRoot ((n + 3) ^ 3 : ℤ)) : ℤ)

end

end A004482.P10196173028214659893

namespace A004482

/-- `n+2-gcd(4, dr((n+3)^3))` -/
def P10196173028214659893.Spec : Prop :=
  ∀ n, P10196173028214659893.a n = A004482 n

end A004482

/-! ## A004482.P12220129842205146998

`n+2-and(5, dr(3*(n+3)))`
-/

namespace A004482.P12220129842205146998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.land 5 (SequenceMachineLib.digitalRoot (3 * (n + 3) : ℤ)) : ℤ)

end

end A004482.P12220129842205146998

namespace A004482

/-- `n+2-and(5, dr(3*(n+3)))` -/
def P12220129842205146998.Spec : Prop :=
  ∀ n, P12220129842205146998.a n = A004482 n

end A004482

/-! ## A004482.P4455452072643464540

`n+1-C(3, dr((n+2)^3))`
-/

namespace A004482.P4455452072643464540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose 3 (SequenceMachineLib.digitalRoot ((n + 2) ^ 3 : ℤ)) : ℤ)

end

end A004482.P4455452072643464540

namespace A004482

/-- `n+1-C(3, dr((n+2)^3))` -/
def P4455452072643464540.Spec : Prop :=
  ∀ n, P4455452072643464540.a n = A004482 n

end A004482

/-! ## A004482.P5662147655093044246

`n+2-dr(Δ[(n-1)^3]²)`
-/

namespace A004482.P5662147655093044246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (SequenceMachineLib.digitalRoot ((f1 (n + 1) - f1 n) ^ 2) : ℤ)

end

end A004482.P5662147655093044246

namespace A004482

/-- `n+2-dr(Δ[(n-1)^3]²)` -/
def P5662147655093044246.Spec : Prop :=
  ∀ n, P5662147655093044246.a n = A004482 n

end A004482

/-! ## A004482.P5161150715835640946

`5-(4/2-a(n-3))` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A004482.P5161150715835640946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  5 - ((4 : ℚ) / 2 - a (n - 3))

end

end A004482.P5161150715835640946

namespace A004482

/-- `5-(4/2-a(n-3))` -/
def P5161150715835640946.Spec : Prop :=
  ∀ n, P5161150715835640946.a n = (A004482 n : ℚ)

end A004482

/-! ## A004482.P17522359601013964207

`2*(n-1)-a(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A004482.P17522359601013964207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * ((n : ℤ) - 1) - a (a (n - 2)).toNat

end

end A004482.P17522359601013964207

namespace A004482

/-- `2*(n-1)-a(a(n-2))` -/
def P17522359601013964207.Spec : Prop :=
  ∀ n, P17522359601013964207.a n = A004482 n

end A004482

/-!
# A004483: Tersum n + 2.

The programs for A004483, the canonical program `A004483.P693050724829505510` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004483 has offset 0).

The definition of A004483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004483.P693050724829505510

`n+2*cos(2*n*π/3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004483

/-- `n+2*cos(2*n*π/3)` -/
def P693050724829505510.Spec : Prop :=
  ∀ n, P693050724829505510.a n = (A004483 n : ℝ)

end A004483

/-! ## A004483.P9159723047490838235

`a(n-3)+3` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A004483.P9159723047490838235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1] fun n a =>
  a (n - 3) + 3

end

end A004483.P9159723047490838235

namespace A004483

/-- `a(n-3)+3` -/
def P9159723047490838235.Spec : Prop :=
  ∀ n, (P9159723047490838235.a n : ℤ) = A004483 n

end A004483

/-! ## A004483.P1649816106023298471

`C(gcd(3, n), 2)+n-1`
-/

namespace A004483.P1649816106023298471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.gcd 3 n) 2 : ℤ) + ((n : ℤ) - 1)

end

end A004483.P1649816106023298471

namespace A004483

/-- `C(gcd(3, n), 2)+n-1` -/
def P1649816106023298471.Spec : Prop :=
  ∀ n, P1649816106023298471.a n = A004483 n

end A004483

/-! ## A004483.P9632476066681586652

`2-3*n²%3+n`
-/

namespace A004483.P9632476066681586652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((3 * (n ^ 2 % 3) : ℕ) : ℤ) + (n : ℤ)

end

end A004483.P9632476066681586652

namespace A004483

/-- `2-3*n²%3+n` -/
def P9632476066681586652.Spec : Prop :=
  ∀ n, P9632476066681586652.a n = A004483 n

end A004483

/-! ## A004483.P2772857087269205363

`3*char[3*n]+n-1`
-/

namespace A004483.P2772857087269205363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) + ((n : ℤ) - 1)

end

end A004483.P2772857087269205363

namespace A004483

/-- `3*char[3*n]+n-1` -/
def P2772857087269205363.Spec : Prop :=
  ∀ n, P2772857087269205363.a n = A004483 n

end A004483

/-! ## A004483.P14397455132070263087

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=-2, a(2)=1, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A004483.P14397455132070263087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -2, 1, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004483.P14397455132070263087

namespace A004483

/-- `∑[floor(a(n-3))]` -/
def P14397455132070263087.Spec : Prop :=
  ∀ n, P14397455132070263087.a n = A004483 n

end A004483

/-! ## A004483.P6065295704772148848

`∑[4/(2-a(n-1))]` with `a(0)=2, a(1)=-2`
-/

namespace A004483.P6065295704772148848
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, -2] fun n f1 =>
  4 / (2 - f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004483.P6065295704772148848

namespace A004483

/-- `∑[4/(2-a(n-1))]` -/
def P6065295704772148848.Spec : Prop :=
  ∀ n, P6065295704772148848.a n = (A004483 n : ℚ)

end A004483

/-! ## A004483.P13558276790035001734

`ogf((2-2x+x^2+2x^3)/(1-x-x^3+x^4))`
-/

namespace A004483.P13558276790035001734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 1, 2] [1, -1, 0, -1, 1] n

end

end A004483.P13558276790035001734

namespace A004483

/-- `ogf((2-2x+x^2+2x^3)/(1-x-x^3+x^4))` -/
def P13558276790035001734.Spec : Prop :=
  ∀ n, P13558276790035001734.a n = A004483 n

end A004483

/-! ## A004483.P5617978933722400804

`2*∑[(1-a(n-1))^(-1)]` with `a(0)=1, a(1)=-1`
-/

namespace A004483.P5617978933722400804
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  (1 - f1 (n - 1)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004483.P5617978933722400804

namespace A004483

/-- `2*∑[(1-a(n-1))^(-1)]` -/
def P5617978933722400804.Spec : Prop :=
  ∀ n, P5617978933722400804.a n = (A004483 n : ℚ)

end A004483

/-! ## A004483.P14735244907953090600

`∑[3-a(n-1)-a(n-2)]` with `a(0)=2, a(1)=-2, a(2)=1`
-/

namespace A004483.P14735244907953090600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -2, 1] fun n f1 =>
  3 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004483.P14735244907953090600

namespace A004483

/-- `∑[3-a(n-1)-a(n-2)]` -/
def P14735244907953090600.Spec : Prop :=
  ∀ n, P14735244907953090600.a n = A004483 n

end A004483

/-! ## A004483.P13192215325279680774

`floor(a(n-1)-(a(n-4)-a(n-3)))` with `a(0)=2, a(1)=0, a(2)=1, a(3)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A004483.P13192215325279680774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1, 5] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 3))

end

end A004483.P13192215325279680774

namespace A004483

/-- `floor(a(n-1)-(a(n-4)-a(n-3)))` -/
def P13192215325279680774.Spec : Prop :=
  ∀ n, P13192215325279680774.a n = A004483 n

end A004483

/-! ## A004483.P16402238892602002936

`A004482(A004482(n))`
-/

namespace A004483.P16402238892602002936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A004482 n).toNat

end

end A004483.P16402238892602002936

namespace A004483

/-- `A004482(A004482(n))` -/
def P16402238892602002936.Spec : Prop :=
  ∀ n, P16402238892602002936.a n = A004483 n

end A004483

/-! ## A004483.P14088783589825765069

`A330396(A064429(n))`
-/

namespace A004483.P14088783589825765069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (A064429 n).toNat

end

end A004483.P14088783589825765069

namespace A004483

/-- `A330396(A064429(n))` -/
def P14088783589825765069.Spec : Prop :=
  ∀ n, P14088783589825765069.a n = A004483 n

end A004483

/-! ## A004483.P18268700353297887560

`A330396(A102283(n)+n)`
-/

namespace A004483.P18268700353297887560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (A102283 n + (n : ℤ)).toNat

end

end A004483.P18268700353297887560

namespace A004483

/-- `A330396(A102283(n)+n)` -/
def P18268700353297887560.Spec : Prop :=
  ∀ n, P18268700353297887560.a n = A004483 n

end A004483

/-! ## A004483.P10914764382304523056

`A330396(A080782(n+1)-1)`
-/

namespace A004483.P10914764382304523056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (A080782 (n + 1) - 1).toNat

end

end A004483.P10914764382304523056

namespace A004483

/-- `A330396(A080782(n+1)-1)` -/
def P10914764382304523056.Spec : Prop :=
  ∀ n, P10914764382304523056.a n = A004483 n

end A004483

/-! ## A004483.P14297229264316259914

`A017041(n)%A234904(n+1)`
-/

namespace A004483.P14297229264316259914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017041 n) (A234904 (n + 1))

end

end A004483.P14297229264316259914

namespace A004483

/-- `A017041(n)%A234904(n+1)` -/
def P14297229264316259914.Spec : Prop :=
  ∀ n, P14297229264316259914.a n = A004483 n

end A004483

/-! ## A004483.P13204263548866938175

`A004497(A004492(n))`
-/

namespace A004483.P13204263548866938175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 (A004492 n).toNat

end

end A004483.P13204263548866938175

namespace A004483

/-- `A004497(A004492(n))` -/
def P13204263548866938175.Spec : Prop :=
  ∀ n, P13204263548866938175.a n = A004483 n

end A004483

/-! ## A004483.P13496765812818609790

`A004496(A004493(n))`
-/

namespace A004483.P13496765812818609790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 (A004493 n).toNat

end

end A004483.P13496765812818609790

namespace A004483

/-- `A004496(A004493(n))` -/
def P13496765812818609790.Spec : Prop :=
  ∀ n, P13496765812818609790.a n = A004483 n

end A004483

/-! ## A004483.P8482624693219547254

`A004495(A004494(n))`
-/

namespace A004483.P8482624693219547254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 (A004494 n).toNat

end

end A004483.P8482624693219547254

namespace A004483

/-- `A004495(A004494(n))` -/
def P8482624693219547254.Spec : Prop :=
  ∀ n, P8482624693219547254.a n = A004483 n

end A004483

/-! ## A004483.P9805062652608857410

`A064429(A236348(n))`
-/

namespace A004483.P9805062652608857410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A236348 n).toNat

end

end A004483.P9805062652608857410

namespace A004483

/-- `A064429(A236348(n))` -/
def P9805062652608857410.Spec : Prop :=
  ∀ n, P9805062652608857410.a n = A004483 n

end A004483

/-!
# A004484: Sprague-Grundy values for game of Wyt Queens.

The programs for A004484, there is no canonical definition to state claims against.
-/

/-! ## A004484.P7908980442109045670

`A004481(∑[n+3]+6)`
-/

namespace A004484.P7908980442109045670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A004484.P7908980442109045670

/-! ## A004484.P16573948680258837958

`or(char[2], A004481(A167614(n+2)))`
-/

namespace A004484.P16573948680258837958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A004481 (A167614 (n + 2)).toNat)

end

end A004484.P16573948680258837958

/-! ## A004484.P16062477272049488317

`A004481(A167614(n+2))%A020723(n)`
-/

namespace A004484.P16062477272049488317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004481 (A167614 (n + 2)).toNat) (A020723 n)

end

end A004484.P16062477272049488317

/-! ## A004484.P7299342903918204594

`lcm(A004481(A167614(n+2)), A033999(n))`
-/

namespace A004484.P7299342903918204594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004481 (A167614 (n + 2)).toNat) (A033999 n)

end

end A004484.P7299342903918204594

/-! ## A004484.P5872995929027068721

`∑{d}[A004481(A167614(n+2)), A000010(#)]`
-/

namespace A004484.P5872995929027068721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A167614 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A004484.P5872995929027068721

/-! ## A004484.P13378637004689710204

`A004481(A167614(n+2))+A000007(n+1)`
-/

namespace A004484.P13378637004689710204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A167614 (n + 2)).toNat + A000007 (n + 1)

end

end A004484.P13378637004689710204

/-! ## A004484.P1298225578653039470

`A004481(A167614(n+2))+A000035(2*n)`
-/

namespace A004484.P1298225578653039470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A167614 (n + 2)).toNat + A000035 (2 * n)

end

end A004484.P1298225578653039470

/-! ## A004484.P4606862211858301223

`A000034(2*n)*A004481(A167614(n+2))`
-/

namespace A004484.P4606862211858301223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A004481 (A167614 (n + 2)).toNat

end

end A004484.P4606862211858301223

/-! ## A004484.P14766823251187796886

`A007318(C(2, n))*A004481(A167614(n+2))`
-/

namespace A004484.P14766823251187796886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A004481 (A167614 (n + 2)).toNat

end

end A004484.P14766823251187796886

/-! ## A004484.P16147535541772836406

`A004481(A167614(n+2))+n*A000038(n)`
-/

namespace A004484.P16147535541772836406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A167614 (n + 2)).toNat + (n : ℤ) * A000038 n

end

end A004484.P16147535541772836406

/-! ## A004484.P4996128717135687784

`A004481(A167614(n+2))+A008683(4*(n+1))`
-/

namespace A004484.P4996128717135687784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A167614 (n + 2)).toNat + A008683 (4 * (n + 1))

end

end A004484.P4996128717135687784

/-! ## A004484.P6714648380183025620

`A000005(ceil(1/(n+1)))*A004481(A167614(n+2))`
-/

namespace A004484.P6714648380183025620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌈1 / (n + 1 : ℚ)⌉.toNat * A004481 (A167614 (n + 2)).toNat

end

end A004484.P6714648380183025620

/-! ## A004484.P6734528226319255401

`(A000040(n+1)%2)!*A004481(A167614(n+2))`
-/

namespace A004484.P6734528226319255401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℤ) * A004481 (A167614 (n + 2)).toNat

end

end A004484.P6734528226319255401

/-! ## A004484.P7535292863243526448

`A001222(A007918(n))*A004481(A167614(n+2))`
-/

namespace A004484.P7535292863243526448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A004481 (A167614 (n + 2)).toNat

end

end A004484.P7535292863243526448

/-! ## A004484.P13667101035123109856

`A308998(A001222(n+1))+A004481(A167614(n+2))`
-/

namespace A004484.P13667101035123109856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308998 (A001222 (n + 1)).toNat + A004481 (A167614 (n + 2)).toNat

end

end A004484.P13667101035123109856

/-! ## A004484.P10024223896662615676

`A001222(A002145(n+1))*A004481(A167614(n+2))`
-/

namespace A004484.P10024223896662615676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002145 (n + 1)).toNat * A004481 (A167614 (n + 2)).toNat

end

end A004484.P10024223896662615676

/-! ## A004484.P12356297657051197813

`A001221(A053811(n+1))*A004481(A167614(n+2))`
-/

namespace A004484.P12356297657051197813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A053811 (n + 1)).toNat * A004481 (A167614 (n + 2)).toNat

end

end A004484.P12356297657051197813

/-! ## A004484.P8095274712483927929

`A001222(A078138(n+1))*A004481(A167614(n+2))`
-/

namespace A004484.P8095274712483927929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A078138 (n + 1)).toNat * A004481 (A167614 (n + 2)).toNat

end

end A004484.P8095274712483927929

/-!
# A004485: Sprague-Grundy values for game of Wyt Queens.

The programs for A004485, there is no canonical definition to state claims against.
-/

/-! ## A004485.P9371391616231245581

`A004481(A145018(n+5))`
-/

namespace A004485.P9371391616231245581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A145018 (n + 5)).toNat

end

end A004485.P9371391616231245581

/-! ## A004485.P17864848265294041612

`A004481(A155212(n)+12)`
-/

namespace A004485.P17864848265294041612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A155212 n + 12).toNat

end

end A004485.P17864848265294041612

/-! ## A004485.P12088177483549396907

`A004481(A056000(n)+14)`
-/

namespace A004485.P12088177483549396907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A056000 n + 14).toNat

end

end A004485.P12088177483549396907

/-! ## A004485.P8467177722864446796

`A004481(A374005(n+1)-1)`
-/

namespace A004485.P8467177722864446796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A374005 (n + 1) - 1).toNat

end

end A004485.P8467177722864446796

/-! ## A004485.P18364868578508183771

`A004481(A167614(n+3)+1)`
-/

namespace A004485.P18364868578508183771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A167614 (n + 3) + 1).toNat

end

end A004485.P18364868578508183771

/-! ## A004485.P3872754390776623246

`A004481(A167499(n+3)-1)`
-/

namespace A004485.P3872754390776623246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A167499 (n + 3) - 1).toNat

end

end A004485.P3872754390776623246

/-! ## A004485.P5695543041741041426

`A004481(A166136(n+3)-2)`
-/

namespace A004485.P5695543041741041426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A166136 (n + 3) - 2).toNat

end

end A004485.P5695543041741041426

/-! ## A004485.P931381808854851265

`A004481(A000124(n+4)+3)`
-/

namespace A004485.P931381808854851265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A000124 (n + 4) + 3).toNat

end

end A004485.P931381808854851265

/-! ## A004485.P5423084594699017877

`A004481(A000096(n+3)+5)`
-/

namespace A004485.P5423084594699017877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A000096 (n + 3) + 5).toNat

end

end A004485.P5423084594699017877

/-! ## A004485.P12204112153356744745

`A004481(A000217(n+4)+4)`
-/

namespace A004485.P12204112153356744745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A000217 (n + 4) + 4).toNat

end

end A004485.P12204112153356744745

/-! ## A004485.P12669204687831719085

`A004481(A034856(n+3)+6)`
-/

namespace A004485.P12669204687831719085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A034856 (n + 3) + 6).toNat

end

end A004485.P12669204687831719085

/-! ## A004485.P13455677944419200753

`A004481(A055998(n+2)+7)`
-/

namespace A004485.P13455677944419200753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A055998 (n + 2) + 7).toNat

end

end A004485.P13455677944419200753

/-! ## A004485.P2055882238206159532

`A004481(Δ[A034857(n+1)]+7)`
-/

namespace A004485.P2055882238206159532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (f1 (n + 1) - f1 n + 7).toNat

end

end A004485.P2055882238206159532

/-! ## A004485.P3941577246532335841

`A004481(A052905(n+3)-2*(n+1))`
-/

namespace A004485.P3941577246532335841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A052905 (n + 3) - (2 * (n + 1) : ℤ)).toNat

end

end A004485.P3941577246532335841

/-! ## A004485.P127607966777348590

`A004481(A167499(n)+A008585(n)+8)`
-/

namespace A004485.P127607966777348590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A167499 n + A008585 n + 8).toNat

end

end A004485.P127607966777348590

/-! ## A004485.P17428735652497444257

`A004481(∑[n+5]+5)`
-/

namespace A004485.P17428735652497444257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A004485.P17428735652497444257

/-! ## A004485.P1142579341046267710

`A004481(eq[5, A004736(n+1)])%A048058(n)`
-/

namespace A004485.P1142579341046267710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A048058 n)

end

end A004485.P1142579341046267710

/-!
# A004486: Sprague-Grundy values for game of Wyt Queens.

The programs for A004486, there is no canonical definition to state claims against.
-/

/-! ## A004486.P1393273688030871202

`A004481(∑[n+5]+15)`
-/

namespace A004486.P1393273688030871202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A004486.P1393273688030871202

/-!
# A004487: Sprague-Grundy values for game of Wyt Queens.

The programs for A004487, there is no canonical definition to state claims against.
-/

/-! ## A004487.P5137627242161885161

`A004481(A166136(n+5))`
-/

namespace A004487.P5137627242161885161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A166136 (n + 5)).toNat

end

end A004487.P5137627242161885161

/-! ## A004487.P12320475910208466322

`A004481(A167499(n+5)+1)`
-/

namespace A004487.P12320475910208466322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A167499 (n + 5) + 1).toNat

end

end A004487.P12320475910208466322

/-! ## A004487.P469987788376207554

`A004481(A167487(n+5)-1)`
-/

namespace A004487.P469987788376207554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A167487 (n + 5) - 1).toNat

end

end A004487.P469987788376207554

/-! ## A004487.P688683999543893984

`A004481(A167614(n+5)+3)`
-/

namespace A004487.P688683999543893984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A167614 (n + 5) + 3).toNat

end

end A004487.P688683999543893984

/-! ## A004487.P3024015843301238792

`A004481(A000124(n+6)+5)`
-/

namespace A004487.P3024015843301238792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A000124 (n + 6) + 5).toNat

end

end A004487.P3024015843301238792

/-! ## A004487.P15407761655051223944

`A004481(A238531(n+7)+4)`
-/

namespace A004487.P15407761655051223944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A238531 (n + 7) + 4).toNat

end

end A004487.P15407761655051223944

/-! ## A004487.P2678711666660211263

`A004481(A000096(n+5)+7)`
-/

namespace A004487.P2678711666660211263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A000096 (n + 5) + 7).toNat

end

end A004487.P2678711666660211263

/-! ## A004487.P16607051248335863544

`A004481(A000217(n+6)+6)`
-/

namespace A004487.P16607051248335863544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A000217 (n + 6) + 6).toNat

end

end A004487.P16607051248335863544

/-! ## A004487.P11072668954426789099

`A004481(A055999(n+4)-1)`
-/

namespace A004487.P11072668954426789099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A055999 (n + 4) - 1).toNat

end

end A004487.P11072668954426789099

/-! ## A004487.P9032346652653417886

`A004481(A052905(n+4)-2)`
-/

namespace A004487.P9032346652653417886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A052905 (n + 4) - 2).toNat

end

end A004487.P9032346652653417886

/-! ## A004487.P12298072475622914557

`A004481(n+5+A052905(n+3))`
-/

namespace A004487.P12298072475622914557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 ((n + 5 : ℤ) + A052905 (n + 3)).toNat

end

end A004487.P12298072475622914557

/-!
# A004488: Tersum n + n.

The programs for A004488, the canonical program `A004488.P15486159278781190577` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004488 has offset 0).

The definition of A004488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004488.P16238190862198289419

`A117966(n)+n`
-/

namespace A004488.P16238190862198289419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n + (n : ℤ)

end

end A004488.P16238190862198289419

namespace A004488

/-- `A117966(n)+n` -/
def P16238190862198289419.Spec : Prop :=
  ∀ n, P16238190862198289419.a n = A004488 n

end A004488

/-! ## A004488.P7010979350541622505

`A071770(A060583(n))`
-/

namespace A004488.P7010979350541622505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071770 (A060583 n).toNat

end

end A004488.P7010979350541622505

namespace A004488

/-- `A071770(A060583(n))` -/
def P7010979350541622505.Spec : Prop :=
  ∀ n, P7010979350541622505.a n = A004488 n

end A004488

/-! ## A004488.P8892731102874827996

`A370932(A060587(n))`
-/

namespace A004488.P8892731102874827996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370932 (A060587 n).toNat

end

end A004488.P8892731102874827996

namespace A004488

/-- `A370932(A060587(n))` -/
def P8892731102874827996.Spec : Prop :=
  ∀ n, P8892731102874827996.a n = A004488 n

end A004488

/-! ## A004488.P12577389354240918692

`A134028(n)+A274107(n)+n`
-/

namespace A004488.P12577389354240918692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 n + (A274107 n + (n : ℤ))

end

end A004488.P12577389354240918692

namespace A004488

/-- `A134028(n)+A274107(n)+n` -/
def P12577389354240918692.Spec : Prop :=
  ∀ n, P12577389354240918692.a n = A004488 n

end A004488

/-! ## A004488.P6924263383086478908

`A005843(n)-(n-A117966(n))`
-/

namespace A004488.P6924263383086478908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A117966 n)

end

end A004488.P6924263383086478908

namespace A004488

/-- `A005843(n)-(n-A117966(n))` -/
def P6924263383086478908.Spec : Prop :=
  ∀ n, P6924263383086478908.a n = A004488 n

end A004488

/-! ## A004488.P15486159278781190577

`abs(A168237(A300222(n))-n-n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004488

/-- `abs(A168237(A300222(n))-n-n)` -/
def P15486159278781190577.Spec : Prop :=
  ∀ n, P15486159278781190577.a n = A004488 n

theorem P15486159278781190577.correct : P15486159278781190577.Spec := by
  intro n
  simp only [A004488]

end A004488

/-! ## A004488.P12783767568717227283

`A117967(n)-A117966(2*n)`
-/

namespace A004488.P12783767568717227283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n - A117966 (2 * n)

end

end A004488.P12783767568717227283

namespace A004488

/-- `A117967(n)-A117966(2*n)` -/
def P12783767568717227283.Spec : Prop :=
  ∀ n, P12783767568717227283.a n = A004488 n

end A004488

/-! ## A004488.P6629220509426835072

`A368229(A353661(n))`
-/

namespace A004488.P6629220509426835072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368229 (A353661 n).toNat

end

end A004488.P6629220509426835072

namespace A004488

/-- `A368229(A353661(n))` -/
def P6629220509426835072.Spec : Prop :=
  ∀ n, P6629220509426835072.a n = A004488 n

end A004488

/-! ## A004488.P15404385952904376465

`A353660(A368230(n))`
-/

namespace A004488.P15404385952904376465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353660 (A368230 n).toNat

end

end A004488.P15404385952904376465

namespace A004488

/-- `A353660(A368230(n))` -/
def P15404385952904376465.Spec : Prop :=
  ∀ n, P15404385952904376465.a n = A004488 n

end A004488

/-! ## A004488.P471215661089524937

`A371268(A361945(n))`
-/

namespace A004488.P471215661089524937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 (A361945 n).toNat

end

end A004488.P471215661089524937

namespace A004488

/-- `A371268(A361945(n))` -/
def P471215661089524937.Spec : Prop :=
  ∀ n, P471215661089524937.a n = A004488 n

end A004488

/-! ## A004488.P5745867910602049102

`A380350(A380349(n))`
-/

namespace A004488.P5745867910602049102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380350 (A380349 n).toNat

end

end A004488.P5745867910602049102

namespace A004488

/-- `A380350(A380349(n))` -/
def P5745867910602049102.Spec : Prop :=
  ∀ n, P5745867910602049102.a n = A004488 n

end A004488

/-! ## A004488.P16354933828885060056

`A380352(A380351(n))`
-/

namespace A004488.P16354933828885060056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380352 (A380351 n).toNat

end

end A004488.P16354933828885060056

namespace A004488

/-- `A380352(A380351(n))` -/
def P16354933828885060056.Spec : Prop :=
  ∀ n, P16354933828885060056.a n = A004488 n

end A004488

/-! ## A004488.P17585814848564684401

`A374363(n)+A244042(n)`
-/

namespace A004488.P17585814848564684401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374363 n + A244042 n

end

end A004488.P17585814848564684401

namespace A004488

/-- `A374363(n)+A244042(n)` -/
def P17585814848564684401.Spec : Prop :=
  ∀ n, P17585814848564684401.a n = A004488 n

end A004488

/-! ## A004488.P7628604647894825785

`n-A343766(A128173(n))`
-/

namespace A004488.P7628604647894825785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A343766 (A128173 n).toNat

end

end A004488.P7628604647894825785

namespace A004488

/-- `n-A343766(A128173(n))` -/
def P7628604647894825785.Spec : Prop :=
  ∀ n, P7628604647894825785.a n = A004488 n

end A004488

/-! ## A004488.P9415276651756751906

`A007494(A244042(n)+n)-n`
-/

namespace A004488.P9415276651756751906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A244042 n + (n : ℤ)).toNat - (n : ℤ)

end

end A004488.P9415276651756751906

namespace A004488

/-- `A007494(A244042(n)+n)-n` -/
def P9415276651756751906.Spec : Prop :=
  ∀ n, P9415276651756751906.a n = A004488 n

end A004488

/-! ## A004488.P16925325061237483013

`A244042(n)+A004526(A244042(n)+n)`
-/

namespace A004488.P16925325061237483013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n + A004526 (A244042 n + (n : ℤ)).toNat

end

end A004488.P16925325061237483013

namespace A004488

/-- `A244042(n)+A004526(A244042(n)+n)` -/
def P16925325061237483013.Spec : Prop :=
  ∀ n, P16925325061237483013.a n = A004488 n

end A004488

/-! ## A004488.P12606375050341144765

`A244042(3*n)-A117966(n)`
-/

namespace A004488.P12606375050341144765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (3 * n) - A117966 n

end

end A004488.P12606375050341144765

namespace A004488

/-- `A244042(3*n)-A117966(n)` -/
def P12606375050341144765.Spec : Prop :=
  ∀ n, P12606375050341144765.a n = A004488 n

end A004488

/-! ## A004488.P4551259982459683924

`A256293(A171960(2*n)+n)`
-/

namespace A004488.P4551259982459683924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256293 (A171960 (2 * n) + (n : ℤ)).toNat

end

end A004488.P4551259982459683924

namespace A004488

/-- `A256293(A171960(2*n)+n)` -/
def P4551259982459683924.Spec : Prop :=
  ∀ n, P4551259982459683924.a n = A004488 n

end A004488

/-! ## A004488.P6189869257230057855

`A374363(3*n)-n`
-/

namespace A004488.P6189869257230057855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374363 (3 * n) - (n : ℤ)

end

end A004488.P6189869257230057855

namespace A004488

/-- `A374363(3*n)-n` -/
def P6189869257230057855.Spec : Prop :=
  ∀ n, P6189869257230057855.a n = A004488 n

end A004488

/-! ## A004488.P628438912279006291

`A001057(A140266(n+1)-1)+n`
-/

namespace A004488.P628438912279006291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A140266 (n + 1) - 1).toNat + (n : ℤ)

end

end A004488.P628438912279006291

namespace A004488

/-- `A001057(A140266(n+1)-1)+n` -/
def P628438912279006291.Spec : Prop :=
  ∀ n, P628438912279006291.a n = A004488 n

end A004488

/-!
# A004489: Table of tersums m + n (answers written in base 10).

The programs for A004489, there is no canonical definition to state claims against.
-/

/-! ## A004489.P3744648680084722635

`A004488(A253586(n))`
-/

namespace A004489.P3744648680084722635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A253586 n).toNat

end

end A004489.P3744648680084722635

/-! ## A004489.P8504791770115054932

`A253586(C(A253586(n)+1, 2))`
-/

namespace A004489.P8504791770115054932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253586 (Nat.choose (A253586 n + 1).toNat 2)

end

end A004489.P8504791770115054932

/-! ## A004489.P17149436079452887525

`A253586(A000124(A253586(n))-1)`
-/

namespace A004489.P17149436079452887525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253586 (A000124 (A253586 n).toNat - 1).toNat

end

end A004489.P17149436079452887525

/-! ## A004489.P15160145969180518162

`A253586(A253586(n)+A000217(A253586(n)))`
-/

namespace A004489.P15160145969180518162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253586 (A253586 n + A000217 (A253586 n).toNat).toNat

end

end A004489.P15160145969180518162

/-! ## A004489.P1230825974927460281

`A253586(A000096(A253586(n))-A253586(n))`
-/

namespace A004489.P1230825974927460281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253586 (A000096 (A253586 n).toNat - A253586 n).toNat

end

end A004489.P1230825974927460281

/-! ## A004489.P14912936726192417822

`A253586(A055998(A253586(n))-A253586(n))`
-/

namespace A004489.P14912936726192417822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253586 (A055998 (A253586 n).toNat - A253586 n).toNat

end

end A004489.P14912936726192417822

/-! ## A004489.P13231760966017811923

`A253586(A000217(A253586(n)))%A000124(n)`
-/

namespace A004489.P13231760966017811923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253586 (A000217 (A253586 n).toNat).toNat) (A000124 n)

end

end A004489.P13231760966017811923

/-! ## A004489.P16109973487300220192

`A253586(A000217(A253586(n)%A008574(n)))`
-/

namespace A004489.P16109973487300220192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253586 (A000217 (Int.tmod (A253586 n) (A008574 n)).toNat).toNat

end

end A004489.P16109973487300220192

/-!
# A004490: Colossally abundant numbers: m for which there is a positive exponent epsilon such that sigma(m)/m^{1 + epsilon} >= sigma(k)/k^{1 + epsilon} for all k > 1, so that m attains the maximum value of sigma(m)/m^{1 + epsilon}.

The programs for A004490, there is no canonical definition to state claims against.
-/

/-! ## A004490.P6960919945669740837

`∏[A073751(n+1)]`
-/

namespace A004490.P6960919945669740837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004490.P6960919945669740837

/-! ## A004490.P8609383152516190956

`a(n-1)*A073751(2*n+1-n)` with `a(0)=2`
-/

namespace A004490.P8609383152516190956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A073751 (2 * n + 1 - n)

end

end A004490.P8609383152516190956

/-! ## A004490.P2489581481870633931

`∏[A000040(A342011(n+1))]`
-/

namespace A004490.P2489581481870633931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A342011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004490.P2489581481870633931

/-! ## A004490.P13718457735554418924

`∏[p?[A073751(A008619(2*n))]]`
-/

namespace A004490.P13718457735554418924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (A008619 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004490.P13718457735554418924

/-! ## A004490.P5187278793220358653

`∏[A008578(A342011(n+1)+1)]`
-/

namespace A004490.P5187278793220358653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A342011 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004490.P5187278793220358653

/-! ## A004490.P15483032211126274513

`∏[A158611(A342011(n+1)+2)]`
-/

namespace A004490.P15483032211126274513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A342011 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004490.P15483032211126274513

/-! ## A004490.P2765620850943843549

`∏[∑{d}[A342011(n+1), A007444(#)]]`
-/

namespace A004490.P2765620850943843549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342011 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A007444 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004490.P2765620850943843549

/-! ## A004490.P10459011095039607925

`∏[A020639(A073751(ϕ²-(ϕ-n)))]`
-/

namespace A004490.P10459011095039607925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A073751 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004490.P10459011095039607925

/-! ## A004490.P10235569707173734096

`∏[A073751(A008619(2*n))%A017113(n)]`
-/

namespace A004490.P10235569707173734096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073751 (A008619 (2 * n)).toNat) (A017113 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004490.P10235569707173734096

/-!
# A004492: Tersum n + 3.

The programs for A004492, the canonical program `A004492.P2589593662839506921` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004492 has offset 0).

The definition of A004492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004492.P2589593662839506921

`dr(n+4)-dr(n+1)+n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004492

/-- `dr(n+4)-dr(n+1)+n` -/
def P2589593662839506921.Spec : Prop :=
  ∀ n, P2589593662839506921.a n = A004492 n

theorem P2589593662839506921.correct : P2589593662839506921.Spec := by
  intro n
  simp only [A004492]

end A004492

/-! ## A004492.P9561875448458591845

`A004494(A004482(n))`
-/

namespace A004492.P9561875448458591845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 (A004482 n).toNat

end

end A004492.P9561875448458591845

namespace A004492

/-- `A004494(A004482(n))` -/
def P9561875448458591845.Spec : Prop :=
  ∀ n, P9561875448458591845.a n = A004492 n

end A004492

/-! ## A004492.P8605195885127792408

`A004493(n)-A061347(n+1)`
-/

namespace A004492.P8605195885127792408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 n - A061347 (n + 1)

end

end A004492.P8605195885127792408

namespace A004492

/-- `A004493(n)-A061347(n+1)` -/
def P8605195885127792408.Spec : Prop :=
  ∀ n, P8605195885127792408.a n = A004492 n

end A004492

/-! ## A004492.P3273621387028682841

`A004493(n)+n-A004482(n)`
-/

namespace A004492.P3273621387028682841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 n + ((n : ℤ) - A004482 n)

end

end A004492.P3273621387028682841

namespace A004492

/-- `A004493(n)+n-A004482(n)` -/
def P3273621387028682841.Spec : Prop :=
  ∀ n, P3273621387028682841.a n = A004492 n

end A004492

/-! ## A004492.P6171819660711595636

`A004494(n)+n-A004483(n)`
-/

namespace A004492.P6171819660711595636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 n + ((n : ℤ) - A004483 n)

end

end A004492.P6171819660711595636

namespace A004492

/-- `A004494(n)+n-A004483(n)` -/
def P6171819660711595636.Spec : Prop :=
  ∀ n, P6171819660711595636.a n = A004492 n

end A004492

/-! ## A004492.P4451089299939480436

`A004501(n)+n-A004498(n)`
-/

namespace A004492.P4451089299939480436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004501 n + ((n : ℤ) - A004498 n)

end

end A004492.P4451089299939480436

namespace A004492

/-- `A004501(n)+n-A004498(n)` -/
def P4451089299939480436.Spec : Prop :=
  ∀ n, P4451089299939480436.a n = A004492 n

end A004492

/-! ## A004492.P4938108486319309017

`A004502(n)+n-A004499(n)`
-/

namespace A004492.P4938108486319309017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 n + ((n : ℤ) - A004499 n)

end

end A004492.P4938108486319309017

namespace A004492

/-- `A004502(n)+n-A004499(n)` -/
def P4938108486319309017.Spec : Prop :=
  ∀ n, P4938108486319309017.a n = A004492 n

end A004492

/-! ## A004492.P3561766224170923751

`A004503(n)+n-A004500(n)`
-/

namespace A004492.P3561766224170923751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 n + ((n : ℤ) - A004500 n)

end

end A004492.P3561766224170923751

namespace A004492

/-- `A004503(n)+n-A004500(n)` -/
def P3561766224170923751.Spec : Prop :=
  ∀ n, P3561766224170923751.a n = A004492 n

end A004492

/-! ## A004492.P15017989881112097818

`A004510(n)+n-A004507(n)`
-/

namespace A004492.P15017989881112097818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004510 n + ((n : ℤ) - A004507 n)

end

end A004492.P15017989881112097818

namespace A004492

/-- `A004510(n)+n-A004507(n)` -/
def P15017989881112097818.Spec : Prop :=
  ∀ n, P15017989881112097818.a n = A004492 n

end A004492

/-! ## A004492.P14866837736656922777

`A004511(n)+n-A004508(n)`
-/

namespace A004492.P14866837736656922777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 n + ((n : ℤ) - A004508 n)

end

end A004492.P14866837736656922777

namespace A004492

/-- `A004511(n)+n-A004508(n)` -/
def P14866837736656922777.Spec : Prop :=
  ∀ n, P14866837736656922777.a n = A004492 n

end A004492

/-! ## A004492.P2198696413910332130

`A004512(n)+n-A004509(n)`
-/

namespace A004492.P2198696413910332130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 n + ((n : ℤ) - A004509 n)

end

end A004492.P2198696413910332130

namespace A004492

/-- `A004512(n)+n-A004509(n)` -/
def P2198696413910332130.Spec : Prop :=
  ∀ n, P2198696413910332130.a n = A004492 n

end A004492

/-! ## A004492.P494052062015229606

`A004493(n)+A004498(n)-A004499(n)`
-/

namespace A004492.P494052062015229606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 n + (A004498 n - A004499 n)

end

end A004492.P494052062015229606

namespace A004492

/-- `A004493(n)+A004498(n)-A004499(n)` -/
def P494052062015229606.Spec : Prop :=
  ∀ n, P494052062015229606.a n = A004492 n

end A004492

/-! ## A004492.P2709996455520125669

`A004493(n)+A004501(n)-A004502(n)`
-/

namespace A004492.P2709996455520125669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 n + (A004501 n - A004502 n)

end

end A004492.P2709996455520125669

namespace A004492

/-- `A004493(n)+A004501(n)-A004502(n)` -/
def P2709996455520125669.Spec : Prop :=
  ∀ n, P2709996455520125669.a n = A004492 n

end A004492

/-! ## A004492.P17372659519335226318

`A004493(A004483(n))`
-/

namespace A004492.P17372659519335226318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 (A004483 n).toNat

end

end A004492.P17372659519335226318

namespace A004492

/-- `A004493(A004483(n))` -/
def P17372659519335226318.Spec : Prop :=
  ∀ n, P17372659519335226318.a n = A004492 n

end A004492

/-! ## A004492.P18359856611055936232

`A004495(A004495(n))`
-/

namespace A004492.P18359856611055936232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 (A004495 n).toNat

end

end A004492.P18359856611055936232

namespace A004492

/-- `A004495(A004495(n))` -/
def P18359856611055936232.Spec : Prop :=
  ∀ n, P18359856611055936232.a n = A004492 n

end A004492

/-! ## A004492.P11340611478588002408

`A004497(A004496(n))`
-/

namespace A004492.P11340611478588002408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 (A004496 n).toNat

end

end A004492.P11340611478588002408

namespace A004492

/-- `A004497(A004496(n))` -/
def P11340611478588002408.Spec : Prop :=
  ∀ n, P11340611478588002408.a n = A004492 n

end A004492

/-! ## A004492.P9315797585667733412

`A099837(n+1)+A004493(n)`
-/

namespace A004492.P9315797585667733412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (n + 1) + A004493 n

end

end A004492.P9315797585667733412

namespace A004492

/-- `A099837(n+1)+A004493(n)` -/
def P9315797585667733412.Spec : Prop :=
  ∀ n, P9315797585667733412.a n = A004492 n

end A004492

/-! ## A004492.P2250573740127439278

`A131713(n+1)+A004494(n)`
-/

namespace A004492.P2250573740127439278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 1) + A004494 n

end

end A004492.P2250573740127439278

namespace A004492

/-- `A131713(n+1)+A004494(n)` -/
def P2250573740127439278.Spec : Prop :=
  ∀ n, P2250573740127439278.a n = A004492 n

end A004492

/-! ## A004492.P3522924262522508849

`A004493(n-A131713(n+1))`
-/

namespace A004492.P3522924262522508849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 ((n : ℤ) - A131713 (n + 1)).toNat

end

end A004492.P3522924262522508849

namespace A004492

/-- `A004493(n-A131713(n+1))` -/
def P3522924262522508849.Spec : Prop :=
  ∀ n, P3522924262522508849.a n = A004492 n

end A004492

/-! ## A004492.P5644314803101954723

`A004482(A004482(A004493(n)))`
-/

namespace A004492.P5644314803101954723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A004482 (A004493 n).toNat).toNat

end

end A004492.P5644314803101954723

namespace A004492

/-- `A004482(A004482(A004493(n)))` -/
def P5644314803101954723.Spec : Prop :=
  ∀ n, P5644314803101954723.a n = A004492 n

end A004492

/-!
# A004493: Tersum n + 4.

The programs for A004493, the canonical program `A004493.P4263672960169498817` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004493 has offset 0).

The definition of A004493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004493.P4263672960169498817

`A004492(A004482(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004493

/-- `A004492(A004482(n))` -/
def P4263672960169498817.Spec : Prop :=
  ∀ n, P4263672960169498817.a n = A004493 n

theorem P4263672960169498817.correct : P4263672960169498817.Spec := by
  intro n
  simp only [A004493]

end A004493

/-! ## A004493.P4678050933719375681

`A004494(n)-A131713(n)`
-/

namespace A004493.P4678050933719375681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 n - A131713 n

end

end A004493.P4678050933719375681

namespace A004493

/-- `A004494(n)-A131713(n)` -/
def P4678050933719375681.Spec : Prop :=
  ∀ n, P4678050933719375681.a n = A004493 n

end A004493

/-! ## A004493.P18165186045788382538

`A061347(n+1)+A004492(n)`
-/

namespace A004493.P18165186045788382538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) + A004492 n

end

end A004493.P18165186045788382538

namespace A004493

/-- `A061347(n+1)+A004492(n)` -/
def P18165186045788382538.Spec : Prop :=
  ∀ n, P18165186045788382538.a n = A004493 n

end A004493

/-! ## A004493.P15450217586074385067

`A004502(n)+n-A004498(n)`
-/

namespace A004493.P15450217586074385067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 n + ((n : ℤ) - A004498 n)

end

end A004493.P15450217586074385067

namespace A004493

/-- `A004502(n)+n-A004498(n)` -/
def P15450217586074385067.Spec : Prop :=
  ∀ n, P15450217586074385067.a n = A004493 n

end A004493

/-! ## A004493.P2961486295031776825

`A004511(n)+n-A004507(n)`
-/

namespace A004493.P2961486295031776825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 n + ((n : ℤ) - A004507 n)

end

end A004493.P2961486295031776825

namespace A004493

/-- `A004511(n)+n-A004507(n)` -/
def P2961486295031776825.Spec : Prop :=
  ∀ n, P2961486295031776825.a n = A004493 n

end A004493

/-! ## A004493.P2814586416749757440

`A004492(2*n+1-A004483(n+1))`
-/

namespace A004493.P2814586416749757440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 ((2 * n + 1 : ℤ) - A004483 (n + 1)).toNat

end

end A004493.P2814586416749757440

namespace A004493

/-- `A004492(2*n+1-A004483(n+1))` -/
def P2814586416749757440.Spec : Prop :=
  ∀ n, P2814586416749757440.a n = A004493 n

end A004493

/-! ## A004493.P131228307295861859

`A004492(n)+A004499(n)-A004498(n)`
-/

namespace A004493.P131228307295861859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 n + (A004499 n - A004498 n)

end

end A004493.P131228307295861859

namespace A004493

/-- `A004492(n)+A004499(n)-A004498(n)` -/
def P131228307295861859.Spec : Prop :=
  ∀ n, P131228307295861859.a n = A004493 n

end A004493

/-! ## A004493.P13643251275158670693

`A004492(n+1)+A004492(n)-A004494(n+1)`
-/

namespace A004493.P13643251275158670693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (n + 1) + (A004492 n - A004494 (n + 1))

end

end A004493.P13643251275158670693

namespace A004493

/-- `A004492(n+1)+A004492(n)-A004494(n+1)` -/
def P13643251275158670693.Spec : Prop :=
  ∀ n, P13643251275158670693.a n = A004493 n

end A004493

/-! ## A004493.P14874590838529853822

`A004498(n+1)+A004494(n)-A004499(n+1)`
-/

namespace A004493.P14874590838529853822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 (n + 1) + (A004494 n - A004499 (n + 1))

end

end A004493.P14874590838529853822

namespace A004493

/-- `A004498(n+1)+A004494(n)-A004499(n+1)` -/
def P14874590838529853822.Spec : Prop :=
  ∀ n, P14874590838529853822.a n = A004493 n

end A004493

/-! ## A004493.P5467922204836064720

`A004494(A004483(n))`
-/

namespace A004493.P5467922204836064720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 (A004483 n).toNat

end

end A004493.P5467922204836064720

namespace A004493

/-- `A004494(A004483(n))` -/
def P5467922204836064720.Spec : Prop :=
  ∀ n, P5467922204836064720.a n = A004493 n

end A004493

/-! ## A004493.P14576855252196005285

`A004496(A004495(n))`
-/

namespace A004493.P14576855252196005285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 (A004495 n).toNat

end

end A004493.P14576855252196005285

namespace A004493

/-- `A004496(A004495(n))` -/
def P14576855252196005285.Spec : Prop :=
  ∀ n, P14576855252196005285.a n = A004493 n

end A004493

/-! ## A004493.P10232348637220793203

`A004497(A004497(n))`
-/

namespace A004493.P10232348637220793203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 (A004497 n).toNat

end

end A004493.P10232348637220793203

namespace A004493

/-- `A004497(A004497(n))` -/
def P10232348637220793203.Spec : Prop :=
  ∀ n, P10232348637220793203.a n = A004493 n

end A004493

/-! ## A004493.P6408611600494627249

`A004483(A004483(A004492(n)))`
-/

namespace A004493.P6408611600494627249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A004483 (A004492 n).toNat).toNat

end

end A004493.P6408611600494627249

namespace A004493

/-- `A004483(A004483(A004492(n)))` -/
def P6408611600494627249.Spec : Prop :=
  ∀ n, P6408611600494627249.a n = A004493 n

end A004493

/-! ## A004493.P16358724923414115673

`A004482(A004482(A004494(n)))`
-/

namespace A004493.P16358724923414115673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A004482 (A004494 n).toNat).toNat

end

end A004493.P16358724923414115673

namespace A004493

/-- `A004482(A004482(A004494(n)))` -/
def P16358724923414115673.Spec : Prop :=
  ∀ n, P16358724923414115673.a n = A004493 n

end A004493

/-! ## A004493.P1155489171337367319

`A004496(A004483(A004496(n)))`
-/

namespace A004493.P1155489171337367319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 (A004483 (A004496 n).toNat).toNat

end

end A004493.P1155489171337367319

namespace A004493

/-- `A004496(A004483(A004496(n)))` -/
def P1155489171337367319.Spec : Prop :=
  ∀ n, P1155489171337367319.a n = A004493 n

end A004493

/-! ## A004493.P5280468550520282411

`A004496(A004496(n))-A131713(n)`
-/

namespace A004493.P5280468550520282411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 (A004496 n).toNat - A131713 n

end

end A004493.P5280468550520282411

namespace A004493

/-- `A004496(A004496(n))-A131713(n)` -/
def P5280468550520282411.Spec : Prop :=
  ∀ n, P5280468550520282411.a n = A004493 n

end A004493

/-! ## A004493.P11382737853603699330

`A004495(A061347(n+1)+A004495(n))`
-/

namespace A004493.P11382737853603699330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 (A061347 (n + 1) + A004495 n).toNat

end

end A004493.P11382737853603699330

namespace A004493

/-- `A004495(A061347(n+1)+A004495(n))` -/
def P11382737853603699330.Spec : Prop :=
  ∀ n, P11382737853603699330.a n = A004493 n

end A004493

/-! ## A004493.P1598410360788664607

`A004496(A004496(n)-A061347(n+1))`
-/

namespace A004493.P1598410360788664607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 (A004496 n - A061347 (n + 1)).toNat

end

end A004493.P1598410360788664607

namespace A004493

/-- `A004496(A004496(n)-A061347(n+1))` -/
def P1598410360788664607.Spec : Prop :=
  ∀ n, P1598410360788664607.a n = A004493 n

end A004493

/-! ## A004493.P3345513086544778965

`A004511(A004498(n))`
-/

namespace A004493.P3345513086544778965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A004498 n).toNat

end

end A004493.P3345513086544778965

namespace A004493

/-- `A004511(A004498(n))` -/
def P3345513086544778965.Spec : Prop :=
  ∀ n, P3345513086544778965.a n = A004493 n

end A004493

/-! ## A004493.P11827400323528636541

`A004510(A004499(n))`
-/

namespace A004493.P11827400323528636541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004510 (A004499 n).toNat

end

end A004493.P11827400323528636541

namespace A004493

/-- `A004510(A004499(n))` -/
def P11827400323528636541.Spec : Prop :=
  ∀ n, P11827400323528636541.a n = A004493 n

end A004493

/-!
# A004494: Tersum n + 5.

The programs for A004494, the canonical program `A004494.P1693956114602232970` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004494 has offset 0).

The definition of A004494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004494.P1693956114602232970

`A004493(A004482(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004494

/-- `A004493(A004482(n))` -/
def P1693956114602232970.Spec : Prop :=
  ∀ n, P1693956114602232970.a n = A004494 n

theorem P1693956114602232970.correct : P1693956114602232970.Spec := by
  intro n
  simp only [A004494]

end A004494

/-! ## A004494.P4809948230292090526

`A131713(n)+A004493(n)`
-/

namespace A004494.P4809948230292090526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n + A004493 n

end

end A004494.P4809948230292090526

namespace A004494

/-- `A131713(n)+A004493(n)` -/
def P4809948230292090526.Spec : Prop :=
  ∀ n, P4809948230292090526.a n = A004494 n

end A004494

/-! ## A004494.P16997870550723009912

`A004493(A061347(n+1)+n)`
-/

namespace A004494.P16997870550723009912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 (A061347 (n + 1) + (n : ℤ)).toNat

end

end A004494.P16997870550723009912

namespace A004494

/-- `A004493(A061347(n+1)+n)` -/
def P16997870550723009912.Spec : Prop :=
  ∀ n, P16997870550723009912.a n = A004494 n

end A004494

/-! ## A004494.P15026979658538379991

`A004503(n)+n-A004498(n)`
-/

namespace A004494.P15026979658538379991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 n + ((n : ℤ) - A004498 n)

end

end A004494.P15026979658538379991

namespace A004494

/-- `A004503(n)+n-A004498(n)` -/
def P15026979658538379991.Spec : Prop :=
  ∀ n, P15026979658538379991.a n = A004494 n

end A004494

/-! ## A004494.P14138194793895426294

`A004512(n)+n-A004507(n)`
-/

namespace A004494.P14138194793895426294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 n + ((n : ℤ) - A004507 n)

end

end A004494.P14138194793895426294

namespace A004494

/-- `A004512(n)+n-A004507(n)` -/
def P14138194793895426294.Spec : Prop :=
  ∀ n, P14138194793895426294.a n = A004494 n

end A004494

/-! ## A004494.P12942679847224115320

`A004493(2*n+1-A004483(n+1))`
-/

namespace A004494.P12942679847224115320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 ((2 * n + 1 : ℤ) - A004483 (n + 1)).toNat

end

end A004494.P12942679847224115320

namespace A004494

/-- `A004493(2*n+1-A004483(n+1))` -/
def P12942679847224115320.Spec : Prop :=
  ∀ n, P12942679847224115320.a n = A004494 n

end A004494

/-! ## A004494.P6692761484960162381

`A004493(n+1)+A004493(n)-A004492(n+1)`
-/

namespace A004494.P6692761484960162381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 (n + 1) + (A004493 n - A004492 (n + 1))

end

end A004494.P6692761484960162381

namespace A004494

/-- `A004493(n+1)+A004493(n)-A004492(n+1)` -/
def P6692761484960162381.Spec : Prop :=
  ∀ n, P6692761484960162381.a n = A004494 n

end A004494

/-! ## A004494.P11684611015236163131

`A004499(n+1)+A004493(n)-A004498(n+1)`
-/

namespace A004494.P11684611015236163131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (n + 1) + (A004493 n - A004498 (n + 1))

end

end A004494.P11684611015236163131

namespace A004494

/-- `A004499(n+1)+A004493(n)-A004498(n+1)` -/
def P11684611015236163131.Spec : Prop :=
  ∀ n, P11684611015236163131.a n = A004494 n

end A004494

/-! ## A004494.P9373120731589312415

`A004492(A004483(n))`
-/

namespace A004494.P9373120731589312415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A004483 n).toNat

end

end A004494.P9373120731589312415

namespace A004494

/-- `A004492(A004483(n))` -/
def P9373120731589312415.Spec : Prop :=
  ∀ n, P9373120731589312415.a n = A004494 n

end A004494

/-! ## A004494.P9995727339375310354

`A004497(A004495(n))`
-/

namespace A004494.P9995727339375310354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 (A004495 n).toNat

end

end A004494.P9995727339375310354

namespace A004494

/-- `A004497(A004495(n))` -/
def P9995727339375310354.Spec : Prop :=
  ∀ n, P9995727339375310354.a n = A004494 n

end A004494

/-! ## A004494.P2416076475954476085

`A004496(A004496(n))`
-/

namespace A004494.P2416076475954476085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 (A004496 n).toNat

end

end A004494.P2416076475954476085

namespace A004494

/-- `A004496(A004496(n))` -/
def P2416076475954476085.Spec : Prop :=
  ∀ n, P2416076475954476085.a n = A004494 n

end A004494

/-! ## A004494.P5238500594662262483

`A004493(n-A099837(n+1))`
-/

namespace A004494.P5238500594662262483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 ((n : ℤ) - A099837 (n + 1)).toNat

end

end A004494.P5238500594662262483

namespace A004494

/-- `A004493(n-A099837(n+1))` -/
def P5238500594662262483.Spec : Prop :=
  ∀ n, P5238500594662262483.a n = A004494 n

end A004494

/-! ## A004494.P13619292920334145163

`A004482(A004482(A004492(n)))`
-/

namespace A004494.P13619292920334145163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A004482 (A004492 n).toNat).toNat

end

end A004494.P13619292920334145163

namespace A004494

/-- `A004482(A004482(A004492(n)))` -/
def P13619292920334145163.Spec : Prop :=
  ∀ n, P13619292920334145163.a n = A004494 n

end A004494

/-! ## A004494.P11640950793335987527

`A004483(A004483(A004493(n)))`
-/

namespace A004494.P11640950793335987527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A004483 (A004493 n).toNat).toNat

end

end A004494.P11640950793335987527

namespace A004494

/-- `A004483(A004483(A004493(n)))` -/
def P11640950793335987527.Spec : Prop :=
  ∀ n, P11640950793335987527.a n = A004494 n

end A004494

/-! ## A004494.P16578931931552157067

`A004497(A004482(A004497(n)))`
-/

namespace A004494.P16578931931552157067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 (A004482 (A004497 n).toNat).toNat

end

end A004494.P16578931931552157067

namespace A004494

/-- `A004497(A004482(A004497(n)))` -/
def P16578931931552157067.Spec : Prop :=
  ∀ n, P16578931931552157067.a n = A004494 n

end A004494

/-! ## A004494.P16050545574238134230

`A131713(n)+A004497(A004497(n))`
-/

namespace A004494.P16050545574238134230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n + A004497 (A004497 n).toNat

end

end A004494.P16050545574238134230

namespace A004494

/-- `A131713(n)+A004497(A004497(n))` -/
def P16050545574238134230.Spec : Prop :=
  ∀ n, P16050545574238134230.a n = A004494 n

end A004494

/-! ## A004494.P11917335414914118731

`A004512(A004498(n))`
-/

namespace A004494.P11917335414914118731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 (A004498 n).toNat

end

end A004494.P11917335414914118731

namespace A004494

/-- `A004512(A004498(n))` -/
def P11917335414914118731.Spec : Prop :=
  ∀ n, P11917335414914118731.a n = A004494 n

end A004494

/-! ## A004494.P6507262778104839426

`A004511(A004499(n))`
-/

namespace A004494.P6507262778104839426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A004499 n).toNat

end

end A004494.P6507262778104839426

namespace A004494

/-- `A004511(A004499(n))` -/
def P6507262778104839426.Spec : Prop :=
  ∀ n, P6507262778104839426.a n = A004494 n

end A004494

/-! ## A004494.P821251717673090388

`A004510(A004500(n))`
-/

namespace A004494.P821251717673090388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004510 (A004500 n).toNat

end

end A004494.P821251717673090388

namespace A004494

/-- `A004510(A004500(n))` -/
def P821251717673090388.Spec : Prop :=
  ∀ n, P821251717673090388.a n = A004494 n

end A004494

/-! ## A004494.P3654407186244242512

`A004509(A004501(n))`
-/

namespace A004494.P3654407186244242512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004509 (A004501 n).toNat

end

end A004494.P3654407186244242512

namespace A004494

/-- `A004509(A004501(n))` -/
def P3654407186244242512.Spec : Prop :=
  ∀ n, P3654407186244242512.a n = A004494 n

end A004494

/-!
# A004495: Tersum n + 6.

The programs for A004495, the canonical program `A004495.P5041497027561520863` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004495 has offset 0).

The definition of A004495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004495.P5041497027561520863

`dr(n+7)-dr(n+1)+n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004495

/-- `dr(n+7)-dr(n+1)+n` -/
def P5041497027561520863.Spec : Prop :=
  ∀ n, P5041497027561520863.a n = A004495 n

theorem P5041497027561520863.correct : P5041497027561520863.Spec := by
  intro n
  simp only [A004495]

end A004495

/-! ## A004495.P11199607241228285815

`A004497(A004482(n))`
-/

namespace A004495.P11199607241228285815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 (A004482 n).toNat

end

end A004495.P11199607241228285815

namespace A004495

/-- `A004497(A004482(n))` -/
def P11199607241228285815.Spec : Prop :=
  ∀ n, P11199607241228285815.a n = A004495 n

end A004495

/-! ## A004495.P9045548042906399818

`A004496(n)-A061347(n+1)`
-/

namespace A004495.P9045548042906399818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 n - A061347 (n + 1)

end

end A004495.P9045548042906399818

namespace A004495

/-- `A004496(n)-A061347(n+1)` -/
def P9045548042906399818.Spec : Prop :=
  ∀ n, P9045548042906399818.a n = A004495 n

end A004495

/-! ## A004495.P12046070796267648089

`A004496(n)+n-A004482(n)`
-/

namespace A004495.P12046070796267648089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 n + ((n : ℤ) - A004482 n)

end

end A004495.P12046070796267648089

namespace A004495

/-- `A004496(n)+n-A004482(n)` -/
def P12046070796267648089.Spec : Prop :=
  ∀ n, P12046070796267648089.a n = A004495 n

end A004495

/-! ## A004495.P15002184745722920960

`A004497(n)+n-A004483(n)`
-/

namespace A004495.P15002184745722920960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 n + ((n : ℤ) - A004483 n)

end

end A004495.P15002184745722920960

namespace A004495

/-- `A004497(n)+n-A004483(n)` -/
def P15002184745722920960.Spec : Prop :=
  ∀ n, P15002184745722920960.a n = A004495 n

end A004495

/-! ## A004495.P5238971407989532880

`A004504(n)+n-A004498(n)`
-/

namespace A004495.P5238971407989532880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004504 n + ((n : ℤ) - A004498 n)

end

end A004495.P5238971407989532880

namespace A004495

/-- `A004504(n)+n-A004498(n)` -/
def P5238971407989532880.Spec : Prop :=
  ∀ n, P5238971407989532880.a n = A004495 n

end A004495

/-! ## A004495.P11398959109567303537

`A004513(n)+n-A004507(n)`
-/

namespace A004495.P11398959109567303537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004513 n + ((n : ℤ) - A004507 n)

end

end A004495.P11398959109567303537

namespace A004495

/-- `A004513(n)+n-A004507(n)` -/
def P11398959109567303537.Spec : Prop :=
  ∀ n, P11398959109567303537.a n = A004495 n

end A004495

/-! ## A004495.P17450552603550028442

`A004482(n)+A004504(n)-A004499(n)`
-/

namespace A004495.P17450552603550028442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n + (A004504 n - A004499 n)

end

end A004495.P17450552603550028442

namespace A004495

/-- `A004482(n)+A004504(n)-A004499(n)` -/
def P17450552603550028442.Spec : Prop :=
  ∀ n, P17450552603550028442.a n = A004495 n

end A004495

/-! ## A004495.P5174042843292625193

`A004496(n)+A004498(n)-A004499(n)`
-/

namespace A004495.P5174042843292625193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 n + (A004498 n - A004499 n)

end

end A004495.P5174042843292625193

namespace A004495

/-- `A004496(n)+A004498(n)-A004499(n)` -/
def P5174042843292625193.Spec : Prop :=
  ∀ n, P5174042843292625193.a n = A004495 n

end A004495

/-! ## A004495.P12427935019852976097

`A004496(A004483(n))`
-/

namespace A004495.P12427935019852976097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 (A004483 n).toNat

end

end A004495.P12427935019852976097

namespace A004495

/-- `A004496(A004483(n))` -/
def P12427935019852976097.Spec : Prop :=
  ∀ n, P12427935019852976097.a n = A004495 n

end A004495

/-! ## A004495.P18271664461542286675

`A004492(A004492(n))`
-/

namespace A004495.P18271664461542286675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A004492 n).toNat

end

end A004495.P18271664461542286675

namespace A004495

/-- `A004492(A004492(n))` -/
def P18271664461542286675.Spec : Prop :=
  ∀ n, P18271664461542286675.a n = A004495 n

end A004495

/-! ## A004495.P12186222986731432179

`A004494(A004493(n))`
-/

namespace A004495.P12186222986731432179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 (A004493 n).toNat

end

end A004495.P12186222986731432179

namespace A004495

/-- `A004494(A004493(n))` -/
def P12186222986731432179.Spec : Prop :=
  ∀ n, P12186222986731432179.a n = A004495 n

end A004495

/-! ## A004495.P10508012011963283058

`A131713(n+1)+A004497(n)`
-/

namespace A004495.P10508012011963283058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 1) + A004497 n

end

end A004495.P10508012011963283058

namespace A004495

/-- `A131713(n+1)+A004497(n)` -/
def P10508012011963283058.Spec : Prop :=
  ∀ n, P10508012011963283058.a n = A004495 n

end A004495

/-! ## A004495.P4362603185099225981

`A004496(n-A131713(n+1))`
-/

namespace A004495.P4362603185099225981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 ((n : ℤ) - A131713 (n + 1)).toNat

end

end A004495.P4362603185099225981

namespace A004495

/-- `A004496(n-A131713(n+1))` -/
def P4362603185099225981.Spec : Prop :=
  ∀ n, P4362603185099225981.a n = A004495 n

end A004495

/-! ## A004495.P14370387772531900471

`A004482(A004482(A004496(n)))`
-/

namespace A004495.P14370387772531900471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A004482 (A004496 n).toNat).toNat

end

end A004495.P14370387772531900471

namespace A004495

/-- `A004482(A004482(A004496(n)))` -/
def P14370387772531900471.Spec : Prop :=
  ∀ n, P14370387772531900471.a n = A004495 n

end A004495

/-! ## A004495.P3415970616125012058

`A004494(A004483(A004494(n)))`
-/

namespace A004495.P3415970616125012058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 (A004483 (A004494 n).toNat).toNat

end

end A004495.P3415970616125012058

namespace A004495

/-- `A004494(A004483(A004494(n)))` -/
def P3415970616125012058.Spec : Prop :=
  ∀ n, P3415970616125012058.a n = A004495 n

end A004495

/-! ## A004495.P10801307168657327952

`A004483(A004483(A004497(n)))`
-/

namespace A004495.P10801307168657327952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A004483 (A004497 n).toNat).toNat

end

end A004495.P10801307168657327952

namespace A004495

/-- `A004483(A004483(A004497(n)))` -/
def P10801307168657327952.Spec : Prop :=
  ∀ n, P10801307168657327952.a n = A004495 n

end A004495

/-! ## A004495.P8342105640149791768

`A004493(A131713(n)+A004493(n))`
-/

namespace A004495.P8342105640149791768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 (A131713 n + A004493 n).toNat

end

end A004495.P8342105640149791768

namespace A004495

/-- `A004493(A131713(n)+A004493(n))` -/
def P8342105640149791768.Spec : Prop :=
  ∀ n, P8342105640149791768.a n = A004495 n

end A004495

/-! ## A004495.P243426538329304446

`A004494(A004494(n)-A131713(n))`
-/

namespace A004495.P243426538329304446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 (A004494 n - A131713 n).toNat

end

end A004495.P243426538329304446

namespace A004495

/-- `A004494(A004494(n)-A131713(n))` -/
def P243426538329304446.Spec : Prop :=
  ∀ n, P243426538329304446.a n = A004495 n

end A004495

/-! ## A004495.P16830002089213887329

`A004493(A004493(A004482(A059249(A004488(n+1)))))`
-/

namespace A004495.P16830002089213887329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 (A004493 (A004482 (A059249 (A004488 (n + 1)).toNat).toNat).toNat).toNat

end

end A004495.P16830002089213887329

namespace A004495

/-- `A004493(A004493(A004482(A059249(A004488(n+1)))))` -/
def P16830002089213887329.Spec : Prop :=
  ∀ n, P16830002089213887329.a n = A004495 n

end A004495

/-!
# A004496: Tersum n + 7.

The programs for A004496, the canonical program `A004496.P2249230315701298314` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004496 has offset 0).

The definition of A004496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004496.P2249230315701298314

`A004495(A004482(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004496

/-- `A004495(A004482(n))` -/
def P2249230315701298314.Spec : Prop :=
  ∀ n, P2249230315701298314.a n = A004496 n

theorem P2249230315701298314.correct : P2249230315701298314.Spec := by
  intro n
  simp only [A004496]

end A004496

/-! ## A004496.P9310483333508624922

`A004497(n)-A131713(n)`
-/

namespace A004496.P9310483333508624922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 n - A131713 n

end

end A004496.P9310483333508624922

namespace A004496

/-- `A004497(n)-A131713(n)` -/
def P9310483333508624922.Spec : Prop :=
  ∀ n, P9310483333508624922.a n = A004496 n

end A004496

/-! ## A004496.P9676595847738875871

`A061347(n+1)+A004495(n)`
-/

namespace A004496.P9676595847738875871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) + A004495 n

end

end A004496.P9676595847738875871

namespace A004496

/-- `A061347(n+1)+A004495(n)` -/
def P9676595847738875871.Spec : Prop :=
  ∀ n, P9676595847738875871.a n = A004496 n

end A004496

/-! ## A004496.P12010413549265617368

`A004495(2*n+1-A004483(n+1))`
-/

namespace A004496.P12010413549265617368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 ((2 * n + 1 : ℤ) - A004483 (n + 1)).toNat

end

end A004496.P12010413549265617368

namespace A004496

/-- `A004495(2*n+1-A004483(n+1))` -/
def P12010413549265617368.Spec : Prop :=
  ∀ n, P12010413549265617368.a n = A004496 n

end A004496

/-! ## A004496.P10987965044403608775

`A004495(n)+A004499(n)-A004498(n)`
-/

namespace A004496.P10987965044403608775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 n + (A004499 n - A004498 n)

end

end A004496.P10987965044403608775

namespace A004496

/-- `A004495(n)+A004499(n)-A004498(n)` -/
def P10987965044403608775.Spec : Prop :=
  ∀ n, P10987965044403608775.a n = A004496 n

end A004496

/-! ## A004496.P8676513430902627712

`A004506(n)+n-A004498(n)-A131713(n)`
-/

namespace A004496.P8676513430902627712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 n + ((n : ℤ) - A004498 n) - A131713 n

end

end A004496.P8676513430902627712

namespace A004496

/-- `A004506(n)+n-A004498(n)-A131713(n)` -/
def P8676513430902627712.Spec : Prop :=
  ∀ n, P8676513430902627712.a n = A004496 n

end A004496

/-! ## A004496.P631724577820683534

`A004488(A004493(n))+n-A004488(n)-A131713(n)`
-/

namespace A004496.P631724577820683534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A004493 n).toNat + ((n : ℤ) - A004488 n) - A131713 n

end

end A004496.P631724577820683534

namespace A004496

/-- `A004488(A004493(n))+n-A004488(n)-A131713(n)` -/
def P631724577820683534.Spec : Prop :=
  ∀ n, P631724577820683534.a n = A004496 n

end A004496

/-! ## A004496.P13640621599605564226

`A004497(A004483(n))`
-/

namespace A004496.P13640621599605564226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 (A004483 n).toNat

end

end A004496.P13640621599605564226

namespace A004496

/-- `A004497(A004483(n))` -/
def P13640621599605564226.Spec : Prop :=
  ∀ n, P13640621599605564226.a n = A004496 n

end A004496

/-! ## A004496.P6294461994962202251

`A004493(A004492(n))`
-/

namespace A004496.P6294461994962202251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 (A004492 n).toNat

end

end A004496.P6294461994962202251

namespace A004496

/-- `A004493(A004492(n))` -/
def P6294461994962202251.Spec : Prop :=
  ∀ n, P6294461994962202251.a n = A004496 n

end A004496

/-! ## A004496.P9315631644475552965

`A004494(A004494(n))`
-/

namespace A004496.P9315631644475552965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 (A004494 n).toNat

end

end A004496.P9315631644475552965

namespace A004496

/-- `A004494(A004494(n))` -/
def P9315631644475552965.Spec : Prop :=
  ∀ n, P9315631644475552965.a n = A004496 n

end A004496

/-! ## A004496.P11086647335727846758

`A004493(A004483(A004493(n)))`
-/

namespace A004496.P11086647335727846758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 (A004483 (A004493 n).toNat).toNat

end

end A004496.P11086647335727846758

namespace A004496

/-- `A004493(A004483(A004493(n)))` -/
def P11086647335727846758.Spec : Prop :=
  ∀ n, P11086647335727846758.a n = A004496 n

end A004496

/-! ## A004496.P9740490643411637667

`A004483(A004483(A004495(n)))`
-/

namespace A004496.P9740490643411637667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A004483 (A004495 n).toNat).toNat

end

end A004496.P9740490643411637667

namespace A004496

/-- `A004483(A004483(A004495(n)))` -/
def P9740490643411637667.Spec : Prop :=
  ∀ n, P9740490643411637667.a n = A004496 n

end A004496

/-! ## A004496.P3631253539931944459

`A004482(A004482(A004497(n)))`
-/

namespace A004496.P3631253539931944459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A004482 (A004497 n).toNat).toNat

end

end A004496.P3631253539931944459

namespace A004496

/-- `A004482(A004482(A004497(n)))` -/
def P3631253539931944459.Spec : Prop :=
  ∀ n, P3631253539931944459.a n = A004496 n

end A004496

/-! ## A004496.P3514513226283415426

`A004493(A004493(n))-A131713(n)`
-/

namespace A004496.P3514513226283415426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 (A004493 n).toNat - A131713 n

end

end A004496.P3514513226283415426

namespace A004496

/-- `A004493(A004493(n))-A131713(n)` -/
def P3514513226283415426.Spec : Prop :=
  ∀ n, P3514513226283415426.a n = A004496 n

end A004496

/-! ## A004496.P7310571485450023979

`A004492(A061347(n+1)+A004492(n))`
-/

namespace A004496.P7310571485450023979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A061347 (n + 1) + A004492 n).toNat

end

end A004496.P7310571485450023979

namespace A004496

/-- `A004492(A061347(n+1)+A004492(n))` -/
def P7310571485450023979.Spec : Prop :=
  ∀ n, P7310571485450023979.a n = A004496 n

end A004496

/-! ## A004496.P16310075644730420492

`A004493(A099837(n+1)+A004493(n))`
-/

namespace A004496.P16310075644730420492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 (A099837 (n + 1) + A004493 n).toNat

end

end A004496.P16310075644730420492

namespace A004496

/-- `A004493(A099837(n+1)+A004493(n))` -/
def P16310075644730420492.Spec : Prop :=
  ∀ n, P16310075644730420492.a n = A004496 n

end A004496

/-! ## A004496.P2159353570321495573

`A004493(A004493(n)-A061347(n+1))`
-/

namespace A004496.P2159353570321495573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 (A004493 n - A061347 (n + 1)).toNat

end

end A004496.P2159353570321495573

namespace A004496

/-- `A004493(A004493(n)-A061347(n+1))` -/
def P2159353570321495573.Spec : Prop :=
  ∀ n, P2159353570321495573.a n = A004496 n

end A004496

/-! ## A004496.P920259082968762037

`A004492(A004482(n)+A004492(n)-n)`
-/

namespace A004496.P920259082968762037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A004482 n + (A004492 n - (n : ℤ))).toNat

end

end A004496.P920259082968762037

namespace A004496

/-- `A004492(A004482(n)+A004492(n)-n)` -/
def P920259082968762037.Spec : Prop :=
  ∀ n, P920259082968762037.a n = A004496 n

end A004496

/-! ## A004496.P9253836353008926484

`A004493(A004493(n)+n-A004482(n))`
-/

namespace A004496.P9253836353008926484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 (A004493 n + ((n : ℤ) - A004482 n)).toNat

end

end A004496.P9253836353008926484

namespace A004496

/-- `A004493(A004493(n)+n-A004482(n))` -/
def P9253836353008926484.Spec : Prop :=
  ∀ n, P9253836353008926484.a n = A004496 n

end A004496

/-! ## A004496.P17616169590435195276

`A004513(A004499(n))`
-/

namespace A004496.P17616169590435195276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004513 (A004499 n).toNat

end

end A004496.P17616169590435195276

namespace A004496

/-- `A004513(A004499(n))` -/
def P17616169590435195276.Spec : Prop :=
  ∀ n, P17616169590435195276.a n = A004496 n

end A004496

/-!
# A004497: Tersum n + 8.

The programs for A004497, the canonical program `A004497.P12311121835574932766` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004497 has offset 0).

The definition of A004497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004497.P12311121835574932766

`A004496(A004482(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004497

/-- `A004496(A004482(n))` -/
def P12311121835574932766.Spec : Prop :=
  ∀ n, P12311121835574932766.a n = A004497 n

theorem P12311121835574932766.correct : P12311121835574932766.Spec := by
  intro n
  simp only [A004497]

end A004497

/-! ## A004497.P549316985420185552

`A131713(n)+A004496(n)`
-/

namespace A004497.P549316985420185552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n + A004496 n

end

end A004497.P549316985420185552

namespace A004497

/-- `A131713(n)+A004496(n)` -/
def P549316985420185552.Spec : Prop :=
  ∀ n, P549316985420185552.a n = A004497 n

end A004497

/-! ## A004497.P15969641479315915789

`A004496(A061347(n+1)+n)`
-/

namespace A004497.P15969641479315915789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 (A061347 (n + 1) + (n : ℤ)).toNat

end

end A004497.P15969641479315915789

namespace A004497

/-- `A004496(A061347(n+1)+n)` -/
def P15969641479315915789.Spec : Prop :=
  ∀ n, P15969641479315915789.a n = A004497 n

end A004497

/-! ## A004497.P5111775628531647248

`A004506(n)+n-A004498(n)`
-/

namespace A004497.P5111775628531647248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 n + ((n : ℤ) - A004498 n)

end

end A004497.P5111775628531647248

namespace A004497

/-- `A004506(n)+n-A004498(n)` -/
def P5111775628531647248.Spec : Prop :=
  ∀ n, P5111775628531647248.a n = A004497 n

end A004497

/-! ## A004497.P15879669405451964118

`A004496(2*n+1-A004483(n+1))`
-/

namespace A004497.P15879669405451964118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 ((2 * n + 1 : ℤ) - A004483 (n + 1)).toNat

end

end A004497.P15879669405451964118

namespace A004497

/-- `A004496(2*n+1-A004483(n+1))` -/
def P15879669405451964118.Spec : Prop :=
  ∀ n, P15879669405451964118.a n = A004497 n

end A004497

/-! ## A004497.P10304205437504434685

`A004488(A004493(n))+n-A004488(n)`
-/

namespace A004497.P10304205437504434685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A004493 n).toNat + ((n : ℤ) - A004488 n)

end

end A004497.P10304205437504434685

namespace A004497

/-- `A004488(A004493(n))+n-A004488(n)` -/
def P10304205437504434685.Spec : Prop :=
  ∀ n, P10304205437504434685.a n = A004497 n

end A004497

/-! ## A004497.P5105093411701667730

`A004496(n+1)+A004496(n)-A004495(n+1)`
-/

namespace A004497.P5105093411701667730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 (n + 1) + (A004496 n - A004495 (n + 1))

end

end A004497.P5105093411701667730

namespace A004497

/-- `A004496(n+1)+A004496(n)-A004495(n+1)` -/
def P5105093411701667730.Spec : Prop :=
  ∀ n, P5105093411701667730.a n = A004497 n

end A004497

/-! ## A004497.P16137743054376533502

`A004499(n+1)+A004496(n)-A004498(n+1)`
-/

namespace A004497.P16137743054376533502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (n + 1) + (A004496 n - A004498 (n + 1))

end

end A004497.P16137743054376533502

namespace A004497

/-- `A004499(n+1)+A004496(n)-A004498(n+1)` -/
def P16137743054376533502.Spec : Prop :=
  ∀ n, P16137743054376533502.a n = A004497 n

end A004497

/-! ## A004497.P3438469225600694466

`A004495(A004483(n))`
-/

namespace A004497.P3438469225600694466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 (A004483 n).toNat

end

end A004497.P3438469225600694466

namespace A004497

/-- `A004495(A004483(n))` -/
def P3438469225600694466.Spec : Prop :=
  ∀ n, P3438469225600694466.a n = A004497 n

end A004497

/-! ## A004497.P9000302894482859294

`A004494(A004492(n))`
-/

namespace A004497.P9000302894482859294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 (A004492 n).toNat

end

end A004497.P9000302894482859294

namespace A004497

/-- `A004494(A004492(n))` -/
def P9000302894482859294.Spec : Prop :=
  ∀ n, P9000302894482859294.a n = A004497 n

end A004497

/-! ## A004497.P12676780138575206682

`A004493(A004493(n))`
-/

namespace A004497.P12676780138575206682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 (A004493 n).toNat

end

end A004497.P12676780138575206682

namespace A004497

/-- `A004493(A004493(n))` -/
def P12676780138575206682.Spec : Prop :=
  ∀ n, P12676780138575206682.a n = A004497 n

end A004497

/-! ## A004497.P4067128280325283

`A004482(A004482(A004495(n)))`
-/

namespace A004497.P4067128280325283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A004482 (A004495 n).toNat).toNat

end

end A004497.P4067128280325283

namespace A004497

/-- `A004482(A004482(A004495(n)))` -/
def P4067128280325283.Spec : Prop :=
  ∀ n, P4067128280325283.a n = A004497 n

end A004497

/-! ## A004497.P9633583503073211474

`A004494(A004482(A004494(n)))`
-/

namespace A004497.P9633583503073211474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 (A004482 (A004494 n).toNat).toNat

end

end A004497.P9633583503073211474

namespace A004497

/-- `A004494(A004482(A004494(n)))` -/
def P9633583503073211474.Spec : Prop :=
  ∀ n, P9633583503073211474.a n = A004497 n

end A004497

/-! ## A004497.P14327394355854928061

`A004483(A004483(A004496(n)))`
-/

namespace A004497.P14327394355854928061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A004483 (A004496 n).toNat).toNat

end

end A004497.P14327394355854928061

namespace A004497

/-- `A004483(A004483(A004496(n)))` -/
def P14327394355854928061.Spec : Prop :=
  ∀ n, P14327394355854928061.a n = A004497 n

end A004497

/-! ## A004497.P3830751252270347096

`A064429(A004496(A064429(n)))`
-/

namespace A004497.P3830751252270347096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A004496 (A064429 n).toNat).toNat

end

end A004497.P3830751252270347096

namespace A004497

/-- `A064429(A004496(A064429(n)))` -/
def P3830751252270347096.Spec : Prop :=
  ∀ n, P3830751252270347096.a n = A004497 n

end A004497

/-! ## A004497.P13905466181651242362

`A131713(n)+A004494(A004494(n))`
-/

namespace A004497.P13905466181651242362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n + A004494 (A004494 n).toNat

end

end A004497.P13905466181651242362

namespace A004497

/-- `A131713(n)+A004494(A004494(n))` -/
def P13905466181651242362.Spec : Prop :=
  ∀ n, P13905466181651242362.a n = A004497 n

end A004497

/-! ## A004497.P2510533147443430648

`A004492(A004483(n)+A004492(n)-n)`
-/

namespace A004497.P2510533147443430648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A004483 n + (A004492 n - (n : ℤ))).toNat

end

end A004497.P2510533147443430648

namespace A004497

/-- `A004492(A004483(n)+A004492(n)-n)` -/
def P2510533147443430648.Spec : Prop :=
  ∀ n, P2510533147443430648.a n = A004497 n

end A004497

/-! ## A004497.P4840298261827177063

`A004513(A004500(n))`
-/

namespace A004497.P4840298261827177063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004513 (A004500 n).toNat

end

end A004497.P4840298261827177063

namespace A004497

/-- `A004513(A004500(n))` -/
def P4840298261827177063.Spec : Prop :=
  ∀ n, P4840298261827177063.a n = A004497 n

end A004497

/-! ## A004497.P3582642431337657921

`A004512(A004501(n))`
-/

namespace A004497.P3582642431337657921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 (A004501 n).toNat

end

end A004497.P3582642431337657921

namespace A004497

/-- `A004512(A004501(n))` -/
def P3582642431337657921.Spec : Prop :=
  ∀ n, P3582642431337657921.a n = A004497 n

end A004497

/-! ## A004497.P15661622725995547480

`A004511(A004502(n))`
-/

namespace A004497.P15661622725995547480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A004502 n).toNat

end

end A004497.P15661622725995547480

namespace A004497

/-- `A004511(A004502(n))` -/
def P15661622725995547480.Spec : Prop :=
  ∀ n, P15661622725995547480.a n = A004497 n

end A004497

/-!
# A004498: Tersum n + 9.

The programs for A004498, there is no canonical definition to state claims against.
-/

/-! ## A004498.P12646948126956085712

`A004500(A004482(n))`
-/

namespace A004498.P12646948126956085712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004482 n).toNat

end

end A004498.P12646948126956085712

/-! ## A004498.P3639878703024975735

`A004499(n)-A061347(n+1)`
-/

namespace A004498.P3639878703024975735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 n - A061347 (n + 1)

end

end A004498.P3639878703024975735

/-! ## A004498.P8711284767796257032

`A004499(n)+n-A004482(n)`
-/

namespace A004498.P8711284767796257032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 n + ((n : ℤ) - A004482 n)

end

end A004498.P8711284767796257032

/-! ## A004498.P12880506894084672554

`A004500(n)+n-A004483(n)`
-/

namespace A004498.P12880506894084672554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 n + ((n : ℤ) - A004483 n)

end

end A004498.P12880506894084672554

/-! ## A004498.P1593840047912120052

`A004501(n)+n-A004492(n)`
-/

namespace A004498.P1593840047912120052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004501 n + ((n : ℤ) - A004492 n)

end

end A004498.P1593840047912120052

/-! ## A004498.P3239802560186475041

`A004502(n)+n-A004493(n)`
-/

namespace A004498.P3239802560186475041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 n + ((n : ℤ) - A004493 n)

end

end A004498.P3239802560186475041

/-! ## A004498.P14989250086651402490

`A004503(n)+n-A004494(n)`
-/

namespace A004498.P14989250086651402490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 n + ((n : ℤ) - A004494 n)

end

end A004498.P14989250086651402490

/-! ## A004498.P14576269277234382718

`A004504(n)+n-A004495(n)`
-/

namespace A004498.P14576269277234382718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004504 n + ((n : ℤ) - A004495 n)

end

end A004498.P14576269277234382718

/-! ## A004498.P7885221449483317495

`A004505(n)+n-A004496(n)`
-/

namespace A004498.P7885221449483317495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 n + ((n : ℤ) - A004496 n)

end

end A004498.P7885221449483317495

/-! ## A004498.P12889350566299824178

`A004506(n)+n-A004497(n)`
-/

namespace A004498.P12889350566299824178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 n + ((n : ℤ) - A004497 n)

end

end A004498.P12889350566299824178

/-! ## A004498.P2093605823409425843

`A004488(A117966(n)+A004507(n))`
-/

namespace A004498.P2093605823409425843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A117966 n + A004507 n).toNat

end

end A004498.P2093605823409425843

/-! ## A004498.P13433657774213619954

`A004492(n)+A004499(n)-A004493(n)`
-/

namespace A004498.P13433657774213619954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 n + (A004499 n - A004493 n)

end

end A004498.P13433657774213619954

/-! ## A004498.P18344010548948715791

`A004495(n)+A004499(n)-A004496(n)`
-/

namespace A004498.P18344010548948715791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 n + (A004499 n - A004496 n)

end

end A004498.P18344010548948715791

/-! ## A004498.P10761434451615205869

`A004499(A004483(n))`
-/

namespace A004498.P10761434451615205869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (A004483 n).toNat

end

end A004498.P10761434451615205869

/-! ## A004498.P7152866286168660629

`A004504(A004492(n))`
-/

namespace A004498.P7152866286168660629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004504 (A004492 n).toNat

end

end A004498.P7152866286168660629

/-! ## A004498.P12426103908623078445

`A004506(A004493(n))`
-/

namespace A004498.P12426103908623078445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 (A004493 n).toNat

end

end A004498.P12426103908623078445

/-! ## A004498.P14106899939412637708

`A004505(A004494(n))`
-/

namespace A004498.P14106899939412637708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 (A004494 n).toNat

end

end A004498.P14106899939412637708

/-! ## A004498.P17745976402861837760

`A004501(A004495(n))`
-/

namespace A004498.P17745976402861837760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004501 (A004495 n).toNat

end

end A004498.P17745976402861837760

/-! ## A004498.P16270976367180428546

`A004503(A004496(n))`
-/

namespace A004498.P16270976367180428546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 (A004496 n).toNat

end

end A004498.P16270976367180428546

/-! ## A004498.P9868486654691056649

`A004502(A004497(n))`
-/

namespace A004498.P9868486654691056649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 (A004497 n).toNat

end

end A004498.P9868486654691056649

/-!
# A004499: Tersum n + 10.

The programs for A004499, there is no canonical definition to state claims against.
-/

/-! ## A004499.P5660943833396717627

`A004498(A004482(n))`
-/

namespace A004499.P5660943833396717627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 (A004482 n).toNat

end

end A004499.P5660943833396717627

/-! ## A004499.P919992586942156242

`A004500(n)-A131713(n)`
-/

namespace A004499.P919992586942156242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 n - A131713 n

end

end A004499.P919992586942156242

/-! ## A004499.P10025036350832464328

`A061347(n+1)+A004498(n)`
-/

namespace A004499.P10025036350832464328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) + A004498 n

end

end A004499.P10025036350832464328

/-! ## A004499.P9119772099832072275

`A004502(n)+n-A004492(n)`
-/

namespace A004499.P9119772099832072275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 n + ((n : ℤ) - A004492 n)

end

end A004499.P9119772099832072275

/-! ## A004499.P8544160802028791857

`A004505(n)+n-A004495(n)`
-/

namespace A004499.P8544160802028791857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 n + ((n : ℤ) - A004495 n)

end

end A004499.P8544160802028791857

/-! ## A004499.P14493071292415714697

`A004498(2*n+1-A004483(n+1))`
-/

namespace A004499.P14493071292415714697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 ((2 * n + 1 : ℤ) - A004483 (n + 1)).toNat

end

end A004499.P14493071292415714697

/-! ## A004499.P13045341117439472955

`A004493(n)+A004498(n)-A004492(n)`
-/

namespace A004499.P13045341117439472955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 n + (A004498 n - A004492 n)

end

end A004499.P13045341117439472955

/-! ## A004499.P1049428172839286318

`A004493(n)+A004500(n)-A004494(n)`
-/

namespace A004499.P1049428172839286318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 n + (A004500 n - A004494 n)

end

end A004499.P1049428172839286318

/-! ## A004499.P2558229525915666864

`A004496(n)+A004498(n)-A004495(n)`
-/

namespace A004499.P2558229525915666864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 n + (A004498 n - A004495 n)

end

end A004499.P2558229525915666864

/-! ## A004499.P9540697022996912812

`A004492(n+1)+A004498(n)-A004494(n+1)`
-/

namespace A004499.P9540697022996912812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (n + 1) + (A004498 n - A004494 (n + 1))

end

end A004499.P9540697022996912812

/-! ## A004499.P12873558878005801759

`A004500(A004483(n))`
-/

namespace A004499.P12873558878005801759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004483 n).toNat

end

end A004499.P12873558878005801759

/-! ## A004499.P1703485190624136329

`A004505(A004492(n))`
-/

namespace A004499.P1703485190624136329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 (A004492 n).toNat

end

end A004499.P1703485190624136329

/-! ## A004499.P13201711184061274049

`A004504(A004493(n))`
-/

namespace A004499.P13201711184061274049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004504 (A004493 n).toNat

end

end A004499.P13201711184061274049

/-! ## A004499.P5457036736992273869

`A004506(A004494(n))`
-/

namespace A004499.P5457036736992273869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 (A004494 n).toNat

end

end A004499.P5457036736992273869

/-! ## A004499.P1552439223537016077

`A004502(A004495(n))`
-/

namespace A004499.P1552439223537016077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 (A004495 n).toNat

end

end A004499.P1552439223537016077

/-! ## A004499.P3305935915949478757

`A004501(A004496(n))`
-/

namespace A004499.P3305935915949478757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004501 (A004496 n).toNat

end

end A004499.P3305935915949478757

/-! ## A004499.P7947197000678735401

`A004503(A004497(n))`
-/

namespace A004499.P7947197000678735401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 (A004497 n).toNat

end

end A004499.P7947197000678735401

/-! ## A004499.P1300295672704019894

`A004498(n-A099837(n+1))`
-/

namespace A004499.P1300295672704019894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 ((n : ℤ) - A099837 (n + 1)).toNat

end

end A004499.P1300295672704019894

/-! ## A004499.P9271689645379551344

`A004508(A004507(n))`
-/

namespace A004499.P9271689645379551344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004508 (A004507 n).toNat

end

end A004499.P9271689645379551344

/-! ## A004499.P13736480553411833761

`A004509(A004509(n))`
-/

namespace A004499.P13736480553411833761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004509 (A004509 n).toNat

end

end A004499.P13736480553411833761

