import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A208000: Number of nX4 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208000, there is no canonical definition to state claims against.
-/

/-! ## A208000.P16950251117566339041

`A208001(A141214(n+1))`
-/

namespace A208000.P16950251117566339041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208001 (A141214 (n + 1)).toNat

end

end A208000.P16950251117566339041

/-! ## A208000.P17530365718086312981

`A208001(A167614(n+2)+1)`
-/

namespace A208000.P17530365718086312981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208001 (A167614 (n + 2) + 1).toNat

end

end A208000.P17530365718086312981

/-!
# A208001: T(n,k)=Number of n X k nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208001, there is no canonical definition to state claims against.
-/

/-! ## A208001.P6362837489800142365

`A208788(n+1)-A088194(A297073(n+1))`
-/

namespace A208001.P6362837489800142365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208788 (n + 1) - A088194 (A297073 (n + 1)).toNat

end

end A208001.P6362837489800142365

/-! ## A208001.P15173468324596842479

`A321694(A006720(n))+A199655(n+1)`
-/

namespace A208001.P15173468324596842479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321694 (A006720 n).toNat + A199655 (n + 1)

end

end A208001.P15173468324596842479

/-! ## A208001.P12867920457987819278

`A208788(A001104(n+1)*A307433(n))`
-/

namespace A208001.P12867920457987819278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208788 (A001104 (n + 1) * A307433 n).toNat

end

end A208001.P12867920457987819278

/-! ## A208001.P15033629325007314458

`A223062(A001104(n+1)*A307433(n))`
-/

namespace A208001.P15033629325007314458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (A001104 (n + 1) * A307433 n).toNat

end

end A208001.P15033629325007314458

/-! ## A208001.P4305620664685821224

`A208788(A032563(n+1)*A307433(n))`
-/

namespace A208001.P4305620664685821224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208788 (A032563 (n + 1) * A307433 n).toNat

end

end A208001.P4305620664685821224

/-!
# A208002: Number of n X n 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208002, there is no canonical definition to state claims against.
-/

/-! ## A208002.P2844862640892883430

`A208007((n+1)²+n²)`
-/

namespace A208002.P2844862640892883430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 ((n + 1) ^ 2 + n ^ 2)

end

end A208002.P2844862640892883430

/-! ## A208002.P2454589382606071891

`lcm(2, A208007(A001844(n)))`
-/

namespace A208002.P2454589382606071891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208007 (A001844 n).toNat)

end

end A208002.P2454589382606071891

/-! ## A208002.P7345013396883923603

`record[A003982(n)*A208007(n+1)]`
-/

namespace A208002.P7345013396883923603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208002.P7345013396883923603

/-! ## A208002.P14631058363711686565

`record[root(A208007(n+1), A027420(n))]`
-/

namespace A208002.P14631058363711686565
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A208007 (n + 1) : ℝ) ^ (1 / (A027420 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208002.P14631058363711686565

/-! ## A208002.P6238695839069539568

`record[gcd(A049581(n), A208007(n+1))]`
-/

namespace A208002.P6238695839069539568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A208007 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208002.P6238695839069539568

/-!
# A208003: Number of n X 4 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208003, there is no canonical definition to state claims against.
-/

/-! ## A208003.P15533246315558011685

`A208007(A374004(n+1))`
-/

namespace A208003.P15533246315558011685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A374004 (n + 1)).toNat

end

end A208003.P15533246315558011685

/-! ## A208003.P1502245684437806580

`A208007(A141214(n)+7)`
-/

namespace A208003.P1502245684437806580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A141214 n + 7).toNat

end

end A208003.P1502245684437806580

/-! ## A208003.P9799476030412692394

`A208007(A052905(n)+9)`
-/

namespace A208003.P9799476030412692394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A052905 n + 9).toNat

end

end A208003.P9799476030412692394

/-! ## A208003.P16565282219000344284

`A208007(A055999(n)+10)`
-/

namespace A208003.P16565282219000344284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A055999 n + 10).toNat

end

end A208003.P16565282219000344284

/-! ## A208003.P9393983799491744398

`A208007(A167614(n+2)+1)`
-/

namespace A208003.P9393983799491744398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A167614 (n + 2) + 1).toNat

end

end A208003.P9393983799491744398

/-!
# A208004: Number of nX5 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208004, there is no canonical definition to state claims against.
-/

/-! ## A208004.P3995687155353465850

`A208007(A374005(n+1))`
-/

namespace A208004.P3995687155353465850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A374005 (n + 1)).toNat

end

end A208004.P3995687155353465850

/-! ## A208004.P5400774762349299551

`A208007(A167499(n+3))`
-/

namespace A208004.P5400774762349299551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A167499 (n + 3)).toNat

end

end A208004.P5400774762349299551

/-! ## A208004.P15131058469290788952

`A208007(A056000(n)+15)`
-/

namespace A208004.P15131058469290788952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A056000 n + 15).toNat

end

end A208004.P15131058469290788952

/-! ## A208004.P1534095014202467210

`A208007(A167614(n+3)+2)`
-/

namespace A208004.P1534095014202467210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A167614 (n + 3) + 2).toNat

end

end A208004.P1534095014202467210

/-! ## A208004.P3187496476169072281

`A208007(A141214(n+1)+8)`
-/

namespace A208004.P3187496476169072281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A141214 (n + 1) + 8).toNat

end

end A208004.P3187496476169072281

/-!
# A208005: Number of nX6 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208005, there is no canonical definition to state claims against.
-/

/-! ## A208005.P7532482945332475142

`A208007(A374007(n+1))`
-/

namespace A208005.P7532482945332475142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A374007 (n + 1)).toNat

end

end A208005.P7532482945332475142

/-! ## A208005.P1021529303180937878

`A208007(A000217(n+5)+6)`
-/

namespace A208005.P1021529303180937878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A000217 (n + 5) + 6).toNat

end

end A208005.P1021529303180937878

/-! ## A208005.P10651123906963566476

`A208007(A141214(n+2)+9)`
-/

namespace A208005.P10651123906963566476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A141214 (n + 2) + 9).toNat

end

end A208005.P10651123906963566476

/-! ## A208005.P11543567629435915121

`A208007(A052905(n+2)+11)`
-/

namespace A208005.P11543567629435915121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A052905 (n + 2) + 11).toNat

end

end A208005.P11543567629435915121

/-! ## A208005.P11832758500391976963

`A208007(eq[5, A002262(n)]+1)`
-/

namespace A208005.P11832758500391976963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A208005.P11832758500391976963

/-!
# A208006: Number of nX7 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208006, there is no canonical definition to state claims against.
-/

/-! ## A208006.P4403400471488243763

`A208007(A374008(n+1))`
-/

namespace A208006.P4403400471488243763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A374008 (n + 1)).toNat

end

end A208006.P4403400471488243763

/-! ## A208006.P14041706796904241872

`A208007(A167499(n+5)+2)`
-/

namespace A208006.P14041706796904241872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A167499 (n + 5) + 2).toNat

end

end A208006.P14041706796904241872

/-! ## A208006.P10619374571977282975

`A208007(A000217(n+6)+7)`
-/

namespace A208006.P10619374571977282975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A000217 (n + 6) + 7).toNat

end

end A208006.P10619374571977282975

/-! ## A208006.P533517796802825832

`A208007(A167614(n+6)-(n+3))`
-/

namespace A208006.P533517796802825832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A167614 (n + 6) - (n + 3 : ℤ)).toNat

end

end A208006.P533517796802825832

/-! ## A208006.P3269322846728175305

`A208007(A055999(n+4))`
-/

namespace A208006.P3269322846728175305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A055999 (n + 4)).toNat

end

end A208006.P3269322846728175305

/-!
# A208007: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208007, there is no canonical definition to state claims against.
-/

/-! ## A208007.P12675732643916835889

`A207564(A038722(n+1)%A014603(n+1))`
-/

namespace A208007.P12675732643916835889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (Int.tmod (A038722 (n + 1)) (A014603 (n + 1))).toNat

end

end A208007.P12675732643916835889

/-! ## A208007.P1207608405060105225

`A207564(Δ[A077342(n+1)]*A038722(n+1))`
-/

namespace A208007.P1207608405060105225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 ((f1 (n + 1) - f1 n) * A038722 (n + 1)).toNat

end

end A208007.P1207608405060105225

/-! ## A208007.P12641331370003588490

`A207564(A038722(n+1))%A270613(2*n+3)`
-/

namespace A208007.P12641331370003588490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207564 (A038722 (n + 1)).toNat) (A270613 (2 * n + 3))

end

end A208007.P12641331370003588490

/-! ## A208007.P1816723346656456038

`A207564((A061579(n)+1)%A274496(3*n+4))`
-/

namespace A208007.P1816723346656456038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (Int.tmod (A061579 n + 1) (A274496 (3 * n + 4))).toNat

end

end A208007.P1816723346656456038

/-! ## A208007.P17715815438991477354

`A207419(n+1)+A055641(A005246(n))`
-/

namespace A208007.P17715815438991477354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (n + 1) + A055641 (A005246 n).toNat

end

end A208007.P17715815438991477354

/-!
# A208008: Number of n X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208008, there is no canonical definition to state claims against.
-/

/-! ## A208008.P16122373543134479380

`A208013(∑[4*n]+1)`
-/

namespace A208008.P16122373543134479380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208008.P16122373543134479380

/-! ## A208008.P3906792819367780710

`record[gcd(A114327(n), A208013(n+1))]`
-/

namespace A208008.P3906792819367780710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A208013 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208008.P3906792819367780710

/-! ## A208008.P14877549763825390519

`abs(A208013(A001844(n))-n)+n`
-/

namespace A208008.P14877549763825390519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208013 (A001844 n).toNat - (n : ℤ)| + (n : ℤ)

end

end A208008.P14877549763825390519

/-! ## A208008.P15917066332669705246

`A208013(A001844(n))+A185284(n)`
-/

namespace A208008.P15917066332669705246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A001844 n).toNat + A185284 n

end

end A208008.P15917066332669705246

/-! ## A208008.P16331964290000741444

`A208013(A001844(n))*A304042(n)`
-/

namespace A208008.P16331964290000741444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A001844 n).toNat * A304042 n

end

end A208008.P16331964290000741444

/-!
# A208009: Number of n X 4 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208009, the canonical program `A208009.P1032728553750086093` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208009 has offset 1).

The definition of A208009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208009.P1032728553750086093

