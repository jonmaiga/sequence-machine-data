import SequenceMachineLib
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B013.C000
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
import Seq.Opaque.C025

/-!
# A314400: Coordination sequence Gal.6.392.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314400, there is no canonical definition to state claims against.
-/

/-! ## A314400.P1736282259351854740

`A340602(A191894(n+1)+A191872(n+1))`
-/

namespace A314400.P1736282259351854740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340602 (A191894 (n + 1) + A191872 (n + 1)).toNat

end

end A314400.P1736282259351854740

/-!
# A314402: Coordination sequence Gal.6.614.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314402, there is no canonical definition to state claims against.
-/

/-! ## A314402.P4269640967709419003

`∑[A328719(∑[A077168(2*n+3)])]`
-/

namespace A314402.P4269640967709419003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328719 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314402.P4269640967709419003

/-! ## A314402.P16749038882997608575

`A161357(A000070(n))+A114994(2*n)`
-/

namespace A314402.P16749038882997608575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161357 (A000070 n).toNat + A114994 (2 * n)

end

end A314402.P16749038882997608575

/-! ## A314402.P290342318702760752

`A086304(n+1)+∑[A037833(A068402(n+1))]`
-/

namespace A314402.P290342318702760752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A068402 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314402.P290342318702760752

/-! ## A314402.P16110873103028384076

`A086304(n+1)+A001222(A036652(2*(n+1)))`
-/

namespace A314402.P16110873103028384076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1) + A001222 (A036652 (2 * (n + 1))).toNat

end

end A314402.P16110873103028384076

/-!
# A314403: Coordination sequence Gal.4.26.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314403, there is no canonical definition to state claims against.
-/

/-! ## A314403.P6240814693536829836

`record[A010575(n)%A084616(2*n+3)]`
-/

