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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A287500: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 291", based on the 5-celled von Neumann neighborhood.

The programs for A287500, there is no canonical definition to state claims against.
-/

/-! ## A287500.P12585602213808669771

`A007088(A287502(n))`
-/

namespace A287500.P12585602213808669771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287502 n).toNat

end

end A287500.P12585602213808669771

/-! ## A287500.P3647737668144024876

`A287536(A062003(n))`
-/

namespace A287500.P3647737668144024876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287536 (A062003 n).toNat

end

end A287500.P3647737668144024876

/-! ## A287500.P1303522965777850647

`A287536(A140765(∑[n]))`
-/

namespace A287500.P1303522965777850647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287536 (A140765 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287500.P1303522965777850647

/-! ## A287500.P3930694519571078710

`A287536(A334291(∑[n]))`
-/

namespace A287500.P3930694519571078710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287536 (A334291 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287500.P3930694519571078710

/-! ## A287500.P16943588405080117895

`A287536(A004906(n+1))`
-/

namespace A287500.P16943588405080117895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287536 (A004906 (n + 1)).toNat

end

end A287500.P16943588405080117895

/-!
# A287501: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 291", based on the 5-celled von Neumann neighborhood.

The programs for A287501, there is no canonical definition to state claims against.
-/

/-! ## A287501.P12985442884429847882

`A287537(n)-A257297(A137316(n+1))`
-/

namespace A287501.P12985442884429847882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287537 n - A257297 (A137316 (n + 1)).toNat

end

end A287501.P12985442884429847882

/-! ## A287501.P2057124346495315838

`A287537(A140765(∑[n]))`
-/

namespace A287501.P2057124346495315838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287537 (A140765 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287501.P2057124346495315838

/-! ## A287501.P17280785134575417094

`A287537(A334291(∑[n]))`
-/

namespace A287501.P17280785134575417094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287537 (A334291 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287501.P17280785134575417094

/-! ## A287501.P10720202483521330762

`A287537(A342859(∑[n]))`
-/

namespace A287501.P10720202483521330762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287537 (A342859 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287501.P10720202483521330762

/-! ## A287501.P1375027422451970902

`A287537(A004895(n+1))`
-/

namespace A287501.P1375027422451970902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287537 (A004895 (n + 1)).toNat

end

end A287501.P1375027422451970902

/-!
# A287502: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 291", based on the 5-celled von Neumann neighborhood.

The programs for A287502, there is no canonical definition to state claims against.
-/

/-! ## A287502.P5064372275171464686

`A287538(A140765(∑[n]))`
-/

namespace A287502.P5064372275171464686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287538 (A140765 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287502.P5064372275171464686

/-! ## A287502.P10201083283273816488

`A287538(A334291(∑[n]))`
-/

namespace A287502.P10201083283273816488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287538 (A334291 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287502.P10201083283273816488

/-! ## A287502.P13682620934772028192

`A287538(A004895(n+1))`
-/

namespace A287502.P13682620934772028192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287538 (A004895 (n + 1)).toNat

end

end A287502.P13682620934772028192

/-! ## A287502.P12567039078537199513

`A287538(A004906(n+1))`
-/

namespace A287502.P12567039078537199513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287538 (A004906 (n + 1)).toNat

end

end A287502.P12567039078537199513

/-! ## A287502.P11803835436429070397

`A287538(A004917(n+1))`
-/

namespace A287502.P11803835436429070397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287538 (A004917 (n + 1)).toNat

end

end A287502.P11803835436429070397

/-!
# A287503: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 294", based on the 5-celled von Neumann neighborhood.

The programs for A287503, there is no canonical definition to state claims against.
-/

/-! ## A287503.P6561570201231411337

`A007088(A287505(n))`
-/

namespace A287503.P6561570201231411337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287505 n).toNat

end

end A287503.P6561570201231411337

/-! ## A287503.P14276362031282211818

`A185544(2*A287505(n))`
-/

namespace A287503.P14276362031282211818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287505 n).toNat

end

end A287503.P14276362031282211818

/-! ## A287503.P2750478301541035420

`A185544(lcm(2, A287505(n)))`
-/

namespace A287503.P2750478301541035420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A287505 n))

end

end A287503.P2750478301541035420

/-! ## A287503.P8670084717237403594

`A127805(xor(2, a(floor(n/2))))` with `a(0)=1, a(1)=1`
-/

namespace A287503.P8670084717237403594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A127805 (Int.xor 2 (a ⌊(n : ℚ) / 2⌋.toNat)).toNat

end

end A287503.P8670084717237403594

/-! ## A287503.P8751513217553189728

`A004086(A288121(n))`
-/

namespace A287503.P8751513217553189728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A288121 n).toNat

end

end A287503.P8751513217553189728

/-!
# A287504: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 294", based on the 5-celled von Neumann neighborhood.

The programs for A287504, there is no canonical definition to state claims against.
-/

/-! ## A287504.P17414560901825542051

`A000035(A288121(n))*A286864(n)`
-/

namespace A287504.P17414560901825542051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A288121 n).toNat * A286864 n

end

end A287504.P17414560901825542051

/-! ## A287504.P719771478698874926

`A286864(n)*A326029(A287505(n))`
-/

namespace A287504.P719771478698874926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286864 n * A326029 (A287505 n).toNat

end

end A287504.P719771478698874926

/-! ## A287504.P11487009925673788952

`A286864(n)*A326029(A288124(n))`
-/

namespace A287504.P11487009925673788952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286864 n * A326029 (A288124 n).toNat

end

end A287504.P11487009925673788952

/-! ## A287504.P17535984349092484919

`lcm(A002487(A288124(n)²), A286864(n))`
-/

namespace A287504.P17535984349092484919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002487 (A288124 n ^ 2).toNat) (A286864 n)

end

end A287504.P17535984349092484919

/-! ## A287504.P11083184775885066262

`A007088(A287506(n))`
-/

namespace A287504.P11083184775885066262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287506 n).toNat

end

end A287504.P11083184775885066262

/-!
# A287505: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 294", based on the 5-celled von Neumann neighborhood.

The programs for A287505, there is no canonical definition to state claims against.
-/

/-! ## A287505.P9288437906170380243

`A000225(n+2)-A289961(n+1)`
-/

namespace A287505.P9288437906170380243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A289961 (n + 1)

end

end A287505.P9288437906170380243

/-!
# A287506: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 294", based on the 5-celled von Neumann neighborhood.

The programs for A287506, there is no canonical definition to state claims against.
-/

/-! ## A287506.P15294737712565975301

`and(A000217(A289962(n+1)), A122746(n))`
-/

namespace A287506.P15294737712565975301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A289962 (n + 1)).toNat) (A122746 n)

end

end A287506.P15294737712565975301

/-! ## A287506.P5685433098462383255

`and(A000217(A289962(n+1)), A289935(n))`
-/

namespace A287506.P5685433098462383255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A289962 (n + 1)).toNat) (A289935 n)

end

end A287506.P5685433098462383255

/-! ## A287506.P4077980088265661117

`and(A000217(A289962(n+1)), A289961(n))`
-/

namespace A287506.P4077980088265661117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A289962 (n + 1)).toNat) (A289961 n)

end

end A287506.P4077980088265661117

/-! ## A287506.P1933989152627137692

`and(A000217(A289962(n+1)), A290068(n))`
-/

namespace A287506.P1933989152627137692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A289962 (n + 1)).toNat) (A290068 n)

end

end A287506.P1933989152627137692

/-!
# A287507: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 297", based on the 5-celled von Neumann neighborhood.

The programs for A287507, there is no canonical definition to state claims against.
-/

/-! ## A287507.P4307575530511318303

`A288190(xor(1, n)+1)`
-/

namespace A287507.P4307575530511318303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288190 (Nat.xor 1 n + 1)

end

end A287507.P4307575530511318303

/-! ## A287507.P12256176514131494321

`A288190(A004442(n)+1)`
-/

namespace A287507.P12256176514131494321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288190 (A004442 n + 1).toNat

end

end A287507.P12256176514131494321

/-! ## A287507.P16891169245866798123

`A288190(A014681(n+1))`
-/

namespace A287507.P16891169245866798123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288190 (A014681 (n + 1)).toNat

end

end A287507.P16891169245866798123

/-! ## A287507.P6200654819159096225

`A288190(A103889(n+1))`
-/

namespace A287507.P6200654819159096225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288190 (A103889 (n + 1)).toNat

end

end A287507.P6200654819159096225

/-! ## A287507.P15507835966939120270

`A288190(Δ[A000217(n)+A000034(n)])`
-/

namespace A287507.P15507835966939120270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288190 (f1 (n + 1) - f1 n).toNat

end

end A287507.P15507835966939120270

/-!
# A287508: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 297", based on the 5-celled von Neumann neighborhood.

The programs for A287508, there is no canonical definition to state claims against.
-/

/-! ## A287508.P9929548753837733758

`A007088(A287510(n))`
-/

namespace A287508.P9929548753837733758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287510 n).toNat

end

end A287508.P9929548753837733758

/-! ## A287508.P12854019990360014252

`A185544(2*A287510(n))`
-/

namespace A287508.P12854019990360014252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287510 n).toNat

end

end A287508.P12854019990360014252

/-! ## A287508.P17067529315533136618

`A286140(n)%A132839(A064989(3*n+5))`
-/

namespace A287508.P17067529315533136618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286140 n) (A132839 (A064989 (3 * n + 5)).toNat)

end

end A287508.P17067529315533136618

/-!
# A287509: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 297", based on the 5-celled von Neumann neighborhood.

The programs for A287509, there is no canonical definition to state claims against.
-/

/-! ## A287509.P5256387124440199048

`A288192(2*(n+1)%2+n)`
-/

namespace A287509.P5256387124440199048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288192 (2 * ((n + 1) % 2) + n)

end

end A287509.P5256387124440199048

/-! ## A287509.P3099563509300327123

`A288192(A004442(n)+1)`
-/

namespace A287509.P3099563509300327123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288192 (A004442 n + 1).toNat

end

end A287509.P3099563509300327123

/-! ## A287509.P10158430742285751214

`A288192(A014681(n+1))`
-/

namespace A287509.P10158430742285751214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288192 (A014681 (n + 1)).toNat

end

end A287509.P10158430742285751214

/-! ## A287509.P6168675232004929144

`A288192(A103889(n+1))`
-/

namespace A287509.P6168675232004929144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288192 (A103889 (n + 1)).toNat

end

end A287509.P6168675232004929144

/-! ## A287509.P16193872088040280243

`A288192(and(2, A288193(n+1))+n)`
-/

namespace A287509.P16193872088040280243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288192 (Int.land 2 (A288193 (n + 1)) + (n : ℤ)).toNat

end

end A287509.P16193872088040280243

/-!
# A287511: Number of simple connected perfect non-bipartite graphs on n vertices.

The programs for A287511, there is no canonical definition to state claims against.
-/

/-! ## A287511.P15127272950525363917

`A052433(n+1)-A005142(n+1)`
-/

namespace A287511.P15127272950525363917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052433 (n + 1) - A005142 (n + 1)

end

end A287511.P15127272950525363917

/-! ## A287511.P3717674194114209095

`A157051(n+1)-A187237(n+1)`
-/

namespace A287511.P3717674194114209095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157051 (n + 1) - A187237 (n + 1)

end

end A287511.P3717674194114209095

/-! ## A287511.P6065335785664362993

`A157051(A005555(n))-(A001349(n+1)-A052433(n+1))`
-/

namespace A287511.P6065335785664362993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157051 (A005555 n).toNat - (A001349 (n + 1) - A052433 (n + 1))

end

end A287511.P6065335785664362993

/-! ## A287511.P3582902176177241022

`A001349(n+1)-A187237(n+1)-A005142(A096076(n))`
-/

namespace A287511.P3582902176177241022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A187237 (n + 1) - A005142 (A096076 n).toNat

end

end A287511.P3582902176177241022

/-! ## A287511.P16312906035306759461

`A157051(A096076(n))-(A001349(n+1)-A052433(n+1))`
-/

namespace A287511.P16312906035306759461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157051 (A096076 n).toNat - (A001349 (n + 1) - A052433 (n + 1))

end

end A287511.P16312906035306759461

/-!
# A287512: Number of simple perfect non-bipartite graphs on n vertices.

The programs for A287512, there is no canonical definition to state claims against.
-/

/-! ## A287512.P12876112175223514636

`A052431(n+1)-A033995(n+1)`
-/

namespace A287512.P12876112175223514636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - A033995 (n + 1)

end

end A287512.P12876112175223514636

/-! ## A287512.P17015945523134786715

`A236525(n+1)-A187236(n+1)`
-/

namespace A287512.P17015945523134786715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236525 (n + 1) - A187236 (n + 1)

end

end A287512.P17015945523134786715

/-! ## A287512.P9596277068175155094

`A052431(n+1)-(A076278(n+1)+1)`
-/

namespace A287512.P9596277068175155094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - (A076278 (n + 1) + 1)

end

end A287512.P9596277068175155094

/-! ## A287512.P6575679424023160826

`A052431(n+1)+A236525(n+1)-Δ[A006897(n)]`
-/

namespace A287512.P6575679424023160826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) + (A236525 (n + 1) - (f1 (n + 1) - f1 n))

end

end A287512.P6575679424023160826

/-! ## A287512.P12356569782430100775

`A000088(n+1)-A033995(n+1)-A187236(n+1)`
-/

namespace A287512.P12356569782430100775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A033995 (n + 1) - A187236 (n + 1)

end

end A287512.P12356569782430100775

/-!
# A287513: Numbers whose cyclic permutations are pairwise coprime.

The programs for A287513, there is no canonical definition to state claims against.
-/

/-! ## A287513.P6790849610498661542

`eq[A061378(n), A068634(A028310(n))]`
-/

namespace A287513.P6790849610498661542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068634 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287513.P6790849610498661542

/-!
# A287516: Start with 0 and repeatedly substitute 0->012, 1->102, 2->021.

The programs for A287516, there is no canonical definition to state claims against.
-/

/-! ## A287516.P15613215303845623249

`2-A287518(n+1)%3`
-/

namespace A287516.P15613215303845623249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A287518 (n + 1)) 3

end

end A287516.P15613215303845623249

/-! ## A287516.P15493441332638456894

`A222210(A287518(n+1)-(n+1)-2*n)`
-/

namespace A287516.P15493441332638456894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A287518 (n + 1) - (n + 1 : ℤ) - (2 * n : ℤ)).toNat

end

end A287516.P15493441332638456894

/-! ## A287516.P16603096339369333151

`abs(A284885(2*n+1)-A287518(n+1))`
-/

namespace A287516.P16603096339369333151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284885 (2 * n + 1) - A287518 (n + 1)|

end

end A287516.P16603096339369333151

/-! ## A287516.P16376583651537993801

`A287520(A189630(n+1)%A287518(n+1))`
-/

namespace A287516.P16376583651537993801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (Int.tmod (A189630 (n + 1)) (A287518 (n + 1))).toNat

end

end A287516.P16376583651537993801

/-! ## A287516.P15745176540905425650

`A054429(A287518(n+1))%3`
-/

namespace A287516.P15745176540905425650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054429 (A287518 (n + 1)).toNat) 3

end

end A287516.P15745176540905425650

/-! ## A287516.P9889570395520496052

`A287520(A189820(n+1)+3*n+1)`
-/

namespace A287516.P9889570395520496052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (A189820 (n + 1) + (3 * n + 1 : ℤ)).toNat

end

end A287516.P9889570395520496052

/-! ## A287516.P14677982701656687122

`A007814(A287518(n+1)+A190991(n))`
-/

namespace A287516.P14677982701656687122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A287518 (n + 1) + A190991 n).toNat

end

end A287516.P14677982701656687122

/-!
# A287517: Positions of 0 in A287516.

The programs for A287517, there is no canonical definition to state claims against.
-/

/-! ## A287517.P16291465530635881169

`A016789(n)-(1-A287516(n+1))²`
-/

namespace A287517.P16291465530635881169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (1 - A287516 (n + 1)) ^ 2

end

end A287517.P16291465530635881169

/-! ## A287517.P10926018787198864761

`lt[A287516(n+1), 1]+1`
-/

namespace A287517.P10926018787198864761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287516 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287517.P10926018787198864761

/-! ## A287517.P14409460177984798884

`eq[2, A287518(n+1)%3]+1`
-/

namespace A287517.P14409460177984798884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287518 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287517.P14409460177984798884

/-! ## A287517.P7236251505207931854

`A287516(3*n+1)+3*n+1`
-/

namespace A287517.P7236251505207931854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287516 (3 * n + 1) + (3 * n + 1 : ℤ)

end

end A287517.P7236251505207931854

/-! ## A287517.P17822791752154047859

`eq[2, A145126(a(A287516(n)))]` with `a(0)=1`
-/

