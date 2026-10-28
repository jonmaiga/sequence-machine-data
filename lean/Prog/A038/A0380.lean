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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C046
import Seq.B000.C047
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
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
# A038000: Number of forests of rooted trees where n dollars are spent and an n-node tree costs 2n-1 dollars.

The programs for A038000, there is no canonical definition to state claims against.
-/

/-! ## A038000.P4335731993765498038

`A122313(A007147(n+1))-A059053(n)`
-/

namespace A038000.P4335731993765498038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122313 (A007147 (n + 1)).toNat - A059053 n

end

end A038000.P4335731993765498038

/-!
# A038001: Inverse WEIGH transform of A038000.

The programs for A038001, there is no canonical definition to state claims against.
-/

/-! ## A038001.P307121936520988475

`A000081(A003602(n+1))`
-/

namespace A038001.P307121936520988475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A003602 (n + 1)).toNat

end

end A038001.P307121936520988475

/-! ## A038001.P2135293065827412641

`A000081(A025480(n)+1)`
-/

namespace A038001.P2135293065827412641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A025480 n + 1).toNat

end

end A038001.P2135293065827412641

/-! ## A038001.P10625792168278970936

`A123467(A101279(n+1))`
-/

namespace A038001.P10625792168278970936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123467 (A101279 (n + 1)).toNat

end

end A038001.P10625792168278970936

/-! ## A038001.P192652511413269936

`A144018((A000265((n+1)²)-1)/8+1)`
-/

namespace A038001.P192652511413269936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144018 (SequenceMachineLib.roundAway ((A000265 ((n + 1) ^ 2) - 1 : ℚ) / 8 + 1)).toNat

end

end A038001.P192652511413269936

/-! ## A038001.P10118448074801368679

`A318757(2*A003602(n+1)²)`
-/

namespace A038001.P10118448074801368679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (2 * A003602 (n + 1) ^ 2).toNat

end

end A038001.P10118448074801368679

/-! ## A038001.P13740776144713311843

`A318757(2*A003602(n+1)*A003602(n+1))`
-/

namespace A038001.P13740776144713311843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (2 * A003602 (n + 1) * A003602 (n + 1)).toNat

end

end A038001.P13740776144713311843

/-! ## A038001.P2781244858302144125

`A318757(A003602((n+1)²))+1`
-/

namespace A038001.P2781244858302144125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A003602 ((n + 1) ^ 2)).toNat + 1

end

end A038001.P2781244858302144125

/-!
# A038002: Number of connected functions on n points with a single labeled point.

The programs for A038002, there is no canonical definition to state claims against.
-/

/-! ## A038002.P16138963651024176468

`A004525(A119826(n)-A155020(n))`
-/

namespace A038002.P16138963651024176468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A119826 n - A155020 n).toNat

end

end A038002.P16138963651024176468

/-! ## A038002.P13746331443070630533

`A004526(A119826(n)-A155020(n))`
-/

namespace A038002.P13746331443070630533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A119826 n - A155020 n).toNat

end

end A038002.P13746331443070630533

/-! ## A038002.P15084173490893347296

`A025480(A119826(n)-A155020(n))`
-/

namespace A038002.P15084173490893347296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A119826 n - A155020 n).toNat

end

end A038002.P15084173490893347296

/-! ## A038002.P16182655077044508617

`A029578(A119826(n)-A155020(n))`
-/

namespace A038002.P16182655077044508617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A119826 n - A155020 n).toNat

end

end A038002.P16182655077044508617

/-! ## A038002.P16253349176586093981

`A004525(record[A119825(n)]-A155020(n))`
-/

namespace A038002.P16253349176586093981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A155020 n).toNat

end

end A038002.P16253349176586093981

/-!
# A038003: Odd Catalan numbers: a(n) = A000108(2^n-1).

The programs for A038003, the canonical program `A038003.P17566269793570053852` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038003 has offset 0).

The definition of A038003 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(2^n-1)` (program `A038003.P17566269793570053852`, by `A038003.P17566269793570053852.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038003.P4672887092995150686

`C(2^(n+1)-2, 2^n-1)/2^n`
-/

namespace A038003.P4672887092995150686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((2 ^ (n + 1) : ℤ) - 2).toNat ((2 ^ n : ℤ) - 1).toNat : ℚ) / (2 ^ n : ℚ)

end

end A038003.P4672887092995150686

namespace A038003

/-- `C(2^(n+1)-2, 2^n-1)/2^n` -/
def P4672887092995150686.Spec : Prop :=
  ∀ n, P4672887092995150686.a n = (A038003 n : ℚ)

end A038003

/-! ## A038003.P17566269793570053852

`A000108(2^n-1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038003

/-- `A000108(2^n-1)` -/
def P17566269793570053852.Spec : Prop :=
  ∀ n, P17566269793570053852.a n = A038003 n

theorem P17566269793570053852.correct : P17566269793570053852.Spec := by
  intro n
  simp only [A038003]

end A038003

/-! ## A038003.P15172109362251997958

`A120588(2^n)`
-/

namespace A038003.P15172109362251997958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (2 ^ n)

end

end A038003.P15172109362251997958

namespace A038003

/-- `A120588(2^n)` -/
def P15172109362251997958.Spec : Prop :=
  ∀ n, P15172109362251997958.a n = A038003 n

end A038003

/-! ## A038003.P15249109923488203673

`A206771(2^n)`
-/

namespace A038003.P15249109923488203673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206771 (2 ^ n)

end

end A038003.P15249109923488203673

namespace A038003

/-- `A206771(2^n)` -/
def P15249109923488203673.Spec : Prop :=
  ∀ n, P15249109923488203673.a n = A038003 n

end A038003

/-!
# A038005: Odd k such that b(k) is less than b(k-1) and b(k+1). b(k): A033178.

The programs for A038005, there is no canonical definition to state claims against.
-/

/-! ## A038005.P10787599872188522891

`A350395(3*A242483(n+4))`
-/

namespace A038005.P10787599872188522891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350395 (3 * A242483 (n + 4)).toNat

end

end A038005.P10787599872188522891

/-!
# A038006: Differences of A038005.

The programs for A038006, there is no canonical definition to state claims against.
-/

/-! ## A038006.P2210223602257110895

`Δ[A038005(n)]`
-/

namespace A038006.P2210223602257110895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038006.P2210223602257110895

/-! ## A038006.P8882021246157344115

`A038005(n+1)-A038005(n)`
-/

namespace A038006.P8882021246157344115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038005 (n + 1) - A038005 n

end

end A038006.P8882021246157344115

/-! ## A038006.P8283987193996220986

`record[A038005(A123108(n))]-A038005(n)`
-/

namespace A038006.P8283987193996220986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038005 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A038005 n

end

end A038006.P8283987193996220986

/-! ## A038006.P10865131949486084512

`record[A038005(A291769(n))]-A038005(n)`
-/

namespace A038006.P10865131949486084512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038005 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A038005 n

end

end A038006.P10865131949486084512

/-! ## A038006.P6136490384369986487

`A038005(A000027(n+1))%A038005(n)`
-/

namespace A038006.P6136490384369986487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038005 (A000027 (n + 1)).toNat) (A038005 n)

end

end A038006.P6136490384369986487

/-!
# A038008: Differences of A038007.

The programs for A038008, there is no canonical definition to state claims against.
-/

/-! ## A038008.P15320986304962747794

`Δ[A038007(n+1)]`
-/

namespace A038008.P15320986304962747794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038008.P15320986304962747794

/-! ## A038008.P14596562688530482118

`Δ[record[A038007(A082854(n))]]`
-/

namespace A038008.P14596562688530482118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038007 (A082854 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038008.P14596562688530482118

/-! ## A038008.P8220373428679817489

`Δ[record[A038007(A112382(n))]]`
-/

namespace A038008.P8220373428679817489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038007 (A112382 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038008.P8220373428679817489

/-! ## A038008.P179154365243831851

`Δ[record[A038007(A126759(n))]]`
-/

namespace A038008.P179154365243831851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038007 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038008.P179154365243831851

/-! ## A038008.P11601816381400297857

`Δ[record[A038007(A134478(n))]]`
-/

namespace A038008.P11601816381400297857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038007 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038008.P11601816381400297857

/-!
# A038010: Differences of A038009.

The programs for A038010, there is no canonical definition to state claims against.
-/

/-! ## A038010.P7503531942975773574

`Δ[A038009(n)]`
-/

namespace A038010.P7503531942975773574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038010.P7503531942975773574

/-! ## A038010.P14320437132437154857

`A038009(n+1)-A038009(n)`
-/

namespace A038010.P14320437132437154857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038009 (n + 1) - A038009 n

end

end A038010.P14320437132437154857

/-! ## A038010.P8323307747767421272

`record[A038009(A008611(n))]-A038009(n)`
-/

namespace A038010.P8323307747767421272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038009 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A038009 n

end

end A038010.P8323307747767421272

/-! ## A038010.P1343419843954441982

`record[A038009(A008612(n))]-A038009(n)`
-/

namespace A038010.P1343419843954441982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038009 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A038009 n

end

end A038010.P1343419843954441982

/-!
# A038012: Differences of A038011.

The programs for A038012, there is no canonical definition to state claims against.
-/

/-! ## A038012.P10346616172398584372

`Δ[A038011(n)]`
-/

namespace A038012.P10346616172398584372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038012.P10346616172398584372

/-! ## A038012.P14888631310319433970

`A038011(n+1)-A038011(n)`
-/

namespace A038012.P14888631310319433970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038011 (n + 1) - A038011 n

end

end A038012.P14888631310319433970

/-! ## A038012.P14343035224183732105

`A038011(1-(n-2*n))%A038011(n)`
-/

namespace A038012.P14343035224183732105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038011 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat) (A038011 n)

end

end A038012.P14343035224183732105

/-! ## A038012.P8611576368750347186

`record[A038011(A008611(n))]-A038011(n)`
-/

namespace A038012.P8611576368750347186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038011 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A038011 n

end

end A038012.P8611576368750347186

/-! ## A038012.P12594271723200364267

`record[A038011(A008612(n))]-A038011(n)`
-/

namespace A038012.P12594271723200364267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038011 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A038011 n

end

end A038012.P12594271723200364267

/-!
# A038014: Differences of A038013.

The programs for A038014, there is no canonical definition to state claims against.
-/

/-! ## A038014.P14867499633123861262

`Δ[A038013(n)]`
-/

namespace A038014.P14867499633123861262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038014.P14867499633123861262

/-! ## A038014.P388982189697453687

`A038013(n+1)-A038013(n)`
-/

namespace A038014.P388982189697453687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038013 (n + 1) - A038013 n

end

end A038014.P388982189697453687

/-! ## A038014.P1019724093578290148

`record[A038013(A123108(n))]-A038013(n)`
-/

namespace A038014.P1019724093578290148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038013 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A038013 n

end

end A038014.P1019724093578290148

/-! ## A038014.P15465700421886065764

`record[A038013(A291769(n))]-A038013(n)`
-/

namespace A038014.P15465700421886065764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038013 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A038013 n

end

end A038014.P15465700421886065764

/-!
# A038018: Triangle read by rows: T(n,k) is the number of groupoids with n elements and k idempotents.

The programs for A038018, there is no canonical definition to state claims against.
-/

/-! ## A038018.P10693123770868844969

`A038020(n)+A038019(n)`
-/

namespace A038018.P10693123770868844969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038020 n + A038019 n

end

end A038018.P10693123770868844969

/-! ## A038018.P9087808565434387644

`A045847(∑[A294487(n+1)!])+A038020(n)`
-/

namespace A038018.P9087808565434387644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A294487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (∑ j ∈ Finset.range (n + 1), f1 j) + A038020 n

end

end A038018.P9087808565434387644

/-!
# A038019: Triangle: T(n,k), k<=n: groupoids with no symmetry with n elements and k idempotents.

The programs for A038019, there is no canonical definition to state claims against.
-/

/-! ## A038019.P2585177272513496661

`A038018(n)-A038020(n)`
-/

namespace A038019.P2585177272513496661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038018 n - A038020 n

end

end A038019.P2585177272513496661

/-! ## A038019.P10511650173130384812

`A002293(a(n-2)+a(n-1)%2*a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A038019.P10511650173130384812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A002293 (a (n - 2) + Int.tmod (a (n - 1)) 2 * a (n - 1)).toNat

end

end A038019.P10511650173130384812

/-! ## A038019.P13349494740989541711

`A290054(A281307(n)^A175773(n))`
-/

namespace A038019.P13349494740989541711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (SequenceMachineLib.roundAway ((A281307 n : ℚ) ^ (A175773 n : ℤ))).toNat

end

end A038019.P13349494740989541711

/-!
# A038020: Triangle: T(n,k), k<=n: groupoids with a nontrivial symmetry with n elements and k idempotents.

The programs for A038020, there is no canonical definition to state claims against.
-/

/-! ## A038020.P12280995344607877601

`A038018(n)-A038019(n)`
-/

namespace A038020.P12280995344607877601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038018 n - A038019 n

end

end A038020.P12280995344607877601

/-!
# A038021: Triangle read by rows: T(n,k) is the number of commutative groupoids with n elements and k idempotents.

The programs for A038021, there is no canonical definition to state claims against.
-/

/-! ## A038021.P1314564030481236382

`A038023(n)+A038022(A055648(n))`
-/

namespace A038021.P1314564030481236382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038023 n + A038022 (A055648 n).toNat

end

end A038021.P1314564030481236382

/-! ## A038021.P6503660643922066875

`A038023(A051053(n))+A038022(n)`
-/

namespace A038021.P6503660643922066875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038023 (A051053 n).toNat + A038022 n

end

end A038021.P6503660643922066875

/-! ## A038021.P7586101523570800395

`A038023(n)+A038022(A062399(n))`
-/

namespace A038021.P7586101523570800395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038023 n + A038022 (A062399 n).toNat

end

end A038021.P7586101523570800395

/-! ## A038021.P6387509556793649627

`A038023(A114806(n))+A038022(n)`
-/

namespace A038021.P6387509556793649627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038023 (A114806 n).toNat + A038022 n

end

end A038021.P6387509556793649627

/-! ## A038021.P6233880718841643410

`A118759(A038023(n))+A038022(n)`
-/

namespace A038021.P6233880718841643410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A038023 n).toNat + A038022 n

end

end A038021.P6233880718841643410

/-!
# A038022: Triangle: T(n,k), k<=n: commutative groupoids with no symmetry with n elements and k idempotents.

The programs for A038022, there is no canonical definition to state claims against.
-/

/-! ## A038022.P7547819410682310774

`A038021(n)-A038023(A055648(n))`
-/

namespace A038022.P7547819410682310774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038021 n - A038023 (A055648 n).toNat

end

end A038022.P7547819410682310774

/-! ## A038022.P11041312853551362119

`A038021(n)-A038023(A051053(n))`
-/

namespace A038022.P11041312853551362119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038021 n - A038023 (A051053 n).toNat

end

end A038022.P11041312853551362119

/-! ## A038022.P6475746102170921990

`A038021(n)-A038023(A062399(n))`
-/

namespace A038022.P6475746102170921990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038021 n - A038023 (A062399 n).toNat

end

end A038022.P6475746102170921990

/-! ## A038022.P154445482019213587

`A038021(n)-A038023(A114806(n))`
-/

namespace A038022.P154445482019213587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038021 n - A038023 (A114806 n).toNat

end

end A038022.P154445482019213587

/-! ## A038022.P7816225603588434122

`A038021(n)-A118759(A038023(n))`
-/

namespace A038022.P7816225603588434122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038021 n - A118759 (A038023 n).toNat

end

end A038022.P7816225603588434122

/-!
# A038023: Triangle: T(n,k), k<=n: commutative groupoids with a nontrivial symmetry with n elements and k idempotents.

The programs for A038023, there is no canonical definition to state claims against.
-/

/-! ## A038023.P16674898778045189884

`A038021(n)-A038022(A055648(n))`
-/

namespace A038023.P16674898778045189884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038021 n - A038022 (A055648 n).toNat

end

end A038023.P16674898778045189884

/-! ## A038023.P3142448523137982613

`A038021(n)-A038022(A062399(n))`
-/

namespace A038023.P3142448523137982613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038021 n - A038022 (A062399 n).toNat

end

end A038023.P3142448523137982613

/-! ## A038023.P5088136882926929682

`A118759(A038021(n)-A038022(n))`
-/

namespace A038023.P5088136882926929682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A038021 n - A038022 n).toNat

end

end A038023.P5088136882926929682

/-! ## A038023.P4387113456782057255

`A005044(A343941(n))*A106578(n)`
-/

namespace A038023.P4387113456782057255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A343941 n).toNat * A106578 n

end

end A038023.P4387113456782057255

/-! ## A038023.P7019195017140467137

`A025441(A328624(n))*A106578(n)`
-/

namespace A038023.P7019195017140467137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A328624 n).toNat * A106578 n

end

