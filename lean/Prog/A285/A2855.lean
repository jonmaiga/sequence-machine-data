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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A285500: Positions of 1 in A285498; complement of A285499.

The programs for A285500, there is no canonical definition to state claims against.
-/

/-! ## A285500.P14689742439818041252

`comp[A285499(n+1)-1]+1`
-/

namespace A285500.P14689742439818041252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285499 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285500.P14689742439818041252

/-! ## A285500.P624164494027192930

`filter[n+1, A285498(#)]`
-/

namespace A285500.P624164494027192930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285498 (f1 j) = 1) n)

end

end A285500.P624164494027192930

/-! ## A285500.P14411947001623838966

`eq[1, A285498(n+1)]+1`
-/

namespace A285500.P14411947001623838966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285500.P14411947001623838966

/-! ## A285500.P6147758253597995735

`eq[char[A285499(n+1)], A000007(n)]`
-/

namespace A285500.P6147758253597995735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285499 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285500.P6147758253597995735

/-! ## A285500.P16534046888747760969

`record[A000027(n+1)*A285498(n+1)]`
-/

namespace A285500.P16534046888747760969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A285498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285500.P16534046888747760969

/-! ## A285500.P10283574933938376003

`eq[n, A028310(n)*A285498(A028310(n))]`
-/

namespace A285500.P10283574933938376003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A285498 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285500.P10283574933938376003

/-! ## A285500.P10689276674203147577

`record[A038722(A038722(n+1))*A285498(n+1)]`
-/

namespace A285500.P10689276674203147577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A038722 (n + 1)).toNat * A285498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285500.P10689276674203147577

/-! ## A285500.P15461470956944854597

`record[A008619(2*n)*A285498(n+1)]`
-/

namespace A285500.P15461470956944854597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A285498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285500.P15461470956944854597

/-! ## A285500.P14139703501815639799

`record[A181988(2*n+1)*A285498(n+1)]`
-/

namespace A285500.P14139703501815639799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181988 (2 * n + 1) * A285498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285500.P14139703501815639799

/-! ## A285500.P15245462513167138393

`record[A026239(A026239(n+1))*A285498(n+1)]`
-/

namespace A285500.P15245462513167138393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A026239 (n + 1)).toNat * A285498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285500.P15245462513167138393

/-! ## A285500.P175818836607618184

`record[A285498(A318832(n+1))*A318832(n+1)]`
-/

namespace A285500.P175818836607618184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285498 (A318832 (n + 1)).toNat * A318832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285500.P175818836607618184

/-!
# A285501: 0-limiting word of the morphism 0->11, 1-> 0011.

The programs for A285501, there is no canonical definition to state claims against.
-/

/-! ## A285501.P2497373372531216884

`A285515(∑[log2(gcd(2, n))])`
-/

namespace A285501.P2497373372531216884
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A285501.P2497373372531216884

/-! ## A285501.P10054673683630063764

`A285515(∑[char[2*n]])`
-/

namespace A285501.P10054673683630063764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285501.P10054673683630063764

/-! ## A285501.P4971125187518486047

`char[A285503(n+1)-1]`
-/

namespace A285501.P4971125187518486047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285503 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285501.P4971125187518486047

/-! ## A285501.P11771747872657706281

`char[comp[A285502(n+1)-1]]`
-/

namespace A285501.P11771747872657706281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285502 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285501.P11771747872657706281

/-! ## A285501.P10894392893878762314

`char[A285519(n+1)-(n+1)]`
-/

namespace A285501.P10894392893878762314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285519 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285501.P10894392893878762314

/-! ## A285501.P5031617766202662902

`A083850(A119332(n))`
-/

namespace A285501.P5031617766202662902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083850 (A119332 n).toNat

end

end A285501.P5031617766202662902

/-!
# A285502: Positions of 0 in A285501; complement of A285503.

The programs for A285502, there is no canonical definition to state claims against.
-/

/-! ## A285502.P14874125273562324392

`lt[n*char[A285503(n+1)], n]`
-/

namespace A285502.P14874125273562324392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285503 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A285502.P14874125273562324392

/-! ## A285502.P15488204229101916851

`record[root(n+1, A285501(n+1)+1)]`
-/

namespace A285502.P15488204229101916851
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (A285501 (n + 1) + 1 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285502.P15488204229101916851

/-! ## A285502.P10752001538506975360

`lt[char[A285503(n+2)], A285501(n+2)]`
-/

namespace A285502.P10752001538506975360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285503 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285501 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A285502.P10752001538506975360

/-! ## A285502.P10594523522598659684

`record[n+1-A006501(n)*A285501(n+1)]`
-/

namespace A285502.P10594523522598659684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006501 n * A285501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285502.P10594523522598659684

/-! ## A285502.P15865171664984016149

`record[n+1-A005228(n+1)*A285501(n+1)]`
-/

namespace A285502.P15865171664984016149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005228 (n + 1) * A285501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285502.P15865171664984016149

/-! ## A285502.P3930677076852016392

`record[n+1-A022885(n+1)*A285501(n+1)]`
-/

namespace A285502.P3930677076852016392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A022885 (n + 1) * A285501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285502.P3930677076852016392

/-! ## A285502.P12910648815238615222

`record[n+1-A046992(n+1)*A285501(n+1)]`
-/

namespace A285502.P12910648815238615222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A046992 (n + 1) * A285501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285502.P12910648815238615222

/-! ## A285502.P5275381963389261367

`record[n+1-A075362(n+1)*A285501(n+1)]`
-/

namespace A285502.P5275381963389261367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A075362 (n + 1) * A285501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285502.P5275381963389261367

/-! ## A285502.P1470802409463830692

`record[n+1-A000032(n)*A285501(n+1)]`
-/

namespace A285502.P1470802409463830692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000032 n * A285501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285502.P1470802409463830692

/-!
# A285503: Positions of 1 in A285501; complement of A285502.

The programs for A285503, there is no canonical definition to state claims against.
-/

/-! ## A285503.P15225580403649256412

`A285519(n+1)-n`
-/

namespace A285503.P15225580403649256412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285519 (n + 1) - (n : ℤ)

end

end A285503.P15225580403649256412

/-! ## A285503.P1523868219791469252

`filter[n+1, A285501(#)]`
-/

namespace A285503.P1523868219791469252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285501 (f1 j) = 1) n)

end

end A285503.P1523868219791469252

/-! ## A285503.P12142580540967819748

`eq[n+1, (n+1)*A285501(n+1)]+1`
-/

namespace A285503.P12142580540967819748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285501 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285503.P12142580540967819748

/-! ## A285503.P6747928946375897203

`A285505(2*(n+1))/2-n`
-/

namespace A285503.P6747928946375897203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285505 (2 * (n + 1)) : ℚ) / 2 - (n : ℚ)

end

end A285503.P6747928946375897203

/-! ## A285503.P18022245783266421088

`A273943(A285505(2*(n+1)))-n`
-/

namespace A285503.P18022245783266421088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A285505 (2 * (n + 1))).toNat - (n : ℤ)

end

end A285503.P18022245783266421088

/-! ## A285503.P5436619700384351122

`lt[char[A285520(n+1)], A285515(n+1)]-n`
-/

namespace A285503.P5436619700384351122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285520 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n : ℤ) - (n : ℤ)

end

end A285503.P5436619700384351122

/-! ## A285503.P4792799180133805245

`lt[A285518(A028310(n)), A284939(n+1)]-n`
-/

namespace A285503.P4792799180133805245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285518 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A285503.P4792799180133805245

/-! ## A285503.P2035190300301522855

`A029578(A285505(2*(n+1))-2*n)`
-/

namespace A285503.P2035190300301522855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A285505 (2 * (n + 1)) - (2 * n : ℤ)).toNat

end

end A285503.P2035190300301522855

/-! ## A285503.P6883230781183618625

`A008619(A285505(2*n+1))-n`
-/

namespace A285503.P6883230781183618625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A285505 (2 * n + 1)).toNat - (n : ℤ)

end

end A285503.P6883230781183618625

/-! ## A285503.P13490844959988373875

`A004526(A285505(2*n+2))-n`
-/

namespace A285503.P13490844959988373875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A285505 (2 * n + 2)).toNat - (n : ℤ)

end

end A285503.P13490844959988373875

/-! ## A285503.P8278614097599673808

`eq[1, A285501(A233583(n+1))]`
-/

namespace A285503.P8278614097599673808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285501 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285503.P8278614097599673808

/-! ## A285503.P10712492774728228020

`round(lt[A285504(n+1), A048675(n+1)%2]/2)-n`
-/

namespace A285503.P10712492774728228020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048675 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2) - (n : ℤ)

end

end A285503.P10712492774728228020

/-! ## A285503.P15503578826098061222

`eq[char[A285520(n+1)], A285479(n)]-n`
-/

namespace A285503.P15503578826098061222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285520 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

end

end A285503.P15503578826098061222

/-! ## A285503.P16712013874445631359

`eq[char[A285520(n+1)], A285480(n)]-n`
-/

namespace A285503.P16712013874445631359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285520 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

end

end A285503.P16712013874445631359

/-!
# A285504: 1-limiting word of the morphism 0->11, 1-> 0011.

The programs for A285504, there is no canonical definition to state claims against.
-/

/-! ## A285504.P4349823311355489321

`A285518(∑[log2(gcd(2, n))])`
-/

namespace A285504.P4349823311355489321
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285518 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A285504.P4349823311355489321

/-! ## A285504.P8036752223191377069

`A285518(∑[char[2*n]])`
-/

namespace A285504.P8036752223191377069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285518 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285504.P8036752223191377069

/-! ## A285504.P4712300902333651087

`char[A285506(n+1)-1]`
-/

namespace A285504.P4712300902333651087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285506 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285504.P4712300902333651087

/-! ## A285504.P7132107309331528701

`char[comp[A285517(n+1)]-n]`
-/

namespace A285504.P7132107309331528701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285517 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285504.P7132107309331528701

/-! ## A285504.P7053216744708251105

`char[A285516(n+1)-(n+1)]`
-/

namespace A285504.P7053216744708251105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285516 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285504.P7053216744708251105

/-! ## A285504.P15244357520042368591

`or(A000007(n), A285518(A008619(n)))`
-/

namespace A285504.P15244357520042368591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A285518 (A008619 n).toNat)

end

end A285504.P15244357520042368591

/-! ## A285504.P17941413309105087634

`log2(Δ[comp[A285516(n+1)]])`
-/

namespace A285504.P17941413309105087634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285516 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)

end

end A285504.P17941413309105087634

/-! ## A285504.P11962425091554232122

`A001221(Δ[comp[A285516(n+1)]])`
-/

namespace A285504.P11962425091554232122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285516 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285504.P11962425091554232122

/-! ## A285504.P1100873290193261196

`A001222(Δ[comp[A285516(n+1)]])`
-/

namespace A285504.P1100873290193261196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285516 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285504.P1100873290193261196

/-! ## A285504.P2385060033738410835

`A285515(Δ[comp[A285516(n+1)]])`
-/

namespace A285504.P2385060033738410835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285516 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285504.P2385060033738410835

/-! ## A285504.P14814430162097591843

`1-A285515(A285517(n+1)-1)`
-/

namespace A285504.P14814430162097591843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285515 (A285517 (n + 1) - 1).toNat

end

end A285504.P14814430162097591843

/-! ## A285504.P6844316482604300923

`1-A285515(eq[1, A285515(n+1)])`
-/

namespace A285504.P6844316482604300923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285504.P6844316482604300923

/-!
# A285505: Positions of 0 in A285504; complement of A285506.

The programs for A285505, there is no canonical definition to state claims against.
-/

/-! ## A285505.P5127510871442091616

`lt[A285504(n+1), 1]+1`
-/

namespace A285505.P5127510871442091616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285504 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285505.P5127510871442091616

/-! ## A285505.P3670756814821844140

`lt[n*char[A285506(n+1)], n]`
-/

namespace A285505.P3670756814821844140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285506 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A285505.P3670756814821844140

/-! ## A285505.P8321877396935602287

`eq[A285515(n+1)+A285504(n+1), A285515(n+1)]+1`
-/

namespace A285505.P8321877396935602287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (n + 1) + A285504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285505.P8321877396935602287

/-! ## A285505.P17473292153198984979

`eq[A285504(n+1)*A285567(n+1), A285504(n+1)]+1`
-/

namespace A285505.P17473292153198984979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285504 (n + 1) * A285567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285505.P17473292153198984979

/-! ## A285505.P10494501495675874976

`eq[A285504(n+1)*A285569(n+1), A285504(n+1)]+1`
-/

namespace A285505.P10494501495675874976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285504 (n + 1) * A285569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285505.P10494501495675874976

/-! ## A285505.P12530997060532476732

`eq[A285504(n+1)*A285591(n+1), A285504(n+1)]+1`
-/

namespace A285505.P12530997060532476732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285504 (n + 1) * A285591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285505.P12530997060532476732

/-! ## A285505.P15517143710934746718

`eq[char[A285506(n+1)], A285476(n)]`
-/

namespace A285505.P15517143710934746718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285506 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285505.P15517143710934746718

/-!
# A285506: Positions of 1 in A285504; complement of A285505.

The programs for A285506, there is no canonical definition to state claims against.
-/

/-! ## A285506.P8816342575340581843

`A285516(n+1)-n`
-/

namespace A285506.P8816342575340581843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285516 (n + 1) - (n : ℤ)

end

end A285506.P8816342575340581843

/-! ## A285506.P18150688397732994185

`record[(n+1)*A285518(floor(n/2)+1)]`
-/

namespace A285506.P18150688397732994185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285518 (⌊(n : ℚ) / 2⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285506.P18150688397732994185

/-! ## A285506.P13738210769212871483

`(A285516(n+1)+A285503(n+1))%A285519(n+1)`
-/

namespace A285506.P13738210769212871483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285516 (n + 1) + A285503 (n + 1)) (A285519 (n + 1))

end

end A285506.P13738210769212871483

/-! ## A285506.P9074833949448554150

`filter[n+1, A285504(#)]`
-/

namespace A285506.P9074833949448554150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285504 (f1 j) = 1) n)

end

end A285506.P9074833949448554150

/-! ## A285506.P16399070300620378150

`eq[1, A285504(n+1)]+1`
-/

namespace A285506.P16399070300620378150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285506.P16399070300620378150

/-! ## A285506.P4286128083286087056

`record[A000027(n+1)*A285504(n+1)]`
-/

namespace A285506.P4286128083286087056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A285504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285506.P4286128083286087056

/-! ## A285506.P8304281973104421297

`A285502(2*(n+1))/2-n`
-/

namespace A285506.P8304281973104421297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285502 (2 * (n + 1)) : ℚ) / 2 - (n : ℚ)

end

end A285506.P8304281973104421297

/-! ## A285506.P507385182873829288

`eq[0, A285515(n+1)]+1-n`
-/

namespace A285506.P507385182873829288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (1 - (n : ℤ))

end

end A285506.P507385182873829288

/-! ## A285506.P16327308500058424025

`lt[A285515(n+1), A285373(n+1)]+1-n`
-/

namespace A285506.P16327308500058424025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1 : ℤ) - (n : ℤ)

end

end A285506.P16327308500058424025

/-! ## A285506.P18396771521616939386

`lt[A285515(A028310(n)), A285515(n+1)]-n`
-/

namespace A285506.P18396771521616939386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A285506.P18396771521616939386

/-!
# A285507: a(1) = a(2) = 1, a(3) = a(4) = 2; a(n) = a(a(n-2)-1) + a(n-a(n-3)-1) for n > 4.

The programs for A285507, the canonical program `A285507.P10170740957797733134` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285507 has offset 1).

The definition of A285507 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-2)-2)+a(n-a(n-3)-1)` (program `A285507.P10170740957797733134`, by `A285507.P10170740957797733134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A285507.P10170740957797733134

`a(a(n-2)-2)+a(n-a(n-3)-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A285507

/-- `a(a(n-2)-2)+a(n-a(n-3)-1)` -/
def P10170740957797733134.Spec : Prop :=
  ∀ n, (P10170740957797733134.a n : ℤ) = A285507 (n + 1)

theorem P10170740957797733134.correct : P10170740957797733134.Spec := by
  intro n
  simp only [A285507, Nat.add_sub_cancel]

end A285507

/-!
# A285508: Numbers with exactly three prime factors, not all distinct.

The programs for A285508, the canonical program `A285508.P10690134456776123429` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285508 has offset 1).

The definition of A285508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285508.P18210317955995014804

`∪[A054753(n+1), A033477(n)]`
-/

namespace A285508.P18210317955995014804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033477 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285508.P18210317955995014804

namespace A285508

/-- `∪[A054753(n+1), A033477(n)]` -/
def P18210317955995014804.Spec : Prop :=
  ∀ n, (P18210317955995014804.a n : ℤ) = A285508 (n + 1)

end A285508

/-! ## A285508.P10690134456776123429

`∪[A030078(n+1), A054753(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A285508

/-- `∪[A030078(n+1), A054753(n+1)]` -/
def P10690134456776123429.Spec : Prop :=
  ∀ n, (P10690134456776123429.a n : ℤ) = A285508 (n + 1)

theorem P10690134456776123429.correct : P10690134456776123429.Spec := by
  intro n
  simp only [A285508, Nat.add_sub_cancel]

end A285508

/-! ## A285508.P7669931013625334023

`∪[A054753(n+1), A337877(n+1)]`
-/

namespace A285508.P7669931013625334023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285508.P7669931013625334023

namespace A285508

/-- `∪[A054753(n+1), A337877(n+1)]` -/
def P7669931013625334023.Spec : Prop :=
  ∀ n, (P7669931013625334023.a n : ℤ) = A285508 (n + 1)

end A285508

/-! ## A285508.P14980470663171352860

`filter[A187042(n+1), A340369(#)]`
-/

namespace A285508.P14980470663171352860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A285508.P14980470663171352860

namespace A285508

/-- `filter[A187042(n+1), A340369(#)]` -/
def P14980470663171352860.Spec : Prop :=
  ∀ n, P14980470663171352860.a n = A285508 (n + 1)

end A285508

/-! ## A285508.P2597294707379450198

`filter[A228056(n+1), A340369(#)]`
-/

namespace A285508.P2597294707379450198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A285508.P2597294707379450198

namespace A285508

/-- `filter[A228056(n+1), A340369(#)]` -/
def P2597294707379450198.Spec : Prop :=
  ∀ n, P2597294707379450198.a n = A285508 (n + 1)

end A285508

/-! ## A285508.P5285984898251461035

`filter[A370650(n+2), A340369(#)]`
-/

namespace A285508.P5285984898251461035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370650 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A285508.P5285984898251461035

namespace A285508

/-- `filter[A370650(n+2), A340369(#)]` -/
def P5285984898251461035.Spec : Prop :=
  ∀ n, P5285984898251461035.a n = A285508 (n + 1)

end A285508

/-! ## A285508.P13092670746236332605

`filter[A378494(n+1), A340369(#)]`
-/

namespace A285508.P13092670746236332605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A285508.P13092670746236332605

namespace A285508

/-- `filter[A378494(n+1), A340369(#)]` -/
def P13092670746236332605.Spec : Prop :=
  ∀ n, P13092670746236332605.a n = A285508 (n + 1)

end A285508

/-! ## A285508.P7123392181191330217

`filter[A066428(n+1), A340369(#)]`
-/

namespace A285508.P7123392181191330217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A285508.P7123392181191330217

namespace A285508

/-- `filter[A066428(n+1), A340369(#)]` -/
def P7123392181191330217.Spec : Prop :=
  ∀ n, P7123392181191330217.a n = A285508 (n + 1)

end A285508

/-! ## A285508.P15977670680550124296

`filter[A014612(n+1), A087049(#)]`
-/

namespace A285508.P15977670680550124296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A285508.P15977670680550124296

namespace A285508

/-- `filter[A014612(n+1), A087049(#)]` -/
def P15977670680550124296.Spec : Prop :=
  ∀ n, P15977670680550124296.a n = A285508 (n + 1)

end A285508

/-! ## A285508.P9484569379975686790

`filter[A014612(n+1), A091862(#)]`
-/

namespace A285508.P9484569379975686790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A285508.P9484569379975686790

namespace A285508

/-- `filter[A014612(n+1), A091862(#)]` -/
def P9484569379975686790.Spec : Prop :=
  ∀ n, P9484569379975686790.a n = A285508 (n + 1)

end A285508

/-! ## A285508.P13236269475475093791

`filter[A014612(n+1), A340372(#)]`
-/

namespace A285508.P13236269475475093791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A285508.P13236269475475093791

namespace A285508

/-- `filter[A014612(n+1), A340372(#)]` -/
def P13236269475475093791.Spec : Prop :=
  ∀ n, P13236269475475093791.a n = A285508 (n + 1)

end A285508

/-! ## A285508.P1671437342618367603

`filter[A014612(n+1), A351564(#)]`
-/

namespace A285508.P1671437342618367603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A285508.P1671437342618367603

namespace A285508

/-- `filter[A014612(n+1), A351564(#)]` -/
def P1671437342618367603.Spec : Prop :=
  ∀ n, P1671437342618367603.a n = A285508 (n + 1)

end A285508

/-! ## A285508.P733782862856612849

`filter[A014612(n+1), A358769(#)]`
-/

namespace A285508.P733782862856612849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A285508.P733782862856612849

namespace A285508

/-- `filter[A014612(n+1), A358769(#)]` -/
def P733782862856612849.Spec : Prop :=
  ∀ n, P733782862856612849.a n = A285508 (n + 1)

end A285508

/-! ## A285508.P4103124420892356945

`filter[A014612(n+1), A359464(#)]`
-/

namespace A285508.P4103124420892356945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A285508.P4103124420892356945

namespace A285508

/-- `filter[A014612(n+1), A359464(#)]` -/
def P4103124420892356945.Spec : Prop :=
  ∀ n, P4103124420892356945.a n = A285508 (n + 1)

end A285508

/-! ## A285508.P10631066929052198590

`filter[A014612(n+1), A359466(#)]`
-/

namespace A285508.P10631066929052198590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A285508.P10631066929052198590

namespace A285508

/-- `filter[A014612(n+1), A359466(#)]` -/
def P10631066929052198590.Spec : Prop :=
  ∀ n, P10631066929052198590.a n = A285508 (n + 1)

end A285508

/-! ## A285508.P11463270531425330699

`filter[A014612(n+1), A359469(#)]`
-/

namespace A285508.P11463270531425330699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359469 (f1 j).toNat = 1) n)

