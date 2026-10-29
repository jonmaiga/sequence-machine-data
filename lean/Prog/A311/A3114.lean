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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B004.C003
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A311400: Coordination sequence Gal.6.125.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311400, there is no canonical definition to state claims against.
-/

/-! ## A311400.P10867852560251866506

`A311428(n)+A162782(A315645(n))`
-/

namespace A311400.P10867852560251866506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311428 n + A162782 (A315645 n).toNat

end

end A311400.P10867852560251866506

/-! ## A311400.P11696355463712184263

`A311401(n)-A185284(A056960(n))`
-/

namespace A311400.P11696355463712184263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311401 n - A185284 (A056960 n).toNat

end

end A311400.P11696355463712184263

/-! ## A311400.P12768021541672579597

`A084618(A313907(n)+1)`
-/

namespace A311400.P12768021541672579597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084618 (A313907 n + 1).toNat

end

end A311400.P12768021541672579597

/-! ## A311400.P13396575081951427016

`A311401(A077168(n)-1)`
-/

namespace A311400.P13396575081951427016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311401 (A077168 n - 1).toNat

end

end A311400.P13396575081951427016

/-! ## A311400.P8877439490783869623

`A311401(A062399(n))`
-/

namespace A311400.P8877439490783869623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311401 (A062399 n).toNat

end

end A311400.P8877439490783869623

/-!
# A311401: Coordination sequence Gal.6.121.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311401, there is no canonical definition to state claims against.
-/

/-! ## A311401.P13187736924872324385

`A311792(n)-A007949(A031153(n+1))`
-/

namespace A311401.P13187736924872324385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311792 n - A007949 (A031153 (n + 1)).toNat

end

end A311401.P13187736924872324385

/-!
# A311402: Coordination sequence Gal.6.226.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311402, there is no canonical definition to state claims against.
-/

/-! ## A311402.P1927238984897986517

`A311160(n)+A162641(A134049(n))`
-/

namespace A311402.P1927238984897986517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311160 n + A162641 (A134049 n).toNat

end

end A311402.P1927238984897986517

/-! ## A311402.P17438579403490913037

`A311403(n)-A129333(A006927(n))`
-/

namespace A311402.P17438579403490913037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311403 n - A129333 (A006927 n).toNat

end

end A311402.P17438579403490913037

/-! ## A311402.P5916099255035302843

`A311403(n)-A185284(A008669(n))`
-/

namespace A311402.P5916099255035302843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311403 n - A185284 (A008669 n).toNat

end

end A311402.P5916099255035302843

/-! ## A311402.P11952212482693352909

`A311403(n)-A185284(A033098(n+1))`
-/

namespace A311402.P11952212482693352909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311403 n - A185284 (A033098 (n + 1)).toNat

end

end A311402.P11952212482693352909

/-! ## A311402.P3778725831322929791

`∏{e}[3^n, A311403(#)]`
-/

namespace A311402.P3778725831322929791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A311403 (Nat.factorization (f1 n) p)

end

end A311402.P3778725831322929791

/-!
# A311403: Coordination sequence Gal.6.222.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311403, there is no canonical definition to state claims against.
-/

/-! ## A311403.P15517483894980819273

`A311402(n)+A185284(A033098(n+1))`
-/

namespace A311403.P15517483894980819273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311402 n + A185284 (A033098 (n + 1)).toNat

end

end A311403.P15517483894980819273

/-! ## A311403.P5970024740551059921

`A311402(n)+A185284(A047363(2*n+1))`
-/

namespace A311403.P5970024740551059921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311402 n + A185284 (A047363 (2 * n + 1)).toNat

end

end A311403.P5970024740551059921

/-!
# A311404: Coordination sequence Gal.5.60.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311404, the canonical program `A311404.P16929994779130442920` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311404 has offset 0).

The definition of A311404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2388 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311404.P16929994779130442920

`A313119(n)-A313078(n)%A004277(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A311404

/-- `A313119(n)-A313078(n)%A004277(n)` -/
def P16929994779130442920.Spec : Prop :=
  ∀ n, P16929994779130442920.a n = A311404 n

theorem P16929994779130442920.correct : P16929994779130442920.Spec := by
  intro n
  simp only [A311404]

end A311404

/-! ## A311404.P16568436284970402791

`A311405(n)-A185264(A317082(n))`
-/

namespace A311404.P16568436284970402791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311405 n - A185264 (A317082 n).toNat

end

end A311404.P16568436284970402791

namespace A311404

/-- `A311405(n)-A185264(A317082(n))` -/
def P16568436284970402791.Spec : Prop :=
  ∀ n, P16568436284970402791.a n = A311404 n

end A311404

/-! ## A311404.P11133494489020838359

`A311405(n)-A107846(A082171(n+1))`
-/

namespace A311404.P11133494489020838359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311405 n - A107846 (A082171 (n + 1)).toNat

end

end A311404.P11133494489020838359

namespace A311404

/-- `A311405(n)-A107846(A082171(n+1))` -/
def P11133494489020838359.Spec : Prop :=
  ∀ n, P11133494489020838359.a n = A311404 n

end A311404

/-! ## A311404.P5792076658500498815

`A311405(n)-A185274(A077168(n+1))`
-/

namespace A311404.P5792076658500498815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311405 n - A185274 (A077168 (n + 1)).toNat

end

end A311404.P5792076658500498815

namespace A311404

/-- `A311405(n)-A185274(A077168(n+1))` -/
def P5792076658500498815.Spec : Prop :=
  ∀ n, P5792076658500498815.a n = A311404 n

end A311404

/-! ## A311404.P14507699599608741853

`A311405(A062399(n))`
-/

namespace A311404.P14507699599608741853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311405 (A062399 n).toNat

end

end A311404.P14507699599608741853

namespace A311404

/-- `A311405(A062399(n))` -/
def P14507699599608741853.Spec : Prop :=
  ∀ n, P14507699599608741853.a n = A311404 n

end A311404

/-!
# A311405: Coordination sequence Gal.5.56.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311405, there is no canonical definition to state claims against.
-/

/-! ## A311405.P13312859295286412507

`A311404(n)+A185264(A317082(n))`
-/

namespace A311405.P13312859295286412507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311404 n + A185264 (A317082 n).toNat

end

end A311405.P13312859295286412507

/-! ## A311405.P2361897243014179235

`xor(A045698(A286825(n)), A311201(n))`
-/

namespace A311405.P2361897243014179235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A045698 (A286825 n).toNat) (A311201 n)

end

end A311405.P2361897243014179235

/-! ## A311405.P1507044553365980567

`A311404(n)-(A185264(n)-A185264(A317082(n)))`
-/

namespace A311405.P1507044553365980567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311404 n - (A185264 n - A185264 (A317082 n).toNat)

end

end A311405.P1507044553365980567

/-!
# A311406: Coordination sequence Gal.5.243.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311406, there is no canonical definition to state claims against.
-/

/-! ## A311406.P14986874979119846894

`A311429(n)-A340006(A001405(n))`
-/

namespace A311406.P14986874979119846894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311429 n - A340006 (A001405 n).toNat

end

end A311406.P14986874979119846894

/-! ## A311406.P6399288577997781951

`A311843(n)-A341999(A000912(n))`
-/

namespace A311406.P6399288577997781951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n - A341999 (A000912 n).toNat

end

end A311406.P6399288577997781951

/-! ## A311406.P13135536299129967440

`A037817(A221925(n+1))+A008574(n)`
-/

namespace A311406.P13135536299129967440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A221925 (n + 1)).toNat + A008574 n

end

end A311406.P13135536299129967440

/-! ## A311406.P10597074466796237887

`A311421(n)-A122840(A052329(n+1))`
-/

namespace A311406.P10597074466796237887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311421 n - A122840 (A052329 (n + 1)).toNat

end

end A311406.P10597074466796237887

/-! ## A311406.P2003326671081865213

`A001597(A127348(n+1))%2+4*n`
-/

namespace A311406.P2003326671081865213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001597 (A127348 (n + 1)).toNat) 2 + (4 * n : ℤ)

end

end A311406.P2003326671081865213

/-!
# A311407: Coordination sequence Gal.5.105.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311407, there is no canonical definition to state claims against.
-/

/-! ## A311407.P3213810118860263751

`A311408(n)-∑[A107846(A002531(n))]`
-/

namespace A311407.P3213810118860263751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A002531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311408 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311407.P3213810118860263751

/-! ## A311407.P5793236094980791909

`A008706(n)-∑{e}[A000984(n), #]`
-/

namespace A311407.P5793236094980791909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A311407.P5793236094980791909

/-! ## A311407.P13320480887554522566

`round(A228297(n+1)+log2(A208813(n+1)))`
-/

namespace A311407.P13320480887554522566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A228297 (n + 1) : ℝ) + Real.logb 2 (A208813 (n + 1) : ℝ))

end

end A311407.P13320480887554522566

/-! ## A311407.P3103208671733710027

`A311408(n)-A089809(A156581(n))`
-/

namespace A311407.P3103208671733710027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311408 n - A089809 (A156581 n).toNat

end

end A311407.P3103208671733710027

/-! ## A311407.P7073852736506639501

`A311408(A062399(n))`
-/

namespace A311407.P7073852736506639501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311408 (A062399 n).toNat

end

end A311407.P7073852736506639501

/-!
# A311408: Coordination sequence Gal.5.101.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311408, there is no canonical definition to state claims against.
-/

/-! ## A311408.P18426866414981212068

`A311167(n)+A118006(A100100(n))`
-/

namespace A311408.P18426866414981212068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311167 n + A118006 (A100100 n).toNat

end

end A311408.P18426866414981212068

/-! ## A311408.P15651688030810079118

`A311171(n)+A003849(A115981(n+1))`
-/

namespace A311408.P15651688030810079118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311171 n + A003849 (A115981 (n + 1)).toNat

end

end A311408.P15651688030810079118

/-!
# A311409: Coordination sequence Gal.6.23.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311409, there is no canonical definition to state claims against.
-/

/-! ## A311409.P147049821882194487

`∑[A157720(9*n+4)]-∏{e}[n+1, #+1]`
-/

namespace A311409.P147049821882194487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157720 (9 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A311409.P147049821882194487

/-! ## A311409.P4416600275047929930

`A054519(n)+record[A302642(3*n+4)]`
-/

namespace A311409.P4416600275047929930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302642 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311409.P4416600275047929930

/-! ## A311409.P10283433946054101209

`A056239(A058396(n))+A054519(n)`
-/

namespace A311409.P10283433946054101209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A058396 n).toNat + A054519 n

end

end A311409.P10283433946054101209

/-! ## A311409.P15173523186593925760

`A301291(n)-A001221(A006253(n))`
-/

namespace A311409.P15173523186593925760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - A001221 (A006253 n).toNat

end

end A311409.P15173523186593925760

/-! ## A311409.P6122903194757572363

`A130245(A148584(n+1))+A042948(n)`
-/

namespace A311409.P6122903194757572363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A148584 (n + 1)).toNat + A042948 n

end

end A311409.P6122903194757572363

/-!
# A311410: Coordination sequence Gal.6.21.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311410, there is no canonical definition to state claims against.
-/

/-! ## A311410.P11832462437378916871

`lt[A301291(3*n), A371376(2*n+5)]+1+n`
-/

namespace A311410.P11832462437378916871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371376 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1 + n

end

end A311410.P11832462437378916871

/-! ## A311410.P5631220985491643025

`lt[A065713(3*n+2), A371376(2*n+5)]+1+n`
-/

namespace A311410.P5631220985491643025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065713 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371376 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1 + n

end

end A311410.P5631220985491643025

/-! ## A311410.P3397695548534188745

`A311210(n)+A081603(A204270(n+1))`
-/

namespace A311410.P3397695548534188745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311210 n + A081603 (A204270 (n + 1)).toNat

end

end A311410.P3397695548534188745

/-! ## A311410.P9798033430422226426

`A008706(n)-A000120(A102011(n+1))`
-/

namespace A311410.P9798033430422226426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A000120 (A102011 (n + 1)).toNat

end

end A311410.P9798033430422226426

/-! ## A311410.P15703792481107790606

`A345197(A018819(2*(n+2)))+A301301(n)`
-/

namespace A311410.P15703792481107790606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345197 (A018819 (2 * (n + 2))).toNat + A301301 n

end

end A311410.P15703792481107790606

/-!
# A311411: Coordination sequence Gal.6.25.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311411, there is no canonical definition to state claims against.
-/

/-! ## A311411.P5681613956193101497

`A311563(n)+A016371(A002618(n+1))`
-/

namespace A311411.P5681613956193101497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311563 n + A016371 (A002618 (n + 1)).toNat

end

end A311411.P5681613956193101497

/-! ## A311411.P9548416998825114507

`A314940(n)-A001222(A065848(n+1))`
-/

namespace A311411.P9548416998825114507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314940 n - A001222 (A065848 (n + 1)).toNat

end

end A311411.P9548416998825114507

/-! ## A311411.P748351106071798501

`A024898(3*n+1)-A293896(A286892(n+4))`
-/

namespace A311411.P748351106071798501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (3 * n + 1) - A293896 (A286892 (n + 4)).toNat

end

end A311411.P748351106071798501

/-! ## A311411.P13948607428393068461

`A181796(A110128(n))+A008585(n)`
-/

namespace A311411.P13948607428393068461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (A110128 n).toNat + A008585 n

end

end A311411.P13948607428393068461

/-!
# A311412: Coordination sequence Gal.6.178.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311412, there is no canonical definition to state claims against.
-/

/-! ## A311412.P3221620423197020676

`A311413(n*Δ[A077168(n)])`
-/

namespace A311412.P3221620423197020676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311413 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A311412.P3221620423197020676

/-! ## A311412.P9697467974634102364

`A311413(n)^Δ[A077168(n)]`
-/

namespace A311412.P9697467974634102364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311413 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A311412.P9697467974634102364

/-! ## A311412.P978343922534047578

`A311413(A077168(n+1)-2)`
-/

namespace A311412.P978343922534047578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311413 (A077168 (n + 1) - 2).toNat

end

end A311412.P978343922534047578

/-! ## A311412.P11038863348731176876

`A311413(n)%Δ[A353616(2*n+1)]`
-/

namespace A311412.P11038863348731176876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353616 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311413 n) (f1 (n + 1) - f1 n)

end

end A311412.P11038863348731176876

/-! ## A311412.P12314020022487286871

`A311413(n)^A009194(A001001(3*n+5))`
-/

namespace A311412.P12314020022487286871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311413 n : ℚ) ^ (A009194 (A001001 (3 * n + 5)).toNat : ℤ)

end

end A311412.P12314020022487286871

/-!
# A311414: Coordination sequence Gal.6.142.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311414, there is no canonical definition to state claims against.
-/

/-! ## A311414.P10584300979862797455

`A084618(A313914(n)+1)`
-/

namespace A311414.P10584300979862797455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084618 (A313914 n + 1).toNat

end

end A311414.P10584300979862797455

/-! ## A311414.P16048607350851636428

`A311415(n)-A185284(A022554(n+2))`
-/

namespace A311414.P16048607350851636428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311415 n - A185284 (A022554 (n + 2)).toNat

end

end A311414.P16048607350851636428

/-! ## A311414.P13447625176156929374

`A311415(n)-A342753(A310131(2*n+1))`
-/

namespace A311414.P13447625176156929374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311415 n - A342753 (A310131 (2 * n + 1)).toNat

end

end A311414.P13447625176156929374

/-! ## A311414.P18415669443861714766

`∏{e}[xor(-2, 3^n), A311415(#)]`
-/

namespace A311414.P18415669443861714766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-2) (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A311415 (Nat.factorization (f1 n).natAbs p)

end

end A311414.P18415669443861714766

/-! ## A311414.P3441670273493872352

`A311415(n)+A185012(A282511(n+1))`
-/

namespace A311414.P3441670273493872352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311415 n + A185012 (A282511 (n + 1)).toNat

end

end A311414.P3441670273493872352

/-!
# A311415: Coordination sequence Gal.6.135.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311415, there is no canonical definition to state claims against.
-/

/-! ## A311415.P7361381691904697102

`A311239(n)+A287372(A113374(n))`
-/

namespace A311415.P7361381691904697102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311239 n + A287372 (A113374 n).toNat

end

end A311415.P7361381691904697102

/-!
# A311416: Coordination sequence Gal.4.48.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311416, the canonical program `A311416.P5256604560773231204` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311416 has offset 0).

The definition of A311416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311416.P5256604560773231204

`(A311570(n)+A311181(n))/2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A311416

/-- `(A311570(n)+A311181(n))/2` -/
def P5256604560773231204.Spec : Prop :=
  ∀ n, P5256604560773231204.a n = (A311416 n : ℚ)

end A311416

/-! ## A311416.P6011966581400793595

`A318516(A311570(n)+A311181(n))`
-/

namespace A311416.P6011966581400793595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A311570 n + A311181 n).toNat

end

end A311416.P6011966581400793595

namespace A311416

/-- `A318516(A311570(n)+A311181(n))` -/
def P6011966581400793595.Spec : Prop :=
  ∀ n, P6011966581400793595.a n = A311416 n

end A311416

/-! ## A311416.P9704852621975531278

`A318516(A318516(A311181(2*n))+A311181(n))`
-/

namespace A311416.P9704852621975531278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A318516 (A311181 (2 * n)).toNat + A311181 n).toNat

end

end A311416.P9704852621975531278

namespace A311416

/-- `A318516(A318516(A311181(2*n))+A311181(n))` -/
def P9704852621975531278.Spec : Prop :=
  ∀ n, P9704852621975531278.a n = A311416 n

end A311416

/-! ## A311416.P6016441820425781503

`A004525(A311570(n)+A311181(n))`
-/

namespace A311416.P6016441820425781503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311570 n + A311181 n).toNat

end

end A311416.P6016441820425781503

namespace A311416

/-- `A004525(A311570(n)+A311181(n))` -/
def P6016441820425781503.Spec : Prop :=
  ∀ n, P6016441820425781503.a n = A311416 n

end A311416

/-! ## A311416.P5173481406518551451

`A110654(A311570(n)+A311181(n))`
-/

namespace A311416.P5173481406518551451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A311570 n + A311181 n).toNat

end

end A311416.P5173481406518551451

namespace A311416

/-- `A110654(A311570(n)+A311181(n))` -/
def P5173481406518551451.Spec : Prop :=
  ∀ n, P5173481406518551451.a n = A311416 n

end A311416

/-! ## A311416.P12707559182714324647

`A008619(A311181(n)+A311570(n)-1)`
-/

namespace A311416.P12707559182714324647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311181 n + (A311570 n - 1)).toNat

end

end A311416.P12707559182714324647

namespace A311416

/-- `A008619(A311181(n)+A311570(n)-1)` -/
def P12707559182714324647.Spec : Prop :=
  ∀ n, P12707559182714324647.a n = A311416 n

end A311416

/-! ## A311416.P16868843046272055821

`A008619(A311181(n)-(1-A311570(n)))`
-/

namespace A311416.P16868843046272055821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311181 n - (1 - A311570 n)).toNat

end

end A311416.P16868843046272055821

namespace A311416

/-- `A008619(A311181(n)-(1-A311570(n)))` -/
def P16868843046272055821.Spec : Prop :=
  ∀ n, P16868843046272055821.a n = A311416 n

end A311416

/-! ## A311416.P10560229049898905415

`A110654(A311181(n)-(1-A311570(n)))`
-/

namespace A311416.P10560229049898905415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A311181 n - (1 - A311570 n)).toNat

end

end A311416.P10560229049898905415

namespace A311416

/-- `A110654(A311181(n)-(1-A311570(n)))` -/
def P10560229049898905415.Spec : Prop :=
  ∀ n, P10560229049898905415.a n = A311416 n

end A311416

/-! ## A311416.P9702428954096617153

`A123108(A311570(n)+A311181(n))`
-/

namespace A311416.P9702428954096617153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A311570 n + A311181 n).toNat

end

end A311416.P9702428954096617153

namespace A311416

/-- `A123108(A311570(n)+A311181(n))` -/
def P9702428954096617153.Spec : Prop :=
  ∀ n, P9702428954096617153.a n = A311416 n

end A311416

/-!
# A311417: Coordination sequence Gal.4.44.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311417, there is no canonical definition to state claims against.
-/

/-! ## A311417.P9164570662992466985

`A301291(n)-A091954(A185873(n+1))`
-/

namespace A311417.P9164570662992466985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - A091954 (A185873 (n + 1)).toNat

end

end A311417.P9164570662992466985

/-! ## A311417.P11757613406485792045

`A311416(n)+A185238(A002088(n))`
-/

namespace A311417.P11757613406485792045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311416 n + A185238 (A002088 n).toNat

end

end A311417.P11757613406485792045

/-!
# A311418: Coordination sequence Gal.6.459.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311418, there is no canonical definition to state claims against.
-/

/-! ## A311418.P16705111793851207060

`A311900(n)-A086831(A200713(n+1))`
-/

namespace A311418.P16705111793851207060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311900 n - A086831 (A200713 (n + 1)).toNat

end

end A311418.P16705111793851207060

/-! ## A311418.P15133456435057358371

`A073490(A001585(n))+A008574(n)`
-/

namespace A311418.P15133456435057358371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A001585 n).toNat + A008574 n

end

end A311418.P15133456435057358371

/-! ## A311418.P11368682697755117863

`A088205(A037956(n))+A008574(n)`
-/

namespace A311418.P11368682697755117863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088205 (A037956 n).toNat + A008574 n

end

end A311418.P11368682697755117863

/-! ## A311418.P10435411185887431444

`xor(A054907(A016116(n)), A311440(n))`
-/

namespace A311418.P10435411185887431444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054907 (A016116 n).toNat) (A311440 n)

end

end A311418.P10435411185887431444

/-! ## A311418.P14227949695534515752

`A313783(n)-A103502(A103521(n+1))`
-/

namespace A311418.P14227949695534515752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313783 n - A103502 (A103521 (n + 1)).toNat

end

end A311418.P14227949695534515752

/-!
# A311419: Coordination sequence Gal.5.233.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311419, there is no canonical definition to state claims against.
-/

/-! ## A311419.P9307311521292636926

`A342515(2*A342527(2*n+1))`
-/

namespace A311419.P9307311521292636926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (2 * A342527 (2 * n + 1)).toNat

end

end A311419.P9307311521292636926

/-! ## A311419.P12388224874926381226

`A008574(n)+A001878(A022493(n))`
-/

namespace A311419.P12388224874926381226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001878 (A022493 n).toNat

end

end A311419.P12388224874926381226

/-! ## A311419.P5370821200148749374

`and(A008706(n)-A001222(A150992(n)), -3)`
-/

namespace A311419.P5370821200148749374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008706 n - A001222 (A150992 n).toNat) (-3)

end

end A311419.P5370821200148749374

/-! ## A311419.P14400154309497225031

`A351227(3*n+1)+A137921(A279565(n))`
-/

namespace A311419.P14400154309497225031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351227 (3 * n + 1) + A137921 (A279565 n).toNat

end

end A311419.P14400154309497225031

/-! ## A311419.P16544010738204419845

`A319995(A220810(3*n+5))+A008574(n)`
-/

namespace A311419.P16544010738204419845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (A220810 (3 * n + 5)).toNat + A008574 n

end

end A311419.P16544010738204419845

/-!
# A311420: Coordination sequence Gal.5.182.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311420, the canonical program `A311420.P358613710613374851` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311420 has offset 0).

The definition of A311420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311420.P17539440503281562089

`A314239(n)-A047273(n+1)`
-/

namespace A311420.P17539440503281562089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314239 n - A047273 (n + 1)

end

end A311420.P17539440503281562089

namespace A311420

/-- `A314239(n)-A047273(n+1)` -/
def P17539440503281562089.Spec : Prop :=
  ∀ n, P17539440503281562089.a n = A311420 n

theorem P17539440503281562089.correct : P17539440503281562089.Spec := by
  intro n
  simp only [A311420, Nat.add_sub_cancel, A311420.P17539440503281562089.a, A311420.P358613710613374851.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A047273, A047273.P5050912492785340480.a, A314149, A314149.P1429782019199352520.a, A314239, A314239.P6616137567385777595.a, A008592, A008592.P4981059802862696142.a, A314837, A314837.P13056047557632493089.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311420

/-! ## A311420.P13153790080227032260

`A314239(n)-A004525(3*n)`
-/

namespace A311420.P13153790080227032260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314239 n - A004525 (3 * n)

end

end A311420.P13153790080227032260

namespace A311420

/-- `A314239(n)-A004525(3*n)` -/
def P13153790080227032260.Spec : Prop :=
  ∀ n, P13153790080227032260.a n = A311420 n

end A311420

/-! ## A311420.P10726383910057501993

`A004525(n)+A004525(A310520(n))+n`
-/

namespace A311420.P10726383910057501993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004525 (A310520 n).toNat + (n : ℤ))

end

end A311420.P10726383910057501993

namespace A311420

/-- `A004525(n)+A004525(A310520(n))+n` -/
def P10726383910057501993.Spec : Prop :=
  ∀ n, P10726383910057501993.a n = A311420 n

end A311420

/-! ## A311420.P17791104224771020122

`A004525(n)+A004396(A313918(n))`
-/

namespace A311420.P17791104224771020122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + A004396 (A313918 n).toNat

end

end A311420.P17791104224771020122

namespace A311420

/-- `A004525(n)+A004396(A313918(n))` -/
def P17791104224771020122.Spec : Prop :=
  ∀ n, P17791104224771020122.a n = A311420 n

end A311420

/-! ## A311420.P358613710613374851

`A004525(n)+A004396(A314149(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A311420

/-- `A004525(n)+A004396(A314149(n))` -/
def P358613710613374851.Spec : Prop :=
  ∀ n, P358613710613374851.a n = A311420 n

theorem P358613710613374851.correct : P358613710613374851.Spec := by
  intro n
  simp only [A311420]

end A311420

/-! ## A311420.P16818563751190840627

`A004525(n)+A004396(A314210(n))`
-/

namespace A311420.P16818563751190840627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + A004396 (A314210 n).toNat

end

end A311420.P16818563751190840627

namespace A311420

/-- `A004525(n)+A004396(A314210(n))` -/
def P16818563751190840627.Spec : Prop :=
  ∀ n, P16818563751190840627.a n = A311420 n

end A311420

/-!
# A311421: Coordination sequence Gal.6.117.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311421, there is no canonical definition to state claims against.
-/

/-! ## A311421.P8790413151960896041

`A311431(n)-A180160(A002531(n))`
-/

namespace A311421.P8790413151960896041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311431 n - A180160 (A002531 n).toNat

end

end A311421.P8790413151960896041

/-! ## A311421.P10040732140411120608

`A037817(A193146(2*n))+A008574(n)`
-/

namespace A311421.P10040732140411120608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A193146 (2 * n)).toNat + A008574 n

end

end A311421.P10040732140411120608

/-! ## A311421.P15288576112964097583

`A070939(A319003(n))+3*n`
-/

namespace A311421.P15288576112964097583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A319003 n).toNat + (3 * n : ℤ)

end

end A311421.P15288576112964097583

/-! ## A311421.P11568456053154697766

`A160755(A312060(n))`
-/

namespace A311421.P11568456053154697766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A312060 n).toNat