namespace A314403.P6240814693536829836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010575 n) (A084616 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314403.P6240814693536829836

/-! ## A314403.P12242216946969729990

`A091855(n+1)+∑{e}[A255971(n)+1, #]`
-/

namespace A314403.P12242216946969729990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255971 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A314403.P12242216946969729990

/-! ## A314403.P8948597990219576476

`A314406(n)-A083894(A149337(n))`
-/

namespace A314403.P8948597990219576476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314406 n - A083894 (A149337 n).toNat

end

end A314403.P8948597990219576476

/-! ## A314403.P17872324103908827085

`A016825(n)-A285200(A326517(n))`
-/

namespace A314403.P17872324103908827085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A285200 (A326517 n).toNat

end

end A314403.P17872324103908827085

/-! ## A314403.P8850665705715611885

`A314659(n)-A170957(A310870(n))`
-/

namespace A314403.P8850665705715611885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314659 n - A170957 (A310870 n).toNat

end

end A314403.P8850665705715611885

/-!
# A314404: Coordination sequence Gal.6.1.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314404, there is no canonical definition to state claims against.
-/

/-! ## A314404.P7889636113782172624

`record[A111800(A111798(n+1))+A061397(n+1)]`
-/

namespace A314404.P7889636113782172624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111800 (A111798 (n + 1)).toNat + A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314404.P7889636113782172624

/-! ## A314404.P17958550944323856100

`A016825(n)-A335474(A323429(n))`
-/

namespace A314404.P17958550944323856100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A335474 (A323429 n).toNat

end

end A314404.P17958550944323856100

/-! ## A314404.P17629567583304160892

`A190813(n+1)-A046810(A000108(n))`
-/

namespace A314404.P17629567583304160892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190813 (n + 1) - A046810 (A000108 n).toNat

end

end A314404.P17629567583304160892

/-! ## A314404.P2445095516147213856

`A352825(A065435(n+3))+A016777(n)`
-/

namespace A314404.P2445095516147213856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352825 (A065435 (n + 3)).toNat + A016777 n

end

end A314404.P2445095516147213856

/-! ## A314404.P13246902957936191177

`A186500(n+1)-A117449(A053560(n+1))`
-/

namespace A314404.P13246902957936191177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186500 (n + 1) - A117449 (A053560 (n + 1)).toNat

end

end A314404.P13246902957936191177

/-!
# A314405: Coordination sequence Gal.6.37.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314405, there is no canonical definition to state claims against.
-/

/-! ## A314405.P2291021768349935372

`A016813(n)-A318306(A036784(n))`
-/

namespace A314405.P2291021768349935372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A318306 (A036784 n).toNat

end

end A314405.P2291021768349935372

/-! ## A314405.P8187264727032764084

`A122341(A228326(n+1))+A047209(n+1)`
-/

namespace A314405.P8187264727032764084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122341 (A228326 (n + 1)).toNat + A047209 (n + 1)

end

end A314405.P8187264727032764084

/-! ## A314405.P15086413976008114744

`A360679(A211971(n+1))+A000027(3*n+1)`
-/

namespace A314405.P15086413976008114744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360679 (A211971 (n + 1)).toNat + A000027 (3 * n + 1)

end

end A314405.P15086413976008114744

/-!
# A314406: Coordination sequence Gal.5.1.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314406, there is no canonical definition to state claims against.
-/

/-! ## A314406.P1322067682417740216

`eq[2, A106127(n+1)%5]`
-/

namespace A314406.P1322067682417740216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106127 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A314406.P1322067682417740216

/-! ## A314406.P1336626561908594149

`record[A301297(4*n+5)+1-and(2, n)]`
-/

namespace A314406.P1336626561908594149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301297 (4 * n + 5) + (1 - (Nat.land 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314406.P1336626561908594149

/-! ## A314406.P18110894826537242768

`A072152(n)+A001222(4^n)`
-/

namespace A314406.P18110894826537242768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072152 n + A001222 (4 ^ n)

end

end A314406.P18110894826537242768

/-! ## A314406.P8999977340516040370

`4*n+2-A000005(A180016(n))`
-/

namespace A314406.P8999977340516040370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (2 - A000005 (A180016 n).toNat)

end

end A314406.P8999977340516040370

/-! ## A314406.P12654985185050646175

`A016825(n)-A083533(A299169(n))`
-/

namespace A314406.P12654985185050646175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A083533 (A299169 n).toNat

end

end A314406.P12654985185050646175

/-!
# A314407: Coordination sequence Gal.5.16.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314407, there is no canonical definition to state claims against.
-/

/-! ## A314407.P14015997960992653350

`eq[A026920(A233543(n)), A196272(n+4)]`
-/

namespace A314407.P14015997960992653350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026920 (A233543 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196272 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314407.P14015997960992653350

/-! ## A314407.P3291116877005933416

`A198266(n)+A008279(A032559(n+1))`
-/

namespace A314407.P3291116877005933416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198266 n + A008279 (A032559 (n + 1)).toNat

end

end A314407.P3291116877005933416

/-! ## A314407.P7092242859434468512

`A106408(A032559(n+1))+A039004(n+1)`
-/

namespace A314407.P7092242859434468512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106408 (A032559 (n + 1)).toNat + A039004 (n + 1)

end

end A314407.P7092242859434468512

/-! ## A314407.P1356703031082316404

`A106408(A061219(n+1))+A039004(n+1)`
-/

namespace A314407.P1356703031082316404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106408 (A061219 (n + 1)).toNat + A039004 (n + 1)

end

end A314407.P1356703031082316404

/-! ## A314407.P17412400793745828542

`A063538(3*n+2)-A001221(A027914(n+2))`
-/

namespace A314407.P17412400793745828542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (3 * n + 2) - A001221 (A027914 (n + 2)).toNat

end

end A314407.P17412400793745828542

/-!
# A314408: Coordination sequence Gal.6.7.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314408, there is no canonical definition to state claims against.
-/

/-! ## A314408.P17333846059355133390

`lt[∑{e}[A350193(n+1), #], A350090(n)]`
-/

namespace A314408.P17333846059355133390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350193 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A314408.P17333846059355133390

/-! ## A314408.P14634773341898041391

`A177922(n+1)+record[A342913(n+1)]`
-/

namespace A314408.P14634773341898041391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177922 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314408.P14634773341898041391

/-! ## A314408.P9986535987381389186

`A193676(A052905(n))+A103517(n)`
-/

namespace A314408.P9986535987381389186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193676 (A052905 n).toNat + A103517 n

end

end A314408.P9986535987381389186

/-! ## A314408.P6847966667304914556

`A111051(n+1)-A075439(A151431(n))`
-/

namespace A314408.P6847966667304914556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111051 (n + 1) - A075439 (A151431 n).toNat

end

end A314408.P6847966667304914556

/-! ## A314408.P14460443091130858180

`A111051(n+1)-A285258(A072856(n))`
-/

namespace A314408.P14460443091130858180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111051 (n + 1) - A285258 (A072856 n).toNat

end

end A314408.P14460443091130858180

/-!
# A314409: Coordination sequence Gal.4.3.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314409, there is no canonical definition to state claims against.
-/

/-! ## A314409.P3081810245236796267

`A263977(A302929(3*n+5)+A000720(n+1))`
-/

namespace A314409.P3081810245236796267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263977 (A302929 (3 * n + 5) + A000720 (n + 1)).toNat

end

end A314409.P3081810245236796267

/-! ## A314409.P14588239958764513665

`record[and(A053121(n), A104471(n+1))]`
-/

namespace A314409.P14588239958764513665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053121 n) (A104471 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314409.P14588239958764513665

/-! ## A314409.P14976143351767643281

`record[and(A016777(n), A186277(n+1))]`
-/

namespace A314409.P14976143351767643281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016777 n) (A186277 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314409.P14976143351767643281

/-! ## A314409.P9836479490306534270

`A311233(n)+A000007(A264036(n))`
-/

namespace A314409.P9836479490306534270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311233 n + A000007 (A264036 n).toNat

end

end A314409.P9836479490306534270

/-! ## A314409.P5652714848538511990

`A371448(A068159(n+1)*A103517(n))`
-/

namespace A314409.P5652714848538511990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371448 (A068159 (n + 1) * A103517 n).toNat

end

end A314409.P5652714848538511990

/-!
# A314410: Coordination sequence Gal.4.18.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314410, the canonical program `A314410.P14222717731131208766` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314410 has offset 0).

The definition of A314410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314410.P14222717731131208766

`A047363(n+1)+A312655(n)-A265227(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314410

/-- `A047363(n+1)+A312655(n)-A265227(n+1)` -/
def P14222717731131208766.Spec : Prop :=
  ∀ n, P14222717731131208766.a n = A314410 n

theorem P14222717731131208766.correct : P14222717731131208766.Spec := by
  intro n
  simp only [A314410]

end A314410

/-! ## A314410.P17534299843912581347

`xor(4*n, A121361(A060167(2*n+1)))`
-/

namespace A314410.P17534299843912581347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * n : ℤ) (A121361 (A060167 (2 * n + 1)).toNat)

end

end A314410.P17534299843912581347

namespace A314410

/-- `xor(4*n, A121361(A060167(2*n+1)))` -/
def P17534299843912581347.Spec : Prop :=
  ∀ n, P17534299843912581347.a n = A314410 n

end A314410

/-! ## A314410.P17805342449787765558

`A310031(n)+A285189(A055998(n))`
-/

namespace A314410.P17805342449787765558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310031 n + A285189 (A055998 n).toNat

end

end A314410.P17805342449787765558

namespace A314410

/-- `A310031(n)+A285189(A055998(n))` -/
def P17805342449787765558.Spec : Prop :=
  ∀ n, P17805342449787765558.a n = A314410 n

end A314410

/-! ## A314410.P2915791472624112428

`A311366(n)+A163532(A288425(n+1))`
-/

namespace A314410.P2915791472624112428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311366 n + A163532 (A288425 (n + 1)).toNat

end

end A314410.P2915791472624112428

namespace A314410

/-- `A311366(n)+A163532(A288425(n+1))` -/
def P2915791472624112428.Spec : Prop :=
  ∀ n, P2915791472624112428.a n = A314410 n

end A314410

/-! ## A314410.P15094049747202327802

`A003158(n+1)-A270647(A291776(n+2))`
-/

namespace A314410.P15094049747202327802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (n + 1) - A270647 (A291776 (n + 2)).toNat

end

end A314410.P15094049747202327802

namespace A314410

/-- `A003158(n+1)-A270647(A291776(n+2))` -/
def P15094049747202327802.Spec : Prop :=
  ∀ n, P15094049747202327802.a n = A314410 n

end A314410

/-!
# A314411: Coordination sequence Gal.5.223.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314411, there is no canonical definition to state claims against.
-/

/-! ## A314411.P10089486115459427798

`record[and(A008924(n), A102885(n))]`
-/

namespace A314411.P10089486115459427798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008924 n) (A102885 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314411.P10089486115459427798

/-! ## A314411.P2750064724818461024

`eq[A112200(n), A236966(n+1)]+char[1]`
-/

namespace A314411.P2750064724818461024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112200 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236966 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (if ∃ j, f3 j = n then 1 else 0)

end

end A314411.P2750064724818461024

/-! ## A314411.P6711479097305545216

`char[1]+∑[A000005(A232592(n+1)-3)]`
-/

namespace A314411.P6711479097305545216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A232592 (n + 1) - 3).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A314411.P6711479097305545216

/-! ## A314411.P5662567626349733529

`A311563(n)+A185012(A109724(n))`
-/

namespace A314411.P5662567626349733529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311563 n + A185012 (A109724 n).toNat

end

end A314411.P5662567626349733529

/-! ## A314411.P15623459269309342724

`or(A010054(A213907(n)), A311563(n))`
-/

namespace A314411.P15623459269309342724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A213907 n).toNat) (A311563 n)

end

end A314411.P15623459269309342724

/-!
# A314412: Coordination sequence Gal.5.231.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314412, there is no canonical definition to state claims against.
-/

/-! ## A314412.P295802240720052006

`xor(A078680(A320853(n+7)), A276855(n))`
-/

namespace A314412.P295802240720052006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A078680 (A320853 (n + 7)).toNat) (A276855 n)

end

end A314412.P295802240720052006

/-!
# A314413: Coordination sequence Gal.5.236.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314413, there is no canonical definition to state claims against.
-/

/-! ## A314413.P7582538363828171741

`A312969(n)-A008683(A042214(n))`
-/

namespace A314413.P7582538363828171741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312969 n - A008683 (A042214 n).toNat

end

end A314413.P7582538363828171741

/-! ## A314413.P5369397249912311025

`or(A008683(A104970(n)), A311586(n))`
-/

namespace A314413.P5369397249912311025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A104970 n).toNat) (A311586 n)

end

end A314413.P5369397249912311025

/-! ## A314413.P13558363119132977903

`or(A054973(A292549(n)), A311507(n))`
-/

namespace A314413.P13558363119132977903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054973 (A292549 n).toNat) (A311507 n)

end

end A314413.P13558363119132977903

/-! ## A314413.P14361908050032998336

`A214066(n)+A130790(A005109(n+2))`
-/

namespace A314413.P14361908050032998336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214066 n + A130790 (A005109 (n + 2)).toNat

end

end A314413.P14361908050032998336

/-! ## A314413.P16168608733557456712

`A328248(A132056(n+2))+A311588(n)`
-/

namespace A314413.P16168608733557456712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328248 (A132056 (n + 2)).toNat + A311588 n

end

end A314413.P16168608733557456712

/-!
# A314414: Coordination sequence Gal.6.553.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314414, there is no canonical definition to state claims against.
-/

/-! ## A314414.P16140359263670760202

`A349294(A311577(n)+A116178(n+1))`
-/

namespace A314414.P16140359263670760202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (A311577 n + A116178 (n + 1)).toNat

end

end A314414.P16140359263670760202

/-! ## A314414.P9719118341800876894

`A116178(n+1)+record[A311577(n)/A241121(n+1)]`
-/

namespace A314414.P9719118341800876894
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311577 n : ℚ) / (A241121 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116178 (n + 1) : ℚ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314414.P9719118341800876894

/-! ## A314414.P17364635887331243004

`A116178(n+1)+A053603(A053581(n))+A008574(n)`
-/

namespace A314414.P17364635887331243004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 (n + 1) + (A053603 (A053581 n).toNat + A008574 n)

end

end A314414.P17364635887331243004

/-!
# A314415: Coordination sequence Gal.6.512.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314415, there is no canonical definition to state claims against.
-/

/-! ## A314415.P3138985815707284559

`A314416(n)-A163584(A022086(n))`
-/

namespace A314415.P3138985815707284559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314416 n - A163584 (A022086 n).toNat

end

end A314415.P3138985815707284559

/-! ## A314415.P10181875363279492518

`A314416(n)-A185284(A311750(n))`
-/

namespace A314415.P10181875363279492518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314416 n - A185284 (A311750 n).toNat

end

end A314415.P10181875363279492518

/-! ## A314415.P15403276179722477564

`A314416(n)-A185284(A314398(n))`
-/

namespace A314415.P15403276179722477564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314416 n - A185284 (A314398 n).toNat

end

end A314415.P15403276179722477564

/-! ## A314415.P566988515032824932

`A314416(n)-A185284(A314401(n))`
-/

namespace A314415.P566988515032824932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314416 n - A185284 (A314401 n).toNat

end

end A314415.P566988515032824932

/-! ## A314415.P14990354907781514195

`A314416(n)-A185284(A314475(n))`
-/

namespace A314415.P14990354907781514195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314416 n - A185284 (A314475 n).toNat

end

end A314415.P14990354907781514195

/-!
# A314416: Coordination sequence Gal.6.515.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314416, there is no canonical definition to state claims against.
-/

/-! ## A314416.P15858858251256451422

`A314415(n)+A163584(A022086(n))`
-/

namespace A314416.P15858858251256451422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314415 n + A163584 (A022086 n).toNat

end

end A314416.P15858858251256451422

/-! ## A314416.P13621236376111314833

`A348613(A075853(n))+A314415(n)`
-/

namespace A314416.P13621236376111314833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348613 (A075853 n).toNat + A314415 n

end

end A314416.P13621236376111314833

/-! ## A314416.P827191272962887736

`A314415(n)+A185284(A311750(n))`
-/

namespace A314416.P827191272962887736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314415 n + A185284 (A311750 n).toNat

end

end A314416.P827191272962887736

/-! ## A314416.P13905957589282414764

`A314415(n)+A185284(A314398(n))`
-/

namespace A314416.P13905957589282414764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314415 n + A185284 (A314398 n).toNat

end

end A314416.P13905957589282414764

/-! ## A314416.P15048448393886741531

`A314415(n)+A185284(A314401(n))`
-/

namespace A314416.P15048448393886741531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314415 n + A185284 (A314401 n).toNat

end

end A314416.P15048448393886741531

/-!
# A314417: Coordination sequence Gal.6.465.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314417, there is no canonical definition to state claims against.
-/

/-! ## A314417.P18319768377703687605

`A010402(2*(n+1))+A035191(2*(n+1))-2`
-/

namespace A314417.P18319768377703687605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010402 (2 * (n + 1)) + (A035191 (2 * (n + 1)) - 2)

end

end A314417.P18319768377703687605

/-!
# A314418: Coordination sequence Gal.6.73.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314418, there is no canonical definition to state claims against.
-/

/-! ## A314418.P790738875645913858

`A278999(3*n+1)-A232398(A278983(n+1))`
-/

namespace A314418.P790738875645913858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278999 (3 * n + 1) - A232398 (A278983 (n + 1)).toNat

end

end A314418.P790738875645913858

/-!
# A314420: Coordination sequence Gal.4.10.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314420, there is no canonical definition to state claims against.
-/

/-! ## A314420.P11020704173460349925

`A028767(3*(n+1))-A033810(A013929(3*(n+1)))`
-/

namespace A314420.P11020704173460349925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028767 (3 * (n + 1)) - A033810 (A013929 (3 * (n + 1))).toNat

end

end A314420.P11020704173460349925

/-! ## A314420.P878274070235667393

`A301291(n)-A352514(A077866(n))`
-/

namespace A314420.P878274070235667393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - A352514 (A077866 n).toNat

end

end A314420.P878274070235667393

/-! ## A314420.P12740387762467768169

`A314475(n)-A001222(A147091(n+1))`
-/

namespace A314420.P12740387762467768169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314475 n - A001222 (A147091 (n + 1)).toNat

end

end A314420.P12740387762467768169

/-! ## A314420.P15366627787719144068

`A311299(n)-A187097(A095239(n+1))`
-/

namespace A314420.P15366627787719144068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311299 n - A187097 (A095239 (n + 1)).toNat

end

end A314420.P15366627787719144068

/-! ## A314420.P7403108666624868507

`A311687(n)-A008683(∑[A164757(n+2)])`
-/

namespace A314420.P7403108666624868507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164757 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311687 n - A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A314420.P7403108666624868507

/-!
# A314421: Coordination sequence Gal.6.551.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314421, there is no canonical definition to state claims against.
-/

/-! ## A314421.P1082292816217632084

`A314422(n)-A185274(A118053(n))`
-/

namespace A314421.P1082292816217632084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314422 n - A185274 (A118053 n).toNat

end

end A314421.P1082292816217632084

/-! ## A314421.P6851064311966274383

`A314422(n)+A016389(A329695(n+1))`
-/

namespace A314421.P6851064311966274383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314422 n + A016389 (A329695 (n + 1)).toNat

end

end A314421.P6851064311966274383

/-! ## A314421.P16306616966266110115

`A314422(A062399(n))`
-/

namespace A314421.P16306616966266110115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314422 (A062399 n).toNat

end

end A314421.P16306616966266110115

/-! ## A314421.P7695015353145057503

`A314422(A120126(n))`
-/

namespace A314421.P7695015353145057503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314422 (A120126 n).toNat

end

end A314421.P7695015353145057503

/-! ## A314421.P3341947467579680700

`A314422(A351870(n))`
-/

namespace A314421.P3341947467579680700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314422 (A351870 n).toNat

end

end A314421.P3341947467579680700

/-!
# A314422: Coordination sequence Gal.6.552.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314422, there is no canonical definition to state claims against.
-/

/-! ## A314422.P9618047943246612622

`A314421(n)+A185274(A118053(n))`
-/

namespace A314422.P9618047943246612622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314421 n + A185274 (A118053 n).toNat

end

end A314422.P9618047943246612622

/-!
# A314423: Coordination sequence Gal.5.255.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314423, there is no canonical definition to state claims against.
-/

/-! ## A314423.P15280061499355631808

`A315047(n)-A001842(A145137(n))`
-/

namespace A314423.P15280061499355631808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315047 n - A001842 (A145137 n).toNat

end

end A314423.P15280061499355631808

/-! ## A314423.P4852725377371342849

`A250120(n)-A134022(A001006(n+3))`
-/

namespace A314423.P4852725377371342849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A134022 (A001006 (n + 3)).toNat

end

end A314423.P4852725377371342849

/-!
# A314424: Coordination sequence Gal.4.116.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314424, there is no canonical definition to state claims against.
-/

/-! ## A314424.P3558082861837300020

`∑[A088696(A286242(n)²)]`
-/

namespace A314424.P3558082861837300020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088696 (A286242 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314424.P3558082861837300020

/-! ## A314424.P8859248848192020718

`A078822(A281584(n+1)-1)`
-/

namespace A314424.P8859248848192020718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078822 (A281584 (n + 1) - 1).toNat

end

end A314424.P8859248848192020718

/-! ## A314424.P454213221589340860

`∑[A051903(A036898(n+2))]+n`
-/

namespace A314424.P454213221589340860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A036898 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A314424.P454213221589340860

/-! ## A314424.P12943105907498079192

`A311384(n)+A000035((11*n+4)²)`
-/

namespace A314424.P12943105907498079192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311384 n + A000035 ((11 * n + 4) ^ 2)

end

end A314424.P12943105907498079192

/-!
# A314426: Coordination sequence Gal.6.527.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314426, there is no canonical definition to state claims against.
-/

/-! ## A314426.P3511241545004780728

`A311812(n)+A174875(A181103(n+1))`
-/

namespace A314426.P3511241545004780728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311812 n + A174875 (A181103 (n + 1)).toNat

end

end A314426.P3511241545004780728

/-! ## A314426.P823292903016128731

`A250120(n)-A185816(A002995(n+2))`
-/

namespace A314426.P823292903016128731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A185816 (A002995 (n + 2)).toNat

end

end A314426.P823292903016128731

/-! ## A314426.P13097366917953307244

`A315034(n)-A048881(A181860(n))`
-/

namespace A314426.P13097366917953307244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315034 n - A048881 (A181860 n).toNat

end

end A314426.P13097366917953307244

/-! ## A314426.P15100977854721375526

`A219639(n+1)+∑{e}[A241467(n+1), #]`
-/

namespace A314426.P15100977854721375526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219639 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A314426.P15100977854721375526

/-! ## A314426.P16256888238744098044

`A311812(n)+A000035(A002527(n))`
-/

namespace A314426.P16256888238744098044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311812 n + A000035 (A002527 n).toNat

end

end A314426.P16256888238744098044

/-!
# A314427: Coordination sequence Gal.5.253.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314427, there is no canonical definition to state claims against.
-/

/-! ## A314427.P2232093847909437807

`or(A200650(A148456(n)), A311791(n))`
-/

namespace A314427.P2232093847909437807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A200650 (A148456 n).toNat) (A311791 n)

end

end A314427.P2232093847909437807

/-! ## A314427.P12943923860395195155

`A219650(2*n)+A000120(A259351(n+4))`
-/

namespace A314427.P12943923860395195155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219650 (2 * n) + A000120 (A259351 (n + 4)).toNat

end

end A314427.P12943923860395195155

/-! ## A314427.P190272704159908254

`A368110(3*n+2)-A122497(A328222(3*n))`
-/

namespace A314427.P190272704159908254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368110 (3 * n + 2) - A122497 (A328222 (3 * n)).toNat

end

end A314427.P190272704159908254

/-! ## A314427.P2251164609214316542

`lt[A188093(n+1), A188083(C(n+3, 3))]`
-/

namespace A314427.P2251164609214316542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188083 (Nat.choose (n + 3) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A314427.P2251164609214316542

/-! ## A314427.P10835996407370491715

`A314805(n)-A010051(A057574(n))`
-/

namespace A314427.P10835996407370491715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314805 n - A010051 (A057574 n).toNat

end

end A314427.P10835996407370491715

/-!
# A314428: Coordination sequence Gal.6.58.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314428, the canonical program `A314428.P9611413599869563837` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314428 has offset 0).

The definition of A314428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314428.P9611413599869563837

`A315214(n)-A004396(A006369(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A314428

/-- `A315214(n)-A004396(A006369(n))` -/
def P9611413599869563837.Spec : Prop :=
  ∀ n, P9611413599869563837.a n = A314428 n

theorem P9611413599869563837.correct : P9611413599869563837.Spec := by
  intro n
  simp only [A314428]

end A314428

/-!
# A314429: Coordination sequence Gal.5.206.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314429, there is no canonical definition to state claims against.
-/

/-! ## A314429.P9042027053924632186

`∑[A000120(A259664(n+1))]`
-/

namespace A314429.P9042027053924632186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A259664 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314429.P9042027053924632186

/-! ## A314429.P2404125148218366762

`A325352(A325395(3*n+2)+3)`
-/

namespace A314429.P2404125148218366762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325352 (A325395 (3 * n + 2) + 3).toNat

end

end A314429.P2404125148218366762

/-! ## A314429.P17926149808563107102

`A026448(A287355(∑[char[1]+1+n]))`
-/

namespace A314429.P17926149808563107102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026448 (A287355 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A314429.P17926149808563107102

/-! ## A314429.P2941892532918856677

`∑[A001222(record[A219356(3*n+4)])]`
-/

namespace A314429.P2941892532918856677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219356 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314429.P2941892532918856677

/-! ## A314429.P16094038632138209890

`∑[A329697(∑[A046463(n+1)]+n+1)]+n`
-/

namespace A314429.P16094038632138209890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046463 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A314429.P16094038632138209890

/-!
# A314430: Coordination sequence Gal.6.429.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314430, there is no canonical definition to state claims against.
-/

/-! ## A314430.P9995972510369273949

`A250120(n)-A291598(A329050(n))`
-/

namespace A314430.P9995972510369273949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A291598 (A329050 n).toNat

end

end A314430.P9995972510369273949

/-! ## A314430.P8675945970146250807

`A250120(n)-A040076(A047974(n))`
-/

namespace A314430.P8675945970146250807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A040076 (A047974 n).toNat

end

end A314430.P8675945970146250807

/-! ## A314430.P4853460455956630222

`xor(A001221(A011965(n)), A312863(n))`
-/

namespace A314430.P4853460455956630222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A011965 n).toNat) (A312863 n)

end

end A314430.P4853460455956630222

/-! ## A314430.P6010813083341242358

`A151692(A122135(2*(n+1)))+A008574(n)`
-/

namespace A314430.P6010813083341242358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151692 (A122135 (2 * (n + 1))).toNat + A008574 n

end

end A314430.P6010813083341242358

/-!
# A314431: Coordination sequence Gal.6.74.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314431, there is no canonical definition to state claims against.
-/

/-! ## A314431.P12303241127185462182

`A250120(n)-A162642(A207646(n))`
-/

namespace A314431.P12303241127185462182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A162642 (A207646 n).toNat

end

end A314431.P12303241127185462182

/-! ## A314431.P7220720118712511154

`A301722(n)-A346633(A124621(n+1))`
-/

namespace A314431.P7220720118712511154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n - A346633 (A124621 (n + 1)).toNat

end

end A314431.P7220720118712511154

/-! ## A314431.P10752828843730887222

`A074279(A065827(n+1))+n`
-/

namespace A314431.P10752828843730887222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A065827 (n + 1)).toNat + (n : ℤ)

end

end A314431.P10752828843730887222

/-! ## A314431.P1590836756109977520

`∑[A333381(A034296(2*(n+2)))]+n`
-/

namespace A314431.P1590836756109977520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A034296 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A314431.P1590836756109977520

/-! ## A314431.P1572438360741961142

`record[and(A341230(n+2), A346130(2*n+1))]`
-/

namespace A314431.P1572438360741961142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A341230 (n + 2)) (A346130 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314431.P1572438360741961142

/-!
# A314432: Coordination sequence Gal.5.190.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314432, there is no canonical definition to state claims against.
-/

/-! ## A314432.P8381778931187733336

`or(A285661(n+1), A311982(A062399(n)))`
-/

namespace A314432.P8381778931187733336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285661 (n + 1)) (A311982 (A062399 n).toNat)

end

end A314432.P8381778931187733336

/-! ## A314432.P15494458815137713026

`A311512(n)+A010060(A171389(n))`
-/

namespace A314432.P15494458815137713026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n + A010060 (A171389 n).toNat

end

end A314432.P15494458815137713026

/-! ## A314432.P10212423384130011136

`A314894(n)-A001221(A001250(n))`
-/

namespace A314432.P10212423384130011136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314894 n - A001221 (A001250 n).toNat

end

end A314432.P10212423384130011136

/-! ## A314432.P11757695915479928546

`A315210(n)-A001222(A038341(n))`
-/

namespace A314432.P11757695915479928546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315210 n - A001222 (A038341 n).toNat

end

end A314432.P11757695915479928546

/-! ## A314432.P13046997420923433286

`A314848(n)-A001221(A087214(n))`
-/

namespace A314432.P13046997420923433286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n - A001221 (A087214 n).toNat

end

end A314432.P13046997420923433286

/-!
# A314433: Coordination sequence Gal.6.553.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314433, there is no canonical definition to state claims against.
-/

/-! ## A314433.P5198832183956482513

`A314432(n)+A124761(A002378(n))`
-/

namespace A314433.P5198832183956482513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314432 n + A124761 (A002378 n).toNat

end

end A314433.P5198832183956482513

/-! ## A314433.P487376976559233233

`A314432(n)+A188027(A276144(n+1))`
-/

namespace A314433.P487376976559233233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314432 n + A188027 (A276144 (n + 1)).toNat

end

end A314433.P487376976559233233

/-! ## A314433.P5186749872199105436

`A250120(n)-A086600(A163939(n+1))`
-/

namespace A314433.P5186749872199105436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A086600 (A163939 (n + 1)).toNat

end

end A314433.P5186749872199105436

/-! ## A314433.P6261878576438053614

`A314432(n)+A186745(A036426(n+3))`
-/

namespace A314433.P6261878576438053614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314432 n + A186745 (A036426 (n + 3)).toNat

end

end A314433.P6261878576438053614

/-!
# A314434: Coordination sequence Gal.6.22.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314434, there is no canonical definition to state claims against.
-/

/-! ## A314434.P10645039709106108707

`A047624(A337019(2*n+3)+A084618(n+1))`
-/

namespace A314434.P10645039709106108707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047624 (A337019 (2 * n + 3) + A084618 (n + 1)).toNat

end

end A314434.P10645039709106108707

/-!
# A314435: Coordination sequence Gal.6.34.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314435, there is no canonical definition to state claims against.
-/

/-! ## A314435.P13338201084231703174

`∑[dr(A319067(A319103(n)))]`
-/

namespace A314435.P13338201084231703174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A319067 (A319103 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314435.P13338201084231703174

/-! ## A314435.P16194614487983051158

`A310779(n)+A001221(A001045(2*n+1))`
-/

namespace A314435.P16194614487983051158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310779 n + A001221 (A001045 (2 * n + 1)).toNat

end

end A314435.P16194614487983051158

/-! ## A314435.P6343848873271261788

`A000045(A049455(n+1))+A312101(n)-A001221(A012258(n))`
-/

namespace A314435.P6343848873271261788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A049455 (n + 1)).toNat + (A312101 n - A001221 (A012258 n).toNat)

end

end A314435.P6343848873271261788

/-! ## A314435.P11310865283771243204

`A000045(A049455(n+1))+A301298(n)-A267263(A099376(n))`
-/

namespace A314435.P11310865283771243204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A049455 (n + 1)).toNat + (A301298 n - A267263 (A099376 n).toNat)

end

end A314435.P11310865283771243204

/-!
# A314436: Coordination sequence Gal.5.264.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314436, there is no canonical definition to state claims against.
-/

/-! ## A314436.P3028011398474563968

`xor(A193330(A087051(n)), A313191(n))`
-/

namespace A314436.P3028011398474563968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A193330 (A087051 n).toNat) (A313191 n)

end

end A314436.P3028011398474563968

/-! ## A314436.P18064052723797214478

`A372441(A108304(n))+4*n`
-/

namespace A314436.P18064052723797214478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372441 (A108304 n).toNat + (4 * n : ℤ)

end

end A314436.P18064052723797214478

/-! ## A314436.P12604507225515811959

`A392969(3*n+1)+A001221(A393001(n+1))`
-/

namespace A314436.P12604507225515811959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392969 (3 * n + 1) + A001221 (A393001 (n + 1)).toNat

end

end A314436.P12604507225515811959

/-! ## A314436.P3382607241921718034

`record[A313967(n)-(A052905(n)-(A294144(n+1)+2*n))]`
-/

namespace A314436.P3382607241921718034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313967 n - (A052905 n - (A294144 (n + 1) + (2 * n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314436.P3382607241921718034

/-!
# A314437: Coordination sequence Gal.6.74.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314437, there is no canonical definition to state claims against.
-/

/-! ## A314437.P1229881824124167439

`∑[A101297(A280059(n))]`
-/

namespace A314437.P1229881824124167439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101297 (A280059 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314437.P1229881824124167439

/-! ## A314437.P13546414605611570872

`A245636(record[Δ[A245625(3*n+2)]])`
-/

namespace A314437.P13546414605611570872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245625 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245636 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A314437.P13546414605611570872

/-! ## A314437.P136000852820695950

`A315185(n)-A112604(A041007(n))`
-/

namespace A314437.P136000852820695950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315185 n - A112604 (A041007 n).toNat

end

end A314437.P136000852820695950

/-! ## A314437.P8085374211277089585

`A352921(A352336(n+1))+A022850(n)`
-/

namespace A314437.P8085374211277089585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352921 (A352336 (n + 1)).toNat + A022850 n

end

end A314437.P8085374211277089585

/-!
# A314438: Coordination sequence Gal.5.92.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314438, there is no canonical definition to state claims against.
-/

/-! ## A314438.P3833392329126462244

`A338690(A102101(n))+A004938(n)`
-/

namespace A314438.P3833392329126462244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338690 (A102101 n).toNat + A004938 n

end

end A314438.P3833392329126462244

/-! ## A314438.P7225644803114090161

`A311790(n)+A166353(A166317(n))`
-/

namespace A314438.P7225644803114090161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311790 n + A166353 (A166317 n).toNat

end

end A314438.P7225644803114090161

/-! ## A314438.P7382649712259762321

`A311821(n)+A001877(A014217(2*n+1))`
-/

namespace A314438.P7382649712259762321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311821 n + A001877 (A014217 (2 * n + 1)).toNat

end

end A314438.P7382649712259762321

/-! ## A314438.P15365360860326986170

`A312999(n)+A062157(A094688(n))`
-/

namespace A314438.P15365360860326986170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312999 n + A062157 (A094688 n).toNat

end

end A314438.P15365360860326986170

/-! ## A314438.P18178361555762441880

`xor(A122284(A001045(n)), A313179(n))`
-/

namespace A314438.P18178361555762441880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A122284 (A001045 n).toNat) (A313179 n)

end

end A314438.P18178361555762441880

/-!
# A314440: Coordination sequence Gal.6.392.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314440, there is no canonical definition to state claims against.
-/

/-! ## A314440.P11271824478837383668

`A312486(n)+A056594(A048695(n))`
-/

namespace A314440.P11271824478837383668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312486 n + A056594 (A048695 n).toNat

end

end A314440.P11271824478837383668

/-! ## A314440.P14240360587531807428

`A312486(n)-A056594(A048693(n))`
-/

namespace A314440.P14240360587531807428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312486 n - A056594 (A048693 n).toNat

end

end A314440.P14240360587531807428

/-! ## A314440.P17999217376382259414

`A312486(n)+A056594(A048693(n)+2)`
-/

namespace A314440.P17999217376382259414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312486 n + A056594 (A048693 n + 2).toNat

end

end A314440.P17999217376382259414

/-! ## A314440.P2530458608182865579

`∑[A001227(A213758(n+1))]+n`
-/

namespace A314440.P2530458608182865579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A213758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A314440.P2530458608182865579

/-! ## A314440.P2115053285561267070

`A196252(A257408(3*n+2))-4`
-/

namespace A314440.P2115053285561267070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196252 (A257408 (3 * n + 2)).toNat - 4

end

end A314440.P2115053285561267070

/-!
# A314441: Coordination sequence Gal.6.315.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314441, there is no canonical definition to state claims against.
-/

/-! ## A314441.P3891633718040350176

`or(A010054(A006882(n)), A312099(n))`
-/

namespace A314441.P3891633718040350176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A006882 n).toNat) (A312099 n)

end

end A314441.P3891633718040350176

/-! ## A314441.P10355716954419279447

`or(A266591(A032569(n+1)), A312099(n))`
-/

namespace A314441.P10355716954419279447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266591 (A032569 (n + 1)).toNat) (A312099 n)

end

end A314441.P10355716954419279447

/-! ## A314441.P13849280693611899527

`A294018(A087286(n+1))+A313051(n)-A102677(n²²)`
-/

namespace A314441.P13849280693611899527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294018 (A087286 (n + 1)).toNat + (A313051 n - A102677 ((n ^ 2) ^ 2))

end

end A314441.P13849280693611899527

/-! ## A314441.P11085048572336787535

`or(A312099(n), A334941(A004769(n)))`
-/

namespace A314441.P11085048572336787535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312099 n) (A334941 (A004769 n).toNat)

end

end A314441.P11085048572336787535

/-!
# A314442: Coordination sequence Gal.6.392.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314442, there is no canonical definition to state claims against.
-/

/-! ## A314442.P18379477853267908622

`A053735(A048757(n))+A020657(3*n+1)`
-/

namespace A314442.P18379477853267908622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A048757 n).toNat + A020657 (3 * n + 1)

end

end A314442.P18379477853267908622

/-! ## A314442.P14915866949805116066

`A314751(n)+A056594(A060797(n))`
-/

namespace A314442.P14915866949805116066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314751 n + A056594 (A060797 n).toNat

end

end A314442.P14915866949805116066

/-! ## A314442.P10551799447172583848

`A312117(n)+A059448(A214761(n))`
-/

namespace A314442.P10551799447172583848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312117 n + A059448 (A214761 n).toNat

end

end A314442.P10551799447172583848

/-! ## A314442.P18317290432917958343

`A314430(n)+A086071(A346747(n))`
-/

namespace A314442.P18317290432917958343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314430 n + A086071 (A346747 n).toNat

end

end A314442.P18317290432917958343

/-!
# A314443: Coordination sequence Gal.6.316.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314443, there is no canonical definition to state claims against.
-/

/-! ## A314443.P8594604621998306265

`A250120(n)-A119241(A208237(n))`
-/

namespace A314443.P8594604621998306265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A119241 (A208237 n).toNat

end

end A314443.P8594604621998306265

/-! ## A314443.P761428992476987732

`A314521(n)-A001221(A351502(n))`
-/

namespace A314443.P761428992476987732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314521 n - A001221 (A351502 n).toNat

end

end A314443.P761428992476987732

/-! ## A314443.P4749442933126337604

`A315897(n)-A341256(A196168(2*n))`
-/

namespace A314443.P4749442933126337604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315897 n - A341256 (A196168 (2 * n)).toNat

end

end A314443.P4749442933126337604

/-!
# A314444: Coordination sequence Gal.6.76.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314444, there is no canonical definition to state claims against.
-/

/-! ## A314444.P14403544268579030166

`A314431(n)+A057427(A324411(n+1))`
-/

namespace A314444.P14403544268579030166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314431 n + A057427 (A324411 (n + 1)).toNat

end

end A314444.P14403544268579030166

/-! ## A314444.P623556901400733621

`A312120(n)+A010051(A331715(n+1))`
-/

namespace A314444.P623556901400733621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312120 n + A010051 (A331715 (n + 1)).toNat

end

end A314444.P623556901400733621

/-! ## A314444.P3217858235835117546

`A358135(A057184(n+1))+A250120(n)`
-/

namespace A314444.P3217858235835117546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358135 (A057184 (n + 1)).toNat + A250120 n

end

end A314444.P3217858235835117546

/-! ## A314444.P3342601507720621428

`A314448(n)-A257990(A248764(n+1))`
-/

namespace A314444.P3342601507720621428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314448 n - A257990 (A248764 (n + 1)).toNat

end

end A314444.P3342601507720621428

/-! ## A314444.P6423710625832491505

`xor(A212619(A332490(n+1)), A314446(n))`
-/

namespace A314444.P6423710625832491505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A212619 (A332490 (n + 1)).toNat) (A314446 n)

end

end A314444.P6423710625832491505

/-!
# A314445: Coordination sequence Gal.3.33.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314445, there is no canonical definition to state claims against.
-/

/-! ## A314445.P5174021724582811414

`(A315896(n)+A311642(n))/2`
-/

namespace A314445.P5174021724582811414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315896 n + A311642 n : ℚ) / 2

end

end A314445.P5174021724582811414

/-! ## A314445.P807373893668708911

`A060681(A315896(n)+A311642(n))`
-/

namespace A314445.P807373893668708911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A315896 n + A311642 n).toNat

end

end A314445.P807373893668708911

/-!
# A314446: Coordination sequence Gal.6.469.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314446, there is no canonical definition to state claims against.
-/

/-! ## A314446.P7003527881355965832

`A160755(A311590(n)+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)`
-/

namespace A314446.P7003527881355965832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (SequenceMachineLib.roundAway ((A311590 n : ℚ) + (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)))).toNat

end

end A314446.P7003527881355965832

/-! ## A314446.P1840563477826558253

`A315348(A087051(n))-n`
-/

namespace A314446.P1840563477826558253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315348 (A087051 n).toNat - (n : ℤ)

end

end A314446.P1840563477826558253

/-! ## A314446.P15613257362897032527

`A012265(xor(n, A114698(n+1)))`
-/

namespace A314446.P15613257362897032527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (Int.xor (n : ℤ) (A114698 (n + 1))).toNat

end

end A314446.P15613257362897032527

/-!
# A314447: Coordination sequence Gal.4.24.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314447, there is no canonical definition to state claims against.
-/

/-! ## A314447.P16968227321344153618

`A343746(A004978(n+1))+A314501(n)`
-/

namespace A314447.P16968227321344153618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343746 (A004978 (n + 1)).toNat + A314501 n

end

end A314447.P16968227321344153618

/-! ## A314447.P12544893252598938204

`or(A124761(A070974(n+1)), A314446(n))`
-/

namespace A314447.P12544893252598938204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124761 (A070974 (n + 1)).toNat) (A314446 n)

end

end A314447.P12544893252598938204

/-!
# A314448: Coordination sequence Gal.5.205.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314448, there is no canonical definition to state claims against.
-/

/-! ## A314448.P956805442660434065

`A301708(n)-A001222(A203278(n))`
-/

namespace A314448.P956805442660434065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n - A001222 (A203278 n).toNat

end

end A314448.P956805442660434065

/-! ## A314448.P17588038415342299107

`A314444(n)+A257990(A248764(n+1))`
-/

namespace A314448.P17588038415342299107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314444 n + A257990 (A248764 (n + 1)).toNat

end

end A314448.P17588038415342299107

/-! ## A314448.P17868347510145216735

`or(A072715(n+1), A095076(A277243(n)))`
-/

namespace A314448.P17868347510145216735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072715 (n + 1)) (A095076 (A277243 n).toNat)

end

end A314448.P17868347510145216735

/-! ## A314448.P5071468663117446988

`or(A072715(n+1), A258869(A122392(n)))`
-/

namespace A314448.P5071468663117446988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072715 (n + 1)) (A258869 (A122392 n).toNat)

end

end A314448.P5071468663117446988

/-! ## A314448.P17362586692806776327

`A072473(n+1)+A035202(A322792(n+2))`
-/

namespace A314448.P17362586692806776327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + A035202 (A322792 (n + 2)).toNat

end

end A314448.P17362586692806776327

/-!
# A314449: Coordination sequence Gal.5.261.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314449, there is no canonical definition to state claims against.
-/

/-! ## A314449.P17190800239487578328

`A250120(n)-A268387(A049168(n))`
-/

namespace A314449.P17190800239487578328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A268387 (A049168 n).toNat

end

end A314449.P17190800239487578328

/-! ## A314449.P15213377222461246825

`A016861(n)-A001222(Δ[A150480(n)])`
-/

namespace A314449.P15213377222461246825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n - A001222 (f1 (n + 1) - f1 n).toNat

end

end A314449.P15213377222461246825

/-! ## A314449.P4229918995053196169

`A250120(n)-A287556(A005268(n+1))`
-/

namespace A314449.P4229918995053196169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A287556 (A005268 (n + 1)).toNat

end

end A314449.P4229918995053196169

/-! ## A314449.P10261641962352155952

`or(A039966(A287427(n+1)), A314437(n))`
-/

namespace A314449.P10261641962352155952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039966 (A287427 (n + 1)).toNat) (A314437 n)

end

end A314449.P10261641962352155952

/-! ## A314449.P12651425697827851270

`xor(A276084(A215176(n+1)), A312179(n))`
-/

namespace A314449.P12651425697827851270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A276084 (A215176 (n + 1)).toNat) (A312179 n)

end

end A314449.P12651425697827851270

/-!
# A314450: Coordination sequence Gal.6.466.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314450, there is no canonical definition to state claims against.
-/

/-! ## A314450.P10111500388126529255

`∑[A164818(∑[A275585(n)])]`
-/

namespace A314450.P10111500388126529255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275585 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164818 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314450.P10111500388126529255

/-! ## A314450.P11205285217560568002

`A301298(n)-A221836(A155212(n))`
-/

namespace A314450.P11205285217560568002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A221836 (A155212 n).toNat

end

end A314450.P11205285217560568002

/-! ## A314450.P3082324670574562056

`or(A000035(A080873(n)), A312140(n))`
-/

namespace A314450.P3082324670574562056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A080873 n).toNat) (A312140 n)

end

end A314450.P3082324670574562056

/-! ## A314450.P5005257250841530079

`A301298(n)-A010054(A167201(n+1))`
-/

namespace A314450.P5005257250841530079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A010054 (A167201 (n + 1)).toNat

end

end A314450.P5005257250841530079

/-! ## A314450.P3064868338865126049

`A301298(n)-A354918(A212471(n+1))`
-/

namespace A314450.P3064868338865126049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A354918 (A212471 (n + 1)).toNat

end

end A314450.P3064868338865126049

/-!
# A314451: Coordination sequence Gal.6.590.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314451, there is no canonical definition to state claims against.
-/

/-! ## A314451.P11430019795335994712

`A189668(A114296(n))+A114275(n+1)`
-/

namespace A314451.P11430019795335994712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (A114296 n).toNat + A114275 (n + 1)

end

end A314451.P11430019795335994712

/-! ## A314451.P17028662080359353777

`A118247(A263102(n))+A114275(n+1)`
-/

namespace A314451.P17028662080359353777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118247 (A263102 n).toNat + A114275 (n + 1)

end

end A314451.P17028662080359353777

/-! ## A314451.P13408633808747583933

`or(A314450(n), A316523(A359189(n+1)))`
-/

namespace A314451.P13408633808747583933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314450 n) (A316523 (A359189 (n + 1)).toNat)

end

end A314451.P13408633808747583933

/-! ## A314451.P4508631243471955147

`A114275(n+1)+A000035(A002961(n+1))`
-/

namespace A314451.P4508631243471955147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114275 (n + 1) + A000035 (A002961 (n + 1)).toNat

end

end A314451.P4508631243471955147

/-! ## A314451.P677415876719226401

`A114275(n+1)+A007949(A108070(n+1))`
-/

namespace A314451.P677415876719226401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114275 (n + 1) + A007949 (A108070 (n + 1)).toNat

end

end A314451.P677415876719226401

/-!
# A314452: Coordination sequence Gal.6.267.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314452, there is no canonical definition to state claims against.
-/

/-! ## A314452.P329857439112515411

`A279933(A248958(3*(n+1)))`
-/

namespace A314452.P329857439112515411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279933 (A248958 (3 * (n + 1))).toNat

end

end A314452.P329857439112515411

/-! ## A314452.P5252728417832636255

`A318963(A259387(n+1))+A045750(n)`
-/

namespace A314452.P5252728417832636255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318963 (A259387 (n + 1)).toNat + A045750 n

end

end A314452.P5252728417832636255

/-! ## A314452.P2674760404020394703

`A045750(n)+A010054(A277945(2*n+5))`
-/

namespace A314452.P2674760404020394703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045750 n + A010054 (A277945 (2 * n + 5)).toNat

end

end A314452.P2674760404020394703

/-! ## A314452.P13469682936541542944

`A072770(A072753(2*n+3))+A072715(n+1)`
-/

namespace A314452.P13469682936541542944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072770 (A072753 (2 * n + 3)).toNat + A072715 (n + 1)

end

end A314452.P13469682936541542944

/-! ## A314452.P12374659071364779856

`or(A072473(n+1), A237048(A082038(3*(n+1))))`
-/

namespace A314452.P12374659071364779856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072473 (n + 1)) (A237048 (A082038 (3 * (n + 1))).toNat)

end

end A314452.P12374659071364779856

/-!
# A314453: Coordination sequence Gal.6.381.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314453, there is no canonical definition to state claims against.
-/

/-! ## A314453.P6313612970691870719

`A314768(n)+A056594(A181768(n))`
-/

namespace A314453.P6313612970691870719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314768 n + A056594 (A181768 n).toNat

end

end A314453.P6313612970691870719

/-! ## A314453.P16489511487994075329

`or(A000086(A061534(n)), A312185(n))`
-/

namespace A314453.P16489511487994075329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000086 (A061534 n).toNat) (A312185 n)

end

end A314453.P16489511487994075329

/-! ## A314453.P2187791808564922651

`xor(A231347(A231331(n)), A250120(n))`
-/

namespace A314453.P2187791808564922651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A231347 (A231331 n).toNat) (A250120 n)

end

end A314453.P2187791808564922651

/-! ## A314453.P13651111346482055733

`A160755(A155212(n)-A025487(n+1))`
-/

namespace A314453.P13651111346482055733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A155212 n - A025487 (n + 1)).toNat

end

end A314453.P13651111346482055733

/-! ## A314453.P3564168814764184373

`A008706(n)-A102679(A069757(n+2))`
-/

namespace A314453.P3564168814764184373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A102679 (A069757 (n + 2)).toNat

end

end A314453.P3564168814764184373

/-!
# A314454: Coordination sequence Gal.6.365.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314454, there is no canonical definition to state claims against.
-/

/-! ## A314454.P10826638633173891479

`A314385(n)+3%A075550(n+1)²`
-/

namespace A314454.P10826638633173891479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314385 n + Int.tmod 3 (A075550 (n + 1) ^ 2)

end

end A314454.P10826638633173891479

/-! ## A314454.P10278790626692107478

`A303601(A236559(2*(n+1))+n)+n`
-/

namespace A314454.P10278790626692107478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303601 (A236559 (2 * (n + 1)) + (n : ℤ)).toNat + (n : ℤ)

end

end A314454.P10278790626692107478

/-! ## A314454.P11713198779282061419

`record[A117384(n+1)-A054548(2*(n+2))]`
-/

namespace A314454.P11713198779282061419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117384 (n + 1) - A054548 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314454.P11713198779282061419

/-! ## A314454.P2716120528176923856

`xor(A051903(A054491(n)), A312865(n))`
-/

namespace A314454.P2716120528176923856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051903 (A054491 n).toNat) (A312865 n)

end

end A314454.P2716120528176923856

/-!
# A314456: Coordination sequence Gal.5.199.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314456, there is no canonical definition to state claims against.
-/

/-! ## A314456.P16719278434141854280

`A315907(n)-A000007(A346677(n))`
-/

namespace A314456.P16719278434141854280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315907 n - A000007 (A346677 n).toNat

end

end A314456.P16719278434141854280

/-! ## A314456.P9365303917679664029

`A315907(n)-A128174(A070858(n+1))`
-/

namespace A314456.P9365303917679664029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315907 n - A128174 (A070858 (n + 1)).toNat

end

end A314456.P9365303917679664029

/-! ## A314456.P13719883613999556124

`A314459(n)-A011745(A003422(n))`
-/

namespace A314456.P13719883613999556124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314459 n - A011745 (A003422 n).toNat

end

end A314456.P13719883613999556124

/-! ## A314456.P3161806197277136996

`A314459(n)-A144193(A000044(n))`
-/

namespace A314456.P3161806197277136996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314459 n - A144193 (A000044 n).toNat

end

end A314456.P3161806197277136996

/-! ## A314456.P10672385982277930800

`A301298(n)-A062157(A139469(n))`
-/

namespace A314456.P10672385982277930800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A062157 (A139469 n).toNat

end

end A314456.P10672385982277930800

/-!
# A314457: Coordination sequence Gal.6.554.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314457, there is no canonical definition to state claims against.
-/

/-! ## A314457.P10725091084159388335

`A068509(A273500(n))+n`
-/

namespace A314457.P10725091084159388335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (A273500 n).toNat + (n : ℤ)

end

end A314457.P10725091084159388335

/-! ## A314457.P4556181125908460693

`A314934(n)-A000035(A282816(n))`
-/

namespace A314457.P4556181125908460693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314934 n - A000035 (A282816 n).toNat

end

end A314457.P4556181125908460693

/-! ## A314457.P18037319021627184810

`A314518(n)-A055736(A330211(n))`
-/

namespace A314457.P18037319021627184810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314518 n - A055736 (A330211 n).toNat

end

end A314457.P18037319021627184810

/-! ## A314457.P4228098248189040432

`or(A264051(A001181(n)), A311652(n))`
-/

namespace A314457.P4228098248189040432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A264051 (A001181 n).toNat) (A311652 n)

end

end A314457.P4228098248189040432

/-! ## A314457.P17625321755215247381

`A016861(n)-A182850(A233554(n+1))`
-/

namespace A314457.P17625321755215247381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n - A182850 (A233554 (n + 1)).toNat

end

end A314457.P17625321755215247381

/-!
# A314458: Coordination sequence Gal.3.40.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314458, the canonical program `A314458.P17842328892750460290` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314458 has offset 0).

The definition of A314458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314458.P17842328892750460290

`A265035(2*n)-record[A283971(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314458

/-- `A265035(2*n)-record[A283971(n)]` -/
def P17842328892750460290.Spec : Prop :=
  ∀ n, P17842328892750460290.a n = A314458 n

theorem P17842328892750460290.correct : P17842328892750460290.Spec := by
  intro n
  simp only [A314458]

end A314458

/-! ## A314458.P3468802395049847351

`A265035(2*n)-A004396(2*n)`
-/

namespace A314458.P3468802395049847351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 (2 * n) - A004396 (2 * n)

end

end A314458.P3468802395049847351

namespace A314458

/-- `A265035(2*n)-A004396(2*n)` -/
def P3468802395049847351.Spec : Prop :=
  ∀ n, P3468802395049847351.a n = A314458 n

end A314458

/-! ## A314458.P3328450912591427832

`A265035(2*n)-A002264(4*n+1)`
-/

namespace A314458.P3328450912591427832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 (2 * n) - A002264 (4 * n + 1)

end

end A314458.P3328450912591427832

namespace A314458

/-- `A265035(2*n)-A002264(4*n+1)` -/
def P3328450912591427832.Spec : Prop :=
  ∀ n, P3328450912591427832.a n = A314458 n

end A314458

/-! ## A314458.P18240192259558692902

`A265035(2*n)-(A008615(2*n+1)+n)`
-/

namespace A314458.P18240192259558692902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 (2 * n) - (A008615 (2 * n + 1) + (n : ℤ))

end

end A314458.P18240192259558692902

namespace A314458

/-- `A265035(2*n)-(A008615(2*n+1)+n)` -/
def P18240192259558692902.Spec : Prop :=
  ∀ n, P18240192259558692902.a n = A314458 n

end A314458

/-! ## A314458.P10343061140213008466

`A301676(n)+A087509(A064429(n))`
-/

namespace A314458.P10343061140213008466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A087509 (A064429 n).toNat

end

end A314458.P10343061140213008466

namespace A314458

/-- `A301676(n)+A087509(A064429(n))` -/
def P10343061140213008466.Spec : Prop :=
  ∀ n, P10343061140213008466.a n = A314458 n

end A314458

/-! ## A314458.P10112097579851279928

`A301694(n)-A083219(A107750(n))`
-/

namespace A314458.P10112097579851279928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A083219 (A107750 n).toNat

end

end A314458.P10112097579851279928

namespace A314458

/-- `A301694(n)-A083219(A107750(n))` -/
def P10112097579851279928.Spec : Prop :=
  ∀ n, P10112097579851279928.a n = A314458 n

end A314458

/-! ## A314458.P7879714014229326957

`record[A265035(A153733(n))-A004396(n)]`
-/

namespace A314458.P7879714014229326957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 (A153733 n).toNat - A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314458.P7879714014229326957

namespace A314458

/-- `record[A265035(A153733(n))-A004396(n)]` -/
def P7879714014229326957.Spec : Prop :=
  ∀ n, P7879714014229326957.a n = A314458 n

end A314458

/-! ## A314458.P18031425247088071695

`record[A265035(A237420(n))-A004396(n)]`
-/

namespace A314458.P18031425247088071695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 (A237420 n).toNat - A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314458.P18031425247088071695

namespace A314458

/-- `record[A265035(A237420(n))-A004396(n)]` -/
def P18031425247088071695.Spec : Prop :=
  ∀ n, P18031425247088071695.a n = A314458 n

end A314458

/-! ## A314458.P2051906232990737737

`A004396(n)+A265035(A005843(n))-A005843(n)`
-/

namespace A314458.P2051906232990737737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A265035 (A005843 n).toNat - A005843 n)

end

end A314458.P2051906232990737737

namespace A314458

/-- `A004396(n)+A265035(A005843(n))-A005843(n)` -/
def P2051906232990737737.Spec : Prop :=
  ∀ n, P2051906232990737737.a n = A314458 n

end A314458

/-! ## A314458.P14327851687989437514

`A301722(n)-A004523(A130481(n))`
-/

namespace A314458.P14327851687989437514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n - A004523 (A130481 n).toNat

end

end A314458.P14327851687989437514

namespace A314458

/-- `A301722(n)-A004523(A130481(n))` -/
def P14327851687989437514.Spec : Prop :=
  ∀ n, P14327851687989437514.a n = A314458 n

end A314458

/-! ## A314458.P11429592500441218680

`A008574(n)+A301722(n)-A298024(n)`
-/

namespace A314458.P11429592500441218680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A301722 n - A298024 n)

end

end A314458.P11429592500441218680

namespace A314458

/-- `A008574(n)+A301722(n)-A298024(n)` -/
def P11429592500441218680.Spec : Prop :=
  ∀ n, P11429592500441218680.a n = A314458 n

end A314458

/-! ## A314458.P6676688072118252357

`A004396(A265035(2*n))+A004396(n)`
-/

namespace A314458.P6676688072118252357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A265035 (2 * n)).toNat + A004396 n

end

end A314458.P6676688072118252357

namespace A314458

/-- `A004396(A265035(2*n))+A004396(n)` -/
def P6676688072118252357.Spec : Prop :=
  ∀ n, P6676688072118252357.a n = A314458 n

end A314458

/-! ## A314458.P3843157054980066451

`A004396(n)+A004396(A301722(n)+A004396(n))`
-/

namespace A314458.P3843157054980066451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A301722 n + A004396 n).toNat

end

end A314458.P3843157054980066451

namespace A314458

/-- `A004396(n)+A004396(A301722(n)+A004396(n))` -/
def P3843157054980066451.Spec : Prop :=
  ∀ n, P3843157054980066451.a n = A314458 n

end A314458

/-! ## A314458.P6248764702033114000

`A265035(2*n)-A008615(A016813(2*n))`
-/

namespace A314458.P6248764702033114000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 (2 * n) - A008615 (A016813 (2 * n)).toNat

end

end A314458.P6248764702033114000

namespace A314458

/-- `A265035(2*n)-A008615(A016813(2*n))` -/
def P6248764702033114000.Spec : Prop :=
  ∀ n, P6248764702033114000.a n = A314458 n

end A314458

/-!
# A314459: Coordination sequence Gal.6.510.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314459, there is no canonical definition to state claims against.
-/

/-! ## A314459.P5876122251030648333

`A314458(n)+A103589(A037952(n))`
-/

namespace A314459.P5876122251030648333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314458 n + A103589 (A037952 n).toNat

end

end A314459.P5876122251030648333

/-! ## A314459.P3564891499249680976

`A314456(n)+A144193(A000044(n))`
-/

namespace A314459.P3564891499249680976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314456 n + A144193 (A000044 n).toNat

end

end A314459.P3564891499249680976

/-! ## A314459.P1358857698130004508

`A314458(n)+A144193(A008486(n))`
-/

namespace A314459.P1358857698130004508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314458 n + A144193 (A008486 n).toNat

end

end A314459.P1358857698130004508

/-! ## A314459.P1401586556029552694

`A314458(n)+A011738(A148696(n))`
-/

namespace A314459.P1401586556029552694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314458 n + A011738 (A148696 n).toNat

end

end A314459.P1401586556029552694

/-! ## A314459.P10092814160676046980

`or(A008683(A067188(n+1)), A314458(n))`
-/

namespace A314459.P10092814160676046980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A067188 (n + 1)).toNat) (A314458 n)

end

end A314459.P10092814160676046980

/-!
# A314460: Coordination sequence Gal.4.110.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314460, there is no canonical definition to state claims against.
-/

/-! ## A314460.P9228122901694334565

`A326499(A314480(2*n+1))+A314459(n)`
-/

namespace A314460.P9228122901694334565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326499 ((A314480 (2 * n + 1)).toNat + 50) + A314459 n

end

end A314460.P9228122901694334565

/-! ## A314460.P14089303015664028074

`A314459(n)+A103589(A037952(n))`
-/

namespace A314460.P14089303015664028074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314459 n + A103589 (A037952 n).toNat

end

end A314460.P14089303015664028074

/-! ## A314460.P15350154292390946007

`A314459(n)+A144193(A008486(n))`
-/

namespace A314460.P15350154292390946007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314459 n + A144193 (A008486 n).toNat

end

end A314460.P15350154292390946007

/-! ## A314460.P11836213661676839971

`A314459(n)+A011738(A148696(n))`
-/

namespace A314460.P11836213661676839971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314459 n + A011738 (A148696 n).toNat

end

end A314460.P11836213661676839971

/-! ## A314460.P954671752510376787

`A314459(n)+A185284(A312660(n))`
-/

namespace A314460.P954671752510376787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314459 n + A185284 (A312660 n).toNat

end

end A314460.P954671752510376787

/-!
# A314461: Coordination sequence Gal.6.568.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314461, there is no canonical definition to state claims against.
-/

/-! ## A314461.P10956295497977786187

`A314791(n)-A014707(A065960(n+1))`
-/

namespace A314461.P10956295497977786187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314791 n - A014707 (A065960 (n + 1)).toNat

end

end A314461.P10956295497977786187

/-!
# A314463: Coordination sequence Gal.5.152.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314463, there is no canonical definition to state claims against.
-/

/-! ## A314463.P11734596081177818274

`A301694(n)-A007895(A176027(n))`
-/

namespace A314463.P11734596081177818274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A007895 (A176027 n).toNat

end

end A314463.P11734596081177818274

/-!
# A314466: Coordination sequence Gal.5.205.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314466, there is no canonical definition to state claims against.
-/

/-! ## A314466.P9128354470249356578

`A314465(n)+A000941(A054502(n+1))`
-/

namespace A314466.P9128354470249356578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314465 n + A000941 (A054502 (n + 1)).toNat

end

end A314466.P9128354470249356578

/-!
# A314468: Coordination sequence Gal.4.129.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314468, there is no canonical definition to state claims against.
-/

/-! ## A314468.P1773019638776884937

`2*A314555(n)-A314566(n)`
-/

namespace A314468.P1773019638776884937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314555 n - A314566 n

end

end A314468.P1773019638776884937

/-! ## A314468.P8517090218737061606

`A005843(A314555(n))-A314566(n)`
-/

namespace A314468.P8517090218737061606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314555 n).toNat - A314566 n