`ogf((9+63x+63x^2+85x^3+72x^4+74x^5-12x^6-6x^7+15x^8-x^9-3x^10+x^11)/(1-2x-4x^2+10x^3+5x^4-20x^5+20x^7-5x^8-10x^9+4x^10+2x^11-x^12))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208009

/-- `ogf((9+63x+63x^2+85x^3+72x^4+74x^5-12x^6-6x^7+15x^8-x^9-3x^10+x^11)/(1-2x-4x^2+10x^3+5x^4-20x^5+20x^7-5x^8-10x^9+4x^10+2x^11-x^12))` -/
def P1032728553750086093.Spec : Prop :=
  ∀ n, P1032728553750086093.a n = A208009 (n + 1)

theorem P1032728553750086093.correct : P1032728553750086093.Spec := by
  intro n
  simp only [A208009, Nat.add_sub_cancel]

end A208009

/-! ## A208009.P121053296727608421

`A208013(A027379(n+2))`
-/

namespace A208009.P121053296727608421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A027379 (n + 2)).toNat

end

end A208009.P121053296727608421

namespace A208009

/-- `A208013(A027379(n+2))` -/
def P121053296727608421.Spec : Prop :=
  ∀ n, P121053296727608421.a n = A208009 (n + 1)

end A208009

/-! ## A208009.P14290965461892135879

`A208013(A055998(n+2))`
-/

namespace A208009.P14290965461892135879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A055998 (n + 2)).toNat

end

end A208009.P14290965461892135879

namespace A208009

/-- `A208013(A055998(n+2))` -/
def P14290965461892135879.Spec : Prop :=
  ∀ n, P14290965461892135879.a n = A208009 (n + 1)

end A208009

/-! ## A208009.P14490318638394003688

`A208013(A155212(n)+5)`
-/

namespace A208009.P14490318638394003688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A155212 n + 5).toNat

end

end A208009.P14490318638394003688

namespace A208009

/-- `A208013(A155212(n)+5)` -/
def P14490318638394003688.Spec : Prop :=
  ∀ n, P14490318638394003688.a n = A208009 (n + 1)

end A208009

/-! ## A208009.P8522280077480354617

`A208013(A052905(n+1)+2)`
-/

namespace A208009.P8522280077480354617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A052905 (n + 1) + 2).toNat

end

end A208009.P8522280077480354617

namespace A208009

/-- `A208013(A052905(n+1)+2)` -/
def P8522280077480354617.Spec : Prop :=
  ∀ n, P8522280077480354617.a n = A208009 (n + 1)

end A208009

/-!
# A208010: Number of nX5 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208010, there is no canonical definition to state claims against.
-/

/-! ## A208010.P10810133982463178835

`A208013(Δ[A264443(n)])`
-/

namespace A208010.P10810133982463178835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (f1 (n + 1) - f1 n).toNat

end

end A208010.P10810133982463178835

/-! ## A208010.P4985697267087982855

`A208013(A046691(n+3))`
-/

namespace A208010.P4985697267087982855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A046691 (n + 3)).toNat

end

end A208010.P4985697267087982855

/-! ## A208010.P13002326150891717837

`A208013(Δ[A023545(n+1)])`
-/

namespace A208010.P13002326150891717837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (f1 (n + 1) - f1 n).toNat

end

end A208010.P13002326150891717837

/-! ## A208010.P12537674080603790104

`A208013(A034856(n+4)-2)`
-/

namespace A208010.P12537674080603790104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A034856 (n + 4) - 2).toNat

end

end A208010.P12537674080603790104

/-! ## A208010.P4094476422429272787

`A208013(A264443(n+1)-A264443(n))`
-/

namespace A208010.P4094476422429272787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A264443 (n + 1) - A264443 n).toNat

end

end A208010.P4094476422429272787

/-!
# A208011: Number of nX6 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208011, there is no canonical definition to state claims against.
-/

/-! ## A208011.P2429087512031038040

`A208013(A052905(n+3))`
-/

namespace A208011.P2429087512031038040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A052905 (n + 3)).toNat

end

end A208011.P2429087512031038040

/-! ## A208011.P18052531834987854022

`A208013(A034856(n+5)-3)`
-/

namespace A208011.P18052531834987854022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A034856 (n + 5) - 3).toNat

end

end A208011.P18052531834987854022

/-! ## A208011.P2467687023625773886

`A208013(A000217(n+6)-5)`
-/

namespace A208011.P2467687023625773886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A000217 (n + 6) - 5).toNat

end

end A208011.P2467687023625773886

/-! ## A208011.P16394591239303298716

`A208013(A000124(n+6)-6)`
-/

namespace A208011.P16394591239303298716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A000124 (n + 6) - 6).toNat

end

end A208011.P16394591239303298716

/-! ## A208011.P2086817137095726160

`A208013(Δ[A264443(n+1)]-1)`
-/

namespace A208011.P2086817137095726160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (f1 (n + 1) - f1 n - 1).toNat

end

end A208011.P2086817137095726160

/-!
# A208012: Number of nX7 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208012, there is no canonical definition to state claims against.
-/

/-! ## A208012.P1574670909774239461

`A208013(A055999(n+4))`
-/

namespace A208012.P1574670909774239461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A055999 (n + 4)).toNat

end

end A208012.P1574670909774239461

/-! ## A208012.P14723277608207246548

`A208013(A000124(n+7)-7)`
-/

namespace A208012.P14723277608207246548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A000124 (n + 7) - 7).toNat

end

end A208012.P14723277608207246548

/-! ## A208012.P7205418960576946895

`A208013(A167614(n+6)-9)`
-/

namespace A208012.P7205418960576946895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A167614 (n + 6) - 9).toNat

end

end A208012.P7205418960576946895

/-! ## A208012.P3246767364185156226

`A208013(eq[7, A002262(n+13)])`
-/

namespace A208012.P3246767364185156226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208012.P3246767364185156226

/-! ## A208012.P13188642870251331055

`A208013(eq[7, A002262(n)]-13)`
-/

namespace A208012.P13188642870251331055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 13)

end

end A208012.P13188642870251331055

/-!
# A208013: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208013, there is no canonical definition to state claims against.
-/

/-! ## A208013.P15114228441007932302

`A207368(n+1)+A184955(n)%3`
-/

namespace A208013.P15114228441007932302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (n + 1) + Int.tmod (A184955 n) 3

end

end A208013.P15114228441007932302

/-! ## A208013.P14227469548056570148

`A207368(n+1)+A055641(A005246(n))`
-/

namespace A208013.P14227469548056570148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (n + 1) + A055641 (A005246 n).toNat

end

end A208013.P14227469548056570148

/-! ## A208013.P10133276243733718914

`A207368(n+1)+A102683(A001629(n))`
-/

namespace A208013.P10133276243733718914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (n + 1) + A102683 (A001629 n).toNat

end

end A208013.P10133276243733718914

/-! ## A208013.P3052814529109267017

`A207368(n+1)+A102683(A030239(n))`
-/

namespace A208013.P3052814529109267017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (n + 1) + A102683 (A030239 n).toNat

end

end A208013.P3052814529109267017

/-! ## A208013.P17916221869901552714

`A207368(n+1)+A101637(A046630(n))`
-/

namespace A208013.P17916221869901552714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (n + 1) + A101637 (A046630 n).toNat

end

end A208013.P17916221869901552714

/-!
# A208014: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208014, there is no canonical definition to state claims against.
-/

/-! ## A208014.P12386596339042679850

`A207171(n+1)/A207170(n+1)*A207171(n+1)`
-/

namespace A208014.P12386596339042679850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207171 (n + 1) : ℚ) / (A207170 (n + 1) : ℚ) * (A207171 (n + 1) : ℚ)

end

end A208014.P12386596339042679850

/-! ## A208014.P17539559120372649195

`A208015(n+1)/A208016(n+1)*A208015(n+1)`
-/

namespace A208014.P17539559120372649195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208015 (n + 1) : ℚ) / (A208016 (n + 1) : ℚ) * (A208015 (n + 1) : ℚ)

end

end A208014.P17539559120372649195

/-! ## A208014.P311453811035402716

`(A207171(n+1)/A143361(A134869(n+1)))²`
-/

namespace A208014.P311453811035402716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207171 (n + 1) : ℚ) / (A143361 (A134869 (n + 1)).toNat : ℚ)) ^ 2

end

end A208014.P311453811035402716

/-! ## A208014.P16531004033112518216

`A207171(n+1)²/A207170(n+1)`
-/

namespace A208014.P16531004033112518216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207171 (n + 1) ^ 2 : ℚ) / (A207170 (n + 1) : ℚ)

end

end A208014.P16531004033112518216

/-! ## A208014.P9463895383594155142

`A208015(n+1)²/A208016(n+1)`
-/

namespace A208014.P9463895383594155142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208015 (n + 1) ^ 2 : ℚ) / (A208016 (n + 1) : ℚ)

end

end A208014.P9463895383594155142

/-!
# A208015: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208015, there is no canonical definition to state claims against.
-/

/-! ## A208015.P3174499918331428053

`A208013(A167499(n+3))`
-/

namespace A208015.P3174499918331428053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A167499 (n + 3)).toNat

end

end A208015.P3174499918331428053

/-! ## A208015.P14834562845001206913

`A208013(A167614(n+3)+2)`
-/

namespace A208015.P14834562845001206913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A167614 (n + 3) + 2).toNat

end

end A208015.P14834562845001206913

/-! ## A208015.P2087873368542809570

`A208013(A161680(n+5)+5)`
-/

namespace A208015.P2087873368542809570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A161680 (n + 5) + 5).toNat

end

end A208015.P2087873368542809570

/-! ## A208015.P15142675376720390751

`A208013(A055999(n+3)-A005843(n))`
-/

namespace A208015.P15142675376720390751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A055999 (n + 3) - A005843 n).toNat

end

end A208015.P15142675376720390751

/-! ## A208015.P564586242173327477

`A208013(A034856(n+1)+A005843(n+7))`
-/

namespace A208015.P564586242173327477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A034856 (n + 1) + A005843 (n + 7)).toNat

end

end A208015.P564586242173327477

/-!
# A208016: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208016, there is no canonical definition to state claims against.
-/

/-! ## A208016.P2437412558924643502

`A207172(n+1)/A207170(n+1)*A207172(n+1)`
-/

namespace A208016.P2437412558924643502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207172 (n + 1) : ℚ) / (A207170 (n + 1) : ℚ) * (A207172 (n + 1) : ℚ)

end

end A208016.P2437412558924643502

/-! ## A208016.P12649678659171255225

`A208015(n+1)/A208014(n+1)*A208015(n+1)`
-/

namespace A208016.P12649678659171255225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208015 (n + 1) : ℚ) / (A208014 (n + 1) : ℚ) * (A208015 (n + 1) : ℚ)

end

end A208016.P12649678659171255225

/-! ## A208016.P9305048505094148711

`(A208015(n+1)/A207171(n+1))²*A207170(n+1)`
-/

namespace A208016.P9305048505094148711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A208015 (n + 1) : ℚ) / (A207171 (n + 1) : ℚ)) ^ 2 * (A207170 (n + 1) : ℚ)

end

end A208016.P9305048505094148711

/-! ## A208016.P6014394947313097975

`A207172(n+1)²/A207170(n+1)`
-/

namespace A208016.P6014394947313097975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207172 (n + 1) ^ 2 : ℚ) / (A207170 (n + 1) : ℚ)

end

end A208016.P6014394947313097975

/-! ## A208016.P1790639983664863647

`A208015(n+1)²/A208014(n+1)`
-/

namespace A208016.P1790639983664863647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208015 (n + 1) ^ 2 : ℚ) / (A208014 (n + 1) : ℚ)

end

end A208016.P1790639983664863647

/-!
# A208017: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208017, there is no canonical definition to state claims against.
-/

/-! ## A208017.P12052120595661536200

`A208013(A167614(n+5)+4)`
-/

namespace A208017.P12052120595661536200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A167614 (n + 5) + 4).toNat

end

end A208017.P12052120595661536200

/-! ## A208017.P5985158111298406829

`A208013(A000217(n+6)+7)`
-/

namespace A208017.P5985158111298406829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A000217 (n + 6) + 7).toNat

end

end A208017.P5985158111298406829

/-! ## A208017.P210946736168407383

`A208013(A161680(n+7)+7)`
-/

namespace A208017.P210946736168407383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A161680 (n + 7) + 7).toNat

end

end A208017.P210946736168407383

/-! ## A208017.P12261506253677905905

`A208013(A027379(n+6)-A004273(n+3))`
-/

namespace A208017.P12261506253677905905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A027379 (n + 6) - A004273 (n + 3)).toNat

end

end A208017.P12261506253677905905

/-! ## A208017.P4251940306783100593

`A208013(A034856(n+7)-A005843(n+3))`
-/

namespace A208017.P4251940306783100593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (A034856 (n + 7) - A005843 (n + 3)).toNat

end

end A208017.P4251940306783100593

/-!
# A208018: Number of n X 3 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal, vertical, diagonal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208018, there is no canonical definition to state claims against.
-/

/-! ## A208018.P16733392965153609005

`A208021(∑[n+2]+4)`
-/

namespace A208018.P16733392965153609005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208021 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208018.P16733392965153609005

/-! ## A208018.P6126339692680125631

`A208021(A167614(n+1))+A025469(n)`
-/

namespace A208018.P6126339692680125631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208021 (A167614 (n + 1)).toNat + A025469 n

end

end A208018.P6126339692680125631

/-! ## A208018.P15121114868869733052

`or(A000038(n), A208021(A167614(n+1)))`
-/

namespace A208018.P15121114868869733052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A208021 (A167614 (n + 1)).toNat)

end

end A208018.P15121114868869733052

/-! ## A208018.P13905202211379752725

`A208021(A167614(n+1))*A239700(n+1)`
-/

namespace A208018.P13905202211379752725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208021 (A167614 (n + 1)).toNat * A239700 (n + 1)

end

end A208018.P13905202211379752725

/-! ## A208018.P9307257211687396839

`A208021(A167614(n+1))%A208019(n+1)`
-/

namespace A208018.P9307257211687396839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208021 (A167614 (n + 1)).toNat) (A208019 (n + 1))

end

end A208018.P9307257211687396839

/-!
# A208019: Number of n X 4 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal, vertical, diagonal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208019, there is no canonical definition to state claims against.
-/

/-! ## A208019.P2670518077239160062

`A208021(∑[n+3]+7)`
-/

namespace A208019.P2670518077239160062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208021 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A208019.P2670518077239160062

/-!
# A208020: Number of n X 5 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal, vertical, diagonal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208020, there is no canonical definition to state claims against.
-/

/-! ## A208020.P10110825559334636829

`A208021(A374005(n+1))`
-/

namespace A208020.P10110825559334636829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208021 (A374005 (n + 1)).toNat

end

end A208020.P10110825559334636829

/-! ## A208020.P10010071366875702020

`A208021(eq[5, A239144(n)])`
-/

namespace A208020.P10010071366875702020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208020.P10010071366875702020

/-! ## A208020.P17278629708730826359

`A208021(Δ[A023545(n+1)])`
-/

namespace A208020.P17278629708730826359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208021 (f1 (n + 1) - f1 n).toNat

end

end A208020.P17278629708730826359

/-! ## A208020.P15889171961190458129

`A208021(eq[4, A025581(n)]+1)`
-/

namespace A208020.P15889171961190458129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A208020.P15889171961190458129

/-! ## A208020.P8258066770915130396

`A208021(eq[8, A057728(n+1)])`
-/

namespace A208020.P8258066770915130396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208020.P8258066770915130396

/-!
# A208022: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208022, there is no canonical definition to state claims against.
-/

/-! ## A208022.P8396220791356509705

`A208028(∑[4*n]+1)`
-/

namespace A208022.P8396220791356509705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208022.P8396220791356509705

/-! ## A208022.P8992604092552102053

`record[A003982(n)*A208028(n+1)]`
-/

namespace A208022.P8992604092552102053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208022.P8992604092552102053

/-! ## A208022.P16858441020966187294

`record[gcd(A114327(n), A208028(n+1))]`
-/

namespace A208022.P16858441020966187294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A208028 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208022.P16858441020966187294

/-! ## A208022.P16979975201151666795

`A208028(A001844(n))+A185284(n)`
-/

namespace A208022.P16979975201151666795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A001844 n).toNat + A185284 n

end

end A208022.P16979975201151666795

/-! ## A208022.P1750782342030054259

`and(1, A000040(n+1))!*A208028(A001844(n))`
-/

namespace A208022.P1750782342030054259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000040 (n + 1))).toNat : ℤ) * A208028 (A001844 n).toNat

end

end A208022.P1750782342030054259

/-!
# A208023: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208023, the canonical program `A208023.P17884512696912570816` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208023 has offset 1).

The definition of A208023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208023.P9872515935887492737

`ogf((6+30x+60x^2+93x^3+48x^4-3x^5-50x^6-8x^7+6x^8+9x^9)/(1-x-x^2-8x^3-4x^4-3x^5+5x^6+x^7-x^9))`
-/

namespace A208023.P9872515935887492737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 30, 60, 93, 48, -3, -50, -8, 6, 9] [1, -1, -1, -8, -4, -3, 5, 1, 0, -1] n

end

end A208023.P9872515935887492737

namespace A208023

/-- `ogf((6+30x+60x^2+93x^3+48x^4-3x^5-50x^6-8x^7+6x^8+9x^9)/(1-x-x^2-8x^3-4x^4-3x^5+5x^6+x^7-x^9))` -/
def P9872515935887492737.Spec : Prop :=
  ∀ n, P9872515935887492737.a n = A208023 (n + 1)

end A208023

/-! ## A208023.P17884512696912570816

`sqrt(A207170(n+1))*sqrt(A208035(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A208023

/-- `sqrt(A207170(n+1))*sqrt(A208035(n+1))` -/
def P17884512696912570816.Spec : Prop :=
  ∀ n, P17884512696912570816.a n = (A208023 (n + 1) : ℝ)

end A208023

/-! ## A208023.P5058680668946412568

`sqrt(A207170(n+1)*A208035(n+1))`
-/

namespace A208023.P5058680668946412568
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207170 (n + 1) * A208035 (n + 1) : ℝ)

end

end A208023.P5058680668946412568

namespace A208023

/-- `sqrt(A207170(n+1)*A208035(n+1))` -/
def P5058680668946412568.Spec : Prop :=
  ∀ n, P5058680668946412568.a n = (A208023 (n + 1) : ℝ)

end A208023

/-! ## A208023.P13847679508176295543

`A208028(∑[n+3]+1)`
-/

namespace A208023.P13847679508176295543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208023.P13847679508176295543

namespace A208023

/-- `A208028(∑[n+3]+1)` -/
def P13847679508176295543.Spec : Prop :=
  ∀ n, P13847679508176295543.a n = A208023 (n + 1)

end A208023

/-! ## A208023.P13329174035589519752

`A208028(A034856(n+2))%A243416(n+1)`
-/

namespace A208023.P13329174035589519752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208028 (A034856 (n + 2)).toNat) (A243416 (n + 1 + 10))

end

end A208023.P13329174035589519752

namespace A208023

/-- `A208028(A034856(n+2))%A243416(n+1)` -/
def P13329174035589519752.Spec : Prop :=
  ∀ n, P13329174035589519752.a n = A208023 (n + 1)

end A208023

/-!
# A208024: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208024, there is no canonical definition to state claims against.
-/

/-! ## A208024.P4471050888553810004

`A207170(n+1)/A208023(n+1)*A208036(n+1)`
-/

namespace A208024.P4471050888553810004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207170 (n + 1) : ℚ) / (A208023 (n + 1) : ℚ) * (A208036 (n + 1) : ℚ)

end

end A208024.P4471050888553810004

/-! ## A208024.P12920942170475573965

`A208028(A027379(n+2))`
-/

namespace A208024.P12920942170475573965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A027379 (n + 2)).toNat

end

end A208024.P12920942170475573965

/-! ## A208024.P1355538773365640819

`A208028(A055998(n+2))`
-/

namespace A208024.P1355538773365640819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A055998 (n + 2)).toNat

end

end A208024.P1355538773365640819

/-! ## A208024.P15503905741904794261

`A208028(A155212(n)+5)`
-/

namespace A208024.P15503905741904794261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A155212 n + 5).toNat

end

end A208024.P15503905741904794261

/-! ## A208024.P707449774611329945

`A208028(A052905(n+1)+2)`
-/

namespace A208024.P707449774611329945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A052905 (n + 1) + 2).toNat

end

end A208024.P707449774611329945

/-!
# A208025: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208025, there is no canonical definition to state claims against.
-/

/-! ## A208025.P2467018902148751273

`A208028(Δ[A264443(n)])`
-/

namespace A208025.P2467018902148751273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (f1 (n + 1) - f1 n).toNat

end

end A208025.P2467018902148751273

/-! ## A208025.P17595100596832339408

`A208028(A046691(n+3))`
-/

namespace A208025.P17595100596832339408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A046691 (n + 3)).toNat

end

end A208025.P17595100596832339408

/-! ## A208025.P5184593549612377888

`A208028(Δ[A023545(n+1)])`
-/

namespace A208025.P5184593549612377888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (f1 (n + 1) - f1 n).toNat

end

end A208025.P5184593549612377888

/-! ## A208025.P16940881703963948126

`A208028(Δ[A111396(n)]-1)`
-/

namespace A208025.P16940881703963948126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (f1 (n + 1) - f1 n - 1).toNat

end

end A208025.P16940881703963948126

/-! ## A208025.P15990103410508462436

`A208028(A055998(n+3)-1)`
-/

namespace A208025.P15990103410508462436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A055998 (n + 3) - 1).toNat

end

end A208025.P15990103410508462436

/-!
# A208026: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208026, there is no canonical definition to state claims against.
-/

/-! ## A208026.P15883815292855288795

`A208028(∑[n+6]+10)`
-/

namespace A208026.P15883815292855288795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A208026.P15883815292855288795

/-! ## A208026.P4649213767905886313

`A208028(A052905(n+3))%A215723(3*n+5)`
-/

namespace A208026.P4649213767905886313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208028 (A052905 (n + 3)).toNat) (A215723 (3 * n + 5))

end

end A208026.P4649213767905886313

/-!
# A208027: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208027, there is no canonical definition to state claims against.
-/

/-! ## A208027.P9019904047618432345

`A208028(A055999(n+4))`
-/

namespace A208027.P9019904047618432345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A055999 (n + 4)).toNat

end

end A208027.P9019904047618432345

/-! ## A208027.P6337894846061252999

`A208028(eq[4, A219347(n)])`
-/

namespace A208027.P6337894846061252999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208027.P6337894846061252999

/-! ## A208027.P8383818951300436514

`A208028(eq[6, A193592(n)])`
-/

namespace A208027.P8383818951300436514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208027.P8383818951300436514

/-! ## A208027.P398590105181629529

`A208028(eq[10, A185782(n+1)])`
-/

namespace A208027.P398590105181629529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208027.P398590105181629529

/-! ## A208027.P11712810014178003663

`A208028(eq[7, A200370(n+1)])`
-/

namespace A208027.P11712810014178003663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208027.P11712810014178003663

/-!
# A208028: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208028, there is no canonical definition to state claims against.
-/

/-! ## A208028.P16700463643862562434

`or(A208420(n+1), A210709(A048379(n)))`
-/

namespace A208028.P16700463643862562434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A208420 (n + 1)) (A210709 (A048379 n).toNat)

end

end A208028.P16700463643862562434

/-! ## A208028.P17839013797023751759

`A210709(A067747(n+1))+A208420(n+1)`
-/

namespace A208028.P17839013797023751759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (A067747 (n + 1)).toNat + A208420 (n + 1)

end

end A208028.P17839013797023751759

/-! ## A208028.P14913328829503412571

`A210709(n+11)+A208420(n+1)`
-/

namespace A208028.P14913328829503412571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (n + 11) + A208420 (n + 1)

end

end A208028.P14913328829503412571

/-! ## A208028.P4763727593765443496

`A208420(C(A358373(n+1), n))`
-/

namespace A208028.P4763727593765443496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (Nat.choose (A358373 (n + 1)).toNat n)

end

end A208028.P4763727593765443496

/-! ## A208028.P10989137717138561813

`A208420(ceil(sqrt(A157615(n+1))))`
-/

namespace A208028.P10989137717138561813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 ⌈Real.sqrt (A157615 (n + 1) : ℝ)⌉.toNat

end

end A208028.P10989137717138561813

/-!
# A208029: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208029, the canonical program `A208029.P17493253820095879253` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208029 has offset 1).

The definition of A208029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208029.P17493253820095879253