end A038023.P7019195017140467137

/-!
# A038024: Number of k's such that A002034(k) = n.

The programs for A038024, the canonical program `A038024.P2064224994306672514` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038024 has offset 1).

The definition of A038024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038024.P14684532613788347094

`floor(acot(n)+Δ[A027423(n)])`
-/

namespace A038024.P14684532613788347094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (f1 (n + 1) - f1 n : ℝ)⌋

end

end A038024.P14684532613788347094

namespace A038024

/-- `floor(acot(n)+Δ[A027423(n)])` -/
def P14684532613788347094.Spec : Prop :=
  ∀ n, P14684532613788347094.a n = A038024 (n + 1)

end A038024

/-! ## A038024.P2064224994306672514

`A000007(n)+Δ[A027423(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038024

/-- `A000007(n)+Δ[A027423(n)]` -/
def P2064224994306672514.Spec : Prop :=
  ∀ n, P2064224994306672514.a n = A038024 (n + 1)

theorem P2064224994306672514.correct : P2064224994306672514.Spec := by
  intro n
  simp only [A038024, Nat.add_sub_cancel]

end A038024

/-! ## A038024.P5751222325473443822

`A000007(n)+Δ[A153823(n)]`
-/

namespace A038024.P5751222325473443822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A038024.P5751222325473443822

namespace A038024

/-- `A000007(n)+Δ[A153823(n)]` -/
def P5751222325473443822.Spec : Prop :=
  ∀ n, P5751222325473443822.a n = A038024 (n + 1)

theorem P5751222325473443822.correct : P5751222325473443822.Spec := by
  intro n
  simp only [A038024, Nat.add_sub_cancel, A038024.P5751222325473443822.f1, A038024.P5751222325473443822.a, A038024.P2064224994306672514.f1, A038024.P2064224994306672514.a, A000007, A000007.P6599383543502402472.a, A027423, A027423.P14066705804803784298.a, A153823, A153823.P12958428199370976494.a, A000005, A000005.P16091521709108585461.a, A000142, A000142.P3272619076580183195.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038024

/-! ## A038024.P14536264433389083348

`Δ[A027423(n)-A057428(n)]`
-/

namespace A038024.P14536264433389083348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038024.P14536264433389083348

namespace A038024

/-- `Δ[A027423(n)-A057428(n)]` -/
def P14536264433389083348.Spec : Prop :=
  ∀ n, P14536264433389083348.a n = A038024 (n + 1)

end A038024

/-! ## A038024.P1035674559647236199

`A063524(n+1)+Δ[A027423(n)]`
-/

namespace A038024.P1035674559647236199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + (f1 (n + 1) - f1 n)

end

end A038024.P1035674559647236199

namespace A038024

/-- `A063524(n+1)+Δ[A027423(n)]` -/
def P1035674559647236199.Spec : Prop :=
  ∀ n, P1035674559647236199.a n = A038024 (n + 1)

end A038024

/-! ## A038024.P228271557090078237

`A063524(n+1)+Δ[A153823(n)]`
-/

namespace A038024.P228271557090078237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + (f1 (n + 1) - f1 n)

end

end A038024.P228271557090078237

namespace A038024

/-- `A063524(n+1)+Δ[A153823(n)]` -/
def P228271557090078237.Spec : Prop :=
  ∀ n, P228271557090078237.a n = A038024 (n + 1)

end A038024

/-! ## A038024.P11508758231870778552

`Δ[lcm(A001222(n+1), A027423(n))]`
-/

namespace A038024.P11508758231870778552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (n + 1)) (A027423 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A038024.P11508758231870778552

namespace A038024

/-- `Δ[lcm(A001222(n+1), A027423(n))]` -/
def P11508758231870778552.Spec : Prop :=
  ∀ n, P11508758231870778552.a n = A038024 (n + 1)

end A038024

/-! ## A038024.P3973439160121205736

`Δ[A027423(n)+A000040(n+1)%2]`
-/

namespace A038024.P3973439160121205736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038024.P3973439160121205736

namespace A038024

/-- `Δ[A027423(n)+A000040(n+1)%2]` -/
def P3973439160121205736.Spec : Prop :=
  ∀ n, P3973439160121205736.a n = A038024 (n + 1)

end A038024

/-! ## A038024.P16798078060377742287

`Δ[A027423(n)+A001221(A001316(n))]`
-/

namespace A038024.P16798078060377742287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n + A001221 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038024.P16798078060377742287

namespace A038024

/-- `Δ[A027423(n)+A001221(A001316(n))]` -/
def P16798078060377742287.Spec : Prop :=
  ∀ n, P16798078060377742287.a n = A038024 (n + 1)

end A038024

/-! ## A038024.P7076595751649342731

`A027423(A028310(n)+1)-A027423(n)`
-/

namespace A038024.P7076595751649342731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (A028310 n + 1).toNat - A027423 n

end

end A038024.P7076595751649342731

namespace A038024

/-- `A027423(A028310(n)+1)-A027423(n)` -/
def P7076595751649342731.Spec : Prop :=
  ∀ n, P7076595751649342731.a n = A038024 (n + 1)

end A038024

/-! ## A038024.P8834211944357513537

`A153823(A028310(n)+1)-A153823(n)`
-/

namespace A038024.P8834211944357513537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 (A028310 n + 1).toNat - A153823 n

end

end A038024.P8834211944357513537

namespace A038024

/-- `A153823(A028310(n)+1)-A153823(n)` -/
def P8834211944357513537.Spec : Prop :=
  ∀ n, P8834211944357513537.a n = A038024 (n + 1)

end A038024

/-! ## A038024.P94893859773015420

`A027423(A233583(n+2))-A027423(n)`
-/

namespace A038024.P94893859773015420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (A233583 (n + 2)).toNat - A027423 n

end

end A038024.P94893859773015420

namespace A038024

/-- `A027423(A233583(n+2))-A027423(n)` -/
def P94893859773015420.Spec : Prop :=
  ∀ n, P94893859773015420.a n = A038024 (n + 1)

end A038024

/-! ## A038024.P3794810108073649406

`Δ[A027423(n)+A001221(A000961(n+1))]`
-/

namespace A038024.P3794810108073649406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n + A001221 (A000961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038024.P3794810108073649406

namespace A038024

/-- `Δ[A027423(n)+A001221(A000961(n+1))]` -/
def P3794810108073649406.Spec : Prop :=
  ∀ n, P3794810108073649406.a n = A038024 (n + 1)

end A038024

/-! ## A038024.P17572931724867867376

`Δ[A027423(n)+A020639(A000010(n+2))]`
-/

namespace A038024.P17572931724867867376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n + A020639 (A000010 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038024.P17572931724867867376

namespace A038024

/-- `Δ[A027423(n)+A020639(A000010(n+2))]` -/
def P17572931724867867376.Spec : Prop :=
  ∀ n, P17572931724867867376.a n = A038024 (n + 1)

end A038024

/-! ## A038024.P14312419607893954000

`Δ[A153823(n)+A020639(A000010(n+2))]`
-/

namespace A038024.P14312419607893954000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 n + A020639 (A000010 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038024.P14312419607893954000

namespace A038024

/-- `Δ[A153823(n)+A020639(A000010(n+2))]` -/
def P14312419607893954000.Spec : Prop :=
  ∀ n, P14312419607893954000.a n = A038024 (n + 1)

end A038024

/-! ## A038024.P1340409645296628386

`Δ[A027423(n)%A027423(n+1)]`
-/

namespace A038024.P1340409645296628386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027423 n) (A027423 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038024.P1340409645296628386

namespace A038024

/-- `Δ[A027423(n)%A027423(n+1)]` -/
def P1340409645296628386.Spec : Prop :=
  ∀ n, P1340409645296628386.a n = A038024 (n + 1)

end A038024

/-! ## A038024.P10817456313010546109

`Δ[(A153823(n)+1)%A153823(n+2)]`
-/

namespace A038024.P10817456313010546109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153823 n + 1) (A153823 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038024.P10817456313010546109

namespace A038024

/-- `Δ[(A153823(n)+1)%A153823(n+2)]` -/
def P10817456313010546109.Spec : Prop :=
  ∀ n, P10817456313010546109.a n = A038024 (n + 1)

end A038024

/-! ## A038024.P12307728081567252837

`Δ[A027423(n)%A078038(n)]`
-/

namespace A038024.P12307728081567252837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027423 n) (A078038 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038024.P12307728081567252837

namespace A038024

/-- `Δ[A027423(n)%A078038(n)]` -/
def P12307728081567252837.Spec : Prop :=
  ∀ n, P12307728081567252837.a n = A038024 (n + 1)

end A038024

/-! ## A038024.P1734600691922891293

`Δ[(A153823(n)+1)%A078038(n)]`
-/

namespace A038024.P1734600691922891293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153823 n + 1) (A078038 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038024.P1734600691922891293

namespace A038024

/-- `Δ[(A153823(n)+1)%A078038(n)]` -/
def P1734600691922891293.Spec : Prop :=
  ∀ n, P1734600691922891293.a n = A038024 (n + 1)

end A038024

/-!
# A038025: Winner of n-th Littlewood Frog Race.

The programs for A038025, there is no canonical definition to state claims against.
-/

/-! ## A038025.P13600307854831300627

`(A038026(n+1)-1)%(n+1)+1`
-/

namespace A038025.P13600307854831300627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038026 (n + 1) - 1) (n + 1 : ℤ) + 1

end

end A038025.P13600307854831300627

/-! ## A038025.P8658315472358756268

`A028310(A038026(n+1)%(n+1))`
-/

namespace A038025.P8658315472358756268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A038026 (n + 1)) (n + 1 : ℤ)).toNat

end

end A038025.P8658315472358756268

/-! ## A038025.P11807278984425237063

`A038026(A233583(n+2))%A233583(n+2)`
-/

namespace A038025.P11807278984425237063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038026 (A233583 (n + 2)).toNat) (A233583 (n + 2))

end

end A038025.P11807278984425237063

/-!
# A038026: Last position reached by winner of n-th Littlewood Frog Race.

The programs for A038026, there is no canonical definition to state claims against.
-/

/-! ## A038026.P12910595543291249729

`A006530(A034694(n+1)²*A038700(n+1))`
-/

namespace A038026.P12910595543291249729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034694 (n + 1) ^ 2 * A038700 (n + 1)).toNat

end

end A038026.P12910595543291249729

/-! ## A038026.P5237630636825923219

`A006530(A086507(n+1)²*A086508(n+1))`
-/

namespace A038026.P5237630636825923219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A086507 (n + 1) ^ 2 * A086508 (n + 1)).toNat

end

end A038026.P5237630636825923219

/-! ## A038026.P5549239828335857044

`A006530(lcm(A034694(n+1)², A038700(n+1)))`
-/

namespace A038026.P5549239828335857044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A034694 (n + 1) ^ 2) (A038700 (n + 1)))

end

end A038026.P5549239828335857044

/-! ## A038026.P12536299897704182447

`A006530(lcm(A086507(n+1)², A086508(n+1)))`
-/

namespace A038026.P12536299897704182447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A086507 (n + 1) ^ 2) (A086508 (n + 1)))

end

end A038026.P12536299897704182447

/-! ## A038026.P4481713156087631164

`A006530(((n+1)*A034693(n+1)+1)*A038700(n+1)²)`
-/

namespace A038026.P4481713156087631164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (((n + 1 : ℤ) * A034693 (n + 1) + 1) * A038700 (n + 1) ^ 2).toNat

end

end A038026.P4481713156087631164

/-!
# A038029: Incrementally largest values of A038025.

The programs for A038029, there is no canonical definition to state claims against.
-/

/-! ## A038029.P14922077118061048535

`record[A038025(n+1)]`
-/

namespace A038029.P14922077118061048535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038029.P14922077118061048535

/-! ## A038029.P11908602198998023697

`record[A038026(n+2)%(n+2)]`
-/

namespace A038029.P11908602198998023697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038026 (n + 2)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038029.P11908602198998023697

/-! ## A038029.P13121554699664857005

`A038025(A038030(n+1))`
-/

namespace A038029.P13121554699664857005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038025 (A038030 (n + 1)).toNat

end

end A038029.P13121554699664857005

/-! ## A038029.P9094469752182090538

`record[A038025(A008619(n))-A000035(n)]`
-/

namespace A038029.P9094469752182090538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038025 (A008619 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038029.P9094469752182090538

/-! ## A038029.P16406912668619216141

`record[A010059(n)*A038025(A008619(n))]`
-/

namespace A038029.P16406912668619216141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n * A038025 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038029.P16406912668619216141

/-! ## A038029.P17967313075470817137

`record[A038025(A008619(n))]%(2*A126646(n))`
-/

namespace A038029.P17967313075470817137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038025 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (2 * A126646 n)

end

end A038029.P17967313075470817137

/-!
# A038030: Indices of incrementally largest values of A038025.

The programs for A038030, there is no canonical definition to state claims against.
-/

/-! ## A038030.P7546945158063417618

`A038029(n+1)+A000035(A000051(n))`
-/

namespace A038030.P7546945158063417618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038029 (n + 1) + A000035 (A000051 n).toNat

end

end A038030.P7546945158063417618

/-! ## A038030.P17132098831174349978

`A038029(n+1)+A000035(A000225(n))`
-/

namespace A038030.P17132098831174349978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038029 (n + 1) + A000035 (A000225 n).toNat

end

end A038030.P17132098831174349978

/-! ## A038030.P3900163585608409764

`A038029(n+1)+A000035(A014210(n))`
-/

namespace A038030.P3900163585608409764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038029 (n + 1) + A000035 (A014210 n).toNat

end

end A038030.P3900163585608409764

/-! ## A038030.P14725979670555125050

`A038029(n+1)+A000035(A014551(n))`
-/

namespace A038030.P14725979670555125050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038029 (n + 1) + A000035 (A014551 n).toNat

end

end A038030.P14725979670555125050

/-! ## A038030.P16856514890005467357

`A055396(A000079(n))+A038029(n+1)`
-/

namespace A038030.P16856514890005467357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A000079 n).toNat + A038029 (n + 1)

end

end A038030.P16856514890005467357

/-!
# A038031: Position reached by frog in A038029. A038026(A038029(n)).

The programs for A038031, there is no canonical definition to state claims against.
-/

/-! ## A038031.P2194041194595565366

`A038026(A038030(n+1))`
-/

namespace A038031.P2194041194595565366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (A038030 (n + 1)).toNat

end

end A038031.P2194041194595565366

/-! ## A038031.P1315400091390945449

`A038700(C(A038030(n+1), A038029(n+1)))`
-/

namespace A038031.P1315400091390945449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (Nat.choose (A038030 (n + 1)).toNat (A038029 (n + 1)).toNat)

end

end A038031.P1315400091390945449

/-! ## A038031.P10012597049969529162

`A038700(A038030(n+1)%A092536(n+1))`
-/

namespace A038031.P10012597049969529162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (Int.tmod (A038030 (n + 1)) (A092536 (n + 1))).toNat

end

end A038031.P10012597049969529162

/-!
# A038032: A038025(n)=1.

The programs for A038032, there is no canonical definition to state claims against.
-/

/-! ## A038032.P3423720526073613674

`eq[1, A038025(n+1)]+1`
-/

namespace A038032.P3423720526073613674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038032.P3423720526073613674

/-! ## A038032.P3214034497383030334

`record[gcd(A038026(n+1)-1, n+1)]`
-/

namespace A038032.P3214034497383030334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038026 (n + 1) - 1) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038032.P3214034497383030334

/-! ## A038032.P6967026351518445383

`record[A000027(n+1)/A038025(n+1)]`
-/

namespace A038032.P6967026351518445383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A038025 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038032.P6967026351518445383

/-! ## A038032.P12921052910163838654

`eq[A034694(n+1), A038026(n+1)]+1`
-/

namespace A038032.P12921052910163838654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038032.P12921052910163838654

/-! ## A038032.P15469729062694413511

`record[A008619(2*n)/A038025(n+1)]`
-/

namespace A038032.P15469729062694413511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A038025 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038032.P15469729062694413511

/-! ## A038032.P2529146119416788348

`record[A008620(3*n)/A038025(n+1)]`
-/

namespace A038032.P2529146119416788348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 (3 * n) : ℚ) / (A038025 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038032.P2529146119416788348

/-!
# A038033: a(n) = A000166(n-1)*n*(n-1).

The programs for A038033, the canonical program `A038033.P5148770297336248297` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038033 has offset 3).

The definition of A038033 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000166(n+2)*(n+3)*(n+2)` (program `A038033.P5148770297336248297`, by `A038033.P5148770297336248297.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038033.P5148770297336248297

`A000166(n+2)*(n+3)*(n+2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038033

/-- `A000166(n+2)*(n+3)*(n+2)` -/
def P5148770297336248297.Spec : Prop :=
  ∀ n, P5148770297336248297.a n = A038033 (n + 3)

theorem P5148770297336248297.correct : P5148770297336248297.Spec := by
  intro n
  simp only [A038033, Nat.add_sub_cancel]

end A038033

/-! ## A038033.P14733158611808552153

`2*A065087(n+2)`
-/

namespace A038033.P14733158611808552153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065087 (n + 2)

end

end A038033.P14733158611808552153

namespace A038033

/-- `2*A065087(n+2)` -/
def P14733158611808552153.Spec : Prop :=
  ∀ n, P14733158611808552153.a n = A038033 (n + 3)

theorem P14733158611808552153.correct : P14733158611808552153.Spec := by
  intro n
  simp only [A038033, Nat.add_sub_cancel, A038033.P14733158611808552153.a, A038033.P5148770297336248297.a, A000166, A000166.P17301805902585999237.a, A065087, A065087.P1873219144939937365.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038033

/-! ## A038033.P16748476921301213545

`3*A305730(n+2)`
-/

namespace A038033.P16748476921301213545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A305730 (n + 2)

end

end A038033.P16748476921301213545

namespace A038033

/-- `3*A305730(n+2)` -/
def P16748476921301213545.Spec : Prop :=
  ∀ n, P16748476921301213545.a n = A038033 (n + 3)

end A038033

/-! ## A038033.P3768857458653826244

`(n+2)*A000240(n+3)`
-/

namespace A038033.P3768857458653826244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000240 (n + 3)

end

end A038033.P3768857458653826244

namespace A038033

/-- `(n+2)*A000240(n+3)` -/
def P3768857458653826244.Spec : Prop :=
  ∀ n, P3768857458653826244.a n = A038033 (n + 3)

end A038033

/-! ## A038033.P2151135898751372967

`(n+3)*A086325(n+2)`
-/

namespace A038033.P2151135898751372967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A086325 (n + 2)

end

end A038033.P2151135898751372967

namespace A038033

/-- `(n+3)*A086325(n+2)` -/
def P2151135898751372967.Spec : Prop :=
  ∀ n, P2151135898751372967.a n = A038033 (n + 3)

theorem P2151135898751372967.correct : P2151135898751372967.Spec := by
  intro n
  simp only [A038033, Nat.add_sub_cancel, A038033.P2151135898751372967.a, A038033.P5148770297336248297.a, A000166, A000166.P17301805902585999237.a, A086325, A086325.P15899201594958227124.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038033

/-! ## A038033.P9782690813931429842

`Δ[A033487(n)]*A000255(n)`
-/

namespace A038033.P9782690813931429842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000255 n

end

end A038033.P9782690813931429842

namespace A038033

/-- `Δ[A033487(n)]*A000255(n)` -/
def P9782690813931429842.Spec : Prop :=
  ∀ n, P9782690813931429842.a n = A038033 (n + 3)

end A038033

/-!
# A038034: Number of compositions (ordered partitions) of 1 into {1/1, 1/2, 1/3, ..., 1/n}.

The programs for A038034, there is no canonical definition to state claims against.
-/

/-! ## A038034.P2925406267630679077

`∑[A092667(n+1)]`
-/

namespace A038034.P2925406267630679077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038034.P2925406267630679077

/-! ## A038034.P12044905985186165997

`Δ[A178097(A028310(n))]+C(2, n+2)`
-/

namespace A038034.P12044905985186165997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178097 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A038034.P12044905985186165997

/-! ## A038034.P6250572288931215188

`A000007(n)+Δ[A178097(A028310(n))]`
-/

namespace A038034.P6250572288931215188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178097 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A038034.P6250572288931215188

/-! ## A038034.P10264972799169949153

`Δ[A178097(A028310(n))+A057427(n)]`
-/

namespace A038034.P10264972799169949153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178097 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038034.P10264972799169949153

/-!
# A038035: Number of labeled dyslexic planted planar trees with n+1 nodes.

The programs for A038035, there is no canonical definition to state claims against.
-/

/-! ## A038035.P15918780791657035439

`A036774(n+1)/A071356(n)*∑[A068764(n)]`
-/

namespace A038035.P15918780791657035439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068764 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036774 (n + 1) : ℚ) / (A071356 n : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A038035.P15918780791657035439

/-! ## A038035.P14783126471063122174

`A226316(n)*A291442(A093467(n+1))`
-/

namespace A038035.P14783126471063122174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226316 n * A291442 (A093467 (n + 1)).toNat

end

end A038035.P14783126471063122174

/-!
# A038036: Number of nonisomorphic and nonantiisomorphic rings with n elements.

The programs for A038036, there is no canonical definition to state claims against.
-/

/-! ## A038036.P16950685668977195005

`(A027623(n+1)+A037290(n+1))/2`
-/

namespace A038036.P16950685668977195005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027623 (n + 1) + A037290 (n + 1) : ℚ) / 2

end

end A038036.P16950685668977195005

/-! ## A038036.P5033553520988676048

`(A037290(n+1)+A037234(n+1))/2`
-/

namespace A038036.P5033553520988676048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037290 (n + 1) + A037234 (n + 1) : ℚ) / 2

end

end A038036.P5033553520988676048

/-! ## A038036.P11620886298993945421

`A004526(A037290(n+1)+A027623(n+1))`
-/

namespace A038036.P11620886298993945421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A037290 (n + 1) + A027623 (n + 1)).toNat

end

end A038036.P11620886298993945421

/-! ## A038036.P9880044107791383278

`∏{e}[n+1, A105360((#+1)!)]`
-/

namespace A038036.P9880044107791383278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A105360 (Nat.factorial (Nat.factorization (f1 n) p + 1))

end

end A038036.P9880044107791383278

/-! ## A038036.P7036629316300641682

`lcm(∏{e}[n+1, 2*(-1)^#], A126973(2^∑{e}[n+1, #-1]))`
-/

namespace A038036.P7036629316300641682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ p ∈ Nat.primeFactors (f1 n), 2 * (-1) ^ Nat.factorization (f1 n) p) (A126973 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1) : ℤ))).toNat)

