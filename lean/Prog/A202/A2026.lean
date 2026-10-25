import SequenceMachineLib
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A202600: Number of (n+2)X9 binary arrays avoiding patterns 001 and 000 in rows and columns.

The programs for A202600, there is no canonical definition to state claims against.
-/

/-! ## A202600.P2826549164484156316

`A202601(A374008(n+1))`
-/

namespace A202600.P2826549164484156316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A374008 (n + 1)).toNat

end

end A202600.P2826549164484156316

/-! ## A202600.P17232999635342118314

`A202601(eq[8, A131818(n+1)])`
-/

namespace A202600.P17232999635342118314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202600.P17232999635342118314

/-! ## A202600.P2298515201404042385

`A202601(A166136(n+5)+((-1)^n)^(n+1))`
-/

namespace A202600.P2298515201404042385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A166136 (n + 5) + ((-1) ^ n) ^ (n + 1)).toNat

end

end A202600.P2298515201404042385

/-! ## A202600.P14695482502041731050

`A202601(A055999(n+4))`
-/

namespace A202600.P14695482502041731050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A055999 (n + 4)).toNat

end

end A202600.P14695482502041731050

/-! ## A202600.P14865739711694083202

`A202601(eq[4, A219347(n)])`
-/

namespace A202600.P14865739711694083202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202600.P14865739711694083202

/-!
# A202603: Triangle T(n,k), read by rows, given by (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A202603, there is no canonical definition to state claims against.
-/

/-! ## A202603.P7745984123549122257

`A129267(∑[2*n]%A080036(n))`
-/

namespace A202603.P7745984123549122257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129267 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A202603.P7745984123549122257

/-! ## A202603.P14595230162800108489

`A129267(A061579(n))`
-/

namespace A202603.P14595230162800108489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129267 (A061579 n).toNat

end

end A202603.P14595230162800108489

/-! ## A202603.P3814589618699239772

`A129267(A114327(n)+n)`
-/

namespace A202603.P3814589618699239772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129267 (A114327 n + (n : ℤ)).toNat

end

end A202603.P3814589618699239772

/-! ## A202603.P17475625895806225206

`A129267(∑[A198954(n)-1])`
-/

namespace A202603.P17475625895806225206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202603.P17475625895806225206

/-! ## A202603.P5187918814039038680

`A129267(A038722(n+1)-1)`
-/

namespace A202603.P5187918814039038680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129267 (A038722 (n + 1) - 1).toNat

end

end A202603.P5187918814039038680

/-! ## A202603.P4480147185804448579

`A129267((A003056(n)+1)²-(n+1))`
-/

namespace A202603.P4480147185804448579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129267 ((A003056 n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A202603.P4480147185804448579

/-! ## A202603.P13363796231117143475

`A129267(A023443(A038722(n+1)))`
-/

namespace A202603.P13363796231117143475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129267 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A202603.P13363796231117143475

/-! ## A202603.P12342151536015038255

`A129267(A057944(n)+A025581(n))`
-/

namespace A202603.P12342151536015038255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129267 (A057944 n + A025581 n).toNat

end

end A202603.P12342151536015038255

/-! ## A202603.P16094874713131220944

`A129267(A007401(n+1)-A005408(A002262(n)))`
-/

namespace A202603.P16094874713131220944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129267 (A007401 (n + 1) - A005408 (A002262 n).toNat).toNat

end

end A202603.P16094874713131220944

/-!
# A202604: Clique number for the n-Keller graph.

The programs for A202604, the canonical program `A202604.P14574215225826593071` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202604 has offset 1).

The definition of A202604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202604.P14574215225826593071

`ogf((1+x^2+2x^3+4x^4+4x^5+4x^6+8x^7)/(1-2x))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202604

/-- `ogf((1+x^2+2x^3+4x^4+4x^5+4x^6+8x^7)/(1-2x))` -/
def P14574215225826593071.Spec : Prop :=
  ∀ n, P14574215225826593071.a n = A202604 (n + 1)

theorem P14574215225826593071.correct : P14574215225826593071.Spec := by
  intro n
  simp only [A202604, Nat.add_sub_cancel]

end A202604

/-! ## A202604.P9071799170187000049

`A018284(n+1)+A018315(n+1)-A018280(n+1)`
-/

namespace A202604.P9071799170187000049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018284 (n + 1) + (A018315 (n + 1) - A018280 (n + 1))

end

end A202604.P9071799170187000049

namespace A202604

/-- `A018284(n+1)+A018315(n+1)-A018280(n+1)` -/
def P9071799170187000049.Spec : Prop :=
  ∀ n, P9071799170187000049.a n = A202604 (n + 1)

end A202604

/-! ## A202604.P4271944372125442023

`A223133(2^n)-3`
-/

namespace A202604.P4271944372125442023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223133 (2 ^ n) - 3

end

end A202604.P4271944372125442023

namespace A202604

/-- `A223133(2^n)-3` -/
def P4271944372125442023.Spec : Prop :=
  ∀ n, P4271944372125442023.a n = A202604 (n + 1)

end A202604

/-!
# A202606: a(n) = ceiling(((10^n - 1)^2/9 + 10^n)/18).

The programs for A202606, the canonical program `A202606.P17792342699657972559` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202606 has offset 0).

The definition of A202606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(((10^n-1)²/9+10^n)/18)` (program `A202606.P17792342699657972559`, by `A202606.P17792342699657972559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202606.P17792342699657972559

`ceil(((10^n-1)²/9+10^n)/18)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202606

/-- `ceil(((10^n-1)²/9+10^n)/18)` -/
def P17792342699657972559.Spec : Prop :=
  ∀ n, P17792342699657972559.a n = A202606 n

theorem P17792342699657972559.correct : P17792342699657972559.Spec := by
  intro n
  simp only [A202606]

end A202606

/-! ## A202606.P9815911346601118304

`A186194(n)/2+1`
-/

namespace A202606.P9815911346601118304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186194 n : ℚ) / 2 + 1

end

end A202606.P9815911346601118304

namespace A202606

/-- `A186194(n)/2+1` -/
def P9815911346601118304.Spec : Prop :=
  ∀ n, P9815911346601118304.a n = (A202606 n : ℚ)

end A202606

/-! ## A202606.P13775807335025566929

`(A098406(n)+A002275(n)²)/2`
-/

namespace A202606.P13775807335025566929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098406 n + A002275 n ^ 2 : ℚ) / 2

end

end A202606.P13775807335025566929

namespace A202606

/-- `(A098406(n)+A002275(n)²)/2` -/
def P13775807335025566929.Spec : Prop :=
  ∀ n, P13775807335025566929.a n = (A202606 n : ℚ)

end A202606

/-! ## A202606.P486180065112804659

`floor(C(A098406(n), 2)-A002281(n)/7)`
-/

namespace A202606.P486180065112804659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (A098406 n).toNat 2 : ℚ) - (A002281 n : ℚ) / 7⌋

end

end A202606.P486180065112804659

namespace A202606

/-- `floor(C(A098406(n), 2)-A002281(n)/7)` -/
def P486180065112804659.Spec : Prop :=
  ∀ n, P486180065112804659.a n = A202606 n

end A202606

/-!
# A202607: Numbers n such that 6n and sigma(6n) are both a twin prime average.

The programs for A202607, there is no canonical definition to state claims against.
-/

/-! ## A202607.P8810896262681509900

`A349981(n+1)/6`
-/

namespace A202607.P8810896262681509900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349981 (n + 1) : ℚ) / 6

end

end A202607.P8810896262681509900

/-! ## A202607.P15122254598829353717

`A255591(A349981(n+1))`
-/

namespace A202607.P15122254598829353717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A349981 (n + 1)).toNat

end

end A202607.P15122254598829353717

/-! ## A202607.P6026943240052456253

`∩[A014574(n+1), A072282(n+1)]/6`
-/

namespace A202607.P6026943240052456253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 6

end

end A202607.P6026943240052456253

/-! ## A202607.P7955347720504760026

`∩[A072282(n+1), A053319(n)+a(n-1)]/6` with `a(0)=4`
-/

namespace A202607.P7955347720504760026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A053319 n + f2 (n - 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 6

end

end A202607.P7955347720504760026

/-! ## A202607.P3749181158089683795

`∩[A000203(A001359(n+1)), A072282(n+1)]/6`
-/

namespace A202607.P3749181158089683795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001359 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 6

end

end A202607.P3749181158089683795

/-!
# A202608: Number of (n+2)X(n+2) binary arrays avoiding patterns 001 and 010 in rows and columns.

The programs for A202608, there is no canonical definition to state claims against.
-/

/-! ## A202608.P5034596218287870350

`A202616(∑[4*n]+1)`
-/

namespace A202608.P5034596218287870350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202608.P5034596218287870350

/-! ## A202608.P3749081352212853489

`record[A003982(n)*A202616(n+1)]`
-/

namespace A202608.P3749081352212853489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A202616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202608.P3749081352212853489

/-! ## A202608.P7589570916456780522

`record[gcd(A003987(n), A202616(n+1))]`
-/

namespace A202608.P7589570916456780522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A202616 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202608.P7589570916456780522

/-! ## A202608.P16745035418472619651

`or(A202616(A001844(n)), A291447(n))`
-/

namespace A202608.P16745035418472619651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A202616 (A001844 n).toNat) (A291447 n)

end

end A202608.P16745035418472619651

/-! ## A202608.P3070759843730960309

`A007318(∑[n])*A202616(A001844(n))`
-/

namespace A202608.P3070759843730960309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A202616 (A001844 n).toNat

end

end A202608.P3070759843730960309

/-!
# A202609: Number of (n+2) X 3 binary arrays avoiding patterns 001 and 010 in rows and columns.

The programs for A202609, there is no canonical definition to state claims against.
-/

/-! ## A202609.P18342027277921583354

`A207443(n+3)`
-/

namespace A202609.P18342027277921583354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207443 (n + 3)

end

end A202609.P18342027277921583354

/-! ## A202609.P7687675005012201535

`record[A207443(A183041(n))]`
-/