end

end A311421.P11568456053154697766

/-!
# A311422: Coordination sequence Gal.6.116.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311422, there is no canonical definition to state claims against.
-/

/-! ## A311422.P18284821091430800219

`A000196(A311434(n)*A314669(n))`
-/

namespace A311422.P18284821091430800219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A311434 n * A314669 n).toNat

end

end A311422.P18284821091430800219

/-! ## A311422.P13933972722603666572

`A033676(A311434(n)*A314669(n))`
-/

namespace A311422.P13933972722603666572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A311434 n * A314669 n).toNat

end

end A311422.P13933972722603666572

/-! ## A311422.P10556803359908622513

`A311801(n)-A324824(A141348(n+3))`
-/

namespace A311422.P10556803359908622513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311801 n - A324824 (A141348 (n + 3)).toNat

end

end A311422.P10556803359908622513

/-! ## A311422.P14232319041078327148

`A311804(n)-A162782(A310393(n))`
-/

namespace A311422.P14232319041078327148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311804 n - A162782 (A310393 n).toNat

end

end A311422.P14232319041078327148

/-! ## A311422.P2372151472750949409

`A004396(A038130(n))^A001222(A075058(n))`
-/

namespace A311422.P2372151472750949409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004396 (A038130 n).toNat : ℚ) ^ (A001222 (A075058 n).toNat : ℤ)

end

end A311422.P2372151472750949409

/-!
# A311423: Coordination sequence Gal.6.218.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311423, there is no canonical definition to state claims against.
-/

/-! ## A311423.P8434935115131417923

`A001221(A326076(n))+abs(1-4*n)`
-/

namespace A311423.P8434935115131417923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A326076 n).toNat + |1 - (4 * n : ℤ)|

end

end A311423.P8434935115131417923

/-! ## A311423.P17501853145121049971

`A008574(n)+A005087(A036591(n))`
-/

namespace A311423.P17501853145121049971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005087 (A036591 n).toNat

end

end A311423.P17501853145121049971

/-! ## A311423.P12558695269504783788

`A106799(A339293(n+1))+A008574(n)`
-/

namespace A311423.P12558695269504783788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (A339293 (n + 1)).toNat + A008574 n

end

end A311423.P12558695269504783788

/-! ## A311423.P17226891640614118710

`A106799(A339293(n+1))+A008486(n)+n`
-/

namespace A311423.P17226891640614118710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (A339293 (n + 1)).toNat + (A008486 n + (n : ℤ))

end

end A311423.P17226891640614118710

/-! ## A311423.P82728519645192466

`A106799(A339293(n+1))+A008458(n)-2*n`
-/

namespace A311423.P82728519645192466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (A339293 (n + 1)).toNat + (A008458 n - (2 * n : ℤ))

end

end A311423.P82728519645192466

/-!
# A311424: Coordination sequence Gal.6.217.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311424, there is no canonical definition to state claims against.
-/

/-! ## A311424.P901696371335706103

`A008574(n)+A000196(A145816(n+1))`
-/

namespace A311424.P901696371335706103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A000196 (A145816 (n + 1)).toNat

end

end A311424.P901696371335706103

/-! ## A311424.P9979275245491583486

`A004525(A022144(n))+A000196(A145816(n+1))`
-/

namespace A311424.P9979275245491583486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A022144 n).toNat + A000196 (A145816 (n + 1)).toNat

end

end A311424.P9979275245491583486

/-! ## A311424.P6636426181285037320

`A037800(p?[A298146(n+1)])+A008574(n)`
-/

namespace A311424.P6636426181285037320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A008574 n

end

end A311424.P6636426181285037320

/-! ## A311424.P3398393969018039630

`A311427(n)-A318673(A013618(n))`
-/

namespace A311424.P3398393969018039630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311427 n - A318673 (A013618 n).toNat

end

end A311424.P3398393969018039630

/-! ## A311424.P13821933182776833131

`A076489(A154327(n)+n)+A008574(n)`
-/

namespace A311424.P13821933182776833131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A154327 n + (n : ℤ)).toNat + A008574 n

end

end A311424.P13821933182776833131

/-!
# A311425: Coordination sequence Gal.5.52.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311425, the canonical program `A311425.P6783800476576581403` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311425 has offset 0).

The definition of A311425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311425.P6783800476576581403

`A315495(n)-A047363(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A311425

/-- `A315495(n)-A047363(n+1)` -/
def P6783800476576581403.Spec : Prop :=
  ∀ n, P6783800476576581403.a n = A311425 n

theorem P6783800476576581403.correct : P6783800476576581403.Spec := by
  intro n
  simp only [A311425]

end A311425

/-! ## A311425.P15325480518768804095

`A028310(n)+A315495(n)-A072154(n)`
-/

namespace A311425.P15325480518768804095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A315495 n - A072154 n)

end

end A311425.P15325480518768804095

namespace A311425

/-- `A028310(n)+A315495(n)-A072154(n)` -/
def P15325480518768804095.Spec : Prop :=
  ∀ n, P15325480518768804095.a n = A311425 n

end A311425

/-! ## A311425.P9728953058642474470

`A028310(n-(A072154(n)-A315495(n)))`
-/

namespace A311425.P9728953058642474470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - (A072154 n - A315495 n)).toNat

end

end A311425.P9728953058642474470

namespace A311425

/-- `A028310(n-(A072154(n)-A315495(n)))` -/
def P9728953058642474470.Spec : Prop :=
  ∀ n, P9728953058642474470.a n = A311425 n

end A311425

/-! ## A311425.P6142657470935083786

`A047486(n+1)+A315495(n)-A008585(n)`
-/

namespace A311425.P6142657470935083786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A315495 n - A008585 n)

end

end A311425.P6142657470935083786

namespace A311425

/-- `A047486(n+1)+A315495(n)-A008585(n)` -/
def P6142657470935083786.Spec : Prop :=
  ∀ n, P6142657470935083786.a n = A311425 n

end A311425

/-! ## A311425.P4261002171470711912

`A008486(n)+A301718(n)-A313026(n)`
-/

namespace A311425.P4261002171470711912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A301718 n - A313026 n)

end

end A311425.P4261002171470711912

namespace A311425

/-- `A008486(n)+A301718(n)-A313026(n)` -/
def P4261002171470711912.Spec : Prop :=
  ∀ n, P4261002171470711912.a n = A311425 n

end A311425

/-! ## A311425.P17535001641862663069

`A047486(n+1)+A004525(A315214(n))`
-/

namespace A311425.P17535001641862663069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + A004525 (A315214 n).toNat

end

end A311425.P17535001641862663069

namespace A311425

/-- `A047486(n+1)+A004525(A315214(n))` -/
def P17535001641862663069.Spec : Prop :=
  ∀ n, P17535001641862663069.a n = A311425 n

end A311425

/-!
# A311426: Coordination sequence Gal.6.115.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311426, the canonical program `A311426.P12408021461851380809` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311426 has offset 0).

The definition of A311426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2611 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311426.P12408021461851380809

`A301291(n)-A004396(A004525(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A311426

/-- `A301291(n)-A004396(A004525(n))` -/
def P12408021461851380809.Spec : Prop :=
  ∀ n, P12408021461851380809.a n = A311426 n

theorem P12408021461851380809.correct : P12408021461851380809.Spec := by
  intro n
  simp only [A311426]

end A311426

/-! ## A311426.P1654791315877103310

`A004525(n)+A008574(n)-A004396(A004525(n))`
-/

namespace A311426.P1654791315877103310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A008574 n - A004396 (A004525 n).toNat)

end

end A311426.P1654791315877103310

namespace A311426

/-- `A004525(n)+A008574(n)-A004396(A004525(n))` -/
def P1654791315877103310.Spec : Prop :=
  ∀ n, P1654791315877103310.a n = A311426 n

end A311426

/-! ## A311426.P17898747014505322913

`A311924(n)-Δ[floor(C(n, 2)/6)]`
-/

namespace A311426.P17898747014505322913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n - (f1 (n + 1) - f1 n)

end

end A311426.P17898747014505322913

namespace A311426

/-- `A311924(n)-Δ[floor(C(n, 2)/6)]` -/
def P17898747014505322913.Spec : Prop :=
  ∀ n, P17898747014505322913.a n = A311426 n

end A311426

/-! ## A311426.P13489948924044563771

`A008458(n)+A008576(n)-A314830(n)`
-/

namespace A311426.P13489948924044563771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A314830 n)

end

end A311426.P13489948924044563771

namespace A311426

/-- `A008458(n)+A008576(n)-A314830(n)` -/
def P13489948924044563771.Spec : Prop :=
  ∀ n, P13489948924044563771.a n = A311426 n

end A311426

/-! ## A311426.P13840311119534674936

`A004525(n)+A313099(n)-n`
-/

namespace A311426.P13840311119534674936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313099 n - (n : ℤ))

end

end A311426.P13840311119534674936

namespace A311426

/-- `A004525(n)+A313099(n)-n` -/
def P13840311119534674936.Spec : Prop :=
  ∀ n, P13840311119534674936.a n = A311426 n

end A311426

/-! ## A311426.P16534654375834905511

`abs(A008591(n)-A313693(n))`
-/

namespace A311426.P16534654375834905511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A313693 n|

end

end A311426.P16534654375834905511

namespace A311426

/-- `abs(A008591(n)-A313693(n))` -/
def P16534654375834905511.Spec : Prop :=
  ∀ n, P16534654375834905511.a n = A311426 n

end A311426

/-! ## A311426.P9779656903701404286

`abs(A008592(n)-(A313693(n)+n))`
-/

namespace A311426.P9779656903701404286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A313693 n + (n : ℤ))|

end

end A311426.P9779656903701404286

namespace A311426

/-- `abs(A008592(n)-(A313693(n)+n))` -/
def P9779656903701404286.Spec : Prop :=
  ∀ n, P9779656903701404286.a n = A311426 n

end A311426

/-! ## A311426.P17520210632770226268

`A008458(n)+A008486(n)-A313693(n)`
-/

namespace A311426.P17520210632770226268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313693 n)

end

end A311426.P17520210632770226268

namespace A311426

/-- `A008458(n)+A008486(n)-A313693(n)` -/
def P17520210632770226268.Spec : Prop :=
  ∀ n, P17520210632770226268.a n = A311426 n

end A311426

/-! ## A311426.P4068389786037146802

`A315415(n)-(A128834(n)+n)`
-/

namespace A311426.P4068389786037146802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315415 n - (A128834 n + (n : ℤ))

end

end A311426.P4068389786037146802

namespace A311426

/-- `A315415(n)-(A128834(n)+n)` -/
def P4068389786037146802.Spec : Prop :=
  ∀ n, P4068389786037146802.a n = A311426 n

end A311426

/-! ## A311426.P5368266157768626738

`A313781(n)-n`
-/

namespace A311426.P5368266157768626738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313781 n - (n : ℤ)

end

end A311426.P5368266157768626738

namespace A311426

/-- `A313781(n)-n` -/
def P5368266157768626738.Spec : Prop :=
  ∀ n, P5368266157768626738.a n = A311426 n

theorem P5368266157768626738.correct : P5368266157768626738.Spec := by
  intro n
  simp only [A311426, Nat.add_sub_cancel, A311426.P5368266157768626738.a, A311426.P12408021461851380809.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A301291, A301291.P14013868135471218190.a, A313781, A313781.P3283423518407474942.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311426

/-! ## A311426.P6057938643929417002

`A004525(A311475(n))+2*n`
-/

namespace A311426.P6057938643929417002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311475 n).toNat + (2 * n : ℤ)

end

end A311426.P6057938643929417002

namespace A311426

/-- `A004525(A311475(n))+2*n` -/
def P6057938643929417002.Spec : Prop :=
  ∀ n, P6057938643929417002.a n = A311426 n

end A311426

/-! ## A311426.P14177224131140737578

`A314144(n)-comp[A113802(n+1)]`
-/

namespace A311426.P14177224131140737578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113802 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314144 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A311426.P14177224131140737578

namespace A311426

/-- `A314144(n)-comp[A113802(n+1)]` -/
def P14177224131140737578.Spec : Prop :=
  ∀ n, P14177224131140737578.a n = A311426 n

end A311426

/-! ## A311426.P762310193927804436

`A314159(n)-A042965(n+1)`
-/

namespace A311426.P762310193927804436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314159 n - A042965 (n + 1)

end

end A311426.P762310193927804436

namespace A311426

/-- `A314159(n)-A042965(n+1)` -/
def P762310193927804436.Spec : Prop :=
  ∀ n, P762310193927804436.a n = A311426 n

end A311426

/-! ## A311426.P15720278205841492746

`A314159(n)-A004396(2*n)`
-/

namespace A311426.P15720278205841492746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314159 n - A004396 (2 * n)

end

end A311426.P15720278205841492746

namespace A311426

/-- `A314159(n)-A004396(2*n)` -/
def P15720278205841492746.Spec : Prop :=
  ∀ n, P15720278205841492746.a n = A311426 n

end A311426

/-! ## A311426.P10487637788525040521

`A008576(n)+A314159(n)-A008574(n)`
-/

namespace A311426.P10487637788525040521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314159 n - A008574 n)

end

end A311426.P10487637788525040521

namespace A311426

/-- `A008576(n)+A314159(n)-A008574(n)` -/
def P10487637788525040521.Spec : Prop :=
  ∀ n, P10487637788525040521.a n = A311426 n

end A311426

/-! ## A311426.P5941110539070915661

`A008706(n)+A313717(n)-A315741(n)`
-/

namespace A311426.P5941110539070915661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A313717 n - A315741 n)

end

end A311426.P5941110539070915661

namespace A311426

/-- `A008706(n)+A313717(n)-A315741(n)` -/
def P5941110539070915661.Spec : Prop :=
  ∀ n, P5941110539070915661.a n = A311426 n

end A311426

/-! ## A311426.P15296638147365181668

`A314240(n)-A047273(n+1)`
-/

namespace A311426.P15296638147365181668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 n - A047273 (n + 1)

end

end A311426.P15296638147365181668

namespace A311426

/-- `A314240(n)-A047273(n+1)` -/
def P15296638147365181668.Spec : Prop :=
  ∀ n, P15296638147365181668.a n = A311426 n

theorem P15296638147365181668.correct : P15296638147365181668.Spec := by
  intro n
  simp only [A311426, Nat.add_sub_cancel, A311426.P15296638147365181668.a, A311426.P12408021461851380809.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A047273, A047273.P5050912492785340480.a, A301291, A301291.P14013868135471218190.a, A314240, A314240.P18428589485690285850.a, A313099, A313099.P14754823964277209654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311426

/-! ## A311426.P14619251227356923105

`A314240(n)-(Δ[A011848(n)]+n)`
-/

namespace A311426.P14619251227356923105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 n - (f1 (n + 1) - f1 n + (n : ℤ))

end

end A311426.P14619251227356923105

namespace A311426

/-- `A314240(n)-(Δ[A011848(n)]+n)` -/
def P14619251227356923105.Spec : Prop :=
  ∀ n, P14619251227356923105.a n = A311426 n

end A311426

/-! ## A311426.P14214745115794706817

`abs(10*n-A315751(n))`
-/

namespace A311426.P14214745115794706817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315751 n|

end

end A311426.P14214745115794706817

namespace A311426

/-- `abs(10*n-A315751(n))` -/
def P14214745115794706817.Spec : Prop :=
  ∀ n, P14214745115794706817.a n = A311426 n

end A311426

/-! ## A311426.P1277514635629432478

`abs(A008593(n)-(A315751(n)+n))`
-/

namespace A311426.P1277514635629432478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A315751 n + (n : ℤ))|

end

end A311426.P1277514635629432478

namespace A311426

/-- `abs(A008593(n)-(A315751(n)+n))` -/
def P1277514635629432478.Spec : Prop :=
  ∀ n, P1277514635629432478.a n = A311426 n

end A311426

/-!
# A311427: Coordination sequence Gal.5.51.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311427, there is no canonical definition to state claims against.
-/

/-! ## A311427.P8067563820897057599

`A007095(A095201(4*n+3))+comp[2*(n+1)]`
-/

namespace A311427.P8067563820897057599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A095201 (4 * n + 3)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A311427.P8067563820897057599

/-! ## A311427.P917410812741688473

`A293137(A005899(n)+A309077(2*(n+1))+∑[n]-2)`
-/