namespace A287517.P17822791752154047859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A145126 (f2 (A287516 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287517.P17822791752154047859

/-! ## A287517.P12134136416077771455

`eq[A189820(n+1), A287520(n+1)]+1`
-/

namespace A287517.P12134136416077771455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A287517.P12134136416077771455

/-! ## A287517.P13682141596914403623

`record[gcd(n+1, A287516(n+1)+A055671(n))]`
-/

namespace A287517.P13682141596914403623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A287516 (n + 1) + A055671 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287517.P13682141596914403623

/-! ## A287517.P1529773323278212627

`eq[n, A028310(A287516(A028310(n))+n)]`
-/

namespace A287517.P1529773323278212627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A287516 (A028310 n).toNat + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287517.P1529773323278212627

/-!
# A287518: Positions of 1 in A287516.

The programs for A287518, there is no canonical definition to state claims against.
-/

/-! ## A287518.P17535661519666039749

`eq[1, A287516(n+1)]+1`
-/

namespace A287518.P17535661519666039749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287518.P17535661519666039749

/-! ## A287518.P16356446508142407398

`eq[1, A287516(A028310(n))]`
-/

namespace A287518.P16356446508142407398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287516 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287518.P16356446508142407398

/-! ## A287518.P17817570293423418464

`eq[2, A145126(a(A287516(n)))]` with `a(0)=0`
-/

namespace A287518.P17817570293423418464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A145126 (f2 (A287516 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287518.P17817570293423418464

/-! ## A287518.P10645226785236476186

`eq[2, A065896(a(A287516(n)))]` with `a(0)=4`
-/

namespace A287518.P10645226785236476186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A065896 (f2 (A287516 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287518.P10645226785236476186

/-! ## A287518.P18366443886972137036

`eq[2, A000010(a(A287516(n)))]` with `a(0)=1, a(1)=4`
-/

namespace A287518.P18366443886972137036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  A000010 (f2 (A287516 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287518.P18366443886972137036

/-! ## A287518.P5674278465193083961

`A287516(A016789(n))+A016777(n)`
-/

namespace A287518.P5674278465193083961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287516 (A016789 n).toNat + A016777 n

end

end A287518.P5674278465193083961

/-! ## A287518.P15964948394496920457

`A287516(A016777(n)+1)+A016777(n)`
-/

namespace A287518.P15964948394496920457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287516 (A016777 n + 1).toNat + A016777 n

end

end A287518.P15964948394496920457

/-!
# A287519: Positions of 0 in A287457; complement of A287186.

The programs for A287519, there is no canonical definition to state claims against.
-/

/-! ## A287519.P14816716052165686627

`lt[A287457(n+1), 1]+1`
-/

namespace A287519.P14816716052165686627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287457 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287519.P14816716052165686627

/-! ## A287519.P14098107540727111592

`record[2-tan(A287457(n+2))+n]`
-/

namespace A287519.P14098107540727111592
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 - Real.tan (A287457 (n + 2) : ℝ) + (n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287519.P14098107540727111592

/-! ## A287519.P4733910495944864767

`record[A287457(a(n-1)+1)+n]` with `a(0)=2`
-/

namespace A287519.P4733910495944864767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A287457 (f1 (n - 1) + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287519.P4733910495944864767

/-! ## A287519.P5298904359453300158

`eq[0, A287457(A028310(n))]`
-/

namespace A287519.P5298904359453300158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287457 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287519.P5298904359453300158

/-! ## A287519.P11497832101193751700

`eq[A287372(A287402(n+1)+1), A287457(n+2)]+2`
-/

namespace A287519.P11497832101193751700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287372 (A287402 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287457 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A287519.P11497832101193751700

/-! ## A287519.P17669651562732556754

`eq[A287457(n+2), A287457(A287186(n+1)+1)]+2`
-/

namespace A287519.P17669651562732556754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287457 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287457 (A287186 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A287519.P17669651562732556754

/-!
# A287520: Start with 0 and repeatedly substitute 0->012, 1->102, 2->120.

The programs for A287520, there is no canonical definition to state claims against.
-/

/-! ## A287520.P11827285537121012128

`A287521(n+1)-(3*n+1)`
-/

namespace A287520.P11827285537121012128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287521 (n + 1) - (3 * n + 1 : ℤ)

end

end A287520.P11827285537121012128

/-! ## A287520.P7081287724046034029

`A287521(n+1)%A016777(n)`
-/

namespace A287520.P7081287724046034029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287521 (n + 1)) (A016777 n)

end

end A287520.P7081287724046034029

/-! ## A287520.P16646996816800859382

`A052331(A287521(n+1)-3*n)`
-/

namespace A287520.P16646996816800859382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052331 (A287521 (n + 1) - (3 * n : ℤ)).toNat

end

end A287520.P16646996816800859382

/-! ## A287520.P13273524655734342309

`(A287521(n+1)+(n+1)²)%A034856(n+1)`
-/

namespace A287520.P13273524655734342309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287521 (n + 1) + ((n + 1) ^ 2 : ℤ)) (A034856 (n + 1))

end

end A287520.P13273524655734342309

/-! ## A287520.P468067447381408595

`A189629(2*(n+1))-A287522(n+1)`
-/

namespace A287520.P468067447381408595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189629 (2 * (n + 1)) - A287522 (n + 1)

end

end A287520.P468067447381408595

/-! ## A287520.P9460156748273231696

`A189628(n+1)+A137893(A287522(n+1))`
-/

namespace A287520.P9460156748273231696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (n + 1) + A137893 (A287522 (n + 1)).toNat

end

end A287520.P9460156748273231696

/-! ## A287520.P5735347682813819656

`A189671(A287517(3*(n+1)))-A287522(n+1)`
-/

namespace A287520.P5735347682813819656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (A287517 (3 * (n + 1))).toNat - A287522 (n + 1)

end

end A287520.P5735347682813819656

/-!
# A287521: Positions of 0's in A287520.

The programs for A287521, there is no canonical definition to state claims against.
-/

/-! ## A287521.P10373421444799948346

`A287520(n+1)+3*n+1`
-/

namespace A287521.P10373421444799948346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (n + 1) + (3 * n + 1 : ℤ)

end

end A287521.P10373421444799948346

/-! ## A287521.P18160476916564131404

`A287520(n+1)+A005408(n)+n`
-/

namespace A287521.P18160476916564131404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (n + 1) + A005408 n + (n : ℤ)

end

end A287521.P18160476916564131404

/-! ## A287521.P2983958223369634477

`n+1+A287520(n+1)+A005843(n)`
-/

namespace A287521.P2983958223369634477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A287520 (n + 1) + A005843 n)

end

end A287521.P2983958223369634477

/-! ## A287521.P13720993244700269177

`A287517(n+1)+A287518(n+1)-A287522(n+1)`
-/

namespace A287521.P13720993244700269177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287517 (n + 1) + (A287518 (n + 1) - A287522 (n + 1))

end

end A287521.P13720993244700269177

/-! ## A287521.P4872572532720854836

`eq[0, A287520(n+1)]+1`
-/

namespace A287521.P4872572532720854836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287521.P4872572532720854836

/-! ## A287521.P16027869518843159805

`lt[n*A287520(A028310(n)), n]`
-/

namespace A287521.P16027869518843159805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287520 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A287521.P16027869518843159805

/-! ## A287521.P14998088273857723992

`eq[A189820(n+1), A287516(n+1)]+1`
-/

namespace A287521.P14998088273857723992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A287521.P14998088273857723992

/-! ## A287521.P6109645543800143539

`eq[A000007(n), A287520(A028310(n))]`
-/

namespace A287521.P6109645543800143539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287521.P6109645543800143539

/-! ## A287521.P6129385290556219934

`eq[A000038(n), A287520(A028310(n))]`
-/

namespace A287521.P6129385290556219934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287521.P6129385290556219934

/-! ## A287521.P2524682606267768094

`lt[A287520(A028310(n)), A057427(n)]`
-/

namespace A287521.P2524682606267768094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A287521.P2524682606267768094

/-! ## A287521.P4951473981219721721

`A028310(A287520(n+1)+A016777(n))`
-/

namespace A287521.P4951473981219721721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A287520 (n + 1) + A016777 n).toNat

end

end A287521.P4951473981219721721

/-! ## A287521.P1530088552618273349

`eq[A189820(n+1), A222210(A287518(n+1)-(n+1)-2*n)]+1`
-/

namespace A287521.P1530088552618273349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A287518 (n + 1) - (n + 1 : ℤ) - (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A287521.P1530088552618273349

/-! ## A287521.P6110294665765402831

`record[(n+1)*A287520(A017185(n))]`
-/

namespace A287521.P6110294665765402831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A287520 (A017185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287521.P6110294665765402831

/-!
# A287522: Positions of 1 in A287520.

The programs for A287522, there is no canonical definition to state claims against.
-/

/-! ## A287522.P10441756603415106902

`A189629(2*(n+1))-A287520(n+1)`
-/

namespace A287522.P10441756603415106902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189629 (2 * (n + 1)) - A287520 (n + 1)

end

end A287522.P10441756603415106902

/-! ## A287522.P7930054985304114457

`eq[1, A287520(n+1)]+1`
-/

namespace A287522.P7930054985304114457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287522.P7930054985304114457

/-! ## A287522.P16235382167962231498

`eq[1, A287521(n+1)-(3*n+1)]+1`
-/

namespace A287522.P16235382167962231498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287521 (n + 1) - (3 * n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287522.P16235382167962231498

/-! ## A287522.P5446002917168234819

`eq[1, A287520(A028310(n))]`
-/

namespace A287522.P5446002917168234819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287522.P5446002917168234819

/-! ## A287522.P1942921527071631705

`A016777(n)+1-A287520(A016777(n))`
-/

namespace A287522.P1942921527071631705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (1 - A287520 (A016777 n).toNat)

end

end A287522.P1942921527071631705

/-! ## A287522.P229086714794299970

`eq[1, A287520(A000007(n)+n)]`
-/

namespace A287522.P229086714794299970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287522.P229086714794299970

/-! ## A287522.P9778274191540010799

`A287520(A189629(2*(n+1)))+A189629(2*n+1)`
-/

namespace A287522.P9778274191540010799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (A189629 (2 * (n + 1))).toNat + A189629 (2 * n + 1)

end

end A287522.P9778274191540010799

/-! ## A287522.P7518184483936524133

`A165355(4*n)+2-A287521(3*n+1)`
-/

namespace A287522.P7518184483936524133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 (4 * n) + (2 - A287521 (3 * n + 1))

end

end A287522.P7518184483936524133

/-! ## A287522.P10418408069715344837

`A008619(A008458(n)-A287520(n+1))+1`
-/

namespace A287522.P10418408069715344837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008458 n - A287520 (n + 1)).toNat + 1

end

end A287522.P10418408069715344837

/-! ## A287522.P13617381649969301973

`A065033(A016945(n)-A287520(n+1))`
-/

namespace A287522.P13617381649969301973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A016945 n - A287520 (n + 1)).toNat

end

end A287522.P13617381649969301973

/-! ## A287522.P5467718832082863301

`lt[A287520(n+1)!-1, A287520(3*n+1)]+1`
-/

namespace A287522.P5467718832082863301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A287520 (n + 1)).toNat : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A287522.P5467718832082863301

/-! ## A287522.P2010779155380653299

`A008620(A017185(n)+1-A287520(n+1))`
-/

namespace A287522.P2010779155380653299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A017185 n + (1 - A287520 (n + 1))).toNat

end

end A287522.P2010779155380653299

/-! ## A287522.P6708879007602740319

`A189671(A287517(3*(n+1)))-A287520(n+1)`
-/

namespace A287522.P6708879007602740319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (A287517 (3 * (n + 1))).toNat - A287520 (n + 1)

end

end A287522.P6708879007602740319

/-! ## A287522.P1984143416859232006

`A287520(A017185(n))+A008620(A017185(n))`
-/

namespace A287522.P1984143416859232006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (A017185 n).toNat + A008620 (A017185 n).toNat

end

end A287522.P1984143416859232006

/-!
# A287523: Fixed point starting with 1 of the morphism 0->01, 1->101.

The programs for A287523, the canonical program `A287523.P6616077702644599050` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287523 has offset 1).

The definition of A287523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287523.P11772666393570193968

`char[ceil(ϕ*n)]`
-/

namespace A287523.P11772666393570193968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287523.P11772666393570193968

namespace A287523

/-- `char[ceil(ϕ*n)]` -/
def P11772666393570193968.Spec : Prop :=
  ∀ n, (P11772666393570193968.a n : ℤ) = A287523 (n + 1)

end A287523

/-! ## A287523.P16112131209221851603

`dr(Δ[floor((n-1)/ϕ)])`
-/

namespace A287523.P16112131209221851603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A287523.P16112131209221851603

namespace A287523

/-- `dr(Δ[floor((n-1)/ϕ)])` -/
def P16112131209221851603.Spec : Prop :=
  ∀ n, (P16112131209221851603.a n : ℤ) = A287523 (n + 1)

end A287523

/-! ## A287523.P14327919182768493259

`3%Δ[floor(ϕ*(n-1))]`
-/

namespace A287523.P14327919182768493259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A287523.P14327919182768493259

namespace A287523

/-- `3%Δ[floor(ϕ*(n-1))]` -/
def P14327919182768493259.Spec : Prop :=
  ∀ n, P14327919182768493259.a n = A287523 (n + 1)

end A287523

/-! ## A287523.P4190073692669288692

`C(Δ[floor(ϕ*(n-1))], 2)`
-/

namespace A287523.P4190073692669288692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A287523.P4190073692669288692

namespace A287523

/-- `C(Δ[floor(ϕ*(n-1))], 2)` -/
def P4190073692669288692.Spec : Prop :=
  ∀ n, (P4190073692669288692.a n : ℤ) = A287523 (n + 1)

end A287523

/-! ## A287523.P10324691516145614096

`and(1, Δ[floor((n-1)/ϕ)])`
-/

namespace A287523.P10324691516145614096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A287523.P10324691516145614096

namespace A287523

/-- `and(1, Δ[floor((n-1)/ϕ)])` -/
def P10324691516145614096.Spec : Prop :=
  ∀ n, P10324691516145614096.a n = A287523 (n + 1)

end A287523

/-! ## A287523.P3293336098896472517

`Δ[floor(ϕ*(n-1))]!-1`
-/

namespace A287523.P3293336098896472517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) - 1

end

end A287523.P3293336098896472517

namespace A287523

/-- `Δ[floor(ϕ*(n-1))]!-1` -/
def P3293336098896472517.Spec : Prop :=
  ∀ n, P3293336098896472517.a n = A287523 (n + 1)

end A287523

/-! ## A287523.P3552793414783467070

`a(Δ[floor(ϕ*(n-1))])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A287523.P3552793414783467070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (f1 (n + 1) - f1 n).toNat

end

end A287523.P3552793414783467070

namespace A287523

/-- `a(Δ[floor(ϕ*(n-1))])` -/
def P3552793414783467070.Spec : Prop :=
  ∀ n, (P3552793414783467070.a n : ℤ) = A287523 (n + 1)

end A287523

/-! ## A287523.P1212109316320024291

`1-and(1, Δ[floor(ϕ*(n-1))])`
-/

namespace A287523.P1212109316320024291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 1 (f1 (n + 1) - f1 n)

end

end A287523.P1212109316320024291

namespace A287523

/-- `1-and(1, Δ[floor(ϕ*(n-1))])` -/
def P1212109316320024291.Spec : Prop :=
  ∀ n, P1212109316320024291.a n = A287523 (n + 1)

end A287523

/-! ## A287523.P11956795115534955482

`lcm(2, Δ[floor((n-1)/ϕ)])/2`
-/

namespace A287523.P11956795115534955482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A287523.P11956795115534955482

namespace A287523

/-- `lcm(2, Δ[floor((n-1)/ϕ)])/2` -/
def P11956795115534955482.Spec : Prop :=
  ∀ n, P11956795115534955482.a n = (A287523 (n + 1) : ℚ)

end A287523

/-! ## A287523.P15165472964954459904

`C(2, Δ[floor((n-1)/ϕ)])-1`
-/

namespace A287523.P15165472964954459904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (f1 (n + 1) - f1 n).toNat : ℤ) - 1

end

end A287523.P15165472964954459904

namespace A287523

/-- `C(2, Δ[floor((n-1)/ϕ)])-1` -/
def P15165472964954459904.Spec : Prop :=
  ∀ n, P15165472964954459904.a n = A287523 (n + 1)

end A287523

/-! ## A287523.P12779407586983022556

`1-a(Δ[floor((n-1)/ϕ)])` with `a(0)=1`
-/

namespace A287523.P12779407586983022556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (f1 (n + 1) - f1 n).toNat

end

end A287523.P12779407586983022556

namespace A287523

/-- `1-a(Δ[floor((n-1)/ϕ)])` -/
def P12779407586983022556.Spec : Prop :=
  ∀ n, P12779407586983022556.a n = A287523 (n + 1)

end A287523

/-! ## A287523.P3173752908575340920

`Δ[floor((n-1)/ϕ)%(n+2)]`
-/

namespace A287523.P3173752908575340920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋ (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287523.P3173752908575340920

namespace A287523

/-- `Δ[floor((n-1)/ϕ)%(n+2)]` -/
def P3173752908575340920.Spec : Prop :=
  ∀ n, P3173752908575340920.a n = A287523 (n + 1)

end A287523

/-! ## A287523.P17784185294202395023

`Δ[floor((gcd(n, 2*n)-1)/ϕ)]`
-/

namespace A287523.P17784185294202395023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.gcd n (2 * n) : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287523.P17784185294202395023

namespace A287523

/-- `Δ[floor((gcd(n, 2*n)-1)/ϕ)]` -/
def P17784185294202395023.Spec : Prop :=
  ∀ n, P17784185294202395023.a n = A287523 (n + 1)

end A287523

/-! ## A287523.P6616077702644599050

`Δ[n+2-a(a(n-1))]` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A287523

/-- `Δ[n+2-a(a(n-1))]` -/
def P6616077702644599050.Spec : Prop :=
  ∀ n, P6616077702644599050.a n = A287523 (n + 1)

theorem P6616077702644599050.correct : P6616077702644599050.Spec := by
  intro n
  simp only [A287523, Nat.add_sub_cancel]

end A287523

/-! ## A287523.P4353997632354019907

`Δ[floor((n-gcd(n+1, n+2))/ϕ)]`
-/

namespace A287523.P4353997632354019907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - (Nat.gcd (n + 1) (n + 2) : ℤ) : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287523.P4353997632354019907

namespace A287523

/-- `Δ[floor((n-gcd(n+1, n+2))/ϕ)]` -/
def P4353997632354019907.Spec : Prop :=
  ∀ n, P4353997632354019907.a n = A287523 (n + 1)

end A287523

/-! ## A287523.P1413803334532331515

`A096270(abs(1-n))`
-/

namespace A287523.P1413803334532331515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 |1 - (n : ℤ)|.toNat

end

end A287523.P1413803334532331515

namespace A287523

/-- `A096270(abs(1-n))` -/
def P1413803334532331515.Spec : Prop :=
  ∀ n, P1413803334532331515.a n = A287523 (n + 1)

end A287523

/-! ## A287523.P7215947581016631594

`A005614(abs(2-n))`
-/

namespace A287523.P7215947581016631594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 |2 - (n : ℤ)|.toNat

end

end A287523.P7215947581016631594

namespace A287523

/-- `A005614(abs(2-n))` -/
def P7215947581016631594.Spec : Prop :=
  ∀ n, P7215947581016631594.a n = A287523 (n + 1)

end A287523

/-!
# A287524: Start with 0 and repeatedly substitute 0->012, 1->102, 2->201.

The programs for A287524, the canonical program `A287524.P2131839873874398650` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287524 has offset 1).

The definition of A287524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287524.P4684219163069536096

`2-A287526(n+1)%3`
-/

namespace A287524.P4684219163069536096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A287526 (n + 1)) 3

end

end A287524.P4684219163069536096

namespace A287524

/-- `2-A287526(n+1)%3` -/
def P4684219163069536096.Spec : Prop :=
  ∀ n, P4684219163069536096.a n = A287524 (n + 1)

end A287524

/-! ## A287524.P2131839873874398650

`A189723(n+1)+A189632(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287524

/-- `A189723(n+1)+A189632(n+1)` -/
def P2131839873874398650.Spec : Prop :=
  ∀ n, P2131839873874398650.a n = A287524 (n + 1)

theorem P2131839873874398650.correct : P2131839873874398650.Spec := by
  intro n
  simp only [A287524, Nat.add_sub_cancel]

end A287524

/-! ## A287524.P1585253987624297229

`A287528(n+1)!*A189723(n+1)`
-/

namespace A287524.P1585253987624297229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A287528 (n + 1)).toNat : ℤ) * A189723 (n + 1)

end

end A287524.P1585253987624297229

namespace A287524

/-- `A287528(n+1)!*A189723(n+1)` -/
def P1585253987624297229.Spec : Prop :=
  ∀ n, P1585253987624297229.a n = A287524 (n + 1)

end A287524

/-! ## A287524.P14149331600212610688

`A189632(n+1)+char[A320928(n+1)]`
-/

namespace A287524.P14149331600212610688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320928 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A287524.P14149331600212610688

namespace A287524

/-- `A189632(n+1)+char[A320928(n+1)]` -/
def P14149331600212610688.Spec : Prop :=
  ∀ n, P14149331600212610688.a n = A287524 (n + 1)

end A287524

/-! ## A287524.P12353234887892914297

`A189723(n+1)+A189634(n+1)%3`
-/

namespace A287524.P12353234887892914297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189723 (n + 1) + Int.tmod (A189634 (n + 1)) 3

end

end A287524.P12353234887892914297

namespace A287524

/-- `A189723(n+1)+A189634(n+1)%3` -/
def P12353234887892914297.Spec : Prop :=
  ∀ n, P12353234887892914297.a n = A287524 (n + 1)

end A287524

/-! ## A287524.P9616670783627146393

`A287528(n+1)!*char[A320928(n+1)]`
-/

namespace A287524.P9616670783627146393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A287528 (n + 1)).toNat * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A287524.P9616670783627146393

namespace A287524

/-- `A287528(n+1)!*char[A320928(n+1)]` -/
def P9616670783627146393.Spec : Prop :=
  ∀ n, (P9616670783627146393.a n : ℤ) = A287524 (n + 1)

end A287524

/-! ## A287524.P4148454908866243608

`A189632(n+1)+dr(A287447(n+1)^6)`
-/

namespace A287524.P4148454908866243608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1) + (SequenceMachineLib.digitalRoot (A287447 (n + 1) ^ 6) : ℤ)

end

end A287524.P4148454908866243608

namespace A287524

/-- `A189632(n+1)+dr(A287447(n+1)^6)` -/
def P4148454908866243608.Spec : Prop :=
  ∀ n, P4148454908866243608.a n = A287524 (n + 1)

end A287524

/-! ## A287524.P7985221599172343984

`A154724(A287526(n+1)-A008585(n))`
-/

namespace A287524.P7985221599172343984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154724 (A287526 (n + 1) - A008585 n).toNat

end

end A287524.P7985221599172343984

namespace A287524

/-- `A154724(A287526(n+1)-A008585(n))` -/
def P7985221599172343984.Spec : Prop :=
  ∀ n, P7985221599172343984.a n = A287524 (n + 1)

end A287524

/-! ## A287524.P7219749719085020829

`A266249(A287526(n+1)-A016777(n))`
-/

namespace A287524.P7219749719085020829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266249 (A287526 (n + 1) - A016777 n).toNat

end

end A287524.P7219749719085020829

namespace A287524

/-- `A266249(A287526(n+1)-A016777(n))` -/
def P7219749719085020829.Spec : Prop :=
  ∀ n, P7219749719085020829.a n = A287524 (n + 1)

end A287524

/-! ## A287524.P10423393053676918980

`A189706(Δ[A189724(n+1)])+A189632(n+1)`
-/

namespace A287524.P10423393053676918980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189706 (f1 (n + 1) - f1 n).toNat + A189632 (n + 1)

end

end A287524.P10423393053676918980

namespace A287524

/-- `A189706(Δ[A189724(n+1)])+A189632(n+1)` -/
def P10423393053676918980.Spec : Prop :=
  ∀ n, P10423393053676918980.a n = A287524 (n + 1)

end A287524

/-! ## A287524.P16245536429323650743

`A320927(3*n+1)+A189632(n+1)`
-/

namespace A287524.P16245536429323650743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320927 (3 * n + 1) + A189632 (n + 1)

end

end A287524.P16245536429323650743

namespace A287524

/-- `A320927(3*n+1)+A189632(n+1)` -/
def P16245536429323650743.Spec : Prop :=
  ∀ n, P16245536429323650743.a n = A287524 (n + 1)

end A287524

/-! ## A287524.P1386708660097977946

`A189727(Δ[n²])+A189632(n+1)`
-/

namespace A287524.P1386708660097977946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A189632 (n + 1)

end

end A287524.P1386708660097977946

namespace A287524

/-- `A189727(Δ[n²])+A189632(n+1)` -/
def P1386708660097977946.Spec : Prop :=
  ∀ n, P1386708660097977946.a n = A287524 (n + 1)

end A287524

/-! ## A287524.P13301712844425156445

`A189633(2*(n+1))-A189725(2*n+1)`
-/

namespace A287524.P13301712844425156445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189633 (2 * (n + 1)) - A189725 (2 * n + 1)

end

end A287524.P13301712844425156445

namespace A287524

/-- `A189633(2*(n+1))-A189725(2*n+1)` -/
def P13301712844425156445.Spec : Prop :=
  ∀ n, P13301712844425156445.a n = A287524 (n + 1)

end A287524

/-! ## A287524.P4695340576370911252

`A189633(2*n+1)-A320928(2*n+1)`
-/

namespace A287524.P4695340576370911252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189633 (2 * n + 1) - A320928 (2 * n + 1)

end

end A287524.P4695340576370911252

namespace A287524

/-- `A189633(2*n+1)-A320928(2*n+1)` -/
def P4695340576370911252.Spec : Prop :=
  ∀ n, P4695340576370911252.a n = A287524 (n + 1)

end A287524

/-! ## A287524.P17563764342709373888

`A189632(n+1)+A284914(2*n+1)%2`
-/

namespace A287524.P17563764342709373888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1) + Int.tmod (A284914 (2 * n + 1)) 2

end

end A287524.P17563764342709373888

namespace A287524

/-- `A189632(n+1)+A284914(2*n+1)%2` -/
def P17563764342709373888.Spec : Prop :=
  ∀ n, P17563764342709373888.a n = A287524 (n + 1)

end A287524

/-! ## A287524.P3392280946120260937

`A287528(A189634(n+1)%A287526(n+1))`
-/

namespace A287524.P3392280946120260937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287528 (Int.tmod (A189634 (n + 1)) (A287526 (n + 1))).toNat

end

end A287524.P3392280946120260937

namespace A287524

/-- `A287528(A189634(n+1)%A287526(n+1))` -/
def P3392280946120260937.Spec : Prop :=
  ∀ n, P3392280946120260937.a n = A287524 (n + 1)

end A287524

/-! ## A287524.P7821099704012973965

`A004273(A287526(n+1))%3`
-/

namespace A287524.P7821099704012973965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A287526 (n + 1)).toNat) 3

end

end A287524.P7821099704012973965

namespace A287524

/-- `A004273(A287526(n+1))%3` -/
def P7821099704012973965.Spec : Prop :=
  ∀ n, P7821099704012973965.a n = A287524 (n + 1)

end A287524

/-! ## A287524.P8047762027946655611

`A004277(A287526(n+1)+1)%3`
-/

namespace A287524.P8047762027946655611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (A287526 (n + 1) + 1).toNat) 3

end

end A287524.P8047762027946655611

namespace A287524

/-- `A004277(A287526(n+1)+1)%3` -/
def P8047762027946655611.Spec : Prop :=
  ∀ n, P8047762027946655611.a n = A287524 (n + 1)

end A287524

/-! ## A287524.P13344409831694561531

`A189706(A189724(n+1)+A189706(n+1))+A189632(n+1)`
-/

namespace A287524.P13344409831694561531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189706 (A189724 (n + 1) + A189706 (n + 1)).toNat + A189632 (n + 1)

end

end A287524.P13344409831694561531

namespace A287524

/-- `A189706(A189724(n+1)+A189706(n+1))+A189632(n+1)` -/
def P13344409831694561531.Spec : Prop :=
  ∀ n, P13344409831694561531.a n = A287524 (n + 1)

end A287524

/-!
# A287525: a(n) = a(n-1) + a(n-2) - a(n-3) +a(n-4) + a(n-5) for n >= 6, where a(0) = 2, a(1) = 4, a(2) = 7, a(3) = 12, a(4) = 19, a(5) = 31.