end

end A285508.P11463270531425330699

namespace A285508

/-- `filter[A014612(n+1), A359469(#)]` -/
def P11463270531425330699.Spec : Prop :=
  ∀ n, P11463270531425330699.a n = A285508 (n + 1)

end A285508

/-! ## A285508.P14281433444749107218

`∩[A014612(n+1), A066428(n+1)]`
-/

namespace A285508.P14281433444749107218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285508.P14281433444749107218

namespace A285508

/-- `∩[A014612(n+1), A066428(n+1)]` -/
def P14281433444749107218.Spec : Prop :=
  ∀ n, (P14281433444749107218.a n : ℤ) = A285508 (n + 1)

end A285508

/-! ## A285508.P15665370984001749141

`∩[A014612(n+1), A130091(n+1)]`
-/

namespace A285508.P15665370984001749141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285508.P15665370984001749141

namespace A285508

/-- `∩[A014612(n+1), A130091(n+1)]` -/
def P15665370984001749141.Spec : Prop :=
  ∀ n, (P15665370984001749141.a n : ℤ) = A285508 (n + 1)

end A285508

/-! ## A285508.P10271271578269936299

`∩[A014612(n+1), A166982(n+1)]`
-/

namespace A285508.P10271271578269936299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285508.P10271271578269936299

namespace A285508

/-- `∩[A014612(n+1), A166982(n+1)]` -/
def P10271271578269936299.Spec : Prop :=
  ∀ n, (P10271271578269936299.a n : ℤ) = A285508 (n + 1)

end A285508

/-!
# A285509: a(1) = 1; a(2) = a(3) = a(4) = 2; a(n) = a(a(n-1)-1) + a(n-a(n-3)) for n > 4.

The programs for A285509, the canonical program `A285509.P9674046558231521861` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285509 has offset 1).

The definition of A285509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-2)+a(n-a(n-3))` (program `A285509.P9674046558231521861`, by `A285509.P9674046558231521861.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A285509.P9674046558231521861

`a(a(n-1)-2)+a(n-a(n-3))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A285509

/-- `a(a(n-1)-2)+a(n-a(n-3))` -/
def P9674046558231521861.Spec : Prop :=
  ∀ n, (P9674046558231521861.a n : ℤ) = A285509 (n + 1)

theorem P9674046558231521861.correct : P9674046558231521861.Spec := by
  intro n
  simp only [A285509, Nat.add_sub_cancel]

end A285509

/-!
# A285510: Numbers k such that the average of the squarefree divisors of k is an integer.

The programs for A285510, the canonical program `A285510.P11499573024811075816` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285510 has offset 1).

The definition of A285510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285510.P14495234680382209039

`∪[2*n+1, A177731(n+1)]`
-/

namespace A285510.P14495234680382209039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285510.P14495234680382209039

namespace A285510

/-- `∪[2*n+1, A177731(n+1)]` -/
def P14495234680382209039.Spec : Prop :=
  ∀ n, (P14495234680382209039.a n : ℤ) = A285510 (n + 1)

end A285510

/-! ## A285510.P11499573024811075816

`∪[2*n+1, A187811(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A285510

/-- `∪[2*n+1, A187811(n+1)]` -/
def P11499573024811075816.Spec : Prop :=
  ∀ n, (P11499573024811075816.a n : ℤ) = A285510 (n + 1)

theorem P11499573024811075816.correct : P11499573024811075816.Spec := by
  intro n
  simp only [A285510, Nat.add_sub_cancel]

end A285510

/-! ## A285510.P12700453453336693153

`∪[A187811(n+1), A016813(n)]`
-/

namespace A285510.P12700453453336693153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285510.P12700453453336693153

namespace A285510

/-- `∪[A187811(n+1), A016813(n)]` -/
def P12700453453336693153.Spec : Prop :=
  ∀ n, (P12700453453336693153.a n : ℤ) = A285510 (n + 1)

end A285510

/-! ## A285510.P1112712823617568396

`∪[A177731(n+1), A061345(n)]`
-/

namespace A285510.P1112712823617568396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285510.P1112712823617568396

namespace A285510

/-- `∪[A177731(n+1), A061345(n)]` -/
def P1112712823617568396.Spec : Prop :=
  ∀ n, (P1112712823617568396.a n : ℤ) = A285510 (n + 1)

end A285510

/-! ## A285510.P13676583648844199350

`∪[A177731(n+1), A276283(n)]`
-/

namespace A285510.P13676583648844199350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285510.P13676583648844199350

namespace A285510

/-- `∪[A177731(n+1), A276283(n)]` -/
def P13676583648844199350.Spec : Prop :=
  ∀ n, (P13676583648844199350.a n : ℤ) = A285510 (n + 1)

end A285510

/-! ## A285510.P4007898056986959237

`∪[A187811(n+1), A047438(n+1)]`
-/

namespace A285510.P4007898056986959237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285510.P4007898056986959237

namespace A285510

/-- `∪[A187811(n+1), A047438(n+1)]` -/
def P4007898056986959237.Spec : Prop :=
  ∀ n, (P4007898056986959237.a n : ℤ) = A285510 (n + 1)

end A285510

/-! ## A285510.P1332491626784035883

`lt[and(1, n+1), A001842(n)+1]`
-/

namespace A285510.P1332491626784035883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285510.P1332491626784035883

namespace A285510

/-- `lt[and(1, n+1), A001842(n)+1]` -/
def P1332491626784035883.Spec : Prop :=
  ∀ n, (P1332491626784035883.a n : ℤ) = A285510 (n + 1)

end A285510

/-! ## A285510.P15447340823897026240

`lt[and(1, n), A278509(n+1)]+1`
-/

namespace A285510.P15447340823897026240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285510.P15447340823897026240

namespace A285510

/-- `lt[and(1, n), A278509(n+1)]+1` -/
def P15447340823897026240.Spec : Prop :=
  ∀ n, (P15447340823897026240.a n : ℤ) = A285510 (n + 1)

end A285510

/-! ## A285510.P10821806625584890895

`lt[A000035(n), A278509(n+1)]+1`
-/

namespace A285510.P10821806625584890895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A285510.P10821806625584890895

namespace A285510

/-- `lt[A000035(n), A278509(n+1)]+1` -/
def P10821806625584890895.Spec : Prop :=
  ∀ n, (P10821806625584890895.a n : ℤ) = A285510 (n + 1)

end A285510

/-! ## A285510.P17260366595848419995

`eq[A000095(n+1), A091400(n+1)]+1`
-/

namespace A285510.P17260366595848419995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285510.P17260366595848419995

namespace A285510

/-- `eq[A000095(n+1), A091400(n+1)]+1` -/
def P17260366595848419995.Spec : Prop :=
  ∀ n, (P17260366595848419995.a n : ℤ) = A285510 (n + 1)

end A285510

/-! ## A285510.P17416268415095224270

`eq[A091379(n+1), A091400(n+1)]+1`
-/

namespace A285510.P17416268415095224270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285510.P17416268415095224270

namespace A285510

/-- `eq[A091379(n+1), A091400(n+1)]+1` -/
def P17416268415095224270.Spec : Prop :=
  ∀ n, (P17416268415095224270.a n : ℤ) = A285510 (n + 1)

end A285510

/-! ## A285510.P12615915335339120126

`lt[char[A269360(n+1)-1], A170819(n+1)]+1`
-/

namespace A285510.P12615915335339120126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n + 1

end

end A285510.P12615915335339120126

namespace A285510

/-- `lt[char[A269360(n+1)-1], A170819(n+1)]+1` -/
def P12615915335339120126.Spec : Prop :=
  ∀ n, (P12615915335339120126.a n : ℤ) = A285510 (n + 1)

end A285510

/-! ## A285510.P9277273095712344724

`lt[∏{d}[n, A309214(#+1)], n+1]`
-/

namespace A285510.P9277273095712344724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A309214 (d + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A285510.P9277273095712344724

namespace A285510

/-- `lt[∏{d}[n, A309214(#+1)], n+1]` -/
def P9277273095712344724.Spec : Prop :=
  ∀ n, (P9277273095712344724.a n : ℤ) = A285510 (n + 1)

end A285510

/-! ## A285510.P4753892850142033144

`eq[A000089(2*(n+1)), A091400(n+1)]+1`
-/

namespace A285510.P4753892850142033144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285510.P4753892850142033144

namespace A285510

/-- `eq[A000089(2*(n+1)), A091400(n+1)]+1` -/
def P4753892850142033144.Spec : Prop :=
  ∀ n, (P4753892850142033144.a n : ℤ) = A285510 (n + 1)

end A285510

/-! ## A285510.P10937868260044624941

`eq[2, A020639((n+1)*A008458(A001842(n)))]`
-/

namespace A285510.P10937868260044624941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * A008458 (A001842 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285510.P10937868260044624941

namespace A285510

/-- `eq[2, A020639((n+1)*A008458(A001842(n)))]` -/
def P10937868260044624941.Spec : Prop :=
  ∀ n, (P10937868260044624941.a n : ℤ) = A285510 (n + 1)

end A285510

/-!
# A285512: a(n) = smallest integer m>0 such that the positive integers not exceeding m and coprime to n generate the multiplicative group U(Z/nZ).

The programs for A285512, there is no canonical definition to state claims against.
-/

/-! ## A285512.P12203009990393808594

`A232928(a(A287619(n))+n)` with `a(0)=1, a(1)=1`
-/

namespace A285512.P12203009990393808594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A232928 (a (A287619 n).toNat + (n : ℤ)).toNat

end

end A285512.P12203009990393808594

/-! ## A285512.P9194969425126129079

`A232928(n*a(A000038(n))+1)` with `a(0)=1, a(1)=1`
-/

namespace A285512.P9194969425126129079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A232928 ((n : ℤ) * a (A000038 n).toNat + 1).toNat

end

end A285512.P9194969425126129079

/-! ## A285512.P7670772515451319837

`A232928(n/a(A000038(n))+1)` with `a(0)=1, a(1)=1`
-/

namespace A285512.P7670772515451319837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A232928 (SequenceMachineLib.roundAway ((n : ℚ) / (a (A000038 n).toNat : ℚ) + 1)).toNat

end

end A285512.P7670772515451319837

/-! ## A285512.P6304833295207327714

`A111076((n+1)*A168647(n))`
-/

namespace A285512.P6304833295207327714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 ((n + 1 : ℤ) * A168647 n).toNat

end

end A285512.P6304833295207327714

/-! ## A285512.P5334080765941215230

`A111076(lcm(n+1, A168647(n)))`
-/

namespace A285512.P5334080765941215230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (Int.lcm (n + 1 : ℤ) (A168647 n))

end

end A285512.P5334080765941215230

/-!
# A285513: Numbers k such that A285512(k) < A046145(k).

The programs for A285513, there is no canonical definition to state claims against.
-/

/-! ## A285513.P17221561961181888213

`A325399(A031204(n+1))`
-/

namespace A285513.P17221561961181888213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325399 (A031204 (n + 1)).toNat

end

end A285513.P17221561961181888213

/-!
# A285514: Numbers k such that A285512(k) = A046145(k).

The programs for A285514, there is no canonical definition to state claims against.
-/

/-! ## A285514.P12878312071097035923

`eq[A046145(n+1), A285512(n+1)]+1`
-/

namespace A285514.P12878312071097035923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285514.P12878312071097035923

/-! ## A285514.P14079513230674250594

`eq[A046145(n), A285512(A028310(n))]`
-/

namespace A285514.P14079513230674250594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285512 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285514.P14079513230674250594

/-! ## A285514.P5493947377147446085

`eq[A046145(n), A285512(A233583(n+1))]`
-/

namespace A285514.P5493947377147446085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285512 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285514.P5493947377147446085

/-! ## A285514.P8402338099093471083

`eq[A046145(n), A285512(A123108(2*n))]`
-/

namespace A285514.P8402338099093471083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285512 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285514.P8402338099093471083

/-! ## A285514.P14379639259241591137

`lt[A035039(A328702(2*n+1)), A046145(n)]`
-/

namespace A285514.P14379639259241591137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035039 (A328702 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285514.P14379639259241591137

/-!
# A285515: {00->0, 11->1}-transform of A285501.

The programs for A285515, there is no canonical definition to state claims against.
-/

/-! ## A285515.P5949995336982962233

`char[A285517(n+1)-1]`
-/

namespace A285515.P5949995336982962233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285517 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285515.P5949995336982962233

/-! ## A285515.P15378183642739350480

`1-char[A285516(n+1)-1]`
-/

namespace A285515.P15378183642739350480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285516 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285515.P15378183642739350480

/-! ## A285515.P15094255384286951971

`A285501(Δ[n²])`
-/

namespace A285515.P15094255384286951971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285501 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285515.P15094255384286951971

/-! ## A285515.P9252685329444335785

`and(1, A285501(2*(n+1)))`
-/

namespace A285515.P9252685329444335785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A285501 (2 * (n + 1)))

end

end A285515.P9252685329444335785

/-! ## A285515.P10188245301574864018

`or(char[1], A285501(2*n+2))`
-/

namespace A285515.P10188245301574864018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A285501 (2 * n + 2))

end

end A285515.P10188245301574864018

/-! ## A285515.P4652695323478664983

`(A285520(2*n+1)+1)%2`
-/

namespace A285515.P4652695323478664983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285520 (2 * n + 1) + 1) 2

end

end A285515.P4652695323478664983

/-! ## A285515.P11393052455182408147

`ceil(A285501(2*(n+1))/A054353(n+1))`
-/

namespace A285515.P11393052455182408147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285501 (2 * (n + 1)) : ℚ) / (A054353 (n + 1) : ℚ)⌉

end

end A285515.P11393052455182408147

/-! ## A285515.P12411413025604565716

`record[A006530(n+2)]%(A285501(2*(n+1))+1)`
-/

namespace A285515.P12411413025604565716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A285501 (2 * (n + 1)) + 1)

end

end A285515.P12411413025604565716

/-! ## A285515.P10967784410354084554

`A288711(2*(n+2))+A285501(2*n+1)`
-/

namespace A285515.P10967784410354084554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288711 (2 * (n + 2)) + A285501 (2 * n + 1)

end

end A285515.P10967784410354084554

/-! ## A285515.P4226046147602171489

`A059841(A285520(record[xor(1, n)]))`
-/

namespace A285515.P4226046147602171489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A285520 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A285515.P4226046147602171489

/-! ## A285515.P15214634522576664898

`A059841(A285520(2*n+1))`
-/

namespace A285515.P15214634522576664898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A285520 (2 * n + 1)).toNat

end

end A285515.P15214634522576664898

/-! ## A285515.P17826631711447790636

`A285518(A285520(2*n+1)+2)`
-/

namespace A285515.P17826631711447790636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285518 (A285520 (2 * n + 1) + 2).toNat

end

end A285515.P17826631711447790636

/-! ## A285515.P15624910346588196849

`ceil(A285501(2*(n+1))/A180625(n+1))`
-/

namespace A285515.P15624910346588196849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285501 (2 * (n + 1)) : ℚ) / (A180625 (n + 1) : ℚ)⌉

end

end A285515.P15624910346588196849

/-!
# A285516: Positions of 0 in A285515; complement of A285517.

The programs for A285516, there is no canonical definition to state claims against.
-/

/-! ## A285516.P3290618269623117928

`A285506(n+1)+n`
-/

namespace A285516.P3290618269623117928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285506 (n + 1) + (n : ℤ)

end

end A285516.P3290618269623117928

/-! ## A285516.P9862990122400027007

`record[(n+1)*A285504(n+1)]+n`
-/

namespace A285516.P9862990122400027007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A285516.P9862990122400027007

/-! ## A285516.P2379445752903522998

`A285502(2*(n+1))/2`
-/

namespace A285516.P2379445752903522998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285502 (2 * (n + 1)) : ℚ) / 2

end

end A285516.P2379445752903522998

/-! ## A285516.P3085936479373195367

`eq[0, A285515(n+1)]+1`
-/

namespace A285516.P3085936479373195367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285516.P3085936479373195367

/-! ## A285516.P9838964815945707813

`lt[n*char[A285517(n+1)], n]`
-/

namespace A285516.P9838964815945707813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285517 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A285516.P9838964815945707813

/-! ## A285516.P1643577896374091344

`lt[n*A285515(A028310(n)), n]`
-/

namespace A285516.P1643577896374091344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285515 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285516.P1643577896374091344

/-! ## A285516.P13597410100552162774

`A028310(lt[A285515(n+1), 1]+1)`
-/

namespace A285516.P13597410100552162774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A285516.P13597410100552162774

/-! ## A285516.P9826715728154332313

`lt[char[A285517(n+1)], A285515(n+1)]`
-/

namespace A285516.P9826715728154332313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285517 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A285516.P9826715728154332313

/-! ## A285516.P14602191440031306729

`lt[A285515(n+1), A285373(n+1)]+1`
-/

namespace A285516.P14602191440031306729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A285516.P14602191440031306729

/-! ## A285516.P12327302505794246737

`lt[A285515(A028310(n)), A285515(n+1)]`
-/

namespace A285516.P12327302505794246737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285516.P12327302505794246737

/-! ## A285516.P16332214598150675764

`record[(A004526(n)+1)/(A285501(n+1)+1)]`
-/

namespace A285516.P16332214598150675764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1 : ℚ) / (A285501 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285516.P16332214598150675764

/-! ## A285516.P18071866450268656570

`round(lt[A285501(n+1), A048675(n+1)%2]/2)`
-/

namespace A285516.P18071866450268656570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048675 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2)

end

end A285516.P18071866450268656570

/-! ## A285516.P11876388375233238402

`eq[char[A285517(n+1)], A285479(n)]`
-/

namespace A285516.P11876388375233238402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285517 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285479 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285516.P11876388375233238402

/-! ## A285516.P839870646114147745

`eq[char[A285517(n+1)], A285480(n)]`
-/

namespace A285516.P839870646114147745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285517 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285516.P839870646114147745

/-!
# A285517: Positions of 1 in A285515; complement of A285516.

The programs for A285517, there is no canonical definition to state claims against.
-/

/-! ## A285517.P6764485384934091670

`∑[A285504(n+1)+1]`
-/

namespace A285517.P6764485384934091670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285504 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285517.P6764485384934091670

/-! ## A285517.P7102910373991986913

`comp[A285516(n+1)-1]+1`
-/

namespace A285517.P7102910373991986913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285516 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285517.P7102910373991986913

/-! ## A285517.P6944038683802289244

`∑[A285518(∑[char[2*n]])+1]`
-/

namespace A285517.P6944038683802289244
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285518 (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285517.P6944038683802289244

/-! ## A285517.P15533906345830036504

`∑[char[A285506(n+1)-1]+1]`
-/

namespace A285517.P15533906345830036504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285506 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285517.P15533906345830036504

/-! ## A285517.P16743722516132989278

`filter[n+1, A285515(#)]`
-/

namespace A285517.P16743722516132989278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285515 (f1 j) = 1) n)

end

end A285517.P16743722516132989278

/-! ## A285517.P12628259108669457378

`eq[1, A285515(n+1)]+1`
-/

namespace A285517.P12628259108669457378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285517.P12628259108669457378

/-! ## A285517.P8746073654939412051

`lt[1, A285515(A028310(n))+1]`
-/

namespace A285517.P8746073654939412051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285517.P8746073654939412051

/-! ## A285517.P3239120910004568994

`A285503(2*(n+1))/2`
-/

namespace A285517.P3239120910004568994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285503 (2 * (n + 1)) : ℚ) / 2

end

end A285517.P3239120910004568994

/-! ## A285517.P8008105156808985180

`(A285519(2*(n+1))-(2*n+1))/2`
-/

namespace A285517.P8008105156808985180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285519 (2 * (n + 1)) - (2 * n + 1 : ℤ) : ℚ) / 2

end

end A285517.P8008105156808985180

/-! ## A285517.P9957589865943118606

`eq[1, A285501(A233583(2*n+1))]`
-/

namespace A285517.P9957589865943118606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285501 (A233583 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285517.P9957589865943118606

/-!
# A285518: {00->0, 11->1}-transform of A285504.

The programs for A285518, there is no canonical definition to state claims against.
-/

/-! ## A285518.P14658374641052137314

`char[A285520(n+1)-1]`
-/

namespace A285518.P14658374641052137314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285520 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285518.P14658374641052137314

/-! ## A285518.P4775938896564857045

`A285504(Δ[n²])`
-/

namespace A285518.P4775938896564857045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285504 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285518.P4775938896564857045

/-! ## A285518.P13885469951409018486

`and(2*n+1, A285504(2*n+1))`
-/

namespace A285518.P13885469951409018486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A285504 (2 * n + 1))