end

end A038036.P7036629316300641682

/-!
# A038037: Number of labeled rooted compound windmills (mobiles) with n nodes.

The programs for A038037, there is no canonical definition to state claims against.
-/

/-! ## A038037.P3037029904946262921

`(n+1)*A138013(n)`
-/

namespace A038037.P3037029904946262921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A138013 n

end

end A038037.P3037029904946262921

/-! ## A038037.P1752161297902630134

`A138013(n)*A141539(A001105(n))`
-/

namespace A038037.P1752161297902630134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138013 n * A141539 (A001105 n).toNat

end

end A038037.P1752161297902630134

/-! ## A038037.P7519136520458061324

`A138013(n)*A145051(A005408(n))`
-/

namespace A038037.P7519136520458061324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138013 n * A145051 (A005408 n).toNat

end

end A038037.P7519136520458061324

/-! ## A038037.P4362216673362679347

`A138013(n)*A230773(p?[round(8*n/7)]²)`
-/

namespace A038037.P4362216673362679347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138013 n * A230773 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A038037.P4362216673362679347

/-!
# A038038: Number of labeled dyslexic rooted compound windmills with n nodes.

The programs for A038038, there is no canonical definition to state claims against.
-/

/-! ## A038038.P14677214257490580552

`(n+1)*A266986(a(n-1))` with `a(0)=1`
-/

namespace A038038.P14677214257490580552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A266986 (a (n - 1)).toNat

end

end A038038.P14677214257490580552

/-!
# A038039: a(n) = Sum_{d|n} (2^d*3^(n/d)).

The programs for A038039, the canonical program `A038039.P3898125787363098814` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038039 has offset 1).

The definition of A038039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038039.P3898125787363098814

`∑{d}[n+1, 2^#*3^((n+1)/#)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038039

/-- `∑{d}[n+1, 2^#*3^((n+1)/#)]` -/
def P3898125787363098814.Spec : Prop :=
  ∀ n, P3898125787363098814.a n = (A038039 (n + 1) : ℝ)

end A038039

/-! ## A038039.P16577234562836912527

`6*A034735(n+1)`
-/

namespace A038039.P16577234562836912527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A034735 (n + 1)

end

end A038039.P16577234562836912527

namespace A038039

/-- `6*A034735(n+1)` -/
def P16577234562836912527.Spec : Prop :=
  ∀ n, P16577234562836912527.a n = A038039 (n + 1)

end A038039

/-! ## A038039.P11002427693533769355

`lcm(6, A034735(A000027(n+1)))`
-/

namespace A038039.P11002427693533769355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (A034735 (A000027 (n + 1)).toNat)

end

end A038039.P11002427693533769355

namespace A038039

/-- `lcm(6, A034735(A000027(n+1)))` -/
def P11002427693533769355.Spec : Prop :=
  ∀ n, (P11002427693533769355.a n : ℤ) = A038039 (n + 1)

end A038039

/-! ## A038039.P2637340080704100108

`lcm(A034735(n+1), A176355(lcm(2, n)))`
-/

namespace A038039.P2637340080704100108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034735 (n + 1)) (A176355 (Nat.lcm 2 n))

end

end A038039.P2637340080704100108

namespace A038039

/-- `lcm(A034735(n+1), A176355(lcm(2, n)))` -/
def P2637340080704100108.Spec : Prop :=
  ∀ n, (P2637340080704100108.a n : ℤ) = A038039 (n + 1)

end A038039

/-! ## A038039.P13309355798980030527

`A008458(A034735(n+1))`
-/

namespace A038039.P13309355798980030527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A034735 (n + 1)).toNat

end

end A038039.P13309355798980030527

namespace A038039

/-- `A008458(A034735(n+1))` -/
def P13309355798980030527.Spec : Prop :=
  ∀ n, P13309355798980030527.a n = A038039 (n + 1)

end A038039

/-!
# A038040: a(n) = n*d(n), where d(n) = number of divisors of n (A000005).

The programs for A038040, the canonical program `A038040.P16512896840577774730` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038040 has offset 1).

The definition of A038040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038040.P11479392699111163049

`∑{d}[n+1, A018804(#)]`
-/

namespace A038040.P11479392699111163049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d

end

end A038040.P11479392699111163049

namespace A038040

/-- `∑{d}[n+1, A018804(#)]` -/
def P11479392699111163049.Spec : Prop :=
  ∀ n, P11479392699111163049.a n = A038040 (n + 1)

end A038040

/-! ## A038040.P16512896840577774730

`(n+1)*A000005(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038040

/-- `(n+1)*A000005(n+1)` -/
def P16512896840577774730.Spec : Prop :=
  ∀ n, P16512896840577774730.a n = A038040 (n + 1)

theorem P16512896840577774730.correct : P16512896840577774730.Spec := by
  intro n
  simp only [A038040, Nat.add_sub_cancel]

end A038040

/-! ## A038040.P11502831993716558688

`∑{d}[n+1, A000010(#)*A000203((n+1)/#)]`
-/

namespace A038040.P11502831993716558688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038040.P11502831993716558688

namespace A038040

/-- `∑{d}[n+1, A000010(#)*A000203((n+1)/#)]` -/
def P11502831993716558688.Spec : Prop :=
  ∀ n, P11502831993716558688.a n = A038040 (n + 1)

end A038040

/-! ## A038040.P2993649831475076749

`A000203(n+1)*A240471(n+1)+A106315(n+1)`
-/

namespace A038040.P2993649831475076749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A240471 (n + 1) + A106315 (n + 1)

end

end A038040.P2993649831475076749

namespace A038040

/-- `A000203(n+1)*A240471(n+1)+A106315(n+1)` -/
def P2993649831475076749.Spec : Prop :=
  ∀ n, P2993649831475076749.a n = A038040 (n + 1)

end A038040

/-! ## A038040.P12015042721287091987

`A066186(n+1)-(n+1)*A144300(n+1)`
-/

namespace A038040.P12015042721287091987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (n + 1 : ℤ) * A144300 (n + 1)

end

end A038040.P12015042721287091987

namespace A038040

/-- `A066186(n+1)-(n+1)*A144300(n+1)` -/
def P12015042721287091987.Spec : Prop :=
  ∀ n, P12015042721287091987.a n = A038040 (n + 1)

end A038040

/-! ## A038040.P3734865979297367916

`∑{#}[n, A000203(gcd(n+1, #))]`
-/

namespace A038040.P3734865979297367916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000203 (Nat.gcd (n + 1) k)

end

end A038040.P3734865979297367916

namespace A038040

/-- `∑{#}[n, A000203(gcd(n+1, #))]` -/
def P3734865979297367916.Spec : Prop :=
  ∀ n, P3734865979297367916.a n = A038040 (n + 1)

end A038040

/-! ## A038040.P1845770527370418887

`∑{d}[n+1, lcm(#, n+1)]`
-/

namespace A038040.P1845770527370418887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1)

end

end A038040.P1845770527370418887

namespace A038040

/-- `∑{d}[n+1, lcm(#, n+1)]` -/
def P1845770527370418887.Spec : Prop :=
  ∀ n, (P1845770527370418887.a n : ℤ) = A038040 (n + 1)

end A038040

/-! ## A038040.P1036171889466540057

`∑{d}[n+1, gcd(n, #)+n]`
-/

namespace A038040.P1036171889466540057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.gcd n d + n)

end

end A038040.P1036171889466540057

namespace A038040

/-- `∑{d}[n+1, gcd(n, #)+n]` -/
def P1036171889466540057.Spec : Prop :=
  ∀ n, (P1036171889466540057.a n : ℤ) = A038040 (n + 1)

end A038040

/-! ## A038040.P8076604465427560275

`∑{d}[n+1, n-or(#, -1)]`
-/

namespace A038040.P8076604465427560275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n : ℤ) - Int.lor (d : ℤ) (-1))

end

end A038040.P8076604465427560275

namespace A038040

/-- `∑{d}[n+1, n-or(#, -1)]` -/
def P8076604465427560275.Spec : Prop :=
  ∀ n, P8076604465427560275.a n = A038040 (n + 1)

end A038040

/-! ## A038040.P14212607648252182343

`∑{d}[n+1, ceil(1/#+n)]`
-/

namespace A038040.P14212607648252182343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ) + (n : ℚ)⌉

end

end A038040.P14212607648252182343

namespace A038040

/-- `∑{d}[n+1, ceil(1/#+n)]` -/
def P14212607648252182343.Spec : Prop :=
  ∀ n, P14212607648252182343.a n = A038040 (n + 1)

end A038040

/-! ## A038040.P13195076405523567392

`(n+1)*∏{e}[n+1, #+1]`
-/

namespace A038040.P13195076405523567392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A038040.P13195076405523567392

namespace A038040

/-- `(n+1)*∏{e}[n+1, #+1]` -/
def P13195076405523567392.Spec : Prop :=
  ∀ n, (P13195076405523567392.a n : ℤ) = A038040 (n + 1)

theorem P13195076405523567392.correct : P13195076405523567392.Spec := by
  intro n
  simp only [A038040, Nat.add_sub_cancel, A038040.P13195076405523567392.f1, A038040.P13195076405523567392.a, A038040.P16512896840577774730.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038040

/-! ## A038040.P9341831294306782156

`(n+1)*∑{d}[n+1, and(1, #)!]`
-/

namespace A038040.P9341831294306782156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Nat.land 1 d))

end

end A038040.P9341831294306782156

namespace A038040

/-- `(n+1)*∑{d}[n+1, and(1, #)!]` -/
def P9341831294306782156.Spec : Prop :=
  ∀ n, (P9341831294306782156.a n : ℤ) = A038040 (n + 1)

end A038040

/-! ## A038040.P5952246463343402612

`-∑{d}[n+1, val(#, n+2)-(n+1)]`
-/

namespace A038040.P5952246463343402612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), ((SequenceMachineLib.valuation d (n + 2) : ℤ) - (n + 1 : ℤ)))

end

end A038040.P5952246463343402612

namespace A038040

/-- `-∑{d}[n+1, val(#, n+2)-(n+1)]` -/
def P5952246463343402612.Spec : Prop :=
  ∀ n, P5952246463343402612.a n = A038040 (n + 1)

end A038040

/-! ## A038040.P9423676070196833755

`-∑{d}[n+1, C(#, n+2)-(n+1)]`
-/

namespace A038040.P9423676070196833755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), ((Nat.choose d (n + 2) : ℤ) - (n + 1 : ℤ)))

end

end A038040.P9423676070196833755

namespace A038040

/-- `-∑{d}[n+1, C(#, n+2)-(n+1)]` -/
def P9423676070196833755.Spec : Prop :=
  ∀ n, P9423676070196833755.a n = A038040 (n + 1)

end A038040

/-! ## A038040.P1922930815005285597

`(n+1)*∑{d}[n+1, val(#, n+2)!]`
-/

namespace A038040.P1922930815005285597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ d ∈ Nat.divisors (f1 n), Nat.factorial (SequenceMachineLib.valuation d (n + 2)))

end

end A038040.P1922930815005285597

namespace A038040