The programs for A287525, the canonical program `A287525.P10262016671981005508` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287525 has offset 0).

The definition of A287525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-3)+a(n-4)+a(n-5)` (program `A287525.P10262016671981005508`, by `A287525.P10262016671981005508.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A287525.P10262016671981005508

`a(n-1)+a(n-2)-a(n-3)+a(n-4)+a(n-5)` with `a(0)=2, a(1)=4, a(2)=7, a(3)=12, a(4)=19, a(5)=31`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A287525

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-4)+a(n-5)` -/
def P10262016671981005508.Spec : Prop :=
  ∀ n, P10262016671981005508.a n = A287525 n

theorem P10262016671981005508.correct : P10262016671981005508.Spec := by
  intro n
  simp only [A287525]

end A287525

/-! ## A287525.P9911913808578228360

`A293014(n+1)+A288219(n)`
-/

namespace A287525.P9911913808578228360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (n + 1) + A288219 n

end

end A287525.P9911913808578228360

namespace A287525

/-- `A293014(n+1)+A288219(n)` -/
def P9911913808578228360.Spec : Prop :=
  ∀ n, P9911913808578228360.a n = A287525 n

end A287525

/-! ## A287525.P17768773720835343383

`A173434(n+3)+A173388(2*n+3)+A173434(n+1)+1`
-/

namespace A287525.P17768773720835343383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173434 (n + 3) + (A173388 (2 * n + 3) + (A173434 (n + 1) + 1))

end

end A287525.P17768773720835343383

namespace A287525

/-- `A173434(n+3)+A173388(2*n+3)+A173434(n+1)+1` -/
def P17768773720835343383.Spec : Prop :=
  ∀ n, P17768773720835343383.a n = A287525 n

end A287525

/-! ## A287525.P14116411140117116316

`A173434(n+3)+floor((A288219(n)+A014217(n))/2)+1`
-/

namespace A287525.P14116411140117116316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173434 (n + 3) + (⌊(A288219 n + A014217 n : ℚ) / 2⌋ + 1)

end

end A287525.P14116411140117116316

namespace A287525

/-- `A173434(n+3)+floor((A288219(n)+A014217(n))/2)+1` -/
def P14116411140117116316.Spec : Prop :=
  ∀ n, P14116411140117116316.a n = A287525 n

end A287525

/-! ## A287525.P3165028750477221608

`A173434(n+3)+A111917(n+2)`
-/

namespace A287525.P3165028750477221608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173434 (n + 3) + A111917 (n + 2)

end

end A287525.P3165028750477221608

namespace A287525

/-- `A173434(n+3)+A111917(n+2)` -/
def P3165028750477221608.Spec : Prop :=
  ∀ n, P3165028750477221608.a n = A287525 n

end A287525

/-!
# A287526: Positions of 1 in A287524.

The programs for A287526, the canonical program `A287526.P12703940711411786649` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287526 has offset 1).

The definition of A287526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287526.P12703940711411786649

`A189725(A189633(2*n+1)-n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A287526

/-- `A189725(A189633(2*n+1)-n)` -/
def P12703940711411786649.Spec : Prop :=
  ∀ n, P12703940711411786649.a n = A287526 (n + 1)

theorem P12703940711411786649.correct : P12703940711411786649.Spec := by
  intro n
  simp only [A287526, Nat.add_sub_cancel]

end A287526

/-! ## A287526.P164520464691905053

`∩[A189633(n+1), A189725(n+1)]`
-/

namespace A287526.P164520464691905053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287526.P164520464691905053

namespace A287526

/-- `∩[A189633(n+1), A189725(n+1)]` -/
def P164520464691905053.Spec : Prop :=
  ∀ n, (P164520464691905053.a n : ℤ) = A287526 (n + 1)

end A287526

/-! ## A287526.P1622326499318735825

`A189725(A189632(n+1)+2*n+1)`
-/

namespace A287526.P1622326499318735825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189725 (A189632 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A287526.P1622326499318735825

namespace A287526

/-- `A189725(A189632(n+1)+2*n+1)` -/
def P1622326499318735825.Spec : Prop :=
  ∀ n, P1622326499318735825.a n = A287526 (n + 1)

end A287526

/-! ## A287526.P10477865867570908116

`A189725(A005408(n)+C(A287524(n+1), 2))`
-/

namespace A287526.P10477865867570908116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189725 (A005408 n + (Nat.choose (A287524 (n + 1)).toNat 2 : ℤ)).toNat

end

end A287526.P10477865867570908116

namespace A287526

/-- `A189725(A005408(n)+C(A287524(n+1), 2))` -/
def P10477865867570908116.Spec : Prop :=
  ∀ n, P10477865867570908116.a n = A287526 (n + 1)

end A287526

/-! ## A287526.P5387595517627128230

`A189725(A005408(n)+C(A287528(n+1), 2))`
-/

namespace A287526.P5387595517627128230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189725 (A005408 n + (Nat.choose (A287528 (n + 1)).toNat 2 : ℤ)).toNat

end

end A287526.P5387595517627128230

namespace A287526

/-- `A189725(A005408(n)+C(A287528(n+1), 2))` -/
def P5387595517627128230.Spec : Prop :=
  ∀ n, P5387595517627128230.a n = A287526 (n + 1)

end A287526

/-! ## A287526.P9198112154448626010

`A189725(A005408(n)+A287524(n+1)!-1)`
-/

namespace A287526.P9198112154448626010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189725 (A005408 n + ((Nat.factorial (A287524 (n + 1)).toNat : ℤ) - 1)).toNat

end

end A287526.P9198112154448626010

namespace A287526

/-- `A189725(A005408(n)+A287524(n+1)!-1)` -/
def P9198112154448626010.Spec : Prop :=
  ∀ n, P9198112154448626010.a n = A287526 (n + 1)

end A287526

/-! ## A287526.P16564596455926382906

`eq[1, A287524(n+1)]+1`
-/

namespace A287526.P16564596455926382906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287526.P16564596455926382906

namespace A287526

/-- `eq[1, A287524(n+1)]+1` -/
def P16564596455926382906.Spec : Prop :=
  ∀ n, (P16564596455926382906.a n : ℤ) = A287526 (n + 1)

end A287526

/-! ## A287526.P18031564469372764067

`eq[1, A287524(A028310(n))]`
-/

namespace A287526.P18031564469372764067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287526.P18031564469372764067

namespace A287526

/-- `eq[1, A287524(A028310(n))]` -/
def P18031564469372764067.Spec : Prop :=
  ∀ n, (P18031564469372764067.a n : ℤ) = A287526 (n + 1)

end A287526

/-! ## A287526.P5429258127100426446

`eq[2, A131728(a(A287524(n)))]` with `a(0)=22`
-/

namespace A287526.P5429258127100426446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [22] fun n f2 =>
  A131728 (f2 (A287524 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287526.P5429258127100426446

namespace A287526

/-- `eq[2, A131728(a(A287524(n)))]` -/
def P5429258127100426446.Spec : Prop :=
  ∀ n, (P5429258127100426446.a n : ℤ) = A287526 (n + 1)

end A287526

/-! ## A287526.P18286157410403940113

`filter[A189633(n+1), A189723(#)]`
-/

namespace A287526.P18286157410403940113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189723 (f1 j).toNat = 1) n)

end

end A287526.P18286157410403940113

namespace A287526

/-- `filter[A189633(n+1), A189723(#)]` -/
def P18286157410403940113.Spec : Prop :=
  ∀ n, P18286157410403940113.a n = A287526 (n + 1)

end A287526

/-! ## A287526.P7960812032267738816

`eq[3, A000203(a(A287524(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A287526.P7960812032267738816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A000203 (f2 (A287524 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287526.P7960812032267738816

namespace A287526

/-- `eq[3, A000203(a(A287524(n)))]` -/
def P7960812032267738816.Spec : Prop :=
  ∀ n, (P7960812032267738816.a n : ℤ) = A287526 (n + 1)

end A287526

/-! ## A287526.P10321047880724638365

`eq[2, A287524(a(A287524(n)))]` with `a(0)=1, a(1)=3`
-/

namespace A287526.P10321047880724638365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A287524 (f2 (A287524 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287526.P10321047880724638365

namespace A287526

/-- `eq[2, A287524(a(A287524(n)))]` -/
def P10321047880724638365.Spec : Prop :=
  ∀ n, (P10321047880724638365.a n : ℤ) = A287526 (n + 1)

end A287526

/-! ## A287526.P18286500026063845746

`lt[A189632(n+1), char[A320928(n+1)]]+1`
-/

namespace A287526.P18286500026063845746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320928 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287526.P18286500026063845746

namespace A287526

/-- `lt[A189632(n+1), char[A320928(n+1)]]+1` -/
def P18286500026063845746.Spec : Prop :=
  ∀ n, (P18286500026063845746.a n : ℤ) = A287526 (n + 1)

end A287526

/-! ## A287526.P12841269605588588621

`A189725(A005408(n)+A189635(3*n+1)-n)`
-/

namespace A287526.P12841269605588588621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189725 (A005408 n + (A189635 (3 * n + 1) - (n : ℤ))).toNat

end

end A287526.P12841269605588588621

namespace A287526

/-- `A189725(A005408(n)+A189635(3*n+1)-n)` -/
def P12841269605588588621.Spec : Prop :=
  ∀ n, P12841269605588588621.a n = A287526 (n + 1)

end A287526

/-! ## A287526.P16064768626043187297

`A320928(2*n+1)+A005408(A189635(3*n+1)-n)`
-/

namespace A287526.P16064768626043187297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320928 (2 * n + 1) + A005408 (A189635 (3 * n + 1) - (n : ℤ)).toNat

end

end A287526.P16064768626043187297

namespace A287526

/-- `A320928(2*n+1)+A005408(A189635(3*n+1)-n)` -/
def P16064768626043187297.Spec : Prop :=
  ∀ n, P16064768626043187297.a n = A287526 (n + 1)

end A287526

/-! ## A287526.P6302601517762338725

`eq[1, A287524(A000007(n)+n)]`
-/

namespace A287526.P6302601517762338725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287526.P6302601517762338725

namespace A287526

/-- `eq[1, A287524(A000007(n)+n)]` -/
def P6302601517762338725.Spec : Prop :=
  ∀ n, (P6302601517762338725.a n : ℤ) = A287526 (n + 1)

end A287526

/-! ## A287526.P2496797841937403684

`eq[1, A287524(A130706(n)+n)]`
-/

namespace A287526.P2496797841937403684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (A130706 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287526.P2496797841937403684

namespace A287526

/-- `eq[1, A287524(A130706(n)+n)]` -/
def P2496797841937403684.Spec : Prop :=
  ∀ n, (P2496797841937403684.a n : ℤ) = A287526 (n + 1)

end A287526

/-! ## A287526.P15605151929355421212

`A287524(A189633(2*(n+1)))+A189633(2*n+1)`
-/

namespace A287526.P15605151929355421212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (A189633 (2 * (n + 1))).toNat + A189633 (2 * n + 1)

end

end A287526.P15605151929355421212

namespace A287526

/-- `A287524(A189633(2*(n+1)))+A189633(2*n+1)` -/
def P15605151929355421212.Spec : Prop :=
  ∀ n, P15605151929355421212.a n = A287526 (n + 1)

end A287526

/-! ## A287526.P604963669707156156

`lt[A189632(n+1), and(1, A320927(3*n+1))]+1`
-/

namespace A287526.P604963669707156156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A320927 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A287526.P604963669707156156

namespace A287526

/-- `lt[A189632(n+1), and(1, A320927(3*n+1))]+1` -/
def P604963669707156156.Spec : Prop :=
  ∀ n, (P604963669707156156.a n : ℤ) = A287526 (n + 1)

end A287526

/-! ## A287526.P5052564848420922979

`lt[A189632(n+1), A284914(2*n+1)%2]+1`
-/

namespace A287526.P5052564848420922979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284914 (2 * n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A287526.P5052564848420922979

namespace A287526

/-- `lt[A189632(n+1), A284914(2*n+1)%2]+1` -/
def P5052564848420922979.Spec : Prop :=
  ∀ n, (P5052564848420922979.a n : ℤ) = A287526 (n + 1)

end A287526

/-!
# A287527: Positions of 0 in A287372; complement of A287402.

The programs for A287527, there is no canonical definition to state claims against.
-/

/-! ## A287527.P7668032291904259235

`eq[0, A287372(n+1)]+1`
-/

namespace A287527.P7668032291904259235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287527.P7668032291904259235

/-! ## A287527.P13171357228054872525

`a(n-1)+A287372(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A287527.P13171357228054872525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A287372 (a (n - 1) + 1).toNat + 1)

end

end A287527.P13171357228054872525

/-! ## A287527.P5681295346887253801

`record[n+1-A090740(n+1)*A287372(n+1)]`
-/

namespace A287527.P5681295346887253801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A090740 (n + 1) * A287372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287527.P5681295346887253801

/-! ## A287527.P12665160206497840059

`record[n+1-A188065(n+1)*A287372(n+1)]`
-/

namespace A287527.P12665160206497840059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A188065 (n + 1) * A287372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287527.P12665160206497840059

/-! ## A287527.P18197821156043617435

`record[n+1-A008292(n+1)*A287372(n+1)]`
-/

namespace A287527.P18197821156043617435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008292 (n + 1) * A287372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287527.P18197821156043617435

/-!
# A287528: Start with 0 and repeatedly substitute 0->012, 1->102, 2->210.

The programs for A287528, the canonical program `A287528.P8977328754307273010` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287528 has offset 1).

The definition of A287528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287528.P7839080916621321687

`A287529(n+1)-(3*n+1)`
-/

namespace A287528.P7839080916621321687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287529 (n + 1) - (3 * n + 1 : ℤ)

end

end A287528.P7839080916621321687

namespace A287528

/-- `A287529(n+1)-(3*n+1)` -/
def P7839080916621321687.Spec : Prop :=
  ∀ n, P7839080916621321687.a n = A287528 (n + 1)

theorem P7839080916621321687.correct : P7839080916621321687.Spec := by
  intro n
  simp only [A287528, Nat.add_sub_cancel, A287528.P7839080916621321687.a, A287528.P8977328754307273010.a, A189632, A189632.P15931714177452615149.a, A189668, A189668.P16396119617420465884.a, A287529, A287529.P12551350988628766671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A287528

/-! ## A287528.P1275935855571211443

`A287529(n+1)%A016777(n)`
-/

namespace A287528.P1275935855571211443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287529 (n + 1)) (A016777 n)

end

end A287528.P1275935855571211443

namespace A287528

/-- `A287529(n+1)%A016777(n)` -/
def P1275935855571211443.Spec : Prop :=
  ∀ n, P1275935855571211443.a n = A287528 (n + 1)

end A287528

/-! ## A287528.P8977328754307273010

`A189668(n+1)+2*A189632(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287528

/-- `A189668(n+1)+2*A189632(n+1)` -/
def P8977328754307273010.Spec : Prop :=
  ∀ n, P8977328754307273010.a n = A287528 (n + 1)

theorem P8977328754307273010.correct : P8977328754307273010.Spec := by
  intro n
  simp only [A287528, Nat.add_sub_cancel]

end A287528

/-! ## A287528.P14964816171012253416

`A000129(A287529(n+1)-A016777(n))`
-/

namespace A287528.P14964816171012253416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A287529 (n + 1) - A016777 n).toNat

end

end A287528.P14964816171012253416

namespace A287528

/-- `A000129(A287529(n+1)-A016777(n))` -/
def P14964816171012253416.Spec : Prop :=
  ∀ n, P14964816171012253416.a n = A287528 (n + 1)

end A287528

/-! ## A287528.P10295302558539815512

`A060306(A287529(n+1)-A008585(n))`
-/

namespace A287528.P10295302558539815512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060306 (A287529 (n + 1) - A008585 n).toNat

end

end A287528.P10295302558539815512

namespace A287528

/-- `A060306(A287529(n+1)-A008585(n))` -/
def P10295302558539815512.Spec : Prop :=
  ∀ n, P10295302558539815512.a n = A287528 (n + 1)

end A287528

/-! ## A287528.P3917997895253187874

`A287524((lt[0, A189632(n+1)]+1)%A189670(n+1))`
-/

namespace A287528.P3917997895253187874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) (A189670 (n + 1))).toNat

end

end A287528.P3917997895253187874

namespace A287528

/-- `A287524((lt[0, A189632(n+1)]+1)%A189670(n+1))` -/
def P3917997895253187874.Spec : Prop :=
  ∀ n, P3917997895253187874.a n = A287528 (n + 1)

end A287528

/-! ## A287528.P7753022754442638552

`A287438(A287526(3*(n+1))-A287438(n+1))`
-/

namespace A287528.P7753022754442638552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287438 (A287526 (3 * (n + 1)) - A287438 (n + 1)).toNat

end

end A287528.P7753022754442638552

namespace A287528

/-- `A287438(A287526(3*(n+1))-A287438(n+1))` -/
def P7753022754442638552.Spec : Prop :=
  ∀ n, P7753022754442638552.a n = A287528 (n + 1)

end A287528

/-! ## A287528.P17227845031109297239

`A287385(A287529(A287386(2*n+n+1)))`
-/

namespace A287528.P17227845031109297239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287385 (A287529 (A287386 (2 * n + (n + 1))).toNat).toNat

end

end A287528.P17227845031109297239

namespace A287528

/-- `A287385(A287529(A287386(2*n+n+1)))` -/
def P17227845031109297239.Spec : Prop :=
  ∀ n, P17227845031109297239.a n = A287528 (n + 1)

end A287528

/-! ## A287528.P6618897920491593960

`A287397(A319497(n)+1)`
-/

namespace A287528.P6618897920491593960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287397 (A319497 n + 1).toNat

end

end A287528.P6618897920491593960

namespace A287528

/-- `A287397(A319497(n)+1)` -/
def P6618897920491593960.Spec : Prop :=
  ∀ n, P6618897920491593960.a n = A287528 (n + 1)

end A287528

/-!
# A287529: Positions of 0 in A287528.

The programs for A287529, the canonical program `A287529.P12551350988628766671` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287529 has offset 1).

The definition of A287529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287529.P12551350988628766671

`A287528(n+1)+3*n+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A287529

/-- `A287528(n+1)+3*n+1` -/
def P12551350988628766671.Spec : Prop :=
  ∀ n, P12551350988628766671.a n = A287529 (n + 1)

theorem P12551350988628766671.correct : P12551350988628766671.Spec := by
  intro n
  simp only [A287529, Nat.add_sub_cancel]

end A287529

/-! ## A287529.P5654879408042970987

`A189634(n+1)+A287528(n+1)²-2`
-/

namespace A287529.P5654879408042970987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189634 (n + 1) + (A287528 (n + 1) ^ 2 - 2)

end

end A287529.P5654879408042970987

namespace A287529

/-- `A189634(n+1)+A287528(n+1)²-2` -/
def P5654879408042970987.Spec : Prop :=
  ∀ n, P5654879408042970987.a n = A287529 (n + 1)

theorem P5654879408042970987.correct : P5654879408042970987.Spec := by
  intro n
  simp only [A287529, Nat.add_sub_cancel, A287529.P5654879408042970987.a, A287529.P12551350988628766671.a, A189634, A189634.P909356562777891474.a, A287528, A287528.P8977328754307273010.a, A189632, A189632.P15931714177452615149.a, A189668, A189668.P16396119617420465884.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A287529

/-! ## A287529.P6559677037924973009

`A189669(A189633(2*n+1)-n)`
-/

namespace A287529.P6559677037924973009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (A189633 (2 * n + 1) - (n : ℤ)).toNat

end

end A287529.P6559677037924973009

namespace A287529

/-- `A189669(A189633(2*n+1)-n)` -/
def P6559677037924973009.Spec : Prop :=
  ∀ n, P6559677037924973009.a n = A287529 (n + 1)

end A287529

/-! ## A287529.P9436188866273114539

`∩[A189633(n+1), A189669(n+1)]`
-/

namespace A287529.P9436188866273114539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287529.P9436188866273114539

namespace A287529

/-- `∩[A189633(n+1), A189669(n+1)]` -/
def P9436188866273114539.Spec : Prop :=
  ∀ n, (P9436188866273114539.a n : ℤ) = A287529 (n + 1)

end A287529

/-! ## A287529.P14742519946578814306

`A189669(A189632(n+1)+2*n+1)`
-/

namespace A287529.P14742519946578814306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (A189632 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A287529.P14742519946578814306

namespace A287529

/-- `A189669(A189632(n+1)+2*n+1)` -/
def P14742519946578814306.Spec : Prop :=
  ∀ n, P14742519946578814306.a n = A287529 (n + 1)

end A287529

/-! ## A287529.P237787629100655901

`A189633(A284906(n+1)+A189632(n+1))`
-/

namespace A287529.P237787629100655901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189633 (A284906 (n + 1) + A189632 (n + 1)).toNat

end

end A287529.P237787629100655901

namespace A287529

/-- `A189633(A284906(n+1)+A189632(n+1))` -/
def P237787629100655901.Spec : Prop :=
  ∀ n, P237787629100655901.a n = A287529 (n + 1)

end A287529

/-! ## A287529.P4075535242458079492

`A189633(A284906(n+1)+C(A287524(n+1), 2))`
-/

namespace A287529.P4075535242458079492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189633 (A284906 (n + 1) + (Nat.choose (A287524 (n + 1)).toNat 2 : ℤ)).toNat

end

end A287529.P4075535242458079492

namespace A287529

/-- `A189633(A284906(n+1)+C(A287524(n+1), 2))` -/
def P4075535242458079492.Spec : Prop :=
  ∀ n, P4075535242458079492.a n = A287529 (n + 1)

end A287529

/-! ## A287529.P3020092036685437719

`A189633(A284906(n+1)+C(A287528(n+1), 2))`
-/

namespace A287529.P3020092036685437719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189633 (A284906 (n + 1) + (Nat.choose (A287528 (n + 1)).toNat 2 : ℤ)).toNat

end

end A287529.P3020092036685437719

namespace A287529

/-- `A189633(A284906(n+1)+C(A287528(n+1), 2))` -/
def P3020092036685437719.Spec : Prop :=
  ∀ n, P3020092036685437719.a n = A287529 (n + 1)

end A287529

/-! ## A287529.P7293083765224535255

`lt[A287528(n+1), 1]+1`
-/

namespace A287529.P7293083765224535255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287528 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287529.P7293083765224535255

namespace A287529

/-- `lt[A287528(n+1), 1]+1` -/
def P7293083765224535255.Spec : Prop :=
  ∀ n, (P7293083765224535255.a n : ℤ) = A287529 (n + 1)

end A287529

/-! ## A287529.P1327392379558585052

`eq[4, A046092(a(A287528(n)))]` with `a(0)=1`
-/

namespace A287529.P1327392379558585052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A046092 (f2 (A287528 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287529.P1327392379558585052

namespace A287529

/-- `eq[4, A046092(a(A287528(n)))]` -/
def P1327392379558585052.Spec : Prop :=
  ∀ n, (P1327392379558585052.a n : ℤ) = A287529 (n + 1)

end A287529

/-! ## A287529.P9010778370797340671

`lt[n*A287528(A028310(n)), n]`
-/

namespace A287529.P9010778370797340671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287528 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A287529.P9010778370797340671

namespace A287529

/-- `lt[n*A287528(A028310(n)), n]` -/
def P9010778370797340671.Spec : Prop :=
  ∀ n, (P9010778370797340671.a n : ℤ) = A287529 (n + 1)

end A287529

/-! ## A287529.P17547203476997891948

`A189633(A284906(n+1)+A189635(3*n+1)-n)`
-/

namespace A287529.P17547203476997891948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189633 (A284906 (n + 1) + (A189635 (3 * n + 1) - (n : ℤ))).toNat

end

end A287529.P17547203476997891948

namespace A287529

/-- `A189633(A284906(n+1)+A189635(3*n+1)-n)` -/
def P17547203476997891948.Spec : Prop :=
  ∀ n, P17547203476997891948.a n = A287529 (n + 1)

end A287529

/-! ## A287529.P15162231432669970266

`lt[A287528(A028310(n)), A057427(n)]`
-/

namespace A287529.P15162231432669970266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287528 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A287529.P15162231432669970266

namespace A287529

/-- `lt[A287528(A028310(n)), A057427(n)]` -/
def P15162231432669970266.Spec : Prop :=
  ∀ n, (P15162231432669970266.a n : ℤ) = A287529 (n + 1)

end A287529

/-! ## A287529.P5604701993990132900

`eq[A000007(n), A287528(A000007(n)+n)]`
-/

namespace A287529.P5604701993990132900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287528 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287529.P5604701993990132900

namespace A287529

/-- `eq[A000007(n), A287528(A000007(n)+n)]` -/
def P5604701993990132900.Spec : Prop :=
  ∀ n, (P5604701993990132900.a n : ℤ) = A287529 (n + 1)

end A287529

/-! ## A287529.P3207863054478053609

`A189633(A284906(n+1)+2-A287524(3*(n+1)))`
-/

namespace A287529.P3207863054478053609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189633 (A284906 (n + 1) + (2 - A287524 (3 * (n + 1)))).toNat

end

end A287529.P3207863054478053609

namespace A287529

/-- `A189633(A284906(n+1)+2-A287524(3*(n+1)))` -/
def P3207863054478053609.Spec : Prop :=
  ∀ n, P3207863054478053609.a n = A287529 (n + 1)

end A287529

/-!
# A287530: 1-limiting word of the mapping 00->1000, 10->001, starting with 00.

The programs for A287530, there is no canonical definition to state claims against.
-/

/-! ## A287530.P17368416071019320669

`char[A287551(n+1)-1]`
-/

namespace A287530.P17368416071019320669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287551 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287530.P17368416071019320669

/-! ## A287530.P12180113168269528668

`char[comp[A287531(n+1)-1]]`
-/

namespace A287530.P12180113168269528668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287531 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A287530.P12180113168269528668

/-! ## A287530.P9539389251027732554

`char[abs(A287551(Δ[n²]-n)-1)]`
-/

namespace A287530.P9539389251027732554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A287551 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287530.P9539389251027732554

/-! ## A287530.P17804483279456103319

`1-char[A287531(Δ[n²]-n)-1]`
-/

namespace A287530.P17804483279456103319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287531 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A287530.P17804483279456103319

/-! ## A287530.P306760926959993052

`(1-char[A287531(A028310(n))-1])²`
-/

namespace A287530.P306760926959993052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287531 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A287530.P306760926959993052

/-! ## A287530.P9500146470045328742

`char[Δ[A287551(A152271(n))]]`
-/

namespace A287530.P9500146470045328742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287551 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287530.P9500146470045328742

/-! ## A287530.P6710524572423060328

`(char[A287531(xor(1, n)+1)-1]-1)²`
-/

namespace A287530.P6710524572423060328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287531 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1) ^ 2

end

end A287530.P6710524572423060328

/-! ## A287530.P12175588428453699098

`(char[A287531(abs(xor(n, -2)))-1]-1)²`
-/

namespace A287530.P12175588428453699098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287531 |Int.xor (n : ℤ) (-2)|.toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1) ^ 2

end

end A287530.P12175588428453699098

/-!
# A287531: Positions of 0 in A287530; complement of A287551.

The programs for A287531, there is no canonical definition to state claims against.
-/

/-! ## A287531.P1950614846619116247

`eq[0, A287530(n+1)]+1`
-/

namespace A287531.P1950614846619116247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287531.P1950614846619116247

/-! ## A287531.P9319941860114770513

`A020725(eq[0, A287530(n+1)])`
-/

namespace A287531.P9319941860114770513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287531.P9319941860114770513

/-! ## A287531.P10471200069899964985

`lt[A287530(A004277(n)-n), 1]`
-/

namespace A287531.P10471200069899964985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287530 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A287531.P10471200069899964985

/-! ## A287531.P6031108819223422312

`eq[char[A287551(n+1)], A000007(n)]`
-/

namespace A287531.P6031108819223422312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287551 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A287531.P6031108819223422312

/-! ## A287531.P18057781976133844704

`eq[char[A287551(n+1)], A000038(n)]`
-/

namespace A287531.P18057781976133844704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287551 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A287531.P18057781976133844704

/-! ## A287531.P13977515315891985057

`lt[A004277(n)*A287530(n+1), 1]+1`
-/

namespace A287531.P13977515315891985057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A287530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287531.P13977515315891985057

/-! ## A287531.P3062362144766136361

`lt[A016777(n)*A287530(n+1), 1]+1`
-/

namespace A287531.P3062362144766136361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A287530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287531.P3062362144766136361

/-! ## A287531.P5899407725755432041

`lt[A128227(n)*A287530(n+1), 1]+1`
-/

namespace A287531.P5899407725755432041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n * A287530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287531.P5899407725755432041

/-! ## A287531.P3041388742123757837

`lt[A000040(n+1)*A287530(n+1), 1]+1`
-/

namespace A287531.P3041388742123757837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A287530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287531.P3041388742123757837

/-! ## A287531.P2969301523926754809

`lt[A157532(n+1)*A287530(n+1), 1]+1`
-/

namespace A287531.P2969301523926754809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1) * A287530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287531.P2969301523926754809

/-! ## A287531.P4780626654490572742

`lt[2*A000002(n+1)*A287530(n+1), 1]+1`
-/

namespace A287531.P4780626654490572742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000002 (n + 1) * A287530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287531.P4780626654490572742

/-! ## A287531.P16386264377051334037

`lt[A053585(∏{p}[n+1, #])*A287530(n+1), 1]+1`
-/

namespace A287531.P16386264377051334037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f2 n), p) * A287530 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A287531.P16386264377051334037