namespace A311427.P917410812741688473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A005899 n + (A309077 (2 * (n + 1)) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2))).toNat

end

end A311427.P917410812741688473

/-! ## A311427.P17436452357790253512

`A014682(A130824(n))+A007095(A095201(4*n+3))`
-/

namespace A311427.P17436452357790253512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A130824 n).toNat + A007095 (A095201 (4 * n + 3)).toNat

end

end A311427.P17436452357790253512

/-! ## A311427.P1203737500007482951

`A204164(A174371(n))`
-/

namespace A311427.P1203737500007482951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A174371 n).toNat

end

end A311427.P1203737500007482951

/-! ## A311427.P5478620484977672205

`A214857(3*n+1)-A246127(A246157(2*n+3))`
-/

namespace A311427.P5478620484977672205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 (3 * n + 1) - A246127 (A246157 (2 * n + 3)).toNat

end

end A311427.P5478620484977672205

/-!
# A311428: Coordination sequence Gal.6.144.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311428, there is no canonical definition to state claims against.
-/

/-! ## A311428.P7880569791642584524

`A311426(n)+A025441(Δ[A002062(n)])`
-/

namespace A311428.P7880569791642584524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311426 n + A025441 (f1 (n + 1) - f1 n).toNat

end

end A311428.P7880569791642584524

/-! ## A311428.P12006514759607120225

`A311400(n)-A162782(A315645(n))`
-/

namespace A311428.P12006514759607120225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311400 n - A162782 (A315645 n).toNat

end

end A311428.P12006514759607120225

/-! ## A311428.P5086927844218293305

`A311429(n)-A000007(A008886(n))`
-/

namespace A311428.P5086927844218293305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311429 n - A000007 (A008886 n).toNat

end

end A311428.P5086927844218293305

/-! ## A311428.P5526761486912414104

`A311429(n)-A178798(A052330(n))`
-/

namespace A311428.P5526761486912414104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311429 n - A178798 (A052330 n).toNat

end

end A311428.P5526761486912414104

/-!
# A311429: Coordination sequence Gal.6.137.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311429, there is no canonical definition to state claims against.
-/

/-! ## A311429.P2147503417324470142

`A311401(n)-A162782(A315645(n))`
-/

namespace A311429.P2147503417324470142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311401 n - A162782 (A315645 n).toNat

end

end A311429.P2147503417324470142

/-!
# A311430: Coordination sequence Gal.6.240.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311430, the canonical program `A311430.P10392638198592284384` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311430 has offset 0).

The definition of A311430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311430.P10392638198592284384

`A314670(n)-A134667(A004525(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A311430

/-- `A314670(n)-A134667(A004525(n))` -/
def P10392638198592284384.Spec : Prop :=
  ∀ n, P10392638198592284384.a n = A311430 n

theorem P10392638198592284384.correct : P10392638198592284384.Spec := by
  intro n
  simp only [A311430]

end A311430

/-! ## A311430.P3261467185631382194

`A311426(n)+A102681(A007909(n))`
-/

namespace A311430.P3261467185631382194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311426 n + A102681 (A007909 n).toNat

end

end A311430.P3261467185631382194

namespace A311430

/-- `A311426(n)+A102681(A007909(n))` -/
def P3261467185631382194.Spec : Prop :=
  ∀ n, P3261467185631382194.a n = A311430 n

end A311430

/-! ## A311430.P2826447545999934131

`A311431(n)-A067898(A282308(n))`
-/

namespace A311430.P2826447545999934131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311431 n - A067898 (A282308 n).toNat

end

end A311430.P2826447545999934131

namespace A311430

/-- `A311431(n)-A067898(A282308(n))` -/
def P2826447545999934131.Spec : Prop :=
  ∀ n, P2826447545999934131.a n = A311430 n

end A311430

/-! ## A311430.P16997807828705905211

`A311431(n)-A185264(A317082(n))`
-/

namespace A311430.P16997807828705905211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311431 n - A185264 (A317082 n).toNat

end

end A311430.P16997807828705905211

namespace A311430

/-- `A311431(n)-A185264(A317082(n))` -/
def P16997807828705905211.Spec : Prop :=
  ∀ n, P16997807828705905211.a n = A311430 n

end A311430

/-! ## A311430.P15159015416123876448

`A311431(A062399(n))`
-/

namespace A311430.P15159015416123876448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311431 (A062399 n).toNat

end

end A311430.P15159015416123876448

namespace A311430

/-- `A311431(A062399(n))` -/
def P15159015416123876448.Spec : Prop :=
  ∀ n, P15159015416123876448.a n = A311430 n

end A311430

/-!
# A311431: Coordination sequence Gal.6.235.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311431, there is no canonical definition to state claims against.
-/

/-! ## A311431.P12514190559990029129

`A311421(n)+A180160(A002531(n))`
-/

namespace A311431.P12514190559990029129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311421 n + A180160 (A002531 n).toNat

end

end A311431.P12514190559990029129

/-! ## A311431.P8678873399119904344

`A180160(A002531(n))+A008574(n)+A004526(A216672(n+1))`
-/

namespace A311431.P8678873399119904344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (A002531 n).toNat + (A008574 n + A004526 (A216672 (n + 1)).toNat)

end

end A311431.P8678873399119904344

/-! ## A311431.P13985164589738690268

`A273872(A187829(n+1))-1+n`
-/

namespace A311431.P13985164589738690268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273872 (A187829 (n + 1)).toNat - 1 + (n : ℤ)

end

end A311431.P13985164589738690268

/-! ## A311431.P6205417885060501292

`A301697(n)-A029837(A147655(n))`
-/

namespace A311431.P6205417885060501292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A029837 (A147655 n).toNat

end

end A311431.P6205417885060501292

/-! ## A311431.P8536503167791916572

`xor(A280046(A276086(n)), A311145(n))`
-/

namespace A311431.P8536503167791916572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A280046 (A276086 n).toNat) (A311145 n)

end

end A311431.P8536503167791916572

/-!
# A311432: Coordination sequence Gal.6.412.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311432, there is no canonical definition to state claims against.
-/

/-! ## A311432.P11119376647088071100

`A037816(A137495(n))+A008574(n)`
-/

namespace A311432.P11119376647088071100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (A137495 n).toNat + A008574 n

end

end A311432.P11119376647088071100

/-! ## A311432.P4538452607901824600

`A117479(A291655(n))+A008574(n)`
-/

namespace A311432.P4538452607901824600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117479 (A291655 n).toNat + A008574 n

end

end A311432.P4538452607901824600

/-! ## A311432.P12543495097327558411

`A226722(2*n+1)+A122840(A223317(2*n+1))`
-/

namespace A311432.P12543495097327558411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226722 (2 * n + 1) + A122840 (A223317 (2 * n + 1)).toNat

end

end A311432.P12543495097327558411

/-! ## A311432.P17176014858666318985

`A279952(A000105(n))+A004277(2*n)`
-/

namespace A311432.P17176014858666318985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279952 (A000105 n).toNat + A004277 (2 * n)

end

end A311432.P17176014858666318985

/-! ## A311432.P11602958783270389621

`A072649(A180272(2*n))+2*n`
-/

namespace A311432.P11602958783270389621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A180272 (2 * n)).toNat + (2 * n : ℤ)

end

end A311432.P11602958783270389621

/-!
# A311433: Coordination sequence Gal.5.97.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311433, the canonical program `A311433.P1198720009371064807` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311433 has offset 0).

The definition of A311433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311433.P1198720009371064807

`A313100(n)-∑[A021913(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A311433

/-- `A313100(n)-∑[A021913(n)]` -/
def P1198720009371064807.Spec : Prop :=
  ∀ n, P1198720009371064807.a n = A311433 n

theorem P1198720009371064807.correct : P1198720009371064807.Spec := by
  intro n
  simp only [A311433]

end A311433

/-! ## A311433.P6257576548001107140

`A313100(n)-Δ[A011848(n)]`
-/

namespace A311433.P6257576548001107140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n - (f1 (n + 1) - f1 n)

end

end A311433.P6257576548001107140

namespace A311433

/-- `A313100(n)-Δ[A011848(n)]` -/
def P6257576548001107140.Spec : Prop :=
  ∀ n, P6257576548001107140.a n = A311433 n

end A311433

/-! ## A311433.P6004403843527277992

`A313100(n)-A004524(n+1)`
-/

namespace A311433.P6004403843527277992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n - A004524 (n + 1)

end

end A311433.P6004403843527277992

namespace A311433

/-- `A313100(n)-A004524(n+1)` -/
def P6004403843527277992.Spec : Prop :=
  ∀ n, P6004403843527277992.a n = A311433 n

end A311433

/-! ## A311433.P17636172828787589338

`A313100(n)-A201629(n)/2`
-/

namespace A311433.P17636172828787589338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A313100 n : ℚ) - (A201629 n : ℚ) / 2

end

end A311433.P17636172828787589338

namespace A311433

/-- `A313100(n)-A201629(n)/2` -/
def P17636172828787589338.Spec : Prop :=
  ∀ n, P17636172828787589338.a n = (A311433 n : ℚ)

end A311433

/-! ## A311433.P10395673037780324090

`A004525(n)+A313100(n)-n`
-/

namespace A311433.P10395673037780324090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313100 n - (n : ℤ))

end

end A311433.P10395673037780324090

namespace A311433

/-- `A004525(n)+A313100(n)-n` -/
def P10395673037780324090.Spec : Prop :=
  ∀ n, P10395673037780324090.a n = A311433 n

end A311433

/-! ## A311433.P1437710679628250714

`A313100(n)-A002265(A003485(n))`
-/

namespace A311433.P1437710679628250714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n - A002265 (A003485 n).toNat

end

end A311433.P1437710679628250714

namespace A311433

/-- `A313100(n)-A002265(A003485(n))` -/
def P1437710679628250714.Spec : Prop :=
  ∀ n, P1437710679628250714.a n = A311433 n

end A311433

/-! ## A311433.P6842661406275618464

`A313100(n)-A004523(A037915(n))`
-/

namespace A311433.P6842661406275618464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n - A004523 (A037915 n).toNat

end

end A311433.P6842661406275618464

namespace A311433

/-- `A313100(n)-A004523(A037915(n))` -/
def P6842661406275618464.Spec : Prop :=
  ∀ n, P6842661406275618464.a n = A311433 n

end A311433

/-! ## A311433.P7451965860916096222

`A313100(n)-A004525(A201629(n))`
-/

namespace A311433.P7451965860916096222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n - A004525 (A201629 n).toNat

end

end A311433.P7451965860916096222

namespace A311433

/-- `A313100(n)-A004525(A201629(n))` -/
def P7451965860916096222.Spec : Prop :=
  ∀ n, P7451965860916096222.a n = A311433 n

end A311433

/-! ## A311433.P17462321502742274039

`A004525(n)+A004525(A310521(n))+n`
-/

namespace A311433.P17462321502742274039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004525 (A310521 n).toNat + (n : ℤ))

end

end A311433.P17462321502742274039

namespace A311433

/-- `A004525(n)+A004525(A310521(n))+n` -/
def P17462321502742274039.Spec : Prop :=
  ∀ n, P17462321502742274039.a n = A311433 n

end A311433

/-!
# A311434: Coordination sequence Gal.6.216.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311434, the canonical program `A311434.P5901078868228664766` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311434 has offset 0).

The definition of A311434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311434.P4781472910628509821

`(A311593(n)+A008574(n))/2`
-/

namespace A311434.P4781472910628509821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311593 n + A008574 n : ℚ) / 2

end

end A311434.P4781472910628509821

namespace A311434

/-- `(A311593(n)+A008574(n))/2` -/
def P4781472910628509821.Spec : Prop :=
  ∀ n, P4781472910628509821.a n = (A311434 n : ℚ)

end A311434

/-! ## A311434.P5452354736848589771

`A311932(n)-Δ[A011864(n)]`
-/

namespace A311434.P5452354736848589771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311932 n - (f1 (n + 1) - f1 n)

end

end A311434.P5452354736848589771

namespace A311434

/-- `A311932(n)-Δ[A011864(n)]` -/
def P5452354736848589771.Spec : Prop :=
  ∀ n, P5452354736848589771.a n = A311434 n

theorem P5452354736848589771.correct : P5452354736848589771.Spec := by
  intro n
  simp only [A311434, Nat.add_sub_cancel, A311434.P5452354736848589771.f1, A311434.P5452354736848589771.a, A311434.P5901078868228664766.a, A004525, A004525.P4158271949796742323.a, A011864, A011864.P3547417513882699266.a, A311481, A311481.P6523631880089765102.a, A311932, A311932.P15341292208442206404.f1, A311932.P15341292208442206404.a, A008592, A008592.P4981059802862696142.a, A315746, A315746.P339001443445391414.a, A004396, A004396.P17032557045289780609.a, A315730, A315730.P12339410108613406190.f1, A315730.P12339410108613406190.a, A315682, A315682.P15234509743992815969.f1, A315682.P15234509743992815969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311434

/-! ## A311434.P6013381119361365356

`A008574(n)+A312068(n)-A311804(n)`
-/

namespace A311434.P6013381119361365356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A312068 n - A311804 n)

end

end A311434.P6013381119361365356

namespace A311434

/-- `A008574(n)+A312068(n)-A311804(n)` -/
def P6013381119361365356.Spec : Prop :=
  ∀ n, P6013381119361365356.a n = A311434 n

end A311434

/-! ## A311434.P16098483413799960466

`A310501(A008574(n))/2-A008458(n)`
-/

namespace A311434.P16098483413799960466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310501 (A008574 n).toNat : ℚ) / 2 - (A008458 n : ℚ)

end

end A311434.P16098483413799960466

namespace A311434

/-- `A310501(A008574(n))/2-A008458(n)` -/
def P16098483413799960466.Spec : Prop :=
  ∀ n, P16098483413799960466.a n = (A311434 n : ℚ)

end A311434

/-! ## A311434.P12020000349959316822

`A312068(n)-A004525(A312656(n)-A312068(n))`
-/

namespace A311434.P12020000349959316822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312068 n - A004525 (A312656 n - A312068 n).toNat

end

end A311434.P12020000349959316822

namespace A311434

/-- `A312068(n)-A004525(A312656(n)-A312068(n))` -/
def P12020000349959316822.Spec : Prop :=
  ∀ n, P12020000349959316822.a n = A311434 n

end A311434

/-! ## A311434.P5901078868228664766

`A004525(A311481(n))+2*n`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A311434

/-- `A004525(A311481(n))+2*n` -/
def P5901078868228664766.Spec : Prop :=
  ∀ n, P5901078868228664766.a n = A311434 n

theorem P5901078868228664766.correct : P5901078868228664766.Spec := by
  intro n
  simp only [A311434]

end A311434

/-! ## A311434.P1468150652587449459

`A004525(A311523(n))+2*n`
-/

namespace A311434.P1468150652587449459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311523 n).toNat + (2 * n : ℤ)

end

end A311434.P1468150652587449459

namespace A311434

/-- `A004525(A311523(n))+2*n` -/
def P1468150652587449459.Spec : Prop :=
  ∀ n, P1468150652587449459.a n = A311434 n

end A311434

/-! ## A311434.P12527619512047181953

`abs(A008592(n)-A315750(n))`
-/

namespace A311434.P12527619512047181953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315750 n|

end

end A311434.P12527619512047181953

namespace A311434

/-- `abs(A008592(n)-A315750(n))` -/
def P12527619512047181953.Spec : Prop :=
  ∀ n, P12527619512047181953.a n = A311434 n

end A311434

/-! ## A311434.P15067772831894851040

`A008458(n)+A008574(n)-A315750(n)`
-/

namespace A311434.P15067772831894851040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315750 n)

end

end A311434.P15067772831894851040

namespace A311434

/-- `A008458(n)+A008574(n)-A315750(n)` -/
def P15067772831894851040.Spec : Prop :=
  ∀ n, P15067772831894851040.a n = A311434 n

end A311434

/-! ## A311434.P11230384729558558648

`A005843(A008458(n)-n)-A315750(n)`
-/

namespace A311434.P11230384729558558648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315750 n

end

end A311434.P11230384729558558648

namespace A311434

/-- `A005843(A008458(n)-n)-A315750(n)` -/
def P11230384729558558648.Spec : Prop :=
  ∀ n, P11230384729558558648.a n = A311434 n

end A311434

/-! ## A311434.P7910753863420224854

`A068962(A313802(n))+2*n`
-/

namespace A311434.P7910753863420224854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A313802 n).toNat + (2 * n : ℤ)

end

end A311434.P7910753863420224854

namespace A311434

/-- `A068962(A313802(n))+2*n` -/
def P7910753863420224854.Spec : Prop :=
  ∀ n, P7910753863420224854.a n = A311434 n

end A311434

/-! ## A311434.P14691675366820813951

`A004396(A313788(n)+n)`
-/

namespace A311434.P14691675366820813951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313788 n + (n : ℤ)).toNat

end

end A311434.P14691675366820813951

namespace A311434

/-- `A004396(A313788(n)+n)` -/
def P14691675366820813951.Spec : Prop :=
  ∀ n, P14691675366820813951.a n = A311434 n

end A311434

/-! ## A311434.P2698997988037890661

`A274616(A313788(n)+n)`
-/

namespace A311434.P2698997988037890661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A313788 n + (n : ℤ)).toNat

end

end A311434.P2698997988037890661

namespace A311434

/-- `A274616(A313788(n)+n)` -/
def P2698997988037890661.Spec : Prop :=
  ∀ n, P2698997988037890661.a n = A311434 n

end A311434

/-! ## A311434.P183588020948575302

`A313745(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A311434.P183588020948575302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313745 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A311434.P183588020948575302

namespace A311434

/-- `A313745(2*n)+A008458(n+1)-(12*n+6)` -/
def P183588020948575302.Spec : Prop :=
  ∀ n, P183588020948575302.a n = A311434 n

end A311434

/-! ## A311434.P6947970657973630005

`A002264(2*A313788(n)+2*n+1)`
-/

namespace A311434.P6947970657973630005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A313788 n + (2 * n + 1 : ℤ)).toNat

end

end A311434.P6947970657973630005

namespace A311434

/-- `A002264(2*A313788(n)+2*n+1)` -/
def P6947970657973630005.Spec : Prop :=
  ∀ n, P6947970657973630005.a n = A311434 n

end A311434

/-!
# A311435: Coordination sequence Gal.5.96.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311435, there is no canonical definition to state claims against.
-/

/-! ## A311435.P140107552266060799

`A046100(record[A097045(3*n+n+1)])`
-/

namespace A311435.P140107552266060799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097045 (3 * n + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A311435.P140107552266060799

/-! ## A311435.P143762667813319894

`A048766(2*n^3)+floor(3/acot(n))`
-/

namespace A311435.P143762667813319894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (2 * n ^ 3) + ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A311435.P143762667813319894

/-! ## A311435.P18060290039315654029

`A055086(A088635(3*n+1))-1`
-/

namespace A311435.P18060290039315654029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A088635 (3 * n + 1)).toNat - 1

end

end A311435.P18060290039315654029

/-! ## A311435.P8318058864958341179

`A048766(2*n^3)+A008486(n)`
-/

namespace A311435.P8318058864958341179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (2 * n ^ 3) + A008486 n

end

end A311435.P8318058864958341179

/-! ## A311435.P5184707456440302541

`A375053(n)+A267868(A375043(n+5))`
-/

namespace A311435.P5184707456440302541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375053 n + A267868 (A375043 (n + 5)).toNat

end

end A311435.P5184707456440302541

/-!
# A311436: Coordination sequence Gal.6.431.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311436, there is no canonical definition to state claims against.
-/

/-! ## A311436.P4479850238146497411

`A319413(A020742(n)+A004134(n))`
-/

namespace A311436.P4479850238146497411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319413 (A020742 n + A004134 n).toNat

end

end A311436.P4479850238146497411

/-! ## A311436.P9508780139006317042

`A319413(A005408(n+3)+A004134(n))`
-/

namespace A311436.P9508780139006317042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319413 (A005408 (n + 3) + A004134 n).toNat

end

end A311436.P9508780139006317042

/-! ## A311436.P3835264215731103680

`A005187(2*n+1)+A003313(A318403(n))`
-/

namespace A311436.P3835264215731103680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (2 * n + 1) + A003313 (A318403 n).toNat

end

end A311436.P3835264215731103680

/-! ## A311436.P9577151306764603953

`A327704(A327690(n))+A022844(n)`
-/

namespace A311436.P9577151306764603953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327704 (A327690 n).toNat + A022844 n

end

end A311436.P9577151306764603953

/-! ## A311436.P14055545930318154913

`A326621(3*n+1)-A160094(A088830(n+5))`
-/

namespace A311436.P14055545930318154913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326621 (3 * n + 1) - A160094 (A088830 (n + 5)).toNat

end

end A311436.P14055545930318154913

/-!
# A311437: Coordination sequence Gal.6.304.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311437, there is no canonical definition to state claims against.
-/

/-! ## A311437.P1921172638884593168

`A160755(A312072(n))`
-/

namespace A311437.P1921172638884593168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A312072 n).toNat

end

end A311437.P1921172638884593168

/-! ## A311437.P10378398745756601325

`A312072(n)-A185114(A036759(n+1))`
-/

namespace A311437.P10378398745756601325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312072 n - A185114 (A036759 (n + 1)).toNat

end

end A311437.P10378398745756601325

/-! ## A311437.P17318642184501006470

`A312072(n)-A057427(A207408(n+1))`
-/

namespace A311437.P17318642184501006470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312072 n - A057427 (A207408 (n + 1)).toNat

end

end A311437.P17318642184501006470

/-! ## A311437.P14499900969115455951

`A033665(A329805(n))+A008574(n)`
-/

namespace A311437.P14499900969115455951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A329805 n).toNat + A008574 n

end

end A311437.P14499900969115455951

/-! ## A311437.P16685910134410560197

`A311426(n)+A178798(A027379(n))`
-/

namespace A311437.P16685910134410560197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311426 n + A178798 (A027379 n).toNat

end

end A311437.P16685910134410560197

/-!
# A311438: Coordination sequence Gal.6.459.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311438, there is no canonical definition to state claims against.
-/

/-! ## A311438.P1315037911938754999

`A193238(A006720(n))+A008574(n)`
-/

namespace A311438.P1315037911938754999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A006720 n).toNat + A008574 n

end

end A311438.P1315037911938754999

/-! ## A311438.P12120779973534022563

`A312943(n)-A000520(A094987(n))`
-/

namespace A311438.P12120779973534022563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n - A000520 (A094987 n).toNat

end

end A311438.P12120779973534022563

/-! ## A311438.P879105951158928040

`A311458(n)-A328712(A001006(n))`
-/

namespace A311438.P879105951158928040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n - A328712 (A001006 n).toNat

end

end A311438.P879105951158928040

/-! ## A311438.P6902937161906283407

`xor(A037800(A201951(n)), A311402(n))`
-/

namespace A311438.P6902937161906283407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037800 (A201951 n).toNat) (A311402 n)

end

end A311438.P6902937161906283407

/-!
# A311439: Coordination sequence Gal.4.40.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311439, the canonical program `A311439.P1582129312365160532` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311439 has offset 0).

The definition of A311439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311439.P1582129312365160532

`A313115(n)-A004523(A145569(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A311439

/-- `A313115(n)-A004523(A145569(n))` -/
def P1582129312365160532.Spec : Prop :=
  ∀ n, P1582129312365160532.a n = A311439 n

theorem P1582129312365160532.correct : P1582129312365160532.Spec := by
  intro n
  simp only [A311439]

end A311439

/-! ## A311439.P14246380383152304761

`A004396(A315423(n))+n-A004525(A004525(n))`
-/

namespace A311439.P14246380383152304761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315423 n).toNat + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A311439.P14246380383152304761

namespace A311439

/-- `A004396(A315423(n))+n-A004525(A004525(n))` -/
def P14246380383152304761.Spec : Prop :=
  ∀ n, P14246380383152304761.a n = A311439 n

end A311439

/-! ## A311439.P1887514151389169732

`A311440(n)-A162641(A005578(n))`
-/

namespace A311439.P1887514151389169732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n - A162641 (A005578 n).toNat

end

end A311439.P1887514151389169732

namespace A311439

/-- `A311440(n)-A162641(A005578(n))` -/
def P1887514151389169732.Spec : Prop :=
  ∀ n, P1887514151389169732.a n = A311439 n

end A311439

/-! ## A311439.P15899192496654408554

`A311440(n)-A037833(A187829(n+1))`
-/

namespace A311439.P15899192496654408554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n - A037833 (A187829 (n + 1)).toNat

end

end A311439.P15899192496654408554

namespace A311439

/-- `A311440(n)-A037833(A187829(n+1))` -/
def P15899192496654408554.Spec : Prop :=
  ∀ n, P15899192496654408554.a n = A311439 n

end A311439

/-! ## A311439.P13195170026726290334

`A241157(3*n+1)+A078899(A000079(n))-A004216(n+1)`
-/

namespace A311439.P13195170026726290334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241157 (3 * n + 1) + A078899 (A000079 n).toNat - A004216 (n + 1)

end

end A311439.P13195170026726290334

namespace A311439

/-- `A241157(3*n+1)+A078899(A000079(n))-A004216(n+1)` -/
def P13195170026726290334.Spec : Prop :=
  ∀ n, P13195170026726290334.a n = A311439 n

end A311439

/-!
# A311440: Coordination sequence Gal.5.50.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311440, the canonical program `A311440.P4540242096253642842` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311440 has offset 0).

The definition of A311440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311440.P16206200964739087361

`(A311601(n)+A008574(n))/2`
-/

namespace A311440.P16206200964739087361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311601 n + A008574 n : ℚ) / 2

