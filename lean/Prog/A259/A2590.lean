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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A259000: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A259000, there is no canonical definition to state claims against.
-/

/-! ## A259000.P13835205818208252717

`A259006(∑[n+2])`
-/

namespace A259000.P13835205818208252717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259000.P13835205818208252717

/-! ## A259000.P15032243741783536019

`or(char[1], A259006(A000096(n+1)))`
-/

namespace A259000.P15032243741783536019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A259006 (A000096 (n + 1)).toNat)

end

end A259000.P15032243741783536019

/-! ## A259000.P10463016860888214272

`record[A259006(A000096(A134478(n)))]`
-/

namespace A259000.P10463016860888214272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A000096 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259000.P10463016860888214272

/-! ## A259000.P11449339306430279083

`record[A259006(A000096(A003963(n+1)))]`
-/

namespace A259000.P11449339306430279083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259000.P11449339306430279083

/-! ## A259000.P13779783775815500266

`record[A259006(A000096(A004739(n+1)))]`
-/

namespace A259000.P13779783775815500266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A000096 (A004739 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259000.P13779783775815500266

/-! ## A259000.P11311243573125028833

`record[A259006(A000096(A032742(n+1)))]`
-/

namespace A259000.P11311243573125028833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259000.P11311243573125028833

/-!
# A259001: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A259001, there is no canonical definition to state claims against.
-/

/-! ## A259001.P13527889393125659035

`A259006(∑[n+3]+1)`
-/

namespace A259001.P13527889393125659035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259001.P13527889393125659035

/-! ## A259001.P1533136479717198301

`A259006(Δ[A008778(n)])+n*C(2, n+2)`
-/

namespace A259001.P1533136479717198301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (f1 (n + 1) - f1 n).toNat + (n * Nat.choose 2 (n + 2) : ℤ)

end

end A259001.P1533136479717198301

/-! ## A259001.P10561826527245334290

`A259006(Δ[A008778(n)])*A262681(n)`
-/

namespace A259001.P10561826527245334290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (f1 (n + 1) - f1 n).toNat * A262681 n

end

end A259001.P10561826527245334290

/-! ## A259001.P1313965549430678649

`A259006(Δ[A008778(n)])+A000007(n+1)`
-/

namespace A259001.P1313965549430678649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A259001.P1313965549430678649

/-! ## A259001.P14452781762201305927

`A259006(Δ[A008778(n)])+A000035(2*n)`
-/

namespace A259001.P14452781762201305927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (f1 (n + 1) - f1 n).toNat + A000035 (2 * n)

end

end A259001.P14452781762201305927

/-! ## A259001.P17354365837115989262

`A033999(4*n)*A259006(Δ[A008778(n)])`
-/

namespace A259001.P17354365837115989262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (4 * n) * A259006 (f1 (n + 1) - f1 n).toNat

end

end A259001.P17354365837115989262

/-! ## A259001.P7900708737489203958

`A259006(Δ[A008778(n)])%A259009(n+1)`
-/

namespace A259001.P7900708737489203958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259006 (f1 (n + 1) - f1 n).toNat) (A259009 (n + 1))

end

end A259001.P7900708737489203958

/-! ## A259001.P18250405357048466939

`A259006(Δ[A008778(n)])+n*A000038(n)`
-/

namespace A259001.P18250405357048466939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (f1 (n + 1) - f1 n).toNat + (n : ℤ) * A000038 n

end

end A259001.P18250405357048466939

/-! ## A259001.P11811531043527049344

`A259006(A034856(n+2))%A259010(n+1)`
-/

namespace A259001.P11811531043527049344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259006 (A034856 (n + 2)).toNat) (A259010 (n + 1))

end

end A259001.P11811531043527049344

/-! ## A259001.P16351142720072725013

`A259006(Δ[A008778(n)])+A051516(2*n+1)`
-/

namespace A259001.P16351142720072725013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (f1 (n + 1) - f1 n).toNat + A051516 (2 * n + 1)

end

end A259001.P16351142720072725013

/-!
# A259002: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A259002, there is no canonical definition to state claims against.
-/

/-! ## A259002.P7694305226013921903

`A259006(∑[n+4]+3)`
-/

namespace A259002.P7694305226013921903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A259002.P7694305226013921903

/-! ## A259002.P3579966870219493263

`A259006(A055998(n+2))%A036471(n+1)`
-/

namespace A259002.P3579966870219493263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259006 (A055998 (n + 2)).toNat) (A036471 (n + 1))

end

end A259002.P3579966870219493263

/-! ## A259002.P14578626433582621768

`and(A134824(n+2), A259006(A056000(n)+7))`
-/

namespace A259002.P14578626433582621768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 (n + 2)) (A259006 (A056000 n + 7).toNat)

end

end A259002.P14578626433582621768

/-! ## A259002.P2985543973290920759

`A014963(A008458(n))*A259006(A027379(n+2))`
-/

namespace A259002.P2985543973290920759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A259006 (A027379 (n + 2)).toNat

end

end A259002.P2985543973290920759

/-! ## A259002.P11323504745082314752

`A000164(A025428(n))*A259006(A027379(n+2))`
-/

namespace A259002.P11323504745082314752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A025428 n).toNat * A259006 (A027379 (n + 2)).toNat

end

end A259002.P11323504745082314752

/-! ## A259002.P9880200775306625768

`A001221(A140513(n))*A259006(A027379(n+2))`
-/

namespace A259002.P9880200775306625768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A140513 n).toNat * A259006 (A027379 (n + 2)).toNat

end

end A259002.P9880200775306625768

/-! ## A259002.P16282245287992037791

`A014963(A000217(n+4))*A259006(A027379(n+2))`
-/

namespace A259002.P16282245287992037791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 4)).toNat * A259006 (A027379 (n + 2)).toNat

end

end A259002.P16282245287992037791

/-! ## A259002.P16445271835311700152

`A259006(A027379(n+2))/A014963(A000217(n+6))`
-/

namespace A259002.P16445271835311700152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259006 (A027379 (n + 2)).toNat : ℚ) / (A014963 (A000217 (n + 6)).toNat : ℚ)

end

end A259002.P16445271835311700152

/-!
# A259003: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A259003, there is no canonical definition to state claims against.
-/

/-! ## A259003.P11250008006351030726

`A259006(∑[n+5]+6)`
-/

namespace A259003.P11250008006351030726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A259003.P11250008006351030726

/-! ## A259003.P18056006356426677570

`or(A000038(n), A259006(A046691(n+3)))`
-/

namespace A259003.P18056006356426677570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A259006 (A046691 (n + 3)).toNat)

end

end A259003.P18056006356426677570

/-! ## A259003.P558304451041105212

`A259006(A046691(n+3))+char[A016951(n)]`
-/

namespace A259003.P558304451041105212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016951 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A259003.P558304451041105212

/-! ## A259003.P1456984075263517993

`A259006(A046691(n+3))+A000007(n+1)`
-/

namespace A259003.P1456984075263517993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A046691 (n + 3)).toNat + A000007 (n + 1)

end

end A259003.P1456984075263517993

/-! ## A259003.P8684254846689043550

`A259006(A046691(n+3))+A000038(n+1)`
-/

namespace A259003.P8684254846689043550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A046691 (n + 3)).toNat + A000038 (n + 1)

end

end A259003.P8684254846689043550

/-! ## A259003.P5842526965842934672

`A259006(A046691(n+3))/A007318(n²%(n+1))`
-/

namespace A259003.P5842526965842934672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259006 (A046691 (n + 3)).toNat : ℚ) / (A007318 (n ^ 2 % (n + 1)) : ℚ)

end

end A259003.P5842526965842934672

/-! ## A259003.P17811822402492459162

`A259006(A046691(n+3))+n*A008683(2*(n+1)²)`
-/

namespace A259003.P17811822402492459162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A046691 (n + 3)).toNat + (n : ℤ) * A008683 (2 * (n + 1) ^ 2)

end

end A259003.P17811822402492459162

/-! ## A259003.P11945321013008575218

`A001222(A002313(n+1))*A259006(A046691(n+3))`
-/

namespace A259003.P11945321013008575218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002313 (n + 1)).toNat * A259006 (A046691 (n + 3)).toNat

end

end A259003.P11945321013008575218

/-! ## A259003.P10531410720448454229

`A001222(A008578(n+2))*A259006(A046691(n+3))`
-/

namespace A259003.P10531410720448454229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 2)).toNat * A259006 (A046691 (n + 3)).toNat

end

end A259003.P10531410720448454229

/-! ## A259003.P5969811266678075903

`A000120(A020639(2*(n+1)))*A259006(A046691(n+3))`
-/

namespace A259003.P5969811266678075903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A020639 (2 * (n + 1))).toNat * A259006 (A046691 (n + 3)).toNat

end

end A259003.P5969811266678075903

/-!
# A259004: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A259004, there is no canonical definition to state claims against.
-/

/-! ## A259004.P10367353390492587871

`A259006((n+4)²-∑[n+1]+1)`
-/

namespace A259004.P10367353390492587871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A259004.P10367353390492587871

/-! ## A259004.P16414942920117548251

`abs(A259006(A052905(n+3))-n)+n`
-/

namespace A259004.P16414942920117548251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A259006 (A052905 (n + 3)).toNat - (n : ℤ)| + (n : ℤ)

end

end A259004.P16414942920117548251

/-! ## A259004.P15548367665485351965

`lcm(A020985(n), A259006(A052905(n+3)))`
-/

namespace A259004.P15548367665485351965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A259006 (A052905 (n + 3)).toNat)

end

end A259004.P15548367665485351965

/-! ## A259004.P14011981271836626861

`A259006(A052905(n+3))%A164338(n+1)`
-/

namespace A259004.P14011981271836626861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259006 (A052905 (n + 3)).toNat) (A164338 (n + 1))

end

end A259004.P14011981271836626861

/-! ## A259004.P18440883214401759564

`A071936(n+1)²*A259006(eq[8, A258709(n)])`
-/

namespace A259004.P18440883214401759564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (n + 1) ^ 2 * A259006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259004.P18440883214401759564

/-! ## A259004.P11026259200377186879

`A259006(eq[8, A258709(n)])%A099542(n+1)²`
-/

namespace A259004.P11026259200377186879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A099542 (n + 1) ^ 2)

end

end A259004.P11026259200377186879

/-!
# A259005: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A259005, there is no canonical definition to state claims against.
-/

/-! ## A259005.P10803283453707603636

`A259006(∑[n+7]+15)`
-/

namespace A259005.P10803283453707603636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A259005.P10803283453707603636

/-! ## A259005.P10615710125216229228

`A259006(A000124(n+6)+n)+A000007(n+1)`
-/

namespace A259005.P10615710125216229228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A000124 (n + 6) + (n : ℤ)).toNat + A000007 (n + 1)

end

end A259005.P10615710125216229228

/-! ## A259005.P2367433007694832047

`A259006(A027379(n+5)-3)+A025441(A025442(n))`
-/

namespace A259005.P2367433007694832047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A027379 (n + 5) - 3).toNat + A025441 (A025442 n).toNat

end

end A259005.P2367433007694832047

/-! ## A259005.P5522263491469169122

`A259006(A000124(n+6)+n)+A006927(A096500(n+1))`
-/

namespace A259005.P5522263491469169122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A000124 (n + 6) + (n : ℤ)).toNat + A006927 (A096500 (n + 1)).toNat

end

end A259005.P5522263491469169122

/-! ## A259005.P15276265075771680217

`A032742(A000040(n+1))*A259006(A000124(n+6)+n)`
-/

namespace A259005.P15276265075771680217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A000040 (n + 1)).toNat * A259006 (A000124 (n + 6) + (n : ℤ)).toNat

end

end A259005.P15276265075771680217

/-! ## A259005.P15332146211142474410

`A185118(A096512(n+1))*A259006(A000124(n+6)+n)`
-/

namespace A259005.P15332146211142474410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185118 (A096512 (n + 1)).toNat * A259006 (A000124 (n + 6) + (n : ℤ)).toNat

end

end A259005.P15332146211142474410

/-!
# A259007: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A259007, there is no canonical definition to state claims against.
-/

/-! ## A259007.P5281043814528216844

`A259006(∑[n+1]+2)`
-/

namespace A259007.P5281043814528216844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A259007.P5281043814528216844

/-! ## A259007.P4476825144209535218

`A260190(3*n+1)+A259006(C(n+2, 2)+2)`
-/

namespace A259007.P4476825144209535218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260190 (3 * n + 1) + A259006 (Nat.choose (n + 2) 2 + 2)

end

end A259007.P4476825144209535218

/-! ## A259007.P10836868432906819468

`gcd(23, A179938(n+1))*A259006(C(n+2, 2)+2)`
-/

namespace A259007.P10836868432906819468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 23 (A179938 (n + 1)) : ℤ) * A259006 (Nat.choose (n + 2) 2 + 2)

end

end A259007.P10836868432906819468

/-! ## A259007.P721261934847133203

`C(A000010(n+1), n)!*A259006(A000096(n)+3)`
-/

namespace A259007.P721261934847133203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose (A000010 (n + 1)).toNat n) : ℤ) * A259006 (A000096 n + 3).toNat

end

end A259007.P721261934847133203

/-! ## A259007.P16175505899880969594

`A259006(A000096(n)+3)+A186747(A000120(n))`
-/

namespace A259007.P16175505899880969594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A000096 n + 3).toNat + A186747 (A000120 n).toNat

end

end A259007.P16175505899880969594

/-! ## A259007.P11812106990541121313

`A051731(A001227(n+1))*A259006(A000096(n)+3)`
-/

namespace A259007.P11812106990541121313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A001227 (n + 1)).toNat * A259006 (A000096 n + 3).toNat

end

end A259007.P11812106990541121313

/-! ## A259007.P16042111188008314403

`A005086(A283146(n+1))*A259006(A000096(n)+3)`
-/

namespace A259007.P16042111188008314403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (A283146 (n + 1)).toNat * A259006 (A000096 n + 3).toNat

end

end A259007.P16042111188008314403

/-! ## A259007.P12978495791621181674

`A051731(A000217(n+5))*A259006(A000096(n)+3)`
-/

namespace A259007.P12978495791621181674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A000217 (n + 5)).toNat * A259006 (A000096 n + 3).toNat

end

end A259007.P12978495791621181674

/-!
# A259008: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A259008, there is no canonical definition to state claims against.
-/

/-! ## A259008.P14499746333109347252

`A259006(∑[n+2]+4)`
-/

namespace A259008.P14499746333109347252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259008.P14499746333109347252

/-! ## A259008.P3335101524168114932

`or(char[1], A259006(A167614(n+1)))`
-/

namespace A259008.P3335101524168114932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A259006 (A167614 (n + 1)).toNat)

end

end A259008.P3335101524168114932

/-! ## A259008.P10871312116984867730

`A057427(n+1)*A259006(A167614(n+1))`
-/

namespace A259008.P10871312116984867730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A259006 (A167614 (n + 1)).toNat

end

end A259008.P10871312116984867730

/-! ## A259008.P12480398666919600224