/-! ## A287531.P14246212884328689790

`eq[0, A287530(A065033(2*n))]`
-/

namespace A287531.P14246212884328689790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287530 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287531.P14246212884328689790

/-! ## A287531.P694093389453259344

`A055396(p?[A000040(n+1)-A287530(n+1)])`
-/

namespace A287531.P694093389453259344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A287530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287531.P694093389453259344

/-! ## A287531.P11718013579894635709

`A055396(p?[A287530(n+2)+A000040(n+2)])`
-/

namespace A287531.P11718013579894635709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287530 (n + 2) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287531.P11718013579894635709

/-! ## A287531.P2124952774028175412

`A055396(p?[A008578(n+2)-A287530(n+1)])`
-/

namespace A287531.P2124952774028175412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A287530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287531.P2124952774028175412

/-! ## A287531.P4119264911407444436

`lt[A000213(n)*A287530(n+1), 1]+1`
-/

namespace A287531.P4119264911407444436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n * A287530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287531.P4119264911407444436

/-!
# A287532: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals upwards, where A(n,k) = sum of unimodal products of length n and bound k.

The programs for A287532, there is no canonical definition to state claims against.
-/

/-! ## A287532.P16153405079698887289

`A256161(A245300(n)+A002260(n+1))`
-/

namespace A287532.P16153405079698887289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256161 (A245300 n + A002260 (n + 1)).toNat

end

end A287532.P16153405079698887289

/-! ## A287532.P15325098548949355225

`A090981(n)+A058348(A157152(n))`
-/

namespace A287532.P15325098548949355225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090981 n + A058348 (A157152 n).toNat

end

end A287532.P15325098548949355225

/-! ## A287532.P8691220222970819208

`A090981(n)+A034331(A185651(n))`
-/

namespace A287532.P8691220222970819208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090981 n + A034331 (A185651 n).toNat

end

end A287532.P8691220222970819208

/-! ## A287532.P17611205900021384743

`A090981(n)+A058348(A176420(n))`
-/

namespace A287532.P17611205900021384743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090981 n + A058348 (A176420 n).toNat

end

end A287532.P17611205900021384743

/-! ## A287532.P11990865868367122256

`A184955(A116089(n))+A090981(n)`
-/

namespace A287532.P11990865868367122256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A116089 n).toNat + A090981 n

end

end A287532.P11990865868367122256

/-!
# A287533: Fibonacci numbers modulo 20.

The programs for A287533, the canonical program `A287533.P8501293128969011381` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287533 has offset 0).

The definition of A287533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287533.P8501293128969011381

`(a(n-1)+a(n-2))%20` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A287533

/-- `(a(n-1)+a(n-2))%20` -/
def P8501293128969011381.Spec : Prop :=
  ∀ n, (P8501293128969011381.a n : ℤ) = A287533 n

theorem P8501293128969011381.correct : P8501293128969011381.Spec := by
  intro n
  simp only [A287533]

end A287533

/-!
# A287534: Composite numbers whose digits are restricted to 1, 3, 7, and 9.

The programs for A287534, there is no canonical definition to state claims against.
-/

/-! ## A287534.P14005359382658886231

`∩[A136333(n+1), A261614(n+1)]`
-/

namespace A287534.P14005359382658886231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287534.P14005359382658886231

/-! ## A287534.P16552104705083418147

`∩[A136333(n+1), A285847(n+1)]`
-/

namespace A287534.P16552104705083418147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287534.P16552104705083418147

/-! ## A287534.P1164988442757222152

`∩[A136333(n+1), A327907(n+1)]`
-/

namespace A287534.P1164988442757222152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287534.P1164988442757222152

/-!
# A287535: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 299", based on the 5-celled von Neumann neighborhood.

The programs for A287535, there is no canonical definition to state claims against.
-/

/-! ## A287535.P11019489130501513645

`A007088(A287537(n))`
-/

namespace A287535.P11019489130501513645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287537 n).toNat

end

end A287535.P11019489130501513645

/-! ## A287535.P12681561438236647351

`A007088(A286206(or(1, n))-A286198(n+1))`
-/

namespace A287535.P12681561438236647351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286206 (Nat.lor 1 n) - A286198 (n + 1)).toNat

end

end A287535.P12681561438236647351

/-! ## A287535.P7668912729012891167

`A007088(A286206(n-and(1, n)+1)-A286198(n+1))`
-/

namespace A287535.P7668912729012891167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286206 ((n : ℤ) - (Nat.land 1 n : ℤ) + 1).toNat - A286198 (n + 1)).toNat

end

end A287535.P7668912729012891167

/-! ## A287535.P7793551598716045946

`A185544(2*A287537(n))`
-/

namespace A287535.P7793551598716045946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287537 n).toNat

end

end A287535.P7793551598716045946

/-! ## A287535.P13713741712431569630

`A185544(2*(A286206(or(1, n))-A286198(n+1)))`
-/

namespace A287535.P13713741712431569630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (A286206 (Nat.lor 1 n) - A286198 (n + 1))).toNat

end

end A287535.P13713741712431569630

/-!
# A287536: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 299", based on the 5-celled von Neumann neighborhood.

The programs for A287536, there is no canonical definition to state claims against.
-/

/-! ## A287536.P18097827335437799806

`A007088(A287538(n))`
-/

namespace A287536.P18097827335437799806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287538 n).toNat

end

end A287536.P18097827335437799806

/-!
# A287537: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 299", based on the 5-celled von Neumann neighborhood.

The programs for A287537, there is no canonical definition to state claims against.
-/

/-! ## A287537.P3787992570448024342

`A286206(or(1, n))-A286198(n+1)`
-/

namespace A287537.P3787992570448024342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286206 (Nat.lor 1 n) - A286198 (n + 1)

end

end A287537.P3787992570448024342

/-! ## A287537.P3079001072098591191

`A286206(n-and(1, n)+1)-A286198(n+1)`
-/

namespace A287537.P3079001072098591191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286206 ((n : ℤ) - (Nat.land 1 n : ℤ) + 1).toNat - A286198 (n + 1)

end

end A287537.P3079001072098591191

/-! ## A287537.P7915687904104708910

`or(A000194(A287501(n)), A287501(n))`
-/

namespace A287537.P7915687904104708910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000194 (A287501 n).toNat) (A287501 n)

end

end A287537.P7915687904104708910

/-! ## A287537.P824258183185188034

`or(A062401(A286206(n)), A287501(n))`
-/

namespace A287537.P824258183185188034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062401 (A286206 n).toNat) (A287501 n)

end

end A287537.P824258183185188034

/-! ## A287537.P9539747978229653687

`or(A065033(A286198(n)), A287501(n))`
-/

namespace A287537.P9539747978229653687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065033 (A286198 n).toNat) (A287501 n)

end

end A287537.P9539747978229653687

/-!
# A287539: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 302", based on the 5-celled von Neumann neighborhood.

The programs for A287539, there is no canonical definition to state claims against.
-/

/-! ## A287539.P15261792970536322186

`A007088(A287541(n))`
-/

namespace A287539.P15261792970536322186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287541 n).toNat

end

end A287539.P15261792970536322186

/-! ## A287539.P6495038907803935192

`A185544(2*A287541(n))`
-/

namespace A287539.P6495038907803935192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287541 n).toNat

end

end A287539.P6495038907803935192

/-! ## A287539.P2714308334189538639

`A007088(A095121(n+1)+1-A289373(n+1))`
-/

namespace A287539.P2714308334189538639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 (n + 1) + (1 - A289373 (n + 1))).toNat

end

end A287539.P2714308334189538639

/-! ## A287539.P24830505864962672

`A007088(2*A000225(n+1)+1-A289373(n+1))`
-/

namespace A287539.P24830505864962672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A000225 (n + 1) + (1 - A289373 (n + 1))).toNat

end

end A287539.P24830505864962672

/-! ## A287539.P11498136949061639867

`A185544(2*(A095121(n+1)+1-A289373(n+1)))`
-/

namespace A287539.P11498136949061639867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (A095121 (n + 1) + (1 - A289373 (n + 1)))).toNat

end

end A287539.P11498136949061639867

/-!
# A287540: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 302", based on the 5-celled von Neumann neighborhood.

The programs for A287540, there is no canonical definition to state claims against.
-/

/-! ## A287540.P5026569395617976449

`A007088(A287542(n))`
-/

namespace A287540.P5026569395617976449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287542 n).toNat

end

end A287540.P5026569395617976449

/-! ## A287540.P10272734973672984920

`A007088((A081118(∑[n+1]+1)-A289374(n+1))/2)`
-/

namespace A287540.P10272734973672984920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A081118 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A289374 (n + 1) : ℚ) / 2)).toNat

end

end A287540.P10272734973672984920

/-! ## A287540.P5910421264828728799

`A185544(2*A287542(n))`
-/

namespace A287540.P5910421264828728799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287542 n).toNat

end

end A287540.P5910421264828728799

/-! ## A287540.P9923734829895045867

`A185544(A287542(n)+A287542(n))`
-/

namespace A287540.P9923734829895045867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287542 n + A287542 n).toNat

end

end A287540.P9923734829895045867

/-! ## A287540.P5650350230599480692

`A288195(record[n*gcd(11, n+1)])`
-/

namespace A287540.P5650350230599480692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 11 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288195 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A287540.P5650350230599480692

/-!
# A287541: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 302", based on the 5-celled von Neumann neighborhood.

The programs for A287541, there is no canonical definition to state claims against.
-/

/-! ## A287541.P14320682194959556544

`A095121(n+1)+1-A289373(n+1)`
-/

namespace A287541.P14320682194959556544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 (n + 1) + (1 - A289373 (n + 1))

end

end A287541.P14320682194959556544

/-! ## A287541.P17882993101537395313

`2*A000225(n+1)+1-A289373(n+1)`
-/

namespace A287541.P17882993101537395313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000225 (n + 1) + (1 - A289373 (n + 1))

end

end A287541.P17882993101537395313

/-! ## A287541.P16895775439475560402

`∑[A060546(2*(n+1))]+1-A289373(n+1)`
-/

namespace A287541.P16895775439475560402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A289373 (n + 1))

end

end A287541.P16895775439475560402

/-! ## A287541.P5567027554782459659

`or(A289373(n+1), A289374(n))%A289373(n+1)`
-/

namespace A287541.P5567027554782459659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A289373 (n + 1)) (A289374 n)) (A289373 (n + 1))

end

end A287541.P5567027554782459659

/-! ## A287541.P8127470510780527947

`or(A286865(n+1), A289373(n+1))-A289373(n+1)`
-/

namespace A287541.P8127470510780527947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286865 (n + 1)) (A289373 (n + 1)) - A289373 (n + 1)

end

end A287541.P8127470510780527947

/-! ## A287541.P8629526503740401772

`or(A289373(n+1), A289374(n+1))-A289373(n+1)`
-/

namespace A287541.P8629526503740401772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289373 (n + 1)) (A289374 (n + 1)) - A289373 (n + 1)

end

end A287541.P8629526503740401772

/-!
# A287542: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 302", based on the 5-celled von Neumann neighborhood.

The programs for A287542, there is no canonical definition to state claims against.
-/

/-! ## A287542.P7015771429344491047

`A000079(n+1)-ceil(A289374(n+1)/2)`
-/

namespace A287542.P7015771429344491047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - ⌈(A289374 (n + 1) : ℚ) / 2⌉

end

end A287542.P7015771429344491047

/-! ## A287542.P4260207999362626516

`(A081118(∑[n+1]+1)-A289374(n+1))/2`
-/

namespace A287542.P4260207999362626516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081118 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A289374 (n + 1) : ℚ) / 2

end

end A287542.P4260207999362626516

/-! ## A287542.P13689127916983011025

`A288197(A046469(n))`
-/

namespace A287542.P13689127916983011025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288197 (A046469 n).toNat

end

end A287542.P13689127916983011025

/-! ## A287542.P7999384436178549952

`A288197(A087036(n))`
-/

namespace A287542.P7999384436178549952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288197 (A087036 n).toNat

end

end A287542.P7999384436178549952

/-! ## A287542.P10435551502994235333

`A288197(A087051(n))`
-/

namespace A287542.P10435551502994235333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288197 (A087051 n).toNat

end

end A287542.P10435551502994235333

/-!
# A287543: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 305", based on the 5-celled von Neumann neighborhood.

The programs for A287543, there is no canonical definition to state claims against.
-/

/-! ## A287543.P2741183898187425053

`A007088(A287545(n))`
-/

namespace A287543.P2741183898187425053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287545 n).toNat

end

end A287543.P2741183898187425053

/-! ## A287543.P12724401203999579239

`A185544(2*A287545(n))`
-/

namespace A287543.P12724401203999579239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287545 n).toNat

end

end A287543.P12724401203999579239

/-!
# A287544: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 305", based on the 5-celled von Neumann neighborhood.

The programs for A287544, there is no canonical definition to state claims against.
-/

/-! ## A287544.P5656433330473673318

`A007088(A287546(n))`
-/

namespace A287544.P5656433330473673318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287546 n).toNat

end

end A287544.P5656433330473673318

/-! ## A287544.P10203346951242964365

`A185544(2*A287546(n))`
-/

namespace A287544.P10203346951242964365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287546 n).toNat

end

end A287544.P10203346951242964365

/-!
# A287548: Triangle read by rows: T(n,k), where each row begins with the Catalan number for n nonintersecting arches and transitions through k generations of eliminating and reducing arch configurations to an end row entry equal to number of semi-meander solutions for n arches.

The programs for A287548, there is no canonical definition to state claims against.
-/

/-! ## A287548.P16964982471589882025

`A067323(n)-A256549(A138464(n+1))`
-/

namespace A287548.P16964982471589882025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 n - A256549 (A138464 (n + 1)).toNat

end

end A287548.P16964982471589882025

/-! ## A287548.P14610006991569842602

`A067323(n)-A055641(A288146(n))`
-/

namespace A287548.P14610006991569842602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 n - A055641 (A288146 n).toNat

end

end A287548.P14610006991569842602

/-! ## A287548.P10993651578543837534

`A067323(n)-A333487(A032020(n))`
-/

namespace A287548.P10993651578543837534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 n - A333487 (A032020 n).toNat

end

end A287548.P10993651578543837534

/-!
# A287549: Total number of unordered factorizations of all positive integers <= n into distinct factors greater than 1.

The programs for A287549, there is no canonical definition to state claims against.
-/

/-! ## A287549.P17382817426339724204

`∑[A045778(n+1)]`
-/

namespace A287549.P17382817426339724204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287549.P17382817426339724204

/-! ## A287549.P5444871070828153032

`∑[A344370(n+1)/(n+1)]`
-/

namespace A287549.P5444871070828153032
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344370 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287549.P5444871070828153032

/-! ## A287549.P7239174983704125967

`(A026808(n+1)+n+2)/2`
-/

namespace A287549.P7239174983704125967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026808 (n + 1) + (n + 2 : ℤ) : ℚ) / 2

end

end A287549.P7239174983704125967

/-! ## A287549.P7323837352680501023

`∑[A050323(A101296(n+1))]`
-/