/-- `(n+1)*∑{d}[n+1, val(#, n+2)!]` -/
def P1922930815005285597.Spec : Prop :=
  ∀ n, (P1922930815005285597.a n : ℤ) = A038040 (n + 1)

end A038040

/-! ## A038040.P7072947053744274319

`(n+1)*∑{d}[n+1, C(#, n+1)!]`
-/

namespace A038040.P7072947053744274319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Nat.choose d (n + 1)))

end

end A038040.P7072947053744274319

namespace A038040

/-- `(n+1)*∑{d}[n+1, C(#, n+1)!]` -/
def P7072947053744274319.Spec : Prop :=
  ∀ n, (P7072947053744274319.a n : ℤ) = A038040 (n + 1)

end A038040

/-! ## A038040.P12418472494281612449

`A145229(n)/4`
-/

namespace A038040.P12418472494281612449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145229 n : ℚ) / 4

end

end A038040.P12418472494281612449

namespace A038040

/-- `A145229(n)/4` -/
def P12418472494281612449.Spec : Prop :=
  ∀ n, P12418472494281612449.a n = (A038040 (n + 1) : ℚ)

end A038040

/-! ## A038040.P2891412773669828342

`A083271(n+1)-1`
-/

namespace A038040.P2891412773669828342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083271 (n + 1) - 1

end

end A038040.P2891412773669828342

namespace A038040

/-- `A083271(n+1)-1` -/
def P2891412773669828342.Spec : Prop :=
  ∀ n, P2891412773669828342.a n = A038040 (n + 1)

theorem P2891412773669828342.correct : P2891412773669828342.Spec := by
  intro n
  simp only [A038040, Nat.add_sub_cancel, A038040.P2891412773669828342.a, A038040.P16512896840577774730.a, A000005, A000005.P16091521709108585461.a, A083271, A083271.P13992173363591196257.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038040

/-! ## A038040.P4314414885104333643

`(n+1)*Δ[A006218(n)]`
-/

namespace A038040.P4314414885104333643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A038040.P4314414885104333643

namespace A038040

/-- `(n+1)*Δ[A006218(n)]` -/
def P4314414885104333643.Spec : Prop :=
  ∀ n, P4314414885104333643.a n = A038040 (n + 1)

end A038040

/-! ## A038040.P16977240983698103292

`(n+1)*Δ[A054519(n)]`
-/

namespace A038040.P16977240983698103292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A038040.P16977240983698103292

namespace A038040

/-- `(n+1)*Δ[A054519(n)]` -/
def P16977240983698103292.Spec : Prop :=
  ∀ n, P16977240983698103292.a n = A038040 (n + 1)

end A038040

/-!
# A038041: Number of ways to partition an n-set into subsets of equal size.

The programs for A038041, there is no canonical definition to state claims against.
-/

/-! ## A038041.P7811916044749875158

`A038043(n+1)/2`
-/

namespace A038041.P7811916044749875158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038043 (n + 1) : ℚ) / 2

end

end A038041.P7811916044749875158

/-! ## A038041.P9607619885773002934

`A322788(A054519(n))`
-/

namespace A038041.P9607619885773002934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322788 (A054519 n).toNat

end

end A038041.P9607619885773002934

/-! ## A038041.P6310454963152881549

`A322788(A006218(n)+1)`
-/

namespace A038041.P6310454963152881549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322788 (A006218 n + 1).toNat

end

end A038041.P6310454963152881549

/-! ## A038041.P16835525051326565575

`A364971(A089071(n+1))`
-/

namespace A038041.P16835525051326565575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364971 (A089071 (n + 1)).toNat

end

end A038041.P16835525051326565575

/-! ## A038041.P11924304743466324728

`A208437(∑[A003056(n)]+1)`
-/

namespace A038041.P11924304743466324728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208437 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A038041.P11924304743466324728

/-! ## A038041.P1045369871608416888

`A208437(A006463(n+1)+1)`
-/

namespace A038041.P1045369871608416888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208437 (A006463 (n + 1) + 1).toNat

end

end A038041.P1045369871608416888

/-!
# A038042: Number of ways to partition a 2-colored labeled set into identical subsets.

The programs for A038042, there is no canonical definition to state claims against.
-/

/-! ## A038042.P7706546772919026033

`record[A321655(∏{p}[n+1, #])+1]`
-/

namespace A038042.P7706546772919026033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321655 (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038042.P7706546772919026033

/-! ## A038042.P14475857719328851291

`record[A321655(A337165(n))+1]`
-/

namespace A038042.P14475857719328851291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321655 (A337165 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038042.P14475857719328851291

/-!
# A038043: Number of ways to partition a labeled set into 2-colored subsets of equal size.

The programs for A038043, there is no canonical definition to state claims against.
-/

/-! ## A038043.P7670997570389467558

`2*A038041(n+1)`
-/

namespace A038043.P7670997570389467558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038041 (n + 1)

end

end A038043.P7670997570389467558

/-! ## A038043.P10520351437452861263

`A038041(Δ[n²]-n)+A038041(n+1)`
-/

namespace A038043.P10520351437452861263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038041 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + A038041 (n + 1)

end

end A038043.P10520351437452861263

/-! ## A038043.P3735879771581197833

`A038041(n+1)+or(A000007(n), A038041(n+1))`
-/

namespace A038043.P3735879771581197833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038041 (n + 1) + Int.lor (A000007 n) (A038041 (n + 1))

end

end A038043.P3735879771581197833

/-! ## A038043.P6504695873889850871

`A038041(n+1)+lcm(A014077(n+2), A038041(n+1))`
-/

namespace A038043.P6504695873889850871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038041 (n + 1) + (Int.lcm (A014077 (n + 2)) (A038041 (n + 1)) : ℤ)

end

end A038043.P6504695873889850871

/-! ## A038043.P9542347378827420170

`2*A322788(A054519(n))`
-/

namespace A038043.P9542347378827420170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322788 (A054519 n).toNat

end

end A038043.P9542347378827420170

/-! ## A038043.P16691173934203871690

`2*A322788(A006218(n)+1)`
-/

namespace A038043.P16691173934203871690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322788 (A006218 n + 1).toNat

end

end A038043.P16691173934203871690

/-! ## A038043.P11469086556749904523

`A322788(A054519(n))+A038041(n+1)`
-/

namespace A038043.P11469086556749904523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322788 (A054519 n).toNat + A038041 (n + 1)

end

end A038043.P11469086556749904523

/-! ## A038043.P14842995558831923398

`2*A364971(A089071(n+1))`
-/

namespace A038043.P14842995558831923398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364971 (A089071 (n + 1)).toNat

end

end A038043.P14842995558831923398

/-!
# A038044: Shifts left under transform T where Ta is a DCONV a.

The programs for A038044, there is no canonical definition to state claims against.
-/

/-! ## A038044.P6658541307836782509

`A144374(∑[n]+1)`
-/

namespace A038044.P6658541307836782509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144374 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A038044.P6658541307836782509

/-! ## A038044.P7960356449063360505

`A144374(A000124(n))/gcd(n, n+1)`
-/

namespace A038044.P7960356449063360505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144374 (A000124 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A038044.P7960356449063360505

/-! ## A038044.P5088885210615611652

`A144374(A000124(n))%A005248(n)`
-/

namespace A038044.P5088885210615611652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144374 (A000124 n).toNat) (A005248 n)

end

end A038044.P5088885210615611652

/-! ## A038044.P15428336491815014143

`or(A000007(n), A144374(A000124(n)))`
-/

namespace A038044.P15428336491815014143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A144374 (A000124 n).toNat)

end

end A038044.P15428336491815014143

/-! ## A038044.P2794251758190814882

`or(A011782(n), A144374(A000124(n)))`
-/

namespace A038044.P2794251758190814882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 n) (A144374 (A000124 n).toNat)

end

end A038044.P2794251758190814882

/-! ## A038044.P4765354402313908596

`abs(A000007(n+1)-A144374(A000124(n)))`
-/

namespace A038044.P4765354402313908596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000007 (n + 1) - A144374 (A000124 n).toNat|

end

end A038044.P4765354402313908596

/-! ## A038044.P6440527933654547935

`A067754(A014963(2*(n+1)))*A144374(A000124(n))`
-/

namespace A038044.P6440527933654547935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (A014963 (2 * (n + 1))).toNat * A144374 (A000124 n).toNat

end

end A038044.P6440527933654547935

/-! ## A038044.P14675793241733841584

`A144823(∑[n+1])`
-/

namespace A038044.P14675793241733841584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038044.P14675793241733841584

/-!
# A038045: Shifts left under transform T where Ta is phi DCONV a.

The programs for A038045, there is no canonical definition to state claims against.
-/

/-! ## A038045.P15658934347080412528

`A308162(A327516(n))+A282750(A056119(n)+28)`
-/

namespace A038045.P15658934347080412528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308162 (A327516 n).toNat + A282750 (A056119 n + 28).toNat

end

end A038045.P15658934347080412528

/-! ## A038045.P1226319183194876357

`A308162(A327516(n))+A282750(A152950(n+7)+4)`
-/

namespace A038045.P1226319183194876357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308162 (A327516 n).toNat + A282750 (A152950 (n + 7) + 4).toNat

end

end A038045.P1226319183194876357

/-! ## A038045.P5988342693887744012

`A308162(A327516(n))+A282750(A000096(n+6)-(n-1))`
-/

namespace A038045.P5988342693887744012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308162 (A327516 n).toNat + A282750 (A000096 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A038045.P5988342693887744012

/-! ## A038045.P17808432573869335664

`A320847(2*A001402(n))`
-/

namespace A038045.P17808432573869335664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320847 (2 * A001402 n).toNat

end

end A038045.P17808432573869335664

/-!
# A038047: Shifts left under transform T where Ta is a EXP-DCONV a.

The programs for A038047, there is no canonical definition to state claims against.
-/

/-! ## A038047.P7539877736070151079

`A225416(A186943(n+1))*A261169(A213173(n))`
-/

namespace A038047.P7539877736070151079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225416 (A186943 (n + 1)).toNat * A261169 (A213173 n).toNat

end

end A038047.P7539877736070151079

/-! ## A038047.P9260095610422959834

`A054237(A000699(n)+n)`
-/

namespace A038047.P9260095610422959834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054237 (A000699 n + (n : ℤ)).toNat

end

end A038047.P9260095610422959834

/-! ## A038047.P13219102590222998115

`A371256(n²+A000162(n+1))`
-/

namespace A038047.P13219102590222998115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 ((n ^ 2 : ℤ) + A000162 (n + 1)).toNat

end

end A038047.P13219102590222998115

/-!
# A038048: a(n) = (n-1)! * sigma(n).

The programs for A038048, the canonical program `A038048.P11025041890217139816` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038048 has offset 1).

The definition of A038048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*A000203(n+1)` (program `A038048.P11025041890217139816`, by `A038048.P11025041890217139816.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038048.P1669133880928182587

`∑{d}[n+1, (n+1)!/#]`
-/

namespace A038048.P1669133880928182587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.factorial (n + 1) : ℚ) / (d : ℚ)

end

end A038048.P1669133880928182587

namespace A038048

/-- `∑{d}[n+1, (n+1)!/#]` -/
def P1669133880928182587.Spec : Prop :=
  ∀ n, P1669133880928182587.a n = (A038048 (n + 1) : ℚ)

end A038048

/-! ## A038048.P11025041890217139816

`n!*A000203(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038048

/-- `n!*A000203(n+1)` -/
def P11025041890217139816.Spec : Prop :=
  ∀ n, P11025041890217139816.a n = A038048 (n + 1)

theorem P11025041890217139816.correct : P11025041890217139816.Spec := by
  intro n
  simp only [A038048, Nat.add_sub_cancel]

end A038048

/-! ## A038048.P17481964441828824104

`A000142(n)*A000203(n+1)`
-/

namespace A038048.P17481964441828824104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000203 (n + 1)

end

end A038048.P17481964441828824104

namespace A038048

/-- `A000142(n)*A000203(n+1)` -/
def P17481964441828824104.Spec : Prop :=
  ∀ n, P17481964441828824104.a n = A038048 (n + 1)

end A038048

/-! ## A038048.P2240338820906904145

`∑{d}[n+1, #*n!]`
-/

namespace A038048.P2240338820906904145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d * Nat.factorial n

end

end A038048.P2240338820906904145

namespace A038048

/-- `∑{d}[n+1, #*n!]` -/
def P2240338820906904145.Spec : Prop :=
  ∀ n, (P2240338820906904145.a n : ℤ) = A038048 (n + 1)

end A038048

/-! ## A038048.P5462867029267126060

`∏[n+1]*∑{d}[n+1, 1/#]`
-/

namespace A038048.P5462867029267126060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (∑ d ∈ Nat.divisors (f2 n), 1 / (d : ℚ))

end

end A038048.P5462867029267126060

namespace A038048

/-- `∏[n+1]*∑{d}[n+1, 1/#]` -/
def P5462867029267126060.Spec : Prop :=
  ∀ n, P5462867029267126060.a n = (A038048 (n + 1) : ℚ)

end A038048

/-! ## A038048.P341262728847226318

`n!*Δ[A160664(n)]`
-/

namespace A038048.P341262728847226318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A038048.P341262728847226318

namespace A038048

/-- `n!*Δ[A160664(n)]` -/
def P341262728847226318.Spec : Prop :=
  ∀ n, P341262728847226318.a n = A038048 (n + 1)

end A038048

/-! ## A038048.P13404506939283694126

`(A000203(2*n-(n-1))-and(2, n²))*n!`
-/

namespace A038048.P13404506939283694126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (Nat.land 2 (n ^ 2) : ℤ)) * (Nat.factorial n : ℤ)

end

end A038048.P13404506939283694126

namespace A038048

/-- `(A000203(2*n-(n-1))-and(2, n²))*n!` -/
def P13404506939283694126.Spec : Prop :=
  ∀ n, P13404506939283694126.a n = A038048 (n + 1)

end A038048

/-! ## A038048.P6475603223727137966

`A055067(n+1)*A220846(n+1)`
-/

namespace A038048.P6475603223727137966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055067 (n + 1) * A220846 (n + 1)

end

end A038048.P6475603223727137966

namespace A038048

/-- `A055067(n+1)*A220846(n+1)` -/
def P6475603223727137966.Spec : Prop :=
  ∀ n, P6475603223727137966.a n = A038048 (n + 1)

end A038048

/-! ## A038048.P3963798410441714331

`A000142(n)*A245092(2*n+1)`
-/

namespace A038048.P3963798410441714331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A245092 (2 * n + 1)

end

end A038048.P3963798410441714331

namespace A038048

/-- `A000142(n)*A245092(2*n+1)` -/
def P3963798410441714331.Spec : Prop :=
  ∀ n, P3963798410441714331.a n = A038048 (n + 1)

end A038048

/-!
# A038049: Number of labeled rooted trees with 2-colored leaves.

The programs for A038049, the canonical program `A038049.P2906982151144264817` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038049 has offset 1).

The definition of A038049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038049.P2906982151144264817

`∑{#}[n+1, C(n+1, #)*(n+1-#)^n]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038049

/-- `∑{#}[n+1, C(n+1, #)*(n+1-#)^n]` -/
def P2906982151144264817.Spec : Prop :=
  ∀ n, P2906982151144264817.a n = A038049 (n + 1)

theorem P2906982151144264817.correct : P2906982151144264817.Spec := by
  intro n
  simp only [A038049, Nat.add_sub_cancel]

end A038049

/-! ## A038049.P4018084050294973734

`A078751(∑[n])`
-/

namespace A038049.P4018084050294973734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078751 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038049.P4018084050294973734

namespace A038049

/-- `A078751(∑[n])` -/
def P4018084050294973734.Spec : Prop :=
  ∀ n, P4018084050294973734.a n = A038049 (n + 1)

end A038049

/-! ## A038049.P8593059707710867651

`2*A214225(n+1)`
-/

namespace A038049.P8593059707710867651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214225 (n + 1)

end

end A038049.P8593059707710867651

namespace A038049

/-- `2*A214225(n+1)` -/
def P8593059707710867651.Spec : Prop :=
  ∀ n, P8593059707710867651.a n = A038049 (n + 1)

end A038049

/-! ## A038049.P5668709945735634948

`lcm(2, A216857(n+1))`
-/

namespace A038049.P5668709945735634948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A216857 (n + 1))

end

end A038049.P5668709945735634948

namespace A038049

/-- `lcm(2, A216857(n+1))` -/
def P5668709945735634948.Spec : Prop :=
  ∀ n, (P5668709945735634948.a n : ℤ) = A038049 (n + 1)

end A038049

/-! ## A038049.P6968215372593406198

`2*(n+1)*A201595(n)`
-/

namespace A038049.P6968215372593406198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A201595 n)

end

end A038049.P6968215372593406198

namespace A038049

/-- `2*(n+1)*A201595(n)` -/
def P6968215372593406198.Spec : Prop :=
  ∀ n, P6968215372593406198.a n = A038049 (n + 1)

end A038049