`A259006(A167614(n+1))%A164338(n+1)`
-/

namespace A259008.P12480398666919600224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259006 (A167614 (n + 1)).toNat) (A164338 (n + 1))

end

end A259008.P12480398666919600224

/-! ## A259008.P9528868026170862687

`lcm(A259006(A167614(n+1)), A283131(n+1))`
-/

namespace A259008.P9528868026170862687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A259006 (A167614 (n + 1)).toNat) (A283131 (n + 1))

end

end A259008.P9528868026170862687

/-! ## A259008.P7603692016202468648

`A007318(C(n+2, 2))*A259006(A167614(n+1))`
-/

namespace A259008.P7603692016202468648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 2) 2) * A259006 (A167614 (n + 1)).toNat

end

end A259008.P7603692016202468648

/-! ## A259008.P11955273994149869169

`A014963(A168109(n))*A259006(A167614(n+1))`
-/

namespace A259008.P11955273994149869169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A168109 n).toNat * A259006 (A167614 (n + 1)).toNat

end

end A259008.P11955273994149869169

/-! ## A259008.P10236486170447405526

`A007318(A270417(n+2))*A259006(A167614(n+1))`
-/

namespace A259008.P10236486170447405526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A270417 (n + 2)).toNat * A259006 (A167614 (n + 1)).toNat

end

end A259008.P10236486170447405526

/-! ## A259008.P8232133470524035459

`A014963(A198387(n+1))*A259006(A167614(n+1))`
-/

namespace A259008.P8232133470524035459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A198387 (n + 1)).toNat * A259006 (A167614 (n + 1)).toNat

end

end A259008.P8232133470524035459

/-!
# A259009: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A259009, there is no canonical definition to state claims against.
-/

/-! ## A259009.P11731369624688110936

`A259006(A052905(n)+9)`
-/

namespace A259009.P11731369624688110936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A052905 n + 9).toNat

end

end A259009.P11731369624688110936

/-! ## A259009.P12889468033742514541

`A259006(A055999(n)+10)`
-/

namespace A259009.P12889468033742514541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A055999 n + 10).toNat

end

end A259009.P12889468033742514541

/-! ## A259009.P12699809215421001580

`A259006(A167614(n+2)+1)`
-/

namespace A259009.P12699809215421001580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A167614 (n + 2) + 1).toNat

end

end A259009.P12699809215421001580

/-! ## A259009.P16516359033498889049

`A259006(A166136(n+2)-2)`
-/

namespace A259009.P16516359033498889049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A166136 (n + 2) - 2).toNat

end

end A259009.P16516359033498889049

/-! ## A259009.P16319091865402866006

`A259006(A134869(n+3)+3)`
-/

namespace A259009.P16319091865402866006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A134869 (n + 3) + 3).toNat

end

end A259009.P16319091865402866006

/-! ## A259009.P18305725334289274203

`A259006(A000217(n+3)+4)`
-/

namespace A259009.P18305725334289274203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A000217 (n + 3) + 4).toNat

end

end A259009.P18305725334289274203

/-! ## A259009.P2016828991054250282

`A259006(A161680(n+4)+4)`
-/

namespace A259009.P2016828991054250282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A161680 (n + 4) + 4).toNat

end

end A259009.P2016828991054250282

/-! ## A259009.P18368546085979888860

`A259006(A092392(∑[n+3])+4)`
-/

namespace A259009.P18368546085979888860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A092392 (∑ j ∈ Finset.range (n + 1), f1 j) + 4).toNat

end

end A259009.P18368546085979888860

/-! ## A259009.P3499292214133405891

`A259006(A166136(n+1)+1+n)`
-/

namespace A259009.P3499292214133405891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A259009.P3499292214133405891

/-! ## A259009.P11815219895098515766

`A259006(Δ[A023545(n+1)-n²])`
-/

namespace A259009.P11815219895098515766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (f1 (n + 1) - f1 n).toNat

end

end A259009.P11815219895098515766

/-!
# A259010: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A259010, there is no canonical definition to state claims against.
-/

/-! ## A259010.P16529001145153232298

`A259006(∑[n+4]+11)`
-/

namespace A259010.P16529001145153232298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A259010.P16529001145153232298

/-! ## A259010.P16290430227845909653

`lcm(A040001(n), A259006(A167499(n+3)))`
-/

namespace A259010.P16290430227845909653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A259006 (A167499 (n + 3)).toNat)

end

end A259010.P16290430227845909653

/-! ## A259010.P13026630876188527472

`A057427(n+1)*A259006(A155212(n)+13)`
-/

namespace A259010.P13026630876188527472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A259006 (A155212 n + 13).toNat

end

end A259010.P13026630876188527472

/-! ## A259010.P5924780400737010264

`A259006(A155212(n)+13)%A164338(n+1)`
-/

namespace A259010.P5924780400737010264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259006 (A155212 n + 13).toNat) (A164338 (n + 1))

end

end A259010.P5924780400737010264

/-! ## A259010.P9891879121188497465

`A259006(A155212(n)+13)+A025436(A025436(n))`
-/

namespace A259010.P9891879121188497465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A155212 n + 13).toNat + A025436 (A025436 n).toNat

end

end A259010.P9891879121188497465

/-!
# A259011: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A259011, there is no canonical definition to state claims against.
-/

/-! ## A259011.P1764061115858902744

`A259006(A166136(n+4))`
-/

namespace A259011.P1764061115858902744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A166136 (n + 4)).toNat

end

end A259011.P1764061115858902744

/-! ## A259011.P1987504565851972824

`A259006(A167614(n+4)+3)`
-/

namespace A259011.P1987504565851972824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A167614 (n + 4) + 3).toNat

end

end A259011.P1987504565851972824

/-! ## A259011.P2307378761117074922

`A259006(A000217(n+5)+6)`
-/

namespace A259011.P2307378761117074922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A000217 (n + 5) + 6).toNat

end

end A259011.P2307378761117074922

/-! ## A259011.P4394927758023822482

`A259006(A046691(n+3)+10)`
-/

namespace A259011.P4394927758023822482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A046691 (n + 3) + 10).toNat

end

end A259011.P4394927758023822482

/-! ## A259011.P6561916578636267329

`A259006(A008619(A048058(n+5)))`
-/

namespace A259011.P6561916578636267329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A008619 (A048058 (n + 5)).toNat).toNat

end

end A259011.P6561916578636267329

/-! ## A259011.P4058222381190572656

`A259006(A005843(n+7)+A000124(n+3))`
-/

namespace A259011.P4058222381190572656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A005843 (n + 7) + A000124 (n + 3)).toNat

end

end A259011.P4058222381190572656

/-!
# A259012: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A259012, there is no canonical definition to state claims against.
-/

/-! ## A259012.P17138690470888974864

`A259006(A167614(n+5)+4)`
-/

namespace A259012.P17138690470888974864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A167614 (n + 5) + 4).toNat

end

end A259012.P17138690470888974864

/-! ## A259012.P1377463354534792492

`A259006(A000124(n+6)+6)`
-/

namespace A259012.P1377463354534792492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A000124 (n + 6) + 6).toNat

end

end A259012.P1377463354534792492

/-! ## A259012.P17048095888148124537

`A259006(A000217(n+6)+7)`
-/

namespace A259012.P17048095888148124537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A000217 (n + 6) + 7).toNat

end

end A259012.P17048095888148124537

/-! ## A259012.P12599903137684657731

`A259006(Δ[A023551(n+1)]+13)`
-/

namespace A259012.P12599903137684657731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (f1 (n + 1) - f1 n + 13).toNat

end

end A259012.P12599903137684657731

/-! ## A259012.P3855677810132892881

`A259006(A134869(n+7)-(n+1))`
-/

namespace A259012.P3855677810132892881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A134869 (n + 7) - (n + 1 : ℤ)).toNat

end

end A259012.P3855677810132892881

/-! ## A259012.P9095838422496331576

`A259006(A000096(n+7)-A004273(n+4))`
-/

namespace A259012.P9095838422496331576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A000096 (n + 7) - A004273 (n + 4)).toNat

end

end A259012.P9095838422496331576

/-!
# A259013: a(n) is the smallest number of grains of sand placed at the center square of a (2n-1) X (2n-1) table so that some grains drop off the table by the end of the diffusion process.

The programs for A259013, there is no canonical definition to state claims against.
-/

/-! ## A259013.P6078756404378746742

`∑[∑[A182861(A217709(n+1))]]`
-/

namespace A259013.P6078756404378746742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182861 (A217709 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259013.P6078756404378746742

/-! ## A259013.P14199331584449769310

`4*A180198(A008013(n))`
-/

namespace A259013.P14199331584449769310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A180198 (A008013 n).toNat

end

end A259013.P14199331584449769310

/-!
# A259015: The number of fixed polycubes of size n that span n-4 dimensions.

The programs for A259015, there is no canonical definition to state claims against.
-/

/-! ## A259015.P78891589934524856

`A195739(∑[n+4]+3)`
-/

namespace A259015.P78891589934524856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195739 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A259015.P78891589934524856

/-!
# A259016: A(n,k) = k-th pi-based antiderivative of n; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A259016, there is no canonical definition to state claims against.
-/

/-! ## A259016.P8471297847448142456

`A225541(2*n*A243203(n))`
-/

namespace A259016.P8471297847448142456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (2 * ((n : ℤ) * A243203 n)).toNat

end

end A259016.P8471297847448142456

/-! ## A259016.P6304045165844653501

`A001222(A001095(A129246(n+1)))`
-/

namespace A259016.P6304045165844653501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001095 (A129246 (n + 1)).toNat).toNat

end

end A259016.P6304045165844653501

/-! ## A259016.P7433817637755678055

`A001222(lcm(A013612(n), A111820(n)))`
-/

namespace A259016.P7433817637755678055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A013612 n) (A111820 n))

end

end A259016.P7433817637755678055

/-! ## A259016.P4124774024863959150

`A007895(lcm(A001405(n), A248813(n)))`
-/

namespace A259016.P4124774024863959150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Int.lcm (A001405 n) (A248813 n))

end

end A259016.P4124774024863959150

/-!
# A259020: Numbers k such that k^2 + 1 is a divisorial prime (A258455).

The programs for A259020, there is no canonical definition to state claims against.
-/

/-! ## A259020.P12125244933710726373

`floor(sqrt(A258455(n+2)))`
-/

namespace A259020.P12125244933710726373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A258455 (n + 2))

end

end A259020.P12125244933710726373

/-! ## A259020.P18084235648911964519

`round(sqrt(A258455(n+2)-A010815(n)))`
-/

namespace A259020.P18084235648911964519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A258455 (n + 2) - A010815 n : ℝ))

end

end A259020.P18084235648911964519

/-! ## A259020.P10986963061641761584

`round(sqrt(A258455(n+2)-A015918(n)))`
-/

namespace A259020.P10986963061641761584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A258455 (n + 2) - A015918 n : ℝ))

end

end A259020.P10986963061641761584

/-! ## A259020.P14894849475598631997

`∪[A259021(n+1), A259023(n+1)²]`
-/

namespace A259020.P14894849475598631997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259023 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259020.P14894849475598631997

/-! ## A259020.P8047324293051117252

`round(sqrt(A258455(n+2)-A000005(n+1)))`
-/

namespace A259020.P8047324293051117252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A258455 (n + 2) - A000005 (n + 1) : ℝ))

end

end A259020.P8047324293051117252

/-!
# A259021: Numbers k such that k^2 = Product_{d|k} d (= A007955(k)) and simultaneously k^2 + 1 is a divisorial prime (A258455).

The programs for A259021, there is no canonical definition to state claims against.
-/

/-! ## A259021.P12595965028666302742

`floor(sqrt(A258896(n+1)))`
-/

namespace A259021.P12595965028666302742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A258896 (n + 1))

end

end A259021.P12595965028666302742

/-! ## A259021.P10721926327808314729

`floor(sqrt(A052292(n+1)%A004803(n+1)))`
-/

namespace A259021.P10721926327808314729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (A052292 (n + 1)) (A004803 (n + 1)))

end

end A259021.P10721926327808314729

/-! ## A259021.P2039482018337016091

`A000005(gcd(n, a(n-1))+1)*A052291(n+1)` with `a(0)=1`
-/

namespace A259021.P2039482018337016091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (Int.gcd (n : ℤ) (a (n - 1)) + 1) * A052291 (n + 1)

end

end A259021.P2039482018337016091

/-! ## A259021.P12072757255456863337

`(2*A052291(n+1))%∑[A052291(n+2)]`
-/

namespace A259021.P12072757255456863337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052291 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A052291 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259021.P12072757255456863337

/-! ## A259021.P3921792307411463998

`∩[A097381(n+1), A207574(n+1)]`
-/

namespace A259021.P3921792307411463998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259021.P3921792307411463998

/-! ## A259021.P11249148931054236745

`∩[A118369(n+1), A207574(n+1)]`
-/

namespace A259021.P11249148931054236745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259021.P11249148931054236745

/-! ## A259021.P2636577472881155350

`∩[A207574(n+1), A268752(n+1)]`
-/

namespace A259021.P2636577472881155350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259021.P2636577472881155350

/-! ## A259021.P1049447655058867941

`∩[A005574(n+1), A207574(n+1)]`
-/

namespace A259021.P1049447655058867941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259021.P1049447655058867941

/-! ## A259021.P16917505981658564957

`filter[A005574(n+1), A354927(#)]`
-/

namespace A259021.P16917505981658564957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A259021.P16917505981658564957

/-! ## A259021.P226033334727583613

`filter[A097381(n+1), A354927(#)]`
-/

namespace A259021.P226033334727583613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A259021.P226033334727583613

/-! ## A259021.P16540633224891363761

`filter[A118369(n+1), A354927(#)]`
-/

namespace A259021.P16540633224891363761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A259021.P16540633224891363761

/-! ## A259021.P13081255142683073557

`filter[A207574(n+1), A295405(#)]`
-/

namespace A259021.P13081255142683073557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A259021.P13081255142683073557

/-! ## A259021.P6431150563104913195

`filter[A268752(n+1), A354927(#)]`
-/

namespace A259021.P6431150563104913195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A259021.P6431150563104913195

/-! ## A259021.P14525279176879780896

`∩[A088686(n+1), A097381(n+1)]`
-/

namespace A259021.P14525279176879780896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259021.P14525279176879780896

/-! ## A259021.P18135620670128210468

`∩[A088686(n+1), A118369(n+1)]`
-/

namespace A259021.P18135620670128210468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259021.P18135620670128210468

/-! ## A259021.P15761014997139271418

`filter[A007422(n+1), A295405(#)]`
-/

namespace A259021.P15761014997139271418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A259021.P15761014997139271418

/-! ## A259021.P16051826259285539433

`∩[A005574(n+1), A007422(n+1)]`
-/

namespace A259021.P16051826259285539433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259021.P16051826259285539433

/-! ## A259021.P3840575532630966115

`∩[A007422(n+1), A097381(n+1)]`
-/

namespace A259021.P3840575532630966115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259021.P3840575532630966115

/-! ## A259021.P12057033593703075836