end

end A314468.P8517090218737061606

/-!
# A314472: Coordination sequence Gal.6.15.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314472, there is no canonical definition to state claims against.
-/

/-! ## A314472.P9203088743178583284

`A311166(n)+Δ[p?[A228275(n)]]`
-/

namespace A314472.P9203088743178583284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311166 n + (f1 (n + 1) - f1 n)

end

end A314472.P9203088743178583284

/-! ## A314472.P11389176656291486473

`A330878(A276853(n)+∑[∑{e}[n+1, #]+1])`
-/

namespace A314472.P11389176656291486473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (A276853 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A314472.P11389176656291486473

/-! ## A314472.P3686231588645344455

`A312283(n)+A175861(A240968(n+1))`
-/

namespace A314472.P3686231588645344455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312283 n + A175861 (A240968 (n + 1)).toNat

end

end A314472.P3686231588645344455

/-! ## A314472.P13666721396278442850

`A003002(A329827(n+1)+A154260(n+1))`
-/

namespace A314472.P13666721396278442850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A329827 (n + 1) + A154260 (n + 1)).toNat

end

end A314472.P13666721396278442850

/-! ## A314472.P4020591413347783689

`A314470(n)+A011725(A265067(2*(n+2)))`
-/

namespace A314472.P4020591413347783689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314470 n + A011725 (A265067 (2 * (n + 2))).toNat