end

end A285518.P13885469951409018486

/-! ## A285518.P16606515689986010966

`A285515(A285517(2*(n+1))-A285517(2*n+1))`
-/

namespace A285518.P16606515689986010966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (A285517 (2 * (n + 1)) - A285517 (2 * n + 1)).toNat

end

end A285518.P16606515689986010966

/-! ## A285518.P17166607911858602341

`A285515(A285517(2*n+1)+2)`
-/

namespace A285518.P17166607911858602341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (A285517 (2 * n + 1) + 2).toNat

end

end A285518.P17166607911858602341

/-!
# A285519: Positions of 0 in A285518; complement of A285520.

The programs for A285519, there is no canonical definition to state claims against.
-/

/-! ## A285519.P4909050325079712126

`A285503(n+1)+n`
-/

namespace A285519.P4909050325079712126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285503 (n + 1) + (n : ℤ)

end

end A285519.P4909050325079712126

/-! ## A285519.P15697139721644159751

`A285505(2*(n+1))/2`
-/

namespace A285519.P15697139721644159751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285505 (2 * (n + 1)) : ℚ) / 2

end

end A285519.P15697139721644159751

/-! ## A285519.P1541595799798714558

`A273943(A285505(2*(n+1)))`
-/

namespace A285519.P1541595799798714558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A285505 (2 * (n + 1))).toNat

end

end A285519.P1541595799798714558

/-! ## A285519.P1501295862375354973

`lt[n*char[A285520(n+1)], n]`
-/

namespace A285519.P1501295862375354973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285520 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A285519.P1501295862375354973

/-! ## A285519.P7769914641844049364

`eq[1, A285518(n+1)+1]+1`
-/

namespace A285519.P7769914641844049364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285518 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285519.P7769914641844049364

/-! ## A285519.P18116688536490463173

`lt[n*A285518(A028310(n)), n]`
-/

namespace A285519.P18116688536490463173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285518 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285519.P18116688536490463173

/-! ## A285519.P6361988625906832663

`lt[char[A285520(n+1)], A285515(n+1)]`
-/

namespace A285519.P6361988625906832663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285520 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A285519.P6361988625906832663

/-! ## A285519.P15416941747224112205

`lt[A285518(A028310(n)), A284939(n+1)]`
-/

namespace A285519.P15416941747224112205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285518 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285519.P15416941747224112205

/-! ## A285519.P16975556469501275274

`A008619(A285505(2*n+1)-1)`
-/

namespace A285519.P16975556469501275274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A285505 (2 * n + 1) - 1).toNat

end

end A285519.P16975556469501275274

/-! ## A285519.P4588488658010350094

`A008619(A285505(2*n+1))`
-/

namespace A285519.P4588488658010350094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A285505 (2 * n + 1)).toNat

end

end A285519.P4588488658010350094

/-! ## A285519.P11125312052000362827

`A004526(A285505(2*n+2))`
-/

namespace A285519.P11125312052000362827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A285505 (2 * n + 2)).toNat

end

end A285519.P11125312052000362827

/-! ## A285519.P7501653242489512998

`A029578(A285505(2*n+1)+1)`
-/

namespace A285519.P7501653242489512998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A285505 (2 * n + 1) + 1).toNat

end

end A285519.P7501653242489512998

/-! ## A285519.P12982860352222273440

`A032742(A285505(2*n+1)+1)`
-/

namespace A285519.P12982860352222273440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A285505 (2 * n + 1) + 1).toNat

end

end A285519.P12982860352222273440

/-! ## A285519.P10364449551091809404

`eq[1, A285501(A233583(n+1))]+n`
-/

namespace A285519.P10364449551091809404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285501 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n

end

end A285519.P10364449551091809404

/-! ## A285519.P792966760895401609

`round(lt[A285504(n+1), A048675(n+1)%2]/2)`
-/

namespace A285519.P792966760895401609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048675 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2)

end

end A285519.P792966760895401609

/-! ## A285519.P15897050255733267170

`eq[char[A285520(n+1)], A285479(n)]`
-/

namespace A285519.P15897050255733267170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285520 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285479 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285519.P15897050255733267170

/-! ## A285519.P3882665265017814279

`eq[char[A285520(n+1)], A285480(n)]`
-/

namespace A285519.P3882665265017814279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285520 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285519.P3882665265017814279

/-!
# A285520: Positions of 1 in A285518; complement of A285519.

The programs for A285520, there is no canonical definition to state claims against.
-/

/-! ## A285520.P17880476049300318043

`∑[A285501(n+1)+1]`
-/

namespace A285520.P17880476049300318043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285501 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285520.P17880476049300318043

/-! ## A285520.P13244477426682300630

`comp[A285519(n+1)-1]+1`
-/

namespace A285520.P13244477426682300630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285519 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285520.P13244477426682300630

/-! ## A285520.P7041301776226572366

`filter[n+1, A285518(#)]`
-/

namespace A285520.P7041301776226572366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285518 (f1 j) = 1) n)

end

end A285520.P7041301776226572366

/-! ## A285520.P3252546359725353437

`eq[1, A285518(n+1)]+1`
-/

namespace A285520.P3252546359725353437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285520.P3252546359725353437

/-! ## A285520.P11866423430865352843

`a(n-1)+2-A285518(a(n-1)+1)` with `a(0)=1`
-/

namespace A285520.P11866423430865352843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 - A285518 (a (n - 1) + 1).toNat

end

end A285520.P11866423430865352843

/-! ## A285520.P17894585043596493220

`A285506(2*(n+1))/2`
-/

namespace A285520.P17894585043596493220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285506 (2 * (n + 1)) : ℚ) / 2

end

end A285520.P17894585043596493220

/-! ## A285520.P9711828420028026965

`(A285516(2*(n+1))+A001489(2*n+1))/2`
-/

namespace A285520.P9711828420028026965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285516 (2 * (n + 1)) + A001489 (2 * n + 1) : ℚ) / 2

end

end A285520.P9711828420028026965

/-!
# A285521: Table read by rows: the n-th row gives the lexicographically earliest sequence of length n such that the convex hull of (1, a(1)), ..., (n, a(n)) is an n-gon with minimum height.

The programs for A285521, there is no canonical definition to state claims against.
-/

/-! ## A285521.P14436162747633337038

`A337198(A176121(n)+1)`
-/

namespace A285521.P14436162747633337038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337198 (A176121 n + 1).toNat

end

end A285521.P14436162747633337038

/-! ## A285521.P2361193404183954905

`A337198(or(1, A176121(n)))`
-/

namespace A285521.P2361193404183954905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337198 (Int.lor 1 (A176121 n)).toNat

end

end A285521.P2361193404183954905

/-! ## A285521.P4985646015401066294

`A008619(A307597(A023434(n)²))`
-/

namespace A285521.P4985646015401066294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A307597 (A023434 n ^ 2).toNat).toNat

end

end A285521.P4985646015401066294

/-! ## A285521.P15363312117423158404

`∏{e}[A307597(A023434(n)²), A007097(#)]`
-/

namespace A285521.P15363312117423158404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (A023434 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007097 (Nat.factorization (f1 n).natAbs p)

end

end A285521.P15363312117423158404

/-! ## A285521.P9831150779611871034

`A092782(A152468(n+1)+A000073(n))`
-/

namespace A285521.P9831150779611871034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (A152468 (n + 1) + A000073 n).toNat

end

end A285521.P9831150779611871034

/-!
# A285522: Array read by antidiagonals: T(m,n) = number of circulant digraphs up to Cayley isomorphism on n vertices with edges colored according to step value using a maximum of m-1 colors.

The programs for A285522, there is no canonical definition to state claims against.
-/

/-! ## A285522.P12406976112343920261

`A132191(n+1)/A002260(n+1)`
-/

namespace A285522.P12406976112343920261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132191 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A285522.P12406976112343920261

/-! ## A285522.P4169738926949100302

`A132191(n+1)/(A002262(n)+1)`
-/

namespace A285522.P4169738926949100302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132191 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A285522.P4169738926949100302

/-! ## A285522.P145618609989465788

`round(A132191(n+1)/A134868(n+1))`
-/

namespace A285522.P145618609989465788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A132191 (n + 1) : ℚ) / (A134868 (n + 1) : ℚ))

end

end A285522.P145618609989465788

/-! ## A285522.P17323090915182624381

`A132191(n+1)/A004736(A038722(n+1))`
-/

namespace A285522.P17323090915182624381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132191 (n + 1) : ℚ) / (A004736 (A038722 (n + 1)).toNat : ℚ)

end

end A285522.P17323090915182624381

/-! ## A285522.P11496031449224547919

`A132191(n+1)/A000196(A133819(n+1))`
-/

namespace A285522.P11496031449224547919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132191 (n + 1) : ℚ) / (A000196 (A133819 (n + 1)).toNat : ℚ)

end

end A285522.P11496031449224547919

/-! ## A285522.P10292970527391474826

`A132191(n+1)/A000005(A059268(n))`
-/

namespace A285522.P10292970527391474826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132191 (n + 1) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A285522.P10292970527391474826

/-!
# A285523: Numbers k such that k^2 + 1 is 100-smooth.

The programs for A285523, the canonical program `A285523.P12842749750153228021` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285523 has offset 1).

The definition of A285523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285523.P12842749750153228021

`lt[A014442(n+1), 98]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A285523

/-- `lt[A014442(n+1), 98]+1` -/
def P12842749750153228021.Spec : Prop :=
  ∀ n, (P12842749750153228021.a n : ℤ) = A285523 (n + 1)

theorem P12842749750153228021.correct : P12842749750153228021.Spec := by
  intro n
  simp only [A285523, Nat.add_sub_cancel]

end A285523

/-! ## A285523.P1492570556083554005

`lt[1, A179941(A281793(n))]`
-/

namespace A285523.P1492570556083554005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179941 (A281793 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285523.P1492570556083554005

namespace A285523

/-- `lt[1, A179941(A281793(n))]` -/
def P1492570556083554005.Spec : Prop :=
  ∀ n, (P1492570556083554005.a n : ℤ) = A285523 (n + 1)

end A285523

/-! ## A285523.P3354562882958286713

`eq[2, A179941(A006530(n²+1))]`
-/

namespace A285523.P3354562882958286713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179941 (A006530 (n ^ 2 + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285523.P3354562882958286713

namespace A285523

/-- `eq[2, A179941(A006530(n²+1))]` -/
def P3354562882958286713.Spec : Prop :=
  ∀ n, (P3354562882958286713.a n : ℤ) = A285523 (n + 1)

end A285523

/-! ## A285523.P4591813725533875275

`lt[A101508(A281793(n)), A256145(n+1)]`
-/

namespace A285523.P4591813725533875275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101508 (A281793 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256145 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285523.P4591813725533875275

namespace A285523

/-- `lt[A101508(A281793(n)), A256145(n+1)]` -/
def P4591813725533875275.Spec : Prop :=
  ∀ n, (P4591813725533875275.a n : ℤ) = A285523 (n + 1)

end A285523

/-!
# A285524: a(n) is the value d=4.

The programs for A285524, there is no canonical definition to state claims against.
-/

/-! ## A285524.P8716662558282715247

`round((n+2)*tan(60))`
-/

namespace A285524.P8716662558282715247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) * Real.tan (60 : ℝ))

end

end A285524.P8716662558282715247

/-! ## A285524.P14212745840678744873

`round((n+2)/cot(60))`
-/

namespace A285524.P14212745840678744873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.cot (60 : ℝ))

end

end A285524.P14212745840678744873

/-! ## A285524.P6306532831670424255

`round(8*(n+2)/25)`
-/

namespace A285524.P6306532831670424255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n + 2 : ℚ) / 25))

end

end A285524.P6306532831670424255

/-! ## A285524.P15286236949398116763

`ceil(or(4, 8*n)/25)`
-/

namespace A285524.P15286236949398116763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 4 (8 * n) : ℚ) / 25⌉

end

end A285524.P15286236949398116763

/-! ## A285524.P1720596477778453044

`ceil(lcm(4, Δ[n²])/25)`
-/

namespace A285524.P1720596477778453044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lcm 4 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 25⌉

end

end A285524.P1720596477778453044

/-! ## A285524.P2805472893130042283

`ceil(floor(Δ[and((2*n+1)²+6, -5)/5])/5)`
-/

namespace A285524.P2805472893130042283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land ((2 * n + 1) ^ 2 + 6 : ℤ) (-5) : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊f1 (n + 1) - f1 n⌋ : ℚ) / 5⌉

end

end A285524.P2805472893130042283

/-! ## A285524.P10916155110601518557

`ceil(A017113(n)/25)`
-/

namespace A285524.P10916155110601518557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017113 n : ℚ) / 25⌉

end

end A285524.P10916155110601518557

/-! ## A285524.P10194931264483563522

`ceil(A051062(n)/50)`
-/

namespace A285524.P10194931264483563522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051062 n : ℚ) / 50⌉

end

end A285524.P10194931264483563522

/-! ## A285524.P7077696402747704553

`ceil(Δ[A005899(n)/25])`
-/

namespace A285524.P7077696402747704553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005899 n : ℚ) / 25

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A285524.P7077696402747704553

/-! ## A285524.P14126061827494038075

`ceil(Δ[A016742(n)/25])`
-/

namespace A285524.P14126061827494038075
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016742 n : ℚ) / 25

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A285524.P14126061827494038075

/-!
# A285525: The indices that mark the beginning of four consecutive equal terms in A285524.

The programs for A285525, there is no canonical definition to state claims against.
-/

/-! ## A285525.P10976533992680258111

`A016777(round(log(50)*Δ[n²]))+n`
-/

namespace A285525.P10976533992680258111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.roundAway (Real.log (50 : ℝ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ))).toNat + (n : ℤ)

end

end A285525.P10976533992680258111

/-! ## A285525.P9635918858815630639

`3*A285526(n+1)+1+n`
-/

namespace A285525.P9635918858815630639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A285526 (n + 1) + 1 + (n : ℤ)

end

end A285525.P9635918858815630639

/-! ## A285525.P3518482638365110715

`A008486(A285526(n+1))+n+1`
-/

namespace A285525.P3518482638365110715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A285526 (n + 1)).toNat + (n + 1 : ℤ)

end

end A285525.P3518482638365110715

/-! ## A285525.P11471810394748092284

`A061800(3*A285526(n+1))+n`
-/

namespace A285525.P11471810394748092284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (3 * A285526 (n + 1)).toNat + (n : ℤ)

end

end A285525.P11471810394748092284

/-! ## A285525.P6548740559228009416

`A008585(A285526(n+1))+A000027(n+1)`
-/

namespace A285525.P6548740559228009416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A285526 (n + 1)).toNat + A000027 (n + 1)

end

end A285525.P6548740559228009416

/-!
# A285526: Terms of A285524 that mark the beginning of four consecutive equal values.

The programs for A285526, there is no canonical definition to state claims against.
-/

/-! ## A285526.P8773142581979744693

`round(log(50)*Δ[n²])`
-/

namespace A285526.P8773142581979744693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (50 : ℝ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ))

end

end A285526.P8773142581979744693

/-! ## A285526.P13191400027976794745

`floor((A285525(n+1)-n)/3)`
-/

namespace A285526.P13191400027976794745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285525 (n + 1) - (n : ℤ) : ℚ) / 3⌋

end

end A285526.P13191400027976794745

/-! ## A285526.P10143320399326516853

`A029928(A008591(n))+4`
-/

namespace A285526.P10143320399326516853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029928 (A008591 n).toNat + 4

end

end A285526.P10143320399326516853

/-! ## A285526.P640419861799385968

`A008621(A350133(n+1))+n`
-/

namespace A285526.P640419861799385968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A350133 (n + 1)).toNat + (n : ℤ)

end

end A285526.P640419861799385968

/-! ## A285526.P14508976933530419657

`A002264(A285525(n+1)-n)`
-/

namespace A285526.P14508976933530419657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A285525 (n + 1) - (n : ℤ)).toNat

end

end A285526.P14508976933530419657

/-!
# A285527: Number of super perfect rhythmic tilings of [0,3n-1] with triples.

The programs for A285527, there is no canonical definition to state claims against.
-/

/-! ## A285527.P11301709370919386983

`A043529(n)*A059108(n)`
-/

namespace A285527.P11301709370919386983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n * A059108 n

end

end A285527.P11301709370919386983

/-! ## A285527.P4232155707335673981

`A043558(n)*A059108(n)`
-/

namespace A285527.P4232155707335673981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 n * A059108 n

end

end A285527.P4232155707335673981

/-! ## A285527.P14829979982483056672

`A043559(n)*A059108(n)`
-/

namespace A285527.P14829979982483056672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 n * A059108 n

end

end A285527.P14829979982483056672

/-! ## A285527.P7524834498013047486

`A059108(n)*A063056(n)`
-/

namespace A285527.P7524834498013047486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059108 n * A063056 n

end

end A285527.P7524834498013047486

/-! ## A285527.P196140164080392127

`A059108(n)*A110592(n)`
-/

namespace A285527.P196140164080392127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059108 n * A110592 n

end

end A285527.P196140164080392127

/-!
# A285529: Triangle read by rows: T(n,k) is the number of nodes of degree k counted over all simple labeled graphs on n nodes, n>=1, 0<=k<=n-1.

The programs for A285529, there is no canonical definition to state claims against.
-/

/-! ## A285529.P2020000630733060524

`A003506(n+1)*A006125(A003056(n))`
-/

namespace A285529.P2020000630733060524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) * A006125 (A003056 n).toNat

end

end A285529.P2020000630733060524

/-! ## A285529.P7241866510944330348

`A003506(n+1)*A183091(A113402(n+1))`
-/

namespace A285529.P7241866510944330348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) * A183091 (A113402 (n + 1)).toNat

end

end A285529.P7241866510944330348

/-! ## A285529.P7118848588533102295

`A000079(n-A051162(n))*A003506(n+1)`
-/

namespace A285529.P7118848588533102295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n : ℤ) - A051162 n).toNat * A003506 (n + 1)

end

end A285529.P7118848588533102295

/-! ## A285529.P9656271089356646345

`A003506(n+1)/A000079(A051162(n))*A000079(n)`
-/

namespace A285529.P9656271089356646345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) : ℚ) / (A000079 (A051162 n).toNat : ℚ) * (A000079 n : ℚ)

end

end A285529.P9656271089356646345

/-! ## A285529.P3704182963711404708

`A323647(A269565(n+1))`
-/

namespace A285529.P3704182963711404708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (A269565 (n + 1)).toNat

end

end A285529.P3704182963711404708

/-!
# A285530: 0-limiting word of the morphism 0->11, 1-> 0100.

The programs for A285530, there is no canonical definition to state claims against.
-/

/-! ## A285530.P11620782714536780628

`char[A285532(n+1)-1]`
-/

namespace A285530.P11620782714536780628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285532 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285530.P11620782714536780628

/-! ## A285530.P14190380364178063805

`1-char[A285531(n+1)-1]`
-/

namespace A285530.P14190380364178063805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285531 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285530.P14190380364178063805

/-! ## A285530.P10533154463043054223

`eq[(n+1)%2, A285533(n+1)]%2`
-/

namespace A285530.P10533154463043054223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2

end

end A285530.P10533154463043054223

/-! ## A285530.P8309115513008255552

`A000035(eq[A059841(n), A285533(n+1)])`
-/

namespace A285530.P8309115513008255552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285530.P8309115513008255552

/-! ## A285530.P2733938758561516489

`A000035(eq[1, A285533(n+1)+A000035(n)])`
-/

namespace A285530.P2733938758561516489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (n + 1) + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285530.P2733938758561516489

/-! ## A285530.P9969177649908105349

`A059841(eq[A059841(n), A285533(n+1)]+1)`
-/

namespace A285530.P9969177649908105349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A285530.P9969177649908105349

/-!
# A285531: Positions of 0 in A285530; complement of A285532.

The programs for A285531, there is no canonical definition to state claims against.
-/

/-! ## A285531.P16405180331389081832

`comp[A285532(n+1)-1]+1`
-/

namespace A285531.P16405180331389081832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285532 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285531.P16405180331389081832

/-! ## A285531.P13468420673525121414

`eq[0, A285530(n+1)]+1`
-/

namespace A285531.P13468420673525121414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285531.P13468420673525121414

/-! ## A285531.P1327409959803253494

`record[n+1-A000010(n+1)*A285530(n+1)]`
-/

namespace A285531.P1327409959803253494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (n + 1) * A285530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285531.P1327409959803253494

/-! ## A285531.P8745705428610194637

`record[n+1-A285530(n+1)*A285532(n+1)]`
-/

namespace A285531.P8745705428610194637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285530 (n + 1) * A285532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285531.P8745705428610194637

/-! ## A285531.P433917606881661251

`record[n+1-A285530(n+1)*A285534(n+1)]`
-/

namespace A285531.P433917606881661251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285530 (n + 1) * A285534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285531.P433917606881661251

/-! ## A285531.P15769629039444918848

`record[n+1-A285530(n+1)*A285535(n+1)]`
-/

namespace A285531.P15769629039444918848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285530 (n + 1) * A285535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285531.P15769629039444918848

/-! ## A285531.P17482610176916247639

`eq[A028310(n)-n, A285530(A028310(n))]`
-/

namespace A285531.P17482610176916247639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285530 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285531.P17482610176916247639

/-! ## A285531.P86614062780615362

`A056239(p?[A285530(n+1)+A000040(n+1)])`
-/

namespace A285531.P86614062780615362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285530 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285531.P86614062780615362

/-!
# A285532: Positions of 1 in A285530; complement of A285533.

The programs for A285532, there is no canonical definition to state claims against.
-/

/-! ## A285532.P1657332726731130886

`filter[n+1, A285530(#)]`
-/

namespace A285532.P1657332726731130886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285530 (f1 j) = 1) n)