namespace A202609.P7687675005012201535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207443 (A183041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202609.P7687675005012201535

/-! ## A202609.P16439385603755526708

`record[A207443(A262672(n))]`
-/

namespace A202609.P16439385603755526708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207443 (A262672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202609.P16439385603755526708

/-! ## A202609.P16875838957635995675

`A202616(∑[n]+1)`
-/

namespace A202609.P16875838957635995675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202609.P16875838957635995675

/-! ## A202609.P7448336772751562320

`record[A202616(n+1)/A141690(n)]`
-/

namespace A202609.P7448336772751562320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202616 (n + 1) : ℚ) / (A141690 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202609.P7448336772751562320

/-!
# A202610: Number of (n+2)X4 binary arrays avoiding patterns 001 and 010 in rows and columns.

The programs for A202610, there is no canonical definition to state claims against.
-/

/-! ## A202610.P7780455206953025385

`A202616(∑[n+1]+2)`
-/

namespace A202610.P7780455206953025385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202610.P7780455206953025385

/-! ## A202610.P10798722090329190419

`record[A202616(A133263(A028242(n)))]`
-/

namespace A202610.P10798722090329190419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (A133263 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202610.P10798722090329190419

/-! ## A202610.P2931554093483493423

`A202616(A133263(n+1))+A001489(n)+n`
-/

namespace A202610.P2931554093483493423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (A133263 (n + 1)).toNat + (A001489 n + (n : ℤ))

end

end A202610.P2931554093483493423

/-! ## A202610.P5607502592583883186

`∏{e}[A106856(n+1), #*A202616(A133263(n+1))]`
-/

namespace A202610.P5607502592583883186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A202616 (A133263 (n + 1)).toNat

end

end A202610.P5607502592583883186

/-! ## A202610.P1657146306928122017

`∏{e}[A140000(n+1), #*A202616(A133263(n+1))]`
-/

namespace A202610.P1657146306928122017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A202616 (A133263 (n + 1)).toNat

end

end A202610.P1657146306928122017

/-!
# A202611: Number of (n+2)X5 binary arrays avoiding patterns 001 and 010 in rows and columns.

The programs for A202611, there is no canonical definition to state claims against.
-/

/-! ## A202611.P2802694515074982764

`A202616(∑[n+2]+4)`
-/

namespace A202611.P2802694515074982764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202611.P2802694515074982764

/-! ## A202611.P10895963639001422250

`A202616(A167614(n+1))+A185284(n)`
-/

namespace A202611.P10895963639001422250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (A167614 (n + 1)).toNat + A185284 n

end

end A202611.P10895963639001422250

/-! ## A202611.P11001977994753107525

`lcm(A033999(n), A202616(A167614(n+1)))`
-/

namespace A202611.P11001977994753107525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A202616 (A167614 (n + 1)).toNat)

end

end A202611.P11001977994753107525

/-! ## A202611.P2392710236420988682

`A202616(A167614(n+1))+A072325(n+2)`
-/

namespace A202611.P2392710236420988682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (A167614 (n + 1)).toNat + A072325 (n + 2)

end

end A202611.P2392710236420988682

/-! ## A202611.P18333712894003683473

`A133707(n+1)*A202616(A167614(n+1))`
-/

namespace A202611.P18333712894003683473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A202616 (A167614 (n + 1)).toNat

end

end A202611.P18333712894003683473

/-!
# A202612: Number of (n+2)X6 binary arrays avoiding patterns 001 and 010 in rows and columns.

The programs for A202612, there is no canonical definition to state claims against.
-/

/-! ## A202612.P3191888373853189616

`A202616(A052905(n)+9)`
-/

namespace A202612.P3191888373853189616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (A052905 n + 9).toNat

end

end A202612.P3191888373853189616

/-! ## A202612.P16532710747809896885

`A202616(A055999(n)+10)`
-/

namespace A202612.P16532710747809896885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (A055999 n + 10).toNat

end

end A202612.P16532710747809896885

/-! ## A202612.P12528416705116138773

`A202616(A167614(n+2)+1)`
-/

namespace A202612.P12528416705116138773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (A167614 (n + 2) + 1).toNat

end

end A202612.P12528416705116138773

/-! ## A202612.P7828098728619489288

`A202616(Δ[A264443(n)-n²])`
-/

namespace A202612.P7828098728619489288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (f1 (n + 1) - f1 n).toNat

end

end A202612.P7828098728619489288

/-! ## A202612.P11920991837300832594

`A202616(A167499(n+3)-(n+5))`
-/

namespace A202612.P11920991837300832594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (A167499 (n + 3) - (n + 5 : ℤ)).toNat

end

end A202612.P11920991837300832594

/-!
# A202613: Number of (n+2) X 7 binary arrays avoiding patterns 001 and 010 in rows and columns.

The programs for A202613, there is no canonical definition to state claims against.
-/

/-! ## A202613.P16375189932427369226

`A202616(A167499(n+3))`
-/

namespace A202613.P16375189932427369226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (A167499 (n + 3)).toNat

end

end A202613.P16375189932427369226

/-! ## A202613.P11235275778395643104

`A202616(A051936(n+4)+14)`
-/

namespace A202613.P11235275778395643104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (A051936 (n + 4) + 14).toNat

end

end A202613.P11235275778395643104

/-! ## A202613.P12936372181589581029

`A202616(eq[6, A131818(n+1)])`
-/

namespace A202613.P12936372181589581029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202613.P12936372181589581029

/-! ## A202613.P890286850962016226

`A202616(Δ[A264443(n)])`
-/

namespace A202613.P890286850962016226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (f1 (n + 1) - f1 n).toNat

end

end A202613.P890286850962016226

/-! ## A202613.P14035069082924931007

`A202616(A374005(n+1))`
-/

namespace A202613.P14035069082924931007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (A374005 (n + 1)).toNat

end

end A202613.P14035069082924931007

/-!
# A202614: Number of (n+2)X8 binary arrays avoiding patterns 001 and 010 in rows and columns.

The programs for A202614, there is no canonical definition to state claims against.
-/

/-! ## A202614.P2015239704995785203

`A202616(eq[7, A131818(n+1)])`
-/

namespace A202614.P2015239704995785203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202614.P2015239704995785203

/-! ## A202614.P71518090600817697

`A202616(A374007(n+1))`
-/

namespace A202614.P71518090600817697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (A374007 (n + 1)).toNat

end

end A202614.P71518090600817697

/-! ## A202614.P1674553747158338276

`A202616(eq[5, A193592(n)])`
-/

namespace A202614.P1674553747158338276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202614.P1674553747158338276

/-! ## A202614.P4438036204473415250

`A202616(eq[16, A166065(n)])`
-/

namespace A202614.P4438036204473415250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202614.P4438036204473415250

/-! ## A202614.P3818063238065065782

`A202616(eq[8, A185782(n+1)])`
-/

namespace A202614.P3818063238065065782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202614.P3818063238065065782

/-!
# A202615: Number of (n+2)X9 binary arrays avoiding patterns 001 and 010 in rows and columns.

The programs for A202615, there is no canonical definition to state claims against.
-/

/-! ## A202615.P8010033214492363988

`A202616(eq[11, A066657(n)])`
-/

namespace A202615.P8010033214492363988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202615.P8010033214492363988

/-! ## A202615.P13269877528484014720

`A202616(eq[8, A131818(n+1)])`
-/

namespace A202615.P13269877528484014720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202615.P13269877528484014720

/-! ## A202615.P9929135988706032047

`A202616(A374008(n+1))`
-/

namespace A202615.P9929135988706032047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (A374008 (n + 1)).toNat

end

end A202615.P9929135988706032047

/-! ## A202615.P1460461884721373463

`A202616(A055999(n+4))`
-/

namespace A202615.P1460461884721373463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (A055999 (n + 4)).toNat

end

end A202615.P1460461884721373463

/-! ## A202615.P105888112282462829

`A202616(eq[6, A193592(n)])`
-/

namespace A202615.P105888112282462829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202615.P105888112282462829

/-!
# A202617: E.g.f. satisfies: A(x) = exp( x*(1 + A(x)^2)/2 ).

The programs for A202617, there is no canonical definition to state claims against.
-/

/-! ## A202617.P15896681607660389843

`A218303(n)/A011782(n)`
-/

namespace A202617.P15896681607660389843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218303 n : ℚ) / (A011782 n : ℚ)

end

end A202617.P15896681607660389843

/-! ## A202617.P16211562267239202164

`A218303(n)/∑[A034008(n)]`
-/

namespace A202617.P16211562267239202164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218303 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A202617.P16211562267239202164

/-! ## A202617.P14110964453314587535

`lcm(A000079(n), A218303(n))/A000079(n)`
-/

namespace A202617.P14110964453314587535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A218303 n) : ℚ) / (A000079 n : ℚ)

end

end A202617.P14110964453314587535

/-! ## A202617.P4424709947526661035

`A218303(n)/A000010(A000079(n))`
-/

namespace A202617.P4424709947526661035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218303 n : ℚ) / (A000010 (A000079 n).toNat : ℚ)

end

end A202617.P4424709947526661035

/-! ## A202617.P12414257396468789914

`A218303(n)/A000010(Δ[A000225(n)])`
-/

namespace A202617.P12414257396468789914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218303 n : ℚ) / (A000010 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A202617.P12414257396468789914

/-!
# A202619: Denominators of coefficients in Taylor series expansion of log(cotan(x)*log(x+1)).

The programs for A202619, there is no canonical definition to state claims against.
-/

/-! ## A202619.P14697602899751881555

`A010554(C(A231575(n+1), 3))`
-/

namespace A202619.P14697602899751881555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (Nat.choose (A231575 (n + 1)).toNat 3)

end

end A202619.P14697602899751881555

/-! ## A202619.P6065779077521827005

`A000010(∑[∑{e}[n+1, #]+1]*A324004(n+4))`
-/

namespace A202619.P6065779077521827005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A324004 (n + 4)).toNat

end

end A202619.P6065779077521827005

/-!
# A202620: Denominators of coefficients in Taylor series expansion of log(cotan(x)*arcsin(x)).

The programs for A202620, there is no canonical definition to state claims against.
-/

/-! ## A202620.P3834581913238140684

`A083533(A004988(n))*A202621(n)`
-/

namespace A202620.P3834581913238140684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083533 (A004988 n).toNat * A202621 n

end

end A202620.P3834581913238140684

/-!
# A202621: Denominators of coefficients in Taylor series expansion of log(cotan(x)*arctan(x)).

The programs for A202621, there is no canonical definition to state claims against.
-/

/-! ## A202621.P13748493739921629185

`A102741(n+1)%A052480(n)!`
-/

namespace A202621.P13748493739921629185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102741 (n + 1)) (Nat.factorial (A052480 n).toNat : ℤ)

end

end A202621.P13748493739921629185

/-!
# A202626: Order of Fibonacci group F(n,4) (or 0 if the group is infinite).

The programs for A202626, there is no canonical definition to state claims against.
-/

/-! ## A202626.P4433591945170353149

`(n+1)^(a(n-1)+1)-1` with `a(0)=0, a(1)=5, a(2)=0`
-/

namespace A202626.P4433591945170353149
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 5, 0] fun n a =>
  (n + 1 : ℝ) ^ (a (n - 1) + 1) - 1

end

end A202626.P4433591945170353149

/-!
# A202628: a(n) = (4*n+1)*(2^(4*n+1)+(-1)^n*2^(2*n+1)+1).

The programs for A202628, the canonical program `A202628.P5241966103072688738` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202628 has offset 0).

The definition of A202628 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)*(2^(4*n+1)+(-1)^n*2^(2*n+1)+1)` (program `A202628.P5241966103072688738`, by `A202628.P5241966103072688738.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202628.P5241966103072688738