end

end A314472.P4020591413347783689

/-!
# A314473: Coordination sequence Gal.6.63.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314473, there is no canonical definition to state claims against.
-/

/-! ## A314473.P7458131726053629678

`xor(A001877(A218481(n)), A312423(n))`
-/

namespace A314473.P7458131726053629678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001877 (A218481 n).toNat) (A312423 n)

end

end A314473.P7458131726053629678

/-! ## A314473.P6639574713360913584

`A140487(n+1)-A000122(A262128(n))`
-/

namespace A314473.P6639574713360913584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140487 (n + 1) - A000122 (A262128 n).toNat

end

end A314473.P6639574713360913584

/-! ## A314473.P4542955720524054824

`A250120(n)-A190544(A230214(n+5))`
-/

namespace A314473.P4542955720524054824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A190544 (A230214 (n + 5)).toNat

end

end A314473.P4542955720524054824

/-!
# A314474: Coordination sequence Gal.6.549.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314474, there is no canonical definition to state claims against.
-/

/-! ## A314474.P11127797319617917629

`A314338(n)+A059841(A133647(n))`
-/

namespace A314474.P11127797319617917629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314338 n + A059841 (A133647 n).toNat

end

end A314474.P11127797319617917629

/-! ## A314474.P18333975711760984250