namespace A287549.P7323837352680501023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050323 (A101296 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287549.P7323837352680501023

/-! ## A287549.P2165499183537230881

`∑[A318286(A181819(n+1))]`
-/

namespace A287549.P2165499183537230881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (A181819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287549.P2165499183537230881

/-! ## A287549.P10536570327176366988

`a(n-1)+A045778(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A287549.P10536570327176366988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A045778 (n + 1) + A000038 n)

end

end A287549.P10536570327176366988

/-! ## A287549.P5530657931585907670

`a(n-1)+A045778(n+1)%A045775(n)` with `a(0)=1`
-/

namespace A287549.P5530657931585907670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A045778 (n + 1)) (A045775 n)

end

end A287549.P5530657931585907670

/-! ## A287549.P15991112329022222980

`A008619(A026808(n+1)+n)`
-/

namespace A287549.P15991112329022222980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026808 (n + 1) + (n : ℤ)).toNat

end

end A287549.P15991112329022222980

/-! ## A287549.P5447799290542615976

`A004525(A026808(n+1)+n)+1`
-/

namespace A287549.P5447799290542615976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A026808 (n + 1) + (n : ℤ)).toNat + 1

end

end A287549.P5447799290542615976

/-! ## A287549.P15799780922548293620

`∑[A006530(A200213(n+1)!)]`
-/

namespace A287549.P15799780922548293620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A200213 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287549.P15799780922548293620

/-!
# A287551: Positions of 1 in A287530; complement of A287531.

The programs for A287551, there is no canonical definition to state claims against.
-/

/-! ## A287551.P8204862548715415711

`filter[n+1, A287530(#)]`
-/

namespace A287551.P8204862548715415711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A287530 (f1 j) = 1) n)

end

end A287551.P8204862548715415711

/-! ## A287551.P14572425700563021547

`eq[1, A287530(n+1)]+1`
-/

namespace A287551.P14572425700563021547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287551.P14572425700563021547

/-! ## A287551.P447189919003360997

`record[A000027(n+1)*A287530(n+1)]`
-/

namespace A287551.P447189919003360997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A287530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287551.P447189919003360997

/-! ## A287551.P7124653547152644416

`record[A287530(A331742(n))*A331742(n)]`
-/

namespace A287551.P7124653547152644416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287530 (A331742 n).toNat * A331742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287551.P7124653547152644416

/-! ## A287551.P1372405206195370777

`record[A038722(A038722(n+1))*A287530(n+1)]`
-/

namespace A287551.P1372405206195370777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A038722 (n + 1)).toNat * A287530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287551.P1372405206195370777

/-! ## A287551.P10326821608409934741

`record[A008619(2*n+1)*A287530(n+1)]`
-/

namespace A287551.P10326821608409934741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n + 1) * A287530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287551.P10326821608409934741

/-! ## A287551.P9957683993391675279

`record[A065033(n)*A287530(A065033(n))]`
-/

namespace A287551.P9957683993391675279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A287530 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287551.P9957683993391675279

/-! ## A287551.P10052349179412501601

`A055396(p?[A000040(n+1)*A287530(n+1)])`
-/

namespace A287551.P10052349179412501601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A287530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287551.P10052349179412501601

/-! ## A287551.P5615283189833226203

`record[A023190(n+1)*A287530(A023190(n+1))]`
-/

namespace A287551.P5615283189833226203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (n + 1) * A287530 (A023190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287551.P5615283189833226203

/-!
# A287552: Positions of 0 in A053839.

The programs for A287552, the canonical program `A287552.P9966408718549005967` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287552 has offset 1).

The definition of A287552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287552.P9966408718549005967

`eq[0, A053839(n)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A287552

/-- `eq[0, A053839(n)]+1` -/
def P9966408718549005967.Spec : Prop :=
  ∀ n, (P9966408718549005967.a n : ℤ) = A287552 (n + 1)

theorem P9966408718549005967.correct : P9966408718549005967.Spec := by
  intro n
  simp only [A287552, Nat.add_sub_cancel]

end A287552

/-! ## A287552.P17953462038619381616

`eq[1, A273149(n)]+1`
-/

namespace A287552.P17953462038619381616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273149 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287552.P17953462038619381616

namespace A287552

/-- `eq[1, A273149(n)]+1` -/
def P17953462038619381616.Spec : Prop :=
  ∀ n, (P17953462038619381616.a n : ℤ) = A287552 (n + 1)

end A287552

/-! ## A287552.P13642628452696151476

`lt[A053839(abs(1-n)), 1]`
-/

namespace A287552.P13642628452696151476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A287552.P13642628452696151476

namespace A287552

/-- `lt[A053839(abs(1-n)), 1]` -/
def P13642628452696151476.Spec : Prop :=
  ∀ n, (P13642628452696151476.a n : ℤ) = A287552 (n + 1)

end A287552

/-! ## A287552.P11666819006602687761

`lt[A053737(n)%4, 1]+1`
-/

namespace A287552.P11666819006602687761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053737 n) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287552.P11666819006602687761

namespace A287552

/-- `lt[A053737(n)%4, 1]+1` -/
def P11666819006602687761.Spec : Prop :=
  ∀ n, (P11666819006602687761.a n : ℤ) = A287552 (n + 1)

end A287552

/-! ## A287552.P11345292946971872862

`A256008(A287554(n+1))`
-/

namespace A287552.P11345292946971872862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287554 (n + 1)).toNat

end

end A287552.P11345292946971872862

namespace A287552

/-- `A256008(A287554(n+1))` -/
def P11345292946971872862.Spec : Prop :=
  ∀ n, P11345292946971872862.a n = A287552 (n + 1)

end A287552

/-! ## A287552.P5887672006728047999

`A004766(n+1)-A273149(4*n+3)`
-/

namespace A287552.P5887672006728047999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1) - A273149 (4 * n + 3)

end

end A287552.P5887672006728047999

namespace A287552

/-- `A004766(n+1)-A273149(4*n+3)` -/
def P5887672006728047999.Spec : Prop :=
  ∀ n, P5887672006728047999.a n = A287552 (n + 1)

end A287552

/-! ## A287552.P2327769295067199255

`record[n+1-A053839(n)*A287555(n+1)]`
-/

namespace A287552.P2327769295067199255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A053839 n * A287555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287552.P2327769295067199255

namespace A287552

/-- `record[n+1-A053839(n)*A287555(n+1)]` -/
def P2327769295067199255.Spec : Prop :=
  ∀ n, P2327769295067199255.a n = A287552 (n + 1)

end A287552

/-! ## A287552.P11472030029054284784

`record[n+1-A053839(n)*A287557(n+1)]`
-/

namespace A287552.P11472030029054284784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A053839 n * A287557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287552.P11472030029054284784

namespace A287552

/-- `record[n+1-A053839(n)*A287557(n+1)]` -/
def P11472030029054284784.Spec : Prop :=
  ∀ n, P11472030029054284784.a n = A287552 (n + 1)

end A287552

/-! ## A287552.P11863278761738701228

`record[n+1-A053839(n)*A287562(n+1)]`
-/

namespace A287552.P11863278761738701228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A053839 n * A287562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287552.P11863278761738701228

namespace A287552

/-- `record[n+1-A053839(n)*A287562(n+1)]` -/
def P11863278761738701228.Spec : Prop :=
  ∀ n, P11863278761738701228.a n = A287552 (n + 1)

end A287552

/-!
# A287553: Positions of 1 in A053839.

The programs for A287553, the canonical program `A287553.P11148344650868308369` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287553 has offset 1).

The definition of A287553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287553.P11148344650868308369

`-xor(2, -A287555(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A287553

/-- `-xor(2, -A287555(n+1))` -/
def P11148344650868308369.Spec : Prop :=
  ∀ n, P11148344650868308369.a n = A287553 (n + 1)

theorem P11148344650868308369.correct : P11148344650868308369.Spec := by
  intro n
  simp only [A287553, Nat.add_sub_cancel]

end A287553

/-! ## A287553.P7975664508626749046

`A287580(n+1)+A053839(n)-A287576(n+1)`
-/

namespace A287553.P7975664508626749046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287580 (n + 1) + (A053839 n - A287576 (n + 1))

end

end A287553.P7975664508626749046

namespace A287553

/-- `A287580(n+1)+A053839(n)-A287576(n+1)` -/
def P7975664508626749046.Spec : Prop :=
  ∀ n, P7975664508626749046.a n = A287553 (n + 1)

end A287553

/-! ## A287553.P14377602353944193139

`A287578(n+1)+A287580(n+1)-A287555(n+1)`
-/

namespace A287553.P14377602353944193139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287578 (n + 1) + (A287580 (n + 1) - A287555 (n + 1))

end

end A287553.P14377602353944193139

namespace A287553

/-- `A287578(n+1)+A287580(n+1)-A287555(n+1)` -/
def P14377602353944193139.Spec : Prop :=
  ∀ n, P14377602353944193139.a n = A287553 (n + 1)

end A287553

/-! ## A287553.P5983737090852705713

`eq[1, A053839(n)]+1`
-/

namespace A287553.P5983737090852705713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287553.P5983737090852705713

namespace A287553

/-- `eq[1, A053839(n)]+1` -/
def P5983737090852705713.Spec : Prop :=
  ∀ n, (P5983737090852705713.a n : ℤ) = A287553 (n + 1)

end A287553

/-! ## A287553.P2600680948810940510

`eq[2, A273149(n)]+1`
-/

namespace A287553.P2600680948810940510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273149 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287553.P2600680948810940510

namespace A287553

/-- `eq[2, A273149(n)]+1` -/
def P2600680948810940510.Spec : Prop :=
  ∀ n, (P2600680948810940510.a n : ℤ) = A287553 (n + 1)

end A287553

/-! ## A287553.P1188207372551668845

`eq[1, A020654(n+1)%4]+1`
-/

namespace A287553.P1188207372551668845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020654 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287553.P1188207372551668845

namespace A287553

/-- `eq[1, A020654(n+1)%4]+1` -/
def P1188207372551668845.Spec : Prop :=
  ∀ n, (P1188207372551668845.a n : ℤ) = A287553 (n + 1)

end A287553

/-! ## A287553.P10221395290924427264

`A256008(A287555(n+1))`
-/

namespace A287553.P10221395290924427264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287555 (n + 1)).toNat

end

end A287553.P10221395290924427264

namespace A287553

/-- `A256008(A287555(n+1))` -/
def P10221395290924427264.Spec : Prop :=
  ∀ n, P10221395290924427264.a n = A287553 (n + 1)

end A287553

/-!
# A287554: Positions of 2 in A053839.

The programs for A287554, there is no canonical definition to state claims against.
-/

/-! ## A287554.P382509788184164151

`A287577(n+1)+A287579(n+1)-A287552(n+1)`
-/

namespace A287554.P382509788184164151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287577 (n + 1) + (A287579 (n + 1) - A287552 (n + 1))

end

end A287554.P382509788184164151

/-! ## A287554.P14762049601032975163

`eq[2, A053839(n)]+1`
-/

namespace A287554.P14762049601032975163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287554.P14762049601032975163

/-! ## A287554.P10667441139626967550

`eq[2, A020654(n+1)%4]+1`
-/

namespace A287554.P10667441139626967550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020654 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287554.P10667441139626967550

/-! ## A287554.P18247146767331143022

`eq[2, gcd(4, A020654(n+2))]+2`
-/

namespace A287554.P18247146767331143022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A020654 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A287554.P18247146767331143022

/-! ## A287554.P11622313459393969808

`A256008(A287552(n+1))`
-/

namespace A287554.P11622313459393969808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287552 (n + 1)).toNat

end

end A287554.P11622313459393969808

/-!
# A287555: Positions of 3 in A053839.

The programs for A287555, the canonical program `A287555.P853673800569344600` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287555 has offset 1).

The definition of A287555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287555.P853673800569344600