`ogf((9+63x+18x^2-90x^3)/(1-2x-11x^2-2x^3+10x^4))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208029

/-- `ogf((9+63x+18x^2-90x^3)/(1-2x-11x^2-2x^3+10x^4))` -/
def P17493253820095879253.Spec : Prop :=
  ∀ n, P17493253820095879253.a n = A208029 (n + 1)

theorem P17493253820095879253.correct : P17493253820095879253.Spec := by
  intro n
  simp only [A208029, Nat.add_sub_cancel]

end A208029

/-! ## A208029.P8869631701315539318

`A208028(A052905(n)+9)`
-/

namespace A208029.P8869631701315539318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A052905 n + 9).toNat

end

end A208029.P8869631701315539318

namespace A208029

/-- `A208028(A052905(n)+9)` -/
def P8869631701315539318.Spec : Prop :=
  ∀ n, P8869631701315539318.a n = A208029 (n + 1)

end A208029

/-! ## A208029.P9397008212321701053

`A208028(A055999(n)+10)`
-/

namespace A208029.P9397008212321701053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A055999 n + 10).toNat

end

end A208029.P9397008212321701053

namespace A208029

/-- `A208028(A055999(n)+10)` -/
def P9397008212321701053.Spec : Prop :=
  ∀ n, P9397008212321701053.a n = A208029 (n + 1)

end A208029

/-! ## A208029.P13773485349002785569

`A208028(Δ[A008778(n)]+6)`
-/

namespace A208029.P13773485349002785569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (f1 (n + 1) - f1 n + 6).toNat

end

end A208029.P13773485349002785569

namespace A208029

/-- `A208028(Δ[A008778(n)]+6)` -/
def P13773485349002785569.Spec : Prop :=
  ∀ n, P13773485349002785569.a n = A208029 (n + 1)

end A208029

/-! ## A208029.P7966836478946335192

`A208028(A167614(n+2)+1)`
-/

namespace A208029.P7966836478946335192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A167614 (n + 2) + 1).toNat

end

end A208029.P7966836478946335192

namespace A208029

/-- `A208028(A167614(n+2)+1)` -/
def P7966836478946335192.Spec : Prop :=
  ∀ n, P7966836478946335192.a n = A208029 (n + 1)

end A208029

/-!
# A208030: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208030, there is no canonical definition to state claims against.
-/

/-! ## A208030.P5036185173794715935

`A208028(A167499(n+3))`
-/

namespace A208030.P5036185173794715935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A167499 (n + 3)).toNat

end

end A208030.P5036185173794715935

/-! ## A208030.P11602907433598465850

`A208028(A155212(n)+13)`
-/

namespace A208030.P11602907433598465850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A155212 n + 13).toNat

end

end A208030.P11602907433598465850

/-! ## A208030.P11473773325125768083

`A208028(A000124(n+4)+4)`
-/

namespace A208030.P11473773325125768083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A000124 (n + 4) + 4).toNat

end

end A208030.P11473773325125768083

/-! ## A208030.P16273318012455800493

`A208028(A000217(n+4)+5)`
-/

namespace A208030.P16273318012455800493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A000217 (n + 4) + 5).toNat

end

end A208030.P16273318012455800493

/-! ## A208030.P2689954340570575480

`A208028(Δ[A111396(n)]-(n-3))`
-/

namespace A208030.P2689954340570575480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (f1 (n + 1) - f1 n - ((n : ℤ) - 3)).toNat

end

end A208030.P2689954340570575480

/-!
# A208031: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208031, there is no canonical definition to state claims against.
-/

/-! ## A208031.P14832297651896948064

`A208028(Δ[A264443(n)]+10)`
-/

namespace A208031.P14832297651896948064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (f1 (n + 1) - f1 n + 10).toNat

end

end A208031.P14832297651896948064

/-! ## A208031.P8695473141195642849

`A208028(A167499(n+4)+1)`
-/

namespace A208031.P8695473141195642849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A167499 (n + 4) + 1).toNat

end

end A208031.P8695473141195642849

/-! ## A208031.P14663155276346625625

`A208028(A000124(n+5)+5)`
-/

namespace A208031.P14663155276346625625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A000124 (n + 5) + 5).toNat

end

end A208031.P14663155276346625625

/-! ## A208031.P9727876851616246171

`A208028(A000217(n+5)+6)`
-/

namespace A208031.P9727876851616246171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A000217 (n + 5) + 6).toNat

end

end A208031.P9727876851616246171

/-! ## A208031.P8481883403256837880

`A208028(A161680(n+6)+6)`
-/

namespace A208031.P8481883403256837880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A161680 (n + 6) + 6).toNat

end

end A208031.P8481883403256837880

/-!
# A208032: Number of 7 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208032, there is no canonical definition to state claims against.
-/

/-! ## A208032.P4952900208722490132

`A208028(A167499(n+5)+2)`
-/

namespace A208032.P4952900208722490132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A167499 (n + 5) + 2).toNat

end

end A208032.P4952900208722490132

/-! ## A208032.P6048339593401410296

`A208028(A133263(n+6)+5)`
-/

namespace A208032.P6048339593401410296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A133263 (n + 6) + 5).toNat

end

end A208032.P6048339593401410296

/-! ## A208032.P9384605846862950819

`A208028(A000096(n+5)+8)`
-/

namespace A208032.P9384605846862950819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A000096 (n + 5) + 8).toNat

end

end A208032.P9384605846862950819

/-! ## A208032.P13055399379627128278

`A208028(A000217(n+6)+7)`
-/

namespace A208032.P13055399379627128278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (A000217 (n + 6) + 7).toNat

end

end A208032.P13055399379627128278

/-! ## A208032.P13817211609734325356

`A208028(eq[6, A002262(n)]+1)`
-/

namespace A208032.P13817211609734325356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A208032.P13817211609734325356

/-!
# A208033: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208033, there is no canonical definition to state claims against.
-/

/-! ## A208033.P10222498434385272733

`A208039(∑[4*n]+1)`
-/

namespace A208033.P10222498434385272733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208033.P10222498434385272733

/-! ## A208033.P14051478664723323875

`gcd(A000038(n), A208039(A001844(n)))`
-/

namespace A208033.P14051478664723323875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A208039 (A001844 n).toNat)

end

end A208033.P14051478664723323875

/-! ## A208033.P12771445515563348866

`A324179(n+1)+A208039(A001844(n))`
-/

namespace A208033.P12771445515563348866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (n + 1) + A208039 (A001844 n).toNat

end

end A208033.P12771445515563348866

/-! ## A208033.P2526221049479560090

`lcm(A034947(n+1), A208039(A001844(n)))`
-/

namespace A208033.P2526221049479560090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A208039 (A001844 n).toNat)

end

end A208033.P2526221049479560090

/-! ## A208033.P2257549173560719227

`A000045(A014963(2*(n+1)))*A208039(A001844(n))`
-/

namespace A208033.P2257549173560719227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A014963 (2 * (n + 1))).toNat * A208039 (A001844 n).toNat

end

end A208033.P2257549173560719227

/-!
# A208034: G.f.: exp( Sum_{n>=1} 2*Pell(n)^2 * x^n/n ), where Pell(n) = A000129(n).

The programs for A208034, there is no canonical definition to state claims against.
-/

/-! ## A208034.P7021588612172788244

`A121828(∑[A137635(n)]+1)`
-/

namespace A208034.P7021588612172788244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121828 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A208034.P7021588612172788244

/-! ## A208034.P15118353340762805866

`A315314(a(n-1))-A329562(n)` with `a(0)=1, a(1)=2`
-/

namespace A208034.P15118353340762805866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A315314 (a (n - 1)).toNat - A329562 n

end

end A208034.P15118353340762805866

/-!
# A208035: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208035, the canonical program `A208035.P3629682806518854192` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208035 has offset 1).

The definition of A208035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208035.P17034435004771160884

`ogf((9+63x+100x^2+86x^3-17x^4-9x^5-16x^6)/(1-2x-3x^2-6x^3+x^4+x^6))`
-/

namespace A208035.P17034435004771160884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 63, 100, 86, -17, -9, -16] [1, -2, -3, -6, 1, 0, 1] n

end

end A208035.P17034435004771160884

namespace A208035

/-- `ogf((9+63x+100x^2+86x^3-17x^4-9x^5-16x^6)/(1-2x-3x^2-6x^3+x^4+x^6))` -/
def P17034435004771160884.Spec : Prop :=
  ∀ n, P17034435004771160884.a n = A208035 (n + 1)

end A208035

/-! ## A208035.P17312196351529413253

`A141583(ceil(sqrt(∑[2*n]))+3)`
-/

namespace A208035.P17312196351529413253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141583 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 3).toNat

end

end A208035.P17312196351529413253

namespace A208035

/-- `A141583(ceil(sqrt(∑[2*n]))+3)` -/
def P17312196351529413253.Spec : Prop :=
  ∀ n, P17312196351529413253.a n = A208035 (n + 1)

end A208035

/-! ## A208035.P3629682806518854192

`A000213(A266977(2*n)+2)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208035

/-- `A000213(A266977(2*n)+2)²` -/
def P3629682806518854192.Spec : Prop :=
  ∀ n, P3629682806518854192.a n = A208035 (n + 1)

theorem P3629682806518854192.correct : P3629682806518854192.Spec := by
  intro n
  simp only [A208035, Nat.add_sub_cancel]

end A208035

/-! ## A208035.P7157927530972538040

`(A317200(n+1)+A027084(n+3))²`
-/

namespace A208035.P7157927530972538040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A317200 (n + 1) + A027084 (n + 3)) ^ 2

end

end A208035.P7157927530972538040

namespace A208035

/-- `(A317200(n+1)+A027084(n+3))²` -/
def P7157927530972538040.Spec : Prop :=
  ∀ n, P7157927530972538040.a n = A208035 (n + 1)

end A208035

/-! ## A208035.P5259843524260532656

`A208023(n+1)/A207170(n+1)*A208023(n+1)`
-/

namespace A208035.P5259843524260532656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208023 (n + 1) : ℚ) / (A207170 (n + 1) : ℚ) * (A208023 (n + 1) : ℚ)

end

end A208035.P5259843524260532656

namespace A208035

/-- `A208023(n+1)/A207170(n+1)*A208023(n+1)` -/
def P5259843524260532656.Spec : Prop :=
  ∀ n, P5259843524260532656.a n = (A208035 (n + 1) : ℚ)

end A208035

/-! ## A208035.P10990939231091734227

`A208036(n+1)/A208037(n+1)*A208036(n+1)`
-/

namespace A208035.P10990939231091734227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208036 (n + 1) : ℚ) / (A208037 (n + 1) : ℚ) * (A208036 (n + 1) : ℚ)

end

end A208035.P10990939231091734227

namespace A208035

/-- `A208036(n+1)/A208037(n+1)*A208036(n+1)` -/
def P10990939231091734227.Spec : Prop :=
  ∀ n, P10990939231091734227.a n = (A208035 (n + 1) : ℚ)

end A208035

/-! ## A208035.P15204703354371604217

`(A208023(n+1)/A208024(n+1))²*A208037(n+1)`
-/

namespace A208035.P15204703354371604217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A208023 (n + 1) : ℚ) / (A208024 (n + 1) : ℚ)) ^ 2 * (A208037 (n + 1) : ℚ)

end

end A208035.P15204703354371604217

namespace A208035

/-- `(A208023(n+1)/A208024(n+1))²*A208037(n+1)` -/
def P15204703354371604217.Spec : Prop :=
  ∀ n, P15204703354371604217.a n = (A208035 (n + 1) : ℚ)

end A208035

/-! ## A208035.P16424136968111109478

`A208023(n+1)²/A207170(n+1)`
-/

namespace A208035.P16424136968111109478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208023 (n + 1) ^ 2 : ℚ) / (A207170 (n + 1) : ℚ)

end

end A208035.P16424136968111109478

namespace A208035

/-- `A208023(n+1)²/A207170(n+1)` -/
def P16424136968111109478.Spec : Prop :=
  ∀ n, P16424136968111109478.a n = (A208035 (n + 1) : ℚ)

end A208035

/-! ## A208035.P11610246729535407274

`A208036(n+1)²/A208037(n+1)`
-/

namespace A208035.P11610246729535407274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208036 (n + 1) ^ 2 : ℚ) / (A208037 (n + 1) : ℚ)

end

end A208035.P11610246729535407274

namespace A208035

/-- `A208036(n+1)²/A208037(n+1)` -/
def P11610246729535407274.Spec : Prop :=
  ∀ n, P11610246729535407274.a n = (A208035 (n + 1) : ℚ)

end A208035

/-!
# A208036: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208036, there is no canonical definition to state claims against.
-/

/-! ## A208036.P8977885910709364876

`sqrt(A208035(n+1))*sqrt(A208037(n+1))`
-/

namespace A208036.P8977885910709364876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A208035 (n + 1) : ℝ) * Real.sqrt (A208037 (n + 1) : ℝ)

end

end A208036.P8977885910709364876

/-! ## A208036.P3734555405336730101

`A208023(n+1)/A208024(n+1)*A208037(n+1)`
-/

namespace A208036.P3734555405336730101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208023 (n + 1) : ℚ) / (A208024 (n + 1) : ℚ) * (A208037 (n + 1) : ℚ)

end

end A208036.P3734555405336730101

/-! ## A208036.P11540504242856523631

`sqrt(A208035(n+1)*A208037(n+1))`
-/

namespace A208036.P11540504242856523631
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A208035 (n + 1) * A208037 (n + 1) : ℝ)

end

end A208036.P11540504242856523631

/-! ## A208036.P5500758900331801480

`A208039(A046691(n+3))`
-/

namespace A208036.P5500758900331801480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (A046691 (n + 3)).toNat

end

end A208036.P5500758900331801480

/-! ## A208036.P15502535730166544565

`A208039(eq[4, A193592(n)])`
-/

namespace A208036.P15502535730166544565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208036.P15502535730166544565

/-!
# A208037: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208037, there is no canonical definition to state claims against.
-/

/-! ## A208037.P669528421244588752

`A208024(n+1)/A207170(n+1)*A208024(n+1)`
-/

namespace A208037.P669528421244588752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208024 (n + 1) : ℚ) / (A207170 (n + 1) : ℚ) * (A208024 (n + 1) : ℚ)

end

end A208037.P669528421244588752

/-! ## A208037.P4009701887108204164

`A208036(n+1)/A208035(n+1)*A208036(n+1)`
-/

namespace A208037.P4009701887108204164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208036 (n + 1) : ℚ) / (A208035 (n + 1) : ℚ) * (A208036 (n + 1) : ℚ)

end

end A208037.P4009701887108204164

/-! ## A208037.P9321265212857282663

`A207170(n+1)/(A208023(n+1)/A208036(n+1))²`
-/

namespace A208037.P9321265212857282663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207170 (n + 1) : ℚ) / ((A208023 (n + 1) : ℚ) / (A208036 (n + 1) : ℚ)) ^ 2

end

end A208037.P9321265212857282663

/-! ## A208037.P11223448847186927783

`A208036(n+1)/A141583(A009005(n+1))*A208036(n+1)`
-/

namespace A208037.P11223448847186927783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208036 (n + 1) : ℚ) / (A141583 (A009005 (n + 1)).toNat : ℚ) * (A208036 (n + 1) : ℚ)

end

end A208037.P11223448847186927783

/-! ## A208037.P9268651123825569134

`A208024(n+1)²/A207170(n+1)`
-/

namespace A208037.P9268651123825569134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208024 (n + 1) ^ 2 : ℚ) / (A207170 (n + 1) : ℚ)

end

end A208037.P9268651123825569134

/-! ## A208037.P8678483039935825565

`A208036(n+1)²/A208035(n+1)`
-/

namespace A208037.P8678483039935825565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208036 (n + 1) ^ 2 : ℚ) / (A208035 (n + 1) : ℚ)

end

end A208037.P8678483039935825565

/-! ## A208037.P9689805610023907429

`A208036(n+1)²/A141583(A009005(n+1))`
-/

namespace A208037.P9689805610023907429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208036 (n + 1) ^ 2 : ℚ) / (A141583 (A009005 (n + 1)).toNat : ℚ)

end

end A208037.P9689805610023907429

/-!
# A208038: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208038, there is no canonical definition to state claims against.
-/

/-! ## A208038.P6426373488116894467

`A208024(n+1)/A207170(n+1)*A208025(n+1)`
-/

namespace A208038.P6426373488116894467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208024 (n + 1) : ℚ) / (A207170 (n + 1) : ℚ) * (A208025 (n + 1) : ℚ)

end

end A208038.P6426373488116894467

/-! ## A208038.P11073253733236094594

`A208025(n+1)/A208023(n+1)*A208036(n+1)`
-/

namespace A208038.P11073253733236094594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208025 (n + 1) : ℚ) / (A208023 (n + 1) : ℚ) * (A208036 (n + 1) : ℚ)

end

end A208038.P11073253733236094594

/-! ## A208038.P2909581786626360948

`A208039(A055999(n+4))`
-/

namespace A208038.P2909581786626360948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (A055999 (n + 4)).toNat

end

end A208038.P2909581786626360948

/-! ## A208038.P17494227479808776806

`A208039(eq[6, A193592(n)])`
-/

namespace A208038.P17494227479808776806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208038.P17494227479808776806

/-! ## A208038.P9394946073257189903

`A208039(eq[10, A185782(n+1)])`
-/

namespace A208038.P9394946073257189903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208038.P9394946073257189903

/-!
# A208039: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208039, there is no canonical definition to state claims against.
-/

/-! ## A208039.P8428419490809747669

`or(A207908(n+1), A210709(A048379(n)))`
-/

namespace A208039.P8428419490809747669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A207908 (n + 1)) (A210709 (A048379 n).toNat)

end

end A208039.P8428419490809747669

/-! ## A208039.P16986017481116063285

`A210709(A067747(n+1))+A207908(n+1)`
-/

namespace A208039.P16986017481116063285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (A067747 (n + 1)).toNat + A207908 (n + 1)

end

end A208039.P16986017481116063285

/-! ## A208039.P12135189310373187579

`A210709(n+11)+A207908(n+1)`
-/

namespace A208039.P12135189310373187579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (n + 11) + A207908 (n + 1)

end

end A208039.P12135189310373187579

/-!
# A208040: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208040, there is no canonical definition to state claims against.
-/

/-! ## A208040.P18314027796572106697

`A208039(∑[n+3]+7)`
-/

namespace A208040.P18314027796572106697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A208040.P18314027796572106697

/-! ## A208040.P11488682853364217798

`or(1, A208039(A000217(n+3)+4))`
-/

namespace A208040.P11488682853364217798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A208039 (A000217 (n + 3) + 4).toNat)

end

end A208040.P11488682853364217798

/-! ## A208040.P973744048092630762

`A208039(A000217(n+3)+4)+A000007(n+1)`
-/

namespace A208040.P973744048092630762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (A000217 (n + 3) + 4).toNat + A000007 (n + 1)

end

end A208040.P973744048092630762

/-! ## A208040.P6229690193584327843

`A007318(A000096(n))*A208039(A000217(n+3)+4)`
-/

namespace A208040.P6229690193584327843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A208039 (A000217 (n + 3) + 4).toNat

end

end A208040.P6229690193584327843

/-! ## A208040.P13781777623885007526

`A007318(A000217(n))*A208039(A000217(n+3)+4)`
-/

namespace A208040.P13781777623885007526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A208039 (A000217 (n + 3) + 4).toNat

end

end A208040.P13781777623885007526

/-!
# A208041: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208041, there is no canonical definition to state claims against.
-/

/-! ## A208041.P10386834812598311133

`A208039(A167499(n+3))`
-/

namespace A208041.P10386834812598311133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (A167499 (n + 3)).toNat

end

end A208041.P10386834812598311133

/-! ## A208041.P586572731162666400

`A208039(eq[7, A066657(n)])`
-/

namespace A208041.P586572731162666400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208041.P586572731162666400

/-! ## A208041.P89748503810540534

`A208039(A055998(n+2)+8)`
-/

namespace A208041.P89748503810540534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (A055998 (n + 2) + 8).toNat

end

end A208041.P89748503810540534

/-! ## A208041.P9713552379915276034

`A208039(∑[A009005(n+1)]+12)`
-/