`A311743(n)+A267635(A000244(n))`
-/

namespace A314474.P18333975711760984250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311743 n + A267635 (A000244 n).toNat

end

end A314474.P18333975711760984250

/-! ## A314474.P11968381880894574116

`A314338(n)-A049347(A007689(n))`
-/

namespace A314474.P11968381880894574116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314338 n - A049347 (A007689 n).toNat

end

end A314474.P11968381880894574116

/-! ## A314474.P14269743013666508369

`A250120(n)-A056924(A121724(n))`
-/

namespace A314474.P14269743013666508369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A056924 (A121724 n).toNat

end

end A314474.P14269743013666508369

/-! ## A314474.P4287021638257598726

`A250120(n)-A352513(A007089(n))`
-/

namespace A314474.P4287021638257598726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A352513 (A007089 n).toNat

end

end A314474.P4287021638257598726

/-!
# A314475: Coordination sequence Gal.6.550.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314475, there is no canonical definition to state claims against.
-/

/-! ## A314475.P4980483517283171690

`A314302(n)+A001222(A032346(n))`
-/

namespace A314475.P4980483517283171690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314302 n + A001222 (A032346 n).toNat

end

end A314475.P4980483517283171690

/-! ## A314475.P9006272207498974855

`A311193(n)+A196564(A119915(n))`
-/