end

end A285532.P1657332726731130886

/-! ## A285532.P12717852738869642495

`eq[1, A285530(n+1)]+1`
-/

namespace A285532.P12717852738869642495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285532.P12717852738869642495

/-! ## A285532.P17861743677936047692

`record[(n+2)*A285530(n+2)]`
-/

namespace A285532.P17861743677936047692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A285530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285532.P17861743677936047692

/-! ## A285532.P2439653570520965081

`eq[1, A285530(A028310(n))]`
-/

namespace A285532.P2439653570520965081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285530 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285532.P2439653570520965081

/-! ## A285532.P706063887785788831

`A020725(eq[1, A285530(n+1)])`
-/

namespace A285532.P706063887785788831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285532.P706063887785788831

/-! ## A285532.P4813490282691837722

`eq[char[A285531(n+1)], A285476(n)]`
-/

namespace A285532.P4813490282691837722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285531 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285532.P4813490282691837722

/-! ## A285532.P6930388192982910980

`eq[0, A285533(2*(n+1))]-n`
-/

namespace A285532.P6930388192982910980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A285532.P6930388192982910980

/-! ## A285532.P9707100383917540297

`A056239(p?[A000040(n+1)*A285530(n+1)])`
-/

namespace A285532.P9707100383917540297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A285530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285532.P9707100383917540297

/-!
# A285533: 1-limiting word of the morphism 0->11, 1-> 0100.

The programs for A285533, there is no canonical definition to state claims against.
-/

/-! ## A285533.P1731025862347222144

`char[A285535(n+1)-1]`
-/

namespace A285533.P1731025862347222144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285535 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285533.P1731025862347222144

/-! ## A285533.P16307271302196233125

`1-char[A285534(n+1)-1]`
-/

namespace A285533.P16307271302196233125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285534 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285533.P16307271302196233125

/-! ## A285533.P528869436691520453

`eq[(n+1)%2, A285530(n+1)]%2`
-/

namespace A285533.P528869436691520453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2

end

end A285533.P528869436691520453

/-! ## A285533.P17683491279647656411

`A000035(eq[A059841(n), A285530(n+1)])`
-/

namespace A285533.P17683491279647656411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285533.P17683491279647656411

/-! ## A285533.P11991018250339346007

`A000035(eq[1, A285530(n+1)+A000035(n)])`
-/

namespace A285533.P11991018250339346007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285530 (n + 1) + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285533.P11991018250339346007

/-! ## A285533.P11749871653754155832

`1-A059841(eq[A059841(n), A285530(n+1)])`
-/

namespace A285533.P11749871653754155832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A059841 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285533.P11749871653754155832

/-! ## A285533.P13860920586618476169

`A059841(eq[A059841(n+1), A285530(n+2)])`
-/

namespace A285533.P13860920586618476169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285533.P13860920586618476169

/-!
# A285534: Positions of 0 in A285533; complement of A285535.

The programs for A285534, there is no canonical definition to state claims against.
-/

/-! ## A285534.P4717691181194366848

`eq[0, A285533(n+1)]+1`
-/

namespace A285534.P4717691181194366848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285534.P4717691181194366848

/-! ## A285534.P17531576168634720394

`eq[0, A285533(A000007(n)+n)]`
-/

namespace A285534.P17531576168634720394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285534.P17531576168634720394

/-! ## A285534.P11689990149899573545

`eq[0, A285533(or(n, A000007(n)))]`
-/

namespace A285534.P11689990149899573545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285534.P11689990149899573545

/-! ## A285534.P7219831228763275582

`eq[char[A285535(n+1)], A285476(n)]`
-/

namespace A285534.P7219831228763275582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285535 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285534.P7219831228763275582

/-! ## A285534.P2305805801675166267

`eq[0, A285533(A065033(2*n))]`
-/

namespace A285534.P2305805801675166267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285534.P2305805801675166267

/-! ## A285534.P16414285961090291666

`eq[0, A285533(A123108(2*n))]`
-/

namespace A285534.P16414285961090291666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285534.P16414285961090291666

/-! ## A285534.P18259133520050413834

`eq[0, A285533(A233583(n+1))]`
-/

namespace A285534.P18259133520050413834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285534.P18259133520050413834

/-! ## A285534.P12374708382714703834

`eq[0, A285533(A172471(A000124(n)))]`
-/

namespace A285534.P12374708382714703834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (A172471 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285534.P12374708382714703834

/-!
# A285535: Positions of 1 in A285533; complement of A285534.

The programs for A285535, there is no canonical definition to state claims against.
-/

/-! ## A285535.P495206136494842463

`comp[A285534(n+1)-1]+1`
-/

namespace A285535.P495206136494842463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285534 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285535.P495206136494842463

/-! ## A285535.P16036338410182013240

`filter[n+1, A285533(#)]`
-/

namespace A285535.P16036338410182013240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285533 (f1 j) = 1) n)

end

end A285535.P16036338410182013240

/-! ## A285535.P14422086945352844557

`eq[1, A285533(n+1)]+1`
-/

namespace A285535.P14422086945352844557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285535.P14422086945352844557

/-! ## A285535.P14100906626083677270

`record[(n+1)^(A285533(n+1)+A000007(n))]`
-/

namespace A285535.P14100906626083677270
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A285533 (n + 1) + A000007 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285535.P14100906626083677270

/-! ## A285535.P10011768950039917787

`record[(n+1)*and(A058281(n), A285533(n+1))]`
-/

namespace A285535.P10011768950039917787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land (A058281 n) (A285533 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285535.P10011768950039917787

/-! ## A285535.P12602133116280236857

`record[(n+1)*A285533(or(n, A285533(n+1))+1)]`
-/

namespace A285535.P12602133116280236857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285533 (Int.lor (n : ℤ) (A285533 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285535.P12602133116280236857

/-! ## A285535.P6983691643957825964

`record[(n+1)*and(A108013(n+1), A285533(n+1))]`
-/

namespace A285535.P6983691643957825964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land (A108013 (n + 1)) (A285533 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285535.P6983691643957825964

/-! ## A285535.P14388371868692397118

`record[A004525(n+1)*A285533(A004525(n+1))]`
-/

namespace A285535.P14388371868692397118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (n + 1) * A285533 (A004525 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285535.P14388371868692397118

/-! ## A285535.P17689199431138296852

`eq[0, A285530(2*(n+1))]-n`
-/

namespace A285535.P17689199431138296852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285530 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A285535.P17689199431138296852

/-! ## A285535.P7441390093753368436

`lt[A285530(2*n+2), 1]-n`
-/

namespace A285535.P7441390093753368436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285530 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A285535.P7441390093753368436

/-!
# A285536: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 30", based on the 5-celled von Neumann neighborhood.

The programs for A285536, there is no canonical definition to state claims against.
-/

/-! ## A285536.P451340450133615973

`A007088(A285538(n))`
-/

namespace A285536.P451340450133615973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285538 n).toNat

end

end A285536.P451340450133615973

/-! ## A285536.P16810192819127535494

`A185544(2*A285538(n))`
-/

namespace A285536.P16810192819127535494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285538 n).toNat

end

end A285536.P16810192819127535494

/-! ## A285536.P16071919780273713420

`A285780(A062003(n))`
-/

namespace A285536.P16071919780273713420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285780 (A062003 n).toNat

end

end A285536.P16071919780273713420

/-! ## A285536.P16876390580187447268

`A285780(A004884(n+1))`
-/

namespace A285536.P16876390580187447268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285780 (A004884 (n + 1)).toNat

end

end A285536.P16876390580187447268

/-! ## A285536.P12647751751427582930

`A285780(A004895(n+1))`
-/

namespace A285536.P12647751751427582930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285780 (A004895 (n + 1)).toNat

end

end A285536.P12647751751427582930

/-!
# A285537: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 30", based on the 5-celled von Neumann neighborhood.

The programs for A285537, there is no canonical definition to state claims against.
-/

/-! ## A285537.P1927139380841577544

`A007088(A285539(n))`
-/

namespace A285537.P1927139380841577544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285539 n).toNat

end

end A285537.P1927139380841577544

/-! ## A285537.P11941564171235962081

`A185544(2*A285539(n))`
-/

namespace A285537.P11941564171235962081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285539 n).toNat

end

end A285537.P11941564171235962081

/-! ## A285537.P14746432725312714744

`A285781(A062003(n))`
-/

namespace A285537.P14746432725312714744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285781 (A062003 n).toNat

end

end A285537.P14746432725312714744

/-! ## A285537.P13530966754925076160

`A285781(A324662(∑[n]))`
-/

namespace A285537.P13530966754925076160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285781 (A324662 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A285537.P13530966754925076160

/-! ## A285537.P17669007088522243402

`A285781(n)^A281442(n)!`
-/

namespace A285537.P17669007088522243402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285781 n ^ Nat.factorial (A281442 n).toNat

end

end A285537.P17669007088522243402

/-!
# A285538: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 30", based on the 5-celled von Neumann neighborhood.

The programs for A285538, there is no canonical definition to state claims against.
-/

/-! ## A285538.P9807068188617173837

`A072088(A285782(n))`
-/

namespace A285538.P9807068188617173837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A285782 n).toNat

end

end A285538.P9807068188617173837

/-! ## A285538.P276496237292322176

`A000194(A285782(n)²)`
-/

namespace A285538.P276496237292322176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A285782 n ^ 2).toNat

end

end A285538.P276496237292322176

/-! ## A285538.P7950504687206780606

`A000196(A285782(n)²)`
-/

namespace A285538.P7950504687206780606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A285782 n ^ 2).toNat

end

end A285538.P7950504687206780606

/-! ## A285538.P9137594329888921565

`A037213(A285782(n)²)`
-/

namespace A285538.P9137594329888921565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A285782 n ^ 2).toNat

end

end A285538.P9137594329888921565

/-! ## A285538.P7925270189303553642

`A285782(A225640(∑[n]))`
-/

namespace A285538.P7925270189303553642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285782 (A225640 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A285538.P7925270189303553642

/-!
# A285539: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 30", based on the 5-celled von Neumann neighborhood.

The programs for A285539, there is no canonical definition to state claims against.
-/

/-! ## A285539.P13850694894534925790

`lcm(A006519(A287604(n)), A285538(n))`
-/

namespace A285539.P13850694894534925790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (A287604 n).toNat) (A285538 n)

end

end A285539.P13850694894534925790

/-! ## A285539.P6023102366198181727

`A130371(A285783(n))`
-/

namespace A285539.P6023102366198181727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130371 (A285783 n).toNat

end

end A285539.P6023102366198181727

/-! ## A285539.P4065457465041183278

`A056926(A285783(n)²)`
-/

namespace A285539.P4065457465041183278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A285783 n ^ 2).toNat

end

end A285539.P4065457465041183278

/-! ## A285539.P1110166008311293079

`A285783(A324662(∑[n]))`
-/

namespace A285539.P1110166008311293079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285783 (A324662 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A285539.P1110166008311293079

/-! ## A285539.P3587316976601226034

`A285783(A004895(n+1))`
-/

namespace A285539.P3587316976601226034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285783 (A004895 (n + 1)).toNat

end

end A285539.P3587316976601226034

/-!
# A285540: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

The programs for A285540, the canonical program `A285540.P16012612933494173661` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285540 has offset 0).

The definition of A285540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285540.P16012612933494173661

`A287468(lcm(2, n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285540

/-- `A287468(lcm(2, n))` -/
def P16012612933494173661.Spec : Prop :=
  ∀ n, P16012612933494173661.a n = A285540 n

theorem P16012612933494173661.correct : P16012612933494173661.Spec := by
  intro n
  simp only [A285540]

end A285540

/-! ## A285540.P9951298754326901993

`A000042(gcd(n, ∑[n])+1)`
-/

namespace A285540.P9951298754326901993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A285540.P9951298754326901993

namespace A285540

/-- `A000042(gcd(n, ∑[n])+1)` -/
def P9951298754326901993.Spec : Prop :=
  ∀ n, P9951298754326901993.a n = A285540 n

end A285540

/-! ## A285540.P5168424011064411745

`A000042(n/(2-n%2)+1)`
-/

namespace A285540.P5168424011064411745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (SequenceMachineLib.roundAway ((n : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ) + 1)).toNat

end

end A285540.P5168424011064411745

namespace A285540

/-- `A000042(n/(2-n%2)+1)` -/
def P5168424011064411745.Spec : Prop :=
  ∀ n, P5168424011064411745.a n = A285540 n

end A285540

/-! ## A285540.P3394675564802619965

`A000042(n/((n+1)%2+1)+1)`
-/

namespace A285540.P3394675564802619965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (SequenceMachineLib.roundAway ((n : ℚ) / (((n + 1) % 2 + 1 : ℕ) : ℚ) + 1)).toNat

end

end A285540.P3394675564802619965

namespace A285540

/-- `A000042(n/((n+1)%2+1)+1)` -/
def P3394675564802619965.Spec : Prop :=
  ∀ n, P3394675564802619965.a n = A285540 n

end A285540

/-! ## A285540.P17063221683888282421

`A289404(A059029(n))`
-/

namespace A285540.P17063221683888282421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 (A059029 n).toNat

end

end A285540.P17063221683888282421

namespace A285540

/-- `A289404(A059029(n))` -/
def P17063221683888282421.Spec : Prop :=
  ∀ n, P17063221683888282421.a n = A285540 n

end A285540

/-! ## A285540.P23996162589969149

`A287468(A109043(n))`
-/

namespace A285540.P23996162589969149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (A109043 n).toNat

end

end A285540.P23996162589969149

namespace A285540

/-- `A287468(A109043(n))` -/
def P23996162589969149.Spec : Prop :=
  ∀ n, P23996162589969149.a n = A285540 n

end A285540

/-! ## A285540.P10880293721869198665

`A000042(A026741(n)+1)`
-/

namespace A285540.P10880293721869198665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A026741 n + 1).toNat

end

end A285540.P10880293721869198665

namespace A285540

/-- `A000042(A026741(n)+1)` -/
def P10880293721869198665.Spec : Prop :=
  ∀ n, P10880293721869198665.a n = A285540 n

end A285540

/-! ## A285540.P10160772460449373378

`A002275(A026741(n)+1)`
-/

namespace A285540.P10160772460449373378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A026741 n + 1).toNat

end

end A285540.P10160772460449373378

namespace A285540

/-- `A002275(A026741(n)+1)` -/
def P10160772460449373378.Spec : Prop :=
  ∀ n, P10160772460449373378.a n = A285540 n

end A285540

/-! ## A285540.P2548520381875621986

`A068995(A114753(n+1))`
-/

namespace A285540.P2548520381875621986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068995 (A114753 (n + 1)).toNat

end

end A285540.P2548520381875621986

namespace A285540

/-- `A068995(A114753(n+1))` -/
def P2548520381875621986.Spec : Prop :=
  ∀ n, P2548520381875621986.a n = A285540 n

end A285540

/-! ## A285540.P11961282468210158803

`A094026(A109043(n)+1)`
-/

namespace A285540.P11961282468210158803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A109043 n + 1).toNat

end

end A285540.P11961282468210158803

namespace A285540

/-- `A094026(A109043(n)+1)` -/
def P11961282468210158803.Spec : Prop :=
  ∀ n, P11961282468210158803.a n = A285540 n

end A285540

/-! ## A285540.P6310548339038573978

`A289404(A043547(n+1))`
-/

namespace A285540.P6310548339038573978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 (A043547 (n + 1)).toNat

end

end A285540.P6310548339038573978

namespace A285540

/-- `A289404(A043547(n+1))` -/
def P6310548339038573978.Spec : Prop :=
  ∀ n, P6310548339038573978.a n = A285540 n

end A285540

/-! ## A285540.P6768474693119483207

`A000042(A029578(n+2))`
-/

namespace A285540.P6768474693119483207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A029578 (n + 2)).toNat

end

end A285540.P6768474693119483207

namespace A285540

/-- `A000042(A029578(n+2))` -/
def P6768474693119483207.Spec : Prop :=
  ∀ n, P6768474693119483207.a n = A285540 n

end A285540

/-! ## A285540.P18036776462340073362

`A081857(A109043(n)+2)`
-/

namespace A285540.P18036776462340073362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 (A109043 n + 2).toNat

end

end A285540.P18036776462340073362

namespace A285540

/-- `A081857(A109043(n)+2)` -/
def P18036776462340073362.Spec : Prop :=
  ∀ n, P18036776462340073362.a n = A285540 n

end A285540

/-! ## A285540.P9995176854968516896

`A337099(A109043(n)+2)`
-/

namespace A285540.P9995176854968516896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337099 (A109043 n + 2).toNat

end

end A285540.P9995176854968516896

namespace A285540

/-- `A337099(A109043(n)+2)` -/
def P9995176854968516896.Spec : Prop :=
  ∀ n, P9995176854968516896.a n = A285540 n

end A285540

/-! ## A285540.P5474150314293190468

`A290416(2*A026741(n))`
-/

namespace A285540.P5474150314293190468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (2 * A026741 n).toNat

end

end A285540.P5474150314293190468

namespace A285540

/-- `A290416(2*A026741(n))` -/
def P5474150314293190468.Spec : Prop :=
  ∀ n, P5474150314293190468.a n = A285540 n

end A285540

/-! ## A285540.P12798967199527488829

`A094026(or(1, A109043(n)))`
-/

namespace A285540.P12798967199527488829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (Int.lor 1 (A109043 n)).toNat

end

end A285540.P12798967199527488829

namespace A285540

/-- `A094026(or(1, A109043(n)))` -/
def P12798967199527488829.Spec : Prop :=
  ∀ n, P12798967199527488829.a n = A285540 n

end A285540

/-! ## A285540.P14242656771419997815

`A094026(xor(1, A109043(n)))`
-/

namespace A285540.P14242656771419997815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (Int.xor 1 (A109043 n)).toNat

end

end A285540.P14242656771419997815

namespace A285540

/-- `A094026(xor(1, A109043(n)))` -/
def P14242656771419997815.Spec : Prop :=
  ∀ n, P14242656771419997815.a n = A285540 n

end A285540

/-! ## A285540.P4012055776764031240

`A000042(∑[A266981(n)-n])`
-/

namespace A285540.P4012055776764031240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285540.P4012055776764031240

namespace A285540

/-- `A000042(∑[A266981(n)-n])` -/
def P4012055776764031240.Spec : Prop :=
  ∀ n, P4012055776764031240.a n = A285540 n

end A285540

/-! ## A285540.P2413925561900786393

`A290416(Δ[A008794(n)]+n)`
-/

namespace A285540.P2413925561900786393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A285540.P2413925561900786393

namespace A285540

/-- `A290416(Δ[A008794(n)]+n)` -/
def P2413925561900786393.Spec : Prop :=
  ∀ n, P2413925561900786393.a n = A285540 n

end A285540

/-! ## A285540.P13352658150079037674

`A289404(A022998(n+1)-1)`
-/

namespace A285540.P13352658150079037674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 (A022998 (n + 1) - 1).toNat

end

end A285540.P13352658150079037674

namespace A285540

/-- `A289404(A022998(n+1)-1)` -/
def P13352658150079037674.Spec : Prop :=
  ∀ n, P13352658150079037674.a n = A285540 n

end A285540

/-!
# A285541: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

The programs for A285541, the canonical program `A285541.P13893119404520415230` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285541 has offset 0).

The definition of A285541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285541.P13893119404520415230

`A309761(∑[A266981(n)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A285541

/-- `A309761(∑[A266981(n)])` -/
def P13893119404520415230.Spec : Prop :=
  ∀ n, P13893119404520415230.a n = A285541 n

theorem P13893119404520415230.correct : P13893119404520415230.Spec := by
  intro n
  simp only [A285541]

end A285541

/-! ## A285541.P6800150520624181596

`A309761(A092530(n)+1)`
-/

namespace A285541.P6800150520624181596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A092530 n + 1).toNat

end

end A285541.P6800150520624181596

namespace A285541

/-- `A309761(A092530(n)+1)` -/
def P6800150520624181596.Spec : Prop :=
  ∀ n, P6800150520624181596.a n = A285541 n

end A285541

/-! ## A285541.P7649904873378988416

`A309761(A031878(n+2))`
-/

namespace A285541.P7649904873378988416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A031878 (n + 2)).toNat

end

end A285541.P7649904873378988416

namespace A285541

/-- `A309761(A031878(n+2))` -/
def P7649904873378988416.Spec : Prop :=
  ∀ n, P7649904873378988416.a n = A285541 n

end A285541

/-! ## A285541.P12656010604551226162

`lcm(A282416(n), A285540(n))`
-/

namespace A285541.P12656010604551226162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A282416 n) (A285540 n)

end

end A285541.P12656010604551226162

namespace A285541

/-- `lcm(A282416(n), A285540(n))` -/
def P12656010604551226162.Spec : Prop :=
  ∀ n, (P12656010604551226162.a n : ℤ) = A285541 n

end A285541

/-! ## A285541.P1352154311897902945

`A309761(A026741(n)+A000124(n))`
-/

namespace A285541.P1352154311897902945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A026741 n + A000124 n).toNat

end

end A285541.P1352154311897902945

namespace A285541

/-- `A309761(A026741(n)+A000124(n))` -/
def P1352154311897902945.Spec : Prop :=
  ∀ n, P1352154311897902945.a n = A285541 n