`(4*n+1)*(2^(4*n+1)+(-1)^n*2^(2*n+1)+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202628

/-- `(4*n+1)*(2^(4*n+1)+(-1)^n*2^(2*n+1)+1)` -/
def P5241966103072688738.Spec : Prop :=
  ∀ n, P5241966103072688738.a n = A202628 n

theorem P5241966103072688738.correct : P5241966103072688738.Spec := by
  intro n
  simp only [A202628]

end A202628

/-! ## A202628.P10525536418254243261

`record[A202626(or(2, n))]`
-/

namespace A202628.P10525536418254243261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202626 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202628.P10525536418254243261

namespace A202628

/-- `record[A202626(or(2, n))]` -/
def P10525536418254243261.Spec : Prop :=
  ∀ n, P10525536418254243261.a n = A202628 n

end A202628

/-! ## A202628.P10961063663671678745

`A202626(4*n+2)`
-/

namespace A202628.P10961063663671678745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202626 (4 * n + 2)

end

end A202628.P10961063663671678745

namespace A202628

/-- `A202626(4*n+2)` -/
def P10961063663671678745.Spec : Prop :=
  ∀ n, P10961063663671678745.a n = A202628 n

end A202628

/-! ## A202628.P1588987653233879873

`record[A202626(A173773(n))]`
-/

namespace A202628.P1588987653233879873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202626 (A173773 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202628.P1588987653233879873

namespace A202628

/-- `record[A202626(A173773(n))]` -/
def P1588987653233879873.Spec : Prop :=
  ∀ n, P1588987653233879873.a n = A202628 n

end A202628

/-! ## A202628.P1779970393272163942

`record[A202626(Δ[A002378(n)])]`
-/

namespace A202628.P1779970393272163942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202626 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202628.P1779970393272163942

namespace A202628

/-- `record[A202626(Δ[A002378(n)])]` -/
def P1779970393272163942.Spec : Prop :=
  ∀ n, P1779970393272163942.a n = A202628 n

end A202628

/-!
# A202631: Number of n X n 0..3 arrays with adjacent row and column sums unequal.

The programs for A202631, there is no canonical definition to state claims against.
-/

/-! ## A202631.P9739968952401904930

`A202651(∑[n+3]+1)`
-/

namespace A202631.P9739968952401904930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202651 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202631.P9739968952401904930

/-!
# A202632: Number of nX2 0..3 arrays with adjacent row and column sums unequal.

The programs for A202632, there is no canonical definition to state claims against.
-/

/-! ## A202632.P12923697668912393288

`A202636(∑[n+1]+2)`
-/

namespace A202632.P12923697668912393288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202636 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202632.P12923697668912393288

/-! ## A202632.P18077653967789013824

`record[A202636(n+3)/A135950(n)]`
-/

namespace A202632.P18077653967789013824
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202636 (n + 3) : ℚ) / (A135950 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202632.P18077653967789013824

/-! ## A202632.P14268392897459782055

`record[gcd(A163351(n), A202636(n+2))]`
-/

namespace A202632.P14268392897459782055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A163351 n) (A202636 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202632.P14268392897459782055

/-! ## A202632.P16169042335209177909

`record[A202636(n+3)/A075498(n+1)]`
-/

namespace A202632.P16169042335209177909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202636 (n + 3) : ℚ) / (A075498 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202632.P16169042335209177909

/-! ## A202632.P16857833838245926207

`record[A202636(n+3)/A202677(n+1)]`
-/

namespace A202632.P16857833838245926207
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202636 (n + 3) : ℚ) / (A202677 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202632.P16857833838245926207

/-!
# A202633: Number of nX3 0..3 arrays with adjacent row and column sums unequal.

The programs for A202633, there is no canonical definition to state claims against.
-/

/-! ## A202633.P8421059387131737825

`A202636(∑[n+2]+4)`
-/

namespace A202633.P8421059387131737825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202636 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202633.P8421059387131737825

/-! ## A202633.P16637492257582661385

`lcm(2, A202636(A167614(n+1)))`
-/

namespace A202633.P16637492257582661385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202636 (A167614 (n + 1)).toNat)

end

end A202633.P16637492257582661385

/-! ## A202633.P15155632386043611998

`A202636(A167614(n+1))+A011737(n)`
-/

namespace A202633.P15155632386043611998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202636 (A167614 (n + 1)).toNat + A011737 n

end

end A202633.P15155632386043611998

/-! ## A202633.P6500923456369467087

`A202636(A167614(n+1))+A025466(n)`
-/

namespace A202633.P6500923456369467087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202636 (A167614 (n + 1)).toNat + A025466 n

end

end A202633.P6500923456369467087

/-!
# A202634: Number of nX4 0..3 arrays with adjacent row and column sums unequal.

The programs for A202634, there is no canonical definition to state claims against.
-/

/-! ## A202634.P8550634754086514637

`A202636(A167614(n+2)+1)`
-/

namespace A202634.P8550634754086514637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202636 (A167614 (n + 2) + 1).toNat

end

end A202634.P8550634754086514637

/-! ## A202634.P362656991441223361

`A202636(A020752(n+1))`
-/

namespace A202634.P362656991441223361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202636 (A020752 (n + 1)).toNat

end

end A202634.P362656991441223361

/-!
# A202635: Number of n X 5 0..3 arrays with adjacent row and column sums unequal.

The programs for A202635, there is no canonical definition to state claims against.
-/

/-! ## A202635.P15735364107229836356

`A202636(A374005(n+1))`
-/

namespace A202635.P15735364107229836356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202636 (A374005 (n + 1)).toNat

end

end A202635.P15735364107229836356

/-!
# A202636: T(n,k)=Number of nXk 0..3 arrays with adjacent row and column sums unequal.

The programs for A202636, there is no canonical definition to state claims against.
-/

/-! ## A202636.P5384575380194617720

`A209019(n+1)+A065199(A022173(n))`
-/

namespace A202636.P5384575380194617720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 (n + 1) + A065199 (A022173 n).toNat

end

end A202636.P5384575380194617720

/-! ## A202636.P18184688609277814883

`xor(A209019(n+1), A242953(A174449(n)))`
-/

namespace A202636.P18184688609277814883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A209019 (n + 1)) (A242953 (A174449 n).toNat)

end

end A202636.P18184688609277814883

/-!
# A202637: x-values in the solution to x^2 - 7*y^2 = -3.

The programs for A202637, the canonical program `A202637.P2116359330053341843` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202637 has offset 1).

The definition of A202637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202637.P2116359330053341843

`A041008(2*n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A202637

/-- `A041008(2*n)` -/
def P2116359330053341843.Spec : Prop :=
  ∀ n, P2116359330053341843.a n = A202637 (n + 1)

theorem P2116359330053341843.correct : P2116359330053341843.Spec := by
  intro n
  simp only [A202637, Nat.add_sub_cancel]

end A202637

/-! ## A202637.P7377927188080091722

`record[A041008(and(n, n+1))]`
-/

namespace A202637.P7377927188080091722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041008 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202637.P7377927188080091722

namespace A202637

/-- `record[A041008(and(n, n+1))]` -/
def P7377927188080091722.Spec : Prop :=
  ∀ n, P7377927188080091722.a n = A202637 (n + 1)

end A202637

/-! ## A202637.P4648850350296403000

`record[A041008(n+1-gcd(4, n+1))]`
-/

namespace A202637.P4648850350296403000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041008 (n + 1 - Nat.gcd 4 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202637.P4648850350296403000

namespace A202637

/-- `record[A041008(n+1-gcd(4, n+1))]` -/
def P4648850350296403000.Spec : Prop :=
  ∀ n, P4648850350296403000.a n = A202637 (n + 1)

end A202637

/-! ## A202637.P669949198695267905

`record[A041008(A131380(n))]`
-/

namespace A202637.P669949198695267905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041008 (A131380 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202637.P669949198695267905

namespace A202637

/-- `record[A041008(A131380(n))]` -/
def P669949198695267905.Spec : Prop :=
  ∀ n, P669949198695267905.a n = A202637 (n + 1)

end A202637

/-! ## A202637.P17774289969382957648

`record[A041008(n%A109613(n))]`
-/

namespace A202637.P17774289969382957648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041008 (Int.tmod (n : ℤ) (A109613 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202637.P17774289969382957648

namespace A202637

/-- `record[A041008(n%A109613(n))]` -/
def P17774289969382957648.Spec : Prop :=
  ∀ n, P17774289969382957648.a n = A202637 (n + 1)

end A202637

/-! ## A202637.P5648068603574313569

`record[A041008(n)/A342241(n+1)]`
-/

namespace A202637.P5648068603574313569
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041008 n : ℚ) / (A342241 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202637.P5648068603574313569

namespace A202637

/-- `record[A041008(n)/A342241(n+1)]` -/
def P5648068603574313569.Spec : Prop :=
  ∀ n, P5648068603574313569.a n = (A202637 (n + 1) : ℚ)

end A202637

/-! ## A202637.P5783032172448516116

`A259597(2*n+1)-A259597(2*n)`
-/

namespace A202637.P5783032172448516116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259597 (2 * n + 1) - A259597 (2 * n)

end

end A202637.P5783032172448516116

namespace A202637

/-- `A259597(2*n+1)-A259597(2*n)` -/
def P5783032172448516116.Spec : Prop :=
  ∀ n, P5783032172448516116.a n = A202637 (n + 1)

end A202637

/-! ## A202637.P2304322881743687380

`A178974(Δ[A172328(n)])+A041008(n+n)`
-/

namespace A202637.P2304322881743687380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178974 (f1 (n + 1) - f1 n).toNat + A041008 (n + n)

end

end A202637.P2304322881743687380

namespace A202637

/-- `A178974(Δ[A172328(n)])+A041008(n+n)` -/
def P2304322881743687380.Spec : Prop :=
  ∀ n, P2304322881743687380.a n = A202637 (n + 1)

end A202637

/-!
# A202638: y-values in the solution to x^2 - 7*y^2 = -3.

The programs for A202638, the canonical program `A202638.P11323543077184573595` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202638 has offset 1).

The definition of A202638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202638.P11323543077184573595

`Δ[16*a(n-2)-a(n-4)]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=17, a(4)=48`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202638

/-- `Δ[16*a(n-2)-a(n-4)]` -/
def P11323543077184573595.Spec : Prop :=
  ∀ n, P11323543077184573595.a n = A202638 (n + 1)

theorem P11323543077184573595.correct : P11323543077184573595.Spec := by
  intro n
  simp only [A202638, Nat.add_sub_cancel]

end A202638

/-! ## A202638.P11879608841594624457

`A041009(2*n)`
-/

namespace A202638.P11879608841594624457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 (2 * n)

end

end A202638.P11879608841594624457

namespace A202638

/-- `A041009(2*n)` -/
def P11879608841594624457.Spec : Prop :=
  ∀ n, P11879608841594624457.a n = A202638 (n + 1)

end A202638

/-! ## A202638.P10317030116866203334

`A195878(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A202638.P10317030116866203334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A195878 n + a (n - 2)

end

end A202638.P10317030116866203334

namespace A202638

/-- `A195878(n)+a(n-2)` -/
def P10317030116866203334.Spec : Prop :=
  ∀ n, P10317030116866203334.a n = A202638 (n + 1)

end A202638

/-! ## A202638.P9857531270281926915

`record[A041009(C(n, a(n-1))+1)]` with `a(0)=1`
-/

namespace A202638.P9857531270281926915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A041009 (Nat.choose n (f1 (n - 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202638.P9857531270281926915

namespace A202638

/-- `record[A041009(C(n, a(n-1))+1)]` -/
def P9857531270281926915.Spec : Prop :=
  ∀ n, P9857531270281926915.a n = A202638 (n + 1)

end A202638

/-! ## A202638.P15948661895890655466

`record[A041009(A014681(n))]`
-/

namespace A202638.P15948661895890655466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202638.P15948661895890655466

namespace A202638

/-- `record[A041009(A014681(n))]` -/
def P15948661895890655466.Spec : Prop :=
  ∀ n, P15948661895890655466.a n = A202638 (n + 1)

end A202638

/-! ## A202638.P15035441997986763487

`record[A041009(A237420(n))]`
-/

namespace A202638.P15035441997986763487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202638.P15035441997986763487

namespace A202638

/-- `record[A041009(A237420(n))]` -/
def P15035441997986763487.Spec : Prop :=
  ∀ n, P15035441997986763487.a n = A202638 (n + 1)

end A202638

/-! ## A202638.P7639519025440167034

`record[A041009(n)/A033999(n)]`
-/

namespace A202638.P7639519025440167034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041009 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202638.P7639519025440167034

namespace A202638

/-- `record[A041009(n)/A033999(n)]` -/
def P7639519025440167034.Spec : Prop :=
  ∀ n, P7639519025440167034.a n = (A202638 (n + 1) : ℚ)

end A202638

/-! ## A202638.P16830634321280331186

`record[A041009(n%A109613(n))]`
-/

namespace A202638.P16830634321280331186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 (Int.tmod (n : ℤ) (A109613 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202638.P16830634321280331186

namespace A202638

/-- `record[A041009(n%A109613(n))]` -/
def P16830634321280331186.Spec : Prop :=
  ∀ n, P16830634321280331186.a n = A202638 (n + 1)

end A202638

/-! ## A202638.P7006947663672067744

`record[A041009(n)/A067513(n+1)]`
-/

namespace A202638.P7006947663672067744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041009 n : ℚ) / (A067513 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202638.P7006947663672067744

namespace A202638

/-- `record[A041009(n)/A067513(n+1)]` -/
def P7006947663672067744.Spec : Prop :=
  ∀ n, P7006947663672067744.a n = (A202638 (n + 1) : ℚ)

end A202638

/-! ## A202638.P17918866124952870017

`record[A041009(n)/(A004442(n)-n)]`
-/

namespace A202638.P17918866124952870017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041009 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202638.P17918866124952870017

namespace A202638

/-- `record[A041009(n)/(A004442(n)-n)]` -/
def P17918866124952870017.Spec : Prop :=
  ∀ n, P17918866124952870017.a n = (A202638 (n + 1) : ℚ)

end A202638

/-! ## A202638.P12825579494292189130

`A259596(2*n+1)-A259596(2*n)`
-/

namespace A202638.P12825579494292189130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259596 (2 * n + 1) - A259596 (2 * n)

end

end A202638.P12825579494292189130

namespace A202638

/-- `A259596(2*n+1)-A259596(2*n)` -/
def P12825579494292189130.Spec : Prop :=
  ∀ n, P12825579494292189130.a n = A202638 (n + 1)

end A202638

/-!
# A202639: Number of (n+2) X (n+2) binary arrays avoiding patterns 000 and 111 in rows, columns and nw-to-se diagonals.

The programs for A202639, there is no canonical definition to state claims against.
-/

/-! ## A202639.P11479676221712914657

`2*A204191(n+3)`
-/

namespace A202639.P11479676221712914657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204191 (n + 3)

end

end A202639.P11479676221712914657

/-! ## A202639.P3063272959726484860

`A202647(∑[4*n]+1)`
-/

namespace A202639.P3063272959726484860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202639.P3063272959726484860

/-! ## A202639.P17015855464422684547

`lcm(2, A202647(A001844(n)))`
-/

namespace A202639.P17015855464422684547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202647 (A001844 n).toNat)

end

end A202639.P17015855464422684547

/-! ## A202639.P3989166503852423828

`record[gcd(A114327(n), A202647(n+1))]`
-/

namespace A202639.P3989166503852423828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A202647 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202639.P3989166503852423828

/-! ## A202639.P9665113949170359185

`A256756(n)+A202647(A001844(n))`
-/

namespace A202639.P9665113949170359185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n + A202647 (A001844 n).toNat

end

end A202639.P9665113949170359185

/-!
# A202640: Number of (n+2) X 3 binary arrays avoiding patterns 000 and 111 in rows, columns and nw-to-se diagonals.

The programs for A202640, there is no canonical definition to state claims against.
-/

/-! ## A202640.P392992677102445515

`2*A204192(n+3)`
-/

namespace A202640.P392992677102445515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204192 (n + 3)

end

end A202640.P392992677102445515

/-! ## A202640.P15600277973988586303

`A204192(n+3)/2^A008683(A151800(n))`
-/

namespace A202640.P15600277973988586303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204192 (n + 3) : ℚ) / (2 : ℚ) ^ (A008683 (A151800 n).toNat : ℤ)

end

end A202640.P15600277973988586303

/-! ## A202640.P5332232796312526926

`A204192(n+3)+or(A000007(n), A204192(n+3))`
-/

namespace A202640.P5332232796312526926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204192 (n + 3) + Int.lor (A000007 n) (A204192 (n + 3))

end

end A202640.P5332232796312526926

/-! ## A202640.P17709979665773426793

`A204192(n+3)-A204192(n+3)/A057428(A005893(n))`
-/

namespace A202640.P17709979665773426793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204192 (n + 3) : ℚ) - (A204192 (n + 3) : ℚ) / (A057428 (A005893 n).toNat : ℚ)

end

end A202640.P17709979665773426793

/-! ## A202640.P13474643089079478846

`A202647(∑[n]+1)`
-/

namespace A202640.P13474643089079478846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202640.P13474643089079478846

/-!
# A202641: Number of (n+2)X4 binary arrays avoiding patterns 000 and 111 in rows, columns and nw-to-se diagonals.

The programs for A202641, there is no canonical definition to state claims against.
-/

/-! ## A202641.P1907666033959055212

`2*A204193(n+3)`
-/

namespace A202641.P1907666033959055212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204193 (n + 3)

end

end A202641.P1907666033959055212

/-! ## A202641.P910979668051294527

`A204193(A028310(n+3))+A204193(n+3)`
-/

namespace A202641.P910979668051294527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204193 (A028310 (n + 3)).toNat + A204193 (n + 3)

end

end A202641.P910979668051294527

/-! ## A202641.P11736119806692058981

`A204193(n+3)+A204193(n+3)+A000007(n+1)`
-/

namespace A202641.P11736119806692058981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204193 (n + 3) + (A204193 (n + 3) + A000007 (n + 1))

end

end A202641.P11736119806692058981

/-! ## A202641.P10154918264400813287

`A204193(n+3)+A204193(n+3)%A204193(n+4)`
-/

namespace A202641.P10154918264400813287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204193 (n + 3) + Int.tmod (A204193 (n + 3)) (A204193 (n + 4))

end

end A202641.P10154918264400813287

/-! ## A202641.P8619252034689105109

`A204193(n+3)+A204193(n+3)/A007318(C(2, n+2))`
-/

namespace A202641.P8619252034689105109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204193 (n + 3) : ℚ) + (A204193 (n + 3) : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A202641.P8619252034689105109

/-!
# A202642: Number of (n+2)X5 binary arrays avoiding patterns 000 and 111 in rows, columns and nw-to-se diagonals.

The programs for A202642, there is no canonical definition to state claims against.
-/

/-! ## A202642.P7695124300598356987

`2*A204194(n+3)`
-/

namespace A202642.P7695124300598356987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204194 (n + 3)

end

end A202642.P7695124300598356987

/-! ## A202642.P12446055923041914841

`A202647(∑[n+2]+4)`
-/

namespace A202642.P12446055923041914841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202642.P12446055923041914841

/-! ## A202642.P5892715859285053528

`lcm(2, A202647(A167614(n+1)))`
-/

namespace A202642.P5892715859285053528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202647 (A167614 (n + 1)).toNat)

end

end A202642.P5892715859285053528

/-! ## A202642.P13740070838412293917

`A202647(A167614(n+1))%A023044(n)`
-/

namespace A202642.P13740070838412293917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202647 (A167614 (n + 1)).toNat) (A023044 n)

end

end A202642.P13740070838412293917

/-! ## A202642.P10784769768387422572

`or(A000038(n), A202647(A167614(n+1)))`
-/

namespace A202642.P10784769768387422572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A202647 (A167614 (n + 1)).toNat)

end

end A202642.P10784769768387422572

/-!
# A202643: Number of (n+2)X6 binary arrays avoiding patterns 000 and 111 in rows, columns and nw-to-se diagonals.

The programs for A202643, there is no canonical definition to state claims against.
-/

/-! ## A202643.P16696900425377301996

`2*A204195(n+3)`
-/

namespace A202643.P16696900425377301996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204195 (n + 3)

end

end A202643.P16696900425377301996

/-! ## A202643.P1359927164586046168

`A204195(A000027(n+1)+2)+A204195(n+3)`
-/

namespace A202643.P1359927164586046168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204195 (A000027 (n + 1) + 2).toNat + A204195 (n + 3)

end

end A202643.P1359927164586046168

/-! ## A202643.P11957260328236004108

`A204195(n+3)+A204195(n+3)+A025462(A025462(n))`
-/

namespace A202643.P11957260328236004108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204195 (n + 3) + (A204195 (n + 3) + A025462 (A025462 n).toNat)

end

end A202643.P11957260328236004108

/-! ## A202643.P18156303853424305310

`A204195(n+3)+A204195(n+3)+A000038(A327640(n))`
-/

namespace A202643.P18156303853424305310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204195 (n + 3) + (A204195 (n + 3) + A000038 (A327640 n).toNat)

end

end A202643.P18156303853424305310

/-! ## A202643.P548609043988173693

`A202647(A052905(n)+9)`
-/

namespace A202643.P548609043988173693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (A052905 n + 9).toNat

end

end A202643.P548609043988173693

/-!
# A202644: Number of (n+2)X7 binary arrays avoiding patterns 000 and 111 in rows, columns and nw-to-se diagonals.

The programs for A202644, there is no canonical definition to state claims against.
-/

/-! ## A202644.P13489862248801108089

`2*A204196(n+3)`
-/

namespace A202644.P13489862248801108089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204196 (n + 3)

end

end A202644.P13489862248801108089

/-! ## A202644.P6727317259907228688

`A202647(eq[7, A066657(n)])`
-/

namespace A202644.P6727317259907228688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202644.P6727317259907228688

/-! ## A202644.P14818595364887851061

`A202647(eq[6, A131818(n+1)])`
-/

namespace A202644.P14818595364887851061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202644.P14818595364887851061

/-! ## A202644.P14471870338873315137

`A202647(Δ[A264443(n)])`
-/

namespace A202644.P14471870338873315137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (f1 (n + 1) - f1 n).toNat

end

end A202644.P14471870338873315137

/-! ## A202644.P1935195444293221249

`A202647(A374005(n+1))`
-/

namespace A202644.P1935195444293221249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (A374005 (n + 1)).toNat

end

end A202644.P1935195444293221249

/-!
# A202645: Number of (n+2)X8 binary arrays avoiding patterns 000 and 111 in rows, columns and nw-to-se diagonals.

The programs for A202645, there is no canonical definition to state claims against.
-/

/-! ## A202645.P3719559745341506641

`A202647(A253145(n+4)+6)`
-/

namespace A202645.P3719559745341506641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (A253145 (n + 4) + 6).toNat

end

end A202645.P3719559745341506641

/-! ## A202645.P16630348136019170437

`A202647(A046691(n+3)+10)`
-/

namespace A202645.P16630348136019170437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (A046691 (n + 3) + 10).toNat

end

end A202645.P16630348136019170437

/-! ## A202645.P2377743182026380437

`A202647(eq[7, A131818(n+1)])`
-/

namespace A202645.P2377743182026380437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202645.P2377743182026380437

/-! ## A202645.P6643119502443515900

`A202647(A374007(n+1))`
-/

namespace A202645.P6643119502443515900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (A374007 (n + 1)).toNat

end

end A202645.P6643119502443515900

/-! ## A202645.P13494201975938536163

`A202647(A052905(n+3))`
-/

namespace A202645.P13494201975938536163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (A052905 (n + 3)).toNat

end

end A202645.P13494201975938536163

/-!
# A202646: Number of (n+2)X9 binary arrays avoiding patterns 000 and 111 in rows, columns and nw-to-se diagonals.

The programs for A202646, there is no canonical definition to state claims against.
-/

/-! ## A202646.P2414557298863839315

`A202647(eq[11, A066657(n)])`
-/

namespace A202646.P2414557298863839315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202646.P2414557298863839315

/-! ## A202646.P6421922133006694438

`A202647(eq[8, A131818(n+1)])`
-/

namespace A202646.P6421922133006694438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202646.P6421922133006694438

/-! ## A202646.P5968301753331452133

`A202647(A374008(n+1))`
-/

namespace A202646.P5968301753331452133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (A374008 (n + 1)).toNat

end

end A202646.P5968301753331452133

/-! ## A202646.P18107050518801322869

`A202647(A055999(n+4))`
-/

namespace A202646.P18107050518801322869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (A055999 (n + 4)).toNat

end

end A202646.P18107050518801322869

/-! ## A202646.P11211668902849638570

`A202647(eq[6, A193592(n)])`
-/

namespace A202646.P11211668902849638570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202646.P11211668902849638570

/-!
# A202648: Number of n X n 0..1 arrays with no row or column sum equal to the previous.

The programs for A202648, there is no canonical definition to state claims against.
-/

/-! ## A202648.P12780405570102056343

`A203610(∑[4*n]+1)`
-/

namespace A202648.P12780405570102056343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202648.P12780405570102056343

/-! ## A202648.P9681891870308839921

`and(-1, A203610(n²+(n+1)²))`
-/

namespace A202648.P9681891870308839921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A203610 (n ^ 2 + (n + 1) ^ 2))

end

end A202648.P9681891870308839921

/-! ## A202648.P16447057681498634163

`lcm(2, A203610(A001844(n)))`
-/

namespace A202648.P16447057681498634163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203610 (A001844 n).toNat)

end

end A202648.P16447057681498634163

/-!
# A202649: Number of n X n 0..2 arrays with no row or column sum equal to the previous.

The programs for A202649, there is no canonical definition to state claims against.
-/

/-! ## A202649.P15821288638422798479

`A202651(∑[n+2])`
-/

namespace A202649.P15821288638422798479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202651 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202649.P15821288638422798479

/-!
# A202651: Table read by downward antidiagonals: T(n,k) is the number of n X n 0..k arrays with no row or column sum equal to the previous one.

The programs for A202651, there is no canonical definition to state claims against.
-/

/-! ## A202651.P16222841857324583020

`A296339(3*A270919(n))`
-/

namespace A202651.P16222841857324583020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (3 * A270919 n).toNat

end

end A202651.P16222841857324583020

/-! ## A202651.P15520021451510532212

`A267423(n+2)+A002487(A357931(2*(n+2)))`
-/

namespace A202651.P15520021451510532212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267423 (n + 2) + A002487 (A357931 (2 * (n + 2))).toNat

end

end A202651.P15520021451510532212

/-!
# A202652: Number of 3X3 0..n arrays with no row or column sum equal to the previous.

The programs for A202652, there is no canonical definition to state claims against.
-/

/-! ## A202652.P2159874383859900332

`A202651(∑[n+2]+4)`
-/

namespace A202652.P2159874383859900332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202651 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202652.P2159874383859900332

/-!
# A202654: Number of ways to place 3 nonattacking semi-queens on an n X n board.

The programs for A202654, the canonical program `A202654.P8314580786660715639` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202654 has offset 1).

The definition of A202654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202654.P8314580786660715639

`1/6*(n-1)*n*(n+1)*((n+1)^3-5*(n+1)²+8*(n+1)-3)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202654

/-- `1/6*(n-1)*n*(n+1)*((n+1)^3-5*(n+1)²+8*(n+1)-3)` -/
def P8314580786660715639.Spec : Prop :=
  ∀ n, P8314580786660715639.a n = (A202654 (n + 1) : ℚ)

end A202654

/-! ## A202654.P15350637918979651637

`(C(n^3+1, 2)-∑[n]-(n^5-n^3))/3`
-/

namespace A202654.P15350637918979651637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n ^ 3 + 1) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n ^ 5 : ℤ) - (n ^ 3 : ℤ)) : ℚ) / 3