namespace A208041.P9713552379915276034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (∑ j ∈ Finset.range (n + 1), f1 j + 12).toNat

end

end A208041.P9713552379915276034

/-! ## A208041.P3480665605981097725

`A208039(A000124(n+5)-(n+1))`
-/

namespace A208041.P3480665605981097725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A208041.P3480665605981097725

/-!
# A208042: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208042, there is no canonical definition to state claims against.
-/

/-! ## A208042.P4435077665051497970

`A208039(A133263(n+5)+4)`
-/

namespace A208042.P4435077665051497970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (A133263 (n + 5) + 4).toNat

end

end A208042.P4435077665051497970

/-! ## A208042.P6812171675243421563

`A208039(A000217(n+5)+6)`
-/

namespace A208042.P6812171675243421563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (A000217 (n + 5) + 6).toNat

end

end A208042.P6812171675243421563

/-! ## A208042.P18313508070924211913

`A208039(A161680(n+6)+6)`
-/

namespace A208042.P18313508070924211913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (A161680 (n + 6) + 6).toNat

end

end A208042.P18313508070924211913

/-! ## A208042.P4278589332705976829

`A208039(A000124(n+6)-(n+1))`
-/

namespace A208042.P4278589332705976829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A208042.P4278589332705976829

/-! ## A208042.P13230497006510023319

`A208039(A046691(n+5)-A005408(n+1))`
-/

namespace A208042.P13230497006510023319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (A046691 (n + 5) - A005408 (n + 1)).toNat

end

end A208042.P13230497006510023319

/-!
# A208043: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A208043, there is no canonical definition to state claims against.
-/

/-! ## A208043.P1655344363013647252

`A208039(A056119(n)+28)`
-/

namespace A208043.P1655344363013647252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (A056119 n + 28).toNat

end

end A208043.P1655344363013647252

/-! ## A208043.P5671749777995828168

`A208039(eq[11, A066657(n)])`
-/

namespace A208043.P5671749777995828168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208043.P5671749777995828168

/-! ## A208043.P4305883709997838492

`A208039(A167499(n+5)+2)`
-/

namespace A208043.P4305883709997838492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (A167499 (n + 5) + 2).toNat

end

end A208043.P4305883709997838492

/-! ## A208043.P17609349896607703353

`A208039(eq[8, A131818(n+1)])`
-/

namespace A208043.P17609349896607703353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208043.P17609349896607703353

/-! ## A208043.P17755733112170209423

`A208039(A000096(n+6)-(n-1))`
-/

namespace A208043.P17755733112170209423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (A000096 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A208043.P17755733112170209423

/-!
# A208044: Number of n X 3 0..3 arrays with new values 0..3 introduced in row major order and no element equal to any horizontal, vertical or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208044, the canonical program `A208044.P4621433184922300364` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208044 has offset 1).

The definition of A208044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208044.P13854651339401587186

`ogf((2-6x+4x^2)/(1-7x+8x^2))`
-/

namespace A208044.P13854651339401587186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6, 4] [1, -7, 8] n

end

end A208044.P13854651339401587186

namespace A208044

/-- `ogf((2-6x+4x^2)/(1-7x+8x^2))` -/
def P13854651339401587186.Spec : Prop :=
  ∀ n, P13854651339401587186.a n = A208044 (n + 1)

end A208044

/-! ## A208044.P4621433184922300364

`7*a(n-1)-8*a(n-2)` with `a(0)=2, a(1)=8, a(2)=44`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208044

/-- `7*a(n-1)-8*a(n-2)` -/
def P4621433184922300364.Spec : Prop :=
  ∀ n, P4621433184922300364.a n = A208044 (n + 1)

theorem P4621433184922300364.correct : P4621433184922300364.Spec := by
  intro n
  simp only [A208044, Nat.add_sub_cancel]

end A208044

/-! ## A208044.P4835906213773089231

`A208050(∑[n+2]+4)`
-/

namespace A208044.P4835906213773089231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208044.P4835906213773089231

namespace A208044

/-- `A208050(∑[n+2]+4)` -/
def P4835906213773089231.Spec : Prop :=
  ∀ n, P4835906213773089231.a n = A208044 (n + 1)

end A208044

/-! ## A208044.P10786095779700134846

`lcm(2, A208050(A167614(n+1)))`
-/

namespace A208044.P10786095779700134846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208050 (A167614 (n + 1)).toNat)

end

end A208044.P10786095779700134846

namespace A208044

/-- `lcm(2, A208050(A167614(n+1)))` -/
def P10786095779700134846.Spec : Prop :=
  ∀ n, (P10786095779700134846.a n : ℤ) = A208044 (n + 1)

end A208044

/-! ## A208044.P4642601922827886772

`A208050(A167614(n+1))*A291168(n)`
-/

namespace A208044.P4642601922827886772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (A167614 (n + 1)).toNat * A291168 n

end

end A208044.P4642601922827886772

namespace A208044

/-- `A208050(A167614(n+1))*A291168(n)` -/
def P4642601922827886772.Spec : Prop :=
  ∀ n, P4642601922827886772.a n = A208044 (n + 1)

end A208044

/-!
# A208045: Number of n X n 0..3 arrays with new values 0..3 introduced in row major order and no element equal to any horizontal, vertical or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208045, there is no canonical definition to state claims against.
-/

/-! ## A208045.P2418039952123914601

`A208050(2*(n+1)²-2*(n+1)+1)`
-/

namespace A208045.P2418039952123914601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A208045.P2418039952123914601

/-! ## A208045.P7908320265703101183

`ceil(A068271(n+1)/6)`
-/

namespace A208045.P7908320265703101183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068271 (n + 1) : ℚ) / 6⌉

end

end A208045.P7908320265703101183

/-! ## A208045.P7576651981968874776

`record[gcd(A037012(n), A208050(n+1))]`
-/

namespace A208045.P7576651981968874776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A208050 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208045.P7576651981968874776

/-! ## A208045.P16090016785357998178

`lcm(A001316(n), A208050(A001844(n)))`
-/

namespace A208045.P16090016785357998178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A208050 (A001844 n).toNat)

end

end A208045.P16090016785357998178

/-! ## A208045.P9345325563433158759

`or(A000007(n), A208050(A001844(n)))`
-/

namespace A208045.P9345325563433158759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A208050 (A001844 n).toNat)

end

end A208045.P9345325563433158759

/-!
# A208046: Number of n X 4 0..3 arrays with new values 0..3 introduced in row major order and no element equal to any horizontal, vertical or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208046, the canonical program `A208046.P15248587618961967649` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208046 has offset 1).

The definition of A208046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208046.P15248587618961967649

`ogf((5-28x+60x^2-84x^3+32x^4)/(1-12x+40x^2-68x^3+64x^4))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208046

/-- `ogf((5-28x+60x^2-84x^3+32x^4)/(1-12x+40x^2-68x^3+64x^4))` -/
def P15248587618961967649.Spec : Prop :=
  ∀ n, P15248587618961967649.a n = A208046 (n + 1)

theorem P15248587618961967649.correct : P15248587618961967649.Spec := by
  intro n
  simp only [A208046, Nat.add_sub_cancel]

end A208046

/-! ## A208046.P15510950556228824776

`A208050(A374004(n+1))`
-/

namespace A208046.P15510950556228824776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (A374004 (n + 1)).toNat

end

end A208046.P15510950556228824776

namespace A208046

/-- `A208050(A374004(n+1))` -/
def P15510950556228824776.Spec : Prop :=
  ∀ n, P15510950556228824776.a n = A208046 (n + 1)

end A208046

/-! ## A208046.P15126697477326712381

`A208050(A052905(n)+9)`
-/

namespace A208046.P15126697477326712381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (A052905 n + 9).toNat

end

end A208046.P15126697477326712381

namespace A208046

/-- `A208050(A052905(n)+9)` -/
def P15126697477326712381.Spec : Prop :=
  ∀ n, P15126697477326712381.a n = A208046 (n + 1)

end A208046

/-! ## A208046.P2617602403663207107

`A208050(A055999(n)+10)`
-/

namespace A208046.P2617602403663207107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (A055999 n + 10).toNat

end

end A208046.P2617602403663207107

namespace A208046

/-- `A208050(A055999(n)+10)` -/
def P2617602403663207107.Spec : Prop :=
  ∀ n, P2617602403663207107.a n = A208046 (n + 1)

end A208046

/-! ## A208046.P782371444599677055

`A208050(A167614(n+2)+1)`
-/

namespace A208046.P782371444599677055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (A167614 (n + 2) + 1).toNat

end

end A208046.P782371444599677055

namespace A208046

/-- `A208050(A167614(n+2)+1)` -/
def P782371444599677055.Spec : Prop :=
  ∀ n, P782371444599677055.a n = A208046 (n + 1)

end A208046

/-!
# A208047: Number of nX5 0..3 arrays with new values 0..3 introduced in row major order and no element equal to any horizontal, vertical or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208047, there is no canonical definition to state claims against.
-/

/-! ## A208047.P6986932081784919377

`A208050(A374005(n+1))`
-/

namespace A208047.P6986932081784919377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (A374005 (n + 1)).toNat

end

end A208047.P6986932081784919377

/-! ## A208047.P10437303048964062251

`A208050(A155212(n)+13)`
-/

namespace A208047.P10437303048964062251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (A155212 n + 13).toNat

end

end A208047.P10437303048964062251

/-! ## A208047.P13878340345448819328

`A208050(A000124(n+4)+4)`
-/

namespace A208047.P13878340345448819328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (A000124 (n + 4) + 4).toNat

end

end A208047.P13878340345448819328

/-! ## A208047.P4288105176588576110

`A208050(eq[6, A131818(n+1)])`
-/

namespace A208047.P4288105176588576110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208047.P4288105176588576110

/-! ## A208047.P15197298720348028768

`A208050(A133263(n+6)-7-Δ[n²])`
-/

namespace A208047.P15197298720348028768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (A133263 (n + 6) - 7 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A208047.P15197298720348028768

/-!
# A208048: Number of nX6 0..3 arrays with new values 0..3 introduced in row major order and no element equal to any horizontal, vertical or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208048, there is no canonical definition to state claims against.
-/

/-! ## A208048.P514444503468091507

`A208050(A374007(n+1))`
-/

namespace A208048.P514444503468091507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (A374007 (n + 1)).toNat

end

end A208048.P514444503468091507

/-! ## A208048.P12773049101909860426

`A208050(A166136(n+4))`
-/

namespace A208048.P12773049101909860426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (A166136 (n + 4)).toNat

end

end A208048.P12773049101909860426

/-! ## A208048.P12103993929037786570

`A208050(eq[7, A131818(n+1)])`
-/

namespace A208048.P12103993929037786570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208048.P12103993929037786570

/-! ## A208048.P12294683375054071220

`A208050(A052905(n+3))`
-/

namespace A208048.P12294683375054071220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (A052905 (n + 3)).toNat

end

end A208048.P12294683375054071220

/-! ## A208048.P11081833172898975545

`A208050(eq[3, A219347(n)])`
-/

namespace A208048.P11081833172898975545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208048.P11081833172898975545

/-!
# A208049: Number of nX7 0..3 arrays with new values 0..3 introduced in row major order and no element equal to any horizontal, vertical or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208049, there is no canonical definition to state claims against.
-/

/-! ## A208049.P17366801621744842318

`A208050(A374008(n+1))`
-/

namespace A208049.P17366801621744842318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (A374008 (n + 1)).toNat

end

end A208049.P17366801621744842318

/-! ## A208049.P18079406530539697836

`A208050(eq[8, A131818(n+1)])`
-/

namespace A208049.P18079406530539697836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208049.P18079406530539697836

/-! ## A208049.P5275870140173240200

`A208050(A055999(n+4))`
-/

namespace A208049.P5275870140173240200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (A055999 (n + 4)).toNat

end

end A208049.P5275870140173240200

/-! ## A208049.P12583508010410729710

`A208050(eq[4, A219347(n)])`
-/

namespace A208049.P12583508010410729710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208049.P12583508010410729710

/-! ## A208049.P7141272272173649949

`A208050(eq[6, A193592(n)])`
-/

namespace A208049.P7141272272173649949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208050 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208049.P7141272272173649949

/-!
# A208050: T(n,k)=Number of nXk 0..3 arrays with new values 0..3 introduced in row major order and no element equal to any horizontal, vertical or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208050, there is no canonical definition to state claims against.
-/

/-! ## A208050.P7937349593473011679

`A160755(A155865(n)*A346500(n))`
-/

namespace A208050.P7937349593473011679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A155865 n * A346500 n).toNat

end

end A208050.P7937349593473011679

/-!
# A208051: Number of n X 3 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal, vertical or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208051, there is no canonical definition to state claims against.
-/

/-! ## A208051.P1983618412923047784

`A216461(2*(n+1))`
-/

namespace A208051.P1983618412923047784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216461 (2 * (n + 1))

end

end A208051.P1983618412923047784

/-! ## A208051.P2512357728397157097

`A216613(2*(n+1))`
-/

namespace A208051.P2512357728397157097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216613 (2 * (n + 1))

end

end A208051.P2512357728397157097

/-! ## A208051.P16917395548825898238

`record[A216613((n+1)/(or(n, n+1)-n)+1)]`
-/

namespace A208051.P16917395548825898238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216613 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208051.P16917395548825898238

/-! ## A208051.P14202513219785203828

`record[A216613(2^(log2(n+1)-val(n+1, 2))+1)]`
-/

namespace A208051.P14202513219785203828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216613 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208051.P14202513219785203828

/-! ## A208051.P14247376528088793649

`record[A216613(A060819(n+1)+1)]`
-/

namespace A208051.P14247376528088793649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216613 (A060819 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208051.P14247376528088793649

/-!
# A208052: Number of n X 4 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal, vertical or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208052, there is no canonical definition to state claims against.
-/

/-! ## A208052.P10846498063014355982

`A208054(A141214(n)+7)`
-/

namespace A208052.P10846498063014355982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208054 (A141214 n + 7).toNat

end

end A208052.P10846498063014355982

/-! ## A208052.P4528705754505285369

`A208054(A167614(n+2)+1)`
-/

namespace A208052.P4528705754505285369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208054 (A167614 (n + 2) + 1).toNat

end

end A208052.P4528705754505285369

/-! ## A208052.P11974932195011375493

`A208054(A000096(n+2)+5)`
-/

namespace A208052.P11974932195011375493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208054 (A000096 (n + 2) + 5).toNat

end

end A208052.P11974932195011375493

/-! ## A208052.P11584137572067964157

`A208054(A141214(n+1))`
-/

namespace A208052.P11584137572067964157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208054 (A141214 (n + 1)).toNat

end

end A208052.P11584137572067964157

/-! ## A208052.P2701477835310776102

`A208054(A055998(n+2))`
-/

namespace A208052.P2701477835310776102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208054 (A055998 (n + 2)).toNat

end

end A208052.P2701477835310776102

/-!
# A208053: Number of n X 5 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal, vertical or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208053, there is no canonical definition to state claims against.
-/

/-! ## A208053.P9321888337755520880

`A208054(Δ[A264443(n)])`
-/

namespace A208053.P9321888337755520880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208054 (f1 (n + 1) - f1 n).toNat

end

end A208053.P9321888337755520880

/-!
# A208054: T(n,k) = Number of n X k nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal, vertical or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208054, there is no canonical definition to state claims against.
-/

/-! ## A208054.P9332429865586507302

`A104725(3^A085201(n))`
-/

namespace A208054.P9332429865586507302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A085201 n : ℤ))).toNat

end

end A208054.P9332429865586507302

/-! ## A208054.P7218247119758663241

`A000110(A085201(n)%A001562(n+1))`
-/

namespace A208054.P7218247119758663241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (Int.tmod (A085201 n) (A001562 (n + 1))).toNat

end

end A208054.P7218247119758663241

/-! ## A208054.P16024727846106815739

`A000110(A085201(n))%A179595(3*n+1)`
-/

namespace A208054.P16024727846106815739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000110 (A085201 n).toNat) (A179595 (3 * n + 1))

end

end A208054.P16024727846106815739

/-!
# A208055: G.f.: exp( Sum_{n>=1} 2*Pell(n)^4 * x^n/n ), where Pell(n) = A000129(n).

The programs for A208055, there is no canonical definition to state claims against.
-/

/-! ## A208055.P10054513239521851127

`A248169(n)*A248231(A355494(n))`
-/

namespace A208055.P10054513239521851127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248169 n * A248231 (A355494 n).toNat

end

end A208055.P10054513239521851127

/-!
# A208058: Triangle by rows relating to the factorials, generated from A002260.

The programs for A208058, the canonical program `A208058.P9863792287481975596` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208058 has offset 0).

The definition of A208058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2543 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208058.P16951079419699447334

`T(1-T(n-1,k), T(n-1,k+1))+(row(n)-1)*T(n-1,k)` with `a(0)=1`
-/

namespace A208058.P16951079419699447334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (1 - SequenceMachineLib.triUp a n) (SequenceMachineLib.triUpRight a n) + ((SequenceMachineLib.triRow n : ℤ) - 1) * SequenceMachineLib.triUp a n

end

end A208058.P16951079419699447334

namespace A208058

/-- `T(1-T(n-1,k), T(n-1,k+1))+(row(n)-1)*T(n-1,k)` -/
def P16951079419699447334.Spec : Prop :=
  ∀ n, P16951079419699447334.a n = A208058 n

end A208058

/-! ## A208058.P10146731005147849036

`T(1-T(n-1,k), T(n-1,k+1))-(1-row(n))*T(n-1,k)` with `a(0)=1`
-/

namespace A208058.P10146731005147849036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (1 - SequenceMachineLib.triUp a n) (SequenceMachineLib.triUpRight a n) - (1 - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUp a n

end

end A208058.P10146731005147849036

namespace A208058

/-- `T(1-T(n-1,k), T(n-1,k+1))-(1-row(n))*T(n-1,k)` -/
def P10146731005147849036.Spec : Prop :=
  ∀ n, P10146731005147849036.a n = A208058 n

end A208058

/-! ## A208058.P9863792287481975596

`A162608(A083920(n))/A233543(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208058

/-- `A162608(A083920(n))/A233543(n)` -/
def P9863792287481975596.Spec : Prop :=
  ∀ n, P9863792287481975596.a n = (A208058 n : ℚ)

end A208058

/-! ## A208058.P14199353480217878285

`A002260(n+1)/A003056(n+1)*A094587(n)`
-/

namespace A208058.P14199353480217878285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A003056 (n + 1) : ℚ) * (A094587 n : ℚ)