`∩[A007422(n+1), A118369(n+1)]`
-/

namespace A259021.P12057033593703075836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259021.P12057033593703075836

/-! ## A259021.P7093580053265997591

`∩[A007422(n+1), A268752(n+1)]`
-/

namespace A259021.P7093580053265997591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259021.P7093580053265997591

/-!
# A259022: Period 9 sequence [ 1, -1, -1, 1, 0, -1, 1, 1, -1, ...].

The programs for A259022, the canonical program `A259022.P10610587729386923475` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259022 has offset 0).

The definition of A259022 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259024, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259022.P10610587729386923475

`A259024(2*n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A259022

/-- `A259024(2*n+1)` -/
def P10610587729386923475.Spec : Prop :=
  ∀ n, P10610587729386923475.a n = A259022 n

theorem P10610587729386923475.correct : P10610587729386923475.Spec := by
  intro n
  simp only [A259022]

end A259022

/-!
# A259023: Numbers n such that Product_{d|n} d = k^2 for some k > n and simultaneously number k^2 + 1 is a divisorial prime (A258455).

The programs for A259023, there is no canonical definition to state claims against.
-/

/-! ## A259023.P14285542842151620885

`∩[A076771(n+1), A118369(n+1)]`
-/

namespace A259023.P14285542842151620885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259023.P14285542842151620885

/-! ## A259023.P3915704461961975065

`∩[2*A009188(n+1), A118369(n+1)]`
-/

namespace A259023.P3915704461961975065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259023.P3915704461961975065

/-! ## A259023.P6565892797774666146

`∩[A118369(n+1), A282671(n+1)]`
-/

namespace A259023.P6565892797774666146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259023.P6565892797774666146

/-! ## A259023.P5394993048059283925

`∩[A091375(n+1), A118369(n+1)]`
-/

namespace A259023.P5394993048059283925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259023.P5394993048059283925

/-! ## A259023.P5588700404209381123

`∩[A118369(n+1), A387723(n+1)]`
-/

namespace A259023.P5588700404209381123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259023.P5588700404209381123

/-! ## A259023.P15121173856683129538

`∩[A118369(n+1), A173664(n+1)]`
-/

namespace A259023.P15121173856683129538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259023.P15121173856683129538

/-! ## A259023.P6441996051039643543

`∩[A118369(n+1), A122181(n+1)]`
-/

namespace A259023.P6441996051039643543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259023.P6441996051039643543

/-! ## A259023.P11529317540073551386

`∩[A118369(n+1), A376384(n+1)]`
-/

namespace A259023.P11529317540073551386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259023.P11529317540073551386

/-! ## A259023.P4581779502423863050

`∩[A118369(n+1), A119911(n+1)]`
-/

namespace A259023.P4581779502423863050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259023.P4581779502423863050

/-! ## A259023.P12660122266095380703

`∩[A007624(n+1), A118369(n+1)]`
-/

namespace A259023.P12660122266095380703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259023.P12660122266095380703

/-! ## A259023.P11127421284567437976

`∩[A033942(n+1), A118369(n+1)]`
-/

namespace A259023.P11127421284567437976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259023.P11127421284567437976

/-! ## A259023.P10242527089706344933

`∩[A058080(n+1), A118369(n+1)]`
-/

namespace A259023.P10242527089706344933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259023.P10242527089706344933

/-! ## A259023.P9756221328563196587

`∩[A066423(n+1), A118369(n+1)]`
-/

namespace A259023.P9756221328563196587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259023.P9756221328563196587

/-! ## A259023.P6845559356633185232

`∩[A009188(n+1), A118369(n+1)]`
-/

namespace A259023.P6845559356633185232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259023.P6845559356633185232

/-!
# A259024: a(4*n) = a(n). a(4*n + 2) = 0. a(4*n + 1) = - A259022(n+2). a(4*n + 3) = - A259022(n-2).

The programs for A259024, the canonical program `A259024.P17201124140699928540` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259024 has offset 1).

The definition of A259024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259024.P16637060649742603449

`Δ[A259029(A028310(n))]+C(2, n+2)`
-/

namespace A259024.P16637060649742603449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259029 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A259024.P16637060649742603449

namespace A259024

/-- `Δ[A259029(A028310(n))]+C(2, n+2)` -/
def P16637060649742603449.Spec : Prop :=
  ∀ n, P16637060649742603449.a n = A259024 (n + 1)

end A259024

/-! ## A259024.P16049626119669934310

`∑{d}[n+1, A113448(#)*A355689((n+1)/#)]`
-/

namespace A259024.P16049626119669934310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113448 d * A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A259024.P16049626119669934310

namespace A259024

/-- `∑{d}[n+1, A113448(#)*A355689((n+1)/#)]` -/
def P16049626119669934310.Spec : Prop :=
  ∀ n, P16049626119669934310.a n = A259024 (n + 1)

end A259024

/-! ## A259024.P6966573220430532132

`A000007(n)+Δ[A259029(A028310(n))]`
-/

namespace A259024.P6966573220430532132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259029 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A259024.P6966573220430532132

namespace A259024

/-- `A000007(n)+Δ[A259029(A028310(n))]` -/
def P6966573220430532132.Spec : Prop :=
  ∀ n, P6966573220430532132.a n = A259024 (n + 1)

end A259024

/-! ## A259024.P8162278078001815936

`Δ[A259029(A028310(n))]^A002487(n)`
-/

namespace A259024.P8162278078001815936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259029 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A002487 n : ℤ)

end

end A259024.P8162278078001815936

namespace A259024

/-- `Δ[A259029(A028310(n))]^A002487(n)` -/
def P8162278078001815936.Spec : Prop :=
  ∀ n, P8162278078001815936.a n = (A259024 (n + 1) : ℚ)

end A259024

/-! ## A259024.P15977273717577651632

`Δ[A259029(A028310(n))]^A004200(n)`
-/

namespace A259024.P15977273717577651632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259029 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A004200 n : ℤ)

end

end A259024.P15977273717577651632

namespace A259024

/-- `Δ[A259029(A028310(n))]^A004200(n)` -/
def P15977273717577651632.Spec : Prop :=
  ∀ n, P15977273717577651632.a n = (A259024 (n + 1) : ℚ)

end A259024

/-! ## A259024.P13318321330239535204

`Δ[A259029(A028310(n))]^A004273(n)`
-/

namespace A259024.P13318321330239535204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259029 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A004273 n : ℤ)

end

end A259024.P13318321330239535204

namespace A259024

/-- `Δ[A259029(A028310(n))]^A004273(n)` -/
def P13318321330239535204.Spec : Prop :=
  ∀ n, P13318321330239535204.a n = (A259024 (n + 1) : ℚ)

end A259024

/-! ## A259024.P12198595069439964760

`Δ[A259029(A028310(n))]^A004396(n)`
-/

namespace A259024.P12198595069439964760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259029 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A004396 n : ℤ)

end

end A259024.P12198595069439964760

namespace A259024

/-- `Δ[A259029(A028310(n))]^A004396(n)` -/
def P12198595069439964760.Spec : Prop :=
  ∀ n, P12198595069439964760.a n = (A259024 (n + 1) : ℚ)

end A259024

/-! ## A259024.P17201124140699928540