end

end A202654.P15350637918979651637

namespace A202654

/-- `(C(n^3+1, 2)-∑[n]-(n^5-n^3))/3` -/
def P15350637918979651637.Spec : Prop :=
  ∀ n, P15350637918979651637.a n = (A202654 (n + 1) : ℚ)

end A202654

/-! ## A202654.P8451733507361891419

`n²*∑[4*C(n, 3)+n]-∑[C(2*n, 3)+n²]`
-/

namespace A202654.P8451733507361891419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A202654.P8451733507361891419

namespace A202654

/-- `n²*∑[4*C(n, 3)+n]-∑[C(2*n, 3)+n²]` -/
def P8451733507361891419.Spec : Prop :=
  ∀ n, P8451733507361891419.a n = A202654 (n + 1)

end A202654

/-! ## A202654.P7234952208500428521

`(A085742(n)-A133754(n))/3`
-/

namespace A202654.P7234952208500428521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085742 n - A133754 n : ℚ) / 3

end

end A202654.P7234952208500428521

namespace A202654

/-- `(A085742(n)-A133754(n))/3` -/
def P7234952208500428521.Spec : Prop :=
  ∀ n, P7234952208500428521.a n = (A202654 (n + 1) : ℚ)

end A202654

/-! ## A202654.P12976138313723848960