end A285541

/-! ## A285541.P6385634931638865915

`A002275(n+1)-A002275(A142150(n))`
-/

namespace A285541.P6385634931638865915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - A002275 (A142150 n).toNat

end

end A285541.P6385634931638865915

namespace A285541

/-- `A002275(n+1)-A002275(A142150(n))` -/
def P6385634931638865915.Spec : Prop :=
  ∀ n, P6385634931638865915.a n = A285541 n

end A285541

/-! ## A285541.P9548524111082159318

`A289404(2*n)-A289404(2*n)%A289404(n)`
-/

namespace A285541.P9548524111082159318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 (2 * n) - Int.tmod (A289404 (2 * n)) (A289404 n)

end

end A285541.P9548524111082159318

namespace A285541

/-- `A289404(2*n)-A289404(2*n)%A289404(n)` -/
def P9548524111082159318.Spec : Prop :=
  ∀ n, P9548524111082159318.a n = A285541 n

end A285541

/-! ## A285541.P4800618514519841762

`A282416(A059029(n))`
-/

namespace A285541.P4800618514519841762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282416 (A059029 n).toNat

end

end A285541.P4800618514519841762

namespace A285541

/-- `A282416(A059029(n))` -/
def P4800618514519841762.Spec : Prop :=
  ∀ n, P4800618514519841762.a n = A285541 n

end A285541

/-! ## A285541.P3634562142738476887

`lcm(A279878(n), A282415(lcm(2, n)))`
-/

namespace A285541.P3634562142738476887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A279878 n) (A282415 (Nat.lcm 2 n))

end

end A285541.P3634562142738476887

namespace A285541

/-- `lcm(A279878(n), A282415(lcm(2, n)))` -/
def P3634562142738476887.Spec : Prop :=
  ∀ n, (P3634562142738476887.a n : ℤ) = A285541 n

end A285541

/-!
# A285542: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

The programs for A285542, the canonical program `A285542.P4255389614630703753` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285542 has offset 0).

The definition of A285542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285542.P4255389614630703753

`a(n-1)+6*a(n-2)-6*a(n-3)-8*a(n-4)+8*a(n-5)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=15, a(4)=7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A285542

/-- `a(n-1)+6*a(n-2)-6*a(n-3)-8*a(n-4)+8*a(n-5)` -/
def P4255389614630703753.Spec : Prop :=
  ∀ n, P4255389614630703753.a n = A285542 n

theorem P4255389614630703753.correct : P4255389614630703753.Spec := by
  intro n
  simp only [A285542]

end A285542

/-! ## A285542.P17023902100402360225

`2^(gcd(n, ∑[n])+1)-1`
-/

namespace A285542.P17023902100402360225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) + 1) : ℤ) - 1

end

end A285542.P17023902100402360225

namespace A285542

/-- `2^(gcd(n, ∑[n])+1)-1` -/
def P17023902100402360225.Spec : Prop :=
  ∀ n, P17023902100402360225.a n = A285542 n

end A285542

/-! ## A285542.P14041949671126402712

`A052551(lcm(2, n))`
-/

namespace A285542.P14041949671126402712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (Nat.lcm 2 n)

end

end A285542.P14041949671126402712

namespace A285542

/-- `A052551(lcm(2, n))` -/
def P14041949671126402712.Spec : Prop :=
  ∀ n, P14041949671126402712.a n = A285542 n

end A285542

/-! ## A285542.P3033735220892919839

`A126646(gcd(n, ∑[n]))`
-/

namespace A285542.P3033735220892919839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A285542.P3033735220892919839

namespace A285542

/-- `A126646(gcd(n, ∑[n]))` -/
def P3033735220892919839.Spec : Prop :=
  ∀ n, P3033735220892919839.a n = A285542 n

end A285542

/-! ## A285542.P7846482020651253070

`A079102(n+2)-1`
-/

namespace A285542.P7846482020651253070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079102 (n + 2) - 1

end

end A285542.P7846482020651253070

namespace A285542

/-- `A079102(n+2)-1` -/
def P7846482020651253070.Spec : Prop :=
  ∀ n, P7846482020651253070.a n = A285542 n

end A285542

/-! ## A285542.P16391005897535406438

`or(n+1, A285834(n))`
-/

namespace A285542.P16391005897535406438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A285834 n)

end

end A285542.P16391005897535406438

namespace A285542

/-- `or(n+1, A285834(n))` -/
def P16391005897535406438.Spec : Prop :=
  ∀ n, P16391005897535406438.a n = A285542 n

end A285542

/-! ## A285542.P6813969173028092319

`2^A029578(n+2)-1`
-/

namespace A285542.P6813969173028092319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A029578 (n + 2) : ℤ) - 1

end

end A285542.P6813969173028092319

namespace A285542

/-- `2^A029578(n+2)-1` -/
def P6813969173028092319.Spec : Prop :=
  ∀ n, P6813969173028092319.a n = (A285542 n : ℚ)

end A285542

/-! ## A285542.P4588666379415603007

`A158780(n*(and(1, n)+1)+4)-1`
-/

namespace A285542.P4588666379415603007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n * (Nat.land 1 n + 1) + 4) - 1

end

end A285542.P4588666379415603007

namespace A285542

/-- `A158780(n*(and(1, n)+1)+4)-1` -/
def P4588666379415603007.Spec : Prop :=
  ∀ n, P4588666379415603007.a n = A285542 n

end A285542

/-! ## A285542.P18380640493253594676

`A052551(A059029(n))`
-/

namespace A285542.P18380640493253594676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A059029 n).toNat

end

end A285542.P18380640493253594676

namespace A285542

/-- `A052551(A059029(n))` -/
def P18380640493253594676.Spec : Prop :=
  ∀ n, P18380640493253594676.a n = A285542 n

end A285542

/-! ## A285542.P1572260396689096999

`A126646(A026741(n))`
-/

namespace A285542.P1572260396689096999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A026741 n).toNat

end

end A285542.P1572260396689096999

namespace A285542

/-- `A126646(A026741(n))` -/
def P1572260396689096999.Spec : Prop :=
  ∀ n, P1572260396689096999.a n = A285542 n

end A285542

/-! ## A285542.P7077597870426566391

`A052551(A109043(n))`
-/

namespace A285542.P7077597870426566391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A109043 n).toNat

end

end A285542.P7077597870426566391

namespace A285542

/-- `A052551(A109043(n))` -/
def P7077597870426566391.Spec : Prop :=
  ∀ n, P7077597870426566391.a n = A285542 n

end A285542

/-! ## A285542.P6993908207485699475

`A077885(A165351(n))`
-/

namespace A285542.P6993908207485699475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077885 (A165351 n).toNat

end

end A285542.P6993908207485699475

namespace A285542

/-- `A077885(A165351(n))` -/
def P6993908207485699475.Spec : Prop :=
  ∀ n, P6993908207485699475.a n = A285542 n

end A285542

/-! ## A285542.P8654878094151388017

`A077885(A165367(n))`
-/

namespace A285542.P8654878094151388017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077885 (A165367 n).toNat

end

end A285542.P8654878094151388017

namespace A285542

/-- `A077885(A165367(n))` -/
def P8654878094151388017.Spec : Prop :=
  ∀ n, P8654878094151388017.a n = A285542 n

end A285542

/-! ## A285542.P11781316989967423178

`A000225(A026741(n)+1)`
-/

namespace A285542.P11781316989967423178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A026741 n + 1).toNat

end

end A285542.P11781316989967423178

namespace A285542

/-- `A000225(A026741(n)+1)` -/
def P11781316989967423178.Spec : Prop :=
  ∀ n, P11781316989967423178.a n = A285542 n

end A285542

/-! ## A285542.P9459216340492436600

`A052551(A043547(n+1))`
-/

namespace A285542.P9459216340492436600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A043547 (n + 1)).toNat

end

end A285542.P9459216340492436600

namespace A285542

/-- `A052551(A043547(n+1))` -/
def P9459216340492436600.Spec : Prop :=
  ∀ n, P9459216340492436600.a n = A285542 n

end A285542

/-! ## A285542.P17849098337363544440

`A052551(A114753(n+1))`
-/

namespace A285542.P17849098337363544440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A114753 (n + 1)).toNat

end

end A285542.P17849098337363544440

namespace A285542

/-- `A052551(A114753(n+1))` -/
def P17849098337363544440.Spec : Prop :=
  ∀ n, P17849098337363544440.a n = A285542 n

end A285542

/-! ## A285542.P13691647885201651110

`A000225(A029578(n+2))`
-/

namespace A285542.P13691647885201651110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A029578 (n + 2)).toNat

end

end A285542.P13691647885201651110

namespace A285542

/-- `A000225(A029578(n+2))` -/
def P13691647885201651110.Spec : Prop :=
  ∀ n, P13691647885201651110.a n = A285542 n

end A285542

/-! ## A285542.P13071918242929228529

`A052551(2*A026741(n))`
-/

namespace A285542.P13071918242929228529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (2 * A026741 n).toNat

end

end A285542.P13071918242929228529

namespace A285542

/-- `A052551(2*A026741(n))` -/
def P13071918242929228529.Spec : Prop :=
  ∀ n, P13071918242929228529.a n = A285542 n

end A285542

/-! ## A285542.P13160990044287741060

`A052955(2*A026741(n))`
-/

namespace A285542.P13160990044287741060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * A026741 n).toNat

end

end A285542.P13160990044287741060

namespace A285542

/-- `A052955(2*A026741(n))` -/
def P13160990044287741060.Spec : Prop :=
  ∀ n, P13160990044287741060.a n = A285542 n

end A285542

/-! ## A285542.P9945422237499724777

`A126646(A109043(n)/2)`
-/

namespace A285542.P9945422237499724777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (SequenceMachineLib.roundAway ((A109043 n : ℚ) / 2)).toNat

end

end A285542.P9945422237499724777

namespace A285542

/-- `A126646(A109043(n)/2)` -/
def P9945422237499724777.Spec : Prop :=
  ∀ n, P9945422237499724777.a n = A285542 n

end A285542

/-!
# A285543: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

The programs for A285543, the canonical program `A285543.P9845314030376834614` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285543 has offset 0).

The definition of A285543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285543.P9845314030376834614

`A274638(n+1)+and(1, n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285543

/-- `A274638(n+1)+and(1, n+1)` -/
def P9845314030376834614.Spec : Prop :=
  ∀ n, P9845314030376834614.a n = A285543 n

theorem P9845314030376834614.correct : P9845314030376834614.Spec := by
  intro n
  simp only [A285543]

end A285543

/-! ## A285543.P6646723229816516382

`2^n+Δ[A233411(n)]-char[Δ[n²]]`
-/

namespace A285543.P6646723229816516382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (f1 (n + 1) - f1 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A285543.P6646723229816516382

namespace A285543

/-- `2^n+Δ[A233411(n)]-char[Δ[n²]]` -/
def P6646723229816516382.Spec : Prop :=
  ∀ n, P6646723229816516382.a n = A285543 n

end A285543

/-! ## A285543.P15863371354374284778

`xor(a(n-1)+2^floor(n/2), A000225(n))` with `a(0)=1`
-/

namespace A285543.P15863371354374284778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A000225 n)

end

end A285543.P15863371354374284778

namespace A285543

/-- `xor(a(n-1)+2^floor(n/2), A000225(n))` -/
def P15863371354374284778.Spec : Prop :=
  ∀ n, P15863371354374284778.a n = A285543 n

end A285543

/-! ## A285543.P15986651301708410003

`A051049(n)+A014236(n)`
-/

namespace A285543.P15986651301708410003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 n + A014236 n

end

end A285543.P15986651301708410003

namespace A285543

/-- `A051049(n)+A014236(n)` -/
def P15986651301708410003.Spec : Prop :=
  ∀ n, P15986651301708410003.a n = A285543 n

end A285543

/-! ## A285543.P4949056214048496959

`gcd(A277936(n), A287470(n))`
-/

namespace A285543.P4949056214048496959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277936 n) (A287470 n)

end

end A285543.P4949056214048496959

namespace A285543

/-- `gcd(A277936(n), A287470(n))` -/
def P4949056214048496959.Spec : Prop :=
  ∀ n, (P4949056214048496959.a n : ℤ) = A285543 n

end A285543

/-! ## A285543.P12567902834081729066

`lcm(A086341(n), A279880(n))`
-/

namespace A285543.P12567902834081729066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A086341 n) (A279880 n)

end

end A285543.P12567902834081729066

namespace A285543

/-- `lcm(A086341(n), A279880(n))` -/
def P12567902834081729066.Spec : Prop :=
  ∀ n, (P12567902834081729066.a n : ℤ) = A285543 n

end A285543

/-! ## A285543.P17253376998154199235

`lcm(A106664(n), A285542(n))`
-/

namespace A285543.P17253376998154199235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106664 n) (A285542 n)

end

end A285543.P17253376998154199235

namespace A285543

/-- `lcm(A106664(n), A285542(n))` -/
def P17253376998154199235.Spec : Prop :=
  ∀ n, (P17253376998154199235.a n : ℤ) = A285543 n

end A285543

/-! ## A285543.P1282713243599763843

`or(A122746(n), A277936(n))`
-/

namespace A285543.P1282713243599763843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122746 n) (A277936 n)

end

end A285543.P1282713243599763843

namespace A285543

/-- `or(A122746(n), A277936(n))` -/
def P1282713243599763843.Spec : Prop :=
  ∀ n, P1282713243599763843.a n = A285543 n

end A285543

/-! ## A285543.P13336673291093749854

`or(A122746(n), A279880(n))`
-/

namespace A285543.P13336673291093749854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122746 n) (A279880 n)

end

end A285543.P13336673291093749854

namespace A285543

/-- `or(A122746(n), A279880(n))` -/
def P13336673291093749854.Spec : Prop :=
  ∀ n, P13336673291093749854.a n = A285543 n

end A285543

/-! ## A285543.P15410844806545026058

`A097038(n)+A000975(n+1)`
-/

namespace A285543.P15410844806545026058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097038 n + A000975 (n + 1)

end

end A285543.P15410844806545026058

namespace A285543

/-- `A097038(n)+A000975(n+1)` -/
def P15410844806545026058.Spec : Prop :=
  ∀ n, P15410844806545026058.a n = A285543 n

end A285543

/-! ## A285543.P1921526445470774944

`A274638(n+1)+A059841(n)`
-/

namespace A285543.P1921526445470774944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274638 (n + 1) + A059841 n

end

end A285543.P1921526445470774944

namespace A285543

/-- `A274638(n+1)+A059841(n)` -/
def P1921526445470774944.Spec : Prop :=
  ∀ n, P1921526445470774944.a n = A285543 n

end A285543

/-! ## A285543.P8858791581025644338

`A097895(n+2)+A052952(n)`
-/

namespace A285543.P8858791581025644338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097895 (n + 2) + A052952 n

end

end A285543.P8858791581025644338

namespace A285543

/-- `A097895(n+2)+A052952(n)` -/
def P8858791581025644338.Spec : Prop :=
  ∀ n, P8858791581025644338.a n = A285543 n

end A285543

/-! ## A285543.P13278565298012599788

`A072345(n)+A122746(n)-1`
-/

namespace A285543.P13278565298012599788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n + (A122746 n - 1)

end

end A285543.P13278565298012599788

namespace A285543

/-- `A072345(n)+A122746(n)-1` -/
def P13278565298012599788.Spec : Prop :=
  ∀ n, P13278565298012599788.a n = A285543 n

end A285543

/-! ## A285543.P14914825215709781168

`or(A077896(n+1), A122746(n))`
-/

namespace A285543.P14914825215709781168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077896 (n + 1)) (A122746 n)

end

end A285543.P14914825215709781168

namespace A285543

/-- `or(A077896(n+1), A122746(n))` -/
def P14914825215709781168.Spec : Prop :=
  ∀ n, P14914825215709781168.a n = A285543 n

end A285543

/-! ## A285543.P17163048284967982789

`A159230(n+2)-A083416(n+1)`
-/

namespace A285543.P17163048284967982789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159230 (n + 2) - A083416 (n + 1)

end

end A285543.P17163048284967982789

namespace A285543

/-- `A159230(n+2)-A083416(n+1)` -/
def P17163048284967982789.Spec : Prop :=
  ∀ n, P17163048284967982789.a n = A285543 n

end A285543

/-! ## A285543.P3125585443224492314

`A166920(n+1)-Δ[A016116(n+1)]`
-/

namespace A285543.P3125585443224492314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 (n + 1) - (f1 (n + 1) - f1 n)

end

end A285543.P3125585443224492314

namespace A285543

/-- `A166920(n+1)-Δ[A016116(n+1)]` -/
def P3125585443224492314.Spec : Prop :=
  ∀ n, P3125585443224492314.a n = A285543 n

end A285543

/-! ## A285543.P15309945578351962434

`xor(A158780(n+2)+a(n-1), A000225(n))` with `a(0)=1`
-/

namespace A285543.P15309945578351962434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (A158780 (n + 2) + a (n - 1)) (A000225 n)

end

end A285543.P15309945578351962434

namespace A285543

/-- `xor(A158780(n+2)+a(n-1), A000225(n))` -/
def P15309945578351962434.Spec : Prop :=
  ∀ n, P15309945578351962434.a n = A285543 n

end A285543

/-! ## A285543.P1573561720205636663

`A000051(n+1)-A000051(A142150(n))`
-/

namespace A285543.P1573561720205636663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - A000051 (A142150 n).toNat

end

end A285543.P1573561720205636663

namespace A285543

/-- `A000051(n+1)-A000051(A142150(n))` -/
def P1573561720205636663.Spec : Prop :=
  ∀ n, P1573561720205636663.a n = A285543 n

end A285543

/-! ## A285543.P11444602122750173652

`A000079(n+1)-A000079(A142150(n))`
-/

namespace A285543.P11444602122750173652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A000079 (A142150 n).toNat

end

end A285543.P11444602122750173652

namespace A285543

/-- `A000079(n+1)-A000079(A142150(n))` -/
def P11444602122750173652.Spec : Prop :=
  ∀ n, P11444602122750173652.a n = A285543 n

end A285543

/-! ## A285543.P5089488157756768972

`A000225(n+1)-A000225(A142150(n))`
-/

namespace A285543.P5089488157756768972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A000225 (A142150 n).toNat

end

end A285543.P5089488157756768972

namespace A285543

/-- `A000225(n+1)-A000225(A142150(n))` -/
def P5089488157756768972.Spec : Prop :=
  ∀ n, P5089488157756768972.a n = A285543 n

end A285543

/-!
# A285544: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 41", based on the 5-celled von Neumann neighborhood.

The programs for A285544, there is no canonical definition to state claims against.
-/

/-! ## A285544.P4741234608971042596

`A007088(A285546(n))`
-/

namespace A285544.P4741234608971042596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285546 n).toNat

end

end A285544.P4741234608971042596

/-! ## A285544.P7597756300618190930

`A185544(2*A285546(n))`
-/

namespace A285544.P7597756300618190930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285546 n).toNat

end

end A285544.P7597756300618190930

/-! ## A285544.P1078666440919269587

`A185544(A285546(n)+A285546(n))`
-/

namespace A285544.P1078666440919269587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A285546 n + A285546 n).toNat

end

end A285544.P1078666440919269587

/-! ## A285544.P3583821192404704194

`A285604(n)^gcd(∑[20*n]+1, (12*n+11)^4)`
-/

namespace A285544.P3583821192404704194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285604 n ^ Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j + 1) ((12 * n + 11) ^ 4)

end

end A285544.P3583821192404704194

/-! ## A285544.P3950523034594418019

`A285604(A004892(n+1))`
-/

namespace A285544.P3950523034594418019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285604 (A004892 (n + 1)).toNat

end

end A285544.P3950523034594418019

/-!
# A285545: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 41", based on the 5-celled von Neumann neighborhood.

The programs for A285545, there is no canonical definition to state claims against.
-/

/-! ## A285545.P10261755788751533358

`A007088(A285547(n))`
-/

namespace A285545.P10261755788751533358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285547 n).toNat

end

end A285545.P10261755788751533358

/-! ## A285545.P7659995154377202076

`A185544(2*A285547(n))`
-/

namespace A285545.P7659995154377202076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285547 n).toNat

end

end A285545.P7659995154377202076

/-! ## A285545.P5976715034301863297

`A185544(A285547(n)+A285547(n))`
-/

namespace A285545.P5976715034301863297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A285547 n + A285547 n).toNat

end

end A285545.P5976715034301863297

/-! ## A285545.P10243476760998481128

`A285605(A004892(n+1))`
-/

namespace A285545.P10243476760998481128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285605 (A004892 (n + 1)).toNat

end

end A285545.P10243476760998481128

/-! ## A285545.P3366597443668556646

`A285605(A004903(n+1))`
-/

namespace A285545.P3366597443668556646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285605 (A004903 (n + 1)).toNat

end

end A285545.P3366597443668556646

/-!
# A285546: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 41", based on the 5-celled von Neumann neighborhood.

The programs for A285546, there is no canonical definition to state claims against.
-/

/-! ## A285546.P15337366223497324942

`A028310(or(2^ceil(n/2), A288192(n)))`
-/

namespace A285546.P15337366223497324942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))) (A288192 n)).toNat

end

end A285546.P15337366223497324942

/-! ## A285546.P14966461520013894731

`or(A028310(A288192(n)), A029744(n+1))`
-/

namespace A285546.P14966461520013894731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028310 (A288192 n).toNat) (A029744 (n + 1))

end

end A285546.P14966461520013894731