`A084091(n+1)-A084091(A175676(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A259024

/-- `A084091(n+1)-A084091(A175676(n+1))` -/
def P17201124140699928540.Spec : Prop :=
  ∀ n, P17201124140699928540.a n = A259024 (n + 1)

theorem P17201124140699928540.correct : P17201124140699928540.Spec := by
  intro n
  simp only [A259024, Nat.add_sub_cancel]

end A259024

/-! ## A259024.P15508336260540650703

`A259029(n+1)+A000007(n)-A259029(A028310(n))`
-/

namespace A259024.P15508336260540650703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259029 (n + 1) + (A000007 n - A259029 (A028310 n).toNat)

end

end A259024.P15508336260540650703

namespace A259024

/-- `A259029(n+1)+A000007(n)-A259029(A028310(n))` -/
def P15508336260540650703.Spec : Prop :=
  ∀ n, P15508336260540650703.a n = A259024 (n + 1)

end A259024

/-! ## A259024.P4627801016351363943

`A259029(n+1)+A057428(n)*A259029(A028310(n))`
-/

namespace A259024.P4627801016351363943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259029 (n + 1) + A057428 n * A259029 (A028310 n).toNat

end

end A259024.P4627801016351363943

namespace A259024

/-- `A259029(n+1)+A057428(n)*A259029(A028310(n))` -/
def P4627801016351363943.Spec : Prop :=
  ∀ n, P4627801016351363943.a n = A259024 (n + 1)

end A259024

/-! ## A259024.P2284300757310767549

`A259029(n+1)-A057427(n)*A259029(A028310(n))`
-/

namespace A259024.P2284300757310767549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259029 (n + 1) - A057427 n * A259029 (A028310 n).toNat

end

end A259024.P2284300757310767549

namespace A259024

/-- `A259029(n+1)-A057427(n)*A259029(A028310(n))` -/
def P2284300757310767549.Spec : Prop :=
  ∀ n, P2284300757310767549.a n = A259024 (n + 1)

end A259024

/-! ## A259024.P8909223159869572662

`Δ[A259029(A028310(n))+A057427(n)]`
-/

namespace A259024.P8909223159869572662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259029 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259024.P8909223159869572662

namespace A259024

/-- `Δ[A259029(A028310(n))+A057427(n)]` -/
def P8909223159869572662.Spec : Prop :=
  ∀ n, P8909223159869572662.a n = A259024 (n + 1)

end A259024

/-! ## A259024.P9922862855930984738

`Δ[A259029(A028310(n))-A057428(n)]`
-/

namespace A259024.P9922862855930984738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259029 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259024.P9922862855930984738

namespace A259024

/-- `Δ[A259029(A028310(n))-A057428(n)]` -/
def P9922862855930984738.Spec : Prop :=
  ∀ n, P9922862855930984738.a n = A259024 (n + 1)

end A259024

/-! ## A259024.P6388154547806436717

`A102283(A357872(n+1))`
-/

namespace A259024.P6388154547806436717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A357872 (n + 1)).toNat

end

end A259024.P6388154547806436717

namespace A259024

/-- `A102283(A357872(n+1))` -/
def P6388154547806436717.Spec : Prop :=
  ∀ n, P6388154547806436717.a n = A259024 (n + 1)

end A259024

/-!
# A259025: Numbers k such that k is the average of four consecutive primes k-11, k-1, k+1 and k+11.

The programs for A259025, there is no canonical definition to state claims against.
-/

/-! ## A259025.P13303447816478209549

`A052376(n+1)+11`
-/

namespace A259025.P13303447816478209549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052376 (n + 1) + 11

end

end A259025.P13303447816478209549

/-! ## A259025.P5593891485236488388

`∩[A031928(n+1)-12, A031928(n+1)]+11`
-/

namespace A259025.P5593891485236488388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031928 (n + 1) - 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 11

end

end A259025.P5593891485236488388

/-! ## A259025.P11831867100713943844

`A354363(A052376(n+1))`
-/

namespace A259025.P11831867100713943844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354363 (A052376 (n + 1)).toNat

end

end A259025.P11831867100713943844

/-! ## A259025.P6538147254354298657

`A354363(∩[A031928(n+1)-12, A031928(n+1)])`
-/

namespace A259025.P6538147254354298657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031928 (n + 1) - 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031928 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354363 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A259025.P6538147254354298657

/-!
# A259029: Partial sums of A259024.

The programs for A259029, the canonical program `A259029.P359648338578640876` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259029 has offset 1).

The definition of A259029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259029.P359648338578640876

`∑[A259024(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A259029

/-- `∑[A259024(n+1)]` -/
def P359648338578640876.Spec : Prop :=
  ∀ n, P359648338578640876.a n = A259029 (n + 1)

theorem P359648338578640876.correct : P359648338578640876.Spec := by
  intro n
  simp only [A259029, Nat.add_sub_cancel]

end A259029

/-! ## A259029.P10333059448495322536

`A259024(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A259029.P10333059448495322536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259024 (n + 1) + a (A023443 n).toNat

end

end A259029.P10333059448495322536

namespace A259029

/-- `A259024(n+1)+a(A023443(n))` -/
def P10333059448495322536.Spec : Prop :=
  ∀ n, P10333059448495322536.a n = A259029 (n + 1)

end A259029

/-! ## A259029.P7632062591955700878

`A259024(n+1)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A259029.P7632062591955700878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259024 (n + 1) + a (A004273 n - (n : ℤ)).toNat

end

end A259029.P7632062591955700878

namespace A259029

/-- `A259024(n+1)+a(A004273(n)-n)` -/
def P7632062591955700878.Spec : Prop :=
  ∀ n, P7632062591955700878.a n = A259029 (n + 1)

end A259029

/-! ## A259029.P15918626079212210067

`∑[∑{d}[n+1, A113448(#)*A355689((n+1)/#)]]`
-/

namespace A259029.P15918626079212210067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A113448 d * A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259029.P15918626079212210067

namespace A259029

/-- `∑[∑{d}[n+1, A113448(#)*A355689((n+1)/#)]]` -/
def P15918626079212210067.Spec : Prop :=
  ∀ n, P15918626079212210067.a n = A259029 (n + 1)

end A259029

/-! ## A259029.P6608960344008965163

`∑[A084091(n+1)-A084091(A175676(n+1))]`
-/

namespace A259029.P6608960344008965163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (n + 1) - A084091 (A175676 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259029.P6608960344008965163

namespace A259029

/-- `∑[A084091(n+1)-A084091(A175676(n+1))]` -/
def P6608960344008965163.Spec : Prop :=
  ∀ n, P6608960344008965163.a n = A259029 (n + 1)

end A259029

/-!
# A259030: a(n) is multiplicative with a(2^e) = -(1 - (-1)^e) / 2 if e > 0, a(p^e) = Kronecker(5, p)^e if p > 2.

The programs for A259030, the canonical program `A259030.P661161244229555766` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259030 has offset 1).

The definition of A259030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259030.P661161244229555766

`A080891(A259445(n+1)+A065883(3*(n+1)))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A259030

/-- `A080891(A259445(n+1)+A065883(3*(n+1)))` -/
def P661161244229555766.Spec : Prop :=
  ∀ n, P661161244229555766.a n = A259030 (n + 1)

theorem P661161244229555766.correct : P661161244229555766.Spec := by
  intro n
  simp only [A259030, Nat.add_sub_cancel]

end A259030

/-! ## A259030.P10140081020887770192

`A259024(A037468(∑[A000124(n)]))`
-/

namespace A259030.P10140081020887770192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259024 (A037468 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A259030.P10140081020887770192

namespace A259030

/-- `A259024(A037468(∑[A000124(n)]))` -/
def P10140081020887770192.Spec : Prop :=
  ∀ n, P10140081020887770192.a n = A259030 (n + 1)

end A259030

/-! ## A259030.P2850510348224537758

`A008683(A049978(n+1)+char[2])`
-/

namespace A259030.P2850510348224537758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A049978 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A259030.P2850510348224537758

namespace A259030

/-- `A008683(A049978(n+1)+char[2])` -/
def P2850510348224537758.Spec : Prop :=
  ∀ n, P2850510348224537758.a n = A259030 (n + 1)

end A259030

/-! ## A259030.P5667820944931983643

`A008683(or(C(2, n), A049978(n+1)))`
-/

namespace A259030.P5667820944931983643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor (Nat.choose 2 n : ℤ) (A049978 (n + 1))).toNat

end

end A259030.P5667820944931983643

namespace A259030

/-- `A008683(or(C(2, n), A049978(n+1)))` -/
def P5667820944931983643.Spec : Prop :=
  ∀ n, P5667820944931983643.a n = A259030 (n + 1)

end A259030

/-! ## A259030.P5967052128984462848

`A008683(or(A049978(n+1), A063725(n)))`
-/

namespace A259030.P5967052128984462848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor (A049978 (n + 1)) (A063725 n)).toNat

end

end A259030.P5967052128984462848

namespace A259030

/-- `A008683(or(A049978(n+1), A063725(n)))` -/
def P5967052128984462848.Spec : Prop :=
  ∀ n, P5967052128984462848.a n = A259030 (n + 1)

end A259030

/-!
# A259031: Smallest m such that |A259029(m)| = n.

The programs for A259031, there is no canonical definition to state claims against.
-/

/-! ## A259031.P9533770060936646489

`4^n*a(C(2, n))` with `a(0)=3, a(1)=1`
-/

namespace A259031.P9533770060936646489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n a =>
  4 ^ n * a (Nat.choose 2 n)

end

end A259031.P9533770060936646489

/-! ## A259031.P3053994566875459375

`lcm(3, 4*a(n-1))` with `a(0)=3, a(1)=1, a(2)=16`
-/

namespace A259031.P3053994566875459375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 16] fun n a =>
  Nat.lcm 3 (4 * a (n - 1))

end

end A259031.P3053994566875459375

/-! ## A259031.P17747856700298594307

`4^n*a(floor(2/n))` with `a(0)=3, a(1)=1`
-/

namespace A259031.P17747856700298594307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n a =>
  4 ^ n * a ⌊2 / (n : ℚ)⌋.toNat

end

end A259031.P17747856700298594307

/-! ## A259031.P1701051852865428960

`12*a(n-1)/3` with `a(0)=3, a(1)=1, a(2)=16, a(3)=192`
-/

namespace A259031.P1701051852865428960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 1, 16, 192] fun n a =>
  12 * a (n - 1) / 3

end

end A259031.P1701051852865428960

/-! ## A259031.P1140561397633097125

`a(C(2, n))*A000079(n)²` with `a(0)=3, a(1)=1`
-/

namespace A259031.P1140561397633097125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (Nat.choose 2 n) * A000079 n ^ 2

end

end A259031.P1140561397633097125

/-!
# A259032: Numbers k such that digital root of k is 2*(digital root of k-th prime).

The programs for A259032, there is no canonical definition to state claims against.
-/

/-! ## A259032.P131009387413532982

`eq[2*A010878(A008578(n+1)), A010878(n)]`
-/

namespace A259032.P131009387413532982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010878 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259032.P131009387413532982

/-! ## A259032.P8796450505044708742

`eq[2*A010888(A008578(n+1)), A010888(n)]`
-/

namespace A259032.P8796450505044708742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010888 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259032.P8796450505044708742

/-!
# A259033: Expansion of psi(x^3)^2 * f(-x^2)^4 / f(-x)^6 in powers of where psi(), f() are Ramanujan theta function.

The programs for A259033, there is no canonical definition to state claims against.
-/

/-! ## A259033.P10422890352845079633

`A263528(3*n+2)`
-/

namespace A259033.P10422890352845079633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263528 (3 * n + 2)

end

end A259033.P10422890352845079633

/-! ## A259033.P14602923525408755160

`A260150(2*n+1)/4`
-/

namespace A259033.P14602923525408755160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260150 (2 * n + 1) : ℚ) / 4

end

end A259033.P14602923525408755160

/-! ## A259033.P5633900469229537727

`A261203(A016789(n))/4`
-/

namespace A259033.P5633900469229537727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261203 (A016789 n).toNat : ℚ) / 4

end

end A259033.P5633900469229537727

/-! ## A259033.P9948575303889626759

`-(A261369(2*n+1)/2)`
-/

namespace A259033.P9948575303889626759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A261369 (2 * n + 1) : ℚ) / 2)

end

end A259033.P9948575303889626759

/-! ## A259033.P3276238648181584428

`A261156(A016969(n))/8`
-/

namespace A259033.P3276238648181584428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261156 (A016969 n).toNat : ℚ) / 8

end

end A259033.P3276238648181584428

/-!
# A259035: Partial sums of A073602.

The programs for A259035, there is no canonical definition to state claims against.
-/

/-! ## A259035.P15292976775217592077

`∑[A073602(n+1)]`
-/

namespace A259035.P15292976775217592077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259035.P15292976775217592077

/-! ## A259035.P1984309009798032974

`Δ[A007504(n)]*A258052(n+1)`
-/

namespace A259035.P1984309009798032974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A258052 (n + 1)

end

end A259035.P1984309009798032974

/-! ## A259035.P13102824116078507785

`A000040(n+1)*A258052(n+1)`
-/

namespace A259035.P13102824116078507785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A258052 (n + 1)

end

end A259035.P13102824116078507785

/-! ## A259035.P18278679147942896619

`p?[A258076(n)]*A258052(n+1)`
-/

namespace A259035.P18278679147942896619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A258052 (n + 1)

end

end A259035.P18278679147942896619

/-! ## A259035.P3640764530726903072

`p?[A258078(n)]*A258052(n+1)`
-/

namespace A259035.P3640764530726903072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A258052 (n + 1)

end

end A259035.P3640764530726903072

/-!
# A259036: Smallest divisor of n^2+1 >= sqrt(n^2+1).

The programs for A259036, there is no canonical definition to state claims against.
-/

/-! ## A259036.P13701610705503534095

`A033677(A002522(n))`
-/

namespace A259036.P13701610705503534095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A002522 n).toNat

end

end A259036.P13701610705503534095

/-! ## A259036.P15826974005703634335

`A002522(n)/A152823(round(sqrt(n²+1)))`
-/

namespace A259036.P15826974005703634335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002522 n : ℚ) / (A152823 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ)

end

end A259036.P15826974005703634335

/-! ## A259036.P8393492437783641082

`A033677(n²+1)`
-/

namespace A259036.P8393492437783641082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n ^ 2 + 1)

end

end A259036.P8393492437783641082

/-! ## A259036.P15372148831924845526

`A140271(n²+1)`
-/

namespace A259036.P15372148831924845526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (n ^ 2 + 1)

end

end A259036.P15372148831924845526

/-! ## A259036.P3146341144275632613

`A162348(2*(n²+1))`
-/

namespace A259036.P3146341144275632613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * (n ^ 2 + 1))

end

end A259036.P3146341144275632613

/-! ## A259036.P5735279483169292254

`or(char[2], A033677(n^2+1))`
-/

namespace A259036.P5735279483169292254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A033677 (n ^ 2 + 1))

end

end A259036.P5735279483169292254

/-! ## A259036.P2968909395903307138

`(n²+1)/A033676(n²+1)`
-/

namespace A259036.P2968909395903307138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℚ) / (A033676 (n ^ 2 + 1) : ℚ)

end

end A259036.P2968909395903307138

/-! ## A259036.P7099967963059139928

`(n²+1)/A060775(n²+1)`
-/

namespace A259036.P7099967963059139928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℚ) / (A060775 (n ^ 2 + 1) : ℚ)

end

end A259036.P7099967963059139928

/-! ## A259036.P12463395755020909112

`xor(1, xor(1, A033677(A033638(2*n))))`
-/

namespace A259036.P12463395755020909112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A033677 (A033638 (2 * n)).toNat))

end

end A259036.P12463395755020909112

/-! ## A259036.P12508607667412997071

`A140271(A002522(n))%A017030(n)`
-/

namespace A259036.P12508607667412997071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140271 (A002522 n).toNat) (A017030 n)

end

end A259036.P12508607667412997071

/-! ## A259036.P1455273779946840225

`gcd(A000038(n), A140271(A002522(n)))`
-/

namespace A259036.P1455273779946840225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A140271 (A002522 n).toNat)

end

end A259036.P1455273779946840225

/-! ## A259036.P13499151696608615027

`∏{e}[A000040(n+1), A033677(A000290(n)+#)]`
-/

namespace A259036.P13499151696608615027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033677 (A000290 n + (Nat.factorization (f1 n).natAbs p : ℤ)).toNat

end

end A259036.P13499151696608615027

/-! ## A259036.P17568194972836631190

`A140271(A002522(n))+A000038(A140271(n+1))`
-/

namespace A259036.P17568194972836631190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (A002522 n).toNat + A000038 (A140271 (n + 1)).toNat

end

end A259036.P17568194972836631190

/-!
# A259037: Non-unitary amicable numbers.

The programs for A259037, there is no canonical definition to state claims against.
-/

/-! ## A259037.P1290999097675739775

`∪[A259038(n+1), A048146(A259038(n+1))]`
-/

namespace A259037.P1290999097675739775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A259038 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259037.P1290999097675739775

/-! ## A259037.P4674395945310024929

`filter[A329884(n+2), A188433(#)]`
-/

namespace A259037.P4674395945310024929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329884 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188433 (f1 j).toNat = 1) n)

end

end A259037.P4674395945310024929

/-! ## A259037.P17587665960861534800

`∪[A259038(n+1), A087156(A259039(n+1))]`
-/

namespace A259037.P17587665960861534800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A259039 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259037.P17587665960861534800

/-!
# A259038: Smaller of a non-unitary amicable pair.

The programs for A259038, there is no canonical definition to state claims against.
-/

/-! ## A259038.P12231329040065663386

`∩[A259037(n+1), A335196(n+1)]`
-/

namespace A259038.P12231329040065663386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259038.P12231329040065663386

/-! ## A259038.P17688450303266959830

`∩[A329884(n+1), A335196(n+1)]`
-/

namespace A259038.P17688450303266959830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259038.P17688450303266959830

/-! ## A259038.P14348068198231202377

`A048146(A259039(n+1))`
-/

namespace A259038.P14348068198231202377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A259039 (n + 1)).toNat

end

end A259038.P14348068198231202377

/-! ## A259038.P17528317955255612235

`A259037(abs(Δ[n*∏{digits}[n, #]]))`
-/

namespace A259038.P17528317955255612235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259037 |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|.toNat

end

end A259038.P17528317955255612235

/-! ## A259038.P2729324815962476200

`A259037(A000005(4^n))`
-/

namespace A259038.P2729324815962476200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259037 (A000005 (4 ^ n)).toNat

end

end A259038.P2729324815962476200

/-!
# A259039: Larger of a non-unitary amicable pair.

The programs for A259039, there is no canonical definition to state claims against.
-/

/-! ## A259039.P13614115393625791395

`A048146(A259038(n+1))`
-/

namespace A259039.P13614115393625791395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A259038 (n + 1)).toNat

end

end A259039.P13614115393625791395

/-! ## A259039.P9927435432693919971

`record[A048146(A259037(n+1))]`
-/

namespace A259039.P9927435432693919971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A259037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259039.P9927435432693919971

/-! ## A259039.P129047384330818765

`A259037(A029731(n+3)+n)`
-/

namespace A259039.P129047384330818765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259037 (A029731 (n + 3) + (n : ℤ)).toNat

end

end A259039.P129047384330818765

/-! ## A259039.P7979577953969065314

`A329884(A060151(3*n+5)%A218207(n+5))`
-/

namespace A259039.P7979577953969065314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329884 (Int.tmod (A060151 (3 * n + 5)) (A218207 (n + 5))).toNat

end

end A259039.P7979577953969065314

/-!
# A259042: Period 8 sequence [0, 1, 1, 1, 2, 1, 1, 1, ...].

The programs for A259042, the canonical program `A259042.P1048538119535149912` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259042 has offset 0).

The definition of A259042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259042.P1048538119535149912

`A257179(n+4)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A259042

/-- `A257179(n+4)` -/
def P1048538119535149912.Spec : Prop :=
  ∀ n, P1048538119535149912.a n = A259042 n

theorem P1048538119535149912.correct : P1048538119535149912.Spec := by
  intro n
  simp only [A259042]

end A259042

/-!
# A259043: a(n) = if n < 10 then n else a(floor(n/10) + n mod 10) + n mod 10.

The programs for A259043, there is no canonical definition to state claims against.
-/

/-! ## A259043.P198756491048115264

`A217928(A247107(n))`
-/

namespace A259043.P198756491048115264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217928 (A247107 n).toNat

end

end A259043.P198756491048115264

/-!
# A259044: Period 8 sequence [ 0, 1, 0, 1, 1, 1, 0, 1, ...].

The programs for A259044, the canonical program `A259044.P7275359542013936449` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259044 has offset 0).

The definition of A259044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259044.P7275359542013936449

`ceil(cot(gcd(8, n)))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259044

/-- `ceil(cot(gcd(8, n)))` -/
def P7275359542013936449.Spec : Prop :=
  ∀ n, P7275359542013936449.a n = A259044 n

theorem P7275359542013936449.correct : P7275359542013936449.Spec := by
  intro n
  simp only [A259044]

end A259044

/-!
# A259048: u(1) = v(1) = 1, u(n) = u(n-1) + v(n-1), v(n) = u(n-1)^2 + v(n-1)^2, a(n) = u(n).

The programs for A259048, the canonical program `A259048.P12472016699539820263` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259048 has offset 1).

The definition of A259048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259048.P12472016699539820263

`a(n-1)²+a(n-1)-2*a(n-1)*a(n-2)+2*a(n-2)²` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259048

/-- `a(n-1)²+a(n-1)-2*a(n-1)*a(n-2)+2*a(n-2)²` -/
def P12472016699539820263.Spec : Prop :=
  ∀ n, P12472016699539820263.a n = A259048 (n + 1)

theorem P12472016699539820263.correct : P12472016699539820263.Spec := by
  intro n
  simp only [A259048, Nat.add_sub_cancel]

end A259048

/-!
# A259049: Number of self-complementary plane partitions in a (2n)-cube.

The programs for A259049, there is no canonical definition to state claims against.
-/

/-! ## A259049.P6931647939194885157

`A008793(n)²`
-/

namespace A259049.P6931647939194885157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008793 n ^ 2

end

end A259049.P6931647939194885157

/-! ## A259049.P7071538626255691912

`A120258(∑[4*n])²`
-/

namespace A259049.P7071538626255691912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120258 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A259049.P7071538626255691912

/-! ## A259049.P6802830883819735447

`A059475(n)*A059476(n)`
-/

namespace A259049.P6802830883819735447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059475 n * A059476 n

end

end A259049.P6802830883819735447

/-! ## A259049.P14092577172235668435

`(A006366(n)*A049503(n))²`
-/

namespace A259049.P14092577172235668435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006366 n * A049503 n) ^ 2

end