end

end A311440.P16206200964739087361

namespace A311440

/-- `(A311601(n)+A008574(n))/2` -/
def P16206200964739087361.Spec : Prop :=
  ∀ n, P16206200964739087361.a n = (A311440 n : ℚ)

end A311440

/-! ## A311440.P2498738887841181020

`A314670(n)-A330025(A330025(n)+n)`
-/

namespace A311440.P2498738887841181020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314670 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A311440.P2498738887841181020

namespace A311440

/-- `A314670(n)-A330025(A330025(n)+n)` -/
def P2498738887841181020.Spec : Prop :=
  ∀ n, P2498738887841181020.a n = A311440 n

theorem P2498738887841181020.correct : P2498738887841181020.Spec := by
  intro n
  simp only [A311440, Nat.add_sub_cancel, A311440.P2498738887841181020.a, A311440.P4540242096253642842.a, A002266, A002266.P12055520221930490546.a, A312077, A312077.P5583150468324327588.a, A314670, A314670.P10679546871853624637.a, A330025, A330025.P8729701065839544525.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, A081599, A081599.P12036139868710074620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311440

/-! ## A311440.P4540242096253642842

`A312077(n)-A002266(n+2)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A311440

/-- `A312077(n)-A002266(n+2)` -/
def P4540242096253642842.Spec : Prop :=
  ∀ n, P4540242096253642842.a n = A311440 n

theorem P4540242096253642842.correct : P4540242096253642842.Spec := by
  intro n
  simp only [A311440]

end A311440

/-! ## A311440.P10593109129241204722

`abs(A008591(n)-A313692(n))`
-/

namespace A311440.P10593109129241204722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A313692 n|

end

end A311440.P10593109129241204722

namespace A311440

/-- `abs(A008591(n)-A313692(n))` -/
def P10593109129241204722.Spec : Prop :=
  ∀ n, P10593109129241204722.a n = A311440 n

end A311440

/-! ## A311440.P8092784134632911270

`A005843(A008574(n))+n-A313692(n)`
-/

namespace A311440.P8092784134632911270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A313692 n)

end

end A311440.P8092784134632911270

namespace A311440

/-- `A005843(A008574(n))+n-A313692(n)` -/
def P8092784134632911270.Spec : Prop :=
  ∀ n, P8092784134632911270.a n = A311440 n

end A311440

/-! ## A311440.P6878704179282828960

`A008458(n)+A008486(n)-A313692(n)`
-/

namespace A311440.P6878704179282828960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313692 n)

end

end A311440.P6878704179282828960

namespace A311440

/-- `A008458(n)+A008486(n)-A313692(n)` -/
def P6878704179282828960.Spec : Prop :=
  ∀ n, P6878704179282828960.a n = A311440 n

end A311440

/-! ## A311440.P17733977377996467217

`A008574(n)+A315060(n)-A250120(n)`
-/

namespace A311440.P17733977377996467217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315060 n - A250120 n)

end

end A311440.P17733977377996467217

namespace A311440

/-- `A008574(n)+A315060(n)-A250120(n)` -/
def P17733977377996467217.Spec : Prop :=
  ∀ n, P17733977377996467217.a n = A311440 n

end A311440

/-! ## A311440.P16310908209094843276

`A315679(n)-(A253262(n)+n)`
-/

namespace A311440.P16310908209094843276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315679 n - (A253262 n + (n : ℤ))

end

end A311440.P16310908209094843276

namespace A311440

/-- `A315679(n)-(A253262(n)+n)` -/
def P16310908209094843276.Spec : Prop :=
  ∀ n, P16310908209094843276.a n = A311440 n

end A311440

/-! ## A311440.P9698974006335618734

`A313154(n)+A330025(n)-n`
-/

namespace A311440.P9698974006335618734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313154 n + (A330025 n - (n : ℤ))

end

end A311440.P9698974006335618734

namespace A311440

/-- `A313154(n)+A330025(n)-n` -/
def P9698974006335618734.Spec : Prop :=
  ∀ n, P9698974006335618734.a n = A311440 n

end A311440

/-! ## A311440.P3802222892502632083

`A313782(n)-n`
-/

namespace A311440.P3802222892502632083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313782 n - (n : ℤ)

end

end A311440.P3802222892502632083

namespace A311440

/-- `A313782(n)-n` -/
def P3802222892502632083.Spec : Prop :=
  ∀ n, P3802222892502632083.a n = A311440 n

end A311440

/-! ## A311440.P10767570065259208427

`A313916(n)-A047263(n+1)`
-/

namespace A311440.P10767570065259208427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313916 n - A047263 (n + 1)

end

end A311440.P10767570065259208427

namespace A311440

/-- `A313916(n)-A047263(n+1)` -/
def P10767570065259208427.Spec : Prop :=
  ∀ n, P10767570065259208427.a n = A311440 n

end A311440

/-! ## A311440.P1554739014567033143

`A004525(A311535(n))+2*n`
-/

namespace A311440.P1554739014567033143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311535 n).toNat + (2 * n : ℤ)

end

end A311440.P1554739014567033143

namespace A311440

/-- `A004525(A311535(n))+2*n` -/
def P1554739014567033143.Spec : Prop :=
  ∀ n, P1554739014567033143.a n = A311440 n

end A311440

/-! ## A311440.P7436079513440886738

`A313801(n)-A151988(n)`
-/

namespace A311440.P7436079513440886738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313801 n - A151988 n

end

end A311440.P7436079513440886738

namespace A311440

/-- `A313801(n)-A151988(n)` -/
def P7436079513440886738.Spec : Prop :=
  ∀ n, P7436079513440886738.a n = A311440 n

end A311440

/-! ## A311440.P10554725071387006249

`A315496(n)-A047363(n+1)`
-/

namespace A311440.P10554725071387006249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315496 n - A047363 (n + 1)

end

end A311440.P10554725071387006249

namespace A311440

/-- `A315496(n)-A047363(n+1)` -/
def P10554725071387006249.Spec : Prop :=
  ∀ n, P10554725071387006249.a n = A311440 n

end A311440

/-! ## A311440.P2605384230562808019

`A315547(n)-A047448(n+1)`
-/

namespace A311440.P2605384230562808019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315547 n - A047448 (n + 1)

end

end A311440.P2605384230562808019

namespace A311440

/-- `A315547(n)-A047448(n+1)` -/
def P2605384230562808019.Spec : Prop :=
  ∀ n, P2605384230562808019.a n = A311440 n

end A311440

/-! ## A311440.P8141896970342818485

`A315481(n)-(A330025(n)+n)`
-/

namespace A311440.P8141896970342818485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315481 n - (A330025 n + (n : ℤ))

end

end A311440.P8141896970342818485

namespace A311440

/-- `A315481(n)-(A330025(n)+n)` -/
def P8141896970342818485.Spec : Prop :=
  ∀ n, P8141896970342818485.a n = A311440 n

end A311440

/-! ## A311440.P10748538507176978415

`A008458(n)+A008574(n)-A315749(n)`
-/

namespace A311440.P10748538507176978415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315749 n)

end

end A311440.P10748538507176978415

namespace A311440

/-- `A008458(n)+A008574(n)-A315749(n)` -/
def P10748538507176978415.Spec : Prop :=
  ∀ n, P10748538507176978415.a n = A311440 n

end A311440

/-! ## A311440.P14246376054096441336

`A004396(A312979(n))+n`
-/

namespace A311440.P14246376054096441336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312979 n).toNat + (n : ℤ)

end

end A311440.P14246376054096441336

namespace A311440

/-- `A004396(A312979(n))+n` -/
def P14246376054096441336.Spec : Prop :=
  ∀ n, P14246376054096441336.a n = A311440 n

end A311440

/-! ## A311440.P6046673497231949047

`A004396(A314898(n))+n`
-/

namespace A311440.P6046673497231949047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314898 n).toNat + (n : ℤ)

end

end A311440.P6046673497231949047

namespace A311440

/-- `A004396(A314898(n))+n` -/
def P6046673497231949047.Spec : Prop :=
  ∀ n, P6046673497231949047.a n = A311440 n

end A311440

/-! ## A311440.P10090724479087784155

`A004396(A314943(n))+n`
-/

namespace A311440.P10090724479087784155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314943 n).toNat + (n : ℤ)

end

end A311440.P10090724479087784155

namespace A311440

/-- `A004396(A314943(n))+n` -/
def P10090724479087784155.Spec : Prop :=
  ∀ n, P10090724479087784155.a n = A311440 n

end A311440

/-!
# A311441: Coordination sequence Gal.4.39.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311441, there is no canonical definition to state claims against.
-/

/-! ## A311441.P6261320383993500215

`A227944(A000602(n))+A008574(n)`
-/

namespace A311441.P6261320383993500215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 (A000602 n).toNat + A008574 n

end

end A311441.P6261320383993500215

/-! ## A311441.P1744206117091716166

`A172471(A346166(3*n)-A022281(n))`
-/

namespace A311441.P1744206117091716166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A346166 (3 * n) - A022281 n).toNat

end

end A311441.P1744206117091716166

/-! ## A311441.P14277170526531955779

`A186331(A004277(n))%A317628(n+1)`
-/

namespace A311441.P14277170526531955779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186331 (A004277 n).toNat) (A317628 (n + 1))

end

end A311441.P14277170526531955779

/-! ## A311441.P18357639000749945926

`A066344(A008486(n))%A015949(∑[n+3])`
-/

namespace A311441.P18357639000749945926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066344 (A008486 n).toNat) (A015949 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A311441.P18357639000749945926

/-! ## A311441.P4724774641915383398

`A311440(n)+A008683(A270039(2*n+5))`
-/

namespace A311441.P4724774641915383398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + A008683 (A270039 (2 * n + 5)).toNat

end

end A311441.P4724774641915383398

/-!
# A311442: Coordination sequence Gal.6.145.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311442, there is no canonical definition to state claims against.
-/

/-! ## A311442.P10172921644397810720

`A311443(n)-A044941(A011782(n))`
-/

namespace A311442.P10172921644397810720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311443 n - A044941 (A011782 n).toNat

end

end A311442.P10172921644397810720

/-! ## A311442.P11668621564442365304

`A311443(n)-A185284(A001996(n))`
-/

namespace A311442.P11668621564442365304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311443 n - A185284 (A001996 n).toNat

end

end A311442.P11668621564442365304

/-! ## A311442.P3655139687580618222

`A311443(n)-A107846(A181586(n))`
-/

namespace A311442.P3655139687580618222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311443 n - A107846 (A181586 n).toNat

end

end A311442.P3655139687580618222

/-! ## A311442.P6176669731616895293

`A311443(n)-A217096(A259465(n))`
-/

namespace A311442.P6176669731616895293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311443 n - A217096 (A259465 n).toNat

end

end A311442.P6176669731616895293

/-! ## A311442.P4769193518362922614

`A311443(n)-A185284(A036814(n+1))`
-/

namespace A311442.P4769193518362922614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311443 n - A185284 (A036814 (n + 1)).toNat

end

end A311442.P4769193518362922614

/-!
# A311443: Coordination sequence Gal.6.126.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311443, there is no canonical definition to state claims against.
-/

/-! ## A311443.P7728295709711931525

`A311442(n)+A044941(A011782(n))`
-/

namespace A311443.P7728295709711931525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311442 n + A044941 (A011782 n).toNat

end

end A311443.P7728295709711931525

/-! ## A311443.P10389730992947282490

`A311442(n)+A185284(A001996(n))`
-/

namespace A311443.P10389730992947282490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311442 n + A185284 (A001996 n).toNat

end

end A311443.P10389730992947282490

/-! ## A311443.P8875371083890768507

`A311442(n)+A107846(A181586(n))`
-/

namespace A311443.P8875371083890768507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311442 n + A107846 (A181586 n).toNat

end

end A311443.P8875371083890768507

/-! ## A311443.P6818824284327251463

`A311442(n)+A217096(A259465(n))`
-/

namespace A311443.P6818824284327251463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311442 n + A217096 (A259465 n).toNat

end

end A311443.P6818824284327251463

/-! ## A311443.P6353828945673192297

`A311442(n)+A185284(A036814(n+1))`
-/

namespace A311443.P6353828945673192297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311442 n + A185284 (A036814 (n + 1)).toNat

end

end A311443.P6353828945673192297

/-!
# A311444: Coordination sequence Gal.6.122.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311444, there is no canonical definition to state claims against.
-/

/-! ## A311444.P10329017693181928973

`A311445(n)-A185284(A228088(n+1))`
-/

namespace A311444.P10329017693181928973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311445 n - A185284 (A228088 (n + 1)).toNat

end

end A311444.P10329017693181928973

/-! ## A311444.P12007800796523269566

`A311445(n)-A335520(A311433(n+2))`
-/

namespace A311444.P12007800796523269566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311445 n - A335520 (A311433 (n + 2)).toNat

end

end A311444.P12007800796523269566

/-! ## A311444.P13190042697429541582

`A311445(n)-A044941(A011782(n))`
-/

namespace A311444.P13190042697429541582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311445 n - A044941 (A011782 n).toNat

end

end A311444.P13190042697429541582

/-! ## A311444.P16759909854866846085

`A311445(n)-A185284(A001996(n))`
-/

namespace A311444.P16759909854866846085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311445 n - A185284 (A001996 n).toNat

end

end A311444.P16759909854866846085

/-! ## A311444.P13570750417305223341

`A311445(n)-A107846(A181586(n))`
-/

namespace A311444.P13570750417305223341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311445 n - A107846 (A181586 n).toNat

end

end A311444.P13570750417305223341

/-!
# A311445: Coordination sequence Gal.6.138.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311445, there is no canonical definition to state claims against.
-/

/-! ## A311445.P16056305340158681806

`A311444(n)+A185284(A228088(n+1))`
-/

namespace A311445.P16056305340158681806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311444 n + A185284 (A228088 (n + 1)).toNat

end

end A311445.P16056305340158681806

/-! ## A311445.P5837764708932363170

`A311444(n)+A044941(A011782(n))`
-/

namespace A311445.P5837764708932363170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311444 n + A044941 (A011782 n).toNat

end

end A311445.P5837764708932363170

/-! ## A311445.P11553191271084692608

`A311444(n)+A185284(A001996(n))`
-/

namespace A311445.P11553191271084692608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311444 n + A185284 (A001996 n).toNat

end

end A311445.P11553191271084692608

/-! ## A311445.P4130982402601064655

`A311444(n)+A107846(A181586(n))`
-/

namespace A311445.P4130982402601064655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311444 n + A107846 (A181586 n).toNat

end

end A311445.P4130982402601064655

/-! ## A311445.P15061337253334588791

`A311444(n)+A185238(A123349(n))`
-/

namespace A311445.P15061337253334588791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311444 n + A185238 (A123349 n).toNat

end

end A311445.P15061337253334588791

/-!
# A311446: Coordination sequence Gal.6.143.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311446, there is no canonical definition to state claims against.
-/

/-! ## A311446.P11599666069586395453

`A311447(n)-A185238(A086420(n+1))`
-/

namespace A311446.P11599666069586395453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311447 n - A185238 (A086420 (n + 1)).toNat

end

end A311446.P11599666069586395453

/-! ## A311446.P15419783576988797409

`A311447(n)-A044941(2^n)`
-/

namespace A311446.P15419783576988797409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311447 n - A044941 (2 ^ n)

end

end A311446.P15419783576988797409

/-! ## A311446.P10408904844300881569

`A311447(n)-A185284(A300861(n+1))`
-/

namespace A311446.P10408904844300881569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311447 n - A185284 (A300861 (n + 1)).toNat

end

end A311446.P10408904844300881569

/-! ## A311446.P5921287182355584228

`A311447(n)%A335950(n+1)`
-/

namespace A311446.P5921287182355584228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311447 n) (A335950 (n + 1))

end

end A311446.P5921287182355584228

/-! ## A311446.P7092224749897622797

`A353477(A286207(n))+A311447(n)`
-/

namespace A311446.P7092224749897622797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353477 (A286207 n).toNat + A311447 n

end

end A311446.P7092224749897622797

/-!
# A311447: Coordination sequence Gal.6.227.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311447, there is no canonical definition to state claims against.
-/

/-! ## A311447.P2625484207711897675

`A311446(n)+A185238(A086420(n+1))`
-/

namespace A311447.P2625484207711897675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311446 n + A185238 (A086420 (n + 1)).toNat

end

end A311447.P2625484207711897675

/-! ## A311447.P12247235375360140879

`A311449(n)-A225099(A211391(n+1))`
-/

namespace A311447.P12247235375360140879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311449 n - A225099 (A211391 (n + 1)).toNat

end

end A311447.P12247235375360140879

/-! ## A311447.P2154310180489520535

`A311446(n)+A044941(A000079(n))`
-/

namespace A311447.P2154310180489520535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311446 n + A044941 (A000079 n).toNat

end

end A311447.P2154310180489520535

/-! ## A311447.P7034809234285749887

`A311446(n)+A044941(A219676(n))`
-/

namespace A311447.P7034809234285749887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311446 n + A044941 (A219676 n).toNat

end

end A311447.P7034809234285749887

/-!
# A311448: Coordination sequence Gal.6.223.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311448, there is no canonical definition to state claims against.
-/

/-! ## A311448.P1241797009689912744

`A311449(n)-A044941(2^n)`
-/

namespace A311448.P1241797009689912744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311449 n - A044941 (2 ^ n)

end

end A311448.P1241797009689912744

/-! ## A311448.P14822878512210278040

`A311449(n)-A185284(A300861(n+1))`
-/

namespace A311448.P14822878512210278040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311449 n - A185284 (A300861 (n + 1)).toNat

end

end A311448.P14822878512210278040

/-! ## A311448.P8244438804346203121

`A311449(n)%A016825(A071563(n))`
-/

namespace A311448.P8244438804346203121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311449 n) (A016825 (A071563 n).toNat)

end

end A311448.P8244438804346203121

/-! ## A311448.P7490335756573326300

`A311449(n)+A007920(A268109(n+1))`
-/

namespace A311448.P7490335756573326300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311449 n + A007920 (A268109 (n + 1)).toNat

end

end A311448.P7490335756573326300

/-!
# A311449: Coordination sequence Gal.6.136.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311449, there is no canonical definition to state claims against.
-/

/-! ## A311449.P2044689670123458569

`A311447(n)+A225099(A211391(n+1))`
-/

namespace A311449.P2044689670123458569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311447 n + A225099 (A211391 (n + 1)).toNat

end

end A311449.P2044689670123458569

/-! ## A311449.P3829990855325811110

`A311448(n)+A044941(2^n)`
-/

namespace A311449.P3829990855325811110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311448 n + A044941 (2 ^ n)

end

end A311449.P3829990855325811110

/-!
# A311450: Coordination sequence Gal.5.61.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311450, there is no canonical definition to state claims against.
-/

/-! ## A311450.P16263274353891443735

`A311451(n)-A011721(A036640(n))`
-/

namespace A311450.P16263274353891443735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311451 n - A011721 (A036640 n).toNat

end

end A311450.P16263274353891443735

/-! ## A311450.P791956040763123530

`A311451(n)-A010059(A072207(n))`
-/

namespace A311450.P791956040763123530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311451 n - A010059 (A072207 n).toNat

end

end A311450.P791956040763123530

/-! ## A311450.P6026480442723282765

`A311451(n)-A054908(xor(1, A187829(n+1)))`
-/

namespace A311450.P6026480442723282765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311451 n - A054908 (Int.xor 1 (A187829 (n + 1))).toNat

end

end A311450.P6026480442723282765

/-! ## A311450.P2579025942996568481

`A311451(n)-A086015(A000051(n))`
-/

namespace A311450.P2579025942996568481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311451 n - A086015 (A000051 n).toNat

end

end A311450.P2579025942996568481

/-! ## A311450.P18191275632863561441

`A311451(n)+A024155(A051292(n))`
-/

namespace A311450.P18191275632863561441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311451 n + A024155 (A051292 n).toNat

end

end A311450.P18191275632863561441

/-!
# A311451: Coordination sequence Gal.5.57.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311451, there is no canonical definition to state claims against.
-/

/-! ## A311451.P5298638236774677888

`A311450(n)+A011721(A036640(n))`
-/

namespace A311451.P5298638236774677888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311450 n + A011721 (A036640 n).toNat

end

end A311451.P5298638236774677888

/-! ## A311451.P2776454960833097318

`A311450(n)+A010059(A072207(n))`
-/

namespace A311451.P2776454960833097318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311450 n + A010059 (A072207 n).toNat

end

end A311451.P2776454960833097318

/-! ## A311451.P1608040683569349187

`A311450(n)+A086015(A000051(n))`
-/

namespace A311451.P1608040683569349187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311450 n + A086015 (A000051 n).toNat

end

end A311451.P1608040683569349187

/-! ## A311451.P3691700565930664697

`A312902(n)-A022003(A105309(n))`
-/

namespace A311451.P3691700565930664697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312902 n - A022003 (A105309 n).toNat

end

end A311451.P3691700565930664697

/-! ## A311451.P17295546302069150348

`or(A011734(56*(n+1)²-1), A311450(n))`
-/

namespace A311451.P17295546302069150348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011734 (56 * (n + 1) ^ 2 - 1)) (A311450 n)

end

end A311451.P17295546302069150348

/-!
# A311452: Coordination sequence Gal.6.147.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311452, there is no canonical definition to state claims against.
-/

/-! ## A311452.P11969144351924796741

`A311453(n)-A161292(A187829(n+1))`
-/

namespace A311452.P11969144351924796741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311453 n - A161292 (A187829 (n + 1)).toNat

end

end A311452.P11969144351924796741

/-! ## A311452.P16874696904326346632

`A311453(n)-A185284(A233271(n))`
-/

namespace A311452.P16874696904326346632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311453 n - A185284 (A233271 n).toNat

end

end A311452.P16874696904326346632

/-! ## A311452.P7084338325864920202

`A311453(n)-A185284(A053869(n+1))`
-/

namespace A311452.P7084338325864920202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311453 n - A185284 (A053869 (n + 1)).toNat

end

end A311452.P7084338325864920202

/-! ## A311452.P8828441165947805008

`A311453(n)-A185284(A104192(n+1))`
-/

namespace A311452.P8828441165947805008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311453 n - A185284 (A104192 (n + 1)).toNat

end

end A311452.P8828441165947805008

/-! ## A311452.P1186938725461642458

`∏{e}[3^n, A311453(#)]`
-/

namespace A311452.P1186938725461642458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A311453 (Nat.factorization (f1 n) p)

end

end A311452.P1186938725461642458

/-!
# A311453: Coordination sequence Gal.6.140.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311453, there is no canonical definition to state claims against.
-/

/-! ## A311453.P11412151118694945911

`A311452(n)+A120325(A132393(3*n))`
-/

namespace A311453.P11412151118694945911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311452 n + A120325 (A132393 (3 * n)).toNat

end

end A311453.P11412151118694945911

/-! ## A311453.P13902442911187858076

`A316869(A211918(n))+A311452(n)`
-/

namespace A311453.P13902442911187858076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A211918 n).toNat + A311452 n

end

end A311453.P13902442911187858076

/-! ## A311453.P15809598922676681793

`A311452(n)+A161292(A187829(n+1))`
-/

namespace A311453.P15809598922676681793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311452 n + A161292 (A187829 (n + 1)).toNat

end

end A311453.P15809598922676681793

/-! ## A311453.P12456876750410157604

`A311452(n)+A185284(A233271(n))`
-/

namespace A311453.P12456876750410157604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311452 n + A185284 (A233271 n).toNat

end

end A311453.P12456876750410157604

/-! ## A311453.P7376675756347064363

`A311452(n)+A185284(A053869(n+1))`
-/

namespace A311453.P7376675756347064363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311452 n + A185284 (A053869 (n + 1)).toNat

end

end A311453.P7376675756347064363

/-!
# A311454: Coordination sequence Gal.6.25.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311454, there is no canonical definition to state claims against.
-/

/-! ## A311454.P7019358287142832947

`A311453(n)+A054908(A014261(n+1))`
-/

namespace A311454.P7019358287142832947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311453 n + A054908 (A014261 (n + 1)).toNat

end

end A311454.P7019358287142832947

/-! ## A311454.P15412478828487756369

`A111909(2*n+1)+A056239(A000108(n))`
-/

namespace A311454.P15412478828487756369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111909 (2 * n + 1) + A056239 (A000108 n).toNat

end

end A311454.P15412478828487756369

/-! ## A311454.P9496747192345451924

`A358992(3*(n+1))-A049559(A232839(n+2))`
-/

namespace A311454.P9496747192345451924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358992 (3 * (n + 1)) - A049559 (A232839 (n + 2)).toNat

end

end A311454.P9496747192345451924

/-! ## A311454.P9651647872200606701

`A358992(3*(n+1))-A347658(A037291(3*n+2))`
-/

namespace A311454.P9651647872200606701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358992 (3 * (n + 1)) - A347658 (A037291 (3 * n + 2)).toNat

end

end A311454.P9651647872200606701

/-! ## A311454.P2094711674885416018

`A320057(3*n+2)-A030301(A007658(2*(n+2)))`
-/

namespace A311454.P2094711674885416018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320057 (3 * n + 2) - A030301 (A007658 (2 * (n + 2))).toNat

end

end A311454.P2094711674885416018

/-!
# A311455: Coordination sequence Gal.6.176.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311455, there is no canonical definition to state claims against.
-/

/-! ## A311455.P17936355855626534740

`A311456(n)-A102683(A027306(n))`
-/

namespace A311455.P17936355855626534740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311456 n - A102683 (A027306 n).toNat

end

end A311455.P17936355855626534740

/-! ## A311455.P16773071883851212645

`A311273(n)+A037800(A083434(n+1))`
-/

namespace A311455.P16773071883851212645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311273 n + A037800 (A083434 (n + 1)).toNat

end

end A311455.P16773071883851212645

/-! ## A311455.P3597125385447536912

`A311456(n)-A185284(A006218(n))`
-/

namespace A311455.P3597125385447536912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311456 n - A185284 (A006218 n).toNat

end

end A311455.P3597125385447536912

/-! ## A311455.P8087862534473855068

`A311456(A163352(∑[n]))`
-/

namespace A311455.P8087862534473855068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311456 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311455.P8087862534473855068

/-! ## A311455.P4660397941943628792

`∏{e}[A000244(n), A311456(#)]`
-/

namespace A311455.P4660397941943628792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A311456 (Nat.factorization (f1 n).natAbs p)

end

end A311455.P4660397941943628792

/-!
# A311456: Coordination sequence Gal.6.177.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311456, there is no canonical definition to state claims against.
-/

/-! ## A311456.P13653097446039720288

`(A311583(n)+A311220(n))/2`
-/

namespace A311456.P13653097446039720288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311583 n + A311220 n : ℚ) / 2

end

end A311456.P13653097446039720288

/-! ## A311456.P12382041524455984016

`A004525(A311583(n)+A311220(n))`
-/

namespace A311456.P12382041524455984016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311583 n + A311220 n).toNat