/-! ## A038049.P1422052609001033611

`2^(n+1)*A088789(n+1)`
-/

namespace A038049.P1422052609001033611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A088789 (n + 1)

end

end A038049.P1422052609001033611

namespace A038049

/-- `2^(n+1)*A088789(n+1)` -/
def P1422052609001033611.Spec : Prop :=
  ∀ n, P1422052609001033611.a n = A038049 (n + 1)

end A038049

/-! ## A038049.P8351065311225129059

`Δ[A002378(n)]*A201595(n)`
-/

namespace A038049.P8351065311225129059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A201595 n

end

end A038049.P8351065311225129059

namespace A038049

/-- `Δ[A002378(n)]*A201595(n)` -/
def P8351065311225129059.Spec : Prop :=
  ∀ n, P8351065311225129059.a n = A038049 (n + 1)

end A038049

/-! ## A038049.P15852867032593091707

`A074932(n+1)+A072034(n)`
-/

namespace A038049.P15852867032593091707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074932 (n + 1) + A072034 n

end

end A038049.P15852867032593091707

namespace A038049

/-- `A074932(n+1)+A072034(n)` -/
def P15852867032593091707.Spec : Prop :=
  ∀ n, P15852867032593091707.a n = A038049 (n + 1)

end A038049

/-! ## A038049.P5297117685097461479

`A216857(n+1)+A000007(n)`
-/

namespace A038049.P5297117685097461479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216857 (n + 1) + A000007 n

end

end A038049.P5297117685097461479

namespace A038049

/-- `A216857(n+1)+A000007(n)` -/
def P5297117685097461479.Spec : Prop :=
  ∀ n, P5297117685097461479.a n = A038049 (n + 1)

end A038049

/-! ## A038049.P4110327546950855305

`A005843(n+1)*A201595(n)`
-/

namespace A038049.P4110327546950855305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A201595 n

end

end A038049.P4110327546950855305

namespace A038049

/-- `A005843(n+1)*A201595(n)` -/
def P4110327546950855305.Spec : Prop :=
  ∀ n, P4110327546950855305.a n = A038049 (n + 1)

end A038049

/-!
# A038050: Number of labeled rooted trees with 3-colored leaves.

The programs for A038050, the canonical program `A038050.P10376163719769507459` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038050 has offset 1).

The definition of A038050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038050.P10376163719769507459

`∑{#}[n+1, C(n+1, #)*2^#*(n+1-#)^n]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038050

/-- `∑{#}[n+1, C(n+1, #)*2^#*(n+1-#)^n]` -/
def P10376163719769507459.Spec : Prop :=
  ∀ n, P10376163719769507459.a n = A038050 (n + 1)

theorem P10376163719769507459.correct : P10376163719769507459.Spec := by
  intro n
  simp only [A038050, Nat.add_sub_cancel]

end A038050

/-! ## A038050.P8816456021841988744

`∑{#}[n+1, 2^(n+1-#)*#^n*C(n+1, #)]`
-/

namespace A038050.P8816456021841988744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (k ^ n : ℚ) * (Nat.choose (n + 1) k : ℚ)

end

end A038050.P8816456021841988744

namespace A038050

/-- `∑{#}[n+1, 2^(n+1-#)*#^n*C(n+1, #)]` -/
def P8816456021841988744.Spec : Prop :=
  ∀ n, P8816456021841988744.a n = (A038050 (n + 1) : ℚ)

end A038050

/-! ## A038050.P11941905203941210712

`A000027(3*(n+1))*A370907(n)`
-/

namespace A038050.P11941905203941210712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (3 * (n + 1)) * A370907 n

end

end A038050.P11941905203941210712

namespace A038050

/-- `A000027(3*(n+1))*A370907(n)` -/
def P11941905203941210712.Spec : Prop :=
  ∀ n, P11941905203941210712.a n = A038050 (n + 1)

end A038050

/-! ## A038050.P7983334049494658623

`A000720(A000040(3*(n+1)))*A370907(n)`
-/

namespace A038050.P7983334049494658623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (3 * (n + 1))).toNat * A370907 n

end

end A038050.P7983334049494658623

namespace A038050

/-- `A000720(A000040(3*(n+1)))*A370907(n)` -/
def P7983334049494658623.Spec : Prop :=
  ∀ n, P7983334049494658623.a n = A038050 (n + 1)

end A038050

/-! ## A038050.P17421976932547589218

`A263273(A263273(3*(n+1)))*A370907(n)`
-/

namespace A038050.P17421976932547589218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A263273 (3 * (n + 1))).toNat * A370907 n

end

end A038050.P17421976932547589218

namespace A038050

/-- `A263273(A263273(3*(n+1)))*A370907(n)` -/
def P17421976932547589218.Spec : Prop :=
  ∀ n, P17421976932547589218.a n = A038050 (n + 1)

end A038050

/-!
# A038051: G.f.: B(x/(1-x)) where B is g.f. of A000169.

The programs for A038051, the canonical program `A038051.P3034535754685268119` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038051 has offset 1).

The definition of A038051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038051.P3034535754685268119

`∑{#}[n, C(n, #)*(#+1)^#]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038051

/-- `∑{#}[n, C(n, #)*(#+1)^#]` -/
def P3034535754685268119.Spec : Prop :=
  ∀ n, (P3034535754685268119.a n : ℤ) = A038051 (n + 1)

theorem P3034535754685268119.correct : P3034535754685268119.Spec := by
  intro n
  simp only [A038051, Nat.add_sub_cancel]

end A038051

/-! ## A038051.P5117275891307572823

`Δ[A277473(n)]`
-/

namespace A038051.P5117275891307572823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038051.P5117275891307572823

namespace A038051

/-- `Δ[A277473(n)]` -/
def P5117275891307572823.Spec : Prop :=
  ∀ n, P5117275891307572823.a n = A038051 (n + 1)

end A038051

/-! ## A038051.P11252770959994664208

`Δ[A277478(n)+A277476(n)]`
-/

namespace A038051.P11252770959994664208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277478 n + A277476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038051.P11252770959994664208

namespace A038051

/-- `Δ[A277478(n)+A277476(n)]` -/
def P11252770959994664208.Spec : Prop :=
  ∀ n, P11252770959994664208.a n = A038051 (n + 1)

end A038051

/-! ## A038051.P3612575504074376320

`A277473(n+1)-A277473(n)`
-/

namespace A038051.P3612575504074376320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277473 (n + 1) - A277473 n

end

end A038051.P3612575504074376320

namespace A038051

/-- `A277473(n+1)-A277473(n)` -/
def P3612575504074376320.Spec : Prop :=
  ∀ n, P3612575504074376320.a n = A038051 (n + 1)

end A038051

/-! ## A038051.P2417586357237622750

`Δ[2*A277478(n)-A277474(n)]`
-/

namespace A038051.P2417586357237622750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277478 n - A277474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038051.P2417586357237622750

namespace A038051

/-- `Δ[2*A277478(n)-A277474(n)]` -/
def P2417586357237622750.Spec : Prop :=
  ∀ n, P2417586357237622750.a n = A038051 (n + 1)

end A038051

/-! ## A038051.P14054628189447254460

`Δ[n*A088957(n-A057427(n))]`
-/

namespace A038051.P14054628189447254460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A088957 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038051.P14054628189447254460

namespace A038051

/-- `Δ[n*A088957(n-A057427(n))]` -/
def P14054628189447254460.Spec : Prop :=
  ∀ n, P14054628189447254460.a n = A038051 (n + 1)

end A038051

/-! ## A038051.P15289649096464764395

`(A086331(n+1)-1)/(n+1)`
-/

namespace A038051.P15289649096464764395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086331 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A038051.P15289649096464764395

namespace A038051

/-- `(A086331(n+1)-1)/(n+1)` -/
def P15289649096464764395.Spec : Prop :=
  ∀ n, P15289649096464764395.a n = (A038051 (n + 1) : ℚ)

end A038051

/-!
# A038052: Number of labeled trees of nonempty sets with n points. (Each node is a set of 1 or more points.)

The programs for A038052, there is no canonical definition to state claims against.
-/

/-! ## A038052.P2377196568775101352

`A108954(C(C(n, 2), 2)+n^n)`
-/

namespace A038052.P2377196568775101352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Nat.choose (Nat.choose n 2) 2 + n ^ n)

end

end A038052.P2377196568775101352

/-! ## A038052.P1283018592921161762

`A003963(A026779(∑[n]))`
-/

namespace A038052.P1283018592921161762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A026779 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A038052.P1283018592921161762

/-!
# A038053: Number of labeled planted trees with 2-colored leaves.

The programs for A038053, there is no canonical definition to state claims against.
-/

/-! ## A038053.P3966541742746959748

`(n+1)*lcm(2, A216857(n))`
-/

namespace A038053.P3966541742746959748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.lcm 2 (A216857 n)

end

end A038053.P3966541742746959748

/-! ## A038053.P7462418364719513925

`∑[A001792(n)]*A088789(n)`
-/

namespace A038053.P7462418364719513925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A088789 n

end

end A038053.P7462418364719513925

/-! ## A038053.P16013575835721793859

`A001787(n+1)*A088789(n)`
-/

namespace A038053.P16013575835721793859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) * A088789 n

end

end A038053.P16013575835721793859

/-! ## A038053.P16806755514344555215

`A038049(n+1)/A007889(n)*A088789(n)`
-/

namespace A038053.P16806755514344555215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038049 (n + 1) : ℚ) / (A007889 n : ℚ) * (A088789 n : ℚ)

end

end A038053.P16806755514344555215

/-! ## A038053.P6327753881064637908

`A360548(n+1)/A349562(n)*A088789(n)`
-/

namespace A038053.P6327753881064637908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360548 (n + 1) : ℚ) / (A349562 n : ℚ) * (A088789 n : ℚ)

end

end A038053.P6327753881064637908

/-!
# A038054: Number of labeled trees with 2-colored leaves.

The programs for A038054, there is no canonical definition to state claims against.
-/

/-! ## A038054.P5839215250533336151

`A349706(∑[record[A296070(n+1)]])`
-/

namespace A038054.P5839215250533336151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296070 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349706 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038054.P5839215250533336151

/-! ## A038054.P633087485896458505

`A193916(A052910(n))`
-/

namespace A038054.P633087485896458505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193916 (A052910 n).toNat

end

end A038054.P633087485896458505

/-!
# A038055: Number of n-node rooted trees with nodes of 2 colors.

The programs for A038055, there is no canonical definition to state claims against.
-/

/-! ## A038055.P17802363662814133096

`2*A000151(n+1)`
-/

namespace A038055.P17802363662814133096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000151 (n + 1)

end

end A038055.P17802363662814133096

/-! ## A038055.P7263683833395146334

`A271878(∑[n]+1)`
-/

namespace A038055.P7263683833395146334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271878 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A038055.P7263683833395146334

/-! ## A038055.P14390041438244409554

`record[A271878(n+1)]`
-/

namespace A038055.P14390041438244409554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038055.P14390041438244409554

/-! ## A038055.P9286604524538594350

`lcm(2, A271878(A000124(n)))`
-/

namespace A038055.P9286604524538594350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A271878 (A000124 n).toNat)

end

end A038055.P9286604524538594350

/-! ## A038055.P2173779977193615215

`A000151(A000027(n+1))+A000151(n+1)`
-/

namespace A038055.P2173779977193615215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000151 (A000027 (n + 1)).toNat + A000151 (n + 1)

end

end A038055.P2173779977193615215

/-! ## A038055.P8766208708046456178

`A000081(n+1)+A339642(n+1)+A000081(n+1)`
-/

namespace A038055.P8766208708046456178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) + (A339642 (n + 1) + A000081 (n + 1))

end

end A038055.P8766208708046456178

/-! ## A038055.P11994199958485301062

`2*A007748(2*(n+1))`
-/

namespace A038055.P11994199958485301062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007748 (2 * (n + 1))

end

end A038055.P11994199958485301062

/-! ## A038055.P8059319098530617437

`2*(A000060(2*(n+1))-A000238(2*(n+1)))`
-/

namespace A038055.P8059319098530617437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000060 (2 * (n + 1)) - A000238 (2 * (n + 1)))

end

end A038055.P8059319098530617437

/-!
# A038056: Number of trees with n 2-colored nodes.

The programs for A038056, there is no canonical definition to state claims against.
-/

/-! ## A038056.P15786224097538265952

`A000238(n+1)+A000060(n+1)`
-/

namespace A038056.P15786224097538265952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000238 (n + 1) + A000060 (n + 1)

end

end A038056.P15786224097538265952

/-! ## A038056.P3124764135204344679

`A000060(n+1)+2*A005751(n+1)-A007748(n+1)`
-/

namespace A038056.P3124764135204344679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000060 (n + 1) + (2 * A005751 (n + 1) - A007748 (n + 1))

end

end A038056.P3124764135204344679

/-! ## A038056.P13484270597061472398

`A139621(∑[n]+n)+A000060(n+1)`
-/

namespace A038056.P13484270597061472398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139621 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A000060 (n + 1)

end

end A038056.P13484270597061472398

/-! ## A038056.P8692606421428309400

`A350789(∑[n]+n)+A000060(n+1)`
-/

namespace A038056.P8692606421428309400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350789 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A000060 (n + 1)

end

end A038056.P8692606421428309400

/-! ## A038056.P16373301838579745740

`A350914(∑[n]+n)+A000060(n+1)`
-/

namespace A038056.P16373301838579745740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350914 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A000060 (n + 1)

end

end A038056.P16373301838579745740

/-!
# A038057: a(n) = 2^n*n^(n-1).

The programs for A038057, the canonical program `A038057.P16114564641177200433` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038057 has offset 1).

The definition of A038057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)*(n+1)^n` (program `A038057.P16114564641177200433`, by `A038057.P16114564641177200433.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038057.P16114564641177200433