end A259049.P14092577172235668435

/-! ## A259049.P13888055763604429615

`(A005130(n)*A059475(n))²`
-/

namespace A259049.P13888055763604429615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005130 n * A059475 n) ^ 2

end

end A259049.P13888055763604429615

/-!
# A259050: Numbers k such that 3*R_k + 10^k - 2 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259050, there is no canonical definition to state claims against.
-/

/-! ## A259050.P10673884926201052417

`A056244(n+1)+1`
-/

namespace A259050.P10673884926201052417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056244 (n + 1) + 1

end

end A259050.P10673884926201052417

/-! ## A259050.P17374659795293119607

`A082697(A028310(n))-A054977(n)`
-/

namespace A259050.P17374659795293119607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082697 (A028310 n).toNat - A054977 n

end

end A259050.P17374659795293119607

/-!
# A259051: Triangle T(n,m) for the number of ways to put n stones into an m X n square grid such that each of the m rows contains at least one stone.

The programs for A259051, there is no canonical definition to state claims against.
-/

/-! ## A259051.P12941311794483259204

`A258371(n+1)/A135278(n)`
-/

namespace A259051.P12941311794483259204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258371 (n + 1) : ℚ) / (A135278 n : ℚ)

end

end A259051.P12941311794483259204

/-! ## A259051.P10418809201586744858

`A258371(n+1)/A074909(n+1)`
-/

namespace A259051.P10418809201586744858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258371 (n + 1) : ℚ) / (A074909 (n + 1) : ℚ)

end

end A259051.P10418809201586744858

/-! ## A259051.P12005916233797902751

`A258371(n+1)/A007318(A014132(n+1))`
-/

namespace A259051.P12005916233797902751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258371 (n + 1) : ℚ) / (A007318 (A014132 (n + 1)).toNat : ℚ)

end

end A259051.P12005916233797902751

/-! ## A259051.P7956969453704006772

`abs(A140756(n+1)/A003506(n+1)*A258371(n+1))`
-/

namespace A259051.P7956969453704006772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A140756 (n + 1) : ℚ) / (A003506 (n + 1) : ℚ) * (A258371 (n + 1) : ℚ)|

end

end A259051.P7956969453704006772

/-! ## A259051.P4457265091724608757

`A258371(n+1)/A003506(n+1)*A000005(A059268(n))`
-/

namespace A259051.P4457265091724608757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258371 (n + 1) : ℚ) / (A003506 (n + 1) : ℚ) * (A000005 (A059268 n).toNat : ℚ)

end

end A259051.P4457265091724608757

/-!
# A259054: a(n) = 4*n^2 - 4*n + 19, n >= 1.

The programs for A259054, the canonical program `A259054.P1873933039071315874` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259054 has offset 1).

The definition of A259054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)²-4*(n+1)+19` (program `A259054.P1873933039071315874`, by `A259054.P1873933039071315874.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259054.P1873933039071315874

`4*(n+1)²-4*(n+1)+19`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259054

/-- `4*(n+1)²-4*(n+1)+19` -/
def P1873933039071315874.Spec : Prop :=
  ∀ n, P1873933039071315874.a n = A259054 (n + 1)

theorem P1873933039071315874.correct : P1873933039071315874.Spec := by
  intro n
  simp only [A259054, Nat.add_sub_cancel]

end A259054

/-! ## A259054.P5841397770422836617

`∑[a(n-1)+8]` with `a(0)=19, a(1)=8`
-/

namespace A259054.P5841397770422836617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [19, 8] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259054.P5841397770422836617

namespace A259054

/-- `∑[a(n-1)+8]` -/
def P5841397770422836617.Spec : Prop :=
  ∀ n, (P5841397770422836617.a n : ℤ) = A259054 (n + 1)

end A259054

/-! ## A259054.P18084849852332504305

`or(3, 4*(∑[2*n]+4))`
-/

namespace A259054.P18084849852332504305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (4 * (∑ j ∈ Finset.range (n + 1), f1 j + 4))

end

end A259054.P18084849852332504305

namespace A259054

/-- `or(3, 4*(∑[2*n]+4))` -/
def P18084849852332504305.Spec : Prop :=
  ∀ n, (P18084849852332504305.a n : ℤ) = A259054 (n + 1)

end A259054

/-! ## A259054.P11792389369330106995

`xor(3, 4*(∑[2*n]+4))`
-/

namespace A259054.P11792389369330106995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (4 * (∑ j ∈ Finset.range (n + 1), f1 j + 4))

end

end A259054.P11792389369330106995

namespace A259054

/-- `xor(3, 4*(∑[2*n]+4))` -/
def P11792389369330106995.Spec : Prop :=
  ∀ n, (P11792389369330106995.a n : ℤ) = A259054 (n + 1)

end A259054

/-! ## A259054.P6720328593218296444

`floor(a(n-1)+8*n)` with `a(0)=19`

`floor` is left out, it is the identity on integers.
-/

namespace A259054.P6720328593218296444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [19] fun n a =>
  a (n - 1) + 8 * n

end

end A259054.P6720328593218296444

namespace A259054

/-- `floor(a(n-1)+8*n)` -/
def P6720328593218296444.Spec : Prop :=
  ∀ n, (P6720328593218296444.a n : ℤ) = A259054 (n + 1)

theorem P6720328593218296444.correct : P6720328593218296444.Spec := by
  intro n
  induction n with
  | zero => simp [A259054, A259054.P6720328593218296444.a, A259054.P1873933039071315874.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A259054, Nat.add_sub_cancel, A259054.P6720328593218296444.a, A259054.P1873933039071315874.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A259054

/-! ## A259054.P11587426474204804135

`round(a(n-1)+8*n)` with `a(0)=19`

`round` is left out, it is the identity on integers.
-/

namespace A259054.P11587426474204804135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [19] fun n a =>
  a (n - 1) + 8 * n

end

end A259054.P11587426474204804135

namespace A259054

/-- `round(a(n-1)+8*n)` -/
def P11587426474204804135.Spec : Prop :=
  ∀ n, (P11587426474204804135.a n : ℤ) = A259054 (n + 1)

theorem P11587426474204804135.correct : P11587426474204804135.Spec := by
  intro n
  induction n with
  | zero => simp [A259054, A259054.P11587426474204804135.a, A259054.P1873933039071315874.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A259054, Nat.add_sub_cancel, A259054.P11587426474204804135.a, A259054.P1873933039071315874.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A259054

/-! ## A259054.P4278742051357305135

`abs(xor(3, -Δ[n²]²)-15)`
-/

namespace A259054.P4278742051357305135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 3 (-(((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)) - 15|

end

end A259054.P4278742051357305135

namespace A259054

/-- `abs(xor(3, -Δ[n²]²)-15)` -/
def P4278742051357305135.Spec : Prop :=
  ∀ n, P4278742051357305135.a n = A259054 (n + 1)

end A259054

/-! ## A259054.P14125052335980314731

`record[A093178(n)²+18]`
-/

namespace A259054.P14125052335980314731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n ^ 2 + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259054.P14125052335980314731

namespace A259054

/-- `record[A093178(n)²+18]` -/
def P14125052335980314731.Spec : Prop :=
  ∀ n, P14125052335980314731.a n = A259054 (n + 1)

end A259054

/-! ## A259054.P14865673004201608095

`Δ[A008600(n)+C(2*n+1, 3)]`
-/

namespace A259054.P14865673004201608095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n + (Nat.choose (2 * n + 1) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259054.P14865673004201608095

namespace A259054

/-- `Δ[A008600(n)+C(2*n+1, 3)]` -/
def P14865673004201608095.Spec : Prop :=
  ∀ n, P14865673004201608095.a n = A259054 (n + 1)

end A259054

/-! ## A259054.P5061579743987884458

`Δ[A161705(n)+C(2*n+1, 3)]`
-/

namespace A259054.P5061579743987884458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n + (Nat.choose (2 * n + 1) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259054.P5061579743987884458

namespace A259054

/-- `Δ[A161705(n)+C(2*n+1, 3)]` -/
def P5061579743987884458.Spec : Prop :=
  ∀ n, P5061579743987884458.a n = A259054 (n + 1)

end A259054

/-! ## A259054.P2488295385565283092

`A241848(Δ[n²])`
-/

namespace A259054.P2488295385565283092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241848 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A259054.P2488295385565283092

namespace A259054

/-- `A241848(Δ[n²])` -/
def P2488295385565283092.Spec : Prop :=
  ∀ n, P2488295385565283092.a n = A259054 (n + 1)

end A259054

/-! ## A259054.P9293121320302635220

`record[A152020(n+1)+18]`
-/

namespace A259054.P9293121320302635220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152020 (n + 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259054.P9293121320302635220

namespace A259054

/-- `record[A152020(n+1)+18]` -/
def P9293121320302635220.Spec : Prop :=
  ∀ n, P9293121320302635220.a n = A259054 (n + 1)

end A259054

/-! ## A259054.P8943226861482803306

`record[A168077(n+1)+18]`
-/

namespace A259054.P8943226861482803306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (n + 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259054.P8943226861482803306

namespace A259054

/-- `record[A168077(n+1)+18]` -/
def P8943226861482803306.Spec : Prop :=
  ∀ n, P8943226861482803306.a n = A259054 (n + 1)

end A259054

/-! ## A259054.P4065594725547325993

`record[A181318(n+1)+18]`
-/

namespace A259054.P4065594725547325993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181318 (n + 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259054.P4065594725547325993

namespace A259054

/-- `record[A181318(n+1)+18]` -/
def P4065594725547325993.Spec : Prop :=
  ∀ n, P4065594725547325993.a n = A259054 (n + 1)

end A259054

/-! ## A259054.P11430603080569303951

`record[A189836(A000265(n+1))+7]`
-/

namespace A259054.P11430603080569303951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189836 (A000265 (n + 1)).toNat + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259054.P11430603080569303951

namespace A259054

/-- `record[A189836(A000265(n+1))+7]` -/
def P11430603080569303951.Spec : Prop :=
  ∀ n, P11430603080569303951.a n = A259054 (n + 1)

end A259054

/-! ## A259054.P6118507091964536408

`record[A130195(n+1)²+18]`
-/

namespace A259054.P6118507091964536408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130195 (n + 1) ^ 2 + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259054.P6118507091964536408

namespace A259054

/-- `record[A130195(n+1)²+18]` -/
def P6118507091964536408.Spec : Prop :=
  ∀ n, P6118507091964536408.a n = A259054 (n + 1)

end A259054

/-! ## A259054.P12749266434555679079

`A000027((2*n+1)²+18)`
-/

namespace A259054.P12749266434555679079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((2 * n + 1) ^ 2 + 18)

end

end A259054.P12749266434555679079

namespace A259054

/-- `A000027((2*n+1)²+18)` -/
def P12749266434555679079.Spec : Prop :=
  ∀ n, P12749266434555679079.a n = A259054 (n + 1)

end A259054

/-! ## A259054.P8987342887886346862

`∩[2*n+1, A241848(n)]`
-/

namespace A259054.P8987342887886346862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241848 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259054.P8987342887886346862

namespace A259054

/-- `∩[2*n+1, A241848(n)]` -/
def P8987342887886346862.Spec : Prop :=
  ∀ n, (P8987342887886346862.a n : ℤ) = A259054 (n + 1)

end A259054

/-! ## A259054.P640033613559741839

`A000265((2*n+1)²+18)`
-/

namespace A259054.P640033613559741839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((2 * n + 1) ^ 2 + 18)

end

end A259054.P640033613559741839

namespace A259054

/-- `A000265((2*n+1)²+18)` -/
def P640033613559741839.Spec : Prop :=
  ∀ n, P640033613559741839.a n = A259054 (n + 1)

end A259054

/-! ## A259054.P4140700029846591605

`A004769(∑[n]+1)`
-/

namespace A259054.P4140700029846591605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259054.P4140700029846591605

namespace A259054

/-- `A004769(∑[n]+1)` -/
def P4140700029846591605.Spec : Prop :=
  ∀ n, P4140700029846591605.a n = A259054 (n + 1)

end A259054

/-!
# A259055: a(n) = 9*n^2 + 18*n + 7.

The programs for A259055, the canonical program `A259055.P8394724405653825334` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259055 has offset 0).

The definition of A259055 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n²+18*n+7` (program `A259055.P8394724405653825334`, by `A259055.P8394724405653825334.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259055.P3881897628941314796

`9*(n+1)²-2`
-/

namespace A259055.P3881897628941314796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (n + 1) ^ 2 : ℤ) - 2

end

end A259055.P3881897628941314796

namespace A259055

/-- `9*(n+1)²-2` -/
def P3881897628941314796.Spec : Prop :=
  ∀ n, P3881897628941314796.a n = A259055 n

theorem P3881897628941314796.correct : P3881897628941314796.Spec := by
  intro n
  simp only [A259055, Nat.add_sub_cancel, A259055.P3881897628941314796.a, A259055.P8394724405653825334.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A259055

/-! ## A259055.P8394724405653825334

`9*n²+18*n+7`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259055

/-- `9*n²+18*n+7` -/
def P8394724405653825334.Spec : Prop :=
  ∀ n, (P8394724405653825334.a n : ℤ) = A259055 n

theorem P8394724405653825334.correct : P8394724405653825334.Spec := by
  intro n
  simp only [A259055]

end A259055

/-! ## A259055.P17185876802305719890

`∑[a(n-1)+18]` with `a(0)=7, a(1)=27`
-/

namespace A259055.P17185876802305719890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 27] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259055.P17185876802305719890

namespace A259055

/-- `∑[a(n-1)+18]` -/
def P17185876802305719890.Spec : Prop :=
  ∀ n, (P17185876802305719890.a n : ℤ) = A259055 n

end A259055

/-! ## A259055.P4475651986115244829

`record[(3*(1-n))²-2]`
-/

namespace A259055.P4475651986115244829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (1 - (n : ℤ))) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259055.P4475651986115244829

namespace A259055

/-- `record[(3*(1-n))²-2]` -/
def P4475651986115244829.Spec : Prop :=
  ∀ n, P4475651986115244829.a n = A259055 n

end A259055

/-! ## A259055.P15356566877939452342

`ceil((3/sinh(1/(n+1)))²)`
-/

namespace A259055.P15356566877939452342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 / Real.sinh (1 / (n + 1 : ℚ) : ℝ)) ^ 2⌉

end

end A259055.P15356566877939452342

namespace A259055

/-- `ceil((3/sinh(1/(n+1)))²)` -/
def P15356566877939452342.Spec : Prop :=
  ∀ n, P15356566877939452342.a n = A259055 n

end A259055

/-! ## A259055.P17140711945449725168

`abs(a(n-1)+9*(2*n+1))` with `a(0)=7`
-/

namespace A259055.P17140711945449725168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 9 * (2 * n + 1)

end

end A259055.P17140711945449725168

namespace A259055

/-- `abs(a(n-1)+9*(2*n+1))` -/
def P17140711945449725168.Spec : Prop :=
  ∀ n, (P17140711945449725168.a n : ℤ) = A259055 n

theorem P17140711945449725168.correct : P17140711945449725168.Spec := by
  intro n
  induction n with
  | zero => simp [A259055, A259055.P17140711945449725168.a, A259055.P8394724405653825334.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A259055, Nat.add_sub_cancel, A259055.P17140711945449725168.a, A259055.P8394724405653825334.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A259055

/-! ## A259055.P4324572473157250664

`floor(a(n-1)+9*(2*n+1))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A259055.P4324572473157250664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 9 * (2 * n + 1)

end

end A259055.P4324572473157250664

namespace A259055

/-- `floor(a(n-1)+9*(2*n+1))` -/
def P4324572473157250664.Spec : Prop :=
  ∀ n, (P4324572473157250664.a n : ℤ) = A259055 n

theorem P4324572473157250664.correct : P4324572473157250664.Spec := by
  intro n
  induction n with
  | zero => simp [A259055, A259055.P4324572473157250664.a, A259055.P8394724405653825334.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A259055, Nat.add_sub_cancel, A259055.P4324572473157250664.a, A259055.P8394724405653825334.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A259055

/-! ## A259055.P17017163933936633735

`ceil(a(n-1)+9*(2*n+1))` with `a(0)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A259055.P17017163933936633735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 9 * (2 * n + 1)

end

end A259055.P17017163933936633735

namespace A259055

/-- `ceil(a(n-1)+9*(2*n+1))` -/
def P17017163933936633735.Spec : Prop :=
  ∀ n, (P17017163933936633735.a n : ℤ) = A259055 n

theorem P17017163933936633735.correct : P17017163933936633735.Spec := by
  intro n
  induction n with
  | zero => simp [A259055, A259055.P17017163933936633735.a, A259055.P8394724405653825334.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A259055, Nat.add_sub_cancel, A259055.P17017163933936633735.a, A259055.P8394724405653825334.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A259055

/-! ## A259055.P1528574560852955880

`round(a(n-1)+9*(2*n+1))` with `a(0)=7`

`round` is left out, it is the identity on integers.
-/

namespace A259055.P1528574560852955880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 9 * (2 * n + 1)

end

end A259055.P1528574560852955880

namespace A259055

/-- `round(a(n-1)+9*(2*n+1))` -/
def P1528574560852955880.Spec : Prop :=
  ∀ n, (P1528574560852955880.a n : ℤ) = A259055 n

theorem P1528574560852955880.correct : P1528574560852955880.Spec := by
  intro n
  induction n with
  | zero => simp [A259055, A259055.P1528574560852955880.a, A259055.P8394724405653825334.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A259055, Nat.add_sub_cancel, A259055.P1528574560852955880.a, A259055.P8394724405653825334.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A259055

/-! ## A259055.P2843187842226454631

`(A157910(n+1)-3)/2`
-/

namespace A259055.P2843187842226454631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157910 (n + 1) - 3 : ℚ) / 2

end

end A259055.P2843187842226454631

namespace A259055

/-- `(A157910(n+1)-3)/2` -/
def P2843187842226454631.Spec : Prop :=
  ∀ n, P2843187842226454631.a n = (A259055 n : ℚ)

end A259055

/-! ## A259055.P13427624788953051369

`(A158462(n+1)-2)/4`
-/

namespace A259055.P13427624788953051369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158462 (n + 1) - 2 : ℚ) / 4

end

end A259055.P13427624788953051369

namespace A259055

/-- `(A158462(n+1)-2)/4` -/
def P13427624788953051369.Spec : Prop :=
  ∀ n, P13427624788953051369.a n = (A259055 n : ℚ)

end A259055

/-! ## A259055.P8871876397821426650

`(A157889(n+1)-5)/2`
-/

namespace A259055.P8871876397821426650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157889 (n + 1) - 5 : ℚ) / 2

end

end A259055.P8871876397821426650

namespace A259055

/-- `(A157889(n+1)-5)/2` -/
def P8871876397821426650.Spec : Prop :=
  ∀ n, P8871876397821426650.a n = (A259055 n : ℚ)

end A259055

/-! ## A259055.P12560525995672676707

`abs(2-(A016777(n+1)-1)²)`
-/

namespace A259055.P12560525995672676707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A016777 (n + 1) - 1) ^ 2|

end

end A259055.P12560525995672676707

namespace A259055

/-- `abs(2-(A016777(n+1)-1)²)` -/
def P12560525995672676707.Spec : Prop :=
  ∀ n, P12560525995672676707.a n = A259055 n

end A259055

/-! ## A259055.P11827914416617967169

`abs(9*(n+1)*A000027(n+1)-2)`
-/

namespace A259055.P11827914416617967169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * (n + 1) : ℤ) * A000027 (n + 1) - 2|

end

end A259055.P11827914416617967169

namespace A259055

/-- `abs(9*(n+1)*A000027(n+1)-2)` -/
def P11827914416617967169.Spec : Prop :=
  ∀ n, P11827914416617967169.a n = A259055 n

end A259055

/-! ## A259055.P6491913966010066713

`A017222(n)%A016946(n)`
-/

namespace A259055.P6491913966010066713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017222 n) (A016946 n)

end

end A259055.P6491913966010066713

namespace A259055

/-- `A017222(n)%A016946(n)` -/
def P6491913966010066713.Spec : Prop :=
  ∀ n, P6491913966010066713.a n = A259055 n

end A259055

/-! ## A259055.P17277625340418210902

`xor(A010684(n), A157872(n+1))`
-/

namespace A259055.P17277625340418210902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A157872 (n + 1))

end

end A259055.P17277625340418210902

namespace A259055

/-- `xor(A010684(n), A157872(n+1))` -/
def P17277625340418210902.Spec : Prop :=
  ∀ n, P17277625340418210902.a n = A259055 n

end A259055

/-! ## A259055.P7695862503060446431

`Δ[A220443(n)-Δ[n²]]`
-/

namespace A259055.P7695862503060446431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259055.P7695862503060446431

namespace A259055

/-- `Δ[A220443(n)-Δ[n²]]` -/
def P7695862503060446431.Spec : Prop :=
  ∀ n, P7695862503060446431.a n = A259055 n

end A259055

/-! ## A259055.P18144140536260518602

`A008865(3*(n+1))`
-/

namespace A259055.P18144140536260518602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (3 * (n + 1))

end

end A259055.P18144140536260518602

namespace A259055

/-- `A008865(3*(n+1))` -/
def P18144140536260518602.Spec : Prop :=
  ∀ n, P18144140536260518602.a n = A259055 n

end A259055

/-! ## A259055.P14991081573198271920

`abs(abs(A000290(3*(n+1))-1)-1)`
-/

namespace A259055.P14991081573198271920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A000290 (3 * (n + 1)) - 1| - 1)|