`n²*A006484(n)-A071238(n)`
-/

namespace A202654.P12976138313723848960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A006484 n - A071238 n

end

end A202654.P12976138313723848960

namespace A202654

/-- `n²*A006484(n)-A071238(n)` -/
def P12976138313723848960.Spec : Prop :=
  ∀ n, P12976138313723848960.a n = A202654 (n + 1)

end A202654

/-!
# A202655: Number of ways to place 4 nonattacking semi-queens on an n X n board.

The programs for A202655, there is no canonical definition to state claims against.
-/

/-! ## A202655.P11914007582328251645

`A025444(∏[n+3]+1)`
-/

namespace A202655.P11914007582328251645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (∏ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202655.P11914007582328251645

/-!
# A202656: Number of ways to place 5 nonattacking semi-queens on an n X n board.

The programs for A202656, there is no canonical definition to state claims against.
-/

/-! ## A202656.P12266269685353031223

`∑{d}[∑[2^n], A326685(#)]`
-/

namespace A202656.P12266269685353031223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326685 d

end

end A202656.P12266269685353031223

/-! ## A202656.P10072191033566486473

`A123108(47^∑[floor(n/4)])`
-/

namespace A202656.P10072191033566486473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.roundAway ((47 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A202656.P10072191033566486473

/-!
# A202657: Number of ways to place 6 nonattacking semi-queens on an n X n board.

The programs for A202657, there is no canonical definition to state claims against.
-/

/-! ## A202657.P551481070859912772

`A057356(A057771(n))*A182143(n)`
-/

namespace A202657.P551481070859912772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A057771 n).toNat * A182143 n

end

end A202657.P551481070859912772

/-! ## A202657.P17260072339166146444

`A088001(A350489(n)+A233267(2*(n+1)))`
-/

namespace A202657.P17260072339166146444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088001 (A350489 n + A233267 (2 * (n + 1))).toNat

end

end A202657.P17260072339166146444

/-!
# A202658: Number of -2..2 arrays of n elements with first through fourth differences also in -2..2.

The programs for A202658, there is no canonical definition to state claims against.
-/

/-! ## A202658.P6765580534328504233

`A202664(∑[n+2])`
-/

namespace A202658.P6765580534328504233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202658.P6765580534328504233

/-! ## A202658.P4074328374871596942

`record[A202664(A000096(A101504(n)))]`
-/

namespace A202658.P4074328374871596942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000096 (A101504 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202658.P4074328374871596942

/-! ## A202658.P5369543145754241276

`record[A202664(A000096(A344180(n)))]`
-/

namespace A202658.P5369543145754241276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202658.P5369543145754241276

/-! ## A202658.P4077173406015059577

`record[A202664(A000096(A003602(n+1)))]`
-/

namespace A202658.P4077173406015059577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202658.P4077173406015059577

/-! ## A202658.P15349775291009244191

`record[A202664(A000096(A003963(n+1)))]`
-/

namespace A202658.P15349775291009244191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202658.P15349775291009244191

/-! ## A202658.P13423270380207442970

`record[A202664(A000096(A004736(n+1)))]`
-/

namespace A202658.P13423270380207442970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202658.P13423270380207442970

/-! ## A202658.P16484802244058133889

`record[A202664(A000096(A122197(n+1)))]`
-/

namespace A202658.P16484802244058133889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000096 (A122197 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202658.P16484802244058133889

/-!
# A202659: Number of -3..3 arrays of n elements with first through fourth differences also in -3..3.

The programs for A202659, there is no canonical definition to state claims against.
-/

/-! ## A202659.P3150528411755867249

`A202664(∑[n+3]+1)`
-/

namespace A202659.P3150528411755867249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202659.P3150528411755867249

/-! ## A202659.P17853398381441072731

`or(1, A202664(A055999(n)+4))`
-/

namespace A202659.P17853398381441072731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202664 (A055999 n + 4).toNat)

end

end A202659.P17853398381441072731

/-! ## A202659.P14989494855359980387

`char[A029578(n)]*A202664(A055999(n)+4)`
-/

namespace A202659.P14989494855359980387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A202664 (A055999 n + 4).toNat

end

end A202659.P14989494855359980387

/-! ## A202659.P5298649474090497299

`A202664(A055999(n)+4)+A000007((n+1)²)`
-/

namespace A202659.P5298649474090497299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A055999 n + 4).toNat + A000007 ((n + 1) ^ 2)

end

end A202659.P5298649474090497299

/-! ## A202659.P16422715431544999379

`A007318(3^C(n, 64)²)*A202664(A055999(n)+4)`
-/

namespace A202659.P16422715431544999379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (3 ^ Nat.choose n 64 ^ 2) * A202664 (A055999 n + 4).toNat

end

end A202659.P16422715431544999379

/-!
# A202660: Number of -4..4 arrays of n elements with first through fourth differences also in -4..4.

The programs for A202660, there is no canonical definition to state claims against.
-/

/-! ## A202660.P17374237627544375397

`A202664(A027379(n+2))`
-/

namespace A202660.P17374237627544375397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A027379 (n + 2)).toNat

end

end A202660.P17374237627544375397

/-! ## A202660.P13902671011120895943

`A202664(A055998(n+2))`
-/

namespace A202660.P13902671011120895943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A055998 (n + 2)).toNat

end

end A202660.P13902671011120895943

/-! ## A202660.P17539089953265097535

`A202664(A155212(n)+5)`
-/

namespace A202660.P17539089953265097535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A155212 n + 5).toNat

end

end A202660.P17539089953265097535

/-! ## A202660.P3959313991287327676

`A202664(A056000(n)+7)`
-/

namespace A202660.P3959313991287327676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A056000 n + 7).toNat

end

end A202660.P3959313991287327676

/-! ## A202660.P4957134170578552943

`A202664(A052905(n+1)+2)`
-/

namespace A202660.P4957134170578552943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A052905 (n + 1) + 2).toNat

end

end A202660.P4957134170578552943

/-!
# A202661: Number of -5..5 arrays of n elements with first through fourth differences also in -5..5.

The programs for A202661, there is no canonical definition to state claims against.
-/

/-! ## A202661.P12129348327779902850

`A202664(2*n+∑[n+3]+8)`
-/

namespace A202661.P12129348327779902850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 8))

end

end A202661.P12129348327779902850

/-! ## A202661.P9704314722665351706

`or(1, A202664(eq[8, A140996(n)]))`
-/

namespace A202661.P9704314722665351706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202664 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A202661.P9704314722665351706

/-! ## A202661.P2015421158459474367

`or(1, A202664(Δ[A023545(n+1)]))`
-/

namespace A202661.P2015421158459474367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202664 (f1 (n + 1) - f1 n).toNat)

end

end A202661.P2015421158459474367

/-! ## A202661.P1257377567046922208

`A094267(4*n)*A202664(Δ[A023545(n+1)])`
-/

namespace A202661.P1257377567046922208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (4 * n) * A202664 (f1 (n + 1) - f1 n).toNat

end

end A202661.P1257377567046922208

/-! ## A202661.P3117632082710474557

`A202664(A134869(n+5)-5)+A001222(gcd(n, n+1))`
-/

namespace A202661.P3117632082710474557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A134869 (n + 5) - 5).toNat + A001222 (Nat.gcd n (n + 1))

end

end A202661.P3117632082710474557

/-!
# A202662: Number of -6..6 arrays of n elements with first through fourth differences also in -6..6.

The programs for A202662, there is no canonical definition to state claims against.
-/

/-! ## A202662.P1511376598606633467

`A202664(A052905(n+3))`
-/

namespace A202662.P1511376598606633467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A052905 (n + 3)).toNat

end

end A202662.P1511376598606633467

/-! ## A202662.P890578313405875197

`A202664(A034856(n+5)-3)`
-/

namespace A202662.P890578313405875197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A034856 (n + 5) - 3).toNat

end

end A202662.P890578313405875197

/-! ## A202662.P4483494602808200728

`A202664(A000096(n+5)-4)`
-/

namespace A202662.P4483494602808200728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000096 (n + 5) - 4).toNat

end

end A202662.P4483494602808200728

/-! ## A202662.P1591266937505124201

`A202664(A000217(n+6)-5)`
-/

namespace A202662.P1591266937505124201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000217 (n + 6) - 5).toNat

end

end A202662.P1591266937505124201

/-! ## A202662.P13970965175142621160

`A202664(A000124(n+6)-6)`
-/

namespace A202662.P13970965175142621160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000124 (n + 6) - 6).toNat

end

end A202662.P13970965175142621160

/-!
# A202663: Number of -7..7 arrays of n elements with first through fourth differences also in -7..7.

The programs for A202663, there is no canonical definition to state claims against.
-/

/-! ## A202663.P12747974057178787212

`A202664(Δ[A023551(n+2)])`
-/

namespace A202663.P12747974057178787212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (f1 (n + 1) - f1 n).toNat

end