`A004766(n+1)-A273149(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A287555

/-- `A004766(n+1)-A273149(n)` -/
def P853673800569344600.Spec : Prop :=
  ∀ n, P853673800569344600.a n = A287555 (n + 1)

theorem P853673800569344600.correct : P853673800569344600.Spec := by
  intro n
  simp only [A287555, Nat.add_sub_cancel]

end A287555

/-! ## A287555.P12590188287065945228

`A287556(n+1)+A287559(n+1)-A053839(n)`
-/

namespace A287555.P12590188287065945228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (n + 1) + (A287559 (n + 1) - A053839 n)

end

end A287555.P12590188287065945228

namespace A287555

/-- `A287556(n+1)+A287559(n+1)-A053839(n)` -/
def P12590188287065945228.Spec : Prop :=
  ∀ n, P12590188287065945228.a n = A287555 (n + 1)

end A287555

/-! ## A287555.P4040660928709180722

`A287561(n+1)+A287565(n+1)-A053839(n)`
-/

namespace A287555.P4040660928709180722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (n + 1) + (A287565 (n + 1) - A053839 n)

end

end A287555.P4040660928709180722

namespace A287555

/-- `A287561(n+1)+A287565(n+1)-A053839(n)` -/
def P4040660928709180722.Spec : Prop :=
  ∀ n, P4040660928709180722.a n = A287555 (n + 1)

end A287555

/-! ## A287555.P7055883178929697206

`A287566(n+1)+A287568(n+1)-A053839(n)`
-/

namespace A287555.P7055883178929697206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287566 (n + 1) + (A287568 (n + 1) - A053839 n)

end

end A287555.P7055883178929697206

namespace A287555

/-- `A287566(n+1)+A287568(n+1)-A053839(n)` -/
def P7055883178929697206.Spec : Prop :=
  ∀ n, P7055883178929697206.a n = A287555 (n + 1)

end A287555

/-! ## A287555.P16446200978313588742

`A287571(n+1)+A287574(n+1)-A053839(n)`
-/

namespace A287555.P16446200978313588742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (n + 1) + (A287574 (n + 1) - A053839 n)

end

end A287555.P16446200978313588742

namespace A287555

/-- `A287571(n+1)+A287574(n+1)-A053839(n)` -/
def P16446200978313588742.Spec : Prop :=
  ∀ n, P16446200978313588742.a n = A287555 (n + 1)

end A287555

/-! ## A287555.P7797561279992724725

`A287576(n+1)+A287578(n+1)-A053839(n)`
-/

namespace A287555.P7797561279992724725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (n + 1) + (A287578 (n + 1) - A053839 n)

end

end A287555.P7797561279992724725

namespace A287555

/-- `A287576(n+1)+A287578(n+1)-A053839(n)` -/
def P7797561279992724725.Spec : Prop :=
  ∀ n, P7797561279992724725.a n = A287555 (n + 1)

end A287555

/-! ## A287555.P15649739916727713202

`lt[2, A053839(n)]+1`
-/

namespace A287555.P15649739916727713202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287555.P15649739916727713202

namespace A287555

/-- `lt[2, A053839(n)]+1` -/
def P15649739916727713202.Spec : Prop :=
  ∀ n, (P15649739916727713202.a n : ℤ) = A287555 (n + 1)

end A287555

/-! ## A287555.P5306496428491847442

`lt[2, A020654(n+1)%4]+1`
-/

namespace A287555.P5306496428491847442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020654 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287555.P5306496428491847442

namespace A287555

/-- `lt[2, A020654(n+1)%4]+1` -/
def P5306496428491847442.Spec : Prop :=
  ∀ n, (P5306496428491847442.a n : ℤ) = A287555 (n + 1)

end A287555

/-! ## A287555.P13936063131787693901

`A256008(A287553(n+1))`
-/

namespace A287555.P13936063131787693901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287553 (n + 1)).toNat

end

end A287555.P13936063131787693901

namespace A287555

/-- `A256008(A287553(n+1))` -/
def P13936063131787693901.Spec : Prop :=
  ∀ n, P13936063131787693901.a n = A287555 (n + 1)

end A287555

/-! ## A287555.P14328483613006958859

`lt[1, A007814(A020654(n+1)+1)]+1`
-/

namespace A287555.P14328483613006958859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A020654 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287555.P14328483613006958859

namespace A287555

/-- `lt[1, A007814(A020654(n+1)+1)]+1` -/
def P14328483613006958859.Spec : Prop :=
  ∀ n, (P14328483613006958859.a n : ℤ) = A287555 (n + 1)

end A287555

/-!
# A287556: Start with 0 and repeatedly substitute 0->0132, 1->1320, 2->3201, 3->2013.

The programs for A287556, there is no canonical definition to state claims against.
-/

/-! ## A287556.P13767520985391114110

`and(3, -A287559(n+1))`
-/

namespace A287556.P13767520985391114110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-A287559 (n + 1))

end

end A287556.P13767520985391114110

/-! ## A287556.P9059883839296969225

`and(3, -(A287560(n+1)+1))`
-/

namespace A287556.P9059883839296969225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-(A287560 (n + 1) + 1))

end

end A287556.P9059883839296969225

/-! ## A287556.P8568592706640447578

`A046092(n+1)-(A287559(n+1)+A046092(n))`
-/

namespace A287556.P8568592706640447578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 1) - (A287559 (n + 1) + A046092 n)

end

end A287556.P8568592706640447578

/-! ## A287556.P17894030009653854987

`A287555(n+1)+A053839(n)-A287559(n+1)`
-/

namespace A287556.P17894030009653854987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287555 (n + 1) + (A053839 n - A287559 (n + 1))

end

end A287556.P17894030009653854987

/-! ## A287556.P745221377954749651

`A287576(n+1)+A287578(n+1)-A287559(n+1)`
-/

namespace A287556.P745221377954749651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (n + 1) + (A287578 (n + 1) - A287559 (n + 1))

end

end A287556.P745221377954749651

/-! ## A287556.P7842115441194361924

`(A158321(A032600(n+2)+1)*A287559(n+1))%4`
-/

namespace A287556.P7842115441194361924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158321 (A032600 (n + 2) + 1).toNat * A287559 (n + 1)) 4

end

end A287556.P7842115441194361924

/-! ## A287556.P15079810469463290004

`A158459(A287559(n+1))`
-/

namespace A287556.P15079810469463290004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158459 (A287559 (n + 1)).toNat

end

end A287556.P15079810469463290004

/-!
# A287557: Positions of 0 in A287556.

The programs for A287557, there is no canonical definition to state claims against.
-/

/-! ## A287557.P13292523130505750097

`eq[0, A287556(n+1)]+1`
-/

namespace A287557.P13292523130505750097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287557.P13292523130505750097

/-! ## A287557.P6671977285054942048

`A256008(A287560(n+1))`
-/

namespace A287557.P6671977285054942048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287560 (n + 1)).toNat

end

end A287557.P6671977285054942048

/-! ## A287557.P8207095613685188887

`record[n+1-A064201(n)*A287556(n+1)]`
-/

namespace A287557.P8207095613685188887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A064201 n * A287556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287557.P8207095613685188887

/-! ## A287557.P16501794573968463093

`record[n+1-A139570(n)*A287556(n+1)]`
-/

namespace A287557.P16501794573968463093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A139570 n * A287556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287557.P16501794573968463093

/-! ## A287557.P2544138124861598259

`record[n+1-A006254(n+1)*A287556(n+1)]`
-/

namespace A287557.P2544138124861598259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006254 (n + 1) * A287556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287557.P2544138124861598259

/-! ## A287557.P9683764072948638004

`record[n+1-A050399(n+1)*A287556(n+1)]`
-/

namespace A287557.P9683764072948638004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A050399 (n + 1) * A287556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287557.P9683764072948638004

/-! ## A287557.P18387818367617363559

`eq[2, A287556(A008574(n))]`
-/

namespace A287557.P18387818367617363559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287557.P18387818367617363559

/-! ## A287557.P16409419872975118622

`record[(n+1)/A008769((n+1)*A287556(n+1))]`
-/

namespace A287557.P16409419872975118622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008769 ((n + 1 : ℤ) * A287556 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287557.P16409419872975118622

/-! ## A287557.P10954703145654886959

`record[n+1-A205318(n+1)*A287556(n+1)]`
-/

namespace A287557.P10954703145654886959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A205318 (n + 1) * A287556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287557.P10954703145654886959

/-!
# A287558: Positions of 1 in A287556.

The programs for A287558, there is no canonical definition to state claims against.
-/

/-! ## A287558.P5640497968824360401

`xor(2, A287559(n+1)-1)+1`
-/

namespace A287558.P5640497968824360401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A287559 (n + 1) - 1) + 1

end

end A287558.P5640497968824360401

/-! ## A287558.P6362597668079858181

`eq[1, A287556(n+1)]+1`
-/

namespace A287558.P6362597668079858181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287558.P6362597668079858181

/-! ## A287558.P10948096673138757257

`A256008(A287559(n+1))`
-/

namespace A287558.P10948096673138757257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287559 (n + 1)).toNat

end

end A287558.P10948096673138757257

/-! ## A287558.P16849763831156632743

`eq[1, A287556(A000007(n)+n)]`
-/

namespace A287558.P16849763831156632743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287558.P16849763831156632743

/-! ## A287558.P3971685646567696195

`eq[1, A287556(A008619(A004273(n)))]`
-/

namespace A287558.P3971685646567696195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287558.P3971685646567696195

/-! ## A287558.P3096871049804356984

`eq[A000007(n), A287556(A008574(n))]`
-/

namespace A287558.P3096871049804356984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287558.P3096871049804356984

/-! ## A287558.P8296912115299952244

`record[A054576(A287557(n+2))]`
-/

namespace A287558.P8296912115299952244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A287557 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287558.P8296912115299952244

/-!
# A287559: Positions of 2 in A287556.

The programs for A287559, there is no canonical definition to state claims against.
-/

/-! ## A287559.P3075554773060254467

`4*(n+1)-A287556(n+1)`
-/

namespace A287559.P3075554773060254467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A287556 (n + 1)

end

end A287559.P3075554773060254467

/-! ## A287559.P7543778299029936744

`A287555(n+1)+A053839(n)-A287556(n+1)`
-/

namespace A287559.P7543778299029936744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287555 (n + 1) + (A053839 n - A287556 (n + 1))

end

end A287559.P7543778299029936744

/-! ## A287559.P5797105999385443501

`A287561(n+1)+A287565(n+1)-A287556(n+1)`
-/

namespace A287559.P5797105999385443501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (n + 1) + (A287565 (n + 1) - A287556 (n + 1))

end

end A287559.P5797105999385443501

/-! ## A287559.P1299177652814615521

`A287566(n+1)+A287568(n+1)-A287556(n+1)`
-/

namespace A287559.P1299177652814615521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287566 (n + 1) + (A287568 (n + 1) - A287556 (n + 1))

end

end A287559.P1299177652814615521

/-! ## A287559.P17430928136172135985

`A287571(n+1)+A287574(n+1)-A287556(n+1)`
-/

namespace A287559.P17430928136172135985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (n + 1) + (A287574 (n + 1) - A287556 (n + 1))

end

end A287559.P17430928136172135985

/-! ## A287559.P12883339422272294644

`A287576(n+1)+A287578(n+1)-A287556(n+1)`
-/

namespace A287559.P12883339422272294644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (n + 1) + (A287578 (n + 1) - A287556 (n + 1))

end

end A287559.P12883339422272294644

/-! ## A287559.P8789926052049530389

`eq[2, A287556(n+1)]+1`
-/

namespace A287559.P8789926052049530389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287559.P8789926052049530389

/-! ## A287559.P2147792223219001751

`A256008(A287558(n+1))`
-/

namespace A287559.P2147792223219001751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287558 (n + 1)).toNat

end

end A287559.P2147792223219001751

/-! ## A287559.P2300105509201582646

`eq[2, A287556(A000007(n)+n)]`
-/

namespace A287559.P2300105509201582646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287559.P2300105509201582646

/-! ## A287559.P14673060439774464579

`eq[1, A287556(A008574(n))]`
-/

namespace A287559.P14673060439774464579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287559.P14673060439774464579

/-!
# A287560: Positions of 3 in A287556.

The programs for A287560, there is no canonical definition to state claims against.
-/

/-! ## A287560.P10209973689631292414

`xor(2, A287557(n+1)-1)+1`
-/

namespace A287560.P10209973689631292414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A287557 (n + 1) - 1) + 1

end

end A287560.P10209973689631292414

/-! ## A287560.P1195655200249963098

`eq[3, A287556(n+1)]+1`
-/

namespace A287560.P1195655200249963098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287560.P1195655200249963098

/-! ## A287560.P7662436080183388847

`eq[1, A287559(n+1)%4]+1`
-/

namespace A287560.P7662436080183388847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287559 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287560.P7662436080183388847

/-! ## A287560.P4169525379531377944

`A256008(A287557(n+1))`
-/

namespace A287560.P4169525379531377944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287557 (n + 1)).toNat

end

end A287560.P4169525379531377944

/-! ## A287560.P16409417085223811956

`eq[3, A287556(A000007(n)+n)]`
-/

namespace A287560.P16409417085223811956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287560.P16409417085223811956

/-! ## A287560.P3795660022444836626

`eq[3, A287556(A008574(n))]`
-/

namespace A287560.P3795660022444836626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287560.P3795660022444836626

/-!
# A287561: Start with 0 and repeatedly substitute 0->0213, 1->2130, 2->1302, 3->3021.

The programs for A287561, there is no canonical definition to state claims against.
-/

/-! ## A287561.P7842651404195764002

`4*(n+1)-A287565(n+1)`
-/

namespace A287561.P7842651404195764002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A287565 (n + 1)

end

end A287561.P7842651404195764002

/-! ## A287561.P15505297428938041476

`and(3, -A287565(n+1))`
-/

namespace A287561.P15505297428938041476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-A287565 (n + 1))

end

end A287561.P15505297428938041476

/-! ## A287561.P10513224271628784597

`xor(1, A287562(n+1)%4)`
-/

namespace A287561.P10513224271628784597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.tmod (A287562 (n + 1)) 4)

end

end A287561.P10513224271628784597

/-! ## A287561.P11118623996392171630

`and(3, -(A287563(n+1)+1))`
-/

namespace A287561.P11118623996392171630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-(A287563 (n + 1) + 1))

end

end A287561.P11118623996392171630

/-! ## A287561.P6259303342326273834

`A008486(n+1)+n+1-A287565(n+1)`
-/

namespace A287561.P6259303342326273834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) + ((n + 1 : ℤ) - A287565 (n + 1))

end

end A287561.P6259303342326273834

/-! ## A287561.P1806625460817004315

`(12*A000217(n)²-(A287563(n+1)+1))%4`
-/

namespace A287561.P1806625460817004315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (12 * A000217 n ^ 2 - (A287563 (n + 1) + 1)) 4

end

end A287561.P1806625460817004315

/-! ## A287561.P7930501978491256183

`A287555(n+1)+A053839(n)-A287565(n+1)`
-/

namespace A287561.P7930501978491256183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287555 (n + 1) + (A053839 n - A287565 (n + 1))

end

end A287561.P7930501978491256183

/-! ## A287561.P3438540448538094680

`A287556(n+1)+A287559(n+1)-A287565(n+1)`
-/

namespace A287561.P3438540448538094680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (n + 1) + (A287559 (n + 1) - A287565 (n + 1))

end

end A287561.P3438540448538094680

/-! ## A287561.P16879071383855315729

`A020703(A287564(n+1))%4`
-/

namespace A287561.P16879071383855315729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020703 (A287564 (n + 1)).toNat) 4

end

end A287561.P16879071383855315729

/-! ## A287561.P10899118766396653900

`A158459(A287565(n+1))`
-/

namespace A287561.P10899118766396653900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158459 (A287565 (n + 1)).toNat

end

end A287561.P10899118766396653900

/-!
# A287562: Positions of 0 in A287561.

The programs for A287562, there is no canonical definition to state claims against.
-/

/-! ## A287562.P5295527493140001728

`eq[0, A287561(n+1)]+1`
-/

namespace A287562.P5295527493140001728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287562.P5295527493140001728

/-! ## A287562.P16812953799622029960

`eq[0, A287565(n+1)%4]+1`
-/

namespace A287562.P16812953799622029960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287565 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287562.P16812953799622029960

/-! ## A287562.P16988253188923091490

`A256008(A287563(n+1))`
-/

namespace A287562.P16988253188923091490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287563 (n + 1)).toNat

end

end A287562.P16988253188923091490

/-! ## A287562.P1251601539074257667

`eq[3, A287561(A008574(n))]`
-/

namespace A287562.P1251601539074257667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287562.P1251601539074257667

/-! ## A287562.P14348457720435728779

`eq[2, A287561(A111284(n+1))]`
-/

namespace A287562.P14348457720435728779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (A111284 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287562.P14348457720435728779

/-! ## A287562.P1529890754853172290

`record[A054576(A287565(n+1))]`
-/

namespace A287562.P1529890754853172290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A287565 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287562.P1529890754853172290

/-!
# A287563: Positions of 1 in A287561.

The programs for A287563, there is no canonical definition to state claims against.
-/

/-! ## A287563.P4808671538654664479

`eq[1, A287561(n+1)]+1`
-/

namespace A287563.P4808671538654664479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287563.P4808671538654664479

/-! ## A287563.P8794487404790129574

`A256008(A287562(n+1))`
-/

namespace A287563.P8794487404790129574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287562 (n + 1)).toNat

end

end A287563.P8794487404790129574

/-! ## A287563.P15196481782336478629

`eq[1, A287561(A000038(n)+n)]`
-/

namespace A287563.P15196481782336478629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287563.P15196481782336478629

/-! ## A287563.P16124647623648697034

`A014681(A017137(n)-(A287562(n+1)+1))`
-/

namespace A287563.P16124647623648697034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A017137 n - (A287562 (n + 1) + 1)).toNat

end

end A287563.P16124647623648697034

/-! ## A287563.P3058982669050269310

`eq[1, A287561(A000007(n)+n)]`
-/

namespace A287563.P3058982669050269310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287563.P3058982669050269310

/-! ## A287563.P4686432603458819754

`eq[1, A287561(A111284(n+1))]`
-/

namespace A287563.P4686432603458819754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (A111284 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287563.P4686432603458819754

/-! ## A287563.P8144787419895391464

`eq[A000007(n), A287561(A008574(n))]`
-/

namespace A287563.P8144787419895391464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287563.P8144787419895391464

/-! ## A287563.P9539611892573144857

`eq[A000038(n), A287561(A008574(n))]`
-/

namespace A287563.P9539611892573144857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287563.P9539611892573144857

/-! ## A287563.P10449469177892803981

`A014681(A017137(n))-A014681(A287562(n+1))`
-/

namespace A287563.P10449469177892803981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A017137 n).toNat - A014681 (A287562 (n + 1)).toNat

end

end A287563.P10449469177892803981

/-! ## A287563.P8030856373523631271

`record[A054576(A287562(n+3))]`
-/

namespace A287563.P8030856373523631271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A287562 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287563.P8030856373523631271

/-!
# A287564: Positions of 2 in A287561.

The programs for A287564, there is no canonical definition to state claims against.
-/

/-! ## A287564.P5418295696809234330

`eq[2, A287561(n+1)]+1`
-/

namespace A287564.P5418295696809234330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287564.P5418295696809234330

/-! ## A287564.P11874640256136156289

`A256008(A287565(n+1))`
-/

namespace A287564.P11874640256136156289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287565 (n + 1)).toNat

end

end A287564.P11874640256136156289

/-! ## A287564.P3618857623622169509

`eq[2, A287561(A000007(n)+n)]`
-/

namespace A287564.P3618857623622169509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287564.P3618857623622169509

/-! ## A287564.P10406960660904643849

`A014681(A287561(n+1)+A016813(n))`
-/

namespace A287564.P10406960660904643849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A287561 (n + 1) + A016813 n).toNat

end

end A287564.P10406960660904643849

/-! ## A287564.P6271196684759026773

`eq[2, A287561(A008574(n))]`
-/

namespace A287564.P6271196684759026773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287564.P6271196684759026773

/-! ## A287564.P3084576772537039910

`eq[3, A287561(A111284(n+1))]`
-/

namespace A287564.P3084576772537039910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (A111284 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287564.P3084576772537039910

/-! ## A287564.P8033766510663415471

`record[A054576(A287562(n+2)+1)]`
-/

namespace A287564.P8033766510663415471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A287562 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287564.P8033766510663415471

/-!
# A287565: Positions of 3 in A287561.

The programs for A287565, there is no canonical definition to state claims against.
-/

/-! ## A287565.P12841734102024845534

`4*(n+1)-A287561(n+1)`
-/

namespace A287565.P12841734102024845534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A287561 (n + 1)

end

end A287565.P12841734102024845534

/-! ## A287565.P14888018567595460497

`A004767(n)+1-A287561(n+1)`
-/

namespace A287565.P14888018567595460497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + (1 - A287561 (n + 1))

end

end A287565.P14888018567595460497

/-! ## A287565.P11720473616715878338

`A287555(n+1)+A053839(n)-A287561(n+1)`
-/

namespace A287565.P11720473616715878338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287555 (n + 1) + (A053839 n - A287561 (n + 1))

end

end A287565.P11720473616715878338

/-! ## A287565.P7328627627402317700

`A287556(n+1)+A287559(n+1)-A287561(n+1)`
-/

namespace A287565.P7328627627402317700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (n + 1) + (A287559 (n + 1) - A287561 (n + 1))

end

end A287565.P7328627627402317700

/-! ## A287565.P10955628460408294797

`eq[3, A287561(n+1)]+1`
-/

namespace A287565.P10955628460408294797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287565.P10955628460408294797

/-! ## A287565.P11624932165013233271

`A256008(A287564(n+1))`
-/

namespace A287565.P11624932165013233271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287564 (n + 1)).toNat

end

end A287565.P11624932165013233271

/-! ## A287565.P6365557727914823455

`eq[1, A287561(A008574(n))]`
-/

namespace A287565.P6365557727914823455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287565.P6365557727914823455

/-!
# A287566: Start with 0 and repeatedly substitute 0->0231, 1->2310, 2->3102, 3->1023.

The programs for A287566, there is no canonical definition to state claims against.
-/

/-! ## A287566.P11925744358633556485

`4*(n+1)-A287568(n+1)`
-/

namespace A287566.P11925744358633556485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A287568 (n + 1)

end

end A287566.P11925744358633556485

/-! ## A287566.P13583060391126981542

`and(3, -A287568(n+1))`
-/

namespace A287566.P13583060391126981542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-A287568 (n + 1))

end

end A287566.P13583060391126981542

/-! ## A287566.P6914328269326767315

`and(3, 1-A287567(n+1))`
-/

namespace A287566.P6914328269326767315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (1 - A287567 (n + 1))

end

end A287566.P6914328269326767315

/-! ## A287566.P12045166800940999558

`and(3, 2-A287569(n+1))`
-/

namespace A287566.P12045166800940999558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (2 - A287569 (n + 1))

end

end A287566.P12045166800940999558

/-! ## A287566.P1247441641572657223

`3-A010873(A287570(n+1))`
-/

namespace A287566.P1247441641572657223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A010873 (A287570 (n + 1)).toNat

end

end A287566.P1247441641572657223

/-! ## A287566.P1711885083772477873

`A004442(A287569(n+1)-(A008586(n)+1))`
-/

namespace A287566.P1711885083772477873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A287569 (n + 1) - (A008586 n + 1)).toNat

end

end A287566.P1711885083772477873

/-! ## A287566.P18401293572925203789

`A010873(A004767(n)+2-A287567(n+1))`
-/

namespace A287566.P18401293572925203789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A004767 n + (2 - A287567 (n + 1))).toNat

end

end A287566.P18401293572925203789

/-! ## A287566.P15649021879373733332

`A010873(2*A016813(n)-A287569(n+1))`
-/

namespace A287566.P15649021879373733332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (2 * A016813 n - A287569 (n + 1)).toNat

end

end A287566.P15649021879373733332

/-! ## A287566.P6983989087124415404

`A010873(A004767(n)+A004767(n)-A287569(n+1))`
-/

namespace A287566.P6983989087124415404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A004767 n + (A004767 n - A287569 (n + 1))).toNat

end

end A287566.P6983989087124415404

/-! ## A287566.P13469310839801200073

`A010873(A016813(n)+A016813(n)-A287569(n+1))`
-/

namespace A287566.P13469310839801200073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A016813 n + (A016813 n - A287569 (n + 1))).toNat

end

end A287566.P13469310839801200073

/-! ## A287566.P13380549949585255637

`A010873(3*A287568(n+1))`
-/

namespace A287566.P13380549949585255637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (3 * A287568 (n + 1)).toNat

end

end A287566.P13380549949585255637

/-! ## A287566.P6527516485714524190

`A158459(A287568(n+1))`
-/

namespace A287566.P6527516485714524190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158459 (A287568 (n + 1)).toNat

end

end A287566.P6527516485714524190

/-! ## A287566.P6576789922335852156

`A004442(A287567(n+1))%4`
-/

namespace A287566.P6576789922335852156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 (A287567 (n + 1)).toNat) 4

end

end A287566.P6576789922335852156

/-! ## A287566.P3331372511079700082

`A016789(A287569(n+1))%4`
-/

namespace A287566.P3331372511079700082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016789 (A287569 (n + 1)).toNat) 4

end

end A287566.P3331372511079700082

/-! ## A287566.P4498304097190391960

`A014681(A287569(n+1))+1-A016825(n)`
-/

namespace A287566.P4498304097190391960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A287569 (n + 1)).toNat + (1 - A016825 n)

end

end A287566.P4498304097190391960

/-! ## A287566.P1596754820329269138

`A004767(n)+1-A256008(A287569(n+1))`
-/

namespace A287566.P1596754820329269138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + (1 - A256008 (A287569 (n + 1)).toNat)

end

end A287566.P1596754820329269138

/-! ## A287566.P3186534657592134586

`A014681(A287569(n+1))-A014681(A016825(n))`
-/

namespace A287566.P3186534657592134586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A287569 (n + 1)).toNat - A014681 (A016825 n).toNat

end

end A287566.P3186534657592134586

/-!
# A287567: Positions of 0 in A287566.

The programs for A287567, there is no canonical definition to state claims against.
-/

/-! ## A287567.P9360511988670317820

`A016813(n)+A010873(A287568(n+1))`
-/

namespace A287567.P9360511988670317820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A010873 (A287568 (n + 1)).toNat

end

end A287567.P9360511988670317820

/-! ## A287567.P7710298062594709687

`A016813(n)+A010873(A287570(n+1)+1)`
-/

namespace A287567.P7710298062594709687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A010873 (A287570 (n + 1) + 1).toNat

end

end A287567.P7710298062594709687

/-! ## A287567.P9971537470802239557

`A016813(n)+A010873(A287569(n+1)+2)`
-/

namespace A287567.P9971537470802239557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A010873 (A287569 (n + 1) + 2).toNat

end

end A287567.P9971537470802239557

/-! ## A287567.P14864032207642789151

`lt[A287566(n+1), 1]+1`
-/

namespace A287567.P14864032207642789151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287566 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287567.P14864032207642789151

/-! ## A287567.P14812191508081727340

`A256008(A287570(n+1))`
-/

namespace A287567.P14812191508081727340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287570 (n + 1)).toNat

end

end A287567.P14812191508081727340

/-! ## A287567.P5520773961067838207

`record[A054576(A287568(n+1))]`
-/

namespace A287567.P5520773961067838207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A287568 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287567.P5520773961067838207

/-! ## A287567.P5314004565417895019

`record[A054576(A287570(n+1)+1)]`
-/

namespace A287567.P5314004565417895019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A287570 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287567.P5314004565417895019

/-! ## A287567.P11419843451400831182

`record[A054576(A287569(n+1)+2)]`
-/

namespace A287567.P11419843451400831182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A287569 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287567.P11419843451400831182

/-!
# A287568: Positions of 1 in A287566.

The programs for A287568, there is no canonical definition to state claims against.
-/

/-! ## A287568.P2911567843757891505

`4*(n+1)-A287566(n+1)`
-/

namespace A287568.P2911567843757891505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A287566 (n + 1)

end

end A287568.P2911567843757891505

/-! ## A287568.P12603054028337381169

`A016813(n)+A010873(A287570(n+1))`
-/

namespace A287568.P12603054028337381169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A010873 (A287570 (n + 1)).toNat

end

end A287568.P12603054028337381169

/-! ## A287568.P11297730179122538415

`A010873(A287570(n+1))+A008586(n)+1`
-/

namespace A287568.P11297730179122538415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A287570 (n + 1)).toNat + (A008586 n + 1)

end

end A287568.P11297730179122538415

/-! ## A287568.P3281569098368985510

`A016813(n)+A010873(A287569(n+1)+1)`
-/

namespace A287568.P3281569098368985510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A010873 (A287569 (n + 1) + 1).toNat

end

end A287568.P3281569098368985510

/-! ## A287568.P10335216034001085095

`A016813(n)+A010873(A287567(n+1)+2)`
-/

namespace A287568.P10335216034001085095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A010873 (A287567 (n + 1) + 2).toNat

end

end A287568.P10335216034001085095

/-! ## A287568.P16701718100274553114

`A010873(A287570(n+1))+A016825(n)-1`
-/

namespace A287568.P16701718100274553114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A287570 (n + 1)).toNat + (A016825 n - 1)

end

end A287568.P16701718100274553114

/-! ## A287568.P8012924586015220685

`A010873(A287570(n+1))+A004767(n)-2`
-/

namespace A287568.P8012924586015220685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A287570 (n + 1)).toNat + (A004767 n - 2)

end

end A287568.P8012924586015220685

/-! ## A287568.P17293523704536607835

`A287556(n+1)+A287559(n+1)-A287566(n+1)`
-/

namespace A287568.P17293523704536607835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (n + 1) + (A287559 (n + 1) - A287566 (n + 1))

end

end A287568.P17293523704536607835

/-! ## A287568.P15479796829598293977

`A287561(n+1)+A287565(n+1)-A287566(n+1)`
-/

namespace A287568.P15479796829598293977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287561 (n + 1) + (A287565 (n + 1) - A287566 (n + 1))

end

end A287568.P15479796829598293977

/-! ## A287568.P2494262290723220442

`A287571(n+1)+A287574(n+1)-A287566(n+1)`
-/

namespace A287568.P2494262290723220442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (n + 1) + (A287574 (n + 1) - A287566 (n + 1))

end

end A287568.P2494262290723220442

/-! ## A287568.P7171898223560666458

`A287576(n+1)+A287578(n+1)-A287566(n+1)`
-/

namespace A287568.P7171898223560666458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (n + 1) + (A287578 (n + 1) - A287566 (n + 1))

end

end A287568.P7171898223560666458

/-! ## A287568.P6444964619131250331

`A092486(8*n+4-A287567(n+1))`
-/

namespace A287568.P6444964619131250331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 ((8 * n + 4 : ℤ) - A287567 (n + 1)).toNat

end

end A287568.P6444964619131250331

/-! ## A287568.P3738574710189413849

`A010873(A287570(n+1))+A004442(A008586(n))`
-/

namespace A287568.P3738574710189413849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A287570 (n + 1)).toNat + A004442 (A008586 n).toNat

end

end A287568.P3738574710189413849

/-! ## A287568.P17884975438331014020

`A256008(A287569(n+1))`
-/

namespace A287568.P17884975438331014020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287569 (n + 1)).toNat

end

end A287568.P17884975438331014020

/-! ## A287568.P8207178496715273350

`A263449(8*n+4-A287570(n+1))`
-/

namespace A287568.P8207178496715273350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 ((8 * n + 4 : ℤ) - A287570 (n + 1)).toNat

end

end A287568.P8207178496715273350

/-! ## A287568.P1247586167509851565

`A014681(8*n+5-A287569(n+1))`
-/

namespace A287568.P1247586167509851565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 ((8 * n + 5 : ℤ) - A287569 (n + 1)).toNat

end

end A287568.P1247586167509851565

/-! ## A287568.P7785379407110034901

`A014681(A016825(n))+A010873(A287570(n+1))`
-/

namespace A287568.P7785379407110034901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A016825 n).toNat + A010873 (A287570 (n + 1)).toNat

end

end A287568.P7785379407110034901

/-! ## A287568.P8593526227224883657

`A256008(A004767(n))+A010873(A287570(n+1))`
-/

namespace A287568.P8593526227224883657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A004767 n).toNat + A010873 (A287570 (n + 1)).toNat

end

end A287568.P8593526227224883657

/-! ## A287568.P2690138810446958975

`record[A054576(A287567(n+4))]`
-/

namespace A287568.P2690138810446958975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A287567 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287568.P2690138810446958975

/-!
# A287569: Positions of 2 in A287566.

The programs for A287569, there is no canonical definition to state claims against.
-/

/-! ## A287569.P8416125915948321469

`A016813(n)+A010873(A287567(n+1))`
-/

namespace A287569.P8416125915948321469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A010873 (A287567 (n + 1)).toNat

end

end A287569.P8416125915948321469

/-! ## A287569.P543505623864915403

`A010873(A287567(n+1))+A008586(n)+1`
-/

namespace A287569.P543505623864915403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A287567 (n + 1)).toNat + (A008586 n + 1)

end

end A287569.P543505623864915403

/-! ## A287569.P6228032047452939428

`A016813(n)+A010873(A287568(n+1)+1)`
-/

namespace A287569.P6228032047452939428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A010873 (A287568 (n + 1) + 1).toNat

end

end A287569.P6228032047452939428

/-! ## A287569.P7300087349504902417

`A010873(A287567(n+1))+A016825(n)-1`
-/

namespace A287569.P7300087349504902417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A287567 (n + 1)).toNat + (A016825 n - 1)

end

end A287569.P7300087349504902417

/-! ## A287569.P11840796154893629640

`A016813(n)+A010873(A287570(n+1)+2)`
-/

namespace A287569.P11840796154893629640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A010873 (A287570 (n + 1) + 2).toNat

end

end A287569.P11840796154893629640

/-! ## A287569.P4661404822774799167

`A010873(A287567(n+1))+A004767(n)-2`
-/

namespace A287569.P4661404822774799167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A287567 (n + 1)).toNat + (A004767 n - 2)

end

end A287569.P4661404822774799167

/-! ## A287569.P13774337267427458914

`A092486(8*n+4-A287570(n+1))`
-/

namespace A287569.P13774337267427458914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 ((8 * n + 4 : ℤ) - A287570 (n + 1)).toNat

end

end A287569.P13774337267427458914

/-! ## A287569.P11327720196387045

`A010873(A287567(n+1))+A004442(A008586(n))`
-/

namespace A287569.P11327720196387045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A287567 (n + 1)).toNat + A004442 (A008586 n).toNat

end

end A287569.P11327720196387045

/-! ## A287569.P6855187609821058611

`A256008(A287568(n+1))`
-/

namespace A287569.P6855187609821058611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287568 (n + 1)).toNat

end

end A287569.P6855187609821058611

/-! ## A287569.P11625120560857493728

`A263449(8*n+4-A287567(n+1))`
-/

namespace A287569.P11625120560857493728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 ((8 * n + 4 : ℤ) - A287567 (n + 1)).toNat

end

end A287569.P11625120560857493728

/-! ## A287569.P14723498817324161853

`A014681(8*n+5-A287568(n+1))`
-/

namespace A287569.P14723498817324161853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 ((8 * n + 5 : ℤ) - A287568 (n + 1)).toNat

end

end A287569.P14723498817324161853

/-! ## A287569.P12579828472235285561

`A004771(n)-(A263449(A287567(n+1))+1)`
-/

namespace A287569.P12579828472235285561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n - (A263449 (A287567 (n + 1)).toNat + 1)

end

end A287569.P12579828472235285561

/-! ## A287569.P9908588632712745185

`A014681(A016825(n))+A010873(A287567(n+1))`
-/

namespace A287569.P9908588632712745185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A016825 n).toNat + A010873 (A287567 (n + 1)).toNat

end

end A287569.P9908588632712745185

/-! ## A287569.P12946428395237391104

`A256008(A004767(n))+A010873(A287567(n+1))`
-/

namespace A287569.P12946428395237391104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A004767 n).toNat + A010873 (A287567 (n + 1)).toNat

end

end A287569.P12946428395237391104

/-! ## A287569.P1006101963608814686

`A004442(A004771(n))-A263449(A287567(n+1))`
-/

namespace A287569.P1006101963608814686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A004771 n).toNat - A263449 (A287567 (n + 1)).toNat

end

end A287569.P1006101963608814686

/-! ## A287569.P4145402632201240044

`record[A054576(A287567(n+2)+1)]`
-/

namespace A287569.P4145402632201240044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A287567 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287569.P4145402632201240044

/-!
# A287570: Positions of 3 in A287566.

The programs for A287570, there is no canonical definition to state claims against.
-/

/-! ## A287570.P2867526688973104666

`A016813(n)+A010873(A287569(n+1))`
-/

namespace A287570.P2867526688973104666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A010873 (A287569 (n + 1)).toNat

end

end A287570.P2867526688973104666

/-! ## A287570.P4388971122189700532

`A010873(A287569(n+1))+A008586(n)+1`
-/

namespace A287570.P4388971122189700532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A287569 (n + 1)).toNat + (A008586 n + 1)

end

end A287570.P4388971122189700532

/-! ## A287570.P1670283992931939336

`A016813(n)+A010873(A287567(n+1)+1)`
-/

namespace A287570.P1670283992931939336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A010873 (A287567 (n + 1) + 1).toNat

end

end A287570.P1670283992931939336

/-! ## A287570.P10737161447867140468

`A016813(n)+A010873(A287568(n+1)+2)`
-/

namespace A287570.P10737161447867140468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A010873 (A287568 (n + 1) + 2).toNat

end

end A287570.P10737161447867140468

/-! ## A287570.P6348284390277961141

`A010873(A287569(n+1))+A016825(n)-1`
-/

namespace A287570.P6348284390277961141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A287569 (n + 1)).toNat + (A016825 n - 1)

end

end A287570.P6348284390277961141

/-! ## A287570.P5828744720617024991

`A010873(A287569(n+1))+A004767(n)-2`
-/

namespace A287570.P5828744720617024991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A287569 (n + 1)).toNat + (A004767 n - 2)

end

end A287570.P5828744720617024991

/-! ## A287570.P759611404173983002

`A092486(8*n+4-A287568(n+1))`
-/

namespace A287570.P759611404173983002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 ((8 * n + 4 : ℤ) - A287568 (n + 1)).toNat

end

end A287570.P759611404173983002

/-! ## A287570.P2180779253325017232

`A010873(A287569(n+1))+A004442(A008586(n))`
-/

namespace A287570.P2180779253325017232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A287569 (n + 1)).toNat + A004442 (A008586 n).toNat

end

end A287570.P2180779253325017232

/-! ## A287570.P1494667650760283669

`lt[2, A287566(n+1)]+1`
-/

namespace A287570.P1494667650760283669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287570.P1494667650760283669

/-! ## A287570.P2463552426862643420

`eq[1, A287568(n+2)%(n+1)]+2`
-/

namespace A287570.P2463552426862643420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287568 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A287570.P2463552426862643420

/-! ## A287570.P16025551010818114973

`A256008(A287567(n+1))`
-/

namespace A287570.P16025551010818114973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287567 (n + 1)).toNat

end

end A287570.P16025551010818114973

/-! ## A287570.P814418667613707974

`A263449(8*n+4-A287569(n+1))`
-/

namespace A287570.P814418667613707974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 ((8 * n + 4 : ℤ) - A287569 (n + 1)).toNat

end

end A287570.P814418667613707974

/-! ## A287570.P8617643994944292597

`A014681(8*n+5-A287567(n+1))`
-/

namespace A287570.P8617643994944292597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 ((8 * n + 5 : ℤ) - A287567 (n + 1)).toNat

end

end A287570.P8617643994944292597

/-! ## A287570.P10721291353469521641

`A004771(n)-(A263449(A287569(n+1))+1)`
-/

namespace A287570.P10721291353469521641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n - (A263449 (A287569 (n + 1)).toNat + 1)

end

end A287570.P10721291353469521641

/-! ## A287570.P17848168449112581813

`A014681(A016825(n))+A010873(A287569(n+1))`
-/

namespace A287570.P17848168449112581813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A016825 n).toNat + A010873 (A287569 (n + 1)).toNat

end

end A287570.P17848168449112581813

/-! ## A287570.P228030856495956217

`A256008(A004767(n))+A010873(A287569(n+1))`
-/

namespace A287570.P228030856495956217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A004767 n).toNat + A010873 (A287569 (n + 1)).toNat

end

end A287570.P228030856495956217

/-! ## A287570.P10483594959756379392

`A004442(A004771(n))-A263449(A287569(n+1))`
-/

namespace A287570.P10483594959756379392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A004771 n).toNat - A263449 (A287569 (n + 1)).toNat

end

end A287570.P10483594959756379392

/-!
# A287571: Start with 0 and repeatedly substitute 0->0312, 1->3120, 2->1203, 3->2031.

The programs for A287571, there is no canonical definition to state claims against.
-/

/-! ## A287571.P13739293044179166445

`4*(n+1)-A287574(n+1)`
-/

namespace A287571.P13739293044179166445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A287574 (n + 1)

end

end A287571.P13739293044179166445

/-! ## A287571.P11238281552779041148

`and(3, -A287574(n+1))`
-/

namespace A287571.P11238281552779041148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-A287574 (n + 1))

end

end A287571.P11238281552779041148

/-! ## A287571.P13194737608480058504

`and(3, 1-A287572(n+1))`
-/

namespace A287571.P13194737608480058504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (1 - A287572 (n + 1))

end

end A287571.P13194737608480058504

/-! ## A287571.P2766415468396788577

`and(3, 2-A287575(n+1))`
-/

namespace A287571.P2766415468396788577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (2 - A287575 (n + 1))

end

end A287571.P2766415468396788577

/-! ## A287571.P1823213825920213631

`and(3, 3-A287573(n+1))`
-/

namespace A287571.P1823213825920213631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (3 - A287573 (n + 1))

end

end A287571.P1823213825920213631

/-! ## A287571.P5550244696311119573

`A287555(n+1)+A053839(n)-A287574(n+1)`
-/

namespace A287571.P5550244696311119573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287555 (n + 1) + (A053839 n - A287574 (n + 1))

end

end A287571.P5550244696311119573

/-! ## A287571.P15721678796196898610

`A158459(A287574(n+1))`
-/

namespace A287571.P15721678796196898610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158459 (A287574 (n + 1)).toNat

end

end A287571.P15721678796196898610

/-! ## A287571.P18274603721145513708

`A263449(A287572(n+1))%4`
-/

namespace A287571.P18274603721145513708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263449 (A287572 (n + 1)).toNat) 4

end

end A287571.P18274603721145513708

/-!
# A287572: Positions of 0 in A287571.

The programs for A287572, there is no canonical definition to state claims against.
-/

/-! ## A287572.P4834365982818079206

`eq[0, A287571(n+1)]+1`
-/

namespace A287572.P4834365982818079206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287572.P4834365982818079206

/-! ## A287572.P9827902426289955805

`A256008(A287573(n+1))`
-/

namespace A287572.P9827902426289955805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287573 (n + 1)).toNat

end

end A287572.P9827902426289955805

/-! ## A287572.P15650820109014829264

`record[n+1-A006068(n)*A287571(n+1)]`
-/

namespace A287572.P15650820109014829264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006068 n * A287571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287572.P15650820109014829264

/-! ## A287572.P11748905411164087365

`record[n+1-A143097(n+1)*A287571(n+1)]`
-/

namespace A287572.P11748905411164087365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A143097 (n + 1) * A287571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287572.P11748905411164087365

/-! ## A287572.P18287836662888291610

`record[n+1-A004159(A287574(n+1)%(n+1))]`
-/

namespace A287572.P18287836662888291610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004159 (Int.tmod (A287574 (n + 1)) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287572.P18287836662888291610

/-! ## A287572.P1899807406779959535

`eq[2, A287571(A008574(n))]`
-/

namespace A287572.P1899807406779959535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287572.P1899807406779959535

/-! ## A287572.P2324826510723815368

`eq[2, A287571(A113127(n)+2)]`
-/

namespace A287572.P2324826510723815368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (A113127 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287572.P2324826510723815368

/-! ## A287572.P5026511675385457753

`eq[2, A006519(A287575(n+1))]+1`
-/

namespace A287572.P5026511675385457753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A287575 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287572.P5026511675385457753

/-! ## A287572.P1664798713674478879

`record[n+1-A016116(n)*A287571(n+1)]`
-/

namespace A287572.P1664798713674478879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A016116 n * A287571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287572.P1664798713674478879

/-!
# A287573: Positions of 1 in A287571.

The programs for A287573, there is no canonical definition to state claims against.
-/

/-! ## A287573.P16947813614576669504

`eq[1, A287571(n+1)]+1`
-/

namespace A287573.P16947813614576669504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287573.P16947813614576669504

/-! ## A287573.P535346465651752567

`eq[3, and(3, A287574(n+1))]+1`
-/

namespace A287573.P535346465651752567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A287574 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287573.P535346465651752567

/-! ## A287573.P6430059655394610640

`A256008(A287572(n+1))`
-/

namespace A287573.P6430059655394610640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287572 (n + 1)).toNat

end

end A287573.P6430059655394610640

/-! ## A287573.P11017874926227651135

`eq[1, A287571(A000007(n)+n)]`
-/

namespace A287573.P11017874926227651135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287573.P11017874926227651135

/-! ## A287573.P10667481448611129194

`eq[1, A287571(A111284(n+1))]`
-/

namespace A287573.P10667481448611129194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (A111284 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287573.P10667481448611129194

/-! ## A287573.P13048423326291413712

`eq[2, A006519(A287575(n+1)+1)]+1`
-/

namespace A287573.P13048423326291413712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A287575 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287573.P13048423326291413712

/-!
# A287574: Positions of 2 in A287571.

The programs for A287574, there is no canonical definition to state claims against.
-/

/-! ## A287574.P2169745280889124831

`4*(n+1)-A287571(n+1)`
-/

namespace A287574.P2169745280889124831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A287571 (n + 1)

end

end A287574.P2169745280889124831

/-! ## A287574.P1060723932632987428

`A004767(n)+1-A287571(n+1)`
-/

namespace A287574.P1060723932632987428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + (1 - A287571 (n + 1))

end

end A287574.P1060723932632987428

/-! ## A287574.P14579273687802865678

`A016825(n)+2-A287571(n+1)`
-/

namespace A287574.P14579273687802865678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + (2 - A287571 (n + 1))

end

end A287574.P14579273687802865678

/-! ## A287574.P9134064814571149311

`A287555(n+1)+A053839(n)-A287571(n+1)`
-/

namespace A287574.P9134064814571149311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287555 (n + 1) + (A053839 n - A287571 (n + 1))

end

end A287574.P9134064814571149311

/-! ## A287574.P16401115005748170794

`A287556(n+1)+A287559(n+1)-A287571(n+1)`
-/

namespace A287574.P16401115005748170794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (n + 1) + (A287559 (n + 1) - A287571 (n + 1))

end

end A287574.P16401115005748170794

/-! ## A287574.P13604246179722739678

`eq[2, A287571(n+1)]+1`
-/

namespace A287574.P13604246179722739678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287574.P13604246179722739678

/-! ## A287574.P9461167404966535859

`A256008(A287575(n+1))`
-/

namespace A287574.P9461167404966535859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287575 (n + 1)).toNat

end

end A287574.P9461167404966535859

/-! ## A287574.P11754819625866967419

`eq[2, A287571(A000007(n)+n)]`
-/

namespace A287574.P11754819625866967419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287574.P11754819625866967419

/-! ## A287574.P8929591449071264208

`eq[2, A287571(A113127(n))]`
-/

namespace A287574.P8929591449071264208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (A113127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287574.P8929591449071264208

/-! ## A287574.P11148165139396175756

`eq[2, A287571(A111284(n+1))]`
-/

namespace A287574.P11148165139396175756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (A111284 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287574.P11148165139396175756

/-! ## A287574.P16695589876935290072

`eq[1, A287571(A008574(n))-2]`
-/

namespace A287574.P16695589876935290072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (A008574 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287574.P16695589876935290072

/-!
# A287575: Positions of 3 in A287571.

The programs for A287575, there is no canonical definition to state claims against.
-/

/-! ## A287575.P7826539378561953978

`-xor(2, -A287574(n+1))`
-/

namespace A287575.P7826539378561953978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (-A287574 (n + 1))

end

end A287575.P7826539378561953978

/-! ## A287575.P12040097921469375424

`-xor(-A016825(n), A287571(n+1))`
-/

namespace A287575.P12040097921469375424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-A016825 n) (A287571 (n + 1))

end

end A287575.P12040097921469375424

/-! ## A287575.P978315403342673722

`A092486(A092486(A287574(n+1)-2))`
-/

namespace A287575.P978315403342673722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A092486 (A287574 (n + 1) - 2).toNat).toNat

end

end A287575.P978315403342673722

/-! ## A287575.P7776308942371883874

`lt[2, A287571(n+1)]+1`
-/

namespace A287575.P7776308942371883874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287575.P7776308942371883874

/-! ## A287575.P13389317061411637704

`A256008(A287574(n+1))`
-/

namespace A287575.P13389317061411637704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287574 (n + 1)).toNat

end

end A287575.P13389317061411637704

/-! ## A287575.P3259427520822612014

`eq[1, A287571(A008574(n))]`
-/

namespace A287575.P3259427520822612014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287575.P3259427520822612014

/-! ## A287575.P5155397793781909473

`eq[3, A287571(A008619(A004273(n)))]`
-/

namespace A287575.P5155397793781909473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287575.P5155397793781909473

/-! ## A287575.P9996622253550465517

`eq[A000007(n), A287571(A113127(n))]`
-/

namespace A287575.P9996622253550465517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (A113127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287575.P9996622253550465517

/-!
# A287576: Start with 0 and repeatedly substitute 0->0321, 1->3210, 2->2103, 3->1032.

The programs for A287576, there is no canonical definition to state claims against.
-/

/-! ## A287576.P8429402984679928530

`4*(n+1)-A287578(n+1)`
-/

namespace A287576.P8429402984679928530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A287578 (n + 1)

end

end A287576.P8429402984679928530

/-! ## A287576.P13181028743265248409

`and(3, -A215090(n))`
-/

namespace A287576.P13181028743265248409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-A215090 n)

end

end A287576.P13181028743265248409

/-! ## A287576.P1058738857559066381

`and(3, -A287578(n+1))`
-/

namespace A287576.P1058738857559066381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-A287578 (n + 1))

end

end A287576.P1058738857559066381

/-! ## A287576.P8987576925421495743

`A158459(A215090(n))`
-/

namespace A287576.P8987576925421495743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158459 (A215090 n).toNat

end

end A287576.P8987576925421495743

/-! ## A287576.P13683778483641509673

`or(3, A287579(n+1))-A287579(n+1)`
-/

namespace A287576.P13683778483641509673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A287579 (n + 1)) - A287579 (n + 1)

end

end A287576.P13683778483641509673

/-! ## A287576.P16441146882297352262

`A287555(n+1)+A053839(n)-A287578(n+1)`
-/

namespace A287576.P16441146882297352262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287555 (n + 1) + (A053839 n - A287578 (n + 1))

end

end A287576.P16441146882297352262

/-! ## A287576.P16286643437447723212

`A158459(A287578(n+1))`
-/

namespace A287576.P16286643437447723212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158459 (A287578 (n + 1)).toNat

end

end A287576.P16286643437447723212

/-!
# A287577: Positions of 0 in A287576.

The programs for A287577, there is no canonical definition to state claims against.
-/

/-! ## A287577.P14005526519737387986

`eq[1, A287576(n+1)+1]+1`
-/

namespace A287577.P14005526519737387986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287577.P14005526519737387986

/-! ## A287577.P6728708986194820477

`4*n+1+A287576(4*n+1)`
-/

namespace A287577.P6728708986194820477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) + A287576 (4 * n + 1)

end

end A287577.P6728708986194820477

/-! ## A287577.P16022606230814300630

`A287576(A005408(2*n))+A005408(2*n)`
-/

namespace A287577.P16022606230814300630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (A005408 (2 * n)).toNat + A005408 (2 * n)

end

end A287577.P16022606230814300630

/-! ## A287577.P6253037745362674487

`eq[0, A287578(n+1)%(n+1)]+1`
-/

namespace A287577.P6253037745362674487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287578 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287577.P6253037745362674487

/-! ## A287577.P1327860956812844733

`A256008(A287579(n+1))`
-/

namespace A287577.P1327860956812844733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287579 (n + 1)).toNat

end

end A287577.P1327860956812844733

/-! ## A287577.P4321608356443062162

`eq[1, A287576(A008574(n))]`
-/

namespace A287577.P4321608356443062162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287577.P4321608356443062162

/-! ## A287577.P423820080131419331

`eq[1, A287576(A113127(n)+2)]`
-/

namespace A287577.P423820080131419331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (A113127 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287577.P423820080131419331

/-!
# A287578: Positions of 1 in A287576.

The programs for A287578, there is no canonical definition to state claims against.
-/

/-! ## A287578.P7313578896616063949

`4*(n+1)-A287576(n+1)`
-/

namespace A287578.P7313578896616063949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A287576 (n + 1)

end

end A287578.P7313578896616063949

/-! ## A287578.P14251790855133980047

`A016777(n+1)-A287576(n+1)+n`
-/

namespace A287578.P14251790855133980047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) - A287576 (n + 1) + (n : ℤ)

end

end A287578.P14251790855133980047

/-! ## A287578.P17806501635349505528

`A287555(n+1)+A053839(n)-A287576(n+1)`
-/

namespace A287578.P17806501635349505528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287555 (n + 1) + (A053839 n - A287576 (n + 1))

end

end A287578.P17806501635349505528

/-! ## A287578.P17488040122252028632

`eq[1, A287576(n+1)]+1`
-/

namespace A287578.P17488040122252028632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287578.P17488040122252028632

/-! ## A287578.P6511489836061358700

`A005408(A005408(n))+1-A287576(n+1)`
-/

namespace A287578.P6511489836061358700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 n).toNat + (1 - A287576 (n + 1))

end

end A287578.P6511489836061358700

/-! ## A287578.P14084225411254810556

`A256008(A287580(n+1))`
-/

namespace A287578.P14084225411254810556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287580 (n + 1)).toNat

end

end A287578.P14084225411254810556

/-! ## A287578.P14590072493118396062

`eq[1, A287576(A065033(2*n))]`
-/

namespace A287578.P14590072493118396062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287578.P14590072493118396062

/-! ## A287578.P6021319948347296795

`eq[1, A287576(A233583(n+1))]`
-/

namespace A287578.P6021319948347296795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287578.P6021319948347296795

/-!
# A287579: Positions of 2 in A287576.

The programs for A287579, there is no canonical definition to state claims against.
-/

/-! ## A287579.P13848824647088710864

`eq[2, A287576(n+1)]+1`
-/

namespace A287579.P13848824647088710864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287579.P13848824647088710864

/-! ## A287579.P9054107042761997690

`4*n+1+A287576(4*n+3)`
-/

namespace A287579.P9054107042761997690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) + A287576 (4 * n + 3)

end

end A287579.P9054107042761997690

/-! ## A287579.P13621486571165910955

`A287576(4*n+3)+A005408(2*n)`
-/

namespace A287579.P13621486571165910955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (4 * n + 3) + A005408 (2 * n)

end

end A287579.P13621486571165910955

/-! ## A287579.P489876675265171929

`eq[1, val(A215090(n+1), 2)]+2`
-/

namespace A287579.P489876675265171929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A215090 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A287579.P489876675265171929

/-! ## A287579.P14719598247217955109

`A256008(A287577(n+1))`
-/

namespace A287579.P14719598247217955109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287577 (n + 1)).toNat

end

end A287579.P14719598247217955109

/-! ## A287579.P6067678333146423823

`eq[1, A287576(A113127(n))]`
-/

namespace A287579.P6067678333146423823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (A113127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287579.P6067678333146423823

/-! ## A287579.P93777275054396990

`eq[3, A287576(A008574(n))]`
-/

namespace A287579.P93777275054396990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287579.P93777275054396990

/-! ## A287579.P65204592771571163

`eq[2, A287576(A065033(2*n))]`
-/

namespace A287579.P65204592771571163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287579.P65204592771571163

/-! ## A287579.P5019921118428389691

`eq[2, A287576(A233583(n+1))]`
-/

namespace A287579.P5019921118428389691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287579.P5019921118428389691

/-!
# A287580: Positions of 3 in A287576.

The programs for A287580, there is no canonical definition to state claims against.
-/

/-! ## A287580.P9748092696302348597

`eq[3, A287576(n+1)]+1`
-/

namespace A287580.P9748092696302348597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287580.P9748092696302348597

/-! ## A287580.P1445582623328065798

`A287576(4*(n+1))+A287577(n+1)-A287576(4*n+1)`
-/

namespace A287580.P1445582623328065798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (4 * (n + 1)) + (A287577 (n + 1) - A287576 (4 * n + 1))

end

end A287580.P1445582623328065798

/-! ## A287580.P7253314364423270210

`eq[1, A215090(n)%4]+1`
-/

namespace A287580.P7253314364423270210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215090 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287580.P7253314364423270210

/-! ## A287580.P8708186051660753901

`A256008(A287578(n+1))`
-/

namespace A287580.P8708186051660753901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A287578 (n + 1)).toNat

end

end A287580.P8708186051660753901

/-! ## A287580.P2351634954228814177

`eq[2, A287576(A008574(n))]`
-/

namespace A287580.P2351634954228814177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287580.P2351634954228814177

/-! ## A287580.P12497707953350044544

`eq[3, A287576(A065033(2*n))]`
-/

namespace A287580.P12497707953350044544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287580.P12497707953350044544

/-!
# A287582: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks and between consecutive elements within the blocks are not larger than three.

The programs for A287582, there is no canonical definition to state claims against.
-/

/-! ## A287582.P999789482085833478

`A287417(∑[n+3]+n+3)`
-/

namespace A287582.P999789482085833478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A287582.P999789482085833478

/-! ## A287582.P15387867196026060994

`A287417(A046691(n+2))+char[A242862(n+1)]`
-/

namespace A287582.P15387867196026060994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242862 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A046691 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A287582.P15387867196026060994

/-! ## A287582.P3718214694073175993

`A287417(A046691(n+2))+char[A272140(n+1)]`
-/

namespace A287582.P3718214694073175993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272140 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A046691 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A287582.P3718214694073175993

/-! ## A287582.P16628486100193608387

`A287417(A046691(n+2))+char[A132209(n+4)]`
-/

namespace A287582.P16628486100193608387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A046691 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A287582.P16628486100193608387

/-! ## A287582.P1066160963106894072

`char[A287417(n)]*A287417(A046691(n+2))`
-/

namespace A287582.P1066160963106894072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A287417 (A046691 (n + 2)).toNat

end

end A287582.P1066160963106894072

/-!
# A287583: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks and between consecutive elements within the blocks are not larger than four.

The programs for A287583, there is no canonical definition to state claims against.
-/

/-! ## A287583.P4271666752294580080

`A287417(∑[n+5]+5)`
-/

namespace A287583.P4271666752294580080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A287583.P4271666752294580080

/-! ## A287583.P4763145706597945682

`A287417(A056115(n)+10)+A000045(C(n, 64))`
-/

namespace A287583.P4763145706597945682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A056115 n + 10).toNat + A000045 (Nat.choose n 64)

end

end A287583.P4763145706597945682

/-! ## A287583.P14613493459408910815

`A287417(A052905(n+2))+A008683(4*(n+1))`
-/

namespace A287583.P14613493459408910815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A052905 (n + 2)).toNat + A008683 (4 * (n + 1))

end

end A287583.P14613493459408910815

/-! ## A287583.P1363287949048356549

`A287417(A056115(n)+10)/A007318(C(2, n+2))`
-/

namespace A287583.P1363287949048356549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287417 (A056115 n + 10).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A287583.P1363287949048356549

/-! ## A287583.P12624798923062267955

`A008683(n+1)²!*A287417(A056115(n)+10)`
-/

namespace A287583.P12624798923062267955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) * A287417 (A056115 n + 10).toNat

end

end A287583.P12624798923062267955

/-!
# A287584: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks and between consecutive elements within the blocks are not larger than five.

The programs for A287584, there is no canonical definition to state claims against.
-/

/-! ## A287584.P10510649443590978497

`A287417(eq[5, A025581(n)])`
-/

namespace A287584.P10510649443590978497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287584.P10510649443590978497

/-! ## A287584.P16336722781622381400

`A287417(Δ[A023551(n+1)])`
-/

namespace A287584.P16336722781622381400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (f1 (n + 1) - f1 n).toNat

end

end A287584.P16336722781622381400

/-! ## A287584.P14672747896357034160

`A287417(A052905(n+3)-1)`
-/

namespace A287584.P14672747896357034160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A052905 (n + 3) - 1).toNat

end

end A287584.P14672747896357034160

/-! ## A287584.P1269585646054377461

`A287417(A000217(n+6)-6)`
-/

namespace A287584.P1269585646054377461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A000217 (n + 6) - 6).toNat

end

end A287584.P1269585646054377461

/-! ## A287584.P5358952266538352049

`A287417(eq[6, A004736(n+1)])`
-/

namespace A287584.P5358952266538352049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287584.P5358952266538352049

/-!
# A287585: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks and between consecutive elements within the blocks are not larger than six.

The programs for A287585, there is no canonical definition to state claims against.
-/

/-! ## A287585.P16388791227763627584

`A287417(A000096(n+6)-6)`
-/

namespace A287585.P16388791227763627584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A000096 (n + 6) - 6).toNat

end

end A287585.P16388791227763627584

/-! ## A287585.P11815908831453781581

`A287417(A000217(n+7)-7)`
-/

namespace A287585.P11815908831453781581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A000217 (n + 7) - 7).toNat

end

end A287585.P11815908831453781581

/-! ## A287585.P7005210065574960522

`A287417(A000124(n+7)-8)`
-/

namespace A287585.P7005210065574960522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A000124 (n + 7) - 8).toNat

end

end A287585.P7005210065574960522

/-! ## A287585.P4019658414436442965

`A287417(Δ[A023551(n+2)]-1)`
-/

namespace A287585.P4019658414436442965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (f1 (n + 1) - f1 n - 1).toNat

end

end A287585.P4019658414436442965

/-! ## A287585.P12598984455506951865

`A287417((n+10)²%A000124(n+12))`
-/

namespace A287585.P12598984455506951865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (Int.tmod ((n + 10) ^ 2 : ℤ) (A000124 (n + 12))).toNat

end

end A287585.P12598984455506951865

/-!
# A287586: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks and between consecutive elements within the blocks are not larger than seven.

The programs for A287586, there is no canonical definition to state claims against.
-/

/-! ## A287586.P854005689205198971

`A287417(A000096(n+7)-7)`
-/

namespace A287586.P854005689205198971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A000096 (n + 7) - 7).toNat

end

end A287586.P854005689205198971

/-! ## A287586.P1760582684086283429

`A287417(A000217(n+8)-8)`
-/

namespace A287586.P1760582684086283429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A000217 (n + 8) - 8).toNat

end

end A287586.P1760582684086283429

/-! ## A287586.P18343491854754235284

`A287417(A000124(n+8)-9)`
-/

namespace A287586.P18343491854754235284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A000124 (n + 8) - 9).toNat

end

end A287586.P18343491854754235284

/-! ## A287586.P16642887578687519987

`A287417(eq[8, A004736(n+1)])`
-/

namespace A287586.P16642887578687519987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287586.P16642887578687519987

/-! ## A287586.P6031617848158936408

`A287417(2*n+A000124(n+6)+6)`
-/

namespace A287586.P6031617848158936408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 ((2 * n : ℤ) + (A000124 (n + 6) + 6)).toNat

end

end A287586.P6031617848158936408

/-!
# A287587: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks and between consecutive elements within the blocks are not larger than eight.

The programs for A287587, there is no canonical definition to state claims against.
-/

/-! ## A287587.P15049406311540069362

`A287417(eq[8, A025581(n)])`
-/

namespace A287587.P15049406311540069362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287587.P15049406311540069362

/-! ## A287587.P10718944393377610148

`A287417(A055998(n+7)-6)`
-/

namespace A287587.P10718944393377610148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A055998 (n + 7) - 6).toNat

end

end A287587.P10718944393377610148

/-! ## A287587.P579763393813479188

`A287417(A000096(n+8)-8)`
-/

namespace A287587.P579763393813479188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A000096 (n + 8) - 8).toNat

end

end A287587.P579763393813479188

/-! ## A287587.P2418740986057856042

`A287417(A000217(n+9)-9)`
-/

namespace A287587.P2418740986057856042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A000217 (n + 9) - 9).toNat

end

end A287587.P2418740986057856042

/-! ## A287587.P16882286982483092947

`A287417(A000124(n+9)-10)`
-/

namespace A287587.P16882286982483092947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A000124 (n + 9) - 10).toNat

end

end A287587.P16882286982483092947

/-!
# A287588: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks and between consecutive elements within the blocks are not larger than nine.

The programs for A287588, there is no canonical definition to state claims against.
-/

/-! ## A287588.P14765849541058918825

`A287417(A056000(n+6))`
-/

namespace A287588.P14765849541058918825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A056000 (n + 6)).toNat

end

end A287588.P14765849541058918825

/-! ## A287588.P6892731586253832122

`A287417(A051936(n+10)-1)`
-/

namespace A287588.P6892731586253832122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A051936 (n + 10) - 1).toNat

end

end A287588.P6892731586253832122

/-! ## A287588.P1014569059946214632

`A287417(A000096(n+9)-9)`
-/

namespace A287588.P1014569059946214632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A000096 (n + 9) - 9).toNat

end

end A287588.P1014569059946214632

/-! ## A287588.P4234671888020253407

`A287417(A000217(n+10)-10)`
-/

namespace A287588.P4234671888020253407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A000217 (n + 10) - 10).toNat

end

end A287588.P4234671888020253407

/-! ## A287588.P17384138213549584264

`A287417(A000124(n+10)-11)`
-/

namespace A287588.P17384138213549584264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A000124 (n + 10) - 11).toNat

end

end A287588.P17384138213549584264

/-!
# A287589: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks and between consecutive elements within the blocks are not larger than ten.

The programs for A287589, there is no canonical definition to state claims against.
-/

/-! ## A287589.P12980850945529019852

`A287417(eq[10, A025581(n)])`
-/

namespace A287589.P12980850945529019852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287589.P12980850945529019852

/-! ## A287589.P2083156847711933674

`A287417(eq[11, A193739(n)])`
-/

namespace A287589.P2083156847711933674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287589.P2083156847711933674

/-! ## A287589.P8632613037895520604

`A287417(A000096(n+10)-10)`
-/

namespace A287589.P8632613037895520604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A000096 (n + 10) - 10).toNat

end

end A287589.P8632613037895520604

/-! ## A287589.P3102366011683471186

`A287417(A000217(n+11)-11)`
-/

namespace A287589.P3102366011683471186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A000217 (n + 11) - 11).toNat

end

end A287589.P3102366011683471186

/-! ## A287589.P7431183981810682903

`A287417(A000124(n+11)-12)`
-/

namespace A287589.P7431183981810682903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (A000124 (n + 11) - 12).toNat

end

end A287589.P7431183981810682903

/-!
# A287590: Number of squarefree odd primitive abundant numbers with n prime factors.

The programs for A287590, there is no canonical definition to state claims against.
-/

/-! ## A287590.P14707022001645526204

`A029897(n)%A027861(A119819(n+1))`
-/

namespace A287590.P14707022001645526204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029897 n) (A027861 (A119819 (n + 1)).toNat)

end

end A287590.P14707022001645526204

/-! ## A287590.P13330917709784236534

`A220508(lcm(A167654(n), A188196(n+1)))`
-/

namespace A287590.P13330917709784236534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220508 (Int.lcm (A167654 n) (A188196 (n + 1)))

end

end A287590.P13330917709784236534

/-!
# A287591: Carmichael numbers k such that k-2 and k+2 are both primes.

The programs for A287591, there is no canonical definition to state claims against.
-/

/-! ## A287591.P2689979583431342688

`∩[A057942(n+1), A258801(n+1)]`
-/

namespace A287591.P2689979583431342688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287591.P2689979583431342688

/-! ## A287591.P17084856374946172190

`∩[A057942(n+1), A205947(n+1)]`
-/

namespace A287591.P17084856374946172190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287591.P17084856374946172190

/-!
# A287592: Number of connected induced subgraphs on the n-crown graph.

The programs for A287592, the canonical program `A287592.P6400644593006392230` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287592 has offset 0).

The definition of A287592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287592.P6400644593006392230

`(2^n-1)²-1/2*n*(2^(n+1)+n-7)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A287592