end

end A311456.P12382041524455984016

/-! ## A311456.P16576449198145532004

`A004526(A311583(n)+A311220(n))`
-/

namespace A311456.P16576449198145532004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311583 n + A311220 n).toNat

end

end A311456.P16576449198145532004

/-! ## A311456.P11539638391030957424

`A004524(A311220(n)+A311583(n)+1)`
-/

namespace A311456.P11539638391030957424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A311220 n + (A311583 n + 1)).toNat

end

end A311456.P11539638391030957424

/-! ## A311456.P8536063764950454965

`A003602(A311220(n)+A311583(n)-1)`
-/

namespace A311456.P8536063764950454965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A311220 n + (A311583 n - 1)).toNat

end

end A311456.P8536063764950454965

/-! ## A311456.P17326674329131088812

`A003602(A311220(n)-(1-A311583(n)))`
-/

namespace A311456.P17326674329131088812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A311220 n - (1 - A311583 n)).toNat

end

end A311456.P17326674329131088812

/-!
# A311457: Coordination sequence Gal.4.60.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311457, there is no canonical definition to state claims against.
-/

/-! ## A311457.P3811994002257829387

`ceil(A311238(2*n)/2)`
-/

namespace A311457.P3811994002257829387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A311238 (2 * n) : ℚ) / 2⌉

end

end A311457.P3811994002257829387

/-! ## A311457.P4420756954463034624

`record[A311238(n)/A266256(n)]`
-/

namespace A311457.P4420756954463034624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311238 n : ℚ) / (A266256 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311457.P4420756954463034624

/-! ## A311457.P11590449299345115641

`A311238(2*n)/A266256(2*n)`
-/

namespace A311457.P11590449299345115641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311238 (2 * n) : ℚ) / (A266256 (2 * n) : ℚ)

end

end A311457.P11590449299345115641

/-! ## A311457.P5107733716284156716

`A311238(2*n)/A020639(A000010(n+2))`
-/

namespace A311457.P5107733716284156716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311238 (2 * n) : ℚ) / (A020639 (A000010 (n + 2)).toNat : ℚ)

end

end A311457.P5107733716284156716

/-! ## A311457.P5142631427218120981

`A004525(A311238(2*n))`
-/

namespace A311457.P5142631427218120981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311238 (2 * n)).toNat

end

end A311457.P5142631427218120981

/-! ## A311457.P569606103168755876

`A110654(A311238(n+n))`
-/

namespace A311457.P569606103168755876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A311238 (n + n)).toNat

end

end A311457.P569606103168755876

/-! ## A311457.P10383474164859801877

`A026741(A311238(A005843(n)))`
-/

namespace A311457.P10383474164859801877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A311238 (A005843 n).toNat).toNat

end

end A311457.P10383474164859801877

/-!
# A311458: Coordination sequence Gal.5.95.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311458, the canonical program `A311458.P16823108361581684520` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311458 has offset 0).

The definition of A311458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2591 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311458.P16823108361581684520

`A312932(n)-A004396(n-A004396(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A311458

/-- `A312932(n)-A004396(n-A004396(n))` -/
def P16823108361581684520.Spec : Prop :=
  ∀ n, P16823108361581684520.a n = A311458 n

theorem P16823108361581684520.correct : P16823108361581684520.Spec := by
  intro n
  simp only [A311458]

end A311458

/-! ## A311458.P3240243047601021949

`A312100(n)-Δ[A011862(n)]`
-/

namespace A311458.P3240243047601021949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n - (f1 (n + 1) - f1 n)

end

end A311458.P3240243047601021949

namespace A311458

/-- `A312100(n)-Δ[A011862(n)]` -/
def P3240243047601021949.Spec : Prop :=
  ∀ n, P3240243047601021949.a n = A311458 n

theorem P3240243047601021949.correct : P3240243047601021949.Spec := by
  intro n
  simp only [A311458, Nat.add_sub_cancel, A311458.P3240243047601021949.f1, A311458.P3240243047601021949.a, A311458.P16823108361581684520.a, A004396, A004396.P17032557045289780609.a, A011862, A011862.P9485299441699197278.a, A312100, A312100.P12685263577647089552.f1, A312100.P12685263577647089552.a, A312932, A312932.P265636690513476108.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311458

/-! ## A311458.P16388110476453396865

`A004396(A004396(n))+A312100(n)-A004396(n)`
-/

namespace A311458.P16388110476453396865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A312100 n - A004396 n)

end

end A311458.P16388110476453396865

namespace A311458

/-- `A004396(A004396(n))+A312100(n)-A004396(n)` -/
def P16388110476453396865.Spec : Prop :=
  ∀ n, P16388110476453396865.a n = A311458 n

end A311458

/-! ## A311458.P6315781136870921177

`(A311612(n)+A008574(n))/2`
-/

namespace A311458.P6315781136870921177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311612 n + A008574 n : ℚ) / 2

end

end A311458.P6315781136870921177

namespace A311458

/-- `(A311612(n)+A008574(n))/2` -/
def P6315781136870921177.Spec : Prop :=
  ∀ n, P6315781136870921177.a n = (A311458 n : ℚ)

theorem P6315781136870921177.correct : P6315781136870921177.Spec := by
  intro n
  simp only [A311458, Nat.add_sub_cancel, A311458.P6315781136870921177.a, A311458.P16823108361581684520.a, A004396, A004396.P17032557045289780609.a, A008574, A008574.P1300280032690682112.a, A311612, A311612.P8550117147487517708.a, A312932, A312932.P265636690513476108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311458

/-! ## A311458.P5831564253750348770

`A008574(n)+A001281(A311612(n)-A008574(n))`
-/

namespace A311458.P5831564253750348770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001281 (A311612 n - A008574 n).toNat

end

end A311458.P5831564253750348770

namespace A311458

/-- `A008574(n)+A001281(A311612(n)-A008574(n))` -/
def P5831564253750348770.Spec : Prop :=
  ∀ n, P5831564253750348770.a n = A311458 n

end A311458

/-! ## A311458.P13132798146092809221

`A008458(n)+A008576(n)-A314828(n)`
-/

namespace A311458.P13132798146092809221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A314828 n)

end

end A311458.P13132798146092809221

namespace A311458

/-- `A008458(n)+A008576(n)-A314828(n)` -/
def P13132798146092809221.Spec : Prop :=
  ∀ n, P13132798146092809221.a n = A311458 n

end A311458

/-! ## A311458.P1672128841638918390

`A314945(n)-A004396(n)`
-/

namespace A311458.P1672128841638918390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314945 n - A004396 n

end

end A311458.P1672128841638918390

namespace A311458

/-- `A314945(n)-A004396(n)` -/
def P1672128841638918390.Spec : Prop :=
  ∀ n, P1672128841638918390.a n = A311458 n

theorem P1672128841638918390.correct : P1672128841638918390.Spec := by
  intro n
  simp only [A311458, Nat.add_sub_cancel, A311458.P1672128841638918390.a, A311458.P16823108361581684520.a, A004396, A004396.P17032557045289780609.a, A312932, A312932.P265636690513476108.a, A314945, A314945.P6456220943170628107.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311458

/-! ## A311458.P8753920187519565055

`A004525(A311548(n))+2*n`
-/

namespace A311458.P8753920187519565055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311548 n).toNat + (2 * n : ℤ)

end

end A311458.P8753920187519565055

namespace A311458

/-- `A004525(A311548(n))+2*n` -/
def P8753920187519565055.Spec : Prop :=
  ∀ n, P8753920187519565055.a n = A311458 n

end A311458

/-! ## A311458.P9336990402744011493

`A004526(A311612(n))+A004277(n)`
-/

namespace A311458.P9336990402744011493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311612 n).toNat + A004277 n

end

end A311458.P9336990402744011493

namespace A311458

/-- `A004526(A311612(n))+A004277(n)` -/
def P9336990402744011493.Spec : Prop :=
  ∀ n, P9336990402744011493.a n = A311458 n

end A311458

/-! ## A311458.P985304127216517987

`A314163(n)-A042965(n+1)`
-/

namespace A311458.P985304127216517987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314163 n - A042965 (n + 1)

end

end A311458.P985304127216517987

namespace A311458

/-- `A314163(n)-A042965(n+1)` -/
def P985304127216517987.Spec : Prop :=
  ∀ n, P985304127216517987.a n = A311458 n

end A311458

/-! ## A311458.P13212362077981237123

`A314163(n)-A004396(2*n)`
-/

namespace A311458.P13212362077981237123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314163 n - A004396 (2 * n)

end

end A311458.P13212362077981237123

namespace A311458

/-- `A314163(n)-A004396(2*n)` -/
def P13212362077981237123.Spec : Prop :=
  ∀ n, P13212362077981237123.a n = A311458 n

end A311458

/-! ## A311458.P6491407840108691182

`A008576(n)+A314163(n)-A008574(n)`
-/

namespace A311458.P6491407840108691182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314163 n - A008574 n)

end

end A311458.P6491407840108691182

namespace A311458

/-- `A008576(n)+A314163(n)-A008574(n)` -/
def P6491407840108691182.Spec : Prop :=
  ∀ n, P6491407840108691182.a n = A311458 n

end A311458

/-! ## A311458.P15367696141085328239

`A313746(n)-A004396(A004396(2*n))`
-/

namespace A311458.P15367696141085328239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n - A004396 (A004396 (2 * n)).toNat

end

end A311458.P15367696141085328239

namespace A311458

/-- `A313746(n)-A004396(A004396(2*n))` -/
def P15367696141085328239.Spec : Prop :=
  ∀ n, P15367696141085328239.a n = A311458 n

end A311458

/-! ## A311458.P9713263568806120019

`abs(A008592(n)-A315748(n))`
-/

namespace A311458.P9713263568806120019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315748 n|

end

end A311458.P9713263568806120019

namespace A311458

/-- `abs(A008592(n)-A315748(n))` -/
def P9713263568806120019.Spec : Prop :=
  ∀ n, P9713263568806120019.a n = A311458 n

end A311458

/-! ## A311458.P10813038837668185746

`A008458(n)+A008574(n)-A315748(n)`
-/

namespace A311458.P10813038837668185746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315748 n)

end

end A311458.P10813038837668185746

namespace A311458

/-- `A008458(n)+A008574(n)-A315748(n)` -/
def P10813038837668185746.Spec : Prop :=
  ∀ n, P10813038837668185746.a n = A311458 n

end A311458

/-! ## A311458.P8504909355936517219

`A005843(A008458(n)-n)-A315748(n)`
-/

namespace A311458.P8504909355936517219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315748 n

end

end A311458.P8504909355936517219

namespace A311458

/-- `A005843(A008458(n)-n)-A315748(n)` -/
def P8504909355936517219.Spec : Prop :=
  ∀ n, P8504909355936517219.a n = A311458 n

end A311458

/-! ## A311458.P5747241759768542951

`A004396(n)+A004396(A313799(n))`
-/

namespace A311458.P5747241759768542951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A313799 n).toNat

end

end A311458.P5747241759768542951

namespace A311458

/-- `A004396(n)+A004396(A313799(n))` -/
def P5747241759768542951.Spec : Prop :=
  ∀ n, P5747241759768542951.a n = A311458 n

end A311458

/-! ## A311458.P2639358123457233897

`A004396(A313799(n)+n)`
-/

namespace A311458.P2639358123457233897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313799 n + (n : ℤ)).toNat

end

end A311458.P2639358123457233897

namespace A311458

/-- `A004396(A313799(n)+n)` -/
def P2639358123457233897.Spec : Prop :=
  ∀ n, P2639358123457233897.a n = A311458 n

end A311458

/-! ## A311458.P11785133267163457182

`A274616(A313799(n)+n)`
-/

namespace A311458.P11785133267163457182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A313799 n + (n : ℤ)).toNat

end

end A311458.P11785133267163457182

namespace A311458

/-- `A274616(A313799(n)+n)` -/
def P11785133267163457182.Spec : Prop :=
  ∀ n, P11785133267163457182.a n = A311458 n

end A311458

/-! ## A311458.P4587050127457105977

`A313835(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A311458.P4587050127457105977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313835 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A311458.P4587050127457105977

namespace A311458

/-- `A313835(2*n)+A008458(n+1)-(12*n+6)` -/
def P4587050127457105977.Spec : Prop :=
  ∀ n, P4587050127457105977.a n = A311458 n

end A311458

/-!
# A311459: Coordination sequence Gal.4.59.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311459, there is no canonical definition to state claims against.
-/

/-! ## A311459.P11326954968351847191

`A008574(n)+A315428(n)-A315419(n)`
-/

namespace A311459.P11326954968351847191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315428 n - A315419 n)