namespace A314475.P9006272207498974855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311193 n + A196564 (A119915 n).toNat

end

end A314475.P9006272207498974855

/-! ## A314475.P5019509354221153232

`A311523(n)+A081729(A007474(n))`
-/

namespace A314475.P5019509354221153232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311523 n + A081729 (A007474 n).toNat

end

end A314475.P5019509354221153232

/-! ## A314475.P1321732204426628492

`A250120(n)-A303838(A000325(n))`
-/

namespace A314475.P1321732204426628492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A303838 (A000325 n).toNat

end

end A314475.P1321732204426628492

/-! ## A314475.P10454998923589830031

`A250120(n)-A331385(A136252(n))`
-/

namespace A314475.P10454998923589830031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A331385 (A136252 n).toNat

end

end A314475.P10454998923589830031

/-!
# A314476: Coordination sequence Gal.5.191.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314476, there is no canonical definition to state claims against.
-/

/-! ## A314476.P347272882855222934

`A314477(n)+A178798(A000032(n))`
-/

namespace A314476.P347272882855222934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314477 n + A178798 (A000032 n).toNat

end

end A314476.P347272882855222934

/-! ## A314476.P8452678399118824347

`A314477(n)-A024155(A000111(n))`
-/

namespace A314476.P8452678399118824347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314477 n - A024155 (A000111 n).toNat

end

end A314476.P8452678399118824347

/-! ## A314476.P18217590049546191987

`A314477(n)-A336355(A000110(n))`
-/

namespace A314476.P18217590049546191987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314477 n - A336355 (A000110 n).toNat

end

end A314476.P18217590049546191987

/-! ## A314476.P15395512899529834028

`A314477(n)-A324687(A038023(n))`
-/

namespace A314476.P15395512899529834028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314477 n - A324687 (A038023 n).toNat

end

end A314476.P15395512899529834028

/-!
# A314477: Coordination sequence Gal.5.193.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314477, there is no canonical definition to state claims against.
-/

/-! ## A314477.P8858693563109828125

`A314476(n)+A024155(A000111(n))`
-/

namespace A314477.P8858693563109828125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314476 n + A024155 (A000111 n).toNat