/-! ## A285546.P1928365036523731795

`xor(A000999(A003418(n)), A282417(n))`
-/

namespace A285546.P1928365036523731795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000999 (A003418 n).toNat) (A282417 n)

end

end A285546.P1928365036523731795

/-! ## A285546.P11450324872663374900

`xor(A000999(A003418(n)), A287607(n))`
-/

namespace A285546.P11450324872663374900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000999 (A003418 n).toNat) (A287607 n)

end

end A285546.P11450324872663374900

/-! ## A285546.P8909585598708664562

`A287509(n)+A083025(A249085(n+1))`
-/

namespace A285546.P8909585598708664562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287509 n + A083025 (A249085 (n + 1)).toNat

end

end A285546.P8909585598708664562

/-!
# A285547: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 41", based on the 5-celled von Neumann neighborhood.

The programs for A285547, there is no canonical definition to state claims against.
-/

/-! ## A285547.P9374079354025240650

`or(A080941(A285563(n)), A288193(n))`
-/

namespace A285547.P9374079354025240650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080941 (A285563 n).toNat) (A288193 n)

end

end A285547.P9374079354025240650

/-! ## A285547.P799248387945133151

`or(record[A175099(n)], A288193(n))`
-/

namespace A285547.P799248387945133151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A288193 n)

end

end A285547.P799248387945133151

/-! ## A285547.P15191836388047368364

`or(A001227(A081405(n)), A288193(n))`
-/

namespace A285547.P15191836388047368364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001227 (A081405 n).toNat) (A288193 n)

end

end A285547.P15191836388047368364

/-! ## A285547.P9975104430121391906

`A285607(A004892(n+1))`
-/

namespace A285547.P9975104430121391906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285607 (A004892 (n + 1)).toNat

end

end A285547.P9975104430121391906

/-! ## A285547.P16302290524972558692

`A285607(A004903(n+1))`
-/

namespace A285547.P16302290524972558692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285607 (A004903 (n + 1)).toNat

end

end A285547.P16302290524972558692

/-!
# A285548: Array read by antidiagonals: T(m,n) = number of step cyclic shifted sequences of length n using a maximum of m different symbols.

The programs for A285548, there is no canonical definition to state claims against.
-/

/-! ## A285548.P8345492872460065959

`A228708(A096801(n))+A074909(n)`
-/

namespace A285548.P8345492872460065959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228708 (A096801 n).toNat + A074909 n

end

end A285548.P8345492872460065959

/-! ## A285548.P10984801717164860929

`A184946(∑{d}[n+1, #])+A074909(n)`
-/

namespace A285548.P10984801717164860929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184946 (∑ d ∈ Nat.divisors (f1 n), d) + A074909 n

end

end A285548.P10984801717164860929

/-! ## A285548.P11339760539735338006

`A074909(n)+A010054(A023487(n))`
-/

namespace A285548.P11339760539735338006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + A010054 (A023487 n).toNat

end

end A285548.P11339760539735338006

/-! ## A285548.P7923612378946159946

`A074909(n)+A045701(A026008(n))`
-/

namespace A285548.P7923612378946159946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + A045701 (A026008 n).toNat

end

end A285548.P7923612378946159946

/-! ## A285548.P8749413315008759534

`A277157(A034008(n))+A074909(n)`
-/

namespace A285548.P8749413315008759534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277157 (A034008 n).toNat + A074909 n

end

end A285548.P8749413315008759534

/-!
# A285550: Numbers k such that the digits of k^2 are squares.

The programs for A285550, there is no canonical definition to state claims against.
-/

/-! ## A285550.P3445223294351312662

`sqrt(A019544(n+1))`
-/

namespace A285550.P3445223294351312662
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A019544 (n + 1) : ℝ)

end

end A285550.P3445223294351312662

/-! ## A285550.P10085776228220813844

`(A019544(n+1)^(A034947(n+1)/2)²)²`
-/

namespace A285550.P10085776228220813844
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A019544 (n + 1) : ℝ) ^ (((A034947 (n + 1) : ℚ) / 2) ^ 2 : ℝ)) ^ 2

end

end A285550.P10085776228220813844

/-! ## A285550.P5308222841272859293

`A019544(n+1)^(1/A020639(A000010(n+1)))`
-/

namespace A285550.P5308222841272859293
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A019544 (n + 1) : ℝ) ^ (1 / (A020639 (A000010 (n + 1)).toNat : ℚ) : ℝ)

end

end A285550.P5308222841272859293

/-! ## A285550.P11623234478912478287

`A019544(n+1)^2^A008683(A031927(n))`
-/

namespace A285550.P11623234478912478287
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A019544 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A031927 n).toNat : ℤ) : ℝ)

end

end A285550.P11623234478912478287

/-!
# A285551: Volume of each square prism building the next 3-dimensional box in A100538 where side lengths form the Padovan spiral number sequence (A134816), starting with 1 X 1 X 1, 1 X 1 X 2, 2 X 2 X 2, 2 X 2 X 3, 4 X 4 X 5, ...

The programs for A285551, the canonical program `A285551.P12448397724595995412` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285551 has offset 1).

The definition of A285551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285551.P12448397724595995412

`A100538(n+2)-A100538(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A285551

/-- `A100538(n+2)-A100538(n+1)` -/
def P12448397724595995412.Spec : Prop :=
  ∀ n, P12448397724595995412.a n = A285551 (n + 1)

theorem P12448397724595995412.correct : P12448397724595995412.Spec := by
  intro n
  simp only [A285551, Nat.add_sub_cancel]

end A285551

/-! ## A285551.P2030390556315518736

`A000931(n+6)²*A000931(n+7)`
-/

namespace A285551.P2030390556315518736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 6) ^ 2 * A000931 (n + 7)

end

end A285551.P2030390556315518736

namespace A285551

/-- `A000931(n+6)²*A000931(n+7)` -/
def P2030390556315518736.Spec : Prop :=
  ∀ n, P2030390556315518736.a n = A285551 (n + 1)

end A285551

/-! ## A285551.P6742576854586908665

`Δ[A100538(n+1)]`
-/

namespace A285551.P6742576854586908665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285551.P6742576854586908665

namespace A285551

/-- `Δ[A100538(n+1)]` -/
def P6742576854586908665.Spec : Prop :=
  ∀ n, P6742576854586908665.a n = A285551 (n + 1)

theorem P6742576854586908665.correct : P6742576854586908665.Spec := by
  intro n
  simp only [A285551, Nat.add_sub_cancel, A285551.P6742576854586908665.f1, A285551.P6742576854586908665.a, A285551.P12448397724595995412.a, SequenceMachineLib.memo_apply]

end A285551

/-! ## A285551.P643877000741002278

`record[A078027(n+1)²*A000931(n)]`
-/

namespace A285551.P643877000741002278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 1) ^ 2 * A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285551.P643877000741002278

namespace A285551

/-- `record[A078027(n+1)²*A000931(n)]` -/
def P643877000741002278.Spec : Prop :=
  ∀ n, P643877000741002278.a n = A285551 (n + 1)

end A285551

/-! ## A285551.P17707455107658902869

`A134816(n+2)²*A134816(n+3)`
-/

namespace A285551.P17707455107658902869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 2) ^ 2 * A134816 (n + 3)

end

end A285551.P17707455107658902869

namespace A285551

/-- `A134816(n+2)²*A134816(n+3)` -/
def P17707455107658902869.Spec : Prop :=
  ∀ n, P17707455107658902869.a n = A285551 (n + 1)

end A285551

/-! ## A285551.P14590088585447048124

`A100538(n+1)/A134816(n+1)*A134816(n+2)`
-/

namespace A285551.P14590088585447048124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100538 (n + 1) : ℚ) / (A134816 (n + 1) : ℚ) * (A134816 (n + 2) : ℚ)

end

end A285551.P14590088585447048124

namespace A285551

/-- `A100538(n+1)/A134816(n+1)*A134816(n+2)` -/
def P14590088585447048124.Spec : Prop :=
  ∀ n, P14590088585447048124.a n = (A285551 (n + 1) : ℚ)

end A285551

/-!
# A285554: Expansion of q^(-2/5) * (r(q^2) - r(q)^2) / 2 in powers of q where r() is the Rogers-Ramanujan continued fraction.

The programs for A285554, there is no canonical definition to state claims against.
-/

/-! ## A285554.P15821042822710622314

`A285555(n)-A055101(n)`
-/

namespace A285554.P15821042822710622314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285555 n - A055101 n

end

end A285554.P15821042822710622314

/-! ## A285554.P11735444947798770577

`A003823(2*n+1)-A055101(n)`
-/

namespace A285554.P11735444947798770577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003823 (2 * n + 1) - A055101 n

end

end A285554.P11735444947798770577

/-! ## A285554.P6264305816564683452

`A285555(n)-A286509(∑[n+3])`
-/

namespace A285554.P6264305816564683452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285555 n - A286509 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285554.P6264305816564683452

/-! ## A285554.P12330044378406215693

`A285555(n)-A286509(A000096(n+1)+n+1)%A000051(n)`
-/

namespace A285554.P12330044378406215693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285555 n - Int.tmod (A286509 (A000096 (n + 1) + (n + 1 : ℤ)).toNat) (A000051 n)

end

end A285554.P12330044378406215693

/-! ## A285554.P10304438655295273297

`A291678(A091823(n+1))-A055101(n)`
-/

namespace A285554.P10304438655295273297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (A091823 (n + 1)).toNat - A055101 n

end

end A285554.P10304438655295273297

/-!
# A285555: Expansion of q^(-2/5) * (r(q^2) + r(q)^2) / 2 in powers of q where r() is the Rogers-Ramanujan continued fraction.

The programs for A285555, there is no canonical definition to state claims against.
-/

/-! ## A285555.P11408445753278262581

`A285554(n)+A055101(n)`
-/

namespace A285555.P11408445753278262581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285554 n + A055101 n

end

end A285555.P11408445753278262581

/-! ## A285555.P17479671050117839139

`A003823(Δ[n²])`
-/

namespace A285555.P17479671050117839139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003823 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285555.P17479671050117839139

/-! ## A285555.P115348460460905052

`xor(1, xor(1, A003823(2*n+1)))`
-/

namespace A285555.P115348460460905052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A003823 (2 * n + 1)))

end

end A285555.P115348460460905052

/-! ## A285555.P1518406831690350893

`A003823(2*n+1)+A000007(n+1)`
-/

namespace A285555.P1518406831690350893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003823 (2 * n + 1) + A000007 (n + 1)

end

end A285555.P1518406831690350893

/-! ## A285555.P3379823334024219979

`A003823(2*n+1)%A003823(A045096(n+1))`
-/

namespace A285555.P3379823334024219979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003823 (2 * n + 1)) (A003823 (A045096 (n + 1)).toNat)

end

end A285555.P3379823334024219979

/-! ## A285555.P8867676240606057758

`A291678(A091823(n+1))`
-/

namespace A285555.P8867676240606057758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (A091823 (n + 1)).toNat

end

end A285555.P8867676240606057758

/-! ## A285555.P12903788348542769178

`A291678(A027379(2*n+1)+1)`
-/

namespace A285555.P12903788348542769178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (A027379 (2 * n + 1) + 1).toNat

end

end A285555.P12903788348542769178

/-! ## A285555.P884698640525215206

`A291678(A055998(2*n+1)+1)`
-/

namespace A285555.P884698640525215206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (A055998 (2 * n + 1) + 1).toNat

end

end A285555.P884698640525215206

/-!
# A285556: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 49", based on the 5-celled von Neumann neighborhood.

The programs for A285556, there is no canonical definition to state claims against.
-/

/-! ## A285556.P10040688159741578800

`A007088(A285558(n))`
-/

namespace A285556.P10040688159741578800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285558 n).toNat

end

end A285556.P10040688159741578800

/-! ## A285556.P34783074753958349

`A185544(2*A285558(n))`
-/

namespace A285556.P34783074753958349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285558 n).toNat

end

end A285556.P34783074753958349

/-! ## A285556.P7299231368834342817

`A287543(A002998(n))`
-/

namespace A285556.P7299231368834342817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287543 (A002998 n).toNat

end

end A285556.P7299231368834342817

/-! ## A285556.P8301939351136077651

`A287543(A039723(n))`
-/

namespace A285556.P8301939351136077651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287543 (A039723 n).toNat

end

end A285556.P8301939351136077651

/-! ## A285556.P12431907629484055420

`A287543(A046469(n))`
-/

namespace A285556.P12431907629484055420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287543 (A046469 n).toNat

end

end A285556.P12431907629484055420

/-!
# A285557: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 49", based on the 5-celled von Neumann neighborhood.

The programs for A285557, there is no canonical definition to state claims against.
-/

/-! ## A285557.P17132576199553712811

`A007088(A285559(n))`
-/

namespace A285557.P17132576199553712811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285559 n).toNat

end

end A285557.P17132576199553712811

/-! ## A285557.P9508926905912592010

`A185544(2*A285559(n))`
-/

namespace A285557.P9508926905912592010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285559 n).toNat

end

end A285557.P9508926905912592010

/-! ## A285557.P14547561655125710190

`A287544(A002998(n))`
-/

namespace A285557.P14547561655125710190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287544 (A002998 n).toNat

end

end A285557.P14547561655125710190

/-! ## A285557.P15971316927996693488

`A287544(A039723(n))`
-/

namespace A285557.P15971316927996693488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287544 (A039723 n).toNat

end

end A285557.P15971316927996693488

/-! ## A285557.P2700793172560093916

`A287544(A137667(n))`
-/

namespace A285557.P2700793172560093916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287544 (A137667 n).toNat

end

end A285557.P2700793172560093916

/-!
# A285558: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 49", based on the 5-celled von Neumann neighborhood.

The programs for A285558, there is no canonical definition to state claims against.
-/

/-! ## A285558.P4171610357339768086

`or(A194186(A109472(n+1)), A287545(n))`
-/

namespace A285558.P4171610357339768086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A194186 (A109472 (n + 1)).toNat) (A287545 n)

end

end A285558.P4171610357339768086

/-! ## A285558.P14800652101389485593

`or(A178105(A178113(n)), A287545(n))`
-/

namespace A285558.P14800652101389485593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178105 (A178113 n).toNat) (A287545 n)

end

end A285558.P14800652101389485593

/-! ## A285558.P17480265719093002716

`A287545(A046469(n))`
-/

namespace A285558.P17480265719093002716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287545 (A046469 n).toNat

end

end A285558.P17480265719093002716

/-! ## A285558.P14848082456636346411

`A287545(A087036(n))`
-/

namespace A285558.P14848082456636346411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287545 (A087036 n).toNat

end

end A285558.P14848082456636346411

/-! ## A285558.P8539632812174082266

`A287545(A087051(n))`
-/

namespace A285558.P8539632812174082266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287545 (A087051 n).toNat

end

end A285558.P8539632812174082266

/-!
# A285559: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 49", based on the 5-celled von Neumann neighborhood.

The programs for A285559, there is no canonical definition to state claims against.
-/

/-! ## A285559.P10438313381201351706

`A287546(n^(1-(∑{digits}[n, #]-n)))`
-/

namespace A285559.P10438313381201351706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287546 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A285559.P10438313381201351706

/-! ## A285559.P3142492698250318899

`A287546(A046469(n))`
-/

namespace A285559.P3142492698250318899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287546 (A046469 n).toNat

end

end A285559.P3142492698250318899

/-! ## A285559.P1946183631693463057

`A287546(A087036(n))`
-/

namespace A285559.P1946183631693463057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287546 (A087036 n).toNat

end

end A285559.P1946183631693463057

/-! ## A285559.P17563715583426396837

`A287546(A087051(n))`
-/

namespace A285559.P17563715583426396837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287546 (A087051 n).toNat

end

end A285559.P17563715583426396837

/-! ## A285559.P16752606388381431705

`A287546(A004893(n+1))`
-/

namespace A285559.P16752606388381431705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287546 (A004893 (n + 1)).toNat

end

end A285559.P16752606388381431705

/-!
# A285560: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 51", based on the 5-celled von Neumann neighborhood.

The programs for A285560, there is no canonical definition to state claims against.
-/

/-! ## A285560.P11953558418826592445

`A007088(A285562(n))`
-/

namespace A285560.P11953558418826592445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285562 n).toNat

end

end A285560.P11953558418826592445

/-! ## A285560.P5389056644313188365

`A305989(A285563(n))`
-/

namespace A285560.P5389056644313188365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A285563 n).toNat

end

end A285560.P5389056644313188365

/-! ## A285560.P15226597280090581234

`A185544(2*A285562(n))`
-/

namespace A285560.P15226597280090581234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285562 n).toNat

end

end A285560.P15226597280090581234

/-! ## A285560.P2474479303101386382

`A185544(lcm(2, A285562(n)))`
-/

namespace A285560.P2474479303101386382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A285562 n))

end

end A285560.P2474479303101386382

/-! ## A285560.P15276078462940954343

`A185544(A285562(n)+A285562(n))`
-/

namespace A285560.P15276078462940954343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A285562 n + A285562 n).toNat

end

end A285560.P15276078462940954343

/-!
# A285561: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 51", based on the 5-celled von Neumann neighborhood.

The programs for A285561, there is no canonical definition to state claims against.
-/

/-! ## A285561.P13762193858288492269

`A007088(A285563(n))`
-/

namespace A285561.P13762193858288492269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285563 n).toNat

end

end A285561.P13762193858288492269

/-! ## A285561.P7243109274800062371

`A185544(2*A285563(n))`
-/

namespace A285561.P7243109274800062371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285563 n).toNat

end

end A285561.P7243109274800062371

/-! ## A285561.P1442390236554100175

`A185544(A285563(n)+A285563(n))`
-/

namespace A285561.P1442390236554100175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A285563 n + A285563 n).toNat

end

end A285561.P1442390236554100175

/-!
# A285562: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 51", based on the 5-celled von Neumann neighborhood.

The programs for A285562, there is no canonical definition to state claims against.
-/

/-! ## A285562.P13613021915365770275

`A325401(A285563(n))`
-/

namespace A285562.P13613021915365770275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A285563 n).toNat

end

end A285562.P13613021915365770275

/-! ## A285562.P12295043064261971796

`or(A281589(A285563(n)), A286674(n))`
-/

namespace A285562.P12295043064261971796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A281589 (A285563 n).toNat) (A286674 n)

end

end A285562.P12295043064261971796

/-! ## A285562.P10944259539533861669

`A281589(2*A285563(n))`
-/

namespace A285562.P10944259539533861669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A285563 n).toNat

end

end A285562.P10944259539533861669

/-! ## A285562.P17939634091479766961

`A030101(lcm(2, A285563(n)))`
-/

namespace A285562.P17939634091479766961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lcm 2 (A285563 n))

end

end A285562.P17939634091479766961

/-! ## A285562.P423709494382616383

`or(A003056(A003945(n)), A286674(n))`
-/

namespace A285562.P423709494382616383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003056 (A003945 n).toNat) (A286674 n)

end

end A285562.P423709494382616383

/-!
# A285563: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 51", based on the 5-celled von Neumann neighborhood.

The programs for A285563, there is no canonical definition to state claims against.
-/

/-! ## A285563.P3424571097379013506

`or(A061898(A025192(n)), A285844(n))`
-/

namespace A285563.P3424571097379013506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061898 (A025192 n).toNat) (A285844 n)

end

end A285563.P3424571097379013506

/-! ## A285563.P12535883989102522311

`or(A061898(A025192(n)), A285948(n))`
-/

namespace A285563.P12535883989102522311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061898 (A025192 n).toNat) (A285948 n)

end

end A285563.P12535883989102522311

/-! ## A285563.P11431354799840337810

`or(A061898(A025192(n)), A287625(n))`
-/

namespace A285563.P11431354799840337810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061898 (A025192 n).toNat) (A287625 n)

end

end A285563.P11431354799840337810

/-! ## A285563.P4603142510913022828

`or(A064989(A000244(n)), A287625(n))`
-/

namespace A285563.P4603142510913022828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064989 (A000244 n).toNat) (A287625 n)

end

end A285563.P4603142510913022828

/-! ## A285563.P14656262588187703439

`or(A003945(A004892(n+1)), A285844(n))`
-/

namespace A285563.P14656262588187703439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003945 (A004892 (n + 1)).toNat) (A285844 n)

end

end A285563.P14656262588187703439

/-!
# A285564: Positions of 1 in A286939; complement of A285432.

The programs for A285564, there is no canonical definition to state claims against.
-/

/-! ## A285564.P1888016643559047881

`filter[n+1, A286939(#)]`
-/

namespace A285564.P1888016643559047881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286939 (f1 j) = 1) n)

end

end A285564.P1888016643559047881

/-! ## A285564.P11813771143444452364

`eq[1, A286939(n+1)]+1`
-/

namespace A285564.P11813771143444452364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285564.P11813771143444452364

/-! ## A285564.P12261336313875115204

`record[(n+3)*A286939(n+3)]`
-/

namespace A285564.P12261336313875115204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A286939 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285564.P12261336313875115204

/-! ## A285564.P1018968964501058742

`eq[1, A286939(A028310(n))]`
-/

namespace A285564.P1018968964501058742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286939 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285564.P1018968964501058742

/-! ## A285564.P17841439987485422637

`lt[n*char[A285432(n+1)], n]`
-/

namespace A285564.P17841439987485422637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285432 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A285564.P17841439987485422637

/-! ## A285564.P11869959832348426904

`eq[1, A286939(A000007(n)+n)]`
-/

namespace A285564.P11869959832348426904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286939 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285564.P11869959832348426904