end

end A259055.P14991081573198271920

namespace A259055

/-- `abs(abs(A000290(3*(n+1))-1)-1)` -/
def P14991081573198271920.Spec : Prop :=
  ∀ n, P14991081573198271920.a n = A259055 n

end A259055

/-! ## A259055.P1773647083058259007

`abs(A005563(comp[2*n]+n+1)-1)`
-/

namespace A259055.P1773647083058259007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005563 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n + 1) - 1|

end

end A259055.P1773647083058259007

namespace A259055

/-- `abs(A005563(comp[2*n]+n+1)-1)` -/
def P1773647083058259007.Spec : Prop :=
  ∀ n, P1773647083058259007.a n = A259055 n

end A259055

/-!
# A259056: a(n) gives the determinant of a bisymmetric n X n matrix involving the entries 1, 2, ..., A002620(n+1).

The programs for A259056, there is no canonical definition to state claims against.
-/

/-! ## A259056.P437385432864124786

`(n+1-A016897(n+1))*a(n-2)` with `a(0)=1, a(1)=-3`
-/

namespace A259056.P437385432864124786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3] fun n a =>
  ((n + 1 : ℤ) - A016897 (n + 1)) * a (n - 2)

end

end A259056.P437385432864124786

/-!
# A259057: One-third of the even-indexed entries of A259056.

The programs for A259057, there is no canonical definition to state claims against.
-/

/-! ## A259057.P9102091512800500299

`A259056(2*(n+1))/3`
-/

namespace A259057.P9102091512800500299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259056 (2 * (n + 1)) : ℚ) / 3

end

end A259057.P9102091512800500299

/-! ## A259057.P14391779225457313744

`∏[-record[A178182(n+4)]]`
-/

namespace A259057.P14391779225457313744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178182 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A259057.P14391779225457313744

/-! ## A259057.P16762344822842465019

`∏[-record[A188134(n+4)]]`
-/

namespace A259057.P16762344822842465019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A259057.P16762344822842465019

/-! ## A259057.P5737083576075975330

`-((-4)^n*A051577(n))`
-/

namespace A259057.P5737083576075975330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-4) ^ n * A051577 n)

end

end A259057.P5737083576075975330

/-! ## A259057.P9152888307153701777

`∏[-A008574(A062545(n))]`
-/

namespace A259057.P9152888307153701777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008574 (A062545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A259057.P9152888307153701777

/-!
# A259058: Numbers that are representable in at least two ways as sums of four distinct nonvanishing squares.

The programs for A259058, the canonical program `A259058.P8009878685727681394` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259058 has offset 0).

The definition of A259058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259058.P8009878685727681394

`4*n²+72*n+454`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259058

/-- `4*n²+72*n+454` -/
def P8009878685727681394.Spec : Prop :=
  ∀ n, (P8009878685727681394.a n : ℤ) = A259058 n

theorem P8009878685727681394.correct : P8009878685727681394.Spec := by
  intro n
  simp only [A259058]

end A259058

/-! ## A259058.P12786269076312588485

`2*A259059(n)`
-/

namespace A259058.P12786269076312588485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259059 n

end

end A259058.P12786269076312588485

namespace A259058

/-- `2*A259059(n)` -/
def P12786269076312588485.Spec : Prop :=
  ∀ n, P12786269076312588485.a n = A259058 n

end A259058

/-! ## A259058.P18334917583971102435

`2/abs(A070748(n+1)/A259059(n))`
-/

namespace A259058.P18334917583971102435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / |(A070748 (n + 1) : ℚ) / (A259059 n : ℚ)|

end

end A259058.P18334917583971102435

namespace A259058

/-- `2/abs(A070748(n+1)/A259059(n))` -/
def P18334917583971102435.Spec : Prop :=
  ∀ n, P18334917583971102435.a n = (A259058 n : ℚ)

end A259058

/-! ## A259058.P414772618833931466

`2*or(A067728(n+9)-A004771(n), A000007(n))`
-/

namespace A259058.P414772618833931466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor (A067728 (n + 9) - A004771 n) (A000007 n)

end

end A259058.P414772618833931466

namespace A259058

/-- `2*or(A067728(n+9)-A004771(n), A000007(n))` -/
def P414772618833931466.Spec : Prop :=
  ∀ n, P414772618833931466.a n = A259058 n

end A259058

/-! ## A259058.P18306977160388410768

`2*or(A067728(n+9)-A004771(n), A000035(n))`
-/

namespace A259058.P18306977160388410768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor (A067728 (n + 9) - A004771 n) (A000035 n)

end

end A259058.P18306977160388410768

namespace A259058

/-- `2*or(A067728(n+9)-A004771(n), A000035(n))` -/
def P18306977160388410768.Spec : Prop :=
  ∀ n, P18306977160388410768.a n = A259058 n

end A259058

/-! ## A259058.P7791533446113485760

`2*A000027(A067728(n+9)-A004771(n))`
-/

namespace A259058.P7791533446113485760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000027 (A067728 (n + 9) - A004771 n).toNat

end

end A259058.P7791533446113485760

namespace A259058

/-- `2*A000027(A067728(n+9)-A004771(n))` -/
def P7791533446113485760.Spec : Prop :=
  ∀ n, P7791533446113485760.a n = A259058 n

end A259058

/-! ## A259058.P3673820571159900754

`A004277(A259059(n))`
-/

namespace A259058.P3673820571159900754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A259059 n).toNat

end

end A259058.P3673820571159900754

namespace A259058

/-- `A004277(A259059(n))` -/
def P3673820571159900754.Spec : Prop :=
  ∀ n, P3673820571159900754.a n = A259058 n

end A259058

/-!
# A259059: One half of numbers representable in at least two different ways as sums of four distinct nonvanishing squares. See A259058 for these numbers and their representations.

The programs for A259059, the canonical program `A259059.P6758390429979517194` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259059 has offset 0).

The definition of A259059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259059.P6758390429979517194

`2*n²+36*n+227`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259059

/-- `2*n²+36*n+227` -/
def P6758390429979517194.Spec : Prop :=
  ∀ n, (P6758390429979517194.a n : ℤ) = A259059 n

theorem P6758390429979517194.correct : P6758390429979517194.Spec := by
  intro n
  simp only [A259059]

end A259059

/-! ## A259059.P10497618029593412462

`A259058(n)/2`
-/

namespace A259059.P10497618029593412462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259058 n : ℚ) / 2

end

end A259059.P10497618029593412462

namespace A259059

/-- `A259058(n)/2` -/
def P10497618029593412462.Spec : Prop :=
  ∀ n, P10497618029593412462.a n = (A259059 n : ℚ)

end A259059

/-! ## A259059.P329363980579154051

`or(A067728(n+9)-A004771(n), A000007(n))`
-/

namespace A259059.P329363980579154051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067728 (n + 9) - A004771 n) (A000007 n)

end

end A259059.P329363980579154051

namespace A259059

/-- `or(A067728(n+9)-A004771(n), A000007(n))` -/
def P329363980579154051.Spec : Prop :=
  ∀ n, P329363980579154051.a n = A259059 n

end A259059

/-! ## A259059.P11817827631723598039

`or(A067728(n+9)-A004771(n), A000035(n))`
-/

namespace A259059.P11817827631723598039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067728 (n + 9) - A004771 n) (A000035 n)

end

end A259059.P11817827631723598039

namespace A259059

/-- `or(A067728(n+9)-A004771(n), A000035(n))` -/
def P11817827631723598039.Spec : Prop :=
  ∀ n, P11817827631723598039.a n = A259059 n

end A259059

/-! ## A259059.P17702917675256443100

`or(A067728(n+9)-A004771(n), A057427(n))`
-/

namespace A259059.P17702917675256443100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067728 (n + 9) - A004771 n) (A057427 n)

end

end A259059.P17702917675256443100

namespace A259059

/-- `or(A067728(n+9)-A004771(n), A057427(n))` -/
def P17702917675256443100.Spec : Prop :=
  ∀ n, P17702917675256443100.a n = A259059 n

end A259059

/-! ## A259059.P10030919573910460632

`A000027(A067728(n+9)-A004771(n))`
-/

namespace A259059.P10030919573910460632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A067728 (n + 9) - A004771 n).toNat

end

end A259059.P10030919573910460632

namespace A259059

/-- `A000027(A067728(n+9)-A004771(n))` -/
def P10030919573910460632.Spec : Prop :=
  ∀ n, P10030919573910460632.a n = A259059 n

end A259059

/-! ## A259059.P9794139731773861507

`A000265(A259058(n))`
-/