/-- `(2^n-1)²-1/2*n*(2^(n+1)+n-7)` -/
def P6400644593006392230.Spec : Prop :=
  ∀ n, P6400644593006392230.a n = (A287592 n : ℚ)

end A287592

/-!
# A287594: Number of independent vertex sets in the n-helm graph.

The programs for A287594, the canonical program `A287594.P913544811923215527` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287594 has offset 0).

The definition of A287594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287594.P913544811923215527

`2^n+A080040(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287594

/-- `2^n+A080040(n)` -/
def P913544811923215527.Spec : Prop :=
  ∀ n, P913544811923215527.a n = A287594 n

theorem P913544811923215527.correct : P913544811923215527.Spec := by
  intro n
  simp only [A287594]

end A287594

/-! ## A287594.P783764956773434842

`4*a(n-1)-2*a(n-2)-4*a(n-3)` with `a(0)=3, a(1)=4, a(2)=12`
-/

namespace A287594.P783764956773434842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 12] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) - 4 * a (n - 3)

end

end A287594.P783764956773434842

namespace A287594

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)` -/
def P783764956773434842.Spec : Prop :=
  ∀ n, P783764956773434842.a n = A287594 n

end A287594

/-! ## A287594.P10708360465510556980

`ogf((3-8x+2x^2)/(1-4x+2x^2+4x^3))`
-/