end A202663.P12747974057178787212

/-! ## A202663.P2066360992763526730

`A202664(A000096(n+6)-5)`
-/

namespace A202663.P2066360992763526730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000096 (n + 6) - 5).toNat

end

end A202663.P2066360992763526730

/-! ## A202663.P14836103319087148225

`A202664(A000124(n+7)-7)`
-/

namespace A202663.P14836103319087148225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000124 (n + 7) - 7).toNat

end

end A202663.P14836103319087148225

/-! ## A202663.P11302408606180132561

`A202664(A000217(n+6)+n+1)`
-/

namespace A202663.P11302408606180132561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A202663.P11302408606180132561

/-! ## A202663.P15460553324752845443

`A202664(A052905(n+3)+n+6)`
-/

namespace A202663.P15460553324752845443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A052905 (n + 3) + (n + 6 : ℤ)).toNat

end

end A202663.P15460553324752845443

/-!
# A202665: Number of -n..n arrays of 5 elements with first through fourth differences also in -n..n.

The programs for A202665, there is no canonical definition to state claims against.
-/

/-! ## A202665.P4541772983817871318

`A202664(A167499(n+3))`
-/

namespace A202665.P4541772983817871318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A167499 (n + 3)).toNat

end

end A202665.P4541772983817871318

/-! ## A202665.P6283924090015598974

`A202664(A155212(n)+13)`
-/

namespace A202665.P6283924090015598974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A155212 n + 13).toNat

end

end A202665.P6283924090015598974

/-! ## A202665.P11911521399050340223

`A202664(A000124(n+4)+4)`
-/

namespace A202665.P11911521399050340223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000124 (n + 4) + 4).toNat

end

end A202665.P11911521399050340223

/-! ## A202665.P7057714539230093487

`A202664(A000217(n+4)+5)`
-/

namespace A202665.P7057714539230093487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000217 (n + 4) + 5).toNat

end

end A202665.P7057714539230093487

/-! ## A202665.P16312654452249202056

`A202664(A055998(n+2)+8)`
-/

namespace A202665.P16312654452249202056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A055998 (n + 2) + 8).toNat

end

end A202665.P16312654452249202056

/-!
# A202666: Number of -n..n arrays of 6 elements with first through fourth differences also in -n..n.

The programs for A202666, there is no canonical definition to state claims against.
-/

/-! ## A202666.P13800570007222924050

`A202664(A166136(n+4))`
-/

namespace A202666.P13800570007222924050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A166136 (n + 4)).toNat

end

end A202666.P13800570007222924050

/-! ## A202666.P6624965231410088581

`A202664(A000124(n+5)+5)`
-/

namespace A202666.P6624965231410088581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000124 (n + 5) + 5).toNat

end

end A202666.P6624965231410088581

/-! ## A202666.P2521508171327052767

`A202664(A000217(n+5)+6)`
-/

namespace A202666.P2521508171327052767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000217 (n + 5) + 6).toNat

end

end A202666.P2521508171327052767

/-! ## A202666.P9518627993086427114

`A202664(A034856(n+4)+8)`
-/

namespace A202666.P9518627993086427114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A034856 (n + 4) + 8).toNat

end

end A202666.P9518627993086427114

/-! ## A202666.P16756629377839485486

`A202664(A052905(n+2)+11)`
-/

namespace A202666.P16756629377839485486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A052905 (n + 2) + 11).toNat

end

end A202666.P16756629377839485486

/-!
# A202667: Number of -n..n arrays of 7 elements with first through fourth differences also in -n..n.

The programs for A202667, there is no canonical definition to state claims against.
-/

/-! ## A202667.P4892962420395899979

`A202664(A167499(n+5)+2)`
-/

namespace A202667.P4892962420395899979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A167499 (n + 5) + 2).toNat

end

end A202667.P4892962420395899979

/-! ## A202667.P16271829649009447924

`A202664(A167614(n+5)+4)`
-/

namespace A202667.P16271829649009447924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A167614 (n + 5) + 4).toNat

end

end A202667.P16271829649009447924

/-! ## A202667.P16204722110303291214

`A202664(A133263(n+6)+5)`
-/

namespace A202667.P16204722110303291214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A133263 (n + 6) + 5).toNat

end

end A202667.P16204722110303291214

/-! ## A202667.P14043048664306810182

`A202664(A000124(n+6)+6)`
-/

namespace A202667.P14043048664306810182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000124 (n + 6) + 6).toNat

end

end A202667.P14043048664306810182

/-! ## A202667.P5036024553372039540

`A202664(A000217(n+6)+7)`
-/

namespace A202667.P5036024553372039540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A000217 (n + 6) + 7).toNat

end

end A202667.P5036024553372039540

/-!
# A202668: G.f. satisfies: A(x) = exp( Sum_{n>=1} (A(x) - (-1)^n)^n * x^n/n ).

The programs for A202668, there is no canonical definition to state claims against.
-/

/-! ## A202668.P13920831707724803842

`∑[A157271(A355351(n))]`
-/

namespace A202668.P13920831707724803842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A355351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202668.P13920831707724803842

/-! ## A202668.P15556261606331643725

`A081832(A149354(n+1))`
-/

namespace A202668.P15556261606331643725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081832 (A149354 (n + 1)).toNat

end

end A202668.P15556261606331643725

/-! ## A202668.P6842828301231866400

`A109497(A227846(n+1))`
-/

namespace A202668.P6842828301231866400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A227846 (n + 1)).toNat

end

end A202668.P6842828301231866400

/-!
# A202671: Array: row n shows the coefficients of the characteristic polynomial of the n-th principal submatrix of the symmetric matrix A202670 based on A000290 (the squares); by antidiagonals.

The programs for A202671, there is no canonical definition to state claims against.
-/

/-! ## A202671.P4973679221973622785

`A203004(A024655(n+1))`
-/

namespace A202671.P4973679221973622785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203004 (A024655 (n + 1)).toNat

end

end A202671.P4973679221973622785

/-! ## A202671.P16619912818232366328

`A203004(A024656(n+1))`
-/

namespace A202671.P16619912818232366328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203004 (A024656 (n + 1)).toNat

end

end A202671.P16619912818232366328

/-! ## A202671.P14418814724676932232

`A203004(A028430(n+1))`
-/

namespace A202671.P14418814724676932232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203004 (A028430 (n + 1)).toNat

end

end A202671.P14418814724676932232

/-!
# A202672: Array: row n shows the coefficients of the characteristic polynomial of the n-th principal submatrix of the symmetric matrix A087062 based on (1,1,1,1,...); by antidiagonals.

The programs for A202672, there is no canonical definition to state claims against.
-/

/-! ## A202672.P11583030452424776118

`A115139(C(∑[char[∑[n]]], 2)+n+2)`
-/

namespace A202672.P11583030452424776118
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n + 2)

end

end A202672.P11583030452424776118

/-! ## A202672.P10532243628782607753

`A115139(lt[(ceil(sqrt(n))²-n)², n]+1)`
-/

namespace A202672.P10532243628782607753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A202672.P10532243628782607753

/-! ## A202672.P4213569752849349734

`A115139(C(comp[∑[n-1]]-n, 2)+n+2)`
-/

namespace A202672.P4213569752849349734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 + (n + 2))

end

end A202672.P4213569752849349734

/-! ## A202672.P17124153650591603740

`A115139(eq[0, floor(2*sqrt(n))%2]+comp[∑[n]]-n)`
-/

namespace A202672.P17124153650591603740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A202672.P17124153650591603740

/-! ## A202672.P16548979651902066203

`A133607(round(sqrt(2*(n+1)))²+2*(n+1)+1)`
-/

namespace A202672.P16548979651902066203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133607 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 + (2 * (n + 1) : ℤ) + 1).toNat

end

end A202672.P16548979651902066203

/-! ## A202672.P9897411716974996303

`A129818(A061579(n+1))`
-/

namespace A202672.P9897411716974996303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129818 (A061579 (n + 1)).toNat

end

end A202672.P9897411716974996303

/-! ## A202672.P8212733822664438359

`A115139(A166021(n+1))`
-/

namespace A202672.P8212733822664438359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (A166021 (n + 1)).toNat

end

end A202672.P8212733822664438359

/-! ## A202672.P184324487415807877

`A115139(A004201(n+2))`
-/

namespace A202672.P184324487415807877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (A004201 (n + 2)).toNat

end

end A202672.P184324487415807877

/-! ## A202672.P1066679452545928641

`A115139(A061885(n)+2)`
-/

namespace A202672.P1066679452545928641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (A061885 n + 2).toNat

end

end A202672.P1066679452545928641

/-! ## A202672.P8374951774782064051

`A129818(A038722(n+3))`
-/

namespace A202672.P8374951774782064051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129818 (A038722 (n + 3)).toNat

end

end A202672.P8374951774782064051

/-!
# A202673: Array: row n shows the coefficients of the characteristic polynomial of the n-th principal submatrix of the symmetric matrix A115263 based on (1,2,3,4,...); by antidiagonals.

The programs for A202673, there is no canonical definition to state claims against.
-/

/-! ## A202673.P18231193076748670186

`A202875(n+1)+A051767(A134249(n+1))`
-/

namespace A202673.P18231193076748670186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202875 (n + 1) + A051767 (A134249 (n + 1)).toNat

end

end A202673.P18231193076748670186

/-!
# A202674: Symmetric matrix based on (1,3,5,7,9,...), by antidiagonals.

The programs for A202674, there is no canonical definition to state claims against.
-/

/-! ## A202674.P13997911531591987951

`A027170(n)-A056654(A331315(n))`
-/

namespace A202674.P13997911531591987951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 n - A056654 (A331315 n).toNat

end

end A202674.P13997911531591987951

/-! ## A202674.P17502258167821670205

`A335678(n+1)+A070939(A257619(n))`
-/

namespace A202674.P17502258167821670205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335678 (n + 1) + A070939 (A257619 n).toNat

end

end A202674.P17502258167821670205

/-!
# A202676: Symmetric matrix based on (1,4,7,10,13,...), by antidiagonals.

The programs for A202676, there is no canonical definition to state claims against.
-/

/-! ## A202676.P13495540405124522410

`A001614(A335056(n+1)%A093552(n))`
-/

namespace A202676.P13495540405124522410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (Int.tmod (A335056 (n + 1)) (A093552 n)).toNat

end

end A202676.P13495540405124522410

/-! ## A202676.P10208686584192959931

`A252459(A207182(3*n+5))+A115292(n)`
-/

namespace A202676.P10208686584192959931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252459 (A207182 (3 * n + 5)).toNat + A115292 n

end

end A202676.P10208686584192959931

/-!
# A202677: Array: row n shows the coefficients of the characteristic polynomial of the n-th principal submatrix of the symmetric matrix A202676 based on (1,4,7,10,13,...); by antidiagonals.

The programs for A202677, there is no canonical definition to state claims against.
-/

/-! ## A202677.P16723513571485456220

`A280417(A214306(n+1))-A075500(n+1)`
-/

namespace A202677.P16723513571485456220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280417 (A214306 (n + 1)).toNat - A075500 (n + 1)

end

end A202677.P16723513571485456220

/-! ## A202677.P11805119687442557057

`A202671(n+1)-A008586(A058343(3*(n+1)))`
-/

namespace A202677.P11805119687442557057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202671 (n + 1) - A008586 (A058343 (3 * (n + 1))).toNat

end

end A202677.P11805119687442557057

/-!
# A202678: Array: row n shows the coefficients of the characteristic polynomial of the n-th principal submatrix of the symmetric matrix A185957; by antidiagonals.

The programs for A202678, there is no canonical definition to state claims against.
-/

/-! ## A202678.P11791689520185505494

`A202971(n+1)+A110193(A110160(n))`
-/

namespace A202678.P11791689520185505494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202971 (n + 1) + A110193 (A110160 n).toNat

end

end A202678.P11791689520185505494

/-! ## A202678.P14322208077177825990

`A202971(n+1)+A122283(A217154(n+1))`
-/