namespace A259059.P9794139731773861507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A259058 n).toNat

end

end A259059.P9794139731773861507

namespace A259059

/-- `A000265(A259058(n))` -/
def P9794139731773861507.Spec : Prop :=
  ∀ n, P9794139731773861507.a n = A259059 n

end A259059

/-! ## A259059.P14517962476935965348

`A014682(lcm(2, A259058(n)))`
-/

namespace A259059.P14517962476935965348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A259058 n))

end

end A259059.P14517962476935965348

namespace A259059

/-- `A014682(lcm(2, A259058(n)))` -/
def P14517962476935965348.Spec : Prop :=
  ∀ n, P14517962476935965348.a n = A259059 n

end A259059

/-! ## A259059.P12818079454339967263

`A014682(or(2, A259058(n)))`
-/

namespace A259059.P12818079454339967263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lor 2 (A259058 n)).toNat

end

end A259059.P12818079454339967263

namespace A259059

/-- `A014682(or(2, A259058(n)))` -/
def P12818079454339967263.Spec : Prop :=
  ∀ n, P12818079454339967263.a n = A259059 n

end A259059

/-! ## A259059.P2419118787522252957

`A007913(2*A259058(n))`
-/

namespace A259059.P2419118787522252957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * A259058 n).toNat

end

end A259059.P2419118787522252957

namespace A259059

/-- `A007913(2*A259058(n))` -/
def P2419118787522252957.Spec : Prop :=
  ∀ n, P2419118787522252957.a n = A259059 n

end A259059

/-!
# A259060: Numbers that are representable in at least two ways as sums of four distinct nonvanishing cubes.

The programs for A259060, the canonical program `A259060.P3756686449010239055` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259060 has offset 0).

The definition of A259060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259060.P3756686449010239055

`2*(n+9)*(2*n²+36*n+357)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259060

/-- `2*(n+9)*(2*n²+36*n+357)` -/
def P3756686449010239055.Spec : Prop :=
  ∀ n, (P3756686449010239055.a n : ℤ) = A259060 n

theorem P3756686449010239055.correct : P3756686449010239055.Spec := by
  intro n
  simp only [A259060]

end A259060

/-! ## A259060.P7118805547172626960

`A261241(sqrt(A000290(n)))+A261241(n)`
-/

namespace A259060.P7118805547172626960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261241 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat + A261241 n

end

end A259060.P7118805547172626960

namespace A259060

/-- `A261241(sqrt(A000290(n)))+A261241(n)` -/
def P7118805547172626960.Spec : Prop :=
  ∀ n, P7118805547172626960.a n = A259060 n

end A259060

/-! ## A259060.P17341145006348192498

`A261241(A005843(n)/2)+A261241(n)`
-/

namespace A259060.P17341145006348192498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261241 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A261241 n

end

end A259060.P17341145006348192498

namespace A259060

/-- `A261241(A005843(n)/2)+A261241(n)` -/
def P17341145006348192498.Spec : Prop :=
  ∀ n, P17341145006348192498.a n = A259060 n

end A259060

/-! ## A259060.P17654775363091404958

`A261241(A005843(n)-n)+A261241(n)`
-/

namespace A259060.P17654775363091404958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261241 (A005843 n - (n : ℤ)).toNat + A261241 n

end

end A259060.P17654775363091404958

namespace A259060

/-- `A261241(A005843(n)-n)+A261241(n)` -/
def P17654775363091404958.Spec : Prop :=
  ∀ n, P17654775363091404958.a n = A259060 n

end A259060

/-! ## A259060.P979057689671354636

`A261241(n)+A261241(n)+A000007(n+1)`
-/

namespace A259060.P979057689671354636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261241 n + (A261241 n + A000007 (n + 1))

end

end A259060.P979057689671354636

namespace A259060

/-- `A261241(n)+A261241(n)+A000007(n+1)` -/
def P979057689671354636.Spec : Prop :=
  ∀ n, P979057689671354636.a n = A259060 n

end A259060

/-! ## A259060.P5516555489146151600

`lcm(A005843(n+9), A261241(n))`
-/

namespace A259060.P5516555489146151600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005843 (n + 9)) (A261241 n)

end

end A259060.P5516555489146151600

namespace A259060

/-- `lcm(A005843(n+9), A261241(n))` -/
def P5516555489146151600.Spec : Prop :=
  ∀ n, (P5516555489146151600.a n : ℤ) = A259060 n

end A259060

/-! ## A259060.P572940324957728274

`A261241(and(n, A171389(n)))+A261241(n)`
-/

namespace A259060.P572940324957728274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261241 (Int.land (n : ℤ) (A171389 n)).toNat + A261241 n

end

end A259060.P572940324957728274

namespace A259060

/-- `A261241(and(n, A171389(n)))+A261241(n)` -/
def P572940324957728274.Spec : Prop :=
  ∀ n, P572940324957728274.a n = A259060 n

end A259060

/-!
# A259062: E.g.f.: Series_Reversion( -x + 2*x*exp(-x) ).

The programs for A259062, there is no canonical definition to state claims against.
-/

/-! ## A259062.P15548088342034041876

`(n+1)*A258872(n)`
-/

namespace A259062.P15548088342034041876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A258872 n

end

end A259062.P15548088342034041876

/-! ## A259062.P5839752515751487817

`A258872(n)*A335603(Δ[A007504(n)])`
-/

namespace A259062.P5839752515751487817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258872 n * A335603 (f1 (n + 1) - f1 n).toNat

end

end A259062.P5839752515751487817

/-! ## A259062.P2693903892921129583

`A258872(n)*A286552(A000079(n))`
-/

namespace A259062.P2693903892921129583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258872 n * A286552 (A000079 n).toNat

end

end A259062.P2693903892921129583

/-! ## A259062.P14614163828256443501

`A258872(n)*A286552(A007283(n))`
-/

namespace A259062.P14614163828256443501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258872 n * A286552 (A007283 n).toNat

end

end A259062.P14614163828256443501

/-! ## A259062.P2796338570391238606

`A258872(n)*A302025(A077168(n))`
-/

namespace A259062.P2796338570391238606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258872 n * A302025 (A077168 n).toNat

end

end A259062.P2796338570391238606

/-!
# A259063: E.g.f.: Series_Reversion( 3*x - 2*x*exp(x) ).

The programs for A259063, there is no canonical definition to state claims against.
-/

/-! ## A259063.P16116741161252847744

`(n+1)*A258922(n)`
-/

namespace A259063.P16116741161252847744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A258922 n

end

end A259063.P16116741161252847744

/-! ## A259063.P17347503441430945985

`A258922(n)-A001489(n)*A258922(n)`
-/

namespace A259063.P17347503441430945985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258922 n - A001489 n * A258922 n

end

end A259063.P17347503441430945985

/-! ## A259063.P3315409247225876986

`A258922(n)*A286552(A000079(n))`
-/

namespace A259063.P3315409247225876986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258922 n * A286552 (A000079 n).toNat

end

end A259063.P3315409247225876986

/-! ## A259063.P3021708130822761786

`A258922(n)*A286552(A007283(n))`
-/

namespace A259063.P3021708130822761786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258922 n * A286552 (A007283 n).toNat

end

end A259063.P3021708130822761786

/-! ## A259063.P4433695954107511373

`A258922(n)*A302025(A077168(n))`
-/

namespace A259063.P4433695954107511373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258922 n * A302025 (A077168 n).toNat

end

end A259063.P4433695954107511373

/-!
# A259064: E.g.f.: Series_Reversion( 4*x - 3*x*exp(x) ).

The programs for A259064, there is no canonical definition to state claims against.
-/

/-! ## A259064.P17779356028083196515

`(n+1)*A258923(n)`
-/

namespace A259064.P17779356028083196515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A258923 n

end

end A259064.P17779356028083196515

/-! ## A259064.P11871867337473878002

`∑{e}[A007283(n), #*A258923(n)]`
-/

namespace A259064.P11871867337473878002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A258923 n

end

end A259064.P11871867337473878002

/-! ## A259064.P16996655064912948721

`A258923(n)*A286552(A000079(n))`
-/

namespace A259064.P16996655064912948721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258923 n * A286552 (A000079 n).toNat

end

end A259064.P16996655064912948721

/-! ## A259064.P15355838831721666518

`A258923(n)*A286552(A007283(n))`
-/

namespace A259064.P15355838831721666518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258923 n * A286552 (A007283 n).toNat

end

end A259064.P15355838831721666518

/-! ## A259064.P6209406312534264933

`A258923(n)*A302025(A077168(n))`
-/

namespace A259064.P6209406312534264933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258923 n * A302025 (A077168 n).toNat

end

end A259064.P6209406312534264933

/-!
# A259067: Sum of digits of Honaker primes (A033548).

The programs for A259067, the canonical program `A259067.P7320704414048657284` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259067 has offset 1).

The definition of A259067 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A033549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259067.P7320704414048657284