end

end A311459.P11326954968351847191

/-! ## A311459.P14398992766830343596

`record[A257088(n)]+A315428(n)-A315419(n)`
-/

namespace A311459.P14398992766830343596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A315428 n - A315419 n)

end

end A311459.P14398992766830343596

/-! ## A311459.P14264321584845540406

`A004277(2*n)+A315428(n)-A315419(n)`
-/

namespace A311459.P14264321584845540406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + (A315428 n - A315419 n)

end

end A311459.P14264321584845540406

/-! ## A311459.P10972596406161159990

`A028310(4*n)+A315428(n)-A315419(n)`
-/

namespace A311459.P10972596406161159990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (4 * n) + (A315428 n - A315419 n)

end

end A311459.P10972596406161159990

/-! ## A311459.P14448725175414551983

`A004275(A005408(n))+A315428(n)-A315419(n)`
-/

namespace A311459.P14448725175414551983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A005408 n).toNat + (A315428 n - A315419 n)

end

end A311459.P14448725175414551983

/-! ## A311459.P5560595639824632065

`A004525(A022144(n))+A315428(n)-A315419(n)`
-/

namespace A311459.P5560595639824632065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A022144 n).toNat + (A315428 n - A315419 n)

end

end A311459.P5560595639824632065

/-!
# A311460: Coordination sequence Gal.6.160.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311460, there is no canonical definition to state claims against.
-/

/-! ## A311460.P8982878208372316159

`A311461(n)-A107846(A038754(n))`
-/

namespace A311460.P8982878208372316159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311461 n - A107846 (A038754 n).toNat

end

end A311460.P8982878208372316159

/-! ## A311460.P2519610129741566308

`A311461(n)-A025460(A325108(n))`
-/

namespace A311460.P2519610129741566308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311461 n - A025460 (A325108 n).toNat

end

end A311460.P2519610129741566308

/-! ## A311460.P9294380564530967859

`A311461(n)-A326291(A187219(n+2))`
-/

namespace A311460.P9294380564530967859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311461 n - A326291 (A187219 (n + 2)).toNat

end

end A311460.P9294380564530967859

/-! ## A311460.P9523302170010486546

`A351870(A311461(n))`
-/

namespace A311460.P9523302170010486546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A311461 n).toNat

end

end A311460.P9523302170010486546

/-! ## A311460.P15488627288805709507

`A311461(n)*A322361(A000079(n))`
-/

namespace A311460.P15488627288805709507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311461 n * A322361 (A000079 n).toNat

end

end A311460.P15488627288805709507

/-!
# A311461: Coordination sequence Gal.6.128.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311461, there is no canonical definition to state claims against.
-/

/-! ## A311461.P14910357975050546188

`or(A107846(A006367(n)), A311460(n))`
-/

namespace A311461.P14910357975050546188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 (A006367 n).toNat) (A311460 n)

end

end A311461.P14910357975050546188

/-! ## A311461.P17459825229202896109

`or(A107846(A228635(n+9)), A311460(n))`
-/

namespace A311461.P17459825229202896109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 (A228635 (n + 9)).toNat) (A311460 n)

end

end A311461.P17459825229202896109

/-! ## A311461.P3710551873968284045

`A311460(n)+A107846(A038754(n))`
-/

namespace A311461.P3710551873968284045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311460 n + A107846 (A038754 n).toNat

end

end A311461.P3710551873968284045

/-! ## A311461.P17777168845545099532

`A311460(n)+∑[A122841(A118037(n))]`
-/

namespace A311461.P17777168845545099532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A118037 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311460 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311461.P17777168845545099532

/-!
# A311462: Coordination sequence Gal.6.124.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311462, there is no canonical definition to state claims against.
-/

/-! ## A311462.P9563122620261105888

`A311463(n)-A101637(A192708(n+1))`
-/

namespace A311462.P9563122620261105888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311463 n - A101637 (A192708 (n + 1)).toNat

end

end A311462.P9563122620261105888

/-! ## A311462.P7141998595880594500

`A311463(n)-A107846(A340816(n+1))`
-/

namespace A311462.P7141998595880594500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311463 n - A107846 (A340816 (n + 1)).toNat

end

end A311462.P7141998595880594500

/-! ## A311462.P13034240438643206927

`A311463(n)-A185708(A265134(3*n+1))`
-/

namespace A311462.P13034240438643206927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311463 n - A185708 (A265134 (3 * n + 1)).toNat

end

end A311462.P13034240438643206927

/-! ## A311462.P10747409525627595063

`A311460(n)+A107846(2*A228635(n+9))`
-/

namespace A311462.P10747409525627595063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311460 n + A107846 (2 * A228635 (n + 9)).toNat

end

end A311462.P10747409525627595063

/-! ## A311462.P8870539348135366956

`A311463(n)%A326258(A001400(n))`
-/

namespace A311462.P8870539348135366956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311463 n) (A326258 (A001400 n).toNat)

end

end A311462.P8870539348135366956

/-!
# A311463: Coordination sequence Gal.6.161.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311463, there is no canonical definition to state claims against.
-/

/-! ## A311463.P10422296676208234905

`A311228(n)+A311505(n)-A311299(n)`
-/

namespace A311463.P10422296676208234905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311228 n + (A311505 n - A311299 n)

end

end A311463.P10422296676208234905

/-! ## A311463.P15952908910632811868

`(A311585(n)+A311228(n))/2`
-/

namespace A311463.P15952908910632811868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311585 n + A311228 n : ℚ) / 2

end

end A311463.P15952908910632811868

/-! ## A311463.P9485583020496818714

`A014682(A311585(n)+A311228(n))`
-/

namespace A311463.P9485583020496818714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A311585 n + A311228 n).toNat

end

end A311463.P9485583020496818714

/-! ## A311463.P7653241442913203629

`A001281(A311585(n)+A311228(n))`
-/

namespace A311463.P7653241442913203629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A311585 n + A311228 n).toNat

end

end A311463.P7653241442913203629

/-! ## A311463.P11370473188568173350

`A004525(A311585(n)+A311228(n))`
-/

namespace A311463.P11370473188568173350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311585 n + A311228 n).toNat

end

end A311463.P11370473188568173350

/-! ## A311463.P8349535043431535110

`A004526(A311585(n)+A311228(n))`
-/

namespace A311463.P8349535043431535110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311585 n + A311228 n).toNat

end

end A311463.P8349535043431535110

/-! ## A311463.P2063762374490848606

`A026741(A311585(n)+A311228(n))`
-/

namespace A311463.P2063762374490848606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A311585 n + A311228 n).toNat

end

end A311463.P2063762374490848606

/-! ## A311463.P15583856251074079165

`A029578(A311585(n)+A311228(n))`
-/

namespace A311463.P15583856251074079165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A311585 n + A311228 n).toNat

end

end A311463.P15583856251074079165

/-! ## A311463.P4336737503097580387

`A060681(A311585(n)+A311228(n))`
-/

namespace A311463.P4336737503097580387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A311585 n + A311228 n).toNat

end

end A311463.P4336737503097580387

/-! ## A311463.P487206852490206576

`A123108(A311585(n)+A311228(n))`
-/

namespace A311463.P487206852490206576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A311585 n + A311228 n).toNat

end

end A311463.P487206852490206576

/-! ## A311463.P17032351381246674808

`A003602(A311228(n)+A311585(n)-1)`
-/

namespace A311463.P17032351381246674808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A311228 n + (A311585 n - 1)).toNat

end

end A311463.P17032351381246674808

/-! ## A311463.P13209659535348406271

`A008619(A311228(n)+A311585(n)-1)`
-/

namespace A311463.P13209659535348406271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311228 n + (A311585 n - 1)).toNat

end

end A311463.P13209659535348406271

/-! ## A311463.P14948452548816474373

`A003602(A311228(n)-(1-A311585(n)))`
-/

namespace A311463.P14948452548816474373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A311228 n - (1 - A311585 n)).toNat

end

end A311463.P14948452548816474373

/-! ## A311463.P18220814786969596389

`A008619(A311228(n)-(1-A311585(n)))`
-/

namespace A311463.P18220814786969596389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311228 n - (1 - A311585 n)).toNat

end

end A311463.P18220814786969596389

/-!
# A311464: Coordination sequence Gal.6.241.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311464, there is no canonical definition to state claims against.
-/

/-! ## A311464.P13094722616849450984

`A311466(n)+∑[A016389(A022166(n))]`
-/

namespace A311464.P13094722616849450984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A022166 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311466 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311464.P13094722616849450984

/-! ## A311464.P5720594188294864739

`A311465(n)-A244895(A185284(2*(n+2)))`
-/

namespace A311464.P5720594188294864739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311465 n - A244895 (A185284 (2 * (n + 2))).toNat

end

end A311464.P5720594188294864739

/-! ## A311464.P14685273796941265549

`A311465(n)+A057428(A210717(n)*A326117(n))`
-/

namespace A311464.P14685273796941265549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311465 n + A057428 (A210717 n * A326117 n).toNat

end

end A311464.P14685273796941265549

/-! ## A311464.P408788935222873106

`A311465(n)+A057428(A002939(3*(n+1)))*A210717(n)`
-/

namespace A311464.P408788935222873106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311465 n + A057428 (A002939 (3 * (n + 1))).toNat * A210717 n

end

end A311464.P408788935222873106

/-! ## A311464.P11741626026688146046

`floor(log(A386708(2*n+1)))`
-/

namespace A311464.P11741626026688146046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A386708 (2 * n + 1) : ℝ)⌋

end

end A311464.P11741626026688146046

/-!
# A311465: Coordination sequence Gal.6.229.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311465, there is no canonical definition to state claims against.
-/

/-! ## A311465.P9214500130846744707

`A311466(n)-A102683(A129383(n))`
-/

namespace A311465.P9214500130846744707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311466 n - A102683 (A129383 n).toNat

end

end A311465.P9214500130846744707

/-! ## A311465.P11670732436531757051

`or(A266605(A266544(n+1)), A311464(n))`
-/

namespace A311465.P11670732436531757051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266605 (A266544 (n + 1)).toNat) (A311464 n)

end

end A311465.P11670732436531757051

/-!
# A311466: Coordination sequence Gal.6.225.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311466, there is no canonical definition to state claims against.
-/

/-! ## A311466.P1872363228633077339

`A311464(n)+∑[A102683(A000579(n))]`
-/

namespace A311466.P1872363228633077339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A000579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311464 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311466.P1872363228633077339

/-! ## A311466.P7646643294101519272

`A311465(n)+A102683(A129383(n))`
-/

namespace A311466.P7646643294101519272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311465 n + A102683 (A129383 n).toNat

end

end A311466.P7646643294101519272

/-! ## A311466.P13773071849420883484

`A311467(n)+A059841(A083318(n))`
-/

namespace A311466.P13773071849420883484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311467 n + A059841 (A083318 n).toNat

end

end A311466.P13773071849420883484

/-!
# A311467: Coordination sequence Gal.6.236.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311467, there is no canonical definition to state claims against.
-/

/-! ## A311467.P2674773199456803521

`(A311588(n)+A311230(n))/2`
-/

namespace A311467.P2674773199456803521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311588 n + A311230 n : ℚ) / 2

end

end A311467.P2674773199456803521

/-! ## A311467.P17990052252326145323

`A004525(A311588(n)+A311230(n))`
-/

namespace A311467.P17990052252326145323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311588 n + A311230 n).toNat

end

end A311467.P17990052252326145323

/-! ## A311467.P16996975853288503141

`A065033(A311588(n)+A311230(n))`
-/

namespace A311467.P16996975853288503141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311588 n + A311230 n).toNat

end

end A311467.P16996975853288503141

/-! ## A311467.P12486202337228132467

`A110654(A311588(n)+A311230(n))`
-/

namespace A311467.P12486202337228132467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A311588 n + A311230 n).toNat

end

end A311467.P12486202337228132467

/-! ## A311467.P11516664225160103677

`A271478(A311588(n)+A311230(n))`
-/

namespace A311467.P11516664225160103677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271478 (A311588 n + A311230 n).toNat

end

end A311467.P11516664225160103677

/-! ## A311467.P10826921455917731380

`A080513(A311588(n)+A311230(n))-1`
-/

namespace A311467.P10826921455917731380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A311588 n + A311230 n).toNat - 1

end

end A311467.P10826921455917731380

/-! ## A311467.P11968668958730189381

`A065033(A311230(n)-(1-A311588(n)))`
-/

namespace A311467.P11968668958730189381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311230 n - (1 - A311588 n)).toNat

end

end A311467.P11968668958730189381

/-! ## A311467.P16475218784344799031

`A110654(A311230(n)-(1-A311588(n)))`
-/

namespace A311467.P16475218784344799031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A311230 n - (1 - A311588 n)).toNat

end

end A311467.P16475218784344799031

/-! ## A311467.P7911078470711578097

`A080513(A311230(n)-(2-A311588(n)))`
-/

namespace A311467.P7911078470711578097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A311230 n - (2 - A311588 n)).toNat

end

end A311467.P7911078470711578097

/-!
# A311468: Coordination sequence Gal.3.26.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311468, there is no canonical definition to state claims against.
-/

/-! ## A311468.P16419057212456387927

`record[A313615(n)-A038504(A000720(n+1))]`
-/

namespace A311468.P16419057212456387927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313615 n - A038504 (A000720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311468.P16419057212456387927

/-! ## A311468.P7491104280062461548

`A311480(n)-A102683(A145937(n+1))`
-/

namespace A311468.P7491104280062461548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311480 n - A102683 (A145937 (n + 1)).toNat

end

end A311468.P7491104280062461548

/-! ## A311468.P15773451419886192398

`A311271(A120126(n))+A014473(n)`
-/

namespace A311468.P15773451419886192398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311271 (A120126 n).toNat + A014473 n

end

end A311468.P15773451419886192398

/-! ## A311468.P1904541082677382253

`A311449(n)+A084143(A327019(n))`
-/

namespace A311468.P1904541082677382253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311449 n + A084143 (A327019 n).toNat

end

end A311468.P1904541082677382253

/-! ## A311468.P14756671292012978772

`A363069(A031377(n+1))`
-/

namespace A311468.P14756671292012978772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363069 (A031377 (n + 1)).toNat

end

end A311468.P14756671292012978772

/-!
# A311469: Coordination sequence Gal.6.299.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311469, there is no canonical definition to state claims against.
-/

/-! ## A311469.P3621108204941014249

`A106744(A002024(12*n²+1+n))`
-/

namespace A311469.P3621108204941014249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A002024 (12 * n ^ 2 + 1 + n)).toNat

end

end A311469.P3621108204941014249

/-! ## A311469.P16222072640721126891

`A087116(A001372(n))+A008574(n)`
-/

namespace A311469.P16222072640721126891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A001372 n).toNat + A008574 n

end

end A311469.P16222072640721126891

/-! ## A311469.P12906303764315473100

`A311442(n)+A044941(A078844(n))`
-/

namespace A311469.P12906303764315473100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311442 n + A044941 (A078844 n).toNat

end

end A311469.P12906303764315473100

/-! ## A311469.P7500044532436859675

`A311460(n)+A133010(A001611(n))`
-/

namespace A311469.P7500044532436859675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311460 n + A133010 (A001611 n).toNat

end

end A311469.P7500044532436859675

/-! ## A311469.P10789600313466415075

`A375057(n)+A037801(A369079(n)+1)`
-/

namespace A311469.P10789600313466415075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375057 n + A037801 (A369079 n + 1).toNat

end

end A311469.P10789600313466415075

/-!
# A311470: Coordination sequence Gal.6.60.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311470, there is no canonical definition to state claims against.
-/

/-! ## A311470.P16254724348598992192

`A311295(n)+A123297(A174545(n))`
-/

namespace A311470.P16254724348598992192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311295 n + A123297 (A174545 n).toNat

end

end A311470.P16254724348598992192

/-! ## A311470.P18155768185841262091

`A311296(n)+A123297(A174545(n))`
-/

namespace A311470.P18155768185841262091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311296 n + A123297 (A174545 n).toNat

end

end A311470.P18155768185841262091

/-! ## A311470.P13852302101778252870

`A311439(n)+A297043(A056953(n))`
-/

namespace A311470.P13852302101778252870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311439 n + A297043 (A056953 n).toNat

end

end A311470.P13852302101778252870

/-! ## A311470.P17399843273554134432

`A350211(A174545(n))+A311294(n)`
-/

namespace A311470.P17399843273554134432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350211 (A174545 n).toNat + A311294 n

end

end A311470.P17399843273554134432

/-! ## A311470.P11996867521624033754

`A102677(A059792(n+1))+A008574(n)`
-/

namespace A311470.P11996867521624033754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A059792 (n + 1)).toNat + A008574 n

end

end A311470.P11996867521624033754

/-!
# A311471: Coordination sequence Gal.5.106.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311471, there is no canonical definition to state claims against.
-/

/-! ## A311471.P4756547029038439397

`A311472(n)-A025442(A274863(n))`
-/

namespace A311471.P4756547029038439397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311472 n - A025442 (A274863 n).toNat

end

end A311471.P4756547029038439397

/-! ## A311471.P6118107166509912298

`A311472(n)-A025437(A187829(n+1))`
-/

namespace A311471.P6118107166509912298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311472 n - A025437 (A187829 (n + 1)).toNat

end

end A311471.P6118107166509912298

/-! ## A311471.P63571568613576484

`∏{e}[A000244(n), A311472(#)]`
-/

namespace A311471.P63571568613576484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A311472 (Nat.factorization (f1 n).natAbs p)

end

end A311471.P63571568613576484

/-! ## A311471.P11882228742085494055

`A311472(A062399(n))`
-/

namespace A311471.P11882228742085494055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311472 (A062399 n).toNat

end

end A311471.P11882228742085494055

/-! ## A311471.P11232680891247728065

`A311472(A120126(n))`
-/

namespace A311471.P11232680891247728065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311472 (A120126 n).toNat

end

end A311471.P11232680891247728065

/-!
# A311472: Coordination sequence Gal.5.63.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311472, there is no canonical definition to state claims against.
-/

/-! ## A311472.P8380105016240668537

`xor(A102683(A259334(n+1)), A311471(n))`
-/

namespace A311472.P8380105016240668537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102683 (A259334 (n + 1)).toNat) (A311471 n)

end

end A311472.P8380105016240668537

/-! ## A311472.P9782982308108894727

`A311471(n)+Δ[A167393(A185274(n))]`
-/

namespace A311472.P9782982308108894727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167393 (A185274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311471 n + (f1 (n + 1) - f1 n)

end

end A311472.P9782982308108894727

/-! ## A311472.P5331073650754734904

`A311471(n)+A025442(A274863(n))`
-/

namespace A311472.P5331073650754734904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311471 n + A025442 (A274863 n).toNat

end

end A311472.P5331073650754734904

/-! ## A311472.P2106144332154752368

`or(A117929(A255410(n+5)), A311471(n))`
-/

namespace A311472.P2106144332154752368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117929 (A255410 (n + 5)).toNat) (A311471 n)

end

end A311472.P2106144332154752368

/-!
# A311473: Coordination sequence Gal.5.59.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311473, there is no canonical definition to state claims against.
-/

/-! ## A311473.P16311908207620818377

`A247973(A311471(n))+n`
-/

namespace A311473.P16311908207620818377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A311471 n).toNat + (n : ℤ)

end

end A311473.P16311908207620818377

/-! ## A311473.P4183613859383472706

`A348553(n)-(1-A247973(A311471(n)))`
-/

namespace A311473.P4183613859383472706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n - (1 - A247973 (A311471 n).toNat)

end

end A311473.P4183613859383472706

/-! ## A311473.P12069697273304314101

`record[A000119(n)]-(1-A247973(A311471(n)))`
-/

namespace A311473.P12069697273304314101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (1 - A247973 (A311471 n).toNat)

end

end A311473.P12069697273304314101

/-! ## A311473.P8833651494720969270

`A000005(2^n)-(1-A247973(A311471(n)))`
-/

namespace A311473.P8833651494720969270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ n) - (1 - A247973 (A311471 n).toNat)

end

end A311473.P8833651494720969270

/-! ## A311473.P12376939432533351462

`A005408(n)-n-(1-A247973(A311471(n)))`
-/

namespace A311473.P12376939432533351462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) - (1 - A247973 (A311471 n).toNat)

end

end A311473.P12376939432533351462

/-!
# A311474: Coordination sequence Gal.5.102.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311474, there is no canonical definition to state claims against.
-/

/-! ## A311474.P17642036375881609002

`A311889(n)-A011695(A000225(n))`
-/

namespace A311474.P17642036375881609002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311889 n - A011695 (A000225 n).toNat

end

end A311474.P17642036375881609002

/-! ## A311474.P16844339819816618770

`A311889(n)-A288462(A288442(n))`
-/

namespace A311474.P16844339819816618770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311889 n - A288462 (A288442 n).toNat

end

end A311474.P16844339819816618770

/-!
# A311475: Coordination sequence Gal.6.118.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311475, the canonical program `A311475.P11971039949641938868` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311475 has offset 0).

The definition of A311475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311475.P11971039949641938868