end

end A208058.P14199353480217878285

namespace A208058

/-- `A002260(n+1)/A003056(n+1)*A094587(n)` -/
def P14199353480217878285.Spec : Prop :=
  ∀ n, P14199353480217878285.a n = (A208058 n : ℚ)

end A208058

/-! ## A208058.P16176973196749273205

`abs(Δ[A271703(n)/A130595(n)])`
-/

namespace A208058.P16176973196749273205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271703 n : ℚ) / (A130595 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A208058.P16176973196749273205

namespace A208058

/-- `abs(Δ[A271703(n)/A130595(n)])` -/
def P16176973196749273205.Spec : Prop :=
  ∀ n, P16176973196749273205.a n = (A208058 n : ℚ)

end A208058

/-! ## A208058.P214906981892721389

`lcm(Δ[A271703(n)/A130595(n)], A054977(n+1))`
-/

namespace A208058.P214906981892721389
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271703 n : ℚ) / (A130595 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) (A054977 (n + 1))

end

end A208058.P214906981892721389

namespace A208058

/-- `lcm(Δ[A271703(n)/A130595(n)], A054977(n+1))` -/
def P214906981892721389.Spec : Prop :=
  ∀ n, (P214906981892721389.a n : ℤ) = A208058 n

end A208058

/-! ## A208058.P13792684962501342711

`Δ[A271703(n)/A130595(n)]²^(1/A040000(n))`
-/

namespace A208058.P13792684962501342711
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271703 n : ℚ) / (A130595 n : ℚ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℝ) ^ (1 / (A040000 n : ℚ) : ℝ)

end

end A208058.P13792684962501342711

namespace A208058

/-- `Δ[A271703(n)/A130595(n)]²^(1/A040000(n))` -/
def P13792684962501342711.Spec : Prop :=
  ∀ n, P13792684962501342711.a n = (A208058 n : ℝ)

end A208058

/-! ## A208058.P14609408692300695327

`∑{d}[Δ[A271703(n)/A130595(n)], A000010(#)]`
-/

namespace A208058.P14609408692300695327
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271703 n : ℚ) / (A130595 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A208058.P14609408692300695327

namespace A208058

/-- `∑{d}[Δ[A271703(n)/A130595(n)], A000010(#)]` -/
def P14609408692300695327.Spec : Prop :=
  ∀ n, P14609408692300695327.a n = A208058 n

end A208058

/-!
# A208059: Start with n, successively subtract each digit of the resulting sequence (the digits of a negative term being the negatives of that term's digits): a(n) is the number of steps needed to get to the first zero.

The programs for A208059, there is no canonical definition to state claims against.
-/

/-! ## A208059.P5583007312241681815

`A024969((a(n-1)+a(n-dr(n)))!)` with `a(0)=0`
-/

namespace A208059.P5583007312241681815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A024969 (Nat.factorial (a (n - 1) + a (n - SequenceMachineLib.digitalRoot (n : ℤ))).toNat)

end

end A208059.P5583007312241681815

/-! ## A208059.P1402569777701487932

`A189516((a(n-1)+a(n-dr(n)))!)` with `a(0)=0`
-/

namespace A208059.P1402569777701487932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A189516 (Nat.factorial (a (n - 1) + a (n - SequenceMachineLib.digitalRoot (n : ℤ))).toNat)

end

end A208059.P1402569777701487932

/-! ## A208059.P8096920438282838070

`A212999(lt[A213000(n+3), 15])`
-/

namespace A208059.P8096920438282838070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213000 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212999 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A208059.P8096920438282838070

/-! ## A208059.P8905299391679595763

`A212999(or(n, A324091(n+1)))`
-/

namespace A208059.P8905299391679595763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212999 (Int.lor (n : ℤ) (A324091 (n + 1))).toNat

end

end A208059.P8905299391679595763

/-! ## A208059.P4025834586563242836

`A212999(or(n, A324233(n+1)))`
-/

namespace A208059.P4025834586563242836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212999 (Int.lor (n : ℤ) (A324233 (n + 1))).toNat

end

end A208059.P4025834586563242836

/-!
# A208060: a(n) = 1 + 2*n + 2^2*n*[n/2] + 2^3*n*[n/2]*[n/3] + 2^4*n*[n/2]*[n/3]*[n/4] + ... where [x]=floor(x).

The programs for A208060, there is no canonical definition to state claims against.
-/

/-! ## A208060.P2820976988246365781

`∑[A350840(∑[lcm(6, n)])]`
-/

namespace A208060.P2820976988246365781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350840 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208060.P2820976988246365781

/-!
# A208062: Meandric numbers for a river crossing up to 4 parallel roads at n points.

The programs for A208062, there is no canonical definition to state claims against.
-/

/-! ## A208062.P8740461950600115519

`A380367(eq[3, A025581(n)])`
-/

namespace A208062.P8740461950600115519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208062.P8740461950600115519

/-! ## A208062.P10603595772884591837

`A380367(A052905(n+1)+1)`
-/

namespace A208062.P10603595772884591837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (A052905 (n + 1) + 1).toNat

end

end A208062.P10603595772884591837

/-! ## A208062.P4623924987418608732

`A380367(A000217(n+4)-4)`
-/

namespace A208062.P4623924987418608732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (A000217 (n + 4) - 4).toNat

end

end A208062.P4623924987418608732

/-! ## A208062.P5688346010562859777

`A380367(A056000(n+1)+1-n)`
-/

namespace A208062.P5688346010562859777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (A056000 (n + 1) + 1 - (n : ℤ)).toNat

end

end A208062.P5688346010562859777

/-! ## A208062.P15046536979287673299

`A380367(eq[A095660(n+4), A168509(n+1)])`
-/

namespace A208062.P15046536979287673299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A208062.P15046536979287673299

/-!
# A208063: Number of n X n 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208063, there is no canonical definition to state claims against.
-/

/-! ## A208063.P2036203708900382450

`A208069(∑[4*n]+1)`
-/

namespace A208063.P2036203708900382450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208063.P2036203708900382450

/-! ## A208063.P9066666516428927719

`lcm(2, A208069(A001844(n)))`
-/

namespace A208063.P9066666516428927719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208069 (A001844 n).toNat)

end

end A208063.P9066666516428927719

/-! ## A208063.P8286456646575991047

`record[gcd(A114327(n), A208069(n+1))]`
-/

namespace A208063.P8286456646575991047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A208069 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208063.P8286456646575991047

/-! ## A208063.P10316000707020274861

`A208069(A001844(n))+A000007(n+1)`
-/

namespace A208063.P10316000707020274861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A001844 n).toNat + A000007 (n + 1)

end

end A208063.P10316000707020274861

/-! ## A208063.P9053126365898732618

`A208069(A001844(n))-A005369(3*n+4)`
-/

namespace A208063.P9053126365898732618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A001844 n).toNat - A005369 (3 * n + 4)

end

end A208063.P9053126365898732618

/-!
# A208064: Number of n X 3 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208064, the canonical program `A208064.P8477497251418711656` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208064 has offset 1).

The definition of A208064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208064.P17508695911280635050

`ogf((6+24x+12x^3-6x^4)/(1-2x+2x^3-x^4))`
-/

namespace A208064.P17508695911280635050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 24, 0, 12, -6] [1, -2, 0, 2, -1] n

end

end A208064.P17508695911280635050

namespace A208064

/-- `ogf((6+24x+12x^3-6x^4)/(1-2x+2x^3-x^4))` -/
def P17508695911280635050.Spec : Prop :=
  ∀ n, P17508695911280635050.a n = A208064 (n + 1)

end A208064