namespace A287594.P10708360465510556980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8, 2] [1, -4, 2, 4] n

end

end A287594.P10708360465510556980

namespace A287594

/-- `ogf((3-8x+2x^2)/(1-4x+2x^2+4x^3))` -/
def P10708360465510556980.Spec : Prop :=
  ∀ n, P10708360465510556980.a n = A287594 n

end A287594

/-! ## A287594.P14814436169512978737

`2^n+(1-sqrt(3))^n+(1+sqrt(3))^n`
-/

namespace A287594.P14814436169512978737
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) + (1 - Real.sqrt (3 : ℝ)) ^ n + (1 + Real.sqrt (3 : ℝ)) ^ n

end

end A287594.P14814436169512978737

namespace A287594

/-- `2^n+(1-sqrt(3))^n+(1+sqrt(3))^n` -/
def P14814436169512978737.Spec : Prop :=
  ∀ n, P14814436169512978737.a n = (A287594 n : ℝ)

end A287594

/-! ## A287594.P18136517125406314959

`xor(A054977(n), A124698(n))`
-/

namespace A287594.P18136517125406314959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054977 n) (A124698 n)

end

end A287594.P18136517125406314959

namespace A287594

/-- `xor(A054977(n), A124698(n))` -/
def P18136517125406314959.Spec : Prop :=
  ∀ n, P18136517125406314959.a n = A287594 n

end A287594

/-! ## A287594.P12223173551162537387

`Δ[A108898(n)+2^n]`
-/

namespace A287594.P12223173551162537387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108898 n + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287594.P12223173551162537387

namespace A287594

/-- `Δ[A108898(n)+2^n]` -/
def P12223173551162537387.Spec : Prop :=
  ∀ n, P12223173551162537387.a n = A287594 n

end A287594

/-! ## A287594.P1810055948589806935

`Δ[Δ[A052948(n)+2^n]]`
-/

namespace A287594.P1810055948589806935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n + (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287594.P1810055948589806935

namespace A287594

/-- `Δ[Δ[A052948(n)+2^n]]` -/
def P1810055948589806935.Spec : Prop :=
  ∀ n, P1810055948589806935.a n = A287594 n

end A287594

/-! ## A287594.P484905837559964575

`Δ[A293007(n+1)+2^n]`
-/

namespace A287594.P484905837559964575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293007 (n + 1) + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287594.P484905837559964575

namespace A287594

/-- `Δ[A293007(n+1)+2^n]` -/
def P484905837559964575.Spec : Prop :=
  ∀ n, P484905837559964575.a n = A287594 n

end A287594

/-! ## A287594.P14177294368435320601

`Δ[A028860(n+2)+2^n]`
-/

namespace A287594.P14177294368435320601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (n + 2) + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287594.P14177294368435320601

namespace A287594

/-- `Δ[A028860(n+2)+2^n]` -/
def P14177294368435320601.Spec : Prop :=
  ∀ n, P14177294368435320601.a n = A287594 n

end A287594

/-! ## A287594.P4962069597286226829

`Δ[2^n+2*A002605(n)]`
-/

namespace A287594.P4962069597286226829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + 2 * A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287594.P4962069597286226829

namespace A287594

/-- `Δ[2^n+2*A002605(n)]` -/
def P4962069597286226829.Spec : Prop :=
  ∀ n, P4962069597286226829.a n = A287594 n

end A287594

/-! ## A287594.P15834324461609779603

`Δ[A000051(n)+Δ[A052948(n)]]`
-/

namespace A287594.P15834324461609779603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287594.P15834324461609779603

namespace A287594

/-- `Δ[A000051(n)+Δ[A052948(n)]]` -/
def P15834324461609779603.Spec : Prop :=
  ∀ n, P15834324461609779603.a n = A287594 n

end A287594

/-! ## A287594.P9493855085516204929

`Δ[A000079(n)+Δ[A052948(n)]]`
-/

namespace A287594.P9493855085516204929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287594.P9493855085516204929

namespace A287594

/-- `Δ[A000079(n)+Δ[A052948(n)]]` -/
def P9493855085516204929.Spec : Prop :=
  ∀ n, P9493855085516204929.a n = A287594 n

end A287594

/-!
# A287595: Number of maximal matchings in the n X n grid graph.

The programs for A287595, there is no canonical definition to state claims against.
-/

/-! ## A287595.P17056615109486424263

`A288026((1-n)²+n²)`
-/

namespace A287595.P17056615109486424263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288026 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A287595.P17056615109486424263

/-!
# A287596: a(n) is the denominator of r(n), where r(n) = r(n-1) + r(n-2)/(2*(n-1)) with r(0) = 0, r(1) = 1.

The programs for A287596, there is no canonical definition to state claims against.
-/

/-! ## A287596.P10483008192836386104

`A320486(A268363(abs(1-n)))`
-/

namespace A287596.P10483008192836386104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (A268363 |1 - (n : ℤ)|.toNat).toNat

end

end A287596.P10483008192836386104

/-! ## A287596.P3602934343070027955

`A282193(A252464(n!)+1)`
-/

namespace A287596.P3602934343070027955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282193 (A252464 (Nat.factorial n) + 1).toNat

end

end A287596.P3602934343070027955

/-! ## A287596.P18228731337608232256

`A000010(∏[A340128(n+1)])`
-/

namespace A287596.P18228731337608232256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287596.P18228731337608232256

/-! ## A287596.P11667651575271519899

`A000010(A264152(n)/(n+1))`
-/

namespace A287596.P11667651575271519899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A264152 n : ℚ) / (n + 1 : ℚ))).toNat

end

end A287596.P11667651575271519899

/-!
# A287597: a(0) = 0, a(1) = 1; a(2*n) = n - a(a(n)), a(2*n+1) = a(a(n)) + a(a(n+1)).

The programs for A287597, there is no canonical definition to state claims against.
-/

/-! ## A287597.P16250472107693809153

`A287477(n)/A097031(A157153(2*n))`
-/

namespace A287597.P16250472107693809153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287477 n : ℚ) / (A097031 (A157153 (2 * n)).toNat : ℚ)

end

end A287597.P16250472107693809153

/-! ## A287597.P5137296324040417354

`A287477(n^A113949(A328887(n)))`
-/

namespace A287597.P5137296324040417354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287477 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A113949 (A328887 n).toNat : ℤ))).toNat

end

end A287597.P5137296324040417354

/-! ## A287597.P9719404737684163686

`gcd(A284019(A280412(n)), A287477(n))`
-/

namespace A287597.P9719404737684163686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A284019 (A280412 n).toNat) (A287477 n)

end

end A287597.P9719404737684163686

/-! ## A287597.P11248368006354951456

`and(A062157(A059966(n+1)), A287477(n))`
-/

namespace A287597.P11248368006354951456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062157 (A059966 (n + 1)).toNat) (A287477 n)

end

end A287597.P11248368006354951456

/-! ## A287597.P4119507000158517247

`A287477(n%A117588(A327642(n)))`
-/

namespace A287597.P4119507000158517247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287477 (Int.tmod (n : ℤ) (A117588 (A327642 n).toNat)).toNat

end

end A287597.P4119507000158517247

/-!
# A287598: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 307", based on the 5-celled von Neumann neighborhood.

The programs for A287598, there is no canonical definition to state claims against.
-/

/-! ## A287598.P6623334949359569909

`A287624(n)+A014108(A286829(n))`
-/

namespace A287598.P6623334949359569909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287624 n + A014108 (A286829 n).toNat

end

end A287598.P6623334949359569909

/-! ## A287598.P11955125681724157165

`A287624(n)-A014108(A287705(n))`
-/

namespace A287598.P11955125681724157165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287624 n - A014108 (A287705 n).toNat

end

end A287598.P11955125681724157165

/-! ## A287598.P17140332287238921842

`A287624(n)-A080224(A288334(n))`
-/

namespace A287598.P17140332287238921842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287624 n - A080224 (A288334 n).toNat

end

end A287598.P17140332287238921842

/-! ## A287598.P5246449999385922725

`A287624(n)-A102683(A286704(n))`
-/

namespace A287598.P5246449999385922725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287624 n - A102683 (A286704 n).toNat

end

end A287598.P5246449999385922725

/-! ## A287598.P133950081424386864

`A287624(A062399(n))`
-/

namespace A287598.P133950081424386864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287624 (A062399 n).toNat

end

end A287598.P133950081424386864

/-!
# A287599: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 307", based on the 5-celled von Neumann neighborhood.

The programs for A287599, there is no canonical definition to state claims against.
-/

/-! ## A287599.P1955229737352388161

`A287625(A062399(n))`
-/

namespace A287599.P1955229737352388161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287625 (A062399 n).toNat

end

end A287599.P1955229737352388161

/-! ## A287599.P15229961496613681411

`A287625(A120126(n))`
-/

namespace A287599.P15229961496613681411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287625 (A120126 n).toNat

end

end A287599.P15229961496613681411

/-! ## A287599.P14228702591908080392

`A154443(A287625(n))`
-/

namespace A287599.P14228702591908080392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154443 (A287625 n).toNat

end

end A287599.P14228702591908080392

/-! ## A287599.P17406567864247436672

`A287625(A351870(n))`
-/

namespace A287599.P17406567864247436672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287625 (A351870 n).toNat

end

end A287599.P17406567864247436672

/-! ## A287599.P12273413533667111583

`A287625(A004894(n+1))`
-/

namespace A287599.P12273413533667111583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287625 (A004894 (n + 1)).toNat

end

end A287599.P12273413533667111583