namespace A202678.P14322208077177825990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202971 (n + 1) + A122283 (A217154 (n + 1)).toNat

end

end A202678.P14322208077177825990

/-!
# A202679: Numbers that are sums of two coprime positive cubes.

The programs for A202679, there is no canonical definition to state claims against.
-/

/-! ## A202679.P6253115934176882449

`lt[1, n^A295976(n)]`
-/

namespace A202679.P6253115934176882449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A295976 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A202679.P6253115934176882449

/-! ## A202679.P785901741420575809

`eq[1, A212286(n+2)]+2`
-/

namespace A202679.P785901741420575809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212286 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A202679.P785901741420575809

/-! ## A202679.P17454814132325337514

`record[A020725(n+1)/A212286(n+2)]`
-/

namespace A202679.P17454814132325337514
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 1) : ℚ) / (A212286 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202679.P17454814132325337514

/-! ## A202679.P5524082517591589519

`record[A000027(n+2)/A212286(n+2)]`
-/

namespace A202679.P5524082517591589519
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 2) : ℚ) / (A212286 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202679.P5524082517591589519

/-! ## A202679.P10991567754509932240

`record[A003325(n+1)/A212286(A003325(n+1))]`
-/

namespace A202679.P10991567754509932240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003325 (n + 1) : ℚ) / (A212286 (A003325 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202679.P10991567754509932240

/-!
# A202680: Number of nX2 0..3 arrays with row sums equal and column sums equal.

The programs for A202680, there is no canonical definition to state claims against.
-/

/-! ## A202680.P16547755935149498903

`A202686(∑[n+1]+2)`
-/

namespace A202680.P16547755935149498903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202686 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202680.P16547755935149498903

/-!
# A202681: Number of n X 3 0..3 arrays with row sums equal and column sums equal.

The programs for A202681, there is no canonical definition to state claims against.
-/

/-! ## A202681.P5683819939726060898

`A202686(∑[n+2]+4)`
-/

namespace A202681.P5683819939726060898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202686 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202681.P5683819939726060898

/-! ## A202681.P18283339551997793470

`lcm(2, A202686(A167614(n+1)))`
-/

namespace A202681.P18283339551997793470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202686 (A167614 (n + 1)).toNat)

end

end A202681.P18283339551997793470

/-! ## A202681.P12449252305262880717

`record[A202686(n+4)/A107873(n)]`
-/

namespace A202681.P12449252305262880717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202686 (n + 4) : ℚ) / (A107873 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202681.P12449252305262880717

/-! ## A202681.P4565591676304156100

`A202686(A167614(n+1))+A025443(n)`
-/

namespace A202681.P4565591676304156100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202686 (A167614 (n + 1)).toNat + A025443 n

end

end A202681.P4565591676304156100

/-! ## A202681.P1548145738303106261

`A202686(A167614(n+1))+A171765(n)`
-/

namespace A202681.P1548145738303106261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202686 (A167614 (n + 1)).toNat + A171765 n

end

end A202681.P1548145738303106261

/-!
# A202682: Number of nX4 0..3 arrays with row sums equal and column sums equal.

The programs for A202682, there is no canonical definition to state claims against.
-/

/-! ## A202682.P6672161735299622300

`A202686(∑[n+3]+7)`
-/

namespace A202682.P6672161735299622300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202686 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A202682.P6672161735299622300

/-!
# A202683: Number of nX5 0..3 arrays with row sums equal and column sums equal.

The programs for A202683, there is no canonical definition to state claims against.
-/

/-! ## A202683.P9544509215854861768

`A202686(Δ[∑[∑[n+3]+7]+n+1])`
-/

namespace A202683.P9544509215854861768
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202686 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A202683.P9544509215854861768

/-!
# A202684: Number of nX6 0..3 arrays with row sums equal and column sums equal.

The programs for A202684, there is no canonical definition to state claims against.
-/

/-! ## A202684.P13023860521183508367

`A202686(C(n+7, 2)-n)`
-/

namespace A202684.P13023860521183508367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202686 (Nat.choose (n + 7) 2 - n)

end

end A202684.P13023860521183508367

/-! ## A202684.P11840861381324489764

`A202686(A374007(n+1))`
-/

namespace A202684.P11840861381324489764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202686 (A374007 (n + 1)).toNat

end

end A202684.P11840861381324489764

/-! ## A202684.P930524592688944061

`A202686(A052905(n+3))`
-/

namespace A202684.P930524592688944061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202686 (A052905 (n + 3)).toNat

end

end A202684.P930524592688944061

/-!
# A202685: Number of nX7 0..3 arrays with row sums equal and column sums equal.

The programs for A202685, there is no canonical definition to state claims against.
-/

/-! ## A202685.P17254568606205530772

`2*(A172737(n+1)+1)`
-/

namespace A202685.P17254568606205530772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A172737 (n + 1) + 1)

end

end A202685.P17254568606205530772

/-!
# A202686: T(n,k)=Number of nXk 0..3 arrays with row sums equal and column sums equal.

The programs for A202686, there is no canonical definition to state claims against.
-/

/-! ## A202686.P18416843002495491677

`A145154(A022177(n))`
-/

namespace A202686.P18416843002495491677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (A022177 n).toNat

end

end A202686.P18416843002495491677

/-! ## A202686.P4607737978102673597

`A333167(A174675(n))`
-/

namespace A202686.P4607737978102673597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333167 (A174675 n).toNat

end

end A202686.P4607737978102673597

/-! ## A202686.P17988263936629588661

`A366683(A176791(n))`
-/

namespace A202686.P17988263936629588661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366683 (A176791 n).toNat

end

end A202686.P17988263936629588661

/-! ## A202686.P5009660623668410622

`4*A220521(A081582(n))`
-/

namespace A202686.P5009660623668410622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A220521 (A081582 n).toNat

end

end A202686.P5009660623668410622

/-! ## A202686.P16065680694402990158

`A000005(119*A174599(n))`
-/

namespace A202686.P16065680694402990158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (119 * A174599 n).toNat

end

end A202686.P16065680694402990158

/-!
# A202687: Triangle arising in the computation of hypersigma, definition 2 (A191161).

The programs for A202687, there is no canonical definition to state claims against.
-/

/-! ## A202687.P1056666084786511286

`A028326(n)/2*A327105(A233543(n+1))`
-/

namespace A202687.P1056666084786511286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A327105 (A233543 (n + 1)).toNat : ℚ)

end

end A202687.P1056666084786511286

/-! ## A202687.P15837321169432920427

`ceil(A124927(n)/2)*A327105(A233543(n+1))`
-/

namespace A202687.P15837321169432920427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124927 n : ℚ) / 2⌉ * A327105 (A233543 (n + 1)).toNat

end

end A202687.P15837321169432920427

/-! ## A202687.P16984075626830349559

`ceil(A134058(n)/2)*A327105(A233543(n+1))`
-/

namespace A202687.P16984075626830349559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134058 n : ℚ) / 2⌉ * A327105 (A233543 (n + 1)).toNat

end

end A202687.P16984075626830349559

/-! ## A202687.P13375928526925446922

`gcd(A181511(n+2)!, A121757(n))`
-/

namespace A202687.P13375928526925446922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A181511 (n + 2)).toNat : ℤ) (A121757 n)

end

end A202687.P13375928526925446922

/-! ## A202687.P13453856723704230553

`A098473(n)^A317624(A039756(n))`
-/

namespace A202687.P13453856723704230553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098473 n : ℚ) ^ (A317624 (A039756 n).toNat : ℤ)

end

end A202687.P13453856723704230553

/-!
# A202689: a(n) = (2n)! * (n+1)! / 2^(2n).

The programs for A202689, the canonical program `A202689.P14515676261135232377` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202689 has offset 0).

The definition of A202689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202689.P14515676261135232377

`(2*n)!*(n+1)!/2^(2*n)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202689

/-- `(2*n)!*(n+1)!/2^(2*n)` -/
def P14515676261135232377.Spec : Prop :=
  ∀ n, P14515676261135232377.a n = (A202689 n : ℚ)

end A202689

/-! ## A202689.P7250241077372694571

`(2*n-1)*a(n-1)*∑[n]` with `a(0)=1`
-/

namespace A202689.P7250241077372694571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n : ℤ) - 1) * (a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A202689.P7250241077372694571

namespace A202689

/-- `(2*n-1)*a(n-1)*∑[n]` -/
def P7250241077372694571.Spec : Prop :=
  ∀ n, P7250241077372694571.a n = A202689 n

end A202689

/-! ## A202689.P10906868958800254624

`((2*n+3)*C(n, 2)+n)*a(n-1)` with `a(0)=1`
-/

namespace A202689.P10906868958800254624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n + 3) * Nat.choose n 2 + n) * a (n - 1)

end

end A202689.P10906868958800254624

namespace A202689

/-- `((2*n+3)*C(n, 2)+n)*a(n-1)` -/
def P10906868958800254624.Spec : Prop :=
  ∀ n, (P10906868958800254624.a n : ℤ) = A202689 n

end A202689

/-! ## A202689.P6843127724916110154

`a(n-1)*A002414(n)` with `a(0)=1`
-/

namespace A202689.P6843127724916110154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A002414 n

end

end A202689.P6843127724916110154

namespace A202689

/-- `a(n-1)*A002414(n)` -/
def P6843127724916110154.Spec : Prop :=
  ∀ n, P6843127724916110154.a n = A202689 n

end A202689

/-! ## A202689.P1708148494555096157

`a(n-1)*∑[A000567(n)]` with `a(0)=1`
-/

namespace A202689.P1708148494555096157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202689.P1708148494555096157

namespace A202689

/-- `a(n-1)*∑[A000567(n)]` -/
def P1708148494555096157.Spec : Prop :=
  ∀ n, P1708148494555096157.a n = A202689 n

end A202689

/-!
# A202690: The triangle in A185356 with the central column of zeros omitted.

The programs for A202690, there is no canonical definition to state claims against.
-/

/-! ## A202690.P15209203286508037360

`A185356(comp[∑[2*n]])`
-/

namespace A202690.P15209203286508037360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A202690.P15209203286508037360

/-! ## A202690.P17344337977809021417

`or(char[1], A185356(A078358(n+1)))`
-/

namespace A202690.P17344337977809021417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A185356 (A078358 (n + 1)).toNat)

end

end A202690.P17344337977809021417

/-! ## A202690.P8431309253120092585

`A185356(A078358(n+1))^A178334(n)`
-/

namespace A202690.P8431309253120092585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185356 (A078358 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A202690.P8431309253120092585

/-! ## A202690.P12193744089697517806

`A185356(A078358(n+1))%A000230(n)`
-/

namespace A202690.P12193744089697517806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185356 (A078358 (n + 1)).toNat) (A000230 n)

end

end A202690.P12193744089697517806

/-! ## A202690.P13601936579540238980

`gcd(A000038(n), A185356(A078358(n+1)))`
-/

namespace A202690.P13601936579540238980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A185356 (A078358 (n + 1)).toNat)

end

end A202690.P13601936579540238980

/-! ## A202690.P3010627262200421977

`∑{d}[A185356(A078358(n+1)), A000010(#)]`
-/

namespace A202690.P3010627262200421977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 (A078358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A202690.P3010627262200421977

/-! ## A202690.P4838445202349531448

`A007318(∑[n])*A185356(A078358(n+1))`
-/

namespace A202690.P4838445202349531448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A185356 (A078358 (n + 1)).toNat

end

end A202690.P4838445202349531448

/-! ## A202690.P8354653751867780869

`A185356(A078358(n+1))+char[A000040(n+28)]`
-/

namespace A202690.P8354653751867780869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 28)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 (A078358 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A202690.P8354653751867780869

/-! ## A202690.P3912872840588417631

`A185356(A078358(n+1))/A000040(n+2)%2`
-/

namespace A202690.P3912872840588417631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185356 (A078358 (n + 1)).toNat : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A202690.P3912872840588417631

/-!
# A202691: Triangle read by rows: number of type B snakes according to their last value.

The programs for A202691, there is no canonical definition to state claims against.
-/

/-! ## A202691.P9828870914023708685

`A202690(n+1)-A202704(n+1)`
-/

namespace A202691.P9828870914023708685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202690 (n + 1) - A202704 (n + 1)

end

end A202691.P9828870914023708685

/-! ## A202691.P1401449205862707503

`A185356(comp[∑[2*n]])-A202704(n+1)`
-/

namespace A202691.P1401449205862707503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A202704 (n + 1)

end

end A202691.P1401449205862707503

/-! ## A202691.P7232918117967796126

`A185356(A078358(n+1))^A178334(n)-A202704(n+1)`
-/

namespace A202691.P7232918117967796126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185356 (A078358 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ) - (A202704 (n + 1) : ℚ)

end

end A202691.P7232918117967796126

/-! ## A202691.P8661109617737301932

`A185356(A078358(n+1))%A017306(n)-A202704(n+1)`
-/

namespace A202691.P8661109617737301932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185356 (A078358 (n + 1)).toNat) (A017306 n) - A202704 (n + 1)

end

end A202691.P8661109617737301932

/-! ## A202691.P10283866811454792849

`A185356(A078358(n+1))+A000007(n+1)-A202704(n+1)`
-/

namespace A202691.P10283866811454792849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 (A078358 (n + 1)).toNat + A000007 (n + 1) - A202704 (n + 1)

end

end A202691.P10283866811454792849

/-!
# A202692: The first of three triangles counting 3-colored alternating permutations by their last value.

The programs for A202692, there is no canonical definition to state claims against.
-/

/-! ## A202692.P1900694181388874906

`2*A202695(n+1)-A008280(n)`
-/

namespace A202692.P1900694181388874906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202695 (n + 1) - A008280 n

end

end A202692.P1900694181388874906

/-! ## A202692.P16992872142256927545

`A202695(n+1)+A202701(n+1)+A202698(n+1)`
-/

namespace A202692.P16992872142256927545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202695 (n + 1) + (A202701 (n + 1) + A202698 (n + 1))

end

end A202692.P16992872142256927545

/-! ## A202692.P134483207491660371

`2*A202695(n+1)-abs(A236935(n))`
-/

namespace A202692.P134483207491660371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202695 (n + 1) - |A236935 n|

end

end A202692.P134483207491660371

/-! ## A202692.P9618729111259150673

`A005843(A202695(n+1))-A008280(n)`
-/

namespace A202692.P9618729111259150673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A202695 (n + 1)).toNat - A008280 n

end

end A202692.P9618729111259150673

/-! ## A202692.P6096987820597712166

`A005843(A202695(n+1))-abs(A236935(n))`
-/

namespace A202692.P6096987820597712166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A202695 (n + 1)).toNat - |A236935 n|