end

end A314477.P8858693563109828125

/-! ## A314477.P17847572653219028000

`A314476(n)+A178798(A003242(n))`
-/

namespace A314477.P17847572653219028000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314476 n + A178798 (A003242 n).toNat

end

end A314477.P17847572653219028000

/-! ## A314477.P2395794825056761177

`A324687(A038023(n))+A314476(n)`
-/

namespace A314477.P2395794825056761177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324687 (A038023 n).toNat + A314476 n

end

end A314477.P2395794825056761177

/-! ## A314477.P14541877929288395304

`A314476(n)+A178798(A061447(n+1))`
-/

namespace A314477.P14541877929288395304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314476 n + A178798 (A061447 (n + 1)).toNat

end

end A314477.P14541877929288395304

/-! ## A314477.P14693919411834423948

`A314476(n)+A186745(A036426(n+3))`
-/

namespace A314477.P14693919411834423948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314476 n + A186745 (A036426 (n + 3)).toNat

end

end A314477.P14693919411834423948

/-!
# A314478: Coordination sequence Gal.6.360.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314478, there is no canonical definition to state claims against.
-/

/-! ## A314478.P5040920910613542593

`A311356(n)+A001877(A149903(n))`
-/

namespace A314478.P5040920910613542593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311356 n + A001877 (A149903 n).toNat

end

end A314478.P5040920910613542593

/-! ## A314478.P5134124966520760594

`xor(A007814(n+1), A339217(A032555(n+1)))`
-/

namespace A314478.P5134124966520760594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007814 (n + 1)) (A339217 (A032555 (n + 1)).toNat)

end

end A314478.P5134124966520760594

/-! ## A314478.P2874749822782881578

`xor(A007814(n+1), A339217(A032559(n+1)))`
-/

namespace A314478.P2874749822782881578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007814 (n + 1)) (A339217 (A032559 (n + 1)).toNat)

end

end A314478.P2874749822782881578

/-!
# A314479: Coordination sequence Gal.6.54.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314479, there is no canonical definition to state claims against.
-/

/-! ## A314479.P2373311875319770127

`A314486(n)-A010054(A295156(n+1))`
-/

namespace A314479.P2373311875319770127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314486 n - A010054 (A295156 (n + 1)).toNat

end

end A314479.P2373311875319770127

/-! ## A314479.P16580890867749380138

`A314486(n)-A161739(A036653(n))`
-/

namespace A314479.P16580890867749380138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314486 n - A161739 (A036653 n).toNat

end

end A314479.P16580890867749380138

/-! ## A314479.P5587776524729925474

`A314486(n)-A010894(A314518(n))`
-/

namespace A314479.P5587776524729925474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314486 n - A010894 ((A314518 n).toNat + 21)

end

end A314479.P5587776524729925474

/-! ## A314479.P11911174788582558097

`A314486(n)-A010894(A315303(n))`
-/

namespace A314479.P11911174788582558097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314486 n - A010894 ((A315303 n).toNat + 21)

end

end A314479.P11911174788582558097

/-! ## A314479.P10743093002613430798

`A314486(n)-A136522(A330542(n+4))`
-/

namespace A314479.P10743093002613430798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314486 n - A136522 (A330542 (n + 4)).toNat

end

end A314479.P10743093002613430798

/-!
# A314480: Coordination sequence Gal.6.539.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314480, there is no canonical definition to state claims against.
-/

/-! ## A314480.P18171649139050078613

`A314422(n)+A001222(A095793(n))`
-/

namespace A314480.P18171649139050078613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314422 n + A001222 (A095793 n).toNat

end

end A314480.P18171649139050078613

/-!
# A314481: Coordination sequence Gal.6.543.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314481, there is no canonical definition to state claims against.
-/

/-! ## A314481.P10182730522182158576

`xor(A069010(A003604(n)), A250120(n))`
-/

namespace A314481.P10182730522182158576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A069010 (A003604 n).toNat) (A250120 n)

end

end A314481.P10182730522182158576

/-! ## A314481.P4742960285318907941

`xor(A087117(A298858(n)), A250120(n))`
-/

namespace A314481.P4742960285318907941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087117 (A298858 n).toNat) (A250120 n)

end

end A314481.P4742960285318907941

/-! ## A314481.P13302099983636750971

`A316059(n)-A001222(record[A141234(n+1)])`
-/

namespace A314481.P13302099983636750971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316059 n - A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A314481.P13302099983636750971

/-! ## A314481.P5981973327203820030

`A311625(n)+A070176(A000244(n))-char[4]`
-/

namespace A314481.P5981973327203820030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311625 n + A070176 (A000244 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A314481.P5981973327203820030

/-!
# A314482: Coordination sequence Gal.6.541.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314482, there is no canonical definition to state claims against.
-/

/-! ## A314482.P10089828847361211316

`A320052(∑{d}[∏{p}[n+1, #], (n+1)/#])+A310731(n)`
-/

namespace A314482.P10089828847361211316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320052 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat + A310731 n

end

end A314482.P10089828847361211316

/-! ## A314482.P12058790961391660836

`A315017(n)-A244528(A239290(n+1))`
-/

namespace A314482.P12058790961391660836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315017 n - A244528 (A239290 (n + 1)).toNat

end

end A314482.P12058790961391660836

/-! ## A314482.P12604875923551929116

`A180613(A268756(n+1)+1)-A244528(A239290(n+1))`
-/

namespace A314482.P12604875923551929116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180613 (A268756 (n + 1) + 1).toNat - A244528 (A239290 (n + 1)).toNat

end

end A314482.P12604875923551929116

/-!
# A314483: Coordination sequence Gal.5.262.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314483, there is no canonical definition to state claims against.
-/

/-! ## A314483.P3786920741592272259

`or(A008579(n), A080843(A242520(n+1)))`
-/

namespace A314483.P3786920741592272259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008579 n) (A080843 (A242520 (n + 1)).toNat)

end

end A314483.P3786920741592272259

/-! ## A314483.P12163404484138956850

`or(A008579(n), A352822(A325875(2*n)))`
-/

namespace A314483.P12163404484138956850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008579 n) (A352822 (A325875 (2 * n)).toNat)

end

end A314483.P12163404484138956850

/-! ## A314483.P15226374808617210495

`A359353(n+1)+A037846(A290594(n+1))`
-/

namespace A314483.P15226374808617210495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359353 (n + 1) + A037846 (A290594 (n + 1)).toNat

end

end A314483.P15226374808617210495

/-!
# A314484: Coordination sequence Gal.6.306.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314484, there is no canonical definition to state claims against.
-/

/-! ## A314484.P9005192087644473579

`or(A007814(n+1), A312439(A062399(n)))`
-/

namespace A314484.P9005192087644473579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (n + 1)) (A312439 (A062399 n).toNat)

end

end A314484.P9005192087644473579

/-! ## A314484.P3892734757475062785

`or(A007814(A182622(n+1)), A312439(n))`
-/

namespace A314484.P3892734757475062785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A182622 (n + 1)).toNat) (A312439 n)

end

end A314484.P3892734757475062785

/-! ## A314484.P12661273928124619580

`or(A007814(A182622(n+1)), A312440(n))`
-/

namespace A314484.P12661273928124619580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A182622 (n + 1)).toNat) (A312440 n)

end

end A314484.P12661273928124619580

/-! ## A314484.P15470504701761612030

`A312440(A120126(n))+A010060(A062731(n+1))`
-/

namespace A314484.P15470504701761612030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312440 (A120126 n).toNat + A010060 (A062731 (n + 1)).toNat

end

end A314484.P15470504701761612030

/-! ## A314484.P8954421241031494000

`A215976(A215981(n+1))+4*n`
-/

namespace A314484.P8954421241031494000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215976 (A215981 (n + 1)).toNat + (4 * n : ℤ)

end

end A314484.P8954421241031494000

/-!
# A314485: Coordination sequence Gal.6.358.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314485, there is no canonical definition to state claims against.
-/

/-! ## A314485.P3240071254718443989

`∑[A332338(3*n)%7]`
-/

namespace A314485.P3240071254718443989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332338 (3 * n)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314485.P3240071254718443989

/-! ## A314485.P7404517533699582009

`∑[A004427(∑[A292549(n)])]`
-/

namespace A314485.P7404517533699582009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292549 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314485.P7404517533699582009

/-! ## A314485.P2382867740584190005

`∑[A004427(∑[A316409(n+8)])]`
-/

namespace A314485.P2382867740584190005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316409 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314485.P2382867740584190005

/-! ## A314485.P15702993864526019994

`∑[A004427(∑[A316410(n+9)])]`
-/

namespace A314485.P15702993864526019994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316410 (n + 9)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314485.P15702993864526019994

/-! ## A314485.P10382062924032745858

`A312481(n)+A121262(A180144(n))`
-/

namespace A314485.P10382062924032745858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312481 n + A121262 (A180144 n).toNat

end

end A314485.P10382062924032745858

/-!
# A314486: Coordination sequence Gal.5.249.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314486, there is no canonical definition to state claims against.
-/

/-! ## A314486.P15506585114285123128

`A314479(n)+A010054(A295156(n+1))`
-/

namespace A314486.P15506585114285123128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314479 n + A010054 (A295156 (n + 1)).toNat

end

end A314486.P15506585114285123128

/-! ## A314486.P7317029804717261939

`A314479(n)+A161739(A036653(n))`
-/

namespace A314486.P7317029804717261939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314479 n + A161739 (A036653 n).toNat

end

end A314486.P7317029804717261939

/-! ## A314486.P7882241559345134752

`A314479(n)+A010894(A314518(n))`
-/

namespace A314486.P7882241559345134752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314479 n + A010894 ((A314518 n).toNat + 21)

end

end A314486.P7882241559345134752

/-! ## A314486.P4783915707085811706

`A314479(n)+A010894(A315303(n))`
-/

namespace A314486.P4783915707085811706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314479 n + A010894 ((A315303 n).toNat + 21)

end

end A314486.P4783915707085811706

/-! ## A314486.P478579846024619604

`A314479(n)+A010051(A303144(n+2))`
-/

namespace A314486.P478579846024619604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314479 n + A010051 (A303144 (n + 2)).toNat

end

end A314486.P478579846024619604

/-!
# A314487: Coordination sequence Gal.6.512.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314487, there is no canonical definition to state claims against.
-/

/-! ## A314487.P10262786807381281758

`A187410(A227549(n+1)+1)+n-3`
-/

namespace A314487.P10262786807381281758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187410 (A227549 (n + 1) + 1).toNat + ((n : ℤ) - 3)

end

end A314487.P10262786807381281758

/-! ## A314487.P17070274959006392124

`A314912(A087051(n))-A049600(n)`
-/

namespace A314487.P17070274959006392124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314912 (A087051 n).toNat - A049600 n

end

end A314487.P17070274959006392124

/-! ## A314487.P5603590924440856370

`A187224(A187899(n+1)+A087051(n))`
-/

namespace A314487.P5603590924440856370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187224 (A187899 (n + 1) + A087051 n).toNat

end

end A314487.P5603590924440856370

/-! ## A314487.P16156311126838915823

`xor(A301298(n), A326918(A078737(n+1)))`
-/

namespace A314487.P16156311126838915823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A301298 n) (A326918 (A078737 (n + 1)).toNat)

end

end A314487.P16156311126838915823

/-! ## A314487.P3410114670327293452

`∑[dr(A275735(A210448(n)))]`
-/

namespace A314487.P3410114670327293452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A275735 (A210448 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314487.P3410114670327293452

/-!
# A314488: Coordination sequence Gal.6.545.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314488, there is no canonical definition to state claims against.
-/

/-! ## A314488.P5580062810039814418

`∑[A328114(record[A173679(n)²])]`
-/

namespace A314488.P5580062810039814418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173679 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314488.P5580062810039814418

/-! ## A314488.P7824829458608541676

`∑[A269570(8*(n+2))*A269982(9*n+3)]`
-/

namespace A314488.P7824829458608541676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269570 (8 * (n + 2)) * A269982 (9 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314488.P7824829458608541676

/-! ## A314488.P12260082356034073913

`A315897(n)-A000035(A003422(n))`
-/

namespace A314488.P12260082356034073913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315897 n - A000035 (A003422 n).toNat

end

end A314488.P12260082356034073913

/-! ## A314488.P5547173855683950276

`xor(A001221(A000302(n)), A313215(n))`
-/

namespace A314488.P5547173855683950276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A000302 n).toNat) (A313215 n)