/-! ## A285564.P13984573688318217653

`eq[1, A286939(xor(n, A000007(n)))]`
-/

namespace A285564.P13984573688318217653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286939 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285564.P13984573688318217653

/-! ## A285564.P1440465007548450524

`lt[char[A285432(n+1)], A057427(n)]`
-/

namespace A285564.P1440465007548450524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285432 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A285564.P1440465007548450524

/-! ## A285564.P3943615727918355125

`lt[A286939(n+1), A286939(A028310(n))]`
-/

namespace A285564.P3943615727918355125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286939 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285564.P3943615727918355125

/-! ## A285564.P15358585847461351460

`A036234(p?[A008578(n+1)*A286939(n+1)])`
-/

namespace A285564.P15358585847461351460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A286939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285564.P15358585847461351460

/-! ## A285564.P16702910362325064759

`A230980(p?[A000040(n+1)*A286939(n+1)])`
-/

namespace A285564.P16702910362325064759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A286939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285564.P16702910362325064759

/-! ## A285564.P18018297020153150662

`eq[1, A286939(A233583(n+1))]`
-/

namespace A285564.P18018297020153150662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286939 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285564.P18018297020153150662

/-!
# A285565: 0-limiting word of the morphism 0->11, 1-> 0110.

The programs for A285565, there is no canonical definition to state claims against.
-/

/-! ## A285565.P4646255768137245617

`char[A285567(n+1)-1]`
-/

namespace A285565.P4646255768137245617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285567 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285565.P4646255768137245617

/-! ## A285565.P17845260121562275253

`Δ[char[A285567(2*n+1)]]²`
-/

namespace A285565.P17845260121562275253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285567 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A285565.P17845260121562275253

/-! ## A285565.P6839497535842054970

`A286031(2*(n+1))%2`
-/

namespace A285565.P6839497535842054970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286031 (2 * (n + 1))) 2

end

end A285565.P6839497535842054970

/-! ## A285565.P15057756822771569037

`and(1, A286031(2*n+2))`
-/

namespace A285565.P15057756822771569037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A286031 (2 * n + 2))

end

end A285565.P15057756822771569037

/-! ## A285565.P9669556056719372622

`val(A020639(A286031(2*n+1)), 2)`
-/

namespace A285565.P9669556056719372622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A286031 (2 * n + 1)).toNat).toNat 2

end

end A285565.P9669556056719372622

/-! ## A285565.P18091028084137889013

`A000035(A286031(2*(n+1)))`
-/

namespace A285565.P18091028084137889013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A286031 (2 * (n + 1))).toNat

end

end A285565.P18091028084137889013

/-! ## A285565.P8069306278874216405

`A004526(Δ[eq[1, A285568(2*(n+1))]])`
-/

namespace A285565.P8069306278874216405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285565.P8069306278874216405

/-! ## A285565.P4069702399184253244

`A242451(Δ[eq[1, A285568(2*(n+1))]])`
-/

namespace A285565.P4069702399184253244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285565.P4069702399184253244

/-!
# A285566: Positions of 0 in A285565; complement of A285567.

The programs for A285566, there is no canonical definition to state claims against.
-/

/-! ## A285566.P5508112578225592837

`lt[A285565(n+1), 1]+1`
-/

namespace A285566.P5508112578225592837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285565 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285566.P5508112578225592837

/-! ## A285566.P1664653494738975767

`record[n+1-A268685(n)*A285565(n+1)]`
-/

namespace A285566.P1664653494738975767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A268685 n * A285565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285566.P1664653494738975767

/-! ## A285566.P17734197944111257730

`record[n+1-A152132(n+1)*A285565(n+1)]`
-/

namespace A285566.P17734197944111257730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A152132 (n + 1) * A285565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285566.P17734197944111257730

/-! ## A285566.P12878839421315827222

`record[A003602(2*n-A285565(n+1)+1)]`
-/

namespace A285566.P12878839421315827222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 ((2 * n : ℤ) - A285565 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285566.P12878839421315827222

/-! ## A285566.P13040490027607819628

`record[A003602(n-A285565(n+1)+n+1)]`
-/

namespace A285566.P13040490027607819628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 ((n : ℤ) - A285565 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285566.P13040490027607819628

/-!
# A285567: Positions of 1 in A285565; complement of A285566.

The programs for A285567, there is no canonical definition to state claims against.
-/

/-! ## A285567.P15703860189993099484

`comp[A285566(n+1)-1]+1`
-/

namespace A285567.P15703860189993099484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285566 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285567.P15703860189993099484

/-! ## A285567.P9466490331111518070

`filter[n+1, A285565(#)]`
-/

namespace A285567.P9466490331111518070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285565 (f1 j) = 1) n)

end

end A285567.P9466490331111518070

/-! ## A285567.P15465970664470401442

`eq[1, A285565(n+1)]+1`
-/

namespace A285567.P15465970664470401442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285567.P15465970664470401442

/-! ## A285567.P16125880656211807934

`record[2*A285565(n+2)+n]`
-/

namespace A285567.P16125880656211807934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285565 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285567.P16125880656211807934

/-! ## A285567.P686299292411014473

`A285569(2*(n+1))/2-(n+1)`
-/

namespace A285567.P686299292411014473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285569 (2 * (n + 1)) : ℚ) / 2 - (n + 1 : ℚ)

end

end A285567.P686299292411014473

/-! ## A285567.P9912471914814800671

`eq[1, val(A020639(A286031(2*n+1)), 2)]+1`
-/

namespace A285567.P9912471914814800671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A286031 (2 * n + 1)).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285567.P9912471914814800671

/-! ## A285567.P3673911899120193359

`eq[1, A285565(A065033(2*n))]`
-/

namespace A285567.P3673911899120193359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285565 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285567.P3673911899120193359

/-! ## A285567.P4462365817038087039

`eq[0, A285568(2*(n+1))]-n`
-/

namespace A285567.P4462365817038087039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A285567.P4462365817038087039

/-! ## A285567.P11113518624240302863

`lt[A285568(2*n+2), 1]-n`
-/

namespace A285567.P11113518624240302863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A285567.P11113518624240302863

/-!
# A285568: 1-limiting word of the morphism 0->11, 1-> 0110.

The programs for A285568, there is no canonical definition to state claims against.
-/

/-! ## A285568.P3546119338097248858

`char[A286031(n+1)-1]`
-/

namespace A285568.P3546119338097248858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286031 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285568.P3546119338097248858

/-! ## A285568.P6599988540928241760

`1-char[A285569(n+1)-1]`
-/

namespace A285568.P6599988540928241760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285569 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285568.P6599988540928241760

/-! ## A285568.P16479418707143846767

`abs(Δ[char[A286031(2*n+1)]])`
-/

namespace A285568.P16479418707143846767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286031 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A285568.P16479418707143846767

/-! ## A285568.P16435490436763431008

`A285567(2*(n+1))%2`
-/

namespace A285568.P16435490436763431008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285567 (2 * (n + 1))) 2

end

end A285568.P16435490436763431008

/-! ## A285568.P14544318216473454694

`and(1, A285567(2*n+2))`
-/

namespace A285568.P14544318216473454694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A285567 (2 * n + 2))

end

end A285568.P14544318216473454694

/-! ## A285568.P11758001036405806786

`gcd(2, A285567(2*n+1))-1`
-/

namespace A285568.P11758001036405806786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A285567 (2 * n + 1)) : ℤ) - 1

end

end A285568.P11758001036405806786

/-! ## A285568.P17366711976585207073

`1-A285565(eq[A019426(n+1), A285565(n+1)])`
-/

namespace A285568.P17366711976585207073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285565 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285568.P17366711976585207073

/-! ## A285568.P14932210997657960955

`A059841(A285567(2*n+1))`
-/

namespace A285568.P14932210997657960955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A285567 (2 * n + 1)).toNat

end

end A285568.P14932210997657960955

/-!
# A285569: Positions of 0 in A285568; complement of A286031.

The programs for A285569, there is no canonical definition to state claims against.
-/

/-! ## A285569.P1424230619961259803

`lt[A285568(n+1), 1]+1`
-/

namespace A285569.P1424230619961259803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285569.P1424230619961259803

/-! ## A285569.P17393947901429962094

`eq[2, A285568(n+2)+2]+2`
-/

namespace A285569.P17393947901429962094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (n + 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A285569.P17393947901429962094

/-! ## A285569.P10304663191203393902

`eq[A000038(n), A285568(n+1)]+1`
-/

namespace A285569.P10304663191203393902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285569.P10304663191203393902

/-! ## A285569.P8185137712171250129

`eq[0, A285568(A004016(n)%2+n)]`
-/

namespace A285569.P8185137712171250129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (Int.tmod (A004016 n) 2 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285569.P8185137712171250129

/-! ## A285569.P3124716126935291276

`eq[A000038(n), A285568(A000038(n)+n)]`
-/

namespace A285569.P3124716126935291276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285569.P3124716126935291276

/-! ## A285569.P7137080963331755082

`eq[0, A285568(A000007(n)+n)]`
-/

namespace A285569.P7137080963331755082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285569.P7137080963331755082

/-! ## A285569.P8895762741399064845

`eq[0, A285568(A008621(A130824(n)))]`
-/

namespace A285569.P8895762741399064845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (A008621 (A130824 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285569.P8895762741399064845

/-! ## A285569.P1778957338569499556

`eq[0, A285568(A233583(n+1))]`
-/

namespace A285569.P1778957338569499556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285569.P1778957338569499556

/-!
# A285572: Number of finite sets of pairwise indivisible positive integers with least common multiple n.

The programs for A285572, there is no canonical definition to state claims against.
-/

/-! ## A285572.P15207031771464133205

`∑{d}[n+1, A008683(#)*A285573((n+1)/#)]`
-/

namespace A285572.P15207031771464133205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A285573 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A285572.P15207031771464133205

/-! ## A285572.P8102171737219146941

`or(A305150((n+1)²), A335520(n+1))`
-/

namespace A285572.P8102171737219146941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A305150 ((n + 1) ^ 2)) (A335520 (n + 1))

end

end A285572.P8102171737219146941

/-! ## A285572.P5015971100656684263

`or(A325169(n+1)%2, A305150((n+1)²))`
-/

namespace A285572.P5015971100656684263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A325169 (n + 1)) 2) (A305150 ((n + 1) ^ 2))

end

end A285572.P5015971100656684263

/-! ## A285572.P17529188538630200983

`A097623(A179926(n+1))`
-/

namespace A285572.P17529188538630200983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097623 (A179926 (n + 1)).toNat

end

end A285572.P17529188538630200983

/-! ## A285572.P12066767481625832820

`A322260(A305150((n+1)²))`
-/

namespace A285572.P12066767481625832820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322260 (A305150 ((n + 1) ^ 2)).toNat

end

end A285572.P12066767481625832820

/-! ## A285572.P14780981230103112079

`val(A191249(A191278(n+1)), 2)`
-/

namespace A285572.P14780981230103112079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A191249 (A191278 (n + 1)).toNat).toNat 2

end

end A285572.P14780981230103112079

/-! ## A285572.P14058576625207050192

`A001222(2^A305150((n+1)²))`
-/

namespace A285572.P14058576625207050192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A305150 ((n + 1) ^ 2) : ℤ))).toNat

end

end A285572.P14058576625207050192

/-! ## A285572.P17950728666297205796

`A305150((n+1)^A036452(n+1))`
-/

namespace A285572.P17950728666297205796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305150 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A036452 (n + 1) : ℤ))).toNat

end

end A285572.P17950728666297205796

/-! ## A285572.P16077087162628086035

`A000523(A004956(A179926(n+1)²))`
-/

namespace A285572.P16077087162628086035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A004956 (A179926 (n + 1) ^ 2).toNat).toNat

end

end A285572.P16077087162628086035

/-!
# A285573: Number of finite nonempty sets of pairwise indivisible divisors of n.

The programs for A285573, there is no canonical definition to state claims against.
-/

/-! ## A285573.P14940582463880468964

`A096827(n+1)-1`
-/

namespace A285573.P14940582463880468964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096827 (n + 1) - 1

end

end A285573.P14940582463880468964

/-! ## A285573.P17657738531279465287

`∑{d}[n+1, A285572(#)]`
-/

namespace A285573.P17657738531279465287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A285572 d

end

end A285573.P17657738531279465287

/-! ## A285573.P504605356290544008

`A023443(A096827(n+1))`
-/

namespace A285573.P504605356290544008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A096827 (n + 1)).toNat

end

end A285573.P504605356290544008

/-! ## A285573.P18030517781366215753

`A057036(A096827(n+1)²)`
-/

namespace A285573.P18030517781366215753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057036 (A096827 (n + 1) ^ 2).toNat

end

end A285573.P18030517781366215753

/-! ## A285573.P12302780174652094042

`A057918(A096827(n+1)²)`
-/

namespace A285573.P12302780174652094042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A096827 (n + 1) ^ 2).toNat

end

end A285573.P12302780174652094042

/-! ## A285573.P14249060085346360058

`A259361(A096827(n+1)²)`
-/

namespace A285573.P14249060085346360058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A096827 (n + 1) ^ 2).toNat

end

end A285573.P14249060085346360058

/-! ## A285573.P13922137966296293268

`A338629(A096827(n+1)²)`
-/

namespace A285573.P13922137966296293268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338629 (A096827 (n + 1) ^ 2).toNat

end

end A285573.P13922137966296293268

/-! ## A285573.P12716516194756977711

`A289207(A096827(n+1)+1)`
-/

namespace A285573.P12716516194756977711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A096827 (n + 1) + 1).toNat

end

end A285573.P12716516194756977711

/-! ## A285573.P3268277443188508187

`A046667(2*A096827(n+1))`
-/

namespace A285573.P3268277443188508187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A096827 (n + 1)).toNat

end

end A285573.P3268277443188508187

/-! ## A285573.P9435822394271387999

`A072828(n+1)%A096827(n+1)`
-/

namespace A285573.P9435822394271387999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A096827 (n + 1))

end

end A285573.P9435822394271387999

/-! ## A285573.P13226777628159918708

`A127228(n+4)%A096827(n+1)`
-/

namespace A285573.P13226777628159918708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127228 (n + 4)) (A096827 (n + 1))

end

end A285573.P13226777628159918708

/-! ## A285573.P17890660999295272177

`A127229(n+5)%A096827(n+1)`
-/

namespace A285573.P17890660999295272177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A096827 (n + 1))

end

end A285573.P17890660999295272177

/-! ## A285573.P17615385852569502642

`A002262(A096827(n+1)+∑[n+2])`
-/

namespace A285573.P17615385852569502642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A096827 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A285573.P17615385852569502642

/-! ## A285573.P11827236422699138099

`abs(A096827(n+1)+A008683(A001359(n+1)))`
-/

namespace A285573.P11827236422699138099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096827 (n + 1) + A008683 (A001359 (n + 1)).toNat|

end

end A285573.P11827236422699138099

/-! ## A285573.P9354621198886254689

`xor(-A096827(n+1), A008683(A005235(n+1)))`
-/

namespace A285573.P9354621198886254689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A096827 (n + 1)) (A008683 (A005235 (n + 1)).toNat)

end

end A285573.P9354621198886254689

/-! ## A285573.P6816692663920420939

`A057036((A096827(n+1)+1)*A096827(n+1))`
-/

namespace A285573.P6816692663920420939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057036 ((A096827 (n + 1) + 1) * A096827 (n + 1)).toNat

end

end A285573.P6816692663920420939

/-! ## A285573.P17254143951444715247

`A057918(2*A096827(n+1)*A096827(n+1))`
-/

namespace A285573.P17254143951444715247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (2 * A096827 (n + 1) * A096827 (n + 1)).toNat

end

end A285573.P17254143951444715247

/-!
# A285574: Irregular triangle read by rows which arises from a diagram which is similar to the diagram of A261699, but here the even-indexed zig-zag lines are located on the right-hand side of the vertical axis of the diagram.

The programs for A285574, there is no canonical definition to state claims against.
-/

/-! ## A285574.P4594846205918437650

`A285320(A131632(n+1))`
-/

namespace A285574.P4594846205918437650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285320 (A131632 (n + 1)).toNat

end

end A285574.P4594846205918437650

/-! ## A285574.P5749414834629390273

`A261699(A201061(n+2))`
-/

namespace A285574.P5749414834629390273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (A201061 (n + 2)).toNat

end

end A285574.P5749414834629390273

/-! ## A285574.P3684395401411589063

`A261699(A194845(n+1)+A011854(n))`
-/

namespace A285574.P3684395401411589063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (A194845 (n + 1) + A011854 n).toNat

end

end A285574.P3684395401411589063

/-! ## A285574.P17450804543941178701

`A261699(A239235(n+1)+A011854(n))`
-/

namespace A285574.P17450804543941178701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (A239235 (n + 1) + A011854 n).toNat

end

end A285574.P17450804543941178701

/-! ## A285574.P13347750769996343970

`A261699(A010785(n+1)*A055642(n))`
-/

namespace A285574.P13347750769996343970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (A010785 (n + 1) * A055642 n).toNat

end

end A285574.P13347750769996343970

/-!
# A285577: Irregular triangle T(n,m) read by rows (n >= 1, 0 <= m <= Max(A001221([1..n]))), giving the number of integers in [1,n] with m distinct prime factors.

The programs for A285577, there is no canonical definition to state claims against.
-/

/-! ## A285577.P2042675649169433015

`A163563(n^A086800(A023134(n+1)))`
-/

namespace A285577.P2042675649169433015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A086800 (A023134 (n + 1)).toNat : ℤ))).toNat

end

end A285577.P2042675649169433015

/-! ## A285577.P7856279616117329805

`Δ[lt[Δ[A350269(n)], 3]]`
-/

namespace A285577.P7856279616117329805
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350269 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A285577.P7856279616117329805

/-! ## A285577.P1556396428046798212

`A005709(Δ[lt[4, A290771(n)]])`
-/

namespace A285577.P1556396428046798212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290771 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285577.P1556396428046798212

/-! ## A285577.P5734628104984717080

`Δ[lt[A334257(n), A072180(n+4)]]`
-/

namespace A285577.P5734628104984717080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334257 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072180 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A285577.P5734628104984717080

/-! ## A285577.P14584988154744148867

`A084558(A002572(n+1))^A002262(A023134(n+1))`
-/

namespace A285577.P14584988154744148867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084558 (A002572 (n + 1)).toNat : ℚ) ^ (A002262 (A023134 (n + 1)).toNat : ℤ)

end

end A285577.P14584988154744148867

/-!
# A285578: a(1) = a(3) = a(4) = 2, a(2) = 1; a(n) = a(a(n-2)) + a(n-a(n-4)-2) for n > 4.

The programs for A285578, the canonical program `A285578.P16095876044844581113` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285578 has offset 1).

The definition of A285578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-2)-1)+a(n-a(n-4)-2)` (program `A285578.P16095876044844581113`, by `A285578.P16095876044844581113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A285578.P16095876044844581113

`a(a(n-2)-1)+a(n-a(n-4)-2)` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A285578

/-- `a(a(n-2)-1)+a(n-a(n-4)-2)` -/
def P16095876044844581113.Spec : Prop :=
  ∀ n, (P16095876044844581113.a n : ℤ) = A285578 (n + 1)

theorem P16095876044844581113.correct : P16095876044844581113.Spec := by
  intro n
  simp only [A285578, Nat.add_sub_cancel]

end A285578

/-! ## A285578.P14302054832770382297

`floor(A233970(2*(n+2))/A157695(n+1))`
-/

namespace A285578.P14302054832770382297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A233970 (2 * (n + 2)) : ℚ) / (A157695 (n + 1) : ℚ)⌋

end

end A285578.P14302054832770382297

namespace A285578

/-- `floor(A233970(2*(n+2))/A157695(n+1))` -/
def P14302054832770382297.Spec : Prop :=
  ∀ n, P14302054832770382297.a n = A285578 (n + 1)

end A285578

/-!
# A285580: Expansion of q^(-2/5) * (r(q) - r(q^11))^12 in powers of q where r() is the Rogers-Ramanujan continued fraction.

The programs for A285580, there is no canonical definition to state claims against.
-/

/-! ## A285580.P12195278905387788543

`A109970(eq[4, A109973(2*n+1)])`
-/

namespace A285580.P12195278905387788543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109973 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285580.P12195278905387788543

/-! ## A285580.P9521990228200287080

`A210882(A295538(n))-A295535(n)`
-/

namespace A285580.P9521990228200287080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (A295538 n).toNat - A295535 n

end

end A285580.P9521990228200287080

/-!
# A285581: Expansion of q^(-1/5) * (r(q) - r(q^11)) in powers of q where r() is the Rogers-Ramanujan continued fraction.

The programs for A285581, there is no canonical definition to state claims against.
-/

/-! ## A285581.P17168323659274121319

`xor(A007325(n), A025456(A058780(n+1)))`
-/

namespace A285581.P17168323659274121319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007325 n) (A025456 (A058780 (n + 1)).toNat)

end

end A285581.P17168323659274121319

/-! ## A285581.P5256156965122221499

`A007325(n)-A054525(A317174(n+1))`
-/

namespace A285581.P5256156965122221499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007325 n - A054525 (A317174 (n + 1)).toNat

end

end A285581.P5256156965122221499

/-! ## A285581.P3551887747208693319

`xor(A007325(n), A010054(A224173(n+1)))`
-/

namespace A285581.P3551887747208693319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007325 n) (A010054 (A224173 (n + 1)).toNat)

end

end A285581.P3551887747208693319