`A312950(n)-∑[A022003(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A311475

/-- `A312950(n)-∑[A022003(n)]` -/
def P11971039949641938868.Spec : Prop :=
  ∀ n, P11971039949641938868.a n = A311475 n

theorem P11971039949641938868.correct : P11971039949641938868.Spec := by
  intro n
  simp only [A311475]

end A311475

/-! ## A311475.P3441205961903707852

`A312950(n)-A002264(n+1)`
-/

namespace A311475.P3441205961903707852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n - A002264 (n + 1)

end

end A311475.P3441205961903707852

namespace A311475

/-- `A312950(n)-A002264(n+1)` -/
def P3441205961903707852.Spec : Prop :=
  ∀ n, P3441205961903707852.a n = A311475 n

end A311475

/-! ## A311475.P2702912410543938064

`A004396(n)+A312950(n)-n`
-/

namespace A311475.P2702912410543938064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A312950 n - (n : ℤ))

end

end A311475.P2702912410543938064

namespace A311475

/-- `A004396(n)+A312950(n)-n` -/
def P2702912410543938064.Spec : Prop :=
  ∀ n, P2702912410543938064.a n = A311475 n

end A311475

/-! ## A311475.P8314211909771552730

`A008576(n)+A312950(n)-A008486(n)`
-/

namespace A311475.P8314211909771552730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A312950 n - A008486 n)

end

end A311475.P8314211909771552730

namespace A311475

/-- `A008576(n)+A312950(n)-A008486(n)` -/
def P8314211909771552730.Spec : Prop :=
  ∀ n, P8314211909771552730.a n = A311475 n

end A311475

/-! ## A311475.P15459979557278136143

`A312933(n)-A004525(n-A004396(n))`
-/

namespace A311475.P15459979557278136143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A311475.P15459979557278136143

namespace A311475

/-- `A312933(n)-A004525(n-A004396(n))` -/
def P15459979557278136143.Spec : Prop :=
  ∀ n, P15459979557278136143.a n = A311475 n

end A311475

/-! ## A311475.P9942397019968357883

`A004525(n)+A313103(n)-n`
-/

namespace A311475.P9942397019968357883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313103 n - (n : ℤ))

end

end A311475.P9942397019968357883

namespace A311475

/-- `A004525(n)+A313103(n)-n` -/
def P9942397019968357883.Spec : Prop :=
  ∀ n, P9942397019968357883.a n = A311475 n

end A311475

/-! ## A311475.P9882841152798347085

`A314770(n)-A004525(n)`
-/

namespace A311475.P9882841152798347085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314770 n - A004525 n

end

end A311475.P9882841152798347085

namespace A311475

/-- `A314770(n)-A004525(n)` -/
def P9882841152798347085.Spec : Prop :=
  ∀ n, P9882841152798347085.a n = A311475 n

theorem P9882841152798347085.correct : P9882841152798347085.Spec := by
  intro n
  simp only [A311475, Nat.add_sub_cancel, A311475.P9882841152798347085.a, A311475.P11971039949641938868.f1, A311475.P11971039949641938868.a, A004525, A004525.P4158271949796742323.a, A022003, A022003.P8302093470414743033.a, A312950, A312950.P6413655452689753570.a, A314770, A314770.P11227293715083121856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311475

/-! ## A311475.P15022856038415643319

`A314947(n)-A004396(n)`
-/

namespace A311475.P15022856038415643319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314947 n - A004396 n

end

end A311475.P15022856038415643319

namespace A311475

/-- `A314947(n)-A004396(n)` -/
def P15022856038415643319.Spec : Prop :=
  ∀ n, P15022856038415643319.a n = A311475 n

theorem P15022856038415643319.correct : P15022856038415643319.Spec := by
  intro n
  simp only [A311475, Nat.add_sub_cancel, A311475.P15022856038415643319.a, A311475.P11971039949641938868.f1, A311475.P11971039949641938868.a, A004396, A004396.P17032557045289780609.a, A022003, A022003.P8302093470414743033.a, A312950, A312950.P6413655452689753570.a, A314947, A314947.P4377398531179062134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311475

/-! ## A311475.P8166686207167427599

`abs(abs(8*n-A313688(n))-1)+1+n`
-/

namespace A311475.P8166686207167427599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|(8 * n : ℤ) - A313688 n| - 1)| + 1 + (n : ℤ)

end

end A311475.P8166686207167427599

namespace A311475

/-- `abs(abs(8*n-A313688(n))-1)+1+n` -/
def P8166686207167427599.Spec : Prop :=
  ∀ n, P8166686207167427599.a n = A311475 n

end A311475

/-! ## A311475.P6545488782727347171

`A008458(n)+A008486(n)-A313688(n)`
-/

namespace A311475.P6545488782727347171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313688 n)

end

end A311475.P6545488782727347171

namespace A311475

/-- `A008458(n)+A008486(n)-A313688(n)` -/
def P6545488782727347171.Spec : Prop :=
  ∀ n, P6545488782727347171.a n = A311475 n

end A311475

/-! ## A311475.P6902886483047815562

`A313789(n)-n`
-/

namespace A311475.P6902886483047815562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n - (n : ℤ)

end

end A311475.P6902886483047815562

namespace A311475

/-- `A313789(n)-n` -/
def P6902886483047815562.Spec : Prop :=
  ∀ n, P6902886483047815562.a n = A311475 n

theorem P6902886483047815562.correct : P6902886483047815562.Spec := by
  intro n
  simp only [A311475, Nat.add_sub_cancel, A311475.P6902886483047815562.a, A311475.P11971039949641938868.f1, A311475.P11971039949641938868.a, A022003, A022003.P8302093470414743033.a, A312950, A312950.P6413655452689753570.a, A313789, A313789.P14929352302420444219.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311475

/-! ## A311475.P1501010613479480837

`A004773(n)+A004523(A311536(n)+1)`
-/

namespace A311475.P1501010613479480837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n + A004523 (A311536 n + 1).toNat

end

end A311475.P1501010613479480837

namespace A311475

/-- `A004773(n)+A004523(A311536(n)+1)` -/
def P1501010613479480837.Spec : Prop :=
  ∀ n, P1501010613479480837.a n = A311475 n

end A311475

/-! ## A311475.P928907336569325305

`A314167(n)-A042965(n+1)`
-/

namespace A311475.P928907336569325305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314167 n - A042965 (n + 1)

end

end A311475.P928907336569325305

namespace A311475

/-- `A314167(n)-A042965(n+1)` -/
def P928907336569325305.Spec : Prop :=
  ∀ n, P928907336569325305.a n = A311475 n

end A311475

/-! ## A311475.P5161239541787578331

`A314167(n)-A004396(2*n)`
-/

namespace A311475.P5161239541787578331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314167 n - A004396 (2 * n)

end

end A311475.P5161239541787578331

namespace A311475

/-- `A314167(n)-A004396(2*n)` -/
def P5161239541787578331.Spec : Prop :=
  ∀ n, P5161239541787578331.a n = A311475 n

end A311475

/-! ## A311475.P10005988357738102173

`A008576(n)+A314167(n)-A008574(n)`
-/

namespace A311475.P10005988357738102173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314167 n - A008574 n)

end

end A311475.P10005988357738102173

namespace A311475

/-- `A008576(n)+A314167(n)-A008574(n)` -/
def P10005988357738102173.Spec : Prop :=
  ∀ n, P10005988357738102173.a n = A311475 n

end A311475

/-! ## A311475.P17388156273972470710

`A004525(A311549(n))+2*n`
-/

namespace A311475.P17388156273972470710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311549 n).toNat + (2 * n : ℤ)

end

end A311475.P17388156273972470710

namespace A311475

/-- `A004525(A311549(n))+2*n` -/
def P17388156273972470710.Spec : Prop :=
  ∀ n, P17388156273972470710.a n = A311475 n

end A311475

/-! ## A311475.P2728748209756841879

`A004396(A314947(n))+n`
-/

namespace A311475.P2728748209756841879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314947 n).toNat + (n : ℤ)

end

end A311475.P2728748209756841879

namespace A311475

/-- `A004396(A314947(n))+n` -/
def P2728748209756841879.Spec : Prop :=
  ∀ n, P2728748209756841879.a n = A311475 n

end A311475

/-! ## A311475.P11094907720905647189

`A004396(A314903(n))+n`
-/

namespace A311475.P11094907720905647189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314903 n).toNat + (n : ℤ)

end

end A311475.P11094907720905647189

namespace A311475

/-- `A004396(A314903(n))+n` -/
def P11094907720905647189.Spec : Prop :=
  ∀ n, P11094907720905647189.a n = A311475 n

end A311475

/-! ## A311475.P6458741240283618138

`A004396(A311312(n)+A004396(n))+n`
-/

namespace A311475.P6458741240283618138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311312 n + A004396 n).toNat + (n : ℤ)

end

end A311475.P6458741240283618138

namespace A311475

/-- `A004396(A311312(n)+A004396(n))+n` -/
def P6458741240283618138.Spec : Prop :=
  ∀ n, P6458741240283618138.a n = A311475 n

end A311475

/-!
# A311476: Coordination sequence Gal.6.414.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311476, there is no canonical definition to state claims against.
-/

/-! ## A311476.P12188737094770008272

`A311864(n)-A011741(n²²)`
-/

namespace A311476.P12188737094770008272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311864 n - A011741 ((n ^ 2) ^ 2)

end

end A311476.P12188737094770008272

/-! ## A311476.P9432824343885413100

`A311865(n)-A011741(n²²)`
-/

namespace A311476.P9432824343885413100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311865 n - A011741 ((n ^ 2) ^ 2)

end

end A311476.P9432824343885413100

/-! ## A311476.P8796539368563703996

`A311479(n)-A340998(n²+9)`
-/

namespace A311476.P8796539368563703996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311479 n - A340998 (n ^ 2 + 9 + 140)

end

end A311476.P8796539368563703996

/-! ## A311476.P1612182916351894014

`A312944(n)-A001222(A217233(n))`
-/

namespace A311476.P1612182916351894014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312944 n - A001222 (A217233 n).toNat

end

end A311476.P1612182916351894014

/-! ## A311476.P11484143464900990411

`A301298(n)-A001221(A347420(n))`
-/

namespace A311476.P11484143464900990411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A001221 (A347420 n).toNat

end

end A311476.P11484143464900990411

/-!
# A311477: Coordination sequence Gal.6.243.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311477, there is no canonical definition to state claims against.
-/

/-! ## A311477.P8028382595437015043

`A311478(n)-∑[A262693(A101127(n))]`
-/

namespace A311477.P8028382595437015043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 (A101127 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311478 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311477.P8028382595437015043

/-! ## A311477.P17709187179040872712

`A311478(n)-A220400(A007755(n+1))`
-/

namespace A311477.P17709187179040872712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311478 n - A220400 (A007755 (n + 1)).toNat

end

end A311477.P17709187179040872712

/-! ## A311477.P16544150738187088093

`A311478(n)-A188034(A251428(2*(n+1)))`
-/

namespace A311477.P16544150738187088093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311478 n - A188034 (A251428 (2 * (n + 1))).toNat

end

end A311477.P16544150738187088093

/-! ## A311477.P2538695131988864962

`A311478(n)-A102683(A000079(n))`
-/

namespace A311477.P2538695131988864962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311478 n - A102683 (A000079 n).toNat

end

end A311477.P2538695131988864962

/-! ## A311477.P8761020257464181609

`A311478(n)-A178798(A016116(n))`
-/

namespace A311477.P8761020257464181609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311478 n - A178798 (A016116 n).toNat

end

end A311477.P8761020257464181609

/-!
# A311478: Coordination sequence Gal.6.238.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311478, there is no canonical definition to state claims against.
-/

/-! ## A311478.P9729047327576849418

`A311477(n)+∑[A262693(A101127(n))]`
-/

namespace A311478.P9729047327576849418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 (A101127 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311477 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311478.P9729047327576849418

/-! ## A311478.P18055463131543004269

`A311477(n)+A220400(A007755(n+1))`
-/

namespace A311478.P18055463131543004269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311477 n + A220400 (A007755 (n + 1)).toNat

end

end A311478.P18055463131543004269

/-! ## A311478.P14374143130523691026

`A311477(n)+A102683(A000079(n))`
-/

namespace A311478.P14374143130523691026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311477 n + A102683 (A000079 n).toNat

end

end A311478.P14374143130523691026

/-! ## A311478.P1882324388031129339

`A311477(n)+A102683(A000225(n))`
-/

namespace A311478.P1882324388031129339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311477 n + A102683 (A000225 n).toNat

end

end A311478.P1882324388031129339

/-! ## A311478.P13864500006928608747

`A311477(n)+A178798(A016116(n))`
-/

namespace A311478.P13864500006928608747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311477 n + A178798 (A016116 n).toNat

end

end A311478.P13864500006928608747

/-!
# A311479: Coordination sequence Gal.5.108.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311479, there is no canonical definition to state claims against.
-/

/-! ## A311479.P5489538581785266488

`A311480(n)-A340998(A016116(n))`
-/

namespace A311479.P5489538581785266488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311480 n - A340998 ((A016116 n).toNat + 140)

end

end A311479.P5489538581785266488

/-! ## A311479.P7593157111683762929

`A311480(n)-A037849(A118330(n))`
-/

namespace A311479.P7593157111683762929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311480 n - A037849 (A118330 n).toNat

end

end A311479.P7593157111683762929

/-! ## A311479.P2640395430161066699

`A311480(n)-A079978(A145937(n+1))`
-/

namespace A311479.P2640395430161066699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311480 n - A079978 (A145937 (n + 1)).toNat

end

end A311479.P2640395430161066699

/-! ## A311479.P12195475559297358340

`A311480(n)-A185284(A033627(n+3))`
-/

namespace A311479.P12195475559297358340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311480 n - A185284 (A033627 (n + 3)).toNat

end

end A311479.P12195475559297358340

/-! ## A311479.P6243983985600602355

`A311480(n)-A102683(A145937(n+1)+2)`
-/

namespace A311479.P6243983985600602355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311480 n - A102683 (A145937 (n + 1) + 2).toNat

end

end A311479.P6243983985600602355

/-!
# A311480: Coordination sequence Gal.5.104.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311480, there is no canonical definition to state claims against.
-/

/-! ## A311480.P498148731542188288

`A340998(A016116(n))+A311479(n)`
-/

namespace A311480.P498148731542188288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A016116 n).toNat + 140) + A311479 n

end

end A311480.P498148731542188288

/-! ## A311480.P9918391555355201123

`A311479(n)+A037849(A118330(n))`
-/

namespace A311480.P9918391555355201123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311479 n + A037849 (A118330 n).toNat

end

end A311480.P9918391555355201123

/-! ## A311480.P7787609676134049907

`A311481(n)-A185284(A032140(n))`
-/

namespace A311480.P7787609676134049907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311481 n - A185284 (A032140 n).toNat

end

end A311480.P7787609676134049907

/-! ## A311480.P13941143247421430209

`A311481(n)-A353492(A003724(n))`
-/

namespace A311480.P13941143247421430209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311481 n - A353492 (A003724 n).toNat

end

end A311480.P13941143247421430209

/-! ## A311480.P7462758858122787871

`A311468(n)+A102683(A145937(n+1))`
-/

namespace A311480.P7462758858122787871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311468 n + A102683 (A145937 (n + 1)).toNat

end

end A311480.P7462758858122787871

/-!
# A311481: Coordination sequence Gal.6.219.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311481, the canonical program `A311481.P6523631880089765102` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311481 has offset 0).

The definition of A311481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311481.P6523631880089765102

`abs(A008592(n)-A315746(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A311481

/-- `abs(A008592(n)-A315746(n))` -/
def P6523631880089765102.Spec : Prop :=
  ∀ n, P6523631880089765102.a n = A311481 n

theorem P6523631880089765102.correct : P6523631880089765102.Spec := by
  intro n
  simp only [A311481]

end A311481

/-! ## A311481.P10503800123533757138

`A008458(n)+A008574(n)-A315746(n)`
-/

namespace A311481.P10503800123533757138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315746 n)

end

end A311481.P10503800123533757138

namespace A311481

/-- `A008458(n)+A008574(n)-A315746(n)` -/
def P10503800123533757138.Spec : Prop :=
  ∀ n, P10503800123533757138.a n = A311481 n

end A311481

/-! ## A311481.P11196990617065990884

`A004525(A311553(n))+2*n`
-/

namespace A311481.P11196990617065990884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311553 n).toNat + (2 * n : ℤ)

end

end A311481.P11196990617065990884

namespace A311481

/-- `A004525(A311553(n))+2*n` -/
def P11196990617065990884.Spec : Prop :=
  ∀ n, P11196990617065990884.a n = A311481 n

end A311481

/-! ## A311481.P8000824084712978955

`A005843(n)+A004525(A311553(n))`
-/

namespace A311481.P8000824084712978955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A311553 n).toNat

end

end A311481.P8000824084712978955

namespace A311481

/-- `A005843(n)+A004525(A311553(n))` -/
def P8000824084712978955.Spec : Prop :=
  ∀ n, P8000824084712978955.a n = A311481 n

end A311481

/-! ## A311481.P11531428094754543135

`A004396(A311541(n)+2*n)`
-/

namespace A311481.P11531428094754543135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311541 n + (2 * n : ℤ)).toNat

end

end A311481.P11531428094754543135

namespace A311481

/-- `A004396(A311541(n)+2*n)` -/
def P11531428094754543135.Spec : Prop :=
  ∀ n, P11531428094754543135.a n = A311481 n

end A311481

/-! ## A311481.P11847588664906698242

`A004396(A311613(n)+2*n)`
-/

namespace A311481.P11847588664906698242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311613 n + (2 * n : ℤ)).toNat

end

end A311481.P11847588664906698242

namespace A311481

/-- `A004396(A311613(n)+2*n)` -/
def P11847588664906698242.Spec : Prop :=
  ∀ n, P11847588664906698242.a n = A311481 n

end A311481

/-! ## A311481.P11347313351305167027

`A004396(A311541(n)+n+n)`
-/

namespace A311481.P11347313351305167027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311541 n + (n : ℤ) + (n : ℤ)).toNat

end

end A311481.P11347313351305167027

namespace A311481

/-- `A004396(A311541(n)+n+n)` -/
def P11347313351305167027.Spec : Prop :=
  ∀ n, P11347313351305167027.a n = A311481 n

end A311481

/-! ## A311481.P5401027616367974518

`A004396(A311613(n)+n+n)`
-/

namespace A311481.P5401027616367974518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311613 n + (n : ℤ) + (n : ℤ)).toNat

end

end A311481.P5401027616367974518

namespace A311481

/-- `A004396(A311613(n)+n+n)` -/
def P5401027616367974518.Spec : Prop :=
  ∀ n, P5401027616367974518.a n = A311481 n

end A311481

/-! ## A311481.P2242954782029519498

`A004396(2*A004396(A314902(n)))`
-/

namespace A311481.P2242954782029519498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A004396 (A314902 n).toNat).toNat

end

end A311481.P2242954782029519498

namespace A311481

/-- `A004396(2*A004396(A314902(n)))` -/
def P2242954782029519498.Spec : Prop :=
  ∀ n, P2242954782029519498.a n = A311481 n

end A311481

/-! ## A311481.P10913171205675588389

`A068962(2*A313802(n))`
-/

namespace A311481.P10913171205675588389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (2 * A313802 n).toNat

end

end A311481.P10913171205675588389

namespace A311481

/-- `A068962(2*A313802(n))` -/
def P10913171205675588389.Spec : Prop :=
  ∀ n, P10913171205675588389.a n = A311481 n

end A311481

/-! ## A311481.P6765369683855634155

`A068962(2*A313814(n))`
-/

namespace A311481.P6765369683855634155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (2 * A313814 n).toNat

end

end A311481.P6765369683855634155

namespace A311481

/-- `A068962(2*A313814(n))` -/
def P6765369683855634155.Spec : Prop :=
  ∀ n, P6765369683855634155.a n = A311481 n

end A311481

/-!
# A311482: Coordination sequence Gal.6.376.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311482, there is no canonical definition to state claims against.
-/

/-! ## A311482.P13885087884277677133

`A311535(n)-A037913(A006131(n))`
-/

namespace A311482.P13885087884277677133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311535 n - A037913 (A006131 n).toNat

end

end A311482.P13885087884277677133

/-! ## A311482.P16059098086900323099

`A311484(n)-A102683(A146669(n+1))`
-/

namespace A311482.P16059098086900323099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311484 n - A102683 (A146669 (n + 1)).toNat

end

end A311482.P16059098086900323099

/-! ## A311482.P17019517483980082358

`A311532(n)-A037913(A317546(n+1))`
-/

namespace A311482.P17019517483980082358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311532 n - A037913 (A317546 (n + 1)).toNat

end

end A311482.P17019517483980082358

/-! ## A311482.P796774793175218135

`A301678(n)-A001222(A081567(n))`
-/

namespace A311482.P796774793175218135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A001222 (A081567 n).toNat

end

end A311482.P796774793175218135

/-! ## A311482.P7285148206559760205

`A301684(n)-A001222(A243786(n+1))`
-/

namespace A311482.P7285148206559760205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301684 n - A001222 (A243786 (n + 1)).toNat

end

end A311482.P7285148206559760205

/-!
# A311483: Coordination sequence Gal.5.158.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311483, there is no canonical definition to state claims against.
-/

/-! ## A311483.P8410416582925601971

`∑[A324923(∑[A365941(3*n+4)])]`
-/

namespace A311483.P8410416582925601971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365941 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311483.P8410416582925601971

/-! ## A311483.P6070206450184442584

`∑[A066412(3*(n+1))%A058959(2*n+1)]`
-/

namespace A311483.P6070206450184442584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066412 (3 * (n + 1))) (A058959 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311483.P6070206450184442584

/-! ## A311483.P12130759908143903454

`A311478(n)+A102683(A211795(n))`
-/

namespace A311483.P12130759908143903454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311478 n + A102683 (A211795 n).toNat

end

end A311483.P12130759908143903454

/-! ## A311483.P10313910500868551057

`A311202(n)+A071625(A336619(n))`
-/

namespace A311483.P10313910500868551057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311202 n + A071625 (A336619 n).toNat

end

end A311483.P10313910500868551057

/-! ## A311483.P6828693167021349743

`A313116(n)-A001221(A129775(n))`
-/

namespace A311483.P6828693167021349743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n - A001221 (A129775 n).toNat

end

end A311483.P6828693167021349743

/-!
# A311484: Coordination sequence Gal.6.430.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311484, there is no canonical definition to state claims against.
-/

/-! ## A311484.P16444705651733488710

`A311331(n)+A078926(A018501(n+1))`
-/

namespace A311484.P16444705651733488710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311331 n + A078926 (A018501 (n + 1)).toNat

end

end A311484.P16444705651733488710

/-! ## A311484.P16323571723034146269

`or(A288710(A114647(n)), A311331(n))`
-/

namespace A311484.P16323571723034146269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A288710 (A114647 n).toNat) (A311331 n)