`2^(n+1)*(n+1)^n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038057

/-- `2^(n+1)*(n+1)^n` -/
def P16114564641177200433.Spec : Prop :=
  ∀ n, (P16114564641177200433.a n : ℤ) = A038057 (n + 1)

theorem P16114564641177200433.correct : P16114564641177200433.Spec := by
  intro n
  simp only [A038057, Nat.add_sub_cancel]

end A038057

/-! ## A038057.P15259038658808624882

`record[xor(1, n)+1]^(n+1)/(n+1)`
-/

namespace A038057.P15259038658808624882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A038057.P15259038658808624882

namespace A038057

/-- `record[xor(1, n)+1]^(n+1)/(n+1)` -/
def P15259038658808624882.Spec : Prop :=
  ∀ n, P15259038658808624882.a n = (A038057 (n + 1) : ℚ)

end A038057

/-! ## A038057.P11813685055519035969

`Δ[lcm(n, n+1)]^(n+1)/(n+1)`
-/

namespace A038057.P11813685055519035969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A038057.P11813685055519035969

namespace A038057

/-- `Δ[lcm(n, n+1)]^(n+1)/(n+1)` -/
def P11813685055519035969.Spec : Prop :=
  ∀ n, P11813685055519035969.a n = (A038057 (n + 1) : ℚ)

end A038057

/-! ## A038057.P15767334824853400536

`A062971(n+1)/(n+1)`
-/

namespace A038057.P15767334824853400536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062971 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A038057.P15767334824853400536

namespace A038057

/-- `A062971(n+1)/(n+1)` -/
def P15767334824853400536.Spec : Prop :=
  ∀ n, P15767334824853400536.a n = (A038057 (n + 1) : ℚ)

end A038057

/-! ## A038057.P16091896547986095228

`A066642(2*(n+1))/(n+1)`
-/

namespace A038057.P16091896547986095228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066642 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A038057.P16091896547986095228

namespace A038057

/-- `A066642(2*(n+1))/(n+1)` -/
def P16091896547986095228.Spec : Prop :=
  ∀ n, P16091896547986095228.a n = (A038057 (n + 1) : ℚ)

end A038057

/-! ## A038057.P2652803875569929337

`A147662(2*(n+1))/(n+1)`
-/

namespace A038057.P2652803875569929337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147662 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A038057.P2652803875569929337

namespace A038057

/-- `A147662(2*(n+1))/(n+1)` -/
def P2652803875569929337.Spec : Prop :=
  ∀ n, P2652803875569929337.a n = (A038057 (n + 1) : ℚ)

end A038057

/-! ## A038057.P9651879537582171590

`A147771(2*(n+1))/(n+1)`
-/

namespace A038057.P9651879537582171590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147771 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A038057.P9651879537582171590

namespace A038057

/-- `A147771(2*(n+1))/(n+1)` -/
def P9651879537582171590.Spec : Prop :=
  ∀ n, P9651879537582171590.a n = (A038057 (n + 1) : ℚ)

end A038057

/-! ## A038057.P1295064439393685628

`2*A193678(n+1)/(n+1)`
-/

namespace A038057.P1295064439393685628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A193678 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A038057.P1295064439393685628

namespace A038057

/-- `2*A193678(n+1)/(n+1)` -/
def P1295064439393685628.Spec : Prop :=
  ∀ n, P1295064439393685628.a n = (A038057 (n + 1) : ℚ)

theorem P1295064439393685628.correct : P1295064439393685628.Spec := by
  intro n
  simp only [A038057, Nat.add_sub_cancel, A038057.P1295064439393685628.a, A038057.P16114564641177200433.a, A193678, A193678.P5381000580090406886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038057

/-! ## A038057.P8006136493051677518

`A342545(2*(n+1))/(n+1)`
-/

namespace A038057.P8006136493051677518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342545 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A038057.P8006136493051677518

namespace A038057

/-- `A342545(2*(n+1))/(n+1)` -/
def P8006136493051677518.Spec : Prop :=
  ∀ n, P8006136493051677518.a n = (A038057 (n + 1) : ℚ)

end A038057

/-! ## A038057.P12751071387640146976

`A004277(n+1)^(n+1)/(n+1)`
-/

namespace A038057.P12751071387640146976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (n + 1) ^ (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A038057.P12751071387640146976

namespace A038057

/-- `A004277(n+1)^(n+1)/(n+1)` -/
def P12751071387640146976.Spec : Prop :=
  ∀ n, P12751071387640146976.a n = (A038057 (n + 1) : ℚ)

end A038057

/-!
# A038058: Number of labeled trees with 2-colored nodes.

The programs for A038058, there is no canonical definition to state claims against.
-/

/-! ## A038058.P3293179149934398927

`2^n*n^floor(n-atan(n))`
-/

namespace A038058.P3293179149934398927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ)

end

end A038058.P3293179149934398927

/-! ## A038058.P5360596327197703040

`2^n*n^(n-ceil(atan(n)))`
-/

namespace A038058.P5360596327197703040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (n : ℚ) ^ ((n : ℤ) - ⌈Real.arctan (n : ℝ)⌉ : ℤ)

end

end A038058.P5360596327197703040

/-! ## A038058.P11744351275459830660

`2^n*n^(abs(1-n)-1)`
-/

namespace A038058.P11744351275459830660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (n : ℚ) ^ (|1 - (n : ℤ)| - 1 : ℤ)

end

end A038058.P11744351275459830660

/-! ## A038058.P6707254377711478136

`abs(A000272(n)*A122803(n))`
-/

namespace A038058.P6707254377711478136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000272 n * A122803 n|

end

end A038058.P6707254377711478136

/-! ## A038058.P17406870163428873935

`ceil(∏{d}[n, A014963(#)^(n-2)]*A000079(n))`
-/

namespace A038058.P17406870163428873935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∏ d ∈ Nat.divisors (f1 n), (A014963 d : ℚ) ^ ((n : ℤ) - 2 : ℤ)) * (A000079 n : ℚ)⌉

end

end A038058.P17406870163428873935

/-! ## A038058.P16971157899504116827

`A000272(n)+A000225(n)*A000272(n)`
-/

namespace A038058.P16971157899504116827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n + A000225 n * A000272 n

end

end A038058.P16971157899504116827

/-! ## A038058.P15380020987579372452

`(2*n)^n/A028310(n²)`
-/

namespace A038058.P15380020987579372452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ n : ℚ) / (A028310 (n ^ 2) : ℚ)

end

end A038058.P15380020987579372452

/-!
# A038059: Number of rooted trees with 3-colored nodes.

The programs for A038059, there is no canonical definition to state claims against.
-/

/-! ## A038059.P1826293268071315271

`3*A006964(n+1)`
-/

namespace A038059.P1826293268071315271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006964 (n + 1)

end

end A038059.P1826293268071315271

/-! ## A038059.P16754252820530378640

`A271879(∑[n]+1)`
-/

namespace A038059.P16754252820530378640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271879 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A038059.P16754252820530378640

/-! ## A038059.P4941589615335983626

`record[A271879(n+1)]`
-/

namespace A038059.P4941589615335983626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038059.P4941589615335983626

/-! ## A038059.P7096158820331289702

`lcm(3, A271879(A000124(n)))`
-/

namespace A038059.P7096158820331289702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A271879 (A000124 n).toNat)

end

end A038059.P7096158820331289702

/-! ## A038059.P4791265665372805518

`3*A242249(A046691(n+3))`
-/

namespace A038059.P4791265665372805518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A242249 (A046691 (n + 3)).toNat

end

end A038059.P4791265665372805518

/-! ## A038059.P16211415667299567844

`3*A242249(A000124(n+5)-5)`
-/

namespace A038059.P16211415667299567844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A242249 (A000124 (n + 5) - 5).toNat

end

end A038059.P16211415667299567844

/-!
# A038060: Number of trees with 3-colored nodes.

The programs for A038060, there is no canonical definition to state claims against.
-/

/-! ## A038060.P8706675349256832027

`A008486(A047020(n)+A269484(n)-1)`
-/

namespace A038060.P8706675349256832027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A047020 n + (A269484 n - 1)).toNat

end

end A038060.P8706675349256832027

/-! ## A038060.P12469822762276236100

`A008486(A047020(n)-(1-A269484(n)))`
-/

namespace A038060.P12469822762276236100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A047020 n - (1 - A269484 n)).toNat

end

end A038060.P12469822762276236100

/-! ## A038060.P1176530403088733837

`A065033(6*A269484(n))`
-/

namespace A038060.P1176530403088733837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (6 * A269484 n).toNat

end

end A038060.P1176530403088733837

/-!
# A038061: a(n) = 3^n*n^(n-1).

The programs for A038061, the canonical program `A038061.P7807845608107598279` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038061 has offset 1).

The definition of A038061 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(n+1)*(n+1)^n` (program `A038061.P7807845608107598279`, by `A038061.P7807845608107598279.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038061.P7807845608107598279

`3^(n+1)*(n+1)^n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038061

/-- `3^(n+1)*(n+1)^n` -/
def P7807845608107598279.Spec : Prop :=
  ∀ n, (P7807845608107598279.a n : ℤ) = A038061 (n + 1)

theorem P7807845608107598279.correct : P7807845608107598279.Spec := by
  intro n
  simp only [A038061, Nat.add_sub_cancel]

end A038061

/-! ## A038061.P4863927683575887058

`((n+1)/cot(atan(3)))^n/cot(atan(3))`
-/

namespace A038061.P4863927683575887058
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) / Real.cot (Real.arctan (3 : ℝ))) ^ n / Real.cot (Real.arctan (3 : ℝ))

end

end A038061.P4863927683575887058

namespace A038061

/-- `((n+1)/cot(atan(3)))^n/cot(atan(3))` -/
def P4863927683575887058.Spec : Prop :=
  ∀ n, P4863927683575887058.a n = (A038061 (n + 1) : ℝ)

end A038061

/-! ## A038061.P5318226246982093246

`Δ[3*∑[A052756(n)]]`
-/

namespace A038061.P5318226246982093246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052756 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038061.P5318226246982093246

namespace A038061

/-- `Δ[3*∑[A052756(n)]]` -/
def P5318226246982093246.Spec : Prop :=
  ∀ n, P5318226246982093246.a n = A038061 (n + 1)

end A038061

/-! ## A038061.P4495581434602885355

`A052756(n+1)+2*A052756(n+1)`
-/

namespace A038061.P4495581434602885355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052756 (n + 1) + 2 * A052756 (n + 1)

end

end A038061.P4495581434602885355

namespace A038061

/-- `A052756(n+1)+2*A052756(n+1)` -/
def P4495581434602885355.Spec : Prop :=
  ∀ n, P4495581434602885355.a n = A038061 (n + 1)

end A038061

/-! ## A038061.P15459610575744789319

`A091482(n+1)/(n+1)`
-/

namespace A038061.P15459610575744789319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091482 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A038061.P15459610575744789319

namespace A038061

/-- `A091482(n+1)/(n+1)` -/
def P15459610575744789319.Spec : Prop :=
  ∀ n, P15459610575744789319.a n = (A038061 (n + 1) : ℚ)

end A038061

/-!
# A038062: Number of labeled trees with 3-colored nodes.

The programs for A038062, there is no canonical definition to state claims against.
-/

/-! ## A038062.P16224603716459733863

`3^n*n^floor(n-atan(n))`
-/

namespace A038062.P16224603716459733863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) * (n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ)

end

end A038062.P16224603716459733863

/-! ## A038062.P8852987457856883460

`3^n*n^(n-ceil(atan(n)))`
-/

namespace A038062.P8852987457856883460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) * (n : ℚ) ^ ((n : ℤ) - ⌈Real.arctan (n : ℝ)⌉ : ℤ)

end

end A038062.P8852987457856883460

/-! ## A038062.P13341861445640319598

`3^n*n^(abs(1-n)-1)`
-/

namespace A038062.P13341861445640319598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) * (n : ℚ) ^ (|1 - (n : ℤ)| - 1 : ℤ)

end

end A038062.P13341861445640319598

/-! ## A038062.P17571481904702284535

`ceil(3^n*∏{e}[2^n, #^(n-2)])`
-/

namespace A038062.P17571481904702284535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) ^ ((n : ℤ) - 2 : ℤ))⌉

end

end A038062.P17571481904702284535

/-! ## A038062.P5607725137743172796

`round(3^n*∏{e}[2^n, #^(n-2)])`
-/

namespace A038062.P5607725137743172796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ n : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) ^ ((n : ℤ) - 2 : ℤ)))

end

end A038062.P5607725137743172796

/-!
# A038063: Product_{k>=1}1/(1 - x^k)^a(k) = 1 + 2x.

The programs for A038063, there is no canonical definition to state claims against.
-/

/-! ## A038063.P3562981380681490031

`∑{d}[n+1, A038067(#)*A154955((n+1)/#)]`
-/

namespace A038063.P3562981380681490031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038067 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038063.P3562981380681490031

/-! ## A038063.P16550067218680703538

`A320783(or(n, A233583(n+1))+1)`
-/

namespace A038063.P16550067218680703538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320783 (Int.lor (n : ℤ) (A233583 (n + 1)) + 1).toNat

end

end A038063.P16550067218680703538

/-! ## A038063.P6647886382699450893

`A320783(n+1)+A008683(A062383(n))`
-/

namespace A038063.P6647886382699450893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320783 (n + 1) + A008683 (A062383 n).toNat

end

end A038063.P6647886382699450893

/-! ## A038063.P14501865781986074577

`A320783(n+1)+A154269(A016726(n+1))`
-/

namespace A038063.P14501865781986074577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320783 (n + 1) + A154269 (A016726 (n + 1)).toNat

end

end A038063.P14501865781986074577

/-! ## A038063.P3063176406792019052

`A320783(n+1)+A154269(n²+1)`
-/

namespace A038063.P3063176406792019052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320783 (n + 1) + A154269 (n ^ 2 + 1)

end

end A038063.P3063176406792019052

/-! ## A038063.P14428839391720527722

`A383011(∑[n+2])`
-/

namespace A038063.P14428839391720527722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383011 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038063.P14428839391720527722

/-!
# A038064: Product_{k>=1} 1/(1 - x^k)^a(k) = 1 + 3x.

The programs for A038064, the canonical program `A038064.P12333888609492393518` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038064 has offset 1).

The definition of A038064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038064.P2735740307760747363

`∑{d}[n+1, A038068(#)*A154955((n+1)/#)]`
-/

namespace A038064.P2735740307760747363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038068 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038064.P2735740307760747363

namespace A038064

/-- `∑{d}[n+1, A038068(#)*A154955((n+1)/#)]` -/
def P2735740307760747363.Spec : Prop :=
  ∀ n, P2735740307760747363.a n = A038064 (n + 1)

end A038064

/-! ## A038064.P12333888609492393518