end

end A202692.P6096987820597712166

/-!
# A202693: The second of three triangles counting 3-colored alternating permutations by their last value.

The programs for A202693, there is no canonical definition to state claims against.
-/

/-! ## A202693.P15611807608216900403

`A202695(n+1)+A202702(n+1)+A202697(n+1)`
-/

namespace A202693.P15611807608216900403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202695 (n + 1) + (A202702 (n + 1) + A202697 (n + 1))

end

end A202693.P15611807608216900403

/-! ## A202693.P525092711777904436

`A202696(n+1)+A202702(n+1)+A202699(n+1)`
-/

namespace A202693.P525092711777904436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202696 (n + 1) + (A202702 (n + 1) + A202699 (n + 1))

end

end A202693.P525092711777904436

/-! ## A202693.P1294100444182853205

`A202698(n+1)+A202700(n+1)+A202699(n+1)`
-/

namespace A202693.P1294100444182853205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202698 (n + 1) + (A202700 (n + 1) + A202699 (n + 1))

end

end A202693.P1294100444182853205

/-!
# A202694: The third of three triangles counting 3-colored alternating permutations by their last value.

The programs for A202694, there is no canonical definition to state claims against.
-/

/-! ## A202694.P17698571146107353807

`A008280(n)+2*A202697(n+1)`
-/

namespace A202694.P17698571146107353807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 n + 2 * A202697 (n + 1)

end

end A202694.P17698571146107353807

/-! ## A202694.P12919919794702807379

`A202697(n+1)+A202703(n+1)+A202700(n+1)`
-/

namespace A202694.P12919919794702807379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202697 (n + 1) + (A202703 (n + 1) + A202700 (n + 1))

end

end A202694.P12919919794702807379

/-! ## A202694.P2076959109745360922

`abs(A236935(n))+2*A202697(n+1)`
-/

namespace A202694.P2076959109745360922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236935 n| + 2 * A202697 (n + 1)

end

end A202694.P2076959109745360922

/-! ## A202694.P3502076142955633073

`A008280(n)+A005843(A202697(n+1))`
-/

namespace A202694.P3502076142955633073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 n + A005843 (A202697 (n + 1)).toNat

end

end A202694.P3502076142955633073

/-! ## A202694.P2658604114651056300

`A005843(A202697(n+1))+abs(A236935(n))`
-/

namespace A202694.P2658604114651056300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A202697 (n + 1)).toNat + |A236935 n|

end

end A202694.P2658604114651056300

/-!
# A202695: The first of a set of three triangles constructed by the same rule as A202692-A202694, but where the top entries in the three triangles are 1,0,0 respectively.

The programs for A202695, there is no canonical definition to state claims against.
-/

/-! ## A202695.P8250243875671953888

`A202698(n+1)+A202701(n+1)+A008280(n)`
-/

namespace A202695.P8250243875671953888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202698 (n + 1) + (A202701 (n + 1) + A008280 n)

end

end A202695.P8250243875671953888

/-! ## A202695.P6992190606038911609

`(A202692(n+1)+A008280(n))/2`
-/

namespace A202695.P6992190606038911609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202692 (n + 1) + A008280 n : ℚ) / 2

end

end A202695.P6992190606038911609

/-! ## A202695.P13903428861729904836

`A202692(n+1)-(A202701(n+1)+A202698(n+1))`
-/

namespace A202695.P13903428861729904836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202692 (n + 1) - (A202701 (n + 1) + A202698 (n + 1))

end

end A202695.P13903428861729904836

/-! ## A202695.P5970504239713126180

`A202693(n+1)-(A202702(n+1)+A202697(n+1))`
-/

namespace A202695.P5970504239713126180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202693 (n + 1) - (A202702 (n + 1) + A202697 (n + 1))

end

end A202695.P5970504239713126180

/-! ## A202695.P13001963886391776692

`A202696(n+1)+A202699(n+1)-A202697(n+1)`
-/

namespace A202695.P13001963886391776692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202696 (n + 1) + (A202699 (n + 1) - A202697 (n + 1))

end

end A202695.P13001963886391776692

/-!
# A202696: The second of a set of three triangles constructed by the same rule as A202692-A202694, but where the top entries in the three triangles are 1,0,0 respectively.

The programs for A202696, there is no canonical definition to state claims against.
-/

/-! ## A202696.P59256692163364523

`A202693(n+1)-(A202702(n+1)+A202699(n+1))`
-/

namespace A202696.P59256692163364523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202693 (n + 1) - (A202702 (n + 1) + A202699 (n + 1))

end

end A202696.P59256692163364523

/-! ## A202696.P2822213214245869777

`A202695(n+1)+A202697(n+1)-A202699(n+1)`
-/

namespace A202696.P2822213214245869777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202695 (n + 1) + (A202697 (n + 1) - A202699 (n + 1))

end

end A202696.P2822213214245869777

/-! ## A202696.P7008071372845094381

`A202698(n+1)+A202700(n+1)-A202702(n+1)`
-/

namespace A202696.P7008071372845094381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202698 (n + 1) + (A202700 (n + 1) - A202702 (n + 1))

end

end A202696.P7008071372845094381

/-!
# A202697: The third of a set of three triangles constructed by the same rule as A202692-A202694, but where the top entries in the three triangles are 1,0,0 respectively.

The programs for A202697, there is no canonical definition to state claims against.
-/

/-! ## A202697.P7524918719349058430

`(A202694(n+1)-A008280(n))/2`
-/

namespace A202697.P7524918719349058430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202694 (n + 1) - A008280 n : ℚ) / 2

end

end A202697.P7524918719349058430

/-! ## A202697.P17011838820499088507

`A202700(n+1)+A202703(n+1)-A008280(n)`
-/

namespace A202697.P17011838820499088507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202700 (n + 1) + (A202703 (n + 1) - A008280 n)

end

end A202697.P17011838820499088507

/-! ## A202697.P6229063374921206268

`A202693(n+1)-(A202702(n+1)+A202695(n+1))`
-/

namespace A202697.P6229063374921206268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202693 (n + 1) - (A202702 (n + 1) + A202695 (n + 1))

end

end A202697.P6229063374921206268

/-! ## A202697.P6601731542502801009

`A202694(n+1)-(A202703(n+1)+A202700(n+1))`
-/

namespace A202697.P6601731542502801009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202694 (n + 1) - (A202703 (n + 1) + A202700 (n + 1))

end

end A202697.P6601731542502801009

/-! ## A202697.P1305185550278182392

`A202696(n+1)+A202699(n+1)-A202695(n+1)`
-/

namespace A202697.P1305185550278182392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202696 (n + 1) + (A202699 (n + 1) - A202695 (n + 1))

end

end A202697.P1305185550278182392

/-!
# A202698: The first of a set of three triangles constructed by the same rule as A202692-A202694, but where the top entries in the three triangles are 0,1,0 respectively.

The programs for A202698, there is no canonical definition to state claims against.
-/

/-! ## A202698.P3120926339814574555

`A202695(n+1)-(A202701(n+1)+A008280(n))`
-/

namespace A202698.P3120926339814574555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202695 (n + 1) - (A202701 (n + 1) + A008280 n)

end

end A202698.P3120926339814574555

/-! ## A202698.P16126522258661494828

`A202692(n+1)-(A202701(n+1)+A202695(n+1))`
-/

namespace A202698.P16126522258661494828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202692 (n + 1) - (A202701 (n + 1) + A202695 (n + 1))

end

end A202698.P16126522258661494828

/-! ## A202698.P12195700485693162380

`A202693(n+1)-(A202700(n+1)+A202699(n+1))`
-/

namespace A202698.P12195700485693162380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202693 (n + 1) - (A202700 (n + 1) + A202699 (n + 1))

end

end A202698.P12195700485693162380

/-! ## A202698.P1722694285103579851

`A202696(n+1)+A202702(n+1)-A202700(n+1)`
-/

namespace A202698.P1722694285103579851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202696 (n + 1) + (A202702 (n + 1) - A202700 (n + 1))

end

end A202698.P1722694285103579851

/-!
# A202699: The second of a set of three triangles constructed by the same rule as A202692-A202694, but where the top entries in the three triangles are 0,1,0 respectively.

The programs for A202699, there is no canonical definition to state claims against.
-/

/-! ## A202699.P8918779615356539779

`A202701(n+1)+A202703(n+1)+A202702(n+1)`
-/

namespace A202699.P8918779615356539779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202701 (n + 1) + (A202703 (n + 1) + A202702 (n + 1))

end

end A202699.P8918779615356539779

/-! ## A202699.P7961715335618920532

`A202693(n+1)-(A202700(n+1)+A202698(n+1))`
-/

namespace A202699.P7961715335618920532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202693 (n + 1) - (A202700 (n + 1) + A202698 (n + 1))

end

end A202699.P7961715335618920532

/-! ## A202699.P4976732054747097166

`A202693(n+1)-(A202702(n+1)+A202696(n+1))`
-/

namespace A202699.P4976732054747097166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202693 (n + 1) - (A202702 (n + 1) + A202696 (n + 1))

end

end A202699.P4976732054747097166

/-! ## A202699.P16976175607065572231

`A202695(n+1)+A202697(n+1)-A202696(n+1)`
-/

namespace A202699.P16976175607065572231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202695 (n + 1) + (A202697 (n + 1) - A202696 (n + 1))

end

end A202699.P16976175607065572231