end

end A311484.P16323571723034146269

/-! ## A311484.P76309415201383158

`A311482(n)+A102683(A146669(n+1))`
-/

namespace A311484.P76309415201383158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311482 n + A102683 (A146669 (n + 1)).toNat

end

end A311484.P76309415201383158

/-! ## A311484.P10361254084853499862

`A332016(A083668(n+1))+A311481(n)`
-/

namespace A311484.P10361254084853499862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332016 (A083668 (n + 1)).toNat + A311481 n

end

end A311484.P10361254084853499862

/-! ## A311484.P5873655216900070010

`∑[A347643(∑[A003159(n+1)])]`
-/

namespace A311484.P5873655216900070010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347643 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311484.P5873655216900070010

/-!
# A311485: Coordination sequence Gal.5.148.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311485, there is no canonical definition to state claims against.
-/

/-! ## A311485.P15465911064036289977

`A064097(A000104(n))+A049533(3*n+1)`
-/

namespace A311485.P15465911064036289977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A000104 n).toNat + A049533 (3 * n + 1)

end

end A311485.P15465911064036289977

/-! ## A311485.P9593874507612187746

`A360599(or(A360627(2*n+1), A360634(n)))`
-/

namespace A311485.P9593874507612187746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360599 (Int.lor (A360627 (2 * n + 1)) (A360634 n)).toNat

end

end A311485.P9593874507612187746

/-! ## A311485.P14336274781614525963

`A106744(∑[p?[A092338(n+1)]])`
-/

namespace A311485.P14336274781614525963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A311485.P14336274781614525963

/-! ## A311485.P14902727799213859154

`∑[n+3]-record[A006530(A105588(n))]-1`
-/

namespace A311485.P14902727799213859154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A105588 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

end

end A311485.P14902727799213859154

/-! ## A311485.P16168081014329075855

`A330168(A002995(n))+A311332(n)`
-/

namespace A311485.P16168081014329075855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330168 (A002995 n).toNat + A311332 n

end

end A311485.P16168081014329075855

/-!
# A311486: Coordination sequence Gal.6.20.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311486, there is no canonical definition to state claims against.
-/

/-! ## A311486.P5871995232223387457

`A311237(n)+A037833(A000244(n))`
-/

namespace A311486.P5871995232223387457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311237 n + A037833 (A000244 n).toNat

end

end A311486.P5871995232223387457

/-!
# A311487: Coordination sequence Gal.5.76.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311487, there is no canonical definition to state claims against.
-/

/-! ## A311487.P1734939516015357123

`A311488(n)-A133010(A176561(n))`
-/

namespace A311487.P1734939516015357123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311488 n - A133010 (A176561 n).toNat

end

end A311487.P1734939516015357123

/-! ## A311487.P16563009531254441968

`A301299(n)-A316345(A244952(3*n+2))`
-/

namespace A311487.P16563009531254441968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n - A316345 (A244952 (3 * n + 2)).toNat

end

end A311487.P16563009531254441968

/-! ## A311487.P13555338092857049568

`A311488(n^gcd(11, n))`
-/

namespace A311487.P13555338092857049568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311488 (n ^ Nat.gcd 11 n)

end

end A311487.P13555338092857049568

/-! ## A311487.P15164065631308840988

`A311488(A062399(n))`
-/

namespace A311487.P15164065631308840988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311488 (A062399 n).toNat

end

end A311487.P15164065631308840988

/-! ## A311487.P10186557777561935807

`A311488(A120126(n))`
-/

namespace A311487.P10186557777561935807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311488 (A120126 n).toNat

end

end A311487.P10186557777561935807

/-!
# A311488: Coordination sequence Gal.5.70.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311488, there is no canonical definition to state claims against.
-/

/-! ## A311488.P8614989900936588527

`A311247(n)+A277155(A238859(n+1))`
-/

namespace A311488.P8614989900936588527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311247 n + A277155 (A238859 (n + 1)).toNat

end

end A311488.P8614989900936588527

/-! ## A311488.P13883243249803642902

`A311247(n)+A003982(A288140(n))`
-/

namespace A311488.P13883243249803642902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311247 n + A003982 (A288140 n).toNat

end

end A311488.P13883243249803642902

/-! ## A311488.P3474688103872488318

`A358773(A000085(n))+A311247(n)`
-/

namespace A311488.P3474688103872488318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 (A000085 n).toNat + A311247 n

end

end A311488.P3474688103872488318

/-! ## A311488.P11583840055200710919

`A312040(n)-A276791(A111297(n))`
-/

namespace A311488.P11583840055200710919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312040 n - A276791 (A111297 n).toNat

end

end A311488.P11583840055200710919

/-! ## A311488.P2024064001149905416

`A311487(n)+A256974(A299142(n+1))`
-/

namespace A311488.P2024064001149905416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311487 n + A256974 (A299142 (n + 1)).toNat

end

end A311488.P2024064001149905416

/-!
# A311489: Coordination sequence Gal.6.187.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311489, there is no canonical definition to state claims against.
-/

/-! ## A311489.P16719183514415188995

`A311490(A108887(∑[n]))`
-/

namespace A311489.P16719183514415188995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311490 (A108887 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311489.P16719183514415188995

/-! ## A311489.P5041001956711710691

`A311490(n*A287384(n))`
-/

namespace A311489.P5041001956711710691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311490 ((n : ℤ) * A287384 n).toNat

end

end A311489.P5041001956711710691

/-! ## A311489.P14704989552101169564

`A311490(n^A287384(n))`
-/

namespace A311489.P14704989552101169564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311490 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A287384 n : ℤ))).toNat

end

end A311489.P14704989552101169564

/-! ## A311489.P6952376050909135510

`A311490(n)%A082593(n+3)`
-/

namespace A311489.P6952376050909135510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311490 n) (A082593 (n + 3))

end

end A311489.P6952376050909135510

/-! ## A311489.P7164277730419537860

`A311490(n)%A004024(A003204(n))`
-/

namespace A311489.P7164277730419537860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311490 n) (A004024 (A003204 n).toNat)

end

end A311489.P7164277730419537860

/-!
# A311490: Coordination sequence Gal.6.171.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311490, there is no canonical definition to state claims against.
-/

/-! ## A311490.P11612248513630827681

`A311489(n)+A018843((p?[4*n-1]+1)/4)`
-/

namespace A311490.P11612248513630827681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311489 n + A018843 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 4)).toNat

end

end A311490.P11612248513630827681

/-!
# A311491: Coordination sequence Gal.5.91.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311491, the canonical program `A311491.P5893824222412412935` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311491 has offset 0).

The definition of A311491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2537 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311491.P5893824222412412935

`ogf((1+3x+5x^2+6x^3+7x^4+7x^5+5x^6+5x^7+3x^9-2x^10+2x^11-2x^12+2x^13-2x^14+x^15-x^16+x^17-x^18)/(1-x+x^2-2x^3+2x^4-2x^5+x^6-x^7+x^8))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A311491

/-- `ogf((1+3x+5x^2+6x^3+7x^4+7x^5+5x^6+5x^7+3x^9-2x^10+2x^11-2x^12+2x^13-2x^14+x^15-x^16+x^17-x^18)/(1-x+x^2-2x^3+2x^4-2x^5+x^6-x^7+x^8))` -/
def P5893824222412412935.Spec : Prop :=
  ∀ n, P5893824222412412935.a n = A311491 n

theorem P5893824222412412935.correct : P5893824222412412935.Spec := by
  intro n
  simp only [A311491]

end A311491

/-! ## A311491.P6633136529142052540

`A312123(n)-A005090(A267210(n))`
-/

namespace A311491.P6633136529142052540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312123 n - A005090 (A267210 n).toNat

end

end A311491.P6633136529142052540

namespace A311491

/-- `A312123(n)-A005090(A267210(n))` -/
def P6633136529142052540.Spec : Prop :=
  ∀ n, P6633136529142052540.a n = A311491 n

end A311491

/-! ## A311491.P16737568840068255348

`A311266(n)+A087049(A228346(n+1))`
-/

namespace A311491.P16737568840068255348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311266 n + A087049 (A228346 (n + 1)).toNat

end

end A311491.P16737568840068255348

namespace A311491

/-- `A311266(n)+A087049(A228346(n+1))` -/
def P16737568840068255348.Spec : Prop :=
  ∀ n, P16737568840068255348.a n = A311491 n

end A311491

/-! ## A311491.P10389572722114964632

`A325389(A016933(n))-A016777(n)`
-/

namespace A311491.P10389572722114964632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (A016933 n).toNat - A016777 n

end

end A311491.P10389572722114964632

namespace A311491

/-- `A325389(A016933(n))-A016777(n)` -/
def P10389572722114964632.Spec : Prop :=
  ∀ n, P10389572722114964632.a n = A311491 n

end A311491

/-! ## A311491.P9031779956748252509

`A311517(n)-A285957(A017234(n))`
-/

namespace A311491.P9031779956748252509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311517 n - A285957 (A017234 n).toNat

end

end A311491.P9031779956748252509

namespace A311491

/-- `A311517(n)-A285957(A017234(n))` -/
def P9031779956748252509.Spec : Prop :=
  ∀ n, P9031779956748252509.a n = A311491 n

end A311491

/-!
# A311492: Coordination sequence Gal.5.147.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311492, there is no canonical definition to state claims against.
-/

/-! ## A311492.P1111800476769057231

`A311493(n)-A124761(A036633(n))`
-/

namespace A311492.P1111800476769057231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311493 n - A124761 (A036633 n).toNat

end

end A311492.P1111800476769057231

/-! ## A311492.P17677595888631637987

`A311493(n)-A185284(A143803(n+1))`
-/

namespace A311492.P17677595888631637987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311493 n - A185284 (A143803 (n + 1)).toNat

end

end A311492.P17677595888631637987

/-! ## A311492.P4022478453040717473

`A311493(A062399(n))`
-/

namespace A311492.P4022478453040717473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311493 (A062399 n).toNat

end

end A311492.P4022478453040717473

/-! ## A311492.P5249652425495500346

`A311493(A120126(n))`
-/

namespace A311492.P5249652425495500346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311493 (A120126 n).toNat

end

end A311492.P5249652425495500346

/-! ## A311492.P12418368014748058480

`A311493(A351870(n))`
-/

namespace A311492.P12418368014748058480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311493 (A351870 n).toNat

end

end A311492.P12418368014748058480

/-!
# A311493: Coordination sequence Gal.5.157.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311493, there is no canonical definition to state claims against.
-/

/-! ## A311493.P11028152677136371827

`A311492(n)+A124761(A036633(n))`
-/

namespace A311493.P11028152677136371827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311492 n + A124761 (A036633 n).toNat

end

end A311493.P11028152677136371827

/-! ## A311493.P10946017490298495595

`A311492(n)+A185284(A143803(n+1))`
-/

namespace A311493.P10946017490298495595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311492 n + A185284 (A143803 (n + 1)).toNat

end

end A311493.P10946017490298495595

/-!
# A311494: Coordination sequence Gal.3.12.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311494, the canonical program `A311494.P11293507898518336772` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311494 has offset 0).

The definition of A311494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311494.P11293507898518336772

`A030118(n)+A004772(A072154(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A311494

/-- `A030118(n)+A004772(A072154(n))` -/
def P11293507898518336772.Spec : Prop :=
  ∀ n, P11293507898518336772.a n = A311494 n

theorem P11293507898518336772.correct : P11293507898518336772.Spec := by
  intro n
  simp only [A311494]

end A311494

/-! ## A311494.P6208774499329314539

`A008458(n)-(A265227(n+1)+A128834(n))`
-/

namespace A311494.P6208774499329314539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A265227 (n + 1) + A128834 n)

end

end A311494.P6208774499329314539

namespace A311494

/-- `A008458(n)-(A265227(n+1)+A128834(n))` -/
def P6208774499329314539.Spec : Prop :=
  ∀ n, P6208774499329314539.a n = A311494 n

end A311494

/-! ## A311494.P6092620502623511875

`A313280(n)-A265227(n+1)+n`
-/

namespace A311494.P6092620502623511875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313280 n - A265227 (n + 1) + (n : ℤ)

end

end A311494.P6092620502623511875

namespace A311494

/-- `A313280(n)-A265227(n+1)+n` -/
def P6092620502623511875.Spec : Prop :=
  ∀ n, P6092620502623511875.a n = A311494 n

end A311494

/-! ## A311494.P7662016002943327301

`A315418(n)-(A128834(n)+n)`
-/

namespace A311494.P7662016002943327301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315418 n - (A128834 n + (n : ℤ))

end

end A311494.P7662016002943327301

namespace A311494

/-- `A315418(n)-(A128834(n)+n)` -/
def P7662016002943327301.Spec : Prop :=
  ∀ n, P7662016002943327301.a n = A311494 n

end A311494

/-! ## A311494.P2763505126546533585

`A313280(n)+A315418(n)-A008458(n)`
-/

namespace A311494.P2763505126546533585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313280 n + (A315418 n - A008458 n)

end

end A311494.P2763505126546533585

namespace A311494

/-- `A313280(n)+A315418(n)-A008458(n)` -/
def P2763505126546533585.Spec : Prop :=
  ∀ n, P2763505126546533585.a n = A311494 n

end A311494

/-! ## A311494.P1165283032548667751

`A311154(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A311494.P1165283032548667751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311154 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A311494.P1165283032548667751

namespace A311494

/-- `A311154(2*n)/(4*n+2-A004277(2*n))` -/
def P1165283032548667751.Spec : Prop :=
  ∀ n, P1165283032548667751.a n = (A311494 n : ℚ)

end A311494

/-! ## A311494.P18378117911597671170

`A004525(A311154(2*n))`
-/

namespace A311494.P18378117911597671170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311154 (2 * n)).toNat

end

end A311494.P18378117911597671170

namespace A311494

/-- `A004525(A311154(2*n))` -/
def P18378117911597671170.Spec : Prop :=
  ∀ n, P18378117911597671170.a n = A311494 n

end A311494

/-! ## A311494.P900418349463377773

`A078898(A311170(2*n))`
-/

namespace A311494.P900418349463377773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A311170 (2 * n)).toNat

end

end A311494.P900418349463377773

namespace A311494

/-- `A078898(A311170(2*n))` -/
def P900418349463377773.Spec : Prop :=
  ∀ n, P900418349463377773.a n = A311494 n

end A311494

/-! ## A311494.P8025613266287881071

`A004526(A311154(2*n)+1)`
-/

namespace A311494.P8025613266287881071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311154 (2 * n) + 1).toNat

end

end A311494.P8025613266287881071

namespace A311494

/-- `A004526(A311154(2*n)+1)` -/
def P8025613266287881071.Spec : Prop :=
  ∀ n, P8025613266287881071.a n = A311494 n

end A311494

/-!
# A311495: Coordination sequence Gal.5.72.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311495, there is no canonical definition to state claims against.
-/

/-! ## A311495.P2002032541744054107

`A311494(n)+A185284(A008578(n+1))`
-/

namespace A311495.P2002032541744054107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311494 n + A185284 (A008578 (n + 1)).toNat

end

end A311495.P2002032541744054107

/-! ## A311495.P3639183563268311698

`A311494(n)+A011732(A213990(n+1))`
-/

namespace A311495.P3639183563268311698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311494 n + A011732 (A213990 (n + 1)).toNat

end

end A311495.P3639183563268311698

/-! ## A311495.P16809800285375349433

`A311494(n)+A011732(A288548(n+9))`
-/

namespace A311495.P16809800285375349433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311494 n + A011732 (A288548 (n + 9)).toNat

end

end A311495.P16809800285375349433

/-! ## A311495.P10570529436962234024

`A311494(n)+A185284(A111902(3*n+1))`
-/

namespace A311495.P10570529436962234024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311494 n + A185284 (A111902 (3 * n + 1)).toNat

end

end A311495.P10570529436962234024

/-!
# A311496: Coordination sequence Gal.6.176.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311496, there is no canonical definition to state claims against.
-/

/-! ## A311496.P8677983617434574519

`record[A311497(A332104(n))]`
-/

namespace A311496.P8677983617434574519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311497 (A332104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311496.P8677983617434574519

/-! ## A311496.P5221499190368924983

`A311497(n*A287384(n))`
-/

namespace A311496.P5221499190368924983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311497 ((n : ℤ) * A287384 n).toNat

end

end A311496.P5221499190368924983

/-! ## A311496.P4322213126707678045

`A311497(n)%A296808(n)`
-/

namespace A311496.P4322213126707678045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311497 n) (A296808 n)

end

end A311496.P4322213126707678045

/-! ## A311496.P9542021482262037347

`∏{e}[A000244(n), A311497(#)]`
-/

namespace A311496.P9542021482262037347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A311497 (Nat.factorization (f1 n).natAbs p)

end

end A311496.P9542021482262037347

/-! ## A311496.P6490014954738180280

`A311497(A062399(n))`
-/

namespace A311496.P6490014954738180280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311497 (A062399 n).toNat

end

end A311496.P6490014954738180280

/-!
# A311497: Coordination sequence Gal.6.160.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311497, there is no canonical definition to state claims against.
-/

/-! ## A311497.P16328898341692530852

`(A311583(n)+A311342(n))/2`
-/

namespace A311497.P16328898341692530852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311583 n + A311342 n : ℚ) / 2

end

end A311497.P16328898341692530852

/-! ## A311497.P761604941431664641

`A004525(A311583(n)+A311342(n))`
-/

namespace A311497.P761604941431664641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311583 n + A311342 n).toNat

end

end A311497.P761604941431664641

/-! ## A311497.P8880465173875059298

`A142150(A311583(n)+A311342(n))`
-/

namespace A311497.P8880465173875059298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A311583 n + A311342 n).toNat

end

end A311497.P8880465173875059298

/-! ## A311497.P5209215985020619739

`A000463(A311342(n)+A311583(n)-1)`
-/

namespace A311497.P5209215985020619739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A311342 n + (A311583 n - 1)).toNat

end

end A311497.P5209215985020619739

/-! ## A311497.P8394259464914141818

`A000463(A311342(n)-(1-A311583(n)))`
-/

namespace A311497.P8394259464914141818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A311342 n - (1 - A311583 n)).toNat

end

end A311497.P8394259464914141818

/-! ## A311497.P9837920907860007140

`A056115(A311583(n)+A311342(n))%(A311583(n)+A311342(n))`
-/

namespace A311497.P9837920907860007140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056115 (A311583 n + A311342 n).toNat) (A311583 n + A311342 n)

end

end A311497.P9837920907860007140

/-! ## A311497.P8128047623562335435

`A112689(3*(A311583(n)+A311342(n)))`
-/

namespace A311497.P8128047623562335435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (3 * (A311583 n + A311342 n)).toNat

end

end A311497.P8128047623562335435

/-!
# A311498: Coordination sequence Gal.6.394.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311498, there is no canonical definition to state claims against.
-/

/-! ## A311498.P16429082164574429111

`A312969(n)-A031286(A158671(n+2))`
-/

namespace A311498.P16429082164574429111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312969 n - A031286 (A158671 (n + 2)).toNat

end

end A311498.P16429082164574429111

/-! ## A311498.P6531245041065175780

`A311508(n^A196879(n))-A302643(A028310(n))`
-/

namespace A311498.P6531245041065175780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311508 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A196879 n : ℤ))).toNat - A302643 (A028310 n).toNat

end

end A311498.P6531245041065175780

/-! ## A311498.P8865653443560421886

`A313746(n)-A135551(3^n)`
-/

namespace A311498.P8865653443560421886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n - A135551 (3 ^ n)

end

end A311498.P8865653443560421886

/-! ## A311498.P15942994114877518430

`A372573(A085904(n+1))+A004976(n)`
-/

namespace A311498.P15942994114877518430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (A085904 (n + 1)).toNat + A004976 n

end

end A311498.P15942994114877518430

/-! ## A311498.P4962525753166436484

`A311916(n)-A359466(A376788(3*(n+1)))`
-/

namespace A311498.P4962525753166436484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311916 n - A359466 (A376788 (3 * (n + 1))).toNat

end

end A311498.P4962525753166436484

/-!
# A311499: Coordination sequence Gal.6.144.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311499, there is no canonical definition to state claims against.
-/

/-! ## A311499.P11112979716516418630

`A311500(n)-A010054(A199921(n+1))`
-/

namespace A311499.P11112979716516418630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311500 n - A010054 (A199921 (n + 1)).toNat

end

end A311499.P11112979716516418630

/-! ## A311499.P2685955220948165712

`A311500(A122200(∑[n]))`
-/

namespace A311499.P2685955220948165712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311500 (A122200 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311499.P2685955220948165712

/-! ## A311499.P13089586511591867267

`A311500(A122204(∑[n]))`
-/

namespace A311499.P13089586511591867267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311500 (A122204 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311499.P13089586511591867267

/-! ## A311499.P5136660690401365112

`A311500(A122285(∑[n]))`
-/

namespace A311499.P5136660690401365112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311500 (A122285 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311499.P5136660690401365112

/-! ## A311499.P7395863558946268890

`A311500(A122286(∑[n]))`
-/

namespace A311499.P7395863558946268890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311500 (A122286 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311499.P7395863558946268890