`A007953(A033549(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A259067

/-- `A007953(A033549(n+1))` -/
def P7320704414048657284.Spec : Prop :=
  ∀ n, P7320704414048657284.a n = A259067 (n + 1)

theorem P7320704414048657284.correct : P7320704414048657284.Spec := by
  intro n
  simp only [A259067, Nat.add_sub_cancel]

end A259067

/-! ## A259067.P15350063016172319640

`A007953(A033548(n+1))`
-/

namespace A259067.P15350063016172319640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A033548 (n + 1)).toNat

end

end A259067.P15350063016172319640

namespace A259067

/-- `A007953(A033548(n+1))` -/
def P15350063016172319640.Spec : Prop :=
  ∀ n, P15350063016172319640.a n = A259067 (n + 1)

end A259067

/-! ## A259067.P11560283008741667978

`∑{digits}[A033549(A000027(n+1)), #]`
-/

namespace A259067.P11560283008741667978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033549 (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A259067.P11560283008741667978

namespace A259067

/-- `∑{digits}[A033549(A000027(n+1)), #]` -/
def P11560283008741667978.Spec : Prop :=
  ∀ n, (P11560283008741667978.a n : ℤ) = A259067 (n + 1)

end A259067

/-! ## A259067.P9349611669539365430

`∑{digits}[record[A033548(A152271(n))], #]`
-/

namespace A259067.P9349611669539365430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A259067.P9349611669539365430

namespace A259067

/-- `∑{digits}[record[A033548(A152271(n))], #]` -/
def P9349611669539365430.Spec : Prop :=
  ∀ n, (P9349611669539365430.a n : ℤ) = A259067 (n + 1)

end A259067

/-! ## A259067.P16415578007091081333

`A065073(A033549(n+1))-A033548(n+1)`
-/

namespace A259067.P16415578007091081333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065073 (A033549 (n + 1)).toNat - A033548 (n + 1)

end

end A259067.P16415578007091081333

namespace A259067

/-- `A065073(A033549(n+1))-A033548(n+1)` -/
def P16415578007091081333.Spec : Prop :=
  ∀ n, P16415578007091081333.a n = A259067 (n + 1)

end A259067

/-! ## A259067.P746766482908654584

`A007605(∩[A154313(n+1), A258876(n+1)])`
-/

namespace A259067.P746766482908654584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258876 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A259067.P746766482908654584

namespace A259067

/-- `A007605(∩[A154313(n+1), A258876(n+1)])` -/
def P746766482908654584.Spec : Prop :=
  ∀ n, P746766482908654584.a n = A259067 (n + 1)

end A259067

/-!
# A259074: Triangle T(n,k) = Sum_{j=0..(n-k)/3} C(n-3*j-1,k-1)*C(n-k-3*j,j).

The programs for A259074, there is no canonical definition to state claims against.
-/

/-! ## A259074.P3972542418908105838

`A225639(A217653(n))+A051137(n)`
-/

namespace A259074.P3972542418908105838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225639 (A217653 n).toNat + A051137 n

end

end A259074.P3972542418908105838

/-! ## A259074.P2317272647041286548

`A186034(A022167(n+2))+A007318(n)`
-/

namespace A259074.P2317272647041286548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186034 (A022167 (n + 2)).toNat + A007318 n

end

end A259074.P2317272647041286548

/-! ## A259074.P17533322510827792148

`A173920(A173917(n+2))+A007318(n)`
-/

namespace A259074.P17533322510827792148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173920 (A173917 (n + 2)).toNat + A007318 n

end

end A259074.P17533322510827792148

/-! ## A259074.P8480573760058852613

`A102683(A279784(n+2))+A007318(n)`
-/

namespace A259074.P8480573760058852613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A279784 (n + 2)).toNat + A007318 n

end

end A259074.P8480573760058852613

/-!
# A259075: Smallest base b > 1 such that both prime(n) and prime(n+1) are base-b Wieferich primes, i.e., p = prime(n) satisfies b^(p-1) == 1 (mod p^2) and q = prime(n+1) satisfies b^(q-1) == 1 (mod q^2).

The programs for A259075, there is no canonical definition to state claims against.
-/

/-! ## A259075.P5457261539794304978

`A250206(A006094(n+1))`
-/

namespace A259075.P5457261539794304978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (A006094 (n + 1)).toNat

end

end A259075.P5457261539794304978

/-! ## A259075.P8927309284148926544

`A250206(eq[3, A078898(n)])`
-/

namespace A259075.P8927309284148926544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259075.P8927309284148926544

/-! ## A259075.P5574932398221306467

`A250206(A023515(n+2)+1)`
-/

namespace A259075.P5574932398221306467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (A023515 (n + 2) + 1).toNat

end

end A259075.P5574932398221306467

/-! ## A259075.P2228611892227401689

`A250206(A013636(p?[floor(4*n/5)]))`
-/

namespace A259075.P2228611892227401689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((n : ℚ) / 5)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (A013636 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A259075.P2228611892227401689

/-! ## A259075.P5176415721183272642

`A250206(A002110(n+2)/A002110(n))`
-/

namespace A259075.P5176415721183272642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (SequenceMachineLib.roundAway ((A002110 (n + 2) : ℚ) / (A002110 n : ℚ))).toNat

end

end A259075.P5176415721183272642

/-!
# A259076: Powers of 80.

The programs for A259076, the canonical program `A259076.P15529394902504511682` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259076 has offset 0).

The definition of A259076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259076.P15529394902504511682

`80^n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259076

/-- `80^n` -/
def P15529394902504511682.Spec : Prop :=
  ∀ n, (P15529394902504511682.a n : ℤ) = A259076 n

theorem P15529394902504511682.correct : P15529394902504511682.Spec := by
  intro n
  simp only [A259076]

end A259076

/-!
# A259079: 

The programs for A259079, there is no canonical definition to state claims against.
-/

/-! ## A259079.P11510713743207656377

`A247215(3*(n+1)+n)`
-/

namespace A259079.P11510713743207656377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247215 (3 * (n + 1) + n)

end

end A259079.P11510713743207656377

/-! ## A259079.P14662187881906973102

`A008845(A016825(n))/6`
-/

namespace A259079.P14662187881906973102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008845 (A016825 n).toNat : ℚ) / 6

end

end A259079.P14662187881906973102

/-!
# A259084: a(n) = largest k such that the decimal representation of prime(n)^k does not contain the digit 0.

The programs for A259084, there is no canonical definition to state claims against.
-/

/-! ## A259084.P16611123613221981440

`A020665(A000040(n+1))`
-/

namespace A259084.P16611123613221981440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020665 (A000040 (n + 1)).toNat

end

end A259084.P16611123613221981440

/-! ## A259084.P13137060640011807612

`A020665(A008578(n+2))`
-/

namespace A259084.P13137060640011807612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020665 (A008578 (n + 2)).toNat

end

end A259084.P13137060640011807612

/-! ## A259084.P10211164759504652805

`A020665(A182986(n+2))`
-/

namespace A259084.P10211164759504652805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020665 (A182986 (n + 2)).toNat

end

end A259084.P10211164759504652805

/-! ## A259084.P17224489819484950943

`A020665(eq[1, A032741(n)])`
-/

namespace A259084.P17224489819484950943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259084.P17224489819484950943

/-! ## A259084.P1633956813663133370

`A020665(eq[1, A105700(n)])`
-/

namespace A259084.P1633956813663133370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259084.P1633956813663133370

/-! ## A259084.P14340275508202240950

`A020665(record[A006530(n+2)])`
-/

namespace A259084.P14340275508202240950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259084.P14340275508202240950

/-! ## A259084.P3119422395363861181

`A020665(record[A014963(n+2)])`
-/

namespace A259084.P3119422395363861181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259084.P3119422395363861181

/-! ## A259084.P13536323708102102060

`A020665(record[A020639(n+2)])`
-/

namespace A259084.P13536323708102102060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259084.P13536323708102102060

/-! ## A259084.P3457151064744354842

`A020665(A006093(n+1)+1)`
-/

namespace A259084.P3457151064744354842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020665 (A006093 (n + 1) + 1).toNat

end

end A259084.P3457151064744354842

/-! ## A259084.P10014358570139295947

`A020665(eq[1, A001222(n+1)]+1)`
-/

namespace A259084.P10014358570139295947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A259084.P10014358570139295947

/-!
# A259087: Number of n-celled polyominoes which are of rectangular but not square type.

The programs for A259087, there is no canonical definition to state claims against.
-/

/-! ## A259087.P18037195453352251631

`Δ[A173271(n)]-A259088(n+1)`
-/

namespace A259087.P18037195453352251631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A259088 (n + 1)

end

end A259087.P18037195453352251631

/-! ## A259087.P1871684124040852584

`A000105(n+1)-A259088(n+1)`
-/

namespace A259087.P1871684124040852584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1) - A259088 (n + 1)

end

end A259087.P1871684124040852584

/-! ## A259087.P802668598183737833

`A006765(n+1)+1-A259088(n+1)`
-/

namespace A259087.P802668598183737833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (n + 1) + (1 - A259088 (n + 1))

end

end A259087.P802668598183737833

/-! ## A259087.P1243058523681606977

`A054359(n+1)+A054360(n+1)-A259088(n+1)`
-/

namespace A259087.P1243058523681606977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054359 (n + 1) + (A054360 (n + 1) - A259088 (n + 1))

end

end A259087.P1243058523681606977

/-! ## A259087.P6954802343519539219

`A006749(n+1)+A259090(n+1)-A259088(n+1)`
-/

namespace A259087.P6954802343519539219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006749 (n + 1) + (A259090 (n + 1) - A259088 (n + 1))

end

end A259087.P6954802343519539219

/-!
# A259088: Number of n-celled polyominoes which are of square type.

The programs for A259088, there is no canonical definition to state claims against.
-/

/-! ## A259088.P9235889714825904229

`Δ[A173271(n)]-A259087(n+1)`
-/

namespace A259088.P9235889714825904229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A259087 (n + 1)

end

end A259088.P9235889714825904229

/-! ## A259088.P5978751813798925358

`A000105(n+1)-A259087(n+1)`
-/

namespace A259088.P5978751813798925358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1) - A259087 (n + 1)

end

end A259088.P5978751813798925358

/-! ## A259088.P4264460744355904001

`A006765(n+1)+1-A259087(n+1)`
-/

namespace A259088.P4264460744355904001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (n + 1) + (1 - A259087 (n + 1))

end

end A259088.P4264460744355904001

/-! ## A259088.P8524798596296985195

`A054359(n+1)+A054360(n+1)-A259087(n+1)`
-/

namespace A259088.P8524798596296985195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054359 (n + 1) + (A054360 (n + 1) - A259087 (n + 1))

end

end A259088.P8524798596296985195

/-! ## A259088.P7492814041824787739

`A006749(n+1)+A259090(n+1)-A259087(n+1)`
-/

namespace A259088.P7492814041824787739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006749 (n + 1) + (A259090 (n + 1) - A259087 (n + 1))

end

end A259088.P7492814041824787739

/-!
# A259089: Least k such that 2^k has at least n consecutive 2's in its decimal representation.

The programs for A259089, there is no canonical definition to state claims against.
-/

/-! ## A259089.P7704252925277821042

`A131536(or(n, A007083(n+2)))`
-/

namespace A259089.P7704252925277821042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131536 (Int.lor (n : ℤ) (A007083 (n + 2))).toNat

end

end A259089.P7704252925277821042

/-! ## A259089.P3552779634442933052

`A131536(A131571(n+1)+A010054(2*(n+1)))`
-/

namespace A259089.P3552779634442933052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131536 (A131571 (n + 1) + A010054 (2 * (n + 1))).toNat

end

end A259089.P3552779634442933052

/-! ## A259089.P9080902703975149927

`A131536(A024647(or(n, A010060(n))))`
-/

namespace A259089.P9080902703975149927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131536 (A024647 (Int.lor (n : ℤ) (A010060 n)).toNat).toNat

end

end A259089.P9080902703975149927

/-! ## A259089.P9281191110735695924

`A131536(or(A010060(n), A303166(n+1)))`
-/

namespace A259089.P9281191110735695924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131536 (Int.lor (A010060 n) (A303166 (n + 1))).toNat

end

end A259089.P9281191110735695924

/-!
# A259090: Number of symmetrical n-celled polyominoes.

The programs for A259090, there is no canonical definition to state claims against.
-/

/-! ## A259090.P3994601736352536919

`A000105(n+1)-A006749(n+1)`
-/

namespace A259090.P3994601736352536919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1) - A006749 (n + 1)

end

end A259090.P3994601736352536919

/-! ## A259090.P16708290074613307958

`A006765(n+1)+1-A006749(n+1)`
-/

namespace A259090.P16708290074613307958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (n + 1) + (1 - A006749 (n + 1))

end

end A259090.P16708290074613307958

/-! ## A259090.P2933865216466871415

`A006746(n+1)+A144554(n+1)+A006748(n+1)`
-/

namespace A259090.P2933865216466871415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006746 (n + 1) + (A144554 (n + 1) + A006748 (n + 1))

end

end A259090.P2933865216466871415

/-! ## A259090.P14755148234628778643

`A006747(n+1)+A144553(n+1)+A030227(n+1)`
-/

namespace A259090.P14755148234628778643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006747 (n + 1) + (A144553 (n + 1) + A030227 (n + 1))

end

end A259090.P14755148234628778643

/-! ## A259090.P7798614006294221748

`A000988(n+1)-(A030228(n+1)+A006749(n+1))`
-/

namespace A259090.P7798614006294221748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000988 (n + 1) - (A030228 (n + 1) + A006749 (n + 1))

end

end A259090.P7798614006294221748

/-! ## A259090.P17855047712057255489

`A030227(n+1)+A030228(n+1)-A006749(n+1)`
-/

namespace A259090.P17855047712057255489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030227 (n + 1) + (A030228 (n + 1) - A006749 (n + 1))

end

end A259090.P17855047712057255489

/-!
# A259094: From the Lecture Hall Theorem: array read by antidiagonals: T(n,k) = number of partitions of n into odd parts of size < 2k.

The programs for A259094, there is no canonical definition to state claims against.
-/

/-! ## A259094.P13884036129093666333

`A097305(A082156(n+1))`
-/

namespace A259094.P13884036129093666333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097305 (A082156 (n + 1)).toNat

end

end A259094.P13884036129093666333

/-! ## A259094.P11071829609451062702

`A356852(A137855(n+1))`
-/

namespace A259094.P11071829609451062702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356852 (A137855 (n + 1)).toNat

end

end A259094.P11071829609451062702

/-! ## A259094.P17907312850674012867

`A043537(A263791(n+1)+1)`
-/

namespace A259094.P17907312850674012867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A263791 (n + 1) + 1).toNat

end

end A259094.P17907312850674012867

/-! ## A259094.P14611312279454282799

`A183027(A362043(n))`
-/

namespace A259094.P14611312279454282799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183027 (A362043 n).toNat

end

end A259094.P14611312279454282799

/-! ## A259094.P14740370194908185256

`A356852(A362378(n)+4)`
-/

namespace A259094.P14740370194908185256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356852 (A362378 n + 4).toNat

end

end A259094.P14740370194908185256

/-!
# A259095: Triangle read by rows: T(n,r) = number of arrangements of n pennies in rows, with r contiguous pennies in the bottom row, and each higher row consisting of contiguous pennies, each touching two pennies in the row below (1 <= r <= n).

The programs for A259095, there is no canonical definition to state claims against.
-/

/-! ## A259095.P1808979323953177240

`A004218(ceil(7^A089595(n)))`
-/

namespace A259095.P1808979323953177240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 ⌈(7 : ℚ) ^ (A089595 n : ℤ)⌉.toNat

end

end A259095.P1808979323953177240

/-! ## A259095.P10976694674014577194

`A001222(ceil(13^A089595(n)))`
-/

namespace A259095.P10976694674014577194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(13 : ℚ) ^ (A089595 n : ℤ)⌉.toNat

end

end A259095.P10976694674014577194

/-! ## A259095.P6422682011496419338

`A000005(ceil(13^A089595(n)))-1`
-/

namespace A259095.P6422682011496419338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌈(13 : ℚ) ^ (A089595 n : ℤ)⌉.toNat - 1

end

end A259095.P6422682011496419338

/-! ## A259095.P11714689144769239134

`A001202(ceil(10^A089595(n)))%5`
-/

namespace A259095.P11714689144769239134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001202 ⌈(10 : ℚ) ^ (A089595 n : ℤ)⌉.toNat) 5

end

end A259095.P11714689144769239134

/-! ## A259095.P11832746767840061134

`val(A000292(ceil(10^A089595(n))), 5)`
-/

namespace A259095.P11832746767840061134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000292 ⌈(10 : ℚ) ^ (A089595 n : ℤ)⌉.toNat).toNat 5

end

end A259095.P11832746767840061134

/-!
# A259096: a(n) = A000785(n) - A005575(n-1).

The programs for A259096, there is no canonical definition to state claims against.
-/

/-! ## A259096.P17843432490714948648

`A000785(n+2)-A005575(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259096.P17843432490714948648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000785 (n + 2) - A005575 (n + 1)

end

end A259096.P17843432490714948648

/-! ## A259096.P14409278323675263524

`A003056(A319759(n)*A328601(n+2))`
-/

namespace A259096.P14409278323675263524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A319759 n * A328601 (n + 2)).toNat

end

end A259096.P14409278323675263524

/-! ## A259096.P16828815323749812647

`A035573(A035584(2*(n+2))^A035591(n+3))`
-/

namespace A259096.P16828815323749812647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035573 (SequenceMachineLib.roundAway ((A035584 (2 * (n + 2)) : ℚ) ^ (A035591 (n + 3) : ℤ))).toNat

end

end A259096.P16828815323749812647

/-! ## A259096.P4417025120222030388

`A035573(C(A035584(2*(n+2)), A035591(n+3)))`
-/

namespace A259096.P4417025120222030388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035573 (Nat.choose (A035584 (2 * (n + 2))).toNat (A035591 (n + 3)).toNat)

end

end A259096.P4417025120222030388

/-!
# A259098: Row sums of A146565.

The programs for A259098, the canonical program `A259098.P3880492415807813911` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259098 has offset 0).

The definition of A259098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259098.P13387310001875059949

`ogf((1-x^2+2x^5)/(1-2x))`
-/

namespace A259098.P13387310001875059949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 0, 0, 2] [1, -2] n

end

end A259098.P13387310001875059949

namespace A259098

/-- `ogf((1-x^2+2x^5)/(1-2x))` -/
def P13387310001875059949.Spec : Prop :=
  ∀ n, P13387310001875059949.a n = A259098 n

end A259098

/-! ## A259098.P3880492415807813911

`2*(char[5]+a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259098

/-- `2*(char[5]+a(n-1))` -/
def P3880492415807813911.Spec : Prop :=
  ∀ n, (P3880492415807813911.a n : ℤ) = A259098 n

theorem P3880492415807813911.correct : P3880492415807813911.Spec := by
  intro n
  simp only [A259098]

end A259098

/-! ## A259098.P11736893728213745142

`A004524(ceil(3*2^(n-3))+ceil(5*2^(n-2)))`
-/

namespace A259098.P11736893728213745142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (⌈3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉ + ⌈5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉).toNat

end

end A259098.P11736893728213745142

namespace A259098

/-- `A004524(ceil(3*2^(n-3))+ceil(5*2^(n-2)))` -/
def P11736893728213745142.Spec : Prop :=
  ∀ n, P11736893728213745142.a n = A259098 n

end A259098

/-! ## A259098.P9520377757226278687

`A245453(A261930(n))`
-/

namespace A259098.P9520377757226278687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245453 (A261930 n).toNat

end

end A259098.P9520377757226278687

namespace A259098

/-- `A245453(A261930(n))` -/
def P9520377757226278687.Spec : Prop :=
  ∀ n, P9520377757226278687.a n = A259098 n

end A259098

/-! ## A259098.P6775606359481842764

`A245453(A018487(n+1)-A111662(n))`
-/

namespace A259098.P6775606359481842764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245453 (A018487 (n + 1) - A111662 n).toNat

end

end A259098.P6775606359481842764

namespace A259098

/-- `A245453(A018487(n+1)-A111662(n))` -/
def P6775606359481842764.Spec : Prop :=
  ∀ n, P6775606359481842764.a n = A259098 n

end A259098

/-!
# A259099: Triangle read by rows: Kreweras's "Rule A_4 left thickness" numbers.

The programs for A259099, there is no canonical definition to state claims against.
-/

/-! ## A259099.P5040416388684982173

`A059268(n)*A338331(A168216(n))`
-/

namespace A259099.P5040416388684982173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A338331 (A168216 n).toNat

end

end A259099.P5040416388684982173

/-! ## A259099.P10424024186357584164

`A000196((A059268(n)*A134380(n))²)`
-/

namespace A259099.P10424024186357584164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A059268 n * A134380 n) ^ 2).toNat

end

end A259099.P10424024186357584164

/-! ## A259099.P17164708985040925554

`A000005(C(A371185(n+1), A259016(n)))`
-/

namespace A259099.P17164708985040925554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A371185 (n + 1)).toNat (A259016 n).toNat)

end

end A259099.P17164708985040925554