end

end A314488.P5547173855683950276

/-! ## A314488.P2208470847394555103

`eq[A001222(A293796(n)), A129982(n)]`
-/

namespace A314488.P2208470847394555103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A293796 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314488.P2208470847394555103

/-!
# A314489: Coordination sequence Gal.6.301.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314489, there is no canonical definition to state claims against.
-/

/-! ## A314489.P16689790174576309822

`xor(A056558(A099960(n+3)), A250120(n))`
-/

namespace A314489.P16689790174576309822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056558 (A099960 (n + 3)).toNat) (A250120 n)

end

end A314489.P16689790174576309822

/-! ## A314489.P2875263510765675862

`A311463(n)+A278529(A032555(n+1))`
-/

namespace A314489.P2875263510765675862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311463 n + A278529 (A032555 (n + 1)).toNat

end

end A314489.P2875263510765675862

/-! ## A314489.P2316247809347763081

`A312968(n)-A008683(A074164(n+1))`
-/

namespace A314489.P2316247809347763081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312968 n - A008683 (A074164 (n + 1)).toNat

end

end A314489.P2316247809347763081

/-! ## A314489.P3167728502673183604

`A314493(n)-A086075(A111563(n+1))`
-/

namespace A314489.P3167728502673183604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314493 n - A086075 (A111563 (n + 1)).toNat

end

end A314489.P3167728502673183604

/-!
# A314490: Coordination sequence Gal.6.591.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314490, there is no canonical definition to state claims against.
-/

/-! ## A314490.P9298325101227635949

`A314491(n)-A340988(n²+10)`
-/

namespace A314490.P9298325101227635949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314491 n - A340988 (n ^ 2 + 10 + 91)

end

end A314490.P9298325101227635949

/-! ## A314490.P2709720964182070085

`A314491(n)-A102683(A015518(n))`
-/

namespace A314490.P2709720964182070085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314491 n - A102683 (A015518 n).toNat

end

end A314490.P2709720964182070085

/-! ## A314490.P7877501664481553096

`A314491(n)-A102683(A041046(n))`
-/

namespace A314490.P7877501664481553096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314491 n - A102683 (A041046 n).toNat

end

end A314490.P7877501664481553096

/-! ## A314490.P1777294132080113046

`xor(A314491(n), A351357(A059433(n)))`
-/

namespace A314490.P1777294132080113046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A314491 n) (A351357 (A059433 n).toNat)

end

end A314490.P1777294132080113046

/-! ## A314490.P17191695267890899841

`A314491(n)-A185246(A000071(n+1))`
-/

namespace A314490.P17191695267890899841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314491 n - A185246 (A000071 (n + 1)).toNat

end

end A314490.P17191695267890899841

/-!
# A314491: Coordination sequence Gal.6.592.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314491, there is no canonical definition to state claims against.
-/

/-! ## A314491.P9868110288890851372

`A351357(A059433(n))+A314490(n)`
-/

namespace A314491.P9868110288890851372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351357 (A059433 n).toNat + A314490 n

end

end A314491.P9868110288890851372

/-! ## A314491.P13522645175540642072

`A314490(n)+A185284(A311010(n))`
-/

namespace A314491.P13522645175540642072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314490 n + A185284 (A311010 n).toNat

end

end A314491.P13522645175540642072

/-! ## A314491.P16100884351362601249

`A314490(n)+A126741(A103357(n+1))`
-/

namespace A314491.P16100884351362601249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314490 n + A126741 (A103357 (n + 1)).toNat

end

end A314491.P16100884351362601249

/-! ## A314491.P7467267834434998880

`or(A107110(A100651(n+1)), A314490(n))`
-/

namespace A314491.P7467267834434998880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107110 (A100651 (n + 1)).toNat) (A314490 n)

end

end A314491.P7467267834434998880

/-!
# A314492: Coordination sequence Gal.5.251.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314492, there is no canonical definition to state claims against.
-/

/-! ## A314492.P9330471208948339642

`A250120(n)-A240857(A002426(n))`
-/

namespace A314492.P9330471208948339642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A240857 (A002426 n).toNat

end

end A314492.P9330471208948339642

/-! ## A314492.P11918889434388656029

`A314848(n)-A253786(A148197(n))`
-/

namespace A314492.P11918889434388656029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n - A253786 (A148197 n).toNat

end

end A314492.P11918889434388656029

/-! ## A314492.P11137820165261022365

`A311807(n)+A001222(A141504(n))`
-/

namespace A314492.P11137820165261022365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A001222 (A141504 n).toNat

end

end A314492.P11137820165261022365

/-! ## A314492.P14862260973871541761

`A310906(n)+A083890(A259033(n))`
-/

namespace A314492.P14862260973871541761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310906 n + A083890 (A259033 n).toNat

end

end A314492.P14862260973871541761

/-! ## A314492.P11784580092068623739

`A310787(n)+A001221(A352861(n))`
-/

namespace A314492.P11784580092068623739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310787 n + A001221 (A352861 n).toNat

end

end A314492.P11784580092068623739

/-!
# A314493: Coordination sequence Gal.6.515.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314493, there is no canonical definition to state claims against.
-/

/-! ## A314493.P1498699749235176412

`A160755(xor(A026812(n), A315032(n)))`
-/

namespace A314493.P1498699749235176412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (Int.xor (A026812 n) (A315032 n)).toNat

end

end A314493.P1498699749235176412

/-! ## A314493.P11134327554396999990

`A346129(A310063(n))+A172398(A033950(n+1))`
-/

namespace A314493.P11134327554396999990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (A310063 n).toNat + A172398 (A033950 (n + 1)).toNat

end

end A314493.P11134327554396999990

/-! ## A314493.P18250882548451485646

`A302929(A047274(n+2))+floor(ϕ*(n+1))`
-/

namespace A314493.P18250882548451485646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302929 (A047274 (n + 2)).toNat + ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A314493.P18250882548451485646

/-! ## A314493.P3196375618143681462

`A315036(n)-A002264(A032555(n+1))`
-/

namespace A314493.P3196375618143681462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315036 n - A002264 (A032555 (n + 1)).toNat

end

end A314493.P3196375618143681462

/-! ## A314493.P1831899608587584223

`A090501(or(A234016(n), A326833(n+1)))`
-/

namespace A314493.P1831899608587584223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090501 (Int.lor (A234016 n) (A326833 (n + 1))).toNat

end

end A314493.P1831899608587584223

/-!
# A314494: Coordination sequence Gal.5.263.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314494, there is no canonical definition to state claims against.
-/

/-! ## A314494.P3375638964033308163

`A311365(n)+A243067(A311345(3*n+2))`
-/

namespace A314494.P3375638964033308163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311365 n + A243067 (A311345 (3 * n + 2)).toNat

end

end A314494.P3375638964033308163

/-! ## A314494.P2013347021659662769

`A194414(3*(n+1))-A278102(A000043(2*n+5))`
-/

namespace A314494.P2013347021659662769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194414 (3 * (n + 1)) - A278102 (A000043 (2 * n + 5)).toNat

end

end A314494.P2013347021659662769

/-!
# A314495: Coordination sequence Gal.6.359.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314495, there is no canonical definition to state claims against.
-/

/-! ## A314495.P12780867204256954981

`A250120(n)-A244895(A000150(n))`
-/

namespace A314495.P12780867204256954981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A244895 (A000150 n).toNat

end

end A314495.P12780867204256954981

/-! ## A314495.P13075801341193676475

`A072154(2*n)-A244895(A000150(n))`
-/

namespace A314495.P13075801341193676475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A244895 (A000150 n).toNat

end

end A314495.P13075801341193676475

/-! ## A314495.P18236071109737388719

`record[A072154(n)/(-1)^n]-A244895(A000150(n))`
-/

namespace A314495.P18236071109737388719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072154 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A244895 (A000150 n).toNat : ℚ)

end

end A314495.P18236071109737388719

/-! ## A314495.P12563871735259900913

`A047486(A008486(n)+1)-A244895(A000150(n))`
-/

namespace A314495.P12563871735259900913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008486 n + 1).toNat - A244895 (A000150 n).toNat

end

end A314495.P12563871735259900913

/-! ## A314495.P13518762108152702514

`A047486(A033627(n+2))-A244895(A000150(n))`
-/

namespace A314495.P13518762108152702514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A033627 (n + 2)).toNat - A244895 (A000150 n).toNat

end

end A314495.P13518762108152702514

/-!
# A314496: Coordination sequence Gal.5.192.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314496, there is no canonical definition to state claims against.
-/

/-! ## A314496.P16571720847055142850

`xor(A055641(A157659(n+1)), A314497(n))`
-/

namespace A314496.P16571720847055142850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055641 (A157659 (n + 1)).toNat) (A314497 n)

end

end A314496.P16571720847055142850

/-! ## A314496.P6040586011483874946

`A353846(A010120(n))+A312552(n)`
-/

namespace A314496.P6040586011483874946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (A010120 n).toNat + A312552 n

end

end A314496.P6040586011483874946

/-! ## A314496.P435705022343357072

`A250120(n)-A071325(A000667(n))`
-/

namespace A314496.P435705022343357072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A071325 (A000667 n).toNat

end

end A314496.P435705022343357072

/-! ## A314496.P10213686237580464421

`A250120(n)-A037135(A289837(n+1))`
-/

namespace A314496.P10213686237580464421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A037135 (A289837 (n + 1)).toNat

end

end A314496.P10213686237580464421

/-!
# A314497: Coordination sequence Gal.5.189.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314497, there is no canonical definition to state claims against.
-/

/-! ## A314497.P11736809554491422982

`A084558(A091001(n))+A008574(n)`
-/

namespace A314497.P11736809554491422982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A091001 n).toNat + A008574 n

end

end A314497.P11736809554491422982

/-! ## A314497.P8835197542856187193

`A314848(n)-A010054(A002203(n))`
-/

namespace A314497.P8835197542856187193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n - A010054 (A002203 n).toNat

end

end A314497.P8835197542856187193

/-! ## A314497.P17284014611829494238

`A314848(n)-A022003(A003418(n))`
-/

namespace A314497.P17284014611829494238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n - A022003 (A003418 n).toNat

end

end A314497.P17284014611829494238

/-! ## A314497.P11085944443132268787

`A315032(n)-A001221(A210671(n))`
-/

namespace A314497.P11085944443132268787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315032 n - A001221 (A210671 n).toNat

end

end A314497.P11085944443132268787

/-! ## A314497.P13625597408662153160

`A315033(n)-A268318(A102114(n))`
-/

namespace A314497.P13625597408662153160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315033 n - A268318 (A102114 n).toNat

end

end A314497.P13625597408662153160

/-!
# A314498: Coordination sequence Gal.6.361.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314498, there is no canonical definition to state claims against.
-/

/-! ## A314498.P9078288862511517735

`A314915(n)-A286804(A264746(n+1))`
-/

namespace A314498.P9078288862511517735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314915 n - A286804 (A264746 (n + 1)).toNat

end

end A314498.P9078288862511517735

/-! ## A314498.P5558176594722801794

`A064289(A221847(3*n))+A003622(n+1)`
-/

namespace A314498.P5558176594722801794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (A221847 (3 * n)).toNat + A003622 (n + 1)

end

end A314498.P5558176594722801794

/-! ## A314498.P16522342985390057249

`A214546(A000108(n))+A123663(3*n+1)`
-/

namespace A314498.P16522342985390057249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 (A000108 n).toNat + A123663 (3 * n + 1)

end

end A314498.P16522342985390057249

/-! ## A314498.P831971519272884840

`A239504(A148630(n+1))`
-/

namespace A314498.P831971519272884840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239504 (A148630 (n + 1)).toNat

end

end A314498.P831971519272884840

/-! ## A314498.P11861869520362369221

`floor(A000035(n)+log2(A245686(n+2)))`
-/

namespace A314498.P11861869520362369221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000035 n : ℝ) + Real.logb 2 (A245686 (n + 2) : ℝ)⌋

end

end A314498.P11861869520362369221