/-! ## A208064.P8477497251418711656

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=6, a(1)=36, a(2)=72, a(3)=144, a(4)=216`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208064

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P8477497251418711656.Spec : Prop :=
  ∀ n, P8477497251418711656.a n = A208064 (n + 1)

theorem P8477497251418711656.correct : P8477497251418711656.Spec := by
  intro n
  simp only [A208064, Nat.add_sub_cancel]

end A208064

/-! ## A208064.P6318835153691855852

`3*(A270257(n+1)+A000038(n))`
-/

namespace A208064.P6318835153691855852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A270257 (n + 1) + A000038 n)

end

end A208064.P6318835153691855852

namespace A208064

/-- `3*(A270257(n+1)+A000038(n))` -/
def P6318835153691855852.Spec : Prop :=
  ∀ n, P6318835153691855852.a n = A208064 (n + 1)

end A208064

/-! ## A208064.P340989016479393656

`6*(A014681(n)+∑[A047241(n+1)])`
-/

namespace A208064.P340989016479393656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A014681 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208064.P340989016479393656

namespace A208064

/-- `6*(A014681(n)+∑[A047241(n+1)])` -/
def P340989016479393656.Spec : Prop :=
  ∀ n, P340989016479393656.a n = A208064 (n + 1)

end A208064

/-! ## A208064.P15960987337604062925

`A040311(A046109(n))*A076921(n+1)`
-/

namespace A208064.P15960987337604062925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040311 (A046109 n).toNat * A076921 (n + 1)

end

end A208064.P15960987337604062925

namespace A208064

/-- `A040311(A046109(n))*A076921(n+1)` -/
def P15960987337604062925.Spec : Prop :=
  ∀ n, P15960987337604062925.a n = A208064 (n + 1)

end A208064

/-! ## A208064.P15845265789954743433

`A008458(A008619(n))*A008458(A110654(n))`
-/

namespace A208064.P15845265789954743433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008619 n).toNat * A008458 (A110654 n).toNat

end

end A208064.P15845265789954743433

namespace A208064

/-- `A008458(A008619(n))*A008458(A110654(n))` -/
def P15845265789954743433.Spec : Prop :=
  ∀ n, P15845265789954743433.a n = A208064 (n + 1)

end A208064

/-! ## A208064.P1861543911218983084

`A008458(A110654(n+1))*A008458(A110654(n))`
-/

namespace A208064.P1861543911218983084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A110654 (n + 1)).toNat * A008458 (A110654 n).toNat

end

end A208064.P1861543911218983084

namespace A208064

/-- `A008458(A110654(n+1))*A008458(A110654(n))` -/
def P1861543911218983084.Spec : Prop :=
  ∀ n, P1861543911218983084.a n = A208064 (n + 1)

end A208064

/-! ## A208064.P16903862840823818821

`A008458(A004526(n+1))*A008458(A008619(n))`
-/

namespace A208064.P16903862840823818821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A004526 (n + 1)).toNat * A008458 (A008619 n).toNat

end

end A208064.P16903862840823818821

namespace A208064

/-- `A008458(A004526(n+1))*A008458(A008619(n))` -/
def P16903862840823818821.Spec : Prop :=
  ∀ n, P16903862840823818821.a n = A208064 (n + 1)

end A208064

/-! ## A208064.P11470146960410162441

`A008458(A123108(n+1))*A008458(A008619(n))`
-/

namespace A208064.P11470146960410162441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A123108 (n + 1)).toNat * A008458 (A008619 n).toNat

end

end A208064.P11470146960410162441

namespace A208064

/-- `A008458(A123108(n+1))*A008458(A008619(n))` -/
def P11470146960410162441.Spec : Prop :=
  ∀ n, P11470146960410162441.a n = A208064 (n + 1)

end A208064

/-! ## A208064.P18166349330538494731

`record[A001972(n)*A040074(n+1)]`
-/

namespace A208064.P18166349330538494731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n * A040074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208064.P18166349330538494731

namespace A208064

/-- `record[A001972(n)*A040074(n+1)]` -/
def P18166349330538494731.Spec : Prop :=
  ∀ n, P18166349330538494731.a n = A208064 (n + 1)

end A208064

/-! ## A208064.P451204611828819552

`A008458(A008624(2*n+1))*A008458(A008624(2*n))`
-/

namespace A208064.P451204611828819552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008624 (2 * n + 1)).toNat * A008458 (A008624 (2 * n)).toNat

end

end A208064.P451204611828819552

namespace A208064

/-- `A008458(A008624(2*n+1))*A008458(A008624(2*n))` -/
def P451204611828819552.Spec : Prop :=
  ∀ n, P451204611828819552.a n = A208064 (n + 1)

end A208064

/-! ## A208064.P10201342668972000810

`A008458(A110655(2*n+1))*A008458(A110655(2*n))`
-/

namespace A208064.P10201342668972000810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A110655 (2 * n + 1)).toNat * A008458 (A110655 (2 * n)).toNat

end

end A208064.P10201342668972000810

namespace A208064

/-- `A008458(A110655(2*n+1))*A008458(A110655(2*n))` -/
def P10201342668972000810.Spec : Prop :=
  ∀ n, P10201342668972000810.a n = A208064 (n + 1)

end A208064

/-! ## A208064.P17362329196412044399

`6*A008486(A007590(n+1))`
-/

namespace A208064.P17362329196412044399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A008486 (A007590 (n + 1)).toNat

end

end A208064.P17362329196412044399

namespace A208064

/-- `6*A008486(A007590(n+1))` -/
def P17362329196412044399.Spec : Prop :=
  ∀ n, P17362329196412044399.a n = A208064 (n + 1)

end A208064

/-! ## A208064.P15137607953151652385

`6*A008486(∑[A000035(n)+n])`
-/

namespace A208064.P15137607953151652385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A008486 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208064.P15137607953151652385

namespace A208064

/-- `6*A008486(∑[A000035(n)+n])` -/
def P15137607953151652385.Spec : Prop :=
  ∀ n, P15137607953151652385.a n = A208064 (n + 1)

end A208064

/-!
# A208065: Number of n X 4 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208065, the canonical program `A208065.P2027284343498073564` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208065 has offset 1).

The definition of A208065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208065.P2027284343498073564

`ogf((10+80x+20x^2-44x^3-24x^4-24x^5+20x^6+20x^7-10x^8)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208065

/-- `ogf((10+80x+20x^2-44x^3-24x^4-24x^5+20x^6+20x^7-10x^8)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P2027284343498073564.Spec : Prop :=
  ∀ n, P2027284343498073564.a n = A208065 (n + 1)

theorem P2027284343498073564.correct : P2027284343498073564.Spec := by
  intro n
  simp only [A208065, Nat.add_sub_cancel]

end A208065

/-! ## A208065.P418832659023392381

`A208069(A027379(n+2))`
-/

namespace A208065.P418832659023392381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A027379 (n + 2)).toNat

end

end A208065.P418832659023392381

namespace A208065

/-- `A208069(A027379(n+2))` -/
def P418832659023392381.Spec : Prop :=
  ∀ n, P418832659023392381.a n = A208065 (n + 1)

end A208065

/-! ## A208065.P7160147472517042137

`A208069(A055998(n+2))`
-/

namespace A208065.P7160147472517042137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A055998 (n + 2)).toNat

end

end A208065.P7160147472517042137

namespace A208065

/-- `A208069(A055998(n+2))` -/
def P7160147472517042137.Spec : Prop :=
  ∀ n, P7160147472517042137.a n = A208065 (n + 1)

end A208065

/-! ## A208065.P11994266231943764839

`A208069(Δ[A006503(n+1)])`
-/

namespace A208065.P11994266231943764839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (f1 (n + 1) - f1 n).toNat

end

end A208065.P11994266231943764839

namespace A208065

/-- `A208069(Δ[A006503(n+1)])` -/
def P11994266231943764839.Spec : Prop :=
  ∀ n, P11994266231943764839.a n = A208065 (n + 1)

end A208065

/-! ## A208065.P10991805399402468565

`A208069(Δ[A034857(n+1)])`
-/

namespace A208065.P10991805399402468565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (f1 (n + 1) - f1 n).toNat

end

end A208065.P10991805399402468565

namespace A208065

/-- `A208069(Δ[A034857(n+1)])` -/
def P10991805399402468565.Spec : Prop :=
  ∀ n, P10991805399402468565.a n = A208065 (n + 1)

end A208065

/-!
# A208066: Number of n X 5 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208066, the canonical program `A208066.P2396975076084028607` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208066 has offset 1).

The definition of A208066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208066.P2396975076084028607

`ogf((16+224x+160x^2+112x^3-48x^4-80x^5+32x^6+32x^7-16x^8)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208066

/-- `ogf((16+224x+160x^2+112x^3-48x^4-80x^5+32x^6+32x^7-16x^8)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P2396975076084028607.Spec : Prop :=
  ∀ n, P2396975076084028607.a n = A208066 (n + 1)

theorem P2396975076084028607.correct : P2396975076084028607.Spec := by
  intro n
  simp only [A208066, Nat.add_sub_cancel]

end A208066

/-! ## A208066.P15700689995130336415

`A208069(Δ[A023545(n+1)])`
-/

namespace A208066.P15700689995130336415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (f1 (n + 1) - f1 n).toNat

end

end A208066.P15700689995130336415

namespace A208066

/-- `A208069(Δ[A023545(n+1)])` -/
def P15700689995130336415.Spec : Prop :=
  ∀ n, P15700689995130336415.a n = A208066 (n + 1)

end A208066

/-! ## A208066.P4810986701118823378

`A208069(A027379(n+3)-1)`
-/

namespace A208066.P4810986701118823378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A027379 (n + 3) - 1).toNat

end

end A208066.P4810986701118823378

namespace A208066

/-- `A208069(A027379(n+3)-1)` -/
def P4810986701118823378.Spec : Prop :=
  ∀ n, P4810986701118823378.a n = A208066 (n + 1)

end A208066

/-! ## A208066.P2597808683337271535

`A208069(A000096(n+4)-3)`
-/

namespace A208066.P2597808683337271535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A000096 (n + 4) - 3).toNat

end

end A208066.P2597808683337271535

namespace A208066

/-- `A208069(A000096(n+4)-3)` -/
def P2597808683337271535.Spec : Prop :=
  ∀ n, P2597808683337271535.a n = A208066 (n + 1)

end A208066

/-! ## A208066.P8356035934886700326

`A208069(A000217(n+5)-4)`
-/

namespace A208066.P8356035934886700326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A000217 (n + 5) - 4).toNat

end

end A208066.P8356035934886700326

namespace A208066

/-- `A208069(A000217(n+5)-4)` -/
def P8356035934886700326.Spec : Prop :=
  ∀ n, P8356035934886700326.a n = A208066 (n + 1)

end A208066

/-!
# A208067: Number of n X 6 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208067, there is no canonical definition to state claims against.
-/

/-! ## A208067.P9253875277951145803

`A208069(A052905(n+3))`
-/

namespace A208067.P9253875277951145803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A052905 (n + 3)).toNat

end

end A208067.P9253875277951145803

/-! ## A208067.P13725179330600013131

`A208069(A000217(n+6)-5)`
-/

namespace A208067.P13725179330600013131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A000217 (n + 6) - 5).toNat

end

end A208067.P13725179330600013131

/-! ## A208067.P11033722121657947972

`A208069(A000124(n+6)-6)`
-/

namespace A208067.P11033722121657947972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A000124 (n + 6) - 6).toNat

end

end A208067.P11033722121657947972

/-! ## A208067.P1619421565657847958

`A208069(Δ[Δ[A006504(n+1)]])`
-/

namespace A208067.P1619421565657847958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (f1 (n + 1) - f1 n).toNat

end

end A208067.P1619421565657847958

/-! ## A208067.P11158924247784639304

`A208069(Δ[A023551(n+1)]+1)`
-/

namespace A208067.P11158924247784639304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (f1 (n + 1) - f1 n + 1).toNat

end

end A208067.P11158924247784639304

/-!
# A208068: Number of n X 7 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208068, there is no canonical definition to state claims against.
-/

/-! ## A208068.P18025353083273403123

`A208069(A055999(n+4))`
-/

namespace A208068.P18025353083273403123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A055999 (n + 4)).toNat

end

end A208068.P18025353083273403123

/-! ## A208068.P12735156978744945010

`A208069(Δ[A023551(n+2)])`
-/

namespace A208068.P12735156978744945010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (f1 (n + 1) - f1 n).toNat

end

end A208068.P12735156978744945010

/-! ## A208068.P1657604986065703604

`A208069(A000217(n+7)-6)`
-/

namespace A208068.P1657604986065703604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A000217 (n + 7) - 6).toNat

end

end A208068.P1657604986065703604

/-! ## A208068.P13940545055087854619

`A208069(A000124(n+7)-7)`
-/

namespace A208068.P13940545055087854619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A000124 (n + 7) - 7).toNat

end

end A208068.P13940545055087854619

/-! ## A208068.P3449000111655697015

`A208069(A027379(n+4)+n+4)`
-/

namespace A208068.P3449000111655697015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A027379 (n + 4) + (n + 4 : ℤ)).toNat

end

end A208068.P3449000111655697015

/-!
# A208069: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208069, there is no canonical definition to state claims against.
-/

/-! ## A208069.P17926100873098314082

`A033676(A207589(n+1)*A208555(n+1))`
-/

namespace A208069.P17926100873098314082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A207589 (n + 1) * A208555 (n + 1)).toNat

end

end A208069.P17926100873098314082

/-! ## A208069.P14047438241469854455

`A033676(A208501(n+1)*A208555(n+1))`
-/

namespace A208069.P14047438241469854455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A208501 (n + 1) * A208555 (n + 1)).toNat

end

end A208069.P14047438241469854455

/-! ## A208069.P9995329143471849241

`A208688(n+1)-A279948(∑[n])`
-/

namespace A208069.P9995329143471849241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (n + 1) - A279948 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208069.P9995329143471849241

/-! ## A208069.P3901895579686600756

`A207928(A114327(n)+A077168(n))`
-/

namespace A208069.P3901895579686600756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207928 (A114327 n + A077168 n).toNat

end

end A208069.P3901895579686600756

/-! ## A208069.P16112728551046130297

`A208840(n+1)-A279948(A000217(n))`
-/

namespace A208069.P16112728551046130297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (n + 1) - A279948 (A000217 n).toNat

end

end A208069.P16112728551046130297

/-!
# A208070: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208070, there is no canonical definition to state claims against.
-/

/-! ## A208070.P12809012784467097456

`A207840(n+1)/A206981(n+1)*A208380(n+1)`
-/

namespace A208070.P12809012784467097456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207840 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A208380 (n + 1) : ℚ)

end

end A208070.P12809012784467097456

/-! ## A208070.P16555695319581132677

`sqrt(A207924(n+1))*sqrt(A208071(n+1))`
-/

namespace A208070.P16555695319581132677
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207924 (n + 1) : ℝ) * Real.sqrt (A208071 (n + 1) : ℝ)

end

end A208070.P16555695319581132677

/-! ## A208070.P4424570811086149022

`sqrt(A207924(n+1)*A208071(n+1))`
-/

namespace A208070.P4424570811086149022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207924 (n + 1) * A208071 (n + 1) : ℝ)

end

end A208070.P4424570811086149022

/-! ## A208070.P2350048626892378998

`A208069(A167499(n+3))`
-/

namespace A208070.P2350048626892378998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A167499 (n + 3)).toNat

end

end A208070.P2350048626892378998

/-! ## A208070.P3924096602964582892

`A208069(A167614(n+3)+2)`
-/

namespace A208070.P3924096602964582892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A167614 (n + 3) + 2).toNat

end

end A208070.P3924096602964582892

/-!
# A208071: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208071, there is no canonical definition to state claims against.
-/

/-! ## A208071.P11970147314591219086

`(A208380(n+1)/A006355(n+3))²`
-/

namespace A208071.P11970147314591219086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A208380 (n + 1) : ℚ) / (A006355 (n + 3) : ℚ)) ^ 2

end

end A208071.P11970147314591219086

/-! ## A208071.P15321412607424324121

`A208380(n+1)/A206981(n+1)*A208380(n+1)`
-/

namespace A208071.P15321412607424324121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208380 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A208380 (n + 1) : ℚ)

end

end A208071.P15321412607424324121

/-! ## A208071.P8914881687867561548

`A208070(n+1)/A207924(n+1)*A208070(n+1)`
-/

namespace A208071.P8914881687867561548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208070 (n + 1) : ℚ) / (A207924 (n + 1) : ℚ) * (A208070 (n + 1) : ℚ)

end

end A208071.P8914881687867561548

/-! ## A208071.P3446105117013584520

`(A208070(n+1)/A207840(n+1))²*A206981(n+1)`
-/

namespace A208071.P3446105117013584520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A208070 (n + 1) : ℚ) / (A207840 (n + 1) : ℚ)) ^ 2 * (A206981 (n + 1) : ℚ)

end

end A208071.P3446105117013584520

/-! ## A208071.P8464116839185888929

`A208380(n+1)²/A206981(n+1)`
-/

namespace A208071.P8464116839185888929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208380 (n + 1) ^ 2 : ℚ) / (A206981 (n + 1) : ℚ)

end

end A208071.P8464116839185888929

/-! ## A208071.P18322369485629889306

`A208070(n+1)²/A207924(n+1)`
-/

namespace A208071.P18322369485629889306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208070 (n + 1) ^ 2 : ℚ) / (A207924 (n + 1) : ℚ)

end

end A208071.P18322369485629889306

/-!
# A208072: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208072, there is no canonical definition to state claims against.
-/

/-! ## A208072.P10040890046959385934

`A208069(A056119(n)+28)`
-/

namespace A208072.P10040890046959385934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A056119 n + 28).toNat

end

end A208072.P10040890046959385934

/-! ## A208072.P2067003958202239082

`A208069(A166136(n+5)+1)`
-/

namespace A208072.P2067003958202239082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A166136 (n + 5) + 1).toNat

end

end A208072.P2067003958202239082

/-! ## A208072.P17837565304831552919

`A208069(A167614(n+5)+4)`
-/

namespace A208072.P17837565304831552919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A167614 (n + 5) + 4).toNat

end

end A208072.P17837565304831552919

/-! ## A208072.P974626245571715656

`A208069(A000217(n+6)+7)`
-/

namespace A208072.P974626245571715656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A000217 (n + 6) + 7).toNat

end

end A208072.P974626245571715656

/-! ## A208072.P1230640679197414608

`A208069(A055998(n)+A008586(n+7))`
-/

namespace A208072.P1230640679197414608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A055998 n + A008586 (n + 7)).toNat

end

end A208072.P1230640679197414608

/-!
# A208073: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 0 vertically.

The programs for A208073, there is no canonical definition to state claims against.
-/

/-! ## A208073.P8356372851595892117

`A208078(∑[4*n]+1)`
-/

namespace A208073.P8356372851595892117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208073.P8356372851595892117

/-! ## A208073.P433913880221641338

`record[A208078(A330613(n+1))]`
-/

namespace A208073.P433913880221641338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208073.P433913880221641338

/-! ## A208073.P11446005468239368114

`record[A003982(n)*A208078(n+1)]`
-/

namespace A208073.P11446005468239368114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208073.P11446005468239368114

/-! ## A208073.P17650231712673688151

`record[gcd(A114327(n), A208078(n+1))]`
-/

namespace A208073.P17650231712673688151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A208078 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208073.P17650231712673688151

/-! ## A208073.P9196947562509821448

`record[A203994(n+1)*A208078(n+1)]`
-/

namespace A208073.P9196947562509821448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A208078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208073.P9196947562509821448

/-!
# A208074: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 0 vertically.

The programs for A208074, there is no canonical definition to state claims against.
-/

/-! ## A208074.P13596498318745203194

`A208078(A055998(n+2))`
-/

namespace A208074.P13596498318745203194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (A055998 (n + 2)).toNat

end

end A208074.P13596498318745203194

/-! ## A208074.P14797579638665479242

`A208078(A155212(n)+5)`
-/

namespace A208074.P14797579638665479242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (A155212 n + 5).toNat

end

end A208074.P14797579638665479242

/-! ## A208074.P17512317745909302400

`A208078(A056000(n)+7)`
-/

namespace A208074.P17512317745909302400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (A056000 n + 7).toNat

end

end A208074.P17512317745909302400

/-! ## A208074.P9807397769351607908

`A208078(eq[2, A220062(n)])`
-/

namespace A208074.P9807397769351607908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208074.P9807397769351607908

/-! ## A208074.P18168681346095788674

`A208078(eq[3, A193592(n)])`
-/

namespace A208074.P18168681346095788674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208074.P18168681346095788674

/-!
# A208075: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 0 vertically.

The programs for A208075, there is no canonical definition to state claims against.
-/

/-! ## A208075.P12587305929970080587

`A208078(eq[4, A193592(n)])`
-/

namespace A208075.P12587305929970080587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208075.P12587305929970080587

/-! ## A208075.P9591386120843565059

`A208078(Δ[A023545(n+1)])`
-/

namespace A208075.P9591386120843565059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (f1 (n + 1) - f1 n).toNat

end

end A208075.P9591386120843565059

/-! ## A208075.P14685438087766404621

`A208078(eq[4, A049286(n+1)])`
-/

namespace A208075.P14685438087766404621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208075.P14685438087766404621

/-! ## A208075.P13273794887503303569

`A208078(eq[5, A194921(n+1)])`
-/

namespace A208075.P13273794887503303569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208075.P13273794887503303569

/-! ## A208075.P13977790992284741841

`A208078(eq[6, A185782(n+1)])`
-/

namespace A208075.P13977790992284741841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208075.P13977790992284741841

/-!
# A208076: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 0 vertically.

The programs for A208076, there is no canonical definition to state claims against.
-/

/-! ## A208076.P12244860738598080960

`A208078(eq[3, A219347(n)])`
-/

namespace A208076.P12244860738598080960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208076.P12244860738598080960

/-! ## A208076.P14944739980223112915

`A208078(eq[5, A193592(n)])`
-/

namespace A208076.P14944739980223112915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208076.P14944739980223112915

/-! ## A208076.P9468910639106049521

`A208078(eq[7, A049286(n+1)])`
-/

namespace A208076.P9468910639106049521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208076.P9468910639106049521

/-! ## A208076.P14389105111146853706

`A208078(eq[8, A185782(n+1)])`
-/

namespace A208076.P14389105111146853706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208076.P14389105111146853706

/-! ## A208076.P14129258253542720242

`A208078(Δ[Δ[A006504(n+1)]])`
-/

namespace A208076.P14129258253542720242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (f1 (n + 1) - f1 n).toNat

end

end A208076.P14129258253542720242

/-!
# A208077: Number of n X 7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 0 vertically.

The programs for A208077, there is no canonical definition to state claims against.
-/

/-! ## A208077.P7653891699018565488

`A208078(A055999(n+4))`
-/

namespace A208077.P7653891699018565488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (A055999 (n + 4)).toNat

end

end A208077.P7653891699018565488

/-! ## A208077.P2111865434527852392

`A208078(eq[4, A219347(n)])`
-/

namespace A208077.P2111865434527852392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208077.P2111865434527852392

/-! ## A208077.P11137168518617925833

`A208078(eq[6, A193592(n)])`
-/

namespace A208077.P11137168518617925833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208077.P11137168518617925833

/-! ## A208077.P10774958999285508478

`A208078(eq[10, A185782(n+1)])`
-/

namespace A208077.P10774958999285508478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208077.P10774958999285508478

/-! ## A208077.P8043968367559171264

`A208078(eq[7, A200370(n+1)])`
-/

namespace A208077.P8043968367559171264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208077.P8043968367559171264

/-!
# A208078: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 0 vertically.

The programs for A208078, there is no canonical definition to state claims against.
-/

/-! ## A208078.P3248968284588304025

`A208688(n+1)+A186745(A292943(n+1))`
-/

namespace A208078.P3248968284588304025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (n + 1) + A186745 (A292943 (n + 1)).toNat

end

end A208078.P3248968284588304025

/-! ## A208078.P13918600957373756340

`A208840(n+1)+A186745(A292943(n+1))`
-/

namespace A208078.P13918600957373756340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (n + 1) + A186745 (A292943 (n + 1)).toNat

end

end A208078.P13918600957373756340

/-! ## A208078.P8133109988625218601

`or(A033676(A208501(n+1)²), A208688(n+1))`
-/

namespace A208078.P8133109988625218601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033676 (A208501 (n + 1) ^ 2).toNat) (A208688 (n + 1))

end

end A208078.P8133109988625218601

/-! ## A208078.P5102926243422100128

`or(A033676(A208501(n+1)²), A208840(n+1))`
-/

namespace A208078.P5102926243422100128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033676 (A208501 (n + 1) ^ 2).toNat) (A208840 (n + 1))

end

end A208078.P5102926243422100128

/-! ## A208078.P6024879058841719785

`or(A207589(A187829(n+1)), A207717(n+1))`
-/

namespace A208078.P6024879058841719785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A207589 (A187829 (n + 1)).toNat) (A207717 (n + 1))

end

end A208078.P6024879058841719785

/-!
# A208079: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 0 vertically.

The programs for A208079, the canonical program `A208079.P11498741564222365802` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208079 has offset 1).

The definition of A208079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208079.P1842538339281314540

`ogf((9+36x-9x^2)/(1-5x-5x^2+x^3))`
-/

namespace A208079.P1842538339281314540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 36, -9] [1, -5, -5, 1] n

end

end A208079.P1842538339281314540

namespace A208079

/-- `ogf((9+36x-9x^2)/(1-5x-5x^2+x^3))` -/
def P1842538339281314540.Spec : Prop :=
  ∀ n, P1842538339281314540.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P11498741564222365802

`5*a(n-1)+5*a(n-2)-a(n-3)` with `a(0)=9, a(1)=81, a(2)=441`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208079

/-- `5*a(n-1)+5*a(n-2)-a(n-3)` -/
def P11498741564222365802.Spec : Prop :=
  ∀ n, P11498741564222365802.a n = A208079 (n + 1)

theorem P11498741564222365802.correct : P11498741564222365802.Spec := by
  intro n
  simp only [A208079, Nat.add_sub_cancel]

end A208079

/-! ## A208079.P2595116062558307902

`(3*A078057(n))²`
-/

namespace A208079.P2595116062558307902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A078057 n) ^ 2

end

end A208079.P2595116062558307902

namespace A208079

/-- `(3*A078057(n))²` -/
def P2595116062558307902.Spec : Prop :=
  ∀ n, P2595116062558307902.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P5035005244572247411

`9*A090390(n+1)`
-/

namespace A208079.P5035005244572247411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A090390 (n + 1)

end

end A208079.P5035005244572247411

namespace A208079

/-- `9*A090390(n+1)` -/
def P5035005244572247411.Spec : Prop :=
  ∀ n, P5035005244572247411.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P15714605276548746053

`9*A111587(2*n)`
-/

namespace A208079.P15714605276548746053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A111587 (2 * n)

end

end A208079.P15714605276548746053

namespace A208079

/-- `9*A111587(2*n)` -/
def P15714605276548746053.Spec : Prop :=
  ∀ n, P15714605276548746053.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P2379561497289255116

`∑[3*A052542(n)]²`
-/

namespace A208079.P2379561497289255116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208079.P2379561497289255116

namespace A208079

/-- `∑[3*A052542(n)]²` -/
def P2379561497289255116.Spec : Prop :=
  ∀ n, P2379561497289255116.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P18310905267322308733

`(3*A054458(∑[n]))²`
-/

namespace A208079.P18310905267322308733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A054458 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A208079.P18310905267322308733

namespace A208079

/-- `(3*A054458(∑[n]))²` -/
def P18310905267322308733.Spec : Prop :=
  ∀ n, P18310905267322308733.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P8015624724994126453

`Δ[3*A052937(n)]²`
-/

namespace A208079.P8015624724994126453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A052937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A208079.P8015624724994126453

namespace A208079

/-- `Δ[3*A052937(n)]²` -/
def P8015624724994126453.Spec : Prop :=
  ∀ n, P8015624724994126453.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P14764281772453045841

`(3*A001333(n+1))²`
-/

namespace A208079.P14764281772453045841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A001333 (n + 1)) ^ 2

end

end A208079.P14764281772453045841

namespace A208079

/-- `(3*A001333(n+1))²` -/
def P14764281772453045841.Spec : Prop :=
  ∀ n, P14764281772453045841.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P5373211672684923941

`(3*A123335(n+1))²`
-/

namespace A208079.P5373211672684923941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A123335 (n + 1)) ^ 2

end

end A208079.P5373211672684923941

namespace A208079

/-- `(3*A123335(n+1))²` -/
def P5373211672684923941.Spec : Prop :=
  ∀ n, P5373211672684923941.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P4308115361970638217

`(6*A024537(n)-3)²`
-/

namespace A208079.P4308115361970638217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * A024537 n - 3) ^ 2

end

end A208079.P4308115361970638217

namespace A208079

/-- `(6*A024537(n)-3)²` -/
def P4308115361970638217.Spec : Prop :=
  ∀ n, P4308115361970638217.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P16135446566052135308

`Δ[3*∑[A001333(n)]]²`
-/

namespace A208079.P16135446566052135308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A208079.P16135446566052135308

namespace A208079

/-- `Δ[3*∑[A001333(n)]]²` -/
def P16135446566052135308.Spec : Prop :=
  ∀ n, P16135446566052135308.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P672337823615178344

`(3*A208339(∑[n+1]))²`
-/

namespace A208079.P672337823615178344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A208339 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A208079.P672337823615178344

namespace A208079

/-- `(3*A208339(∑[n+1]))²` -/
def P672337823615178344.Spec : Prop :=
  ∀ n, P672337823615178344.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P10884276170010931239

`(3*A208345(∑[n+1]))²`
-/

namespace A208079.P10884276170010931239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A208345 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A208079.P10884276170010931239

namespace A208079

/-- `(3*A208345(∑[n+1]))²` -/
def P10884276170010931239.Spec : Prop :=
  ∀ n, P10884276170010931239.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P10206890040886556290

`(3*A208517(∑[n+1]))²`
-/

namespace A208079.P10206890040886556290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A208517 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A208079.P10206890040886556290

namespace A208079

/-- `(3*A208517(∑[n+1]))²` -/
def P10206890040886556290.Spec : Prop :=
  ∀ n, P10206890040886556290.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P5599577238394577004

`(3*A208611(∑[n+1]))²`
-/

namespace A208079.P5599577238394577004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A208611 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A208079.P5599577238394577004

namespace A208079

/-- `(3*A208611(∑[n+1]))²` -/
def P5599577238394577004.Spec : Prop :=
  ∀ n, P5599577238394577004.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P7831223480500388637

`(3*A209129(∑[n+1]))²`
-/

namespace A208079.P7831223480500388637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A209129 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A208079.P7831223480500388637

namespace A208079

/-- `(3*A209129(∑[n+1]))²` -/
def P7831223480500388637.Spec : Prop :=
  ∀ n, P7831223480500388637.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P13168214121547767111

`(3*A209140(∑[n+1]))²`
-/

namespace A208079.P13168214121547767111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A209140 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A208079.P13168214121547767111

namespace A208079

/-- `(3*A209140(∑[n+1]))²` -/
def P13168214121547767111.Spec : Prop :=
  ∀ n, P13168214121547767111.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P9302675277029672037

`(3*A209169(∑[n+1]))²`
-/

namespace A208079.P9302675277029672037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A209169 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A208079.P9302675277029672037

namespace A208079

/-- `(3*A209169(∑[n+1]))²` -/
def P9302675277029672037.Spec : Prop :=
  ∀ n, P9302675277029672037.a n = A208079 (n + 1)

end A208079

/-! ## A208079.P15831123831771625597

`(3*A209696(∑[n+1]))²`
-/

namespace A208079.P15831123831771625597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A209696 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A208079.P15831123831771625597

namespace A208079

/-- `(3*A209696(∑[n+1]))²` -/
def P15831123831771625597.Spec : Prop :=
  ∀ n, P15831123831771625597.a n = A208079 (n + 1)

end A208079

/-!
# A208080: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 0 vertically.

The programs for A208080, there is no canonical definition to state claims against.
-/

/-! ## A208080.P7865027583063731126

`sqrt(A208079(n+1))*sqrt(A208081(n+1))`
-/

namespace A208080.P7865027583063731126
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A208079 (n + 1) : ℝ) * Real.sqrt (A208081 (n + 1) : ℝ)

end

end A208080.P7865027583063731126

/-! ## A208080.P5124380328257800534

`sqrt(A208079(n+1)*A208081(n+1))`
-/

namespace A208080.P5124380328257800534
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A208079 (n + 1) * A208081 (n + 1) : ℝ)

end

end A208080.P5124380328257800534

/-! ## A208080.P11044354381601454655

`sqrt(9*A090390(n+1)*A208081(n+1))`
-/

namespace A208080.P11044354381601454655
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (9 * A090390 (n + 1) * A208081 (n + 1) : ℝ)

end

end A208080.P11044354381601454655

/-! ## A208080.P13427362893782524860

`A208078(A056000(n)+15)`
-/

namespace A208080.P13427362893782524860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (A056000 n + 15).toNat

end

end A208080.P13427362893782524860

/-! ## A208080.P4728964713992587898

`A208078(eq[6, A131818(n+1)])`
-/

namespace A208080.P4728964713992587898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208080.P4728964713992587898

/-!
# A208081: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 0 vertically.

The programs for A208081, there is no canonical definition to state claims against.
-/

/-! ## A208081.P12945220341814852923

`(5*A051736(n))²`
-/

namespace A208081.P12945220341814852923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * A051736 n) ^ 2

end

end A208081.P12945220341814852923

/-! ## A208081.P7269660492718311357

`(5*A051736(n))^gcd(2, A334606(n+1))`
-/

namespace A208081.P7269660492718311357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * A051736 n) ^ Int.gcd 2 (A334606 (n + 1))

end

end A208081.P7269660492718311357

/-! ## A208081.P12097254124758643308

`(5*A051736(n))^(A007318(val(n+1, 5))+1)`
-/

namespace A208081.P12097254124758643308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A051736 n : ℚ) ^ (A007318 (SequenceMachineLib.valuation (n + 1) 5) + 1 : ℤ)

end

end A208081.P12097254124758643308

/-! ## A208081.P452690370940712653

`(5*A051736(n))^(2%A006530(30*n+7))`
-/

namespace A208081.P452690370940712653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A051736 n : ℚ) ^ (Int.tmod 2 (A006530 (30 * n + 7)) : ℤ)

end

end A208081.P452690370940712653

/-! ## A208081.P3382157682689915081

`(5*A051736(n))^(A000051(n)-A000225(n))`
-/

namespace A208081.P3382157682689915081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A051736 n : ℚ) ^ (A000051 n - A000225 n : ℤ)

end

end A208081.P3382157682689915081

/-! ## A208081.P18433858962372275721

`(1/(5*A051736(n)))^A349355(A005384(n+1))`
-/

namespace A208081.P18433858962372275721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / (5 * A051736 n : ℚ)) ^ (A349355 (A005384 (n + 1)).toNat : ℤ)

end

end A208081.P18433858962372275721

/-! ## A208081.P11611002694131703491

`A208080(n+1)/A208079(n+1)*A208080(n+1)`
-/

namespace A208081.P11611002694131703491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208080 (n + 1) : ℚ) / (A208079 (n + 1) : ℚ) * (A208080 (n + 1) : ℚ)

end

end A208081.P11611002694131703491

/-! ## A208081.P898480938909413531

`A208080(n+1)²/A208079(n+1)`
-/

namespace A208081.P898480938909413531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208080 (n + 1) ^ 2 : ℚ) / (A208079 (n + 1) : ℚ)

end

end A208081.P898480938909413531

/-!
# A208082: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 0 vertically.

The programs for A208082, there is no canonical definition to state claims against.
-/

/-! ## A208082.P333503251468435367

`A208078(eq[11, A066657(n)])`
-/

namespace A208082.P333503251468435367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208082.P333503251468435367

/-! ## A208082.P4829045975759359442

`A208078(A166136(n+5)+1)`
-/

namespace A208082.P4829045975759359442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (A166136 (n + 5) + 1).toNat

end

end A208082.P4829045975759359442

/-! ## A208082.P6250376304746468627

`A208078(A000217(n+6)+7)`
-/

namespace A208082.P6250376304746468627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (A000217 (n + 6) + 7).toNat

end

end A208082.P6250376304746468627

/-! ## A208082.P10039640031632067998

`A208078(A055998(n+4)+10)`
-/

namespace A208082.P10039640031632067998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (A055998 (n + 4) + 10).toNat

end

end A208082.P10039640031632067998

/-! ## A208082.P1976831183852887859

`A208078(eq[8, A131818(n+1)])`
-/

namespace A208082.P1976831183852887859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208082.P1976831183852887859

/-!
# A208083: Number of primes of the form 2^n - 2^k - 1, 1 <= k < n.

The programs for A208083, there is no canonical definition to state claims against.
-/

/-! ## A208083.P15045003663518701203

`A095058(C(2, n+2)+n)+A012245(A126717(n))`
-/

namespace A208083.P15045003663518701203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095058 (Nat.choose 2 (n + 2) + n) + A012245 (A126717 n).toNat

end

end A208083.P15045003663518701203

/-! ## A208083.P3714644869810126577

`A095058(A028310(n))+A012245(A126717(n))`
-/

namespace A208083.P3714644869810126577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095058 (A028310 n).toNat + A012245 (A126717 n).toNat

end

end A208083.P3714644869810126577

/-! ## A208083.P4631216639810905104

`A095058(A000007(n)+n)+A012245(A126717(n))`
-/

namespace A208083.P4631216639810905104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095058 (A000007 n + (n : ℤ)).toNat + A012245 (A126717 n).toNat

end

end A208083.P4631216639810905104

/-! ## A208083.P17794652519886735255

`A095058(A028310(n))+A089026(A126717(n)+1)-1`
-/

namespace A208083.P17794652519886735255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095058 (A028310 n).toNat + (A089026 (A126717 n + 1).toNat - 1)

end

end A208083.P17794652519886735255

/-! ## A208083.P11060345167324633939

`A095058(A151878(n)+n)+A012245(A126717(n))`
-/

namespace A208083.P11060345167324633939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095058 (A151878 n + (n : ℤ)).toNat + A012245 (A126717 n).toNat

end

end A208083.P11060345167324633939

/-!
# A208084: Number of (n+1) X (n+1) 0..1 arrays with every 2 X 2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..1 introduced in row major order.

The programs for A208084, there is no canonical definition to state claims against.
-/

/-! ## A208084.P6800000598929927834

`A208085(∑[4*n]+1)`
-/

namespace A208084.P6800000598929927834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208085 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208084.P6800000598929927834

/-! ## A208084.P10435595712946229403

`lcm(2, A208085(A001844(n)))`
-/

namespace A208084.P10435595712946229403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208085 (A001844 n).toNat)

end

end A208084.P10435595712946229403

/-! ## A208084.P17721379565649846483

`A208085((n+1)²+n²)/A022818(∑[n+1])`
-/

namespace A208084.P17721379565649846483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208085 ((n + 1) ^ 2 + n ^ 2) : ℚ) / (A022818 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A208084.P17721379565649846483

/-! ## A208084.P17493772679763531357

`A007318(∑[n])*A208085(A001844(n))`
-/

namespace A208084.P17493772679763531357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A208085 (A001844 n).toNat

end

end A208084.P17493772679763531357

/-! ## A208084.P14395983616820597032

`A208085(A001844(n))+A000007(n+1)`
-/

namespace A208084.P14395983616820597032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208085 (A001844 n).toNat + A000007 (n + 1)

end

end A208084.P14395983616820597032

/-! ## A208084.P13194526064145045348

`A014963(6*(n+1))*A208085(A001844(n))`
-/

namespace A208084.P13194526064145045348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A208085 (A001844 n).toNat

end

end A208084.P13194526064145045348

/-! ## A208084.P322174511827315811

`∑{e}[A000040(n+1), #*A208085(A001844(n))]`
-/

namespace A208084.P322174511827315811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A208085 (A001844 n).toNat

end

end A208084.P322174511827315811

/-!
# A208086: Number of 4 X (n+1) 0..1 arrays with every 2 X 2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..1 introduced in row major order.

The programs for A208086, the canonical program `A208086.P7690875717955733551` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208086 has offset 1).

The definition of A208086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208086.P16383895842777346797

`ogf((24-16x-34x^2+14x^3)/(1-3x+3x^3-x^4))`
-/

namespace A208086.P16383895842777346797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [24, -16, -34, 14] [1, -3, 0, 3, -1] n

end

end A208086.P16383895842777346797

namespace A208086

/-- `ogf((24-16x-34x^2+14x^3)/(1-3x+3x^3-x^4))` -/
def P16383895842777346797.Spec : Prop :=
  ∀ n, P16383895842777346797.a n = A208086 (n + 1)

end A208086

/-! ## A208086.P7690875717955733551

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=24, a(1)=56, a(2)=134, a(3)=344`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208086

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P7690875717955733551.Spec : Prop :=
  ∀ n, P7690875717955733551.a n = A208086 (n + 1)

theorem P7690875717955733551.correct : P7690875717955733551.Spec := by
  intro n
  simp only [A208086, Nat.add_sub_cancel]

end A208086

/-! ## A208086.P18069690802333640341

`A175395(n+4)+6`
-/

namespace A208086.P18069690802333640341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 (n + 4) + 6

end

end A208086.P18069690802333640341

namespace A208086

/-- `A175395(n+4)+6` -/
def P18069690802333640341.Spec : Prop :=
  ∀ n, P18069690802333640341.a n = A208086 (n + 1)

end A208086

/-! ## A208086.P4643023064607848786

`2*(A020701(n)²+3)`
-/

namespace A208086.P4643023064607848786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020701 n ^ 2 + 3)

end

end A208086.P4643023064607848786

namespace A208086

/-- `2*(A020701(n)²+3)` -/
def P4643023064607848786.Spec : Prop :=
  ∀ n, P4643023064607848786.a n = A208086 (n + 1)

end A208086

/-! ## A208086.P1522177461731788738

`2*(A301960(n+2)+3)`
-/

namespace A208086.P1522177461731788738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A301960 (n + 2) + 3)

end

end A208086.P1522177461731788738

namespace A208086

/-- `2*(A301960(n+2)+3)` -/
def P1522177461731788738.Spec : Prop :=
  ∀ n, P1522177461731788738.a n = A208086 (n + 1)

end A208086

/-! ## A208086.P11395522510871001404

`2*A007598(n+4)+6`
-/

namespace A208086.P11395522510871001404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007598 (n + 4) + 6

end

end A208086.P11395522510871001404

namespace A208086

/-- `2*A007598(n+4)+6` -/
def P11395522510871001404.Spec : Prop :=
  ∀ n, P11395522510871001404.a n = A208086 (n + 1)

end A208086

/-! ## A208086.P17308075105070542257

`2*A080097(n+2)+8`
-/

namespace A208086.P17308075105070542257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080097 (n + 2) + 8

end

end A208086.P17308075105070542257

namespace A208086

/-- `2*A080097(n+2)+8` -/
def P17308075105070542257.Spec : Prop :=
  ∀ n, P17308075105070542257.a n = A208086 (n + 1)

end A208086

/-! ## A208086.P12679440372860889743

`2*(Δ[A020743(n)]²+3)`
-/

namespace A208086.P12679440372860889743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) - f1 n) ^ 2 + 3)

end

end A208086.P12679440372860889743

namespace A208086

/-- `2*(Δ[A020743(n)]²+3)` -/
def P12679440372860889743.Spec : Prop :=
  ∀ n, P12679440372860889743.a n = A208086 (n + 1)

end A208086

/-! ## A208086.P14082771150215840165

`2*(A000045(n+4)²+3)`
-/

namespace A208086.P14082771150215840165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000045 (n + 4) ^ 2 + 3)

end

end A208086.P14082771150215840165

namespace A208086

/-- `2*(A000045(n+4)²+3)` -/
def P14082771150215840165.Spec : Prop :=
  ∀ n, P14082771150215840165.a n = A208086 (n + 1)

end A208086

/-! ## A208086.P9265014019538929487

`2*(A152163(n+6)²+3)`
-/

namespace A208086.P9265014019538929487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A152163 (n + 6) ^ 2 + 3)

end

end A208086.P9265014019538929487

namespace A208086

/-- `2*(A152163(n+6)²+3)` -/
def P9265014019538929487.Spec : Prop :=
  ∀ n, P9265014019538929487.a n = A208086 (n + 1)

end A208086

/-! ## A208086.P8253474387577086267

`2*(Δ[A001654(n+3)]+3)`
-/

namespace A208086.P8253474387577086267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 3)

end

end A208086.P8253474387577086267

namespace A208086

/-- `2*(Δ[A001654(n+3)]+3)` -/
def P8253474387577086267.Spec : Prop :=
  ∀ n, P8253474387577086267.a n = A208086 (n + 1)

end A208086

/-! ## A208086.P5011868500031903065

`2*((A006327(n+4)+3)²+3)`
-/

namespace A208086.P5011868500031903065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((A006327 (n + 4) + 3) ^ 2 + 3)

end

end A208086.P5011868500031903065

namespace A208086

/-- `2*((A006327(n+4)+3)²+3)` -/
def P5011868500031903065.Spec : Prop :=
  ∀ n, P5011868500031903065.a n = A208086 (n + 1)

end A208086

/-! ## A208086.P14530861363713641674

`A208087(n+1)/3`
-/

namespace A208086.P14530861363713641674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208087 (n + 1) : ℚ) / 3

end

end A208086.P14530861363713641674

namespace A208086

/-- `A208087(n+1)/3` -/
def P14530861363713641674.Spec : Prop :=
  ∀ n, P14530861363713641674.a n = (A208086 (n + 1) : ℚ)

theorem P14530861363713641674.correct : P14530861363713641674.Spec := by
  intro n
  simp only [A208086, Nat.add_sub_cancel, A208086.P14530861363713641674.a, A208086.P7690875717955733551.a, A208087, A208087.P8234314849387391565.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A208086

/-! ## A208086.P9425916451036335427

`A208089(n+1)/9`
-/

namespace A208086.P9425916451036335427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208089 (n + 1) : ℚ) / 9

end

end A208086.P9425916451036335427

namespace A208086

/-- `A208089(n+1)/9` -/
def P9425916451036335427.Spec : Prop :=
  ∀ n, P9425916451036335427.a n = (A208086 (n + 1) : ℚ)

theorem P9425916451036335427.correct : P9425916451036335427.Spec := by
  intro n
  simp only [A208086, Nat.add_sub_cancel, A208086.P9425916451036335427.a, A208086.P7690875717955733551.a, A208089, A208089.P15961409153887252375.a, A208087, A208087.P8234314849387391565.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A208086

/-! ## A208086.P3283437206818658727

`A208085(∑[n+2]+4)`
-/

namespace A208086.P3283437206818658727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208085 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208086.P3283437206818658727

namespace A208086

/-- `A208085(∑[n+2]+4)` -/
def P3283437206818658727.Spec : Prop :=
  ∀ n, P3283437206818658727.a n = A208086 (n + 1)

end A208086

/-!
# A208087: Number of 6 X (n+1) 0..1 arrays with every 2 X 2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..1 introduced in row major order.

The programs for A208087, the canonical program `A208087.P8234314849387391565` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208087 has offset 1).

The definition of A208087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208087.P8234314849387391565

`3*A208086(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208087

/-- `3*A208086(n+1)` -/
def P8234314849387391565.Spec : Prop :=
  ∀ n, P8234314849387391565.a n = A208087 (n + 1)

theorem P8234314849387391565.correct : P8234314849387391565.Spec := by
  intro n
  simp only [A208087, Nat.add_sub_cancel]

end A208087

/-! ## A208087.P7261794956138068346

`6*(A020695(n+1)²+3)`
-/

namespace A208087.P7261794956138068346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A020695 (n + 1) ^ 2 + 3)

end

end A208087.P7261794956138068346

namespace A208087

/-- `6*(A020695(n+1)²+3)` -/
def P7261794956138068346.Spec : Prop :=
  ∀ n, P7261794956138068346.a n = A208087 (n + 1)

end A208087

/-! ## A208087.P2718352937939687558

`6*(A152163(n+6)²+3)`
-/

namespace A208087.P2718352937939687558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A152163 (n + 6) ^ 2 + 3)

end

end A208087.P2718352937939687558

namespace A208087

/-- `6*(A152163(n+6)²+3)` -/
def P2718352937939687558.Spec : Prop :=
  ∀ n, P2718352937939687558.a n = A208087 (n + 1)

end A208087

/-! ## A208087.P2851499964316743973

`A208089(n+1)/3`
-/

namespace A208087.P2851499964316743973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208089 (n + 1) : ℚ) / 3