`∑{d}[n+1, A008683(#)*A343465((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038064

/-- `∑{d}[n+1, A008683(#)*A343465((n+1)/#)]` -/
def P12333888609492393518.Spec : Prop :=
  ∀ n, P12333888609492393518.a n = A038064 (n + 1)

theorem P12333888609492393518.correct : P12333888609492393518.Spec := by
  intro n
  simp only [A038064, Nat.add_sub_cancel]

end A038064

/-! ## A038064.P2222168659449121427

`A383011(∑[n+3]+1)`
-/

namespace A038064.P2222168659449121427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383011 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A038064.P2222168659449121427

namespace A038064

/-- `A383011(∑[n+3]+1)` -/
def P2222168659449121427.Spec : Prop :=
  ∀ n, P2222168659449121427.a n = A038064 (n + 1)

end A038064

/-!
# A038065: Product_{k>=1} 1/(1 - x^k)^a(k) = 1 + 4x.

The programs for A038065, the canonical program `A038065.P11047722364589703808` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038065 has offset 1).

The definition of A038065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038065.P7352623248420113881

`∑{d}[n+1, A038069(#)*A154955((n+1)/#)]`
-/

namespace A038065.P7352623248420113881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038069 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038065.P7352623248420113881

namespace A038065

/-- `∑{d}[n+1, A038069(#)*A154955((n+1)/#)]` -/
def P7352623248420113881.Spec : Prop :=
  ∀ n, P7352623248420113881.a n = A038065 (n + 1)

end A038065

/-! ## A038065.P11047722364589703808

`∑{d}[n+1, A008683(#)*A343466((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038065

/-- `∑{d}[n+1, A008683(#)*A343466((n+1)/#)]` -/
def P11047722364589703808.Spec : Prop :=
  ∀ n, P11047722364589703808.a n = A038065 (n + 1)

theorem P11047722364589703808.correct : P11047722364589703808.Spec := by
  intro n
  simp only [A038065, Nat.add_sub_cancel]

end A038065

/-! ## A038065.P8882802314364551907

`A383011(A000124(n+3)+n)`
-/

namespace A038065.P8882802314364551907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383011 (A000124 (n + 3) + (n : ℤ)).toNat

end

end A038065.P8882802314364551907

namespace A038065

/-- `A383011(A000124(n+3)+n)` -/
def P8882802314364551907.Spec : Prop :=
  ∀ n, P8882802314364551907.a n = A038065 (n + 1)

end A038065

/-!
# A038066: Product_{k>=1} 1/(1 - x^k)^a(k) = 1 + 5x.

The programs for A038066, the canonical program `A038066.P9473377438778066105` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038066 has offset 1).

The definition of A038066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038066.P2200551535940353008

`∑{d}[n+1, A038070(#)*A154955((n+1)/#)]`
-/

namespace A038066.P2200551535940353008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038070 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038066.P2200551535940353008

namespace A038066

/-- `∑{d}[n+1, A038070(#)*A154955((n+1)/#)]` -/
def P2200551535940353008.Spec : Prop :=
  ∀ n, P2200551535940353008.a n = A038066 (n + 1)

end A038066

/-! ## A038066.P9473377438778066105

`∑{d}[n+1, A008683(#)*A343467((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038066

/-- `∑{d}[n+1, A008683(#)*A343467((n+1)/#)]` -/
def P9473377438778066105.Spec : Prop :=
  ∀ n, P9473377438778066105.a n = A038066 (n + 1)

theorem P9473377438778066105.correct : P9473377438778066105.Spec := by
  intro n
  simp only [A038066, Nat.add_sub_cancel]

end A038066

/-! ## A038066.P1470674925516039895

`A383011(A000217(n+4)+n+1)`
-/

namespace A038066.P1470674925516039895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383011 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A038066.P1470674925516039895

namespace A038066

/-- `A383011(A000217(n+4)+n+1)` -/
def P1470674925516039895.Spec : Prop :=
  ∀ n, P1470674925516039895.a n = A038066 (n + 1)

end A038066

/-!
# A038067: Product_{k>=1} (1 + x^k)^a(k) = 1 + 2x.

The programs for A038067, there is no canonical definition to state claims against.
-/

/-! ## A038067.P3546141257517143556

`∑{d}[A006519(n+1), A038063((n+1)/#)]`
-/

namespace A038067.P3546141257517143556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A038063 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038067.P3546141257517143556

/-! ## A038067.P3932887491746074759

`∑{d}[n+1, A036987(#-1)*A038063((n+1)/#)]`
-/

namespace A038067.P3932887491746074759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A038063 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038067.P3932887491746074759

/-!
# A038068: Product_{k>=1}(1 + x^k)^a(k) = 1 + 3x.

The programs for A038068, the canonical program `A038068.P14683916657712010267` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038068 has offset 1).

The definition of A038068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038068.P14683916657712010267

`∑{d}[A055975(n+1), A038064((n+1)/#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A038068

/-- `∑{d}[A055975(n+1), A038064((n+1)/#)]` -/
def P14683916657712010267.Spec : Prop :=
  ∀ n, P14683916657712010267.a n = A038068 (n + 1)

theorem P14683916657712010267.correct : P14683916657712010267.Spec := by
  intro n
  simp only [A038068, Nat.add_sub_cancel]

end A038068

/-! ## A038068.P4580632730781047458

`∑{d}[n+1, A087003(#)*A343465((n+1)/#)]`
-/

namespace A038068.P4580632730781047458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A343465 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038068.P4580632730781047458

namespace A038068

/-- `∑{d}[n+1, A087003(#)*A343465((n+1)/#)]` -/
def P4580632730781047458.Spec : Prop :=
  ∀ n, P4580632730781047458.a n = A038068 (n + 1)

end A038068

/-! ## A038068.P6391796900496993237

`∑{d}[n+1, A036987(#-1)*A038064((n+1)/#)]`
-/

namespace A038068.P6391796900496993237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A038064 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038068.P6391796900496993237

namespace A038068

/-- `∑{d}[n+1, A036987(#-1)*A038064((n+1)/#)]` -/
def P6391796900496993237.Spec : Prop :=
  ∀ n, P6391796900496993237.a n = A038068 (n + 1)

end A038068

/-!
# A038069: Product_{k>=1} ((1 + x^k)^a(k)) = 1 + 4x.

The programs for A038069, the canonical program `A038069.P16380306721213576042` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038069 has offset 1).

The definition of A038069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038069.P16380306721213576042

`∑{d}[n+1, A087003(#)*A343466((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038069

/-- `∑{d}[n+1, A087003(#)*A343466((n+1)/#)]` -/
def P16380306721213576042.Spec : Prop :=
  ∀ n, P16380306721213576042.a n = A038069 (n + 1)

theorem P16380306721213576042.correct : P16380306721213576042.Spec := by
  intro n
  simp only [A038069, Nat.add_sub_cancel]

end A038069

/-! ## A038069.P1599949153995667738

`∑{d}[n+1, A036987(#-1)*A038065((n+1)/#)]`
-/

namespace A038069.P1599949153995667738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A038065 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038069.P1599949153995667738

namespace A038069

/-- `∑{d}[n+1, A036987(#-1)*A038065((n+1)/#)]` -/
def P1599949153995667738.Spec : Prop :=
  ∀ n, P1599949153995667738.a n = A038069 (n + 1)

end A038069

/-!
# A038070: Product_{k>=1} (1+x^k)^a(k) = 1 + 5x.

The programs for A038070, the canonical program `A038070.P1376458268860561211` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038070 has offset 1).

The definition of A038070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038070.P1376458268860561211

`∑{d}[n+1, A087003(#)*A343467((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038070

/-- `∑{d}[n+1, A087003(#)*A343467((n+1)/#)]` -/
def P1376458268860561211.Spec : Prop :=
  ∀ n, P1376458268860561211.a n = A038070 (n + 1)

theorem P1376458268860561211.correct : P1376458268860561211.Spec := by
  intro n
  simp only [A038070, Nat.add_sub_cancel]

end A038070

/-! ## A038070.P6243539489540183648

`∑{d}[n+1, A036987(#-1)*A038066((n+1)/#)]`
-/

namespace A038070.P6243539489540183648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A038066 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038070.P6243539489540183648

namespace A038070

/-- `∑{d}[n+1, A036987(#-1)*A038066((n+1)/#)]` -/
def P6243539489540183648.Spec : Prop :=
  ∀ n, P6243539489540183648.a n = A038070 (n + 1)

end A038070

/-!
# A038075: Number of rooted identity trees with 2-colored leaves.

The programs for A038075, there is no canonical definition to state claims against.
-/

/-! ## A038075.P9149335195323657520

`A210357(A008909(n+1))+1`
-/

namespace A038075.P9149335195323657520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A008909 (n + 1)).toNat + 1

end

end A038075.P9149335195323657520

/-! ## A038075.P12013447535584183791

`A108586(A318229(n+1)+1)`
-/

namespace A038075.P12013447535584183791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108586 (A318229 (n + 1) + 1).toNat

end

end A038075.P12013447535584183791

/-! ## A038075.P16491195868551160782

`A342517(A001405(n))+A001519(n)`
-/

namespace A038075.P16491195868551160782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (A001405 n).toNat + A001519 n

end

end A038075.P16491195868551160782

/-! ## A038075.P2175182461272952952

`A001462(A137956(n)+A014673(n+1))`
-/

namespace A038075.P2175182461272952952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A137956 n + A014673 (n + 1)).toNat

end

end A038075.P2175182461272952952

/-!
# A038076: Number of rooted identity trees with 3-colored leaves.

The programs for A038076, there is no canonical definition to state claims against.
-/

/-! ## A038076.P8186547926791200034

`A050499(∑[A025047(3*n)+1])`
-/

namespace A038076.P8186547926791200034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 (3 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038076.P8186547926791200034

/-! ## A038076.P14655222902251884950

`A233583(A071755(n))+A028310(n)`
-/

namespace A038076.P14655222902251884950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A071755 n).toNat + A028310 n

end

end A038076.P14655222902251884950

/-! ## A038076.P14461111480500317844

`A233583(A071755(n))+A209900(n+1)`
-/

namespace A038076.P14461111480500317844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A071755 n).toNat + A209900 (n + 1)

end

end A038076.P14461111480500317844

/-!
# A038077: Number of rooted identity trees with 2-colored nodes.

The programs for A038077, there is no canonical definition to state claims against.
-/

/-! ## A038077.P4561331331954382394

`2*A005753(n+1)`
-/

namespace A038077.P4561331331954382394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005753 (n + 1)

end

end A038077.P4561331331954382394

/-! ## A038077.P8396790891654141187

`A005753(n+1)+A005753(Δ[n²]-n)`
-/

namespace A038077.P8396790891654141187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005753 (n + 1) + A005753 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A038077.P8396790891654141187

/-! ## A038077.P3447770121434955148

`A005753(n+1)+gcd(A000038(n), A005753(n+1))`
-/

namespace A038077.P3447770121434955148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005753 (n + 1) + (Int.gcd (A000038 n) (A005753 (n + 1)) : ℤ)

end

end A038077.P3447770121434955148

/-! ## A038077.P16042947331827730996

`A005753(n+1)+record[A005753(A278538(n+1))]`
-/

namespace A038077.P16042947331827730996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005753 (A278538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005753 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038077.P16042947331827730996

/-! ## A038077.P10914280618272036610

`A005753(n+1)+A005753(n+1)%A202962(A034856(n+2))`
-/

namespace A038077.P10914280618272036610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005753 (n + 1) + Int.tmod (A005753 (n + 1)) (A202962 (A034856 (n + 2)).toNat)

end

end A038077.P10914280618272036610

/-! ## A038077.P8257844840560398046

`2*A255517(A055998(n+2))`
-/

namespace A038077.P8257844840560398046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255517 (A055998 (n + 2)).toNat

end

end A038077.P8257844840560398046

/-! ## A038077.P5037078985436742597

`2*A255517(A167499(n)+A016777(n))`
-/

namespace A038077.P5037078985436742597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255517 (A167499 n + A016777 n).toNat

end

end A038077.P5037078985436742597

/-! ## A038077.P8809767971786348404

`A005753(n+1)+A049248(A002024(n+1)²)+A005753(n+1)`
-/

namespace A038077.P8809767971786348404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005753 (n + 1) + (A049248 (A002024 (n + 1) ^ 2).toNat + A005753 (n + 1))

end

end A038077.P8809767971786348404

/-!
# A038079: Number of rooted identity trees with 3-colored nodes.

The programs for A038079, there is no canonical definition to state claims against.
-/

/-! ## A038079.P2157715922985521134

`3*A052757(n+1)`
-/

namespace A038079.P2157715922985521134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A052757 (n + 1)

end

end A038079.P2157715922985521134

/-! ## A038079.P10461369706747426772

`Δ[3*∑[A052757(n)]]`
-/

namespace A038079.P10461369706747426772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052757 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038079.P10461369706747426772

/-! ## A038079.P4873219524131470244

`3*A255517(A046691(n+3))`
-/

namespace A038079.P4873219524131470244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A255517 (A046691 (n + 3)).toNat

end

end A038079.P4873219524131470244

/-! ## A038079.P16965537040475560517

`3*A255517(A060577(n+4))`
-/

namespace A038079.P16965537040475560517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A255517 (A060577 (n + 4)).toNat

end

end A038079.P16965537040475560517

/-! ## A038079.P14582467767461058053

`3*A255517(Δ[A023545(n+1)])`
-/

namespace A038079.P14582467767461058053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A255517 (f1 (n + 1) - f1 n).toNat

end

end A038079.P14582467767461058053

/-! ## A038079.P2587876472773689222

`3*A255517(A000124(n+5)-5)`
-/

namespace A038079.P2587876472773689222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A255517 (A000124 (n + 5) - 5).toNat

end

end A038079.P2587876472773689222

/-!
# A038080: Number of identity trees with 3-colored nodes.

The programs for A038080, there is no canonical definition to state claims against.
-/

/-! ## A038080.P17574951103686882820

`A106506(a(n-1))` with `a(0)=1, a(1)=3, a(2)=3, a(3)=9`
-/

namespace A038080.P17574951103686882820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 9] fun n a =>
  A106506 (a (n - 1)).toNat

end

end A038080.P17574951103686882820

/-! ## A038080.P15563461771769102838

`3*A203076(a(n-1))` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A038080.P15563461771769102838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  3 * A203076 (a (n - 1)).toNat

end

end A038080.P15563461771769102838

/-!
# A038081: Number of rooted identity trees of height n. Sets of rank n.

The programs for A038081, there is no canonical definition to state claims against.
-/

/-! ## A038081.P871885561684985081

`Δ[2^a(n-1)]` with `a(0)=0`
-/

namespace A038081.P871885561684985081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  2 ^ f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A038081.P871885561684985081

/-!
# A038083: Number of n-node rooted identity trees of height at most 4.

The programs for A038083, there is no canonical definition to state claims against.
-/

/-! ## A038083.P8464226121338093199

`A137735(∑[A339655(n)])`
-/

namespace A038083.P8464226121338093199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038083.P8464226121338093199

/-! ## A038083.P8424163994185538601

`A135660(2*A000837(2*n))`
-/

namespace A038083.P8424163994185538601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (2 * A000837 (2 * n)).toNat

end

end A038083.P8424163994185538601

/-! ## A038083.P15243075122598151795

`A005041(A096581(n+1)-A096574(n+1))`
-/

namespace A038083.P15243075122598151795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A096581 (n + 1) - A096574 (n + 1)).toNat

end

end A038083.P15243075122598151795

/-!
# A038084: Number of n-node rooted identity trees of height at most 5.

The programs for A038084, there is no canonical definition to state claims against.
-/

/-! ## A038084.P14126827977493536305

`A257639(∑[(n+1)*A171853(n)]+1)`
-/

namespace A038084.P14126827977493536305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A171853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A038084.P14126827977493536305

/-! ## A038084.P13147497318899309473

`A081659(n)-A104324(A290890(n))`
-/

namespace A038084.P13147497318899309473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n - A104324 (A290890 n).toNat

end

end A038084.P13147497318899309473

/-! ## A038084.P7891046895420724813

`A003056(A299167(n)-A191386(n))`
-/

namespace A038084.P7891046895420724813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A299167 n - A191386 n).toNat

end

end A038084.P7891046895420724813

/-! ## A038084.P1244312754745948908

`A000045(n+1)-A007895(A115730(n))`
-/

namespace A038084.P1244312754745948908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A007895 (A115730 n).toNat

end

end A038084.P1244312754745948908

/-! ## A038084.P2398818406534787788

`A003056(A145671(n+1)-A004273(n))`
-/

namespace A038084.P2398818406534787788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A145671 (n + 1) - A004273 n).toNat

end

end A038084.P2398818406534787788

/-!
# A038085: Number of n-node rooted identity trees of height at most 6.

The programs for A038085, there is no canonical definition to state claims against.
-/

/-! ## A038085.P9653969065852094417

`A033183(A000041(3*n))+1`
-/

namespace A038085.P9653969065852094417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A000041 (3 * n)).toNat + 1

end

end A038085.P9653969065852094417

/-! ## A038085.P8670467031650752938

`A033183(A035377(9*n))+1`
-/

namespace A038085.P8670467031650752938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A035377 (9 * n)).toNat + 1

end

end A038085.P8670467031650752938

/-! ## A038085.P734421841309489667

`A172471(A151417(n))-floor(n/2)`
-/

namespace A038085.P734421841309489667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A151417 n).toNat - ⌊(n : ℚ) / 2⌋

end

end A038085.P734421841309489667

/-! ## A038085.P828689363036510785

`A000267(A148083(n))-A008619(n)`
-/

namespace A038085.P828689363036510785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A148083 n).toNat - A008619 n

end

end A038085.P828689363036510785

/-! ## A038085.P14718046276348747168

`A055086(A148083(n))-A004526(n)`
-/

namespace A038085.P14718046276348747168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A148083 n).toNat - A004526 n

end

end A038085.P14718046276348747168

/-!
# A038086: Number of n-node rooted identity trees of height at most 7.

The programs for A038086, there is no canonical definition to state claims against.
-/

/-! ## A038086.P11778877290370404241

`A033183(4*A275445(n+2))`
-/

namespace A038086.P11778877290370404241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (4 * A275445 (n + 2)).toNat

end

end A038086.P11778877290370404241

/-! ## A038086.P10116278040409596843

`A053260(A087999(n+2)+A063541(n+3))`
-/

namespace A038086.P10116278040409596843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 (A087999 (n + 2) + A063541 (n + 3)).toNat

end

end A038086.P10116278040409596843

/-! ## A038086.P2740431192066664320

`A111654(A006789(n))`
-/

namespace A038086.P2740431192066664320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A006789 n).toNat

end

end A038086.P2740431192066664320

/-! ## A038086.P3949437628703466468

`A111654(A249562(n))`
-/

namespace A038086.P3949437628703466468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A249562 n).toNat

end

end A038086.P3949437628703466468

/-! ## A038086.P6393793158713756954

`A111654(A307786(n))`
-/

namespace A038086.P6393793158713756954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A307786 n).toNat

end

end A038086.P6393793158713756954

/-!
# A038087: Number of n-node rooted identity trees of height at most 8.

The programs for A038087, there is no canonical definition to state claims against.
-/

/-! ## A038087.P8059940568740635571

`A116379(n+1)-A036632(A250265(n))`
-/

namespace A038087.P8059940568740635571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116379 (n + 1) - A036632 (A250265 n).toNat

end

end A038087.P8059940568740635571

/-! ## A038087.P13790859957332555671

`ceil(sqrt(A338584(n))/9)`
-/

namespace A038087.P13790859957332555671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A338584 (n + 13) : ℝ) / 9⌉

end

end A038087.P13790859957332555671

/-! ## A038087.P11986478841615641761

`floor(root(A260156(n+2), 3))`
-/

namespace A038087.P11986478841615641761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A260156 (n + 2) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A038087.P11986478841615641761

/-! ## A038087.P18218245986269068821

`A082447(A398115(n))`
-/

namespace A038087.P18218245986269068821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A398115 n).toNat

end

end A038087.P18218245986269068821

/-! ## A038087.P6546903018175758936

`A051889(A001385(n+1))`
-/

namespace A038087.P6546903018175758936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A001385 (n + 1)).toNat

end

end A038087.P6546903018175758936

/-!
# A038088: Number of n-node rooted identity trees of height 4.

The programs for A038088, there is no canonical definition to state claims against.
-/

/-! ## A038088.P809365380209004655

`A227819(A167499(n+3))`
-/

namespace A038088.P809365380209004655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A167499 (n + 3)).toNat

end

end A038088.P809365380209004655

/-! ## A038088.P4129964157526642115

`A227819(A155212(n)+13)`
-/

namespace A038088.P4129964157526642115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A155212 n + 13).toNat

end

end A038088.P4129964157526642115

/-! ## A038088.P14222549795177269867

`A227819(A056000(n)+15)`
-/

namespace A038088.P14222549795177269867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A056000 n + 15).toNat

end

end A038088.P14222549795177269867

/-! ## A038088.P5057217751474353531

`A227819(A167614(n+3)+2)`
-/

namespace A038088.P5057217751474353531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A167614 (n + 3) + 2).toNat

end

end A038088.P5057217751474353531

/-! ## A038088.P9745976819097247100

`A227819(A000124(n+4)+4)`
-/

namespace A038088.P9745976819097247100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000124 (n + 4) + 4).toNat

end

end A038088.P9745976819097247100

/-! ## A038088.P6635079716120139241

`A227819(A000217(n+4)+5)`
-/

namespace A038088.P6635079716120139241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000217 (n + 4) + 5).toNat

end

end A038088.P6635079716120139241

/-!
# A038089: Number of n-node rooted identity trees of height 5.

The programs for A038089, there is no canonical definition to state claims against.
-/

/-! ## A038089.P12423938314454432922

`record[A227819(∑[n-1]+7)]`
-/

namespace A038089.P12423938314454432922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (∑ j ∈ Finset.range (n + 1), f2 j + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038089.P12423938314454432922

/-! ## A038089.P15562107840332701802

`A227819(A166136(n+4))`
-/

namespace A038089.P15562107840332701802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A166136 (n + 4)).toNat