/-! ## A285581.P11177202782070155783

`xor((-1)^n*A226556(n), A010054(A224173(n+1)))`
-/

namespace A285581.P11177202782070155783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((-1) ^ n * A226556 n) (A010054 (A224173 (n + 1)).toNat)

end

end A285581.P11177202782070155783

/-! ## A285581.P15773058112555238231

`A284321(n)+Δ[A047999(A083720(n+1))]`
-/

namespace A285581.P15773058112555238231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A083720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284321 n + (f1 (n + 1) - f1 n)

end

end A285581.P15773058112555238231

/-!
# A285582: a(1) = 1, a(2) = a(3) = a(4) = 2; a(n) = a(a(n-3)-1) + a(n-a(n-4)-1) for n > 4.

The programs for A285582, the canonical program `A285582.P6355945297625795998` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285582 has offset 1).

The definition of A285582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-3)-2)+a(n-a(n-4)-1)` (program `A285582.P6355945297625795998`, by `A285582.P6355945297625795998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A285582.P6355945297625795998

`a(a(n-3)-2)+a(n-a(n-4)-1)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A285582

/-- `a(a(n-3)-2)+a(n-a(n-4)-1)` -/
def P6355945297625795998.Spec : Prop :=
  ∀ n, (P6355945297625795998.a n : ℤ) = A285582 (n + 1)

theorem P6355945297625795998.correct : P6355945297625795998.Spec := by
  intro n
  simp only [A285582, Nat.add_sub_cancel]

end A285582

/-!
# A285586: Complete list of numbers n for which there exists no prime number between n and 9n/8 inclusive.

The programs for A285586, there is no canonical definition to state claims against.
-/

/-! ## A285586.P2674305311094139318

`∪[A255844(n), A313263(n)]`
-/

namespace A285586.P2674305311094139318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313263 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285586.P2674305311094139318

/-! ## A285586.P4805652953571219085

`∪[A255844(n), A313264(n)]`
-/

namespace A285586.P4805652953571219085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313264 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285586.P4805652953571219085

/-! ## A285586.P8297905504737881273

`∪[A255844(n), A313265(n)]`
-/

namespace A285586.P8297905504737881273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313265 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285586.P8297905504737881273

/-! ## A285586.P11240779768050132432

`∪[A255844(n), A313266(n)]`
-/

namespace A285586.P11240779768050132432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313266 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285586.P11240779768050132432

/-! ## A285586.P6957529986766522295

`A018252(record[A091971(2*n)])`
-/

namespace A285586.P6957529986766522295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091971 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285586.P6957529986766522295

/-!
# A285588: a(1) = a(2) = 1; a(3) = a(4) = a(5) = 2; a(n) = a(a(n-3)-1) + a(n-a(n-5)-2) for n > 5.

The programs for A285588, the canonical program `A285588.P12184614612112210686` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285588 has offset 1).

The definition of A285588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-3)-2)+a(n-a(n-5)-2)` (program `A285588.P12184614612112210686`, by `A285588.P12184614612112210686.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A285588.P12184614612112210686

`a(a(n-3)-2)+a(n-a(n-5)-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A285588

/-- `a(a(n-3)-2)+a(n-a(n-5)-2)` -/
def P12184614612112210686.Spec : Prop :=
  ∀ n, (P12184614612112210686.a n : ℤ) = A285588 (n + 1)

theorem P12184614612112210686.correct : P12184614612112210686.Spec := by
  intro n
  simp only [A285588, Nat.add_sub_cancel]

end A285588

/-!
# A285589: {00->0, 11->1}-transform of A285565.

The programs for A285589, there is no canonical definition to state claims against.
-/

/-! ## A285589.P5396245729349848506

`char[A285591(n+1)-1]`
-/

namespace A285589.P5396245729349848506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285591 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285589.P5396245729349848506

/-! ## A285589.P17594417849527075041

`char[comp[A285590(n+1)-1]]`
-/

namespace A285589.P17594417849527075041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285590 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285589.P17594417849527075041

/-! ## A285589.P4115676118352336729

`char[A023443(A285591(n+1))]`
-/

namespace A285589.P4115676118352336729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A285591 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285589.P4115676118352336729

/-! ## A285589.P14140015138567388688

`char[∑[A285568(A285568(n+1)+n)]+n]`
-/

namespace A285589.P14140015138567388688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (A285568 (n + 1) + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285589.P14140015138567388688

/-! ## A285589.P9455434033328574202

`A008683(n+1)²!-char[A285590(n+1)-1]`
-/

namespace A285589.P9455434033328574202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285590 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285589.P9455434033328574202

/-! ## A285589.P16545639469712077455

`A011765(6*A004885(n+2))`
-/

namespace A285589.P16545639469712077455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (6 * A004885 (n + 2)).toNat

end

end A285589.P16545639469712077455

/-! ## A285589.P9881951074613482007

`A014577(6*A004885(n+2))`
-/

namespace A285589.P9881951074613482007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (6 * A004885 (n + 2)).toNat

end

end A285589.P9881951074613482007

/-! ## A285589.P9356218466130396825

`A038189(Δ[A004852(n+1)²])`
-/

namespace A285589.P9356218466130396825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004852 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (f1 (n + 1) - f1 n).toNat

end

end A285589.P9356218466130396825

/-! ## A285589.P5690877108796880010

`A059841(A003379(n+2))`
-/

namespace A285589.P5690877108796880010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A003379 (n + 2)).toNat

end

end A285589.P5690877108796880010

/-! ## A285589.P6686977145095021771

`A059841(A004918(n+2))`
-/

namespace A285589.P6686977145095021771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A004918 (n + 2)).toNat

end

end A285589.P6686977145095021771

/-!
# A285590: Positions of 0 in A285589; complement of A285591.

The programs for A285590, there is no canonical definition to state claims against.
-/

/-! ## A285590.P9268637833421874264

`lt[A285589(n+1), 1]+1`
-/

namespace A285590.P9268637833421874264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285589 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285590.P9268637833421874264

/-! ## A285590.P12461149296961903967

`record[A000027(n+1)-n*A285589(n+1)]`
-/

namespace A285590.P12461149296961903967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - (n : ℤ) * A285589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285590.P12461149296961903967

/-! ## A285590.P13893120167146294168

`record[n+1-A033428(n*A285589(n+1))]`
-/

namespace A285590.P13893120167146294168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A033428 ((n : ℤ) * A285589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285590.P13893120167146294168

/-! ## A285590.P2121975698304776541

`record[n+1-A267159(n)*A285589(n+1)]`
-/

namespace A285590.P2121975698304776541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267159 n * A285589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285590.P2121975698304776541

/-! ## A285590.P10726509264389525527

`record[n+1-A004082(n+1)*A285589(n+1)]`
-/

namespace A285590.P10726509264389525527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004082 (n + 1) * A285589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285590.P10726509264389525527

/-! ## A285590.P7230377088999980622

`record[n+1-A285566(n+1)*A285589(n+1)]`
-/

namespace A285590.P7230377088999980622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285566 (n + 1) * A285589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285590.P7230377088999980622

/-! ## A285590.P13233804993944876860

`record[n+1-A285569(n+1)*A285589(n+1)]`
-/

namespace A285590.P13233804993944876860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285569 (n + 1) * A285589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285590.P13233804993944876860

/-! ## A285590.P4180327604555225283

`record[n+1-A285589(n+1)*A285593(n+1)]`
-/

namespace A285590.P4180327604555225283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285589 (n + 1) * A285593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285590.P4180327604555225283

/-! ## A285590.P6959194361110456115

`record[n+1-A285589(n+1)*A285594(n+1)]`
-/

namespace A285590.P6959194361110456115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285589 (n + 1) * A285594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285590.P6959194361110456115

/-! ## A285590.P16462457290131710930

`eq[A000038(n), A285589(A000038(n)+n)]`
-/

namespace A285590.P16462457290131710930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285589 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285590.P16462457290131710930

/-!
# A285591: Positions of 1 in A285589; complement of A285590.

The programs for A285591, there is no canonical definition to state claims against.
-/

/-! ## A285591.P18241018716564737854

`comp[A285590(n+1)-1]+1`
-/

namespace A285591.P18241018716564737854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285590 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285591.P18241018716564737854

/-! ## A285591.P6638299025455437969

`∑[A285568(A285568(n+1)+n)+1]`
-/

namespace A285591.P6638299025455437969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (A285568 (n + 1) + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285591.P6638299025455437969

/-! ## A285591.P9353657929605172426

`a(n-1)+2-A285589(a(n-1)+1)` with `a(0)=2`
-/

namespace A285591.P9353657929605172426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 - A285589 (a (n - 1) + 1).toNat

end

end A285591.P9353657929605172426

/-! ## A285591.P12606440141933243526

`filter[n+1, A285589(#)]`
-/

namespace A285591.P12606440141933243526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285589 (f1 j) = 1) n)

end

end A285591.P12606440141933243526

/-! ## A285591.P12920499963736185092

`lt[0, A285589(n+1)]+1`
-/

namespace A285591.P12920499963736185092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285589 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285591.P12920499963736185092

/-! ## A285591.P17198698735117492507

`record[(n+2)*A285589(n+2)]`
-/

namespace A285591.P17198698735117492507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A285589 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285591.P17198698735117492507

/-! ## A285591.P7459286274541994718

`eq[1, A285589(A008619(A004273(n)))]`
-/

namespace A285591.P7459286274541994718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285589 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285591.P7459286274541994718

/-!
# A285592: {00->0, 11->1}-transform of A285568.

The programs for A285592, there is no canonical definition to state claims against.
-/

/-! ## A285592.P11154144297959999543

`char[A285594(n+1)-1]`
-/

namespace A285592.P11154144297959999543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285594 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285592.P11154144297959999543

/-! ## A285592.P14572437629055131886

`char[comp[A285593(n+1)-1]]`
-/

namespace A285592.P14572437629055131886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285593 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285592.P14572437629055131886

/-! ## A285592.P8140213471925601648

`char[A023443(A285594(n+1))]`
-/

namespace A285592.P8140213471925601648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A285594 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285592.P8140213471925601648

/-! ## A285592.P11141872939853849816

`char[A023443(comp[A285593(n+1)])]`
-/

namespace A285592.P11141872939853849816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285593 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285592.P11141872939853849816

/-! ## A285592.P4573211415409570910

`(char[A285593(A028310(n))-1]-1)²`
-/

namespace A285592.P4573211415409570910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285593 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1) ^ 2

end

end A285592.P4573211415409570910

/-! ## A285592.P9124671593505846575

`(char[A285593(A158416(n))-1]-1)²`
-/

namespace A285592.P9124671593505846575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285593 (A158416 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1) ^ 2

end

end A285592.P9124671593505846575

/-! ## A285592.P4326438984123129525

`A116928(a(n-1)+1)^A116928(A068385(n+1)+1)` with `a(0)=1`
-/

namespace A285592.P4326438984123129525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A116928 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ) ^ (A116928 (A068385 (n + 1) + 1).toNat : ℤ)

end

end A285592.P4326438984123129525

/-!
# A285593: Positions of 0 in A285592; complement of A285594.

The programs for A285593, there is no canonical definition to state claims against.
-/

/-! ## A285593.P3687377199802955843

`eq[0, A285592(n+1)]+1`
-/

namespace A285593.P3687377199802955843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285592 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285593.P3687377199802955843

/-! ## A285593.P13304781515848442486

`lt[A285592(A028310(n)), 1]`
-/

namespace A285593.P13304781515848442486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285592 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285593.P13304781515848442486

/-! ## A285593.P13119935167929807454

`lt[A285592(n+1), A285592(n+2)]+1`
-/

namespace A285593.P13119935167929807454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285592 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A285593.P13119935167929807454

/-! ## A285593.P6271676113377039496

`comp[A334486(A001147(n))]+n`
-/

namespace A285593.P6271676113377039496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334486 (A001147 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A285593.P6271676113377039496

/-! ## A285593.P15909231754678455566

`comp[A332054(A332098(n+1))]+n`
-/

namespace A285593.P15909231754678455566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332054 (A332098 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A285593.P15909231754678455566

/-!
# A285594: Positions of 1 in A285592; complement of A285593.

The programs for A285594, there is no canonical definition to state claims against.
-/

/-! ## A285594.P8903992714782917296

`comp[A285593(n+1)-1]+1`
-/

namespace A285594.P8903992714782917296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285593 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285594.P8903992714782917296

/-! ## A285594.P582696555682468495

`eq[n, n*A285592(a(n-1)+1)]` with `a(0)=2`
-/

namespace A285594.P582696555682468495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℤ) * A285592 (f2 (n - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285594.P582696555682468495

/-! ## A285594.P17368916993465978621

`filter[n+1, A285592(#)]`
-/

namespace A285594.P17368916993465978621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285592 (f1 j) = 1) n)

end

end A285594.P17368916993465978621

/-! ## A285594.P7061007060455676943

`eq[1, A285592(n+1)]+1`
-/

namespace A285594.P7061007060455676943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285592 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285594.P7061007060455676943

/-! ## A285594.P564969157743211053

`eq[A057427(n), A285592(A028310(n))]`
-/

namespace A285594.P564969157743211053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285592 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285594.P564969157743211053

/-! ## A285594.P14616112720420887168

`record[A285592(n+1)+n*A285592(n+2)]`
-/

namespace A285594.P14616112720420887168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285592 (n + 1) + (n : ℤ) * A285592 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285594.P14616112720420887168

/-! ## A285594.P10905352288530409013

`record[A059893(A059893(n+1))*A285592(n+1)]`
-/

namespace A285594.P10905352288530409013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A059893 (n + 1)).toNat * A285592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285594.P10905352288530409013

/-! ## A285594.P5568039597660798469

`record[A008619(n)*A285592(A008619(n))]`
-/

namespace A285594.P5568039597660798469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A285592 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285594.P5568039597660798469

/-!
# A285596: 0-limiting word of the morphism 0->11, 1-> 0111.

The programs for A285596, there is no canonical definition to state claims against.
-/

/-! ## A285596.P8492045771064107771

`char[A285598(n+1)-1]`
-/

namespace A285596.P8492045771064107771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285598 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285596.P8492045771064107771

/-! ## A285596.P7048187143503765316

`char[comp[A285597(n+1)-1]]`
-/

namespace A285596.P7048187143503765316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285597 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285596.P7048187143503765316

/-! ## A285596.P11916950295471399855

`char[A004442(comp[A285597(n+1)])]`
-/

namespace A285596.P11916950295471399855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285597 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285596.P11916950295471399855

/-! ## A285596.P8576662202475306351

`char[A004442(n)+char[A285597(n+1)]]`
-/

namespace A285596.P8576662202475306351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285597 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285596.P8576662202475306351

/-! ## A285596.P6223918376861446279

`char[A004442(comp[2*(A285601(n+1)+n)-1])]`
-/

namespace A285596.P6223918376861446279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A285601 (n + 1) + (n : ℤ)) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285596.P6223918376861446279

/-! ## A285596.P5494054453296577813

`A285671(A118759(n)+8)`
-/

namespace A285596.P5494054453296577813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285671 (A118759 n + 8).toNat

end

end A285596.P5494054453296577813

/-! ## A285596.P12883882490287922199

`A285599(A118759(n)+29)`
-/

namespace A285596.P12883882490287922199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285599 (A118759 n + 29).toNat

end

end A285596.P12883882490287922199

/-! ## A285596.P7945632583319939857

`A285671(A020744(n)-A118759(n))`
-/

namespace A285596.P7945632583319939857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285671 (A020744 n - A118759 n).toNat

end

end A285596.P7945632583319939857

/-! ## A285596.P2700524618413478218

`A285671((n+7)*A285671(n²+1)+1)`
-/

namespace A285596.P2700524618413478218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285671 ((n + 7 : ℤ) * A285671 (n ^ 2 + 1) + 1).toNat

end

end A285596.P2700524618413478218

/-!
# A285597: Positions of 0 in A285596; complement of A285598.

The programs for A285597, there is no canonical definition to state claims against.
-/

/-! ## A285597.P1040870579362493251

`2*(A285601(n+1)+n)-1`
-/

namespace A285597.P1040870579362493251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A285601 (n + 1) + (n : ℤ)) - 1

end

end A285597.P1040870579362493251

/-! ## A285597.P18353431648488144277

`A004442(comp[A285598(n+1)-1])`
-/

namespace A285597.P18353431648488144277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285598 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A285597.P18353431648488144277

/-! ## A285597.P13005526113554948015

`lt[A285596(n+1), 1]+1`
-/

namespace A285597.P13005526113554948015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285596 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285597.P13005526113554948015

/-! ## A285597.P8515182834539583226

`lt[char[A285598(n+1)], A285625(n+2)]`
-/

namespace A285597.P8515182834539583226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285598 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285625 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A285597.P8515182834539583226

/-! ## A285597.P18285689931411074850

`record[n+1-A263272(n*A285596(n+1))]`
-/

namespace A285597.P18285689931411074850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A263272 ((n : ℤ) * A285596 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285597.P18285689931411074850

/-! ## A285597.P11593847295167094412

`A285600(n+1)-2*A285596(A285600(n+1))`
-/

namespace A285597.P11593847295167094412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285600 (n + 1) - 2 * A285596 (A285600 (n + 1)).toNat

end

end A285597.P11593847295167094412

/-!
# A285598: Positions of 1 in A285596; complement of A285597.

The programs for A285598, there is no canonical definition to state claims against.
-/

/-! ## A285598.P16958132399975647356

`comp[A285597(n+1)-1]+1`
-/

namespace A285598.P16958132399975647356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285597 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285598.P16958132399975647356

/-! ## A285598.P8858233259850247493

`ceil(A285600(n+1)/2-n)`
-/

namespace A285598.P8858233259850247493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285600 (n + 1) : ℚ) / 2 - (n : ℚ)⌉

end

end A285598.P8858233259850247493

/-! ## A285598.P11083924410685332085

`filter[n+1, A285596(#)]`
-/

namespace A285598.P11083924410685332085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285596 (f1 j) = 1) n)

end

end A285598.P11083924410685332085

/-! ## A285598.P547928110294996823

`eq[1, A285596(n+1)]+1`
-/

namespace A285598.P547928110294996823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285596 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285598.P547928110294996823

/-! ## A285598.P15535259457389597561

`2-(A285596(a(n-1)+1)-a(n-1))` with `a(0)=2`
-/

namespace A285598.P15535259457389597561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - (A285596 (a (n - 1) + 1).toNat - a (n - 1))

end

end A285598.P15535259457389597561

/-! ## A285598.P14784109669745856116

`A110654(A285600(n+1))-n`
-/

namespace A285598.P14784109669745856116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A285600 (n + 1)).toNat - (n : ℤ)

end

end A285598.P14784109669745856116

/-! ## A285598.P7585631731485828897

`A285601(n+1)+A285599(A285597(n+1))`
-/

namespace A285598.P7585631731485828897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285601 (n + 1) + A285599 (A285597 (n + 1)).toNat

end

end A285598.P7585631731485828897

/-! ## A285598.P9636128940853668474

`A285601(n+1)+A285596(A285600(n+1))`
-/

namespace A285598.P9636128940853668474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285601 (n + 1) + A285596 (A285600 (n + 1)).toNat

end

end A285598.P9636128940853668474

/-! ## A285598.P3181212317285200573

`A285596(A285600(n+1))+record[(n+1)*A285599(n+1)]`
-/

namespace A285598.P3181212317285200573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285596 (A285600 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285598.P3181212317285200573

/-!
# A285599: 1-limiting word of the morphism 0->11, 1-> 0111.

The programs for A285599, there is no canonical definition to state claims against.
-/

/-! ## A285599.P17119043082669883142

`char[A285601(n+1)-1]`
-/

namespace A285599.P17119043082669883142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285601 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285599.P17119043082669883142

/-! ## A285599.P2200487094761934468

`char[comp[A285600(n+1)-1]]`
-/

namespace A285599.P2200487094761934468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285600 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285599.P2200487094761934468

/-! ## A285599.P9650856739066578144

`char[A004442(comp[A285600(n+1)])]`
-/

namespace A285599.P9650856739066578144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285600 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285599.P9650856739066578144

/-! ## A285599.P14775141036481460489

`char[A004442(n)+char[A285600(n+1)]]`
-/

namespace A285599.P14775141036481460489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285600 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285599.P14775141036481460489

/-! ## A285599.P10358279950850575936

`char[A001478(n+1)+A285601(n+1)+n]`
-/

namespace A285599.P10358279950850575936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A285601 (n + 1) + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285599.P10358279950850575936

/-! ## A285599.P15978222654350390249

`char[A004442(comp[2*(A285598(n+1)+n)-1])]`
-/

namespace A285599.P15978222654350390249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A285598 (n + 1) + (n : ℤ)) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285599.P15978222654350390249

/-! ## A285599.P3171136836251564758

`and(A263561(A130766(n)), A285668(n+11))`
-/

namespace A285599.P3171136836251564758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A263561 (A130766 n).toNat) (A285668 (n + 11))

end

end A285599.P3171136836251564758

/-! ## A285599.P17415845816110281122

`and(A077041(A167172(n)), A285668(n+11))`
-/

namespace A285599.P17415845816110281122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077041 (A167172 n).toNat) (A285668 (n + 11))

end

end A285599.P17415845816110281122

/-! ## A285599.P5403890957255204596

`and(A122691(A000224(n+1)), A285668(n+11))`
-/

namespace A285599.P5403890957255204596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122691 (A000224 (n + 1)).toNat) (A285668 (n + 11))

end

end A285599.P5403890957255204596