end

end A208087.P2851499964316743973

namespace A208087

/-- `A208089(n+1)/3` -/
def P2851499964316743973.Spec : Prop :=
  ∀ n, P2851499964316743973.a n = (A208087 (n + 1) : ℚ)

theorem P2851499964316743973.correct : P2851499964316743973.Spec := by
  intro n
  simp only [A208087, Nat.add_sub_cancel, A208087.P2851499964316743973.a, A208087.P8234314849387391565.a, A208086, A208086.P7690875717955733551.a, A208089, A208089.P15961409153887252375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A208087

/-! ## A208087.P13701790893194625702

`3*A208085(A167614(n+1))`
-/

namespace A208087.P13701790893194625702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A208085 (A167614 (n + 1)).toNat

end

end A208087.P13701790893194625702

namespace A208087

/-- `3*A208085(A167614(n+1))` -/
def P13701790893194625702.Spec : Prop :=
  ∀ n, P13701790893194625702.a n = A208087 (n + 1)

end A208087

/-! ## A208087.P9543559637902740458

`A208085(A167614(n+3)+2)`
-/

namespace A208087.P9543559637902740458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208085 (A167614 (n + 3) + 2).toNat

end

end A208087.P9543559637902740458

namespace A208087

/-- `A208085(A167614(n+3)+2)` -/
def P9543559637902740458.Spec : Prop :=
  ∀ n, P9543559637902740458.a n = A208087 (n + 1)

end A208087

/-!
# A208088: Number of 7 X (n+1) 0..1 arrays with every 2 X 2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..1 introduced in row major order.

The programs for A208088, the canonical program `A208088.P14835388502918214837` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208088 has offset 1).