end

end A038089.P15562107840332701802

/-! ## A038089.P1686559132168826549

`A227819(A000217(n+5)+6)`
-/

namespace A038089.P1686559132168826549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000217 (n + 5) + 6).toNat

end

end A038089.P1686559132168826549

/-! ## A038089.P1614273251318684133

`A227819(A000096(n+5)-(n-1))`
-/

namespace A038089.P1614273251318684133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A038089.P1614273251318684133

/-! ## A038089.P5059872538012357176

`A227819(A000124(n+6)-(n+1))`
-/

namespace A038089.P5059872538012357176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A038089.P5059872538012357176

/-! ## A038089.P4896919643977336640

`A038084(n+6)-A038083(n+6)`
-/

namespace A038089.P4896919643977336640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038084 (n + 6) - A038083 (n + 6)

end

end A038089.P4896919643977336640

/-!
# A038090: Number of n-node rooted identity trees of height 6.

The programs for A038090, there is no canonical definition to state claims against.
-/

/-! ## A038090.P16205514221300977887

`A038085(n+7)-A038084(n+7)`
-/

namespace A038090.P16205514221300977887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038085 (n + 7) - A038084 (n + 7)

end

end A038090.P16205514221300977887

/-! ## A038090.P17176559116207281115

`record[A227819(A077169(n)+2)]`
-/

namespace A038090.P17176559116207281115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A077169 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038090.P17176559116207281115

/-! ## A038090.P6657646951579031881

`A227819(A000096(n+5)+8)`
-/

namespace A038090.P6657646951579031881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000096 (n + 5) + 8).toNat

end

end A038090.P6657646951579031881

/-! ## A038090.P8440071937848537391

`A227819(A000217(n+6)+7)`
-/

namespace A038090.P8440071937848537391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000217 (n + 6) + 7).toNat

end

end A038090.P8440071937848537391

/-! ## A038090.P14733667718985591791

`record[A227819(A167614(n+1)+4)]`
-/

namespace A038090.P14733667718985591791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A167614 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038090.P14733667718985591791

/-! ## A038090.P1678324523358758471

`A227819(A133263(n+3)+A016789(n+6))`
-/

namespace A038090.P1678324523358758471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A133263 (n + 3) + A016789 (n + 6)).toNat

end

end A038090.P1678324523358758471

/-!
# A038091: Number of n-node rooted identity trees of height 7.

The programs for A038091, there is no canonical definition to state claims against.
-/

/-! ## A038091.P13594140386803350054

`A038086(n+8)-A038085(n+8)`
-/

namespace A038091.P13594140386803350054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038086 (n + 8) - A038085 (n + 8)

end

end A038091.P13594140386803350054

/-! ## A038091.P18041924783393070016

`A227819(A167499(n+6)+3)`
-/

namespace A038091.P18041924783393070016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A167499 (n + 6) + 3).toNat

end

end A038091.P18041924783393070016

/-! ## A038091.P4575149167392880557

`A227819(A000096(n+6)+9)`
-/

namespace A038091.P4575149167392880557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000096 (n + 6) + 9).toNat

end

end A038091.P4575149167392880557

/-! ## A038091.P14080760120057826636

`A227819(A000217(n+7)+8)`
-/

namespace A038091.P14080760120057826636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000217 (n + 7) + 8).toNat

end

end A038091.P14080760120057826636

/-! ## A038091.P18193890952098070095

`A227819(A000124(n+8)-(n+1))`
-/

namespace A038091.P18193890952098070095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A038091.P18193890952098070095

/-! ## A038091.P11040776995143123192

`A227819(A020722(A000217(n+7)))`
-/

namespace A038091.P11040776995143123192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A020722 (A000217 (n + 7)).toNat).toNat

end

end A038091.P11040776995143123192

/-!
# A038092: Number of n-node rooted identity trees of height 8.

The programs for A038092, there is no canonical definition to state claims against.
-/

/-! ## A038092.P11581715250276814471

`A038087(n+9)-A038086(n+9)`
-/

namespace A038092.P11581715250276814471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038087 (n + 9) - A038086 (n + 9)

end

end A038092.P11581715250276814471

/-! ## A038092.P9932972253714646644

`A227819(A133263(n+8)+7)`
-/

namespace A038092.P9932972253714646644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A133263 (n + 8) + 7).toNat

end

end A038092.P9932972253714646644

/-! ## A038092.P4264306019869162892

`A227819(A000096(n+7)+10)`
-/

namespace A038092.P4264306019869162892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000096 (n + 7) + 10).toNat

end

end A038092.P4264306019869162892

/-! ## A038092.P13998608441900064045

`A227819(A000217(n+8)+9)`
-/

namespace A038092.P13998608441900064045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000217 (n + 8) + 9).toNat

end

end A038092.P13998608441900064045

/-! ## A038092.P16869635749936980049

`A227819(A052905(n+7)-5-2*n)`
-/

namespace A038092.P16869635749936980049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A052905 (n + 7) - 5 - (2 * n : ℤ)).toNat

end

end A038092.P16869635749936980049

/-!
# A038094: Number of rooted graphs on n labeled nodes where the root has degree 2.

The programs for A038094, the canonical program `A038094.P10633907635004351992` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038094 has offset 3).

The definition of A038094 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038094.P18137664929054986726

`(n+3)*C(n+2, 2)*2^C(n+2, 2)`
-/

namespace A038094.P18137664929054986726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.choose (n + 2) 2 * 2 ^ Nat.choose (n + 2) 2

end

end A038094.P18137664929054986726

namespace A038094

/-- `(n+3)*C(n+2, 2)*2^C(n+2, 2)` -/
def P18137664929054986726.Spec : Prop :=
  ∀ n, (P18137664929054986726.a n : ℤ) = A038094 (n + 3)

end A038094

/-! ## A038094.P10633907635004351992

`(n+3)*A103904(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038094

/-- `(n+3)*A103904(n+2)` -/
def P10633907635004351992.Spec : Prop :=
  ∀ n, P10633907635004351992.a n = A038094 (n + 3)

theorem P10633907635004351992.correct : P10633907635004351992.Spec := by
  intro n
  simp only [A038094, Nat.add_sub_cancel]

end A038094

/-! ## A038094.P12021735268265079592

`2^∑[n+1]*∑[∑[3*(n+1)]]`
-/

namespace A038094.P12021735268265079592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A038094.P12021735268265079592

namespace A038094

/-- `2^∑[n+1]*∑[∑[3*(n+1)]]` -/
def P12021735268265079592.Spec : Prop :=
  ∀ n, (P12021735268265079592.a n : ℤ) = A038094 (n + 3)

end A038094

/-! ## A038094.P1385806661625079202

`(n+1)*A095338(n+3)/2`
-/

namespace A038094.P1385806661625079202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A095338 (n + 3) : ℚ) / 2

end

end A038094.P1385806661625079202

namespace A038094

/-- `(n+1)*A095338(n+3)/2` -/
def P1385806661625079202.Spec : Prop :=
  ∀ n, P1385806661625079202.a n = (A038094 (n + 3) : ℚ)

end A038094

/-! ## A038094.P2743587038969179997

`∏[A057711(n+3)/round(sqrt(n²+1))]`
-/

namespace A038094.P2743587038969179997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057711 (n + 3) : ℚ) / (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038094.P2743587038969179997

namespace A038094

/-- `∏[A057711(n+3)/round(sqrt(n²+1))]` -/
def P2743587038969179997.Spec : Prop :=
  ∀ n, P2743587038969179997.a n = (A038094 (n + 3) : ℚ)

end A038094

/-!
# A038096: Number of rooted graphs on n labeled nodes where the root has degree 3.

The programs for A038096, the canonical program `A038096.P3940745126777019763` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038096 has offset 4).

The definition of A038096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038096.P3940745126777019763

`(n+4)*C(n+3, 3)*2^C(n+3, 2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038096

/-- `(n+4)*C(n+3, 3)*2^C(n+3, 2)` -/
def P3940745126777019763.Spec : Prop :=
  ∀ n, (P3940745126777019763.a n : ℤ) = A038096 (n + 4)

theorem P3940745126777019763.correct : P3940745126777019763.Spec := by
  intro n
  simp only [A038096, Nat.add_sub_cancel]

end A038096

/-! ## A038096.P6857296325294768013

`A181407(A167614(n+1))/3`
-/

namespace A038096.P6857296325294768013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181407 (A167614 (n + 1)).toNat : ℚ) / 3

end

end A038096.P6857296325294768013

namespace A038096

/-- `A181407(A167614(n+1))/3` -/
def P6857296325294768013.Spec : Prop :=
  ∀ n, P6857296325294768013.a n = (A038096 (n + 4) : ℚ)

end A038096

/-! ## A038096.P4351857700417659313

`2^A000217(n+2)*A033488(n+1)`
-/

namespace A038096.P4351857700417659313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000217 (n + 2) : ℤ) * (A033488 (n + 1) : ℚ)

end

end A038096.P4351857700417659313

namespace A038096

/-- `2^A000217(n+2)*A033488(n+1)` -/
def P4351857700417659313.Spec : Prop :=
  ∀ n, P4351857700417659313.a n = (A038096 (n + 4) : ℚ)

end A038096

/-! ## A038096.P18158872928478276551

`A003472(n+4)*A011782(A167499(n))`
-/

namespace A038096.P18158872928478276551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003472 (n + 4) * A011782 (A167499 n).toNat

end

end A038096.P18158872928478276551

namespace A038096

/-- `A003472(n+4)*A011782(A167499(n))` -/
def P18158872928478276551.Spec : Prop :=
  ∀ n, P18158872928478276551.a n = A038096 (n + 4)

end A038096

/-! ## A038096.P5330413392992965141

`∑[A000292(n+1)]*A000079(A133263(n+2))`
-/

namespace A038096.P5330413392992965141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 (A133263 (n + 2)).toNat

end

end A038096.P5330413392992965141

namespace A038096

/-- `∑[A000292(n+1)]*A000079(A133263(n+2))` -/
def P5330413392992965141.Spec : Prop :=
  ∀ n, P5330413392992965141.a n = A038096 (n + 4)

end A038096

/-!
# A038098: Number of primes < n^3.

The programs for A038098, the canonical program `A038098.P12780364938003173732` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038098 has offset 1).

The definition of A038098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038098.P12780364938003173732

`A000720((n+1)^3)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038098

/-- `A000720((n+1)^3)` -/
def P12780364938003173732.Spec : Prop :=
  ∀ n, P12780364938003173732.a n = A038098 (n + 1)

theorem P12780364938003173732.correct : P12780364938003173732.Spec := by
  intro n
  simp only [A038098, Nat.add_sub_cancel]

end A038098

/-! ## A038098.P11907302281669476171

`∑[A060199(n)]`
-/

namespace A038098.P11907302281669476171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038098.P11907302281669476171

namespace A038098

/-- `∑[A060199(n)]` -/
def P11907302281669476171.Spec : Prop :=
  ∀ n, P11907302281669476171.a n = A038098 (n + 1)

end A038098

/-! ## A038098.P12253463672227540616

`A117491(n+1)+A000720(n+1)`
-/

namespace A038098.P12253463672227540616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117491 (n + 1) + A000720 (n + 1)

end

end A038098.P12253463672227540616

namespace A038098

/-- `A117491(n+1)+A000720(n+1)` -/
def P12253463672227540616.Spec : Prop :=
  ∀ n, P12253463672227540616.a n = A038098 (n + 1)

theorem P12253463672227540616.correct : P12253463672227540616.Spec := by
  intro n
  simp only [A038098, Nat.add_sub_cancel, A038098.P12253463672227540616.a, A038098.P12780364938003173732.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A117491, A117491.P5569810721015399091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038098

/-! ## A038098.P10933417560184566505

`a(n-1)+A060199(n)+A000007(n)` with `a(0)=0`
-/

namespace A038098.P10933417560184566505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A060199 n + A000007 n)

end

end A038098.P10933417560184566505

namespace A038098

/-- `a(n-1)+A060199(n)+A000007(n)` -/
def P10933417560184566505.Spec : Prop :=
  ∀ n, P10933417560184566505.a n = A038098 (n + 1)

end A038098

/-! ## A038098.P14290074490659033425

`a(n-1)+A060199(n)%A155212(n)` with `a(0)=0`
-/

namespace A038098.P14290074490659033425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A060199 n) (A155212 n)

end

end A038098.P14290074490659033425

namespace A038098

/-- `a(n-1)+A060199(n)%A155212(n)` -/
def P14290074490659033425.Spec : Prop :=
  ∀ n, P14290074490659033425.a n = A038098 (n + 1)

end A038098

/-! ## A038098.P10834361934499609800

`A038107(n+1)+A117491(n+1)-A117490(n+1)`
-/

namespace A038098.P10834361934499609800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) + (A117491 (n + 1) - A117490 (n + 1))

end

end A038098.P10834361934499609800

namespace A038098

/-- `A038107(n+1)+A117491(n+1)-A117490(n+1)` -/
def P10834361934499609800.Spec : Prop :=
  ∀ n, P10834361934499609800.a n = A038098 (n + 1)

end A038098

/-! ## A038098.P13395298282168386500

`A038107(n)+A079648(n)+A060199(n)`
-/

namespace A038098.P13395298282168386500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n + (A079648 n + A060199 n)

end

end A038098.P13395298282168386500

namespace A038098

/-- `A038107(n)+A079648(n)+A060199(n)` -/
def P13395298282168386500.Spec : Prop :=
  ∀ n, P13395298282168386500.a n = A038098 (n + 1)

end A038098

/-! ## A038098.P8057096596759328860

`∑[A014085(n)+Δ[A079648(n)]]`
-/

namespace A038098.P8057096596759328860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079648 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038098.P8057096596759328860

namespace A038098

/-- `∑[A014085(n)+Δ[A079648(n)]]` -/
def P8057096596759328860.Spec : Prop :=
  ∀ n, P8057096596759328860.a n = A038098 (n + 1)

end A038098

/-! ## A038098.P11687787138553351294

`A079648(n+1)+∑[A014085(n)]`
-/

namespace A038098.P11687787138553351294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079648 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038098.P11687787138553351294

namespace A038098

/-- `A079648(n+1)+∑[A014085(n)]` -/
def P11687787138553351294.Spec : Prop :=
  ∀ n, P11687787138553351294.a n = A038098 (n + 1)

end A038098

/-! ## A038098.P5441929217351514569

`A079648(n+1)+A038107(n+1)`
-/

namespace A038098.P5441929217351514569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079648 (n + 1) + A038107 (n + 1)

end

end A038098.P5441929217351514569

namespace A038098

/-- `A079648(n+1)+A038107(n+1)` -/
def P5441929217351514569.Spec : Prop :=
  ∀ n, P5441929217351514569.a n = A038098 (n + 1)

end A038098

/-! ## A038098.P6321466346172054622

`A079648(n+1)+A380331(n+1)-A380332(n+1)`
-/

namespace A038098.P6321466346172054622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079648 (n + 1) + (A380331 (n + 1) - A380332 (n + 1))

end

end A038098.P6321466346172054622

namespace A038098

/-- `A079648(n+1)+A380331(n+1)-A380332(n+1)` -/
def P6321466346172054622.Spec : Prop :=
  ∀ n, P6321466346172054622.a n = A038098 (n + 1)

end A038098

/-! ## A038098.P1892782850528885400

`A084360(A187873(n+1))+A079648(n+1)`
-/

namespace A038098.P1892782850528885400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A187873 (n + 1)).toNat + A079648 (n + 1)

end

end A038098.P1892782850528885400

namespace A038098

/-- `A084360(A187873(n+1))+A079648(n+1)` -/
def P1892782850528885400.Spec : Prop :=
  ∀ n, P1892782850528885400.a n = A038098 (n + 1)

end A038098

/-!
# A038099: Numbers k such that k > first location of string of k in decimal expansion of Pi.

The programs for A038099, there is no canonical definition to state claims against.
-/

/-! ## A038099.P8164521392587413937

`lt[A014777(n), n]`
-/

namespace A038099.P8164521392587413937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A038099.P8164521392587413937

/-! ## A038099.P8800759081111836413

`eq[char[A038100(n+1)], A063524(n)]`
-/

namespace A038099.P8800759081111836413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038100 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A038099.P8800759081111836413

/-! ## A038099.P5188553848880090505

`eq[A014777(n)%A109613(n), A014777(n)]`
-/

namespace A038099.P5188553848880090505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014777 n) (A109613 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038099.P5188553848880090505

/-! ## A038099.P16251651160102836583

`lt[A176341(n)², n*A176341(n)]`
-/

namespace A038099.P16251651160102836583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176341 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A176341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A038099.P16251651160102836583

/-! ## A038099.P4906765510197905128

`lt[1, C(n, A176341(n))]`
-/

namespace A038099.P4906765510197905128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A176341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A038099.P4906765510197905128