The definition of A208088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208088.P319155060456123032

`ogf((108+72x)/(1-x-x^2))`
-/

namespace A208088.P319155060456123032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [108, 72] [1, -1, -1] n

end

end A208088.P319155060456123032

namespace A208088

/-- `ogf((108+72x)/(1-x-x^2))` -/
def P319155060456123032.Spec : Prop :=
  ∀ n, P319155060456123032.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P14835388502918214837

`a(n-1)+a(n-2)` with `a(0)=108, a(1)=180`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208088

/-- `a(n-1)+a(n-2)` -/
def P14835388502918214837.Spec : Prop :=
  ∀ n, (P14835388502918214837.a n : ℤ) = A208088 (n + 1)

theorem P14835388502918214837.correct : P14835388502918214837.Spec := by
  intro n
  simp only [A208088, Nat.add_sub_cancel]

end A208088

/-! ## A208088.P18302265094657880589

`6*abs(2*Δ[floor(ϕ*a(n-1))])` with `a(0)=-14`
-/

namespace A208088.P18302265094657880589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-14] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * |2 * (f1 (n + 1) - f1 n)|

end

end A208088.P18302265094657880589

namespace A208088

/-- `6*abs(2*Δ[floor(ϕ*a(n-1))])` -/
def P18302265094657880589.Spec : Prop :=
  ∀ n, P18302265094657880589.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P2655373004214580970

`-(6*2*Δ[floor(ϕ*a(n-1))])` with `a(0)=-14`
-/

namespace A208088.P2655373004214580970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-14] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(6 * (2 * (f1 (n + 1) - f1 n)))

end

end A208088.P2655373004214580970

namespace A208088

/-- `-(6*2*Δ[floor(ϕ*a(n-1))])` -/
def P2655373004214580970.Spec : Prop :=
  ∀ n, P2655373004214580970.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P858183025340015921

`36*A020701(n)`
-/

namespace A208088.P858183025340015921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A020701 n

end

end A208088.P858183025340015921

namespace A208088

/-- `36*A020701(n)` -/
def P858183025340015921.Spec : Prop :=
  ∀ n, P858183025340015921.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P14972467815434722473

`36*Δ[A020712(n)]`
-/

namespace A208088.P14972467815434722473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * (f1 (n + 1) - f1 n)

end

end A208088.P14972467815434722473

namespace A208088

/-- `36*Δ[A020712(n)]` -/
def P14972467815434722473.Spec : Prop :=
  ∀ n, P14972467815434722473.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P18108139563467505440

`36*Δ[A020717(n)]`
-/

namespace A208088.P18108139563467505440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * (f1 (n + 1) - f1 n)

end

end A208088.P18108139563467505440

namespace A208088

/-- `36*Δ[A020717(n)]` -/
def P18108139563467505440.Spec : Prop :=
  ∀ n, P18108139563467505440.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P14695077908496520486

`36*Δ[A020732(n)]`
-/

namespace A208088.P14695077908496520486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * (f1 (n + 1) - f1 n)

end

end A208088.P14695077908496520486

namespace A208088

/-- `36*Δ[A020732(n)]` -/
def P14695077908496520486.Spec : Prop :=
  ∀ n, P14695077908496520486.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P16106135435505313262

`36*Δ[A020743(n)]`
-/

namespace A208088.P16106135435505313262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * (f1 (n + 1) - f1 n)

end

end A208088.P16106135435505313262

namespace A208088

/-- `36*Δ[A020743(n)]` -/
def P16106135435505313262.Spec : Prop :=
  ∀ n, P16106135435505313262.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P18021397346772340699

`6*A330010(n+3)`
-/

namespace A208088.P18021397346772340699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A330010 (n + 3)

end

end A208088.P18021397346772340699

namespace A208088

/-- `6*A330010(n+3)` -/
def P18021397346772340699.Spec : Prop :=
  ∀ n, P18021397346772340699.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P16515017583701308999

`6*A022089(n+4)`
-/

namespace A208088.P16515017583701308999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A022089 (n + 4)

end

end A208088.P16515017583701308999

namespace A208088

/-- `6*A022089(n+4)` -/
def P16515017583701308999.Spec : Prop :=
  ∀ n, P16515017583701308999.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P5329087550008865435

`9*A022087(n+4)`
-/

namespace A208088.P5329087550008865435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A022087 (n + 4)

end

end A208088.P5329087550008865435

namespace A208088

/-- `9*A022087(n+4)` -/
def P5329087550008865435.Spec : Prop :=
  ∀ n, P5329087550008865435.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P3671342436939702774

`12*A022086(n+4)`
-/

namespace A208088.P3671342436939702774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A022086 (n + 4)

end

end A208088.P3671342436939702774

namespace A208088

/-- `12*A022086(n+4)` -/
def P3671342436939702774.Spec : Prop :=
  ∀ n, P3671342436939702774.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P5168903736492569123

`18*A090991(n+1)`
-/

namespace A208088.P5168903736492569123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A090991 (n + 1)

end

end A208088.P5168903736492569123

namespace A208088

/-- `18*A090991(n+1)` -/
def P5168903736492569123.Spec : Prop :=
  ∀ n, P5168903736492569123.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P7292588899157000581

`36*A000045(n+4)`
-/

namespace A208088.P7292588899157000581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A000045 (n + 4)

end

end A208088.P7292588899157000581

namespace A208088

/-- `36*A000045(n+4)` -/
def P7292588899157000581.Spec : Prop :=
  ∀ n, P7292588899157000581.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P11053121397952819664

`A000032(n+1)+A280932(n+9)+A101156(n+5)`
-/

namespace A208088.P11053121397952819664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + (A280932 (n + 9) + A101156 (n + 5))

end

end A208088.P11053121397952819664

namespace A208088

/-- `A000032(n+1)+A280932(n+9)+A101156(n+5)` -/
def P11053121397952819664.Spec : Prop :=
  ∀ n, P11053121397952819664.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P17111365928543659189

`A280931(n+8)+A280932(n+8)-A022122(n+1)`
-/

namespace A208088.P17111365928543659189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280931 (n + 8) + (A280932 (n + 8) - A022122 (n + 1))

end

end A208088.P17111365928543659189

namespace A208088

/-- `A280931(n+8)+A280932(n+8)-A022122(n+1)` -/
def P17111365928543659189.Spec : Prop :=
  ∀ n, P17111365928543659189.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P807702490054508688

`(A044102(2*n+1)-A044102(2*n))*A020695(n+1)`
-/

namespace A208088.P807702490054508688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044102 (2 * n + 1) - A044102 (2 * n)) * A020695 (n + 1)

end

end A208088.P807702490054508688

namespace A208088

/-- `(A044102(2*n+1)-A044102(2*n))*A020695(n+1)` -/
def P807702490054508688.Spec : Prop :=
  ∀ n, P807702490054508688.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P3379576446237019329

`(A008600(2*n+1)-A008600(2*n))*A078642(n+2)`
-/

namespace A208088.P3379576446237019329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008600 (2 * n + 1) - A008600 (2 * n)) * A078642 (n + 2)

end

end A208088.P3379576446237019329

namespace A208088

/-- `(A008600(2*n+1)-A008600(2*n))*A078642(n+2)` -/
def P3379576446237019329.Spec : Prop :=
  ∀ n, P3379576446237019329.a n = A208088 (n + 1)

end A208088

/-! ## A208088.P5804741483447635549

`(A044102(2*n+1)-A044102(2*n))*A071679(n+2)`
-/

namespace A208088.P5804741483447635549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044102 (2 * n + 1) - A044102 (2 * n)) * A071679 (n + 2)

end

end A208088.P5804741483447635549

namespace A208088

/-- `(A044102(2*n+1)-A044102(2*n))*A071679(n+2)` -/
def P5804741483447635549.Spec : Prop :=
  ∀ n, P5804741483447635549.a n = A208088 (n + 1)

end A208088

/-!
# A208089: Number of 8 X (n+1) 0..1 arrays with every 2 X 2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..1 introduced in row major order.

The programs for A208089, the canonical program `A208089.P15961409153887252375` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208089 has offset 1).

The definition of A208089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208089.P15961409153887252375

`3*A208087(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A208089

/-- `3*A208087(n+1)` -/
def P15961409153887252375.Spec : Prop :=
  ∀ n, P15961409153887252375.a n = A208089 (n + 1)

theorem P15961409153887252375.correct : P15961409153887252375.Spec := by
  intro n
  simp only [A208089, Nat.add_sub_cancel]

end A208089

/-! ## A208089.P2736327963035208454

`9*A208086(n+1)`
-/

namespace A208089.P2736327963035208454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A208086 (n + 1)

end

end A208089.P2736327963035208454

namespace A208089

/-- `9*A208086(n+1)` -/
def P2736327963035208454.Spec : Prop :=
  ∀ n, P2736327963035208454.a n = A208089 (n + 1)

theorem P2736327963035208454.correct : P2736327963035208454.Spec := by
  intro n
  simp only [A208089, Nat.add_sub_cancel, A208089.P2736327963035208454.a, A208089.P15961409153887252375.a, A208086, A208086.P7690875717955733551.a, A208087, A208087.P8234314849387391565.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A208089

/-! ## A208089.P3111653267910627158

`18*(A020695(n+1)²+3)`
-/

namespace A208089.P3111653267910627158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * (A020695 (n + 1) ^ 2 + 3)

end

end A208089.P3111653267910627158

namespace A208089

/-- `18*(A020695(n+1)²+3)` -/
def P3111653267910627158.Spec : Prop :=
  ∀ n, P3111653267910627158.a n = A208089 (n + 1)

end A208089

/-! ## A208089.P12478307324216604552

`(A152163(n+6)²+3)*A349485(A046212(2*n+3))`
-/

namespace A208089.P12478307324216604552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152163 (n + 6) ^ 2 + 3) * A349485 (A046212 (2 * n + 3)).toNat

end

end A208089.P12478307324216604552

namespace A208089

/-- `(A152163(n+6)²+3)*A349485(A046212(2*n+3))` -/
def P12478307324216604552.Spec : Prop :=
  ∀ n, P12478307324216604552.a n = A208089 (n + 1)

end A208089

/-! ## A208089.P7507617179540206831

`A208087(n+1)²/A208086(n+1)`
-/

namespace A208089.P7507617179540206831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208087 (n + 1) ^ 2 : ℚ) / (A208086 (n + 1) : ℚ)

end

end A208089.P7507617179540206831

namespace A208089

/-- `A208087(n+1)²/A208086(n+1)` -/
def P7507617179540206831.Spec : Prop :=
  ∀ n, P7507617179540206831.a n = (A208089 (n + 1) : ℚ)

end A208089

/-! ## A208089.P9228829612027592666

`9*A208085(A167614(n+1))`
-/

namespace A208089.P9228829612027592666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A208085 (A167614 (n + 1)).toNat

end

end A208089.P9228829612027592666

namespace A208089

/-- `9*A208085(A167614(n+1))` -/
def P9228829612027592666.Spec : Prop :=
  ∀ n, P9228829612027592666.a n = A208089 (n + 1)

end A208089

/-! ## A208089.P12560503032463062902

`3*A208085(∑[n+4]+11)`
-/

namespace A208089.P12560503032463062902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A208085 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A208089.P12560503032463062902

namespace A208089

/-- `3*A208085(∑[n+4]+11)` -/
def P12560503032463062902.Spec : Prop :=
  ∀ n, P12560503032463062902.a n = A208089 (n + 1)

end A208089

/-!
# A208092: Generalized Fibonacci numbers A_{n,6}.

The programs for A208092, there is no canonical definition to state claims against.
-/

/-! ## A208092.P17545751101586100313

`C(A006208(n+1), A141285(A134829(n)))`
-/

namespace A208092.P17545751101586100313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006208 (n + 1)).toNat (A141285 (A134829 n).toNat).toNat

end

end A208092.P17545751101586100313

/-! ## A208092.P1878326021751433892

`C(A130628(n+1), A271778(A000079(n)))`
-/

namespace A208092.P1878326021751433892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130628 (n + 1)).toNat (A271778 (A000079 n).toNat).toNat

end

end A208092.P1878326021751433892

/-! ## A208092.P4797899088924026286

`A130628(n+1)-A188436(A316469(n+1))`
-/

namespace A208092.P4797899088924026286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130628 (n + 1) - A188436 (A316469 (n + 1)).toNat

end

end A208092.P4797899088924026286

/-! ## A208092.P14907089684901816093

`A006209(n+1)%A308128(A130628(n+1))`
-/

namespace A208092.P14907089684901816093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006209 (n + 1)) (A308128 (A130628 (n + 1)).toNat)

end

end A208092.P14907089684901816093

/-! ## A208092.P10993753407628452385

`A130685(C(A130628(n+1), A130675(n+2)))`
-/

namespace A208092.P10993753407628452385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130685 (Nat.choose (A130628 (n + 1)).toNat (A130675 (n + 2)).toNat)

end

end A208092.P10993753407628452385

/-!
# A208093: Number of nX3 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal, diagonal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208093, there is no canonical definition to state claims against.
-/

/-! ## A208093.P320324530188732681

`A208096(∑[n+3]+1)`
-/

namespace A208093.P320324530188732681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208096 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208093.P320324530188732681

/-! ## A208093.P4872822221972469816

`A057427(n+1)*A208096(A055999(n)+4)`
-/

namespace A208093.P4872822221972469816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A208096 (A055999 n + 4).toNat

end

end A208093.P4872822221972469816

/-! ## A208093.P1297768307198515243

`A208096(A165157(2*n+3))-A326459(n)`
-/

namespace A208093.P1297768307198515243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208096 (A165157 (2 * n + 3)).toNat - A326459 n

end

end A208093.P1297768307198515243

/-!
# A208094: Number of n X 4 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal, diagonal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208094, there is no canonical definition to state claims against.
-/

/-! ## A208094.P5889920968498507193

`A208096(∑[n+3]-char[57*n])`
-/

namespace A208094.P5889920968498507193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208096 (∑ j ∈ Finset.range (n + 1), f1 j - (if ∃ j, f2 j = n then 1 else 0))

end

end A208094.P5889920968498507193

/-!
# A208095: Number of n X 5 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal, diagonal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208095, there is no canonical definition to state claims against.
-/

/-! ## A208095.P1291086522140334856

`A208096(lt[A010054(n), A010054(n+4)])`
-/

namespace A208095.P1291086522140334856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208096 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A208095.P1291086522140334856

/-!
# A208097: Number of 2 X n nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal, diagonal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208097, there is no canonical definition to state claims against.
-/

/-! ## A208097.P13084956226279159853

`A208096(∑[n+1]+2)`
-/

namespace A208097.P13084956226279159853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208096 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A208097.P13084956226279159853

/-! ## A208097.P7549214413683550602

`gcd(A000038(n), A208096(A133263(n+1)))`
-/

namespace A208097.P7549214413683550602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A208096 (A133263 (n + 1)).toNat)

end

end A208097.P7549214413683550602

/-! ## A208097.P10764473776732094097

`A208096(A133263(n+1))+A000038(n+1)`
-/

namespace A208097.P10764473776732094097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208096 (A133263 (n + 1)).toNat + A000038 (n + 1)

end

end A208097.P10764473776732094097

/-! ## A208097.P11123854756600705324

`record[gcd(A122203(n), A208096(n+3))]`
-/

namespace A208097.P11123854756600705324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122203 n) (A208096 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208097.P11123854756600705324

