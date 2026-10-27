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
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A249000: Number of length n+4 0..7 arrays with no five consecutive terms having two times the sum of any three elements equal to three times the sum of the remaining two.

The programs for A249000, there is no canonical definition to state claims against.
-/

/-! ## A249000.P5566367769254178665

`A249001(A055999(n+4))`
-/

namespace A249000.P5566367769254178665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A055999 (n + 4)).toNat

end

end A249000.P5566367769254178665

/-! ## A249000.P6962125398510204119

`A249001(eq[4, A219347(n)])`
-/

namespace A249000.P6962125398510204119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249000.P6962125398510204119

/-! ## A249000.P11637550185634427586

`A249001(eq[6, A193592(n)])`
-/

namespace A249000.P11637550185634427586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249000.P11637550185634427586

/-! ## A249000.P16719201315227751166

`A249001(eq[10, A185782(n+1)])`
-/

namespace A249000.P16719201315227751166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249000.P16719201315227751166

/-! ## A249000.P3848543114168773852

`A249001(eq[7, A200370(n+1)])`
-/

namespace A249000.P3848543114168773852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249000.P3848543114168773852

/-!
# A249001: T(n,k)=Number of length n+4 0..k arrays with no five consecutive terms having two times the sum of any three elements equal to three times the sum of the remaining two.

The programs for A249001, there is no canonical definition to state claims against.
-/

/-! ## A249001.P12060149185506465723

`A249466(n+1)-A339942(A339953(n+1))`
-/

namespace A249001.P12060149185506465723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (n + 1) - A339942 (A339953 (n + 1)).toNat

end

end A249001.P12060149185506465723

/-!
# A249002: Number of length 1+4 0..n arrays with no five consecutive terms having two times the sum of any three elements equal to three times the sum of the remaining two.

The programs for A249002, there is no canonical definition to state claims against.
-/

/-! ## A249002.P11400995425372246859

`(n+2)^5-A248988(n+1)`
-/

namespace A249002.P11400995425372246859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 5 : ℤ) - A248988 (n + 1)

end

end A249002.P11400995425372246859

/-! ## A249002.P18242783481567485688

`A249001(∑[n]+1)`
-/

namespace A249002.P18242783481567485688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249002.P18242783481567485688

/-! ## A249002.P7348053395000994351

`lcm(2, A249001(A000124(n)))`
-/

namespace A249002.P7348053395000994351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249001 (A000124 n).toNat)

end

end A249002.P7348053395000994351

/-! ## A249002.P10047668011599821203

`record[gcd(A002262(n), A249001(n+1))]`
-/

namespace A249002.P10047668011599821203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A249001 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249002.P10047668011599821203

/-! ## A249002.P33436382080970776

`record[or(A248952(n), A249001(n+1))]`
-/

namespace A249002.P33436382080970776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A248952 n) (A249001 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249002.P33436382080970776

/-! ## A249002.P1221819629766478361

`record[root(A249001(n+1), A002260(n+1))]`
-/

namespace A249002.P1221819629766478361
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A249001 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249002.P1221819629766478361

/-! ## A249002.P11681859271951414315

`A249001(A000124(n))%A066525(n+1)`
-/

namespace A249002.P11681859271951414315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249001 (A000124 n).toNat) (A066525 (n + 1))

end

end A249002.P11681859271951414315

/-!
# A249003: Number of length 2+4 0..n arrays with no five consecutive terms having two times the sum of any three elements equal to three times the sum of the remaining two.

The programs for A249003, there is no canonical definition to state claims against.
-/

/-! ## A249003.P4319361710296176276

`A249001(∑[n+1]+2)`
-/

namespace A249003.P4319361710296176276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249003.P4319361710296176276

/-! ## A249003.P3994914917986177580

`lcm(2, A249001(A167487(n)-5))`
-/

namespace A249003.P3994914917986177580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249001 (A167487 n - 5).toNat)

end

end A249003.P3994914917986177580

/-! ## A249003.P9714485044647605730

`or(1, A249001(A133263(n+1)))-1`
-/

namespace A249003.P9714485044647605730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A249001 (A133263 (n + 1)).toNat) - 1

end

end A249003.P9714485044647605730

/-! ## A249003.P14483287199482276000

`A249001(A167487(n)-5)%A016976(n)`
-/

namespace A249003.P14483287199482276000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249001 (A167487 n - 5).toNat) (A016976 n)

end

end A249003.P14483287199482276000

/-! ## A249003.P16298615514756748063

`A249001(A133263(n+1))+A000007(n+1)`
-/

namespace A249003.P16298615514756748063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A249003.P16298615514756748063

/-! ## A249003.P11080458842338343033

`A007318(C(n, 2))*A249001(A133263(n+1))`
-/

namespace A249003.P11080458842338343033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A249001 (A133263 (n + 1)).toNat

end

end A249003.P11080458842338343033

/-! ## A249003.P7539472933803084483

`A007318(C(n, n+1))*A249001(A167487(n)-5)`
-/

namespace A249003.P7539472933803084483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n (n + 1)) * A249001 (A167487 n - 5).toNat

end

end A249003.P7539472933803084483

/-!
# A249004: Number of length 3+4 0..n arrays with no five consecutive terms having two times the sum of any three elements equal to three times the sum of the remaining two.

The programs for A249004, there is no canonical definition to state claims against.
-/

/-! ## A249004.P13453295488960524854

`A249001(∑[n+2]+4)`
-/

namespace A249004.P13453295488960524854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249004.P13453295488960524854

/-! ## A249004.P10798998088491737357

`lcm(2, A249001(A167614(n+1)))`
-/

namespace A249004.P10798998088491737357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249001 (A167614 (n + 1)).toNat)

end

end A249004.P10798998088491737357

/-! ## A249004.P2690630836350653200

`A249001(A167614(n+1))%A016904(n)`
-/

namespace A249004.P2690630836350653200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249001 (A167614 (n + 1)).toNat) (A016904 n)

end

end A249004.P2690630836350653200

/-! ## A249004.P13923688234302287060

`A249001(A167614(n+1))+A000007(n+1)`
-/

namespace A249004.P13923688234302287060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A249004.P13923688234302287060

/-! ## A249004.P15533411100602134717

`A178489(n+1)*A249001(A167614(n+1))`
-/

namespace A249004.P15533411100602134717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (n + 1) * A249001 (A167614 (n + 1)).toNat

end

end A249004.P15533411100602134717

/-!
# A249005: Number of length 4+4 0..n arrays with no five consecutive terms having two times the sum of any three elements equal to three times the sum of the remaining two.

The programs for A249005, there is no canonical definition to state claims against.
-/

/-! ## A249005.P15477516953564680048

`A249001(A145018(n+4))`
-/

namespace A249005.P15477516953564680048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A145018 (n + 4)).toNat

end

end A249005.P15477516953564680048

/-! ## A249005.P13720013122848482407

`A249001(A052905(n)+9)`
-/

namespace A249005.P13720013122848482407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A052905 n + 9).toNat

end

end A249005.P13720013122848482407

/-! ## A249005.P8571865780046010614

`A249001(A055999(n)+10)`
-/

namespace A249005.P8571865780046010614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A055999 n + 10).toNat

end

end A249005.P8571865780046010614

/-! ## A249005.P2961107697019650552

`A249001(A167614(n+2)+1)`
-/

namespace A249005.P2961107697019650552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A167614 (n + 2) + 1).toNat

end

end A249005.P2961107697019650552

/-! ## A249005.P372841934952053008

`A249001(A166136(n+2)-2)`
-/

namespace A249005.P372841934952053008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A166136 (n + 2) - 2).toNat

end

end A249005.P372841934952053008

/-! ## A249005.P18151089989138302652

`A249001(A167487(n+2)-3)`
-/

namespace A249005.P18151089989138302652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A167487 (n + 2) - 3).toNat

end

end A249005.P18151089989138302652

/-! ## A249005.P16779865042283659421

`A249001(A166136(n+1)+1+n)`
-/

namespace A249005.P16779865042283659421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A249005.P16779865042283659421

/-! ## A249005.P14780627260620877688

`A249001(Δ[A023545(n+1)-n²])`
-/

namespace A249005.P14780627260620877688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (f1 (n + 1) - f1 n).toNat

end

end A249005.P14780627260620877688

/-! ## A249005.P10025797946561778023

`A249001(A038722(Δ[A034857(n+1)]))`
-/

namespace A249005.P10025797946561778023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A249005.P10025797946561778023

/-!
# A249006: Number of length 5+4 0..n arrays with no five consecutive terms having two times the sum of any three elements equal to three times the sum of the remaining two.

The programs for A249006, there is no canonical definition to state claims against.
-/

/-! ## A249006.P2336214714802736312

`A249001(A167499(n+3))`
-/

namespace A249006.P2336214714802736312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A167499 (n + 3)).toNat

end

end A249006.P2336214714802736312

/-! ## A249006.P6909118850444627209

`A249001(A155212(n)+13)`
-/

namespace A249006.P6909118850444627209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A155212 n + 13).toNat

end

end A249006.P6909118850444627209

/-! ## A249006.P14219122511415946953

`A249001(A000217(n+4)+5)`
-/

namespace A249006.P14219122511415946953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A000217 (n + 4) + 5).toNat

end

end A249006.P14219122511415946953

/-! ## A249006.P14122984307815295275

`A249001(A000124(n+5)-(n+1))`
-/

namespace A249006.P14122984307815295275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A249006.P14122984307815295275

/-! ## A249006.P10558402896990030813

`A249001(A038722(Δ[A023545(n+1)]))`
-/

namespace A249006.P10558402896990030813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A249006.P10558402896990030813

/-!
# A249007: Number of length 6+4 0..n arrays with no five consecutive terms having two times the sum of any three elements equal to three times the sum of the remaining two.

The programs for A249007, there is no canonical definition to state claims against.
-/

/-! ## A249007.P9510236173891809530

`A249001(A167499(n+4)+1)`
-/

namespace A249007.P9510236173891809530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A167499 (n + 4) + 1).toNat

end

end A249007.P9510236173891809530

/-! ## A249007.P6435427546748833190

`A249001(A000217(n+5)+6)`
-/

namespace A249007.P6435427546748833190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A000217 (n + 5) + 6).toNat

end

end A249007.P6435427546748833190

/-! ## A249007.P7519584594316320517

`A249001(A133263(n+6)-(n+2))`
-/

namespace A249007.P7519584594316320517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A249007.P7519584594316320517

/-! ## A249007.P13166397550688541870

`A249001(A046691(n+2)+A020719(n+8))`
-/

namespace A249007.P13166397550688541870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A046691 (n + 2) + A020719 (n + 8)).toNat

end

end A249007.P13166397550688541870

/-!
# A249008: Number of length 7+4 0..n arrays with no five consecutive terms having two times the sum of any three elements equal to three times the sum of the remaining two.

The programs for A249008, there is no canonical definition to state claims against.
-/

/-! ## A249008.P14995243914512984722

`A249001(A166136(n+5)+1)`
-/

namespace A249008.P14995243914512984722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A166136 (n + 5) + 1).toNat

end

end A249008.P14995243914512984722

/-! ## A249008.P14308489557584259865

`A249001(A167499(n+5)+2)`
-/

namespace A249008.P14308489557584259865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A167499 (n + 5) + 2).toNat

end

end A249008.P14308489557584259865

/-! ## A249008.P18194200078846237433

`A249001(A167614(n+5)+4)`
-/

namespace A249008.P18194200078846237433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A167614 (n + 5) + 4).toNat

end

end A249008.P18194200078846237433

/-! ## A249008.P5810957995581389506

`A249001(A000217(n+6)+7)`
-/

namespace A249008.P5810957995581389506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A000217 (n + 6) + 7).toNat

end

end A249008.P5810957995581389506

/-! ## A249008.P1351781539099908861

`A249001(A161680(n+7)+7)`
-/

namespace A249008.P1351781539099908861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A161680 (n + 7) + 7).toNat

end

end A249008.P1351781539099908861

/-! ## A249008.P2050649525513346488

`A249001(A133263(n+7)-(n+2))`
-/

namespace A249008.P2050649525513346488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A133263 (n + 7) - (n + 2 : ℤ)).toNat

end

end A249008.P2050649525513346488

/-!
# A249009: a(n+1) gives the number of occurrences of the first digit of a(n) so far, up to and including a(n), with a(0)=0.

The programs for A249009, there is no canonical definition to state claims against.
-/

/-! ## A249009.P13538681661705345793

`A358851(n)%record[A288776(n)]`
-/

namespace A249009.P13538681661705345793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358851 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A249009.P13538681661705345793

/-! ## A249009.P9085731127145471557

`A358851(n)^exp(A123565(n+1))`
-/

namespace A249009.P9085731127145471557
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A358851 n : ℝ) ^ (Real.exp (A123565 (n + 1) : ℝ))

end

end A249009.P9085731127145471557

/-! ## A249009.P8037252654416386919

`A358851(C(n, A330749(3*n+4)))`
-/

namespace A249009.P8037252654416386919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358851 (Nat.choose n (A330749 (3 * n + 4)).toNat)

end

end A249009.P8037252654416386919

/-! ## A249009.P4292420922395584034

`A358851(n)^A004111(ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A249009.P4292420922395584034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358851 n : ℚ) ^ (A004111 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat : ℤ)

end

end A249009.P4292420922395584034

/-! ## A249009.P7741310680966109184

`A358851(n)^A052709(ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A249009.P7741310680966109184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358851 n : ℚ) ^ (A052709 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat : ℤ)

end

end A249009.P7741310680966109184

/-!
# A249011: Smallest prime(i) such that the constellation of the n following prime gaps is the same constellation as the gaps following prime(i+n).

The programs for A249011, there is no canonical definition to state claims against.
-/

/-! ## A249011.P2166901166354083706

`A006530(A078365(n)+A008778(n))`
-/

namespace A249011.P2166901166354083706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A078365 n + A008778 n).toNat

end

end A249011.P2166901166354083706

/-!
# A249013: a(n) = floor( (n-1) * (n+4) / 10 ).

The programs for A249013, the canonical program `A249013.P12026278109549887599` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249013 has offset 1).

The definition of A249013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n+5)/10)` (program `A249013.P12026278109549887599`, by `A249013.P12026278109549887599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249013.P12026278109549887599

`floor(n*(n+5)/10)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249013

/-- `floor(n*(n+5)/10)` -/
def P12026278109549887599.Spec : Prop :=
  ∀ n, P12026278109549887599.a n = A249013 (n + 1)

theorem P12026278109549887599.correct : P12026278109549887599.Spec := by
  intro n
  simp only [A249013, Nat.add_sub_cancel]

end A249013

/-! ## A249013.P15690805533152121231

`a(n-5)+n` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A249013.P15690805533152121231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2, 3] fun n a =>
  a (n - 5) + n

end

end A249013.P15690805533152121231

namespace A249013

/-- `a(n-5)+n` -/
def P15690805533152121231.Spec : Prop :=
  ∀ n, (P15690805533152121231.a n : ℤ) = A249013 (n + 1)

end A249013

/-! ## A249013.P5608091303695928673

`round(C(n+3, 2)/5)-1`
-/

namespace A249013.P5608091303695928673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 3) 2 : ℚ) / 5) - 1

end

end A249013.P5608091303695928673

namespace A249013

/-- `round(C(n+3, 2)/5)-1` -/
def P5608091303695928673.Spec : Prop :=
  ∀ n, P5608091303695928673.a n = A249013 (n + 1)

end A249013

/-! ## A249013.P8336052630106372681

`n-floor(∑[a(n-1)-1]/5)` with `a(0)=3`
-/

namespace A249013.P8336052630106372681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌋

end

end A249013.P8336052630106372681

namespace A249013

/-- `n-floor(∑[a(n-1)-1]/5)` -/
def P8336052630106372681.Spec : Prop :=
  ∀ n, P8336052630106372681.a n = A249013 (n + 1)

end A249013

/-! ## A249013.P820126593815966041

`round(record[C(n, 2)-1-2*n]/5)`
-/

namespace A249013.P820126593815966041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 5)

end

end A249013.P820126593815966041

namespace A249013

/-- `round(record[C(n, 2)-1-2*n]/5)` -/
def P820126593815966041.Spec : Prop :=
  ∀ n, P820126593815966041.a n = A249013 (n + 1)

end A249013

/-! ## A249013.P6820403380116242354

`A249020(n)-1`
-/

namespace A249013.P6820403380116242354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249020 n - 1

end

end A249013.P6820403380116242354

namespace A249013

/-- `A249020(n)-1` -/
def P6820403380116242354.Spec : Prop :=
  ∀ n, P6820403380116242354.a n = A249013 (n + 1)

theorem P6820403380116242354.correct : P6820403380116242354.Spec := by
  intro n
  simp only [A249013, Nat.add_sub_cancel, A249013.P6820403380116242354.a, A249013.P12026278109549887599.a, A249020, A249020.P6334885499343868311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249013

/-! ## A249013.P11150200980320937840

`A398054(n)-n²`
-/

namespace A249013.P11150200980320937840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398054 n - (n ^ 2 : ℤ)

end

end A249013.P11150200980320937840

namespace A249013

/-- `A398054(n)-n²` -/
def P11150200980320937840.Spec : Prop :=
  ∀ n, P11150200980320937840.a n = A249013 (n + 1)

end A249013

/-! ## A249013.P11363537943623716044

`∑[A239492(n)]-C(n, 2)`
-/

namespace A249013.P11363537943623716044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose n 2 : ℤ)

end

end A249013.P11363537943623716044

namespace A249013

/-- `∑[A239492(n)]-C(n, 2)` -/
def P11363537943623716044.Spec : Prop :=
  ∀ n, P11363537943623716044.a n = A249013 (n + 1)

end A249013

/-! ## A249013.P16782107971222706519

`n²+n-A398053(n)`
-/

namespace A249013.P16782107971222706519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) - A398053 n

end

end A249013.P16782107971222706519

namespace A249013

/-- `n²+n-A398053(n)` -/
def P16782107971222706519.Spec : Prop :=
  ∀ n, P16782107971222706519.a n = A249013 (n + 1)

end A249013

/-! ## A249013.P13337580895945955325

`ceil(A034856(n+1)/5)-1`
-/

namespace A249013.P13337580895945955325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034856 (n + 1) : ℚ) / 5⌉ - 1

end

end A249013.P13337580895945955325

namespace A249013

/-- `ceil(A034856(n+1)/5)-1` -/
def P13337580895945955325.Spec : Prop :=
  ∀ n, P13337580895945955325.a n = A249013 (n + 1)

end A249013

/-! ## A249013.P16973800544332743903

`ceil(∑[A000027(n+1)+1]/5)-1`
-/

namespace A249013.P16973800544332743903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌉ - 1

end

end A249013.P16973800544332743903

namespace A249013

/-- `ceil(∑[A000027(n+1)+1]/5)-1` -/
def P16973800544332743903.Spec : Prop :=
  ∀ n, P16973800544332743903.a n = A249013 (n + 1)

end A249013

/-! ## A249013.P9926696421917033378

`A130520(n)+A090223(n)`
-/

namespace A249013.P9926696421917033378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 n + A090223 n

end

end A249013.P9926696421917033378

namespace A249013

/-- `A130520(n)+A090223(n)` -/
def P9926696421917033378.Spec : Prop :=
  ∀ n, P9926696421917033378.a n = A249013 (n + 1)

end A249013

/-! ## A249013.P8898693017752100797

`A054925(n)-A368482(n)`
-/

namespace A249013.P8898693017752100797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n - A368482 n

end

end A249013.P8898693017752100797

namespace A249013

/-- `A054925(n)-A368482(n)` -/
def P8898693017752100797.Spec : Prop :=
  ∀ n, P8898693017752100797.a n = A249013 (n + 1)

theorem P8898693017752100797.correct : P8898693017752100797.Spec := by
  intro n
  simp only [A249013, Nat.add_sub_cancel, A249013.P8898693017752100797.a, A249013.P12026278109549887599.a, A054925, A054925.P9513446118866584636.a, A368482, A368482.P6402120966291890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249013

/-! ## A249013.P6396698730048566335

`A398054(n)%A253909(n)`
-/

namespace A249013.P6396698730048566335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398054 n) (A253909 n)

end

end A249013.P6396698730048566335

namespace A249013

/-- `A398054(n)%A253909(n)` -/
def P6396698730048566335.Spec : Prop :=
  ∀ n, P6396698730048566335.a n = A249013 (n + 1)

end A249013

/-! ## A249013.P9145121343767015069

`A090223(n)+∑[A002266(n)]`
-/

namespace A249013.P9145121343767015069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249013.P9145121343767015069

namespace A249013

/-- `A090223(n)+∑[A002266(n)]` -/
def P9145121343767015069.Spec : Prop :=
  ∀ n, P9145121343767015069.a n = A249013 (n + 1)

end A249013

/-! ## A249013.P13680412839436273314

`A117450(n)-(A130520(n)+1)`
-/

namespace A249013.P13680412839436273314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117450 n - (A130520 n + 1)

end

end A249013.P13680412839436273314

namespace A249013

/-- `A117450(n)-(A130520(n)+1)` -/
def P13680412839436273314.Spec : Prop :=
  ∀ n, P13680412839436273314.a n = A249013 (n + 1)

end A249013

/-! ## A249013.P10769342089191000212

`A227353(n+1)-A036404(n)`
-/

namespace A249013.P10769342089191000212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227353 (n + 1) - A036404 n

end

end A249013.P10769342089191000212

namespace A249013

/-- `A227353(n+1)-A036404(n)` -/
def P10769342089191000212.Spec : Prop :=
  ∀ n, P10769342089191000212.a n = A249013 (n + 1)

end A249013

/-! ## A249013.P8520609934275834466

`A033437(n)-A227353(n+1)+n`
-/

namespace A249013.P8520609934275834466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033437 n - A227353 (n + 1) + (n : ℤ)

end

end A249013.P8520609934275834466

namespace A249013

/-- `A033437(n)-A227353(n+1)+n` -/
def P8520609934275834466.Spec : Prop :=
  ∀ n, P8520609934275834466.a n = A249013 (n + 1)

end A249013

/-! ## A249013.P2083116044312111645

`A002266(n)+A008738(n)-A130520(n)`
-/

namespace A249013.P2083116044312111645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n + (A008738 n - A130520 n)

end

end A249013.P2083116044312111645

namespace A249013

/-- `A002266(n)+A008738(n)-A130520(n)` -/
def P2083116044312111645.Spec : Prop :=
  ∀ n, P2083116044312111645.a n = A249013 (n + 1)

end A249013

/-! ## A249013.P528808754147862033

`A000217(n)+A000217(n)-A398053(n)`
-/

namespace A249013.P528808754147862033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A000217 n - A398053 n)

end

end A249013.P528808754147862033

namespace A249013

/-- `A000217(n)+A000217(n)-A398053(n)` -/
def P528808754147862033.Spec : Prop :=
  ∀ n, P528808754147862033.a n = A249013 (n + 1)

end A249013

/-!
# A249014: A double binomial sum.

The programs for A249014, there is no canonical definition to state claims against.
-/

/-! ## A249014.P14662176874353136210

`A322943(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A249014.P14662176874353136210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322943 n + (n : ℤ) * a (n - 1)

end

end A249014.P14662176874353136210

/-!
# A249015: A binomial convolution.

The programs for A249015, the canonical program `A249015.P12964076384529952879` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249015 has offset 0).

The definition of A249015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249015.P12964076384529952879

`a(n-1)+2*n*a(n-2)+(n-1)*n*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249015

/-- `a(n-1)+2*n*a(n-2)+(n-1)*n*a(n-3)` -/
def P12964076384529952879.Spec : Prop :=
  ∀ n, P12964076384529952879.a n = A249015 n

theorem P12964076384529952879.correct : P12964076384529952879.Spec := by
  intro n
  simp only [A249015]

end A249015

/-! ## A249015.P5368168308053191680

`A027709(C(n!, 2))+1`
-/

namespace A249015.P5368168308053191680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (Nat.choose (Nat.factorial n) 2) + 1

end

end A249015.P5368168308053191680

namespace A249015

/-- `A027709(C(n!, 2))+1` -/
def P5368168308053191680.Spec : Prop :=
  ∀ n, P5368168308053191680.a n = A249015 n

end A249015

/-!
# A249016: Indices of records in A055460 (number of primes dividing the squarefree part of n!).

The programs for A249016, there is no canonical definition to state claims against.
-/

/-! ## A249016.P3849388779256139943

`lt[A360117(A360106(2*n)), A360074(3*n+1)]`
-/

namespace A249016.P3849388779256139943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360117 (A360106 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249016.P3849388779256139943

/-!
# A249017: Records in A055460 (number of primes dividing the squarefree part of n!).

The programs for A249017, the canonical program `A249017.P1336065343539493697` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249017 has offset 1).

The definition of A249017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4799 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249017.P1336065343539493697

`record[A055460(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A249017

/-- `record[A055460(n+1)]` -/
def P1336065343539493697.Spec : Prop :=
  ∀ n, P1336065343539493697.a n = A249017 (n + 1)

theorem P1336065343539493697.correct : P1336065343539493697.Spec := by
  intro n
  simp only [A249017, Nat.add_sub_cancel]

end A249017

/-! ## A249017.P15402022061608670601

`A055460(A249016(n+1))`
-/

namespace A249017.P15402022061608670601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055460 (A249016 (n + 1)).toNat

end

end A249017.P15402022061608670601

namespace A249017

/-- `A055460(A249016(n+1))` -/
def P15402022061608670601.Spec : Prop :=
  ∀ n, P15402022061608670601.a n = A249017 (n + 1)

end A249017

/-! ## A249017.P1582893479826485081

`record[A000720(n+1)-A348841(n+1)]`
-/

namespace A249017.P1582893479826485081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A348841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249017.P1582893479826485081

namespace A249017

/-- `record[A000720(n+1)-A348841(n+1)]` -/
def P1582893479826485081.Spec : Prop :=
  ∀ n, P1582893479826485081.a n = A249017 (n + 1)

end A249017

/-! ## A249017.P2577482145419294420

`record[A056172(2*(n+1))-A348841(n+1)]`
-/

namespace A249017.P2577482145419294420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * (n + 1)) - A348841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249017.P2577482145419294420

namespace A249017

/-- `record[A056172(2*(n+1))-A348841(n+1)]` -/
def P2577482145419294420.Spec : Prop :=
  ∀ n, P2577482145419294420.a n = A249017 (n + 1)

end A249017

/-! ## A249017.P16343100732921532338

`record[log2(A055077(n+1))]`
-/

namespace A249017.P16343100732921532338
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A055077 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249017.P16343100732921532338

namespace A249017

/-- `record[log2(A055077(n+1))]` -/
def P16343100732921532338.Spec : Prop :=
  ∀ n, P16343100732921532338.a n = (A249017 (n + 1) : ℝ)

end A249017

/-!
# A249019: Number of ternary words of length n in which all digits 0..2 occur in every 6 consecutive digits.

The programs for A249019, there is no canonical definition to state claims against.
-/

/-! ## A249019.P12880899012725603944

`A226602((comp[p?[comp[3*n]]]+1)*n!)`
-/

namespace A249019.P12880899012725603944
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) * Nat.factorial n)

end

end A249019.P12880899012725603944

/-! ## A249019.P13900746272230773872

`A193792(∑[record[A208447(n)]])`
-/

namespace A249019.P13900746272230773872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193792 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249019.P13900746272230773872

/-! ## A249019.P10437259631176700741

`record[A152252(A183163(n+1))]`
-/

namespace A249019.P10437259631176700741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152252 (A183163 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249019.P10437259631176700741

/-!
# A249020: a(n) = floor( n * (n+5) / 10) + 1.

The programs for A249020, the canonical program `A249020.P6334885499343868311` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249020 has offset 0).

The definition of A249020 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n+5)/10)+1` (program `A249020.P6334885499343868311`, by `A249020.P6334885499343868311.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249020.P6334885499343868311

`floor(n*(n+5)/10)+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249020

/-- `floor(n*(n+5)/10)+1` -/
def P6334885499343868311.Spec : Prop :=
  ∀ n, P6334885499343868311.a n = A249020 n

theorem P6334885499343868311.correct : P6334885499343868311.Spec := by
  intro n
  simp only [A249020]

end A249020

/-! ## A249020.P18197161334985391447

`round(C(n+3, 2)/5)`
-/

namespace A249020.P18197161334985391447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 3) 2 : ℚ) / 5)

end

end A249020.P18197161334985391447

namespace A249020

/-- `round(C(n+3, 2)/5)` -/
def P18197161334985391447.Spec : Prop :=
  ∀ n, P18197161334985391447.a n = A249020 n

end A249020

/-! ## A249020.P349597526238616269

`floor((C(n+3, 2)+2)/5)`
-/

namespace A249020.P349597526238616269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 3) 2 + 2 : ℚ) / 5⌋

end

end A249020.P349597526238616269

namespace A249020

/-- `floor((C(n+3, 2)+2)/5)` -/
def P349597526238616269.Spec : Prop :=
  ∀ n, P349597526238616269.a n = A249020 n

end A249020

/-! ## A249020.P15424477124995731271

`round(lcm(n+2, n+3)/10)`
-/

namespace A249020.P15424477124995731271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm (n + 2) (n + 3) : ℚ) / 10)

end

end A249020.P15424477124995731271

namespace A249020

/-- `round(lcm(n+2, n+3)/10)` -/
def P15424477124995731271.Spec : Prop :=
  ∀ n, P15424477124995731271.a n = A249020 n

end A249020

/-! ## A249020.P5920920095019193063

`round(record[(n-2)*(n-3)/10])`
-/

namespace A249020.P5920920095019193063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * ((n : ℤ) - 3) : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A249020.P5920920095019193063

namespace A249020

/-- `round(record[(n-2)*(n-3)/10])` -/
def P5920920095019193063.Spec : Prop :=
  ∀ n, P5920920095019193063.a n = A249020 n

end A249020

/-! ## A249020.P18031096624766368431

`round((n+2)/(10*acot(n+3)))`
-/

namespace A249020.P18031096624766368431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / (10 * SequenceMachineLib.acot (n + 3 : ℝ)))

end

end A249020.P18031096624766368431

namespace A249020

/-- `round((n+2)/(10*acot(n+3)))` -/
def P18031096624766368431.Spec : Prop :=
  ∀ n, P18031096624766368431.a n = A249020 n

end A249020

/-! ## A249020.P5762540359446691820

`∑[∑[(2-∑[n+1]%5)%2]]`
-/

namespace A249020.P5762540359446691820
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - (((∑ j ∈ Finset.range (n + 1), f3 j) % 5 : ℕ) : ℤ)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249020.P5762540359446691820

namespace A249020

/-- `∑[∑[(2-∑[n+1]%5)%2]]` -/
def P5762540359446691820.Spec : Prop :=
  ∀ n, P5762540359446691820.a n = A249020 n

end A249020

/-! ## A249020.P16421220385238133319

`∑[∑[floor(a(n-5))]]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=0, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A249020.P16421220385238133319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, 0, 0] fun n f2 =>
  f2 (n - 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249020.P16421220385238133319

namespace A249020

/-- `∑[∑[floor(a(n-5))]]` -/
def P16421220385238133319.Spec : Prop :=
  ∀ n, P16421220385238133319.a n = A249020 n

end A249020

/-! ## A249020.P1915932243569682092

`∑[∑[a(n-5)^3]]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=0, a(4)=0`
-/

namespace A249020.P1915932243569682092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, 0, 0] fun n f2 =>
  f2 (n - 5) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249020.P1915932243569682092

namespace A249020

/-- `∑[∑[a(n-5)^3]]` -/
def P1915932243569682092.Spec : Prop :=
  ∀ n, P1915932243569682092.a n = A249020 n

end A249020

/-! ## A249020.P892823252272378556

`∑[ceil(A106250(n)/2)]`
-/

namespace A249020.P892823252272378556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106250 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249020.P892823252272378556

namespace A249020

/-- `∑[ceil(A106250(n)/2)]` -/
def P892823252272378556.Spec : Prop :=
  ∀ n, P892823252272378556.a n = A249020 n

end A249020

/-! ## A249020.P2636601855306934975

`floor(A167614(n+1)/5)`
-/

namespace A249020.P2636601855306934975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167614 (n + 1) : ℚ) / 5⌋

end

end A249020.P2636601855306934975

namespace A249020

/-- `floor(A167614(n+1)/5)` -/
def P2636601855306934975.Spec : Prop :=
  ∀ n, P2636601855306934975.a n = A249020 n

end A249020

/-! ## A249020.P14069136560674666149

`round(A000217(n+2)/5)`
-/

namespace A249020.P14069136560674666149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000217 (n + 2) : ℚ) / 5)

end

end A249020.P14069136560674666149

namespace A249020

/-- `round(A000217(n+2)/5)` -/
def P14069136560674666149.Spec : Prop :=
  ∀ n, P14069136560674666149.a n = A249020 n

end A249020

/-! ## A249020.P12416848523826353583

`∑[A239492(n)+1-n]`
-/

namespace A249020.P12416848523826353583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239492 n + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249020.P12416848523826353583

namespace A249020

/-- `∑[A239492(n)+1-n]` -/
def P12416848523826353583.Spec : Prop :=
  ∀ n, P12416848523826353583.a n = A249020 n

end A249020

/-! ## A249020.P12435908407350110228

`Δ[Δ[A011795(n+3)]]`
-/

namespace A249020.P12435908407350110228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011795 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249020.P12435908407350110228

namespace A249020

/-- `Δ[Δ[A011795(n+3)]]` -/
def P12435908407350110228.Spec : Prop :=
  ∀ n, P12435908407350110228.a n = A249020 n

end A249020

/-! ## A249020.P4433827890948682976

`A025772(2*n)`
-/

namespace A249020.P4433827890948682976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025772 (2 * n)

end

end A249020.P4433827890948682976

namespace A249020

/-- `A025772(2*n)` -/
def P4433827890948682976.Spec : Prop :=
  ∀ n, P4433827890948682976.a n = A249020 n

end A249020

/-! ## A249020.P12728850438335238601

`∑[∑[A131670(2*n)]]`
-/

namespace A249020.P12728850438335238601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131670 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249020.P12728850438335238601

namespace A249020

/-- `∑[∑[A131670(2*n)]]` -/
def P12728850438335238601.Spec : Prop :=
  ∀ n, P12728850438335238601.a n = A249020 n

end A249020

/-! ## A249020.P8846364006759077789

`A211535(2*n+9)`
-/

namespace A249020.P8846364006759077789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211535 (2 * n + 9)

end

end A249020.P8846364006759077789

namespace A249020

/-- `A211535(2*n+9)` -/
def P8846364006759077789.Spec : Prop :=
  ∀ n, P8846364006759077789.a n = A249020 n

end A249020

/-! ## A249020.P2964267677418648308

`A025779(3*n)`
-/

namespace A249020.P2964267677418648308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025779 (3 * n)

end

end A249020.P2964267677418648308

namespace A249020

/-- `A025779(3*n)` -/
def P2964267677418648308.Spec : Prop :=
  ∀ n, P2964267677418648308.a n = A249020 n

end A249020

/-! ## A249020.P6958123620213999861

`∑[A254011(3*n)]`
-/

namespace A249020.P6958123620213999861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249020.P6958123620213999861

namespace A249020

/-- `∑[A254011(3*n)]` -/
def P6958123620213999861.Spec : Prop :=
  ∀ n, P6958123620213999861.a n = A249020 n

end A249020

/-! ## A249020.P16609543980767853858

`A025808(4*n)`
-/

namespace A249020.P16609543980767853858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025808 (4 * n)

end

end A249020.P16609543980767853858

namespace A249020

/-- `A025808(4*n)` -/
def P16609543980767853858.Spec : Prop :=
  ∀ n, P16609543980767853858.a n = A249020 n

end A249020

/-!
# A249025: Numbers k such that 3^k - 1 is not squarefree.

The programs for A249025, there is no canonical definition to state claims against.
-/

/-! ## A249025.P6411279454518969031

`lt[A200726(n+1), A055396(n+1)²]`
-/

namespace A249025.P6411279454518969031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249025.P6411279454518969031

/-! ## A249025.P13521854576020714101

`lt[A200726(n+1), A026692(a(n-1)+37)]` with `a(0)=-1`
-/

namespace A249025.P13521854576020714101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  A026692 (f2 (n - 1) + 37).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249025.P13521854576020714101

/-! ## A249025.P1890069803335242708

`lt[A200726(A133265(n)), A055396(n+1)]`
-/

namespace A249025.P1890069803335242708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200726 (A133265 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249025.P1890069803335242708

/-! ## A249025.P15108033676587948263

`lt[1/(n+1), A002654(A366637(2*n))]`
-/

namespace A249025.P15108033676587948263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A366637 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A249025.P15108033676587948263

/-! ## A249025.P12570177741439628472

`lt[A002024(A160124(n+4)), A099380(3*n)]`
-/

namespace A249025.P12570177741439628472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A160124 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099380 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249025.P12570177741439628472

/-!
# A249026: Array read by antidiagonals upwards: T(d,n) = number of d-dimensional permutations of n letters (d >= 0, n >= 1).

The programs for A249026, there is no canonical definition to state claims against.
-/

/-! ## A249026.P15658319174523868086

`lcm(A213999(n), A249027(A122797(n+1)))`
-/

namespace A249026.P15658319174523868086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A213999 n) (A249027 (A122797 (n + 1)).toNat)

end

end A249026.P15658319174523868086

/-! ## A249026.P4258012411812253894

`A089870(∏{digits}[A213057(n), #])`
-/

namespace A249026.P4258012411812253894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A249026.P4258012411812253894

/-! ## A249026.P13403480613245845939

`A118759(∏{digits}[A213057(n), #])`
-/

namespace A249026.P13403480613245845939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A249026.P13403480613245845939

/-! ## A249026.P3101775234387616492

`A351870(∏{digits}[A213057(n), #])`
-/

namespace A249026.P3101775234387616492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A249026.P3101775234387616492

/-! ## A249026.P7891688790788715917

`A080046(A076084(n+1))/A066121(n+1)`
-/

namespace A249026.P7891688790788715917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080046 (A076084 (n + 1)).toNat : ℚ) / (A066121 (n + 1) : ℚ)

end

end A249026.P7891688790788715917

/-!
# A249027: Array read by antidiagonals upwards: T(d,n) = number of d-dimensional permutations of n letters (d >= 1, n >= 1).

The programs for A249027, there is no canonical definition to state claims against.
-/

/-! ## A249027.P3551077379052491062

`A249026(A007401(n+1))`
-/

namespace A249027.P3551077379052491062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249026 (A007401 (n + 1)).toNat

end

end A249027.P3551077379052491062

/-! ## A249027.P13511411445763261793

`A249026(eq[0, A127648(n)])`
-/

namespace A249027.P13511411445763261793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249027.P13511411445763261793

/-! ## A249027.P4878202042378790411

`A249026(eq[1, A023532(n)])`
-/

namespace A249027.P4878202042378790411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249027.P4878202042378790411

/-! ## A249027.P1438579561331559956

`A249026(lt[0, A025581(n)])`
-/

namespace A249027.P1438579561331559956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A249027.P1438579561331559956

/-! ## A249027.P5261009163233647914

`A249026(lt[1, A249057(n)])`
-/

namespace A249027.P5261009163233647914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A249027.P5261009163233647914

/-!
# A249028: Number of 4X4X...X4 = 4^n arrays of 0's and 1's with exactly one 1 in each row, column, ..., line, ... .

The programs for A249028, there is no canonical definition to state claims against.
-/

/-! ## A249028.P4383628041482108731

`A211215(comp[or(3, n)])`
-/

namespace A249028.P4383628041482108731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211215 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A249028.P4383628041482108731

/-!
# A249029: First differences of A249129.

The programs for A249029, there is no canonical definition to state claims against.
-/

/-! ## A249029.P16266390838098058160

`Δ[A249129(n)]`
-/

namespace A249029.P16266390838098058160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249029.P16266390838098058160

/-! ## A249029.P15798612315229471165

`Δ[A249161(n)]+1`
-/

namespace A249029.P15798612315229471165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A249029.P15798612315229471165

/-! ## A249029.P15400239326901745954

`A249129(n+1)-A249129(n)`
-/

namespace A249029.P15400239326901745954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249129 (n + 1) - A249129 n

end

end A249029.P15400239326901745954

/-! ## A249029.P9597383387350890474

`A249161(n+1)+1-A249161(n)`
-/

namespace A249029.P9597383387350890474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249161 (n + 1) + (1 - A249161 n)

end

end A249029.P9597383387350890474

/-! ## A249029.P10822291616686430841

`A249161(2*n)-2*A249161(n)`
-/

namespace A249029.P10822291616686430841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249161 (2 * n) - 2 * A249161 n

end

end A249029.P10822291616686430841

/-!
# A249031: The non-anti-Fibonacci numbers: numbers not in A075326.

The programs for A249031, the canonical program `A249031.P16270301347754154022` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249031 has offset 1).

The definition of A249031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249031.P6634617960636128766

`comp[A075326(n)]`
-/

namespace A249031.P6634617960636128766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249031.P6634617960636128766

namespace A249031

/-- `comp[A075326(n)]` -/
def P6634617960636128766.Spec : Prop :=
  ∀ n, (P6634617960636128766.a n : ℤ) = A249031 (n + 1)

end A249031

/-! ## A249031.P16404475565504962581

`comp[A080427(3*n+1)-1]`
-/

namespace A249031.P16404475565504962581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (3 * n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249031.P16404475565504962581

namespace A249031

/-- `comp[A080427(3*n+1)-1]` -/
def P16404475565504962581.Spec : Prop :=
  ∀ n, (P16404475565504962581.a n : ℤ) = A249031 (n + 1)

end A249031

/-! ## A249031.P16270301347754154022

`∑[gcd(2-∑[n+1], A324468(n+1))]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249031

/-- `∑[gcd(2-∑[n+1], A324468(n+1))]` -/
def P16270301347754154022.Spec : Prop :=
  ∀ n, (P16270301347754154022.a n : ℤ) = A249031 (n + 1)

theorem P16270301347754154022.correct : P16270301347754154022.Spec := by
  intro n
  simp only [A249031, Nat.add_sub_cancel]

end A249031

/-! ## A249031.P3813994157886836129

`∪[A075325(n+1), A075328(n)]`
-/

namespace A249031.P3813994157886836129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249031.P3813994157886836129

namespace A249031

/-- `∪[A075325(n+1), A075328(n)]` -/
def P3813994157886836129.Spec : Prop :=
  ∀ n, (P3813994157886836129.a n : ℤ) = A249031 (n + 1)

end A249031

/-! ## A249031.P4910712611040917804

`A101544(comp[3*n])`
-/

namespace A249031.P4910712611040917804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101544 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A249031.P4910712611040917804

namespace A249031

/-- `A101544(comp[3*n])` -/
def P4910712611040917804.Spec : Prop :=
  ∀ n, P4910712611040917804.a n = A249031 (n + 1)

end A249031

/-! ## A249031.P14390888545694582686

`record[Δ[A080427(n+2)]]`
-/

namespace A249031.P14390888545694582686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249031.P14390888545694582686

namespace A249031

/-- `record[Δ[A080427(n+2)]]` -/
def P14390888545694582686.Spec : Prop :=
  ∀ n, P14390888545694582686.a n = A249031 (n + 1)

end A249031

/-! ## A249031.P135325037528178168

`comp[Δ[-A080427(n+1)]]`
-/

namespace A249031.P135325037528178168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A080427 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249031.P135325037528178168

namespace A249031

/-- `comp[Δ[-A080427(n+1)]]` -/
def P135325037528178168.Spec : Prop :=
  ∀ n, (P135325037528178168.a n : ℤ) = A249031 (n + 1)

end A249031

/-! ## A249031.P13593425966307077258

`∪[A016873(n), A328983(n+1)]`
-/

namespace A249031.P13593425966307077258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249031.P13593425966307077258

namespace A249031

/-- `∪[A016873(n), A328983(n+1)]` -/
def P13593425966307077258.Spec : Prop :=
  ∀ n, (P13593425966307077258.a n : ℤ) = A249031 (n + 1)

end A249031

/-! ## A249031.P10204460027213751995

`∪[A075328(n), A328983(n+1)]`
-/

namespace A249031.P10204460027213751995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075328 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249031.P10204460027213751995

namespace A249031

/-- `∪[A075328(n), A328983(n+1)]` -/
def P10204460027213751995.Spec : Prop :=
  ∀ n, (P10204460027213751995.a n : ℤ) = A249031 (n + 1)

end A249031

/-! ## A249031.P18315724523773198339

`∪[A047216(n+1), A328983(n+1)]`
-/

namespace A249031.P18315724523773198339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249031.P18315724523773198339

namespace A249031

/-- `∪[A047216(n+1), A328983(n+1)]` -/
def P18315724523773198339.Spec : Prop :=
  ∀ n, (P18315724523773198339.a n : ℤ) = A249031 (n + 1)

end A249031

/-!
# A249032: First differences of A075326.

The programs for A249032, the canonical program `A249032.P14324740470958142197` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249032 has offset 0).

The definition of A249032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249032.P14324740470958142197

`Δ[A075326(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A249032

/-- `Δ[A075326(n)]` -/
def P14324740470958142197.Spec : Prop :=
  ∀ n, P14324740470958142197.a n = A249032 n

theorem P14324740470958142197.correct : P14324740470958142197.Spec := by
  intro n
  simp only [A249032]

end A249032

/-! ## A249032.P3892961610424041818

`A075326(n+1)-A075326(n)`
-/

namespace A249032.P3892961610424041818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 (n + 1) - A075326 n

end

end A249032.P3892961610424041818

namespace A249032

/-- `A075326(n+1)-A075326(n)` -/
def P3892961610424041818.Spec : Prop :=
  ∀ n, P3892961610424041818.a n = A249032 n

theorem P3892961610424041818.correct : P3892961610424041818.Spec := by
  intro n
  simp only [A249032, Nat.add_sub_cancel, A249032.P3892961610424041818.a, A249032.P14324740470958142197.f1, A249032.P14324740470958142197.a, SequenceMachineLib.memo_apply]

end A249032

/-! ## A249032.P10166375392713467241

`A285383(a(n-1)+1)+5-A285383(n+2)` with `a(0)=3`
-/

namespace A249032.P10166375392713467241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A285383 (a (n - 1) + 1).toNat + (5 - A285383 (n + 2))

end

end A249032.P10166375392713467241

namespace A249032

/-- `A285383(a(n-1)+1)+5-A285383(n+2)` -/
def P10166375392713467241.Spec : Prop :=
  ∀ n, P10166375392713467241.a n = A249032 n

end A249032

/-! ## A249032.P5342622105737924093

`A026491(A026491(n))-A008574(n)`
-/

namespace A249032.P5342622105737924093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A026491 n).toNat - A008574 n

end

end A249032.P5342622105737924093

namespace A249032

/-- `A026491(A026491(n))-A008574(n)` -/
def P5342622105737924093.Spec : Prop :=
  ∀ n, P5342622105737924093.a n = A249032 n

end A249032

/-! ## A249032.P1697389270699387853

`A026491(A026491(n))-A004277(2*n)`
-/

namespace A249032.P1697389270699387853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A026491 n).toNat - A004277 (2 * n)

end

end A249032.P1697389270699387853

namespace A249032

/-- `A026491(A026491(n))-A004277(2*n)` -/
def P1697389270699387853.Spec : Prop :=
  ∀ n, P1697389270699387853.a n = A249032 n

end A249032

/-! ## A249032.P16997678015190978706

`A026491(A026491(n))-(A008486(n)+n)`
-/

namespace A249032.P16997678015190978706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A026491 n).toNat - (A008486 n + (n : ℤ))

end

end A249032.P16997678015190978706

namespace A249032

/-- `A026491(A026491(n))-(A008486(n)+n)` -/
def P16997678015190978706.Spec : Prop :=
  ∀ n, P16997678015190978706.a n = A249032 n

end A249032

/-! ## A249032.P12096937651096982397

`A026491(A026491(n))-A004275(2*n+1)`
-/

namespace A249032.P12096937651096982397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A026491 n).toNat - A004275 (2 * n + 1)

end

end A249032.P12096937651096982397

namespace A249032

/-- `A026491(A026491(n))-A004275(2*n+1)` -/
def P12096937651096982397.Spec : Prop :=
  ∀ n, P12096937651096982397.a n = A249032 n

end A249032

/-! ## A249032.P14563826664742951853

`A026491(A026491(n))-A026491(A004273(n))`
-/

namespace A249032.P14563826664742951853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A026491 n).toNat - A026491 (A004273 n).toNat

end

end A249032.P14563826664742951853

namespace A249032

/-- `A026491(A026491(n))-A026491(A004273(n))` -/
def P14563826664742951853.Spec : Prop :=
  ∀ n, P14563826664742951853.a n = A249032 n

end A249032

/-! ## A249032.P2734250818091048732

`Δ[A080427(3*n+1)]`
-/

namespace A249032.P2734250818091048732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249032.P2734250818091048732

namespace A249032

/-- `Δ[A080427(3*n+1)]` -/
def P2734250818091048732.Spec : Prop :=
  ∀ n, P2734250818091048732.a n = A249032 n

end A249032

/-! ## A249032.P14178277505492008962

`A001511(A061393(n)+2)+A001511(A061393(n+1))`
-/

namespace A249032.P14178277505492008962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A061393 n + 2).toNat + A001511 (A061393 (n + 1)).toNat

end

end A249032.P14178277505492008962

namespace A249032

/-- `A001511(A061393(n)+2)+A001511(A061393(n+1))` -/
def P14178277505492008962.Spec : Prop :=
  ∀ n, P14178277505492008962.a n = A249032 n

end A249032

/-! ## A249032.P7129951084764068195

`Δ[A297464(3*n)%A297469(n)]`
-/

namespace A249032.P7129951084764068195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297464 (3 * n)) (A297469 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249032.P7129951084764068195

namespace A249032

/-- `Δ[A297464(3*n)%A297469(n)]` -/
def P7129951084764068195.Spec : Prop :=
  ∀ n, P7129951084764068195.a n = A249032 n

end A249032

/-! ## A249032.P17303075598761646298

`Δ[A233583(A026491(2*n))]+1`
-/

namespace A249032.P17303075598761646298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A026491 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A249032.P17303075598761646298

namespace A249032

/-- `Δ[A233583(A026491(2*n))]+1` -/
def P17303075598761646298.Spec : Prop :=
  ∀ n, P17303075598761646298.a n = A249032 n

end A249032

/-! ## A249032.P7507961840350608125

`(3*A171900(n+2))%4+3`
-/

namespace A249032.P7507961840350608125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A171900 (n + 2)) 4 + 3

end

end A249032.P7507961840350608125

namespace A249032

/-- `(3*A171900(n+2))%4+3` -/
def P7507961840350608125.Spec : Prop :=
  ∀ n, P7507961840350608125.a n = A249032 n

end A249032

/-!
# A249034: Odd numbers missing from A171947.

The programs for A249034, the canonical program `A249034.P1904935833557693512` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249034 has offset 1).

The definition of A249034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249034.P1904935833557693512

`2*eq[2, and(n, -n)%3]+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249034

/-- `2*eq[2, and(n, -n)%3]+1` -/
def P1904935833557693512.Spec : Prop :=
  ∀ n, (P1904935833557693512.a n : ℤ) = A249034 (n + 1)

theorem P1904935833557693512.correct : P1904935833557693512.Spec := by
  intro n
  simp only [A249034, Nat.add_sub_cancel]

end A249034

/-! ## A249034.P6562240793585469547

`2*comp[or(n, val(n+2, 2))]+5`
-/

namespace A249034.P6562240793585469547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 5

end

end A249034.P6562240793585469547

namespace A249034

/-- `2*comp[or(n, val(n+2, 2))]+5` -/
def P6562240793585469547.Spec : Prop :=
  ∀ n, (P6562240793585469547.a n : ℤ) = A249034 (n + 1)

end A249034

/-! ## A249034.P15656326400458891437

`4*eq[0, val(n+1, 2)%2]+5`
-/

namespace A249034.P15656326400458891437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 5

end

end A249034.P15656326400458891437

namespace A249034

/-- `4*eq[0, val(n+1, 2)%2]+5` -/
def P15656326400458891437.Spec : Prop :=
  ∀ n, (P15656326400458891437.a n : ℤ) = A249034 (n + 1)

end A249034

/-! ## A249034.P2778660595798397758

`2*eq[0, xor(n, n-1)%3]+1`
-/

namespace A249034.P2778660595798397758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A249034.P2778660595798397758

namespace A249034

/-- `2*eq[0, xor(n, n-1)%3]+1` -/
def P2778660595798397758.Spec : Prop :=
  ∀ n, (P2778660595798397758.a n : ℤ) = A249034 (n + 1)

end A249034

/-! ## A249034.P4589373015543024616

`record[(4*n+5)*(-1)^val(n+1, 2)]`
-/

namespace A249034.P4589373015543024616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 5 : ℤ) * (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249034.P4589373015543024616

namespace A249034

/-- `record[(4*n+5)*(-1)^val(n+1, 2)]` -/
def P4589373015543024616.Spec : Prop :=
  ∀ n, P4589373015543024616.a n = A249034 (n + 1)

end A249034

/-! ## A249034.P11421833542447337827

`2*lt[(-(2*n))^val(n+1, 2), 0]+3`
-/

namespace A249034.P11421833542447337827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(2 * n : ℤ)) ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A249034.P11421833542447337827

namespace A249034

/-- `2*lt[(-(2*n))^val(n+1, 2), 0]+3` -/
def P11421833542447337827.Spec : Prop :=
  ∀ n, (P11421833542447337827.a n : ℤ) = A249034 (n + 1)

end A249034

/-! ## A249034.P7854222344356774191

`A108269(n+1)+1`
-/

namespace A249034.P7854222344356774191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108269 (n + 1) + 1

end

end A249034.P7854222344356774191

namespace A249034

/-- `A108269(n+1)+1` -/
def P7854222344356774191.Spec : Prop :=
  ∀ n, P7854222344356774191.a n = A249034 (n + 1)

end A249034

/-! ## A249034.P6404953249269371550

`A131323(n+1)+2`
-/

namespace A249034.P6404953249269371550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131323 (n + 1) + 2

end

end A249034.P6404953249269371550

namespace A249034

/-- `A131323(n+1)+2` -/
def P6404953249269371550.Spec : Prop :=
  ∀ n, P6404953249269371550.a n = A249034 (n + 1)

end A249034

/-! ## A249034.P11746507952657495630

`2*A036554(n+1)+1`
-/

namespace A249034.P11746507952657495630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036554 (n + 1) + 1

end

end A249034.P11746507952657495630

namespace A249034

/-- `2*A036554(n+1)+1` -/
def P11746507952657495630.Spec : Prop :=
  ∀ n, P11746507952657495630.a n = A249034 (n + 1)

end A249034

/-! ## A249034.P11441676733215751006

`2*A072939(n+1)-1`
-/

namespace A249034.P11441676733215751006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072939 (n + 1) - 1

end

end A249034.P11441676733215751006

namespace A249034

/-- `2*A072939(n+1)-1` -/
def P11441676733215751006.Spec : Prop :=
  ∀ n, P11441676733215751006.a n = A249034 (n + 1)

end A249034

/-! ## A249034.P1405566402229551925

`4*A003159(n+1)+1`
-/

namespace A249034.P1405566402229551925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003159 (n + 1) + 1

end

end A249034.P1405566402229551925

namespace A249034

/-- `4*A003159(n+1)+1` -/
def P1405566402229551925.Spec : Prop :=
  ∀ n, P1405566402229551925.a n = A249034 (n + 1)

end A249034

/-! ## A249034.P8991062149915878227

`2*A079523(n+1)+3`
-/

namespace A249034.P8991062149915878227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079523 (n + 1) + 3

end

end A249034.P8991062149915878227

namespace A249034

/-- `2*A079523(n+1)+3` -/
def P8991062149915878227.Spec : Prop :=
  ∀ n, P8991062149915878227.a n = A249034 (n + 1)

end A249034

/-! ## A249034.P9554803413873444157

`(A225822(n+1)+3)/2`
-/

namespace A249034.P9554803413873444157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225822 (n + 1) + 3 : ℚ) / 2

end

end A249034.P9554803413873444157

namespace A249034

/-- `(A225822(n+1)+3)/2` -/
def P9554803413873444157.Spec : Prop :=
  ∀ n, P9554803413873444157.a n = (A249034 (n + 1) : ℚ)

end A249034

/-! ## A249034.P6597445612278920028

`2*A162648(n+1)+5`
-/

namespace A249034.P6597445612278920028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162648 (n + 1) + 5

end

end A249034.P6597445612278920028

namespace A249034

/-- `2*A162648(n+1)+5` -/
def P6597445612278920028.Spec : Prop :=
  ∀ n, P6597445612278920028.a n = A249034 (n + 1)

end A249034

/-! ## A249034.P9673608370882833716

`4*A121539(n+1)+5`
-/

namespace A249034.P9673608370882833716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A121539 (n + 1) + 5

end

end A249034.P9673608370882833716

namespace A249034

/-- `4*A121539(n+1)+5` -/
def P9673608370882833716.Spec : Prop :=
  ∀ n, P9673608370882833716.a n = A249034 (n + 1)

end A249034

/-! ## A249034.P13684296394636260506

`2*(A003158(n+1)-n)+1`
-/

namespace A249034.P13684296394636260506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003158 (n + 1) - (n : ℤ)) + 1

end

end A249034.P13684296394636260506

namespace A249034

/-- `2*(A003158(n+1)-n)+1` -/
def P13684296394636260506.Spec : Prop :=
  ∀ n, P13684296394636260506.a n = A249034 (n + 1)

end A249034

/-! ## A249034.P13179987258282994024

`∑[2*(A080426(n+1)+1)]+1`
-/

namespace A249034.P13179987258282994024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A080426 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A249034.P13179987258282994024

namespace A249034

/-- `∑[2*(A080426(n+1)+1)]+1` -/
def P13179987258282994024.Spec : Prop :=
  ∀ n, P13179987258282994024.a n = A249034 (n + 1)

end A249034

/-! ## A249034.P2016115373651735582

`2*eq[3, A020639(xor(n, n+1))]+3`
-/

namespace A249034.P2016115373651735582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.xor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A249034.P2016115373651735582

namespace A249034

/-- `2*eq[3, A020639(xor(n, n+1))]+3` -/
def P2016115373651735582.Spec : Prop :=
  ∀ n, (P2016115373651735582.a n : ℤ) = A249034 (n + 1)

end A249034

/-! ## A249034.P1563790711573576377

`A072939(n+1)+A036554(n+1)`
-/

namespace A249034.P1563790711573576377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1) + A036554 (n + 1)

end

end A249034.P1563790711573576377

namespace A249034

/-- `A072939(n+1)+A036554(n+1)` -/
def P1563790711573576377.Spec : Prop :=
  ∀ n, P1563790711573576377.a n = A249034 (n + 1)

end A249034

/-!
# A249036: a(1)=1, a(2)=2; thereafter a(n) = a(n-1-(number of even terms so far)) + a(n-1-(number of odd terms so far)).

The programs for A249036, the canonical program `A249036.P2673849611643492835` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249036 has offset 1).

The definition of A249036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249036.P4094388045772950343

`∑[char[∑[floor(a(floor(n/2)))]]]` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A249036.P4094388045772950343
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f3 =>
  f3 ⌊(n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249036.P4094388045772950343

namespace A249036

/-- `∑[char[∑[floor(a(floor(n/2)))]]]` -/
def P4094388045772950343.Spec : Prop :=
  ∀ n, (P4094388045772950343.a n : ℤ) = A249036 (n + 1)

end A249036

/-! ## A249036.P7921874387068928684

`∑[char[A294456(n+1)]]`
-/

namespace A249036.P7921874387068928684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249036.P7921874387068928684

namespace A249036

/-- `∑[char[A294456(n+1)]]` -/
def P7921874387068928684.Spec : Prop :=
  ∀ n, (P7921874387068928684.a n : ℤ) = A249036 (n + 1)

end A249036

/-! ## A249036.P13354525873259083650

`1-A279521(a(n-1))+n` with `a(0)=1`
-/

namespace A249036.P13354525873259083650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - A279521 (a (n - 1)).toNat + (n : ℤ)

end

end A249036.P13354525873259083650

namespace A249036

/-- `1-A279521(a(n-1))+n` -/
def P13354525873259083650.Spec : Prop :=
  ∀ n, P13354525873259083650.a n = A249036 (n + 1)

theorem P13354525873259083650.correct : P13354525873259083650.Spec := by
  intro n
  simp only [A249036, Nat.add_sub_cancel, A249036.P13354525873259083650.a, A249036.P2673849611643492835.a, A078881, A078881.P16027770372899334795.a, A279521, A279521.P13549278606039013017.a, A006165, A006165.P2775593661925565035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249036

/-! ## A249036.P2673849611643492835

`2-A078881(a(n-1))+n` with `a(0)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A249036

/-- `2-A078881(a(n-1))+n` -/
def P2673849611643492835.Spec : Prop :=
  ∀ n, P2673849611643492835.a n = A249036 (n + 1)

theorem P2673849611643492835.correct : P2673849611643492835.Spec := by
  intro n
  simp only [A249036, Nat.add_sub_cancel]

end A249036

/-! ## A249036.P11048076512182330454

`n+2-A066997(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A249036.P11048076512182330454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 2 : ℤ) - A066997 (a (n - 1)).toNat

end

end A249036.P11048076512182330454

namespace A249036

/-- `n+2-A066997(a(n-1))` -/
def P11048076512182330454.Spec : Prop :=
  ∀ n, P11048076512182330454.a n = A249036 (n + 1)

end A249036

/-! ## A249036.P7038194786142620713

`∑[char[∑[(A333776(n)-1)%2+1]]]`
-/

namespace A249036.P7038194786142620713
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333776 n - 1) 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249036.P7038194786142620713

namespace A249036

/-- `∑[char[∑[(A333776(n)-1)%2+1]]]` -/
def P7038194786142620713.Spec : Prop :=
  ∀ n, (P7038194786142620713.a n : ℤ) = A249036 (n + 1)

end A249036

/-! ## A249036.P4000201060137379292

`∑[char[comp[A053644(n)+2*n-1]]]`
-/

namespace A249036.P4000201060137379292
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n + (2 * n : ℤ) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249036.P4000201060137379292

namespace A249036

/-- `∑[char[comp[A053644(n)+2*n-1]]]` -/
def P4000201060137379292.Spec : Prop :=
  ∀ n, (P4000201060137379292.a n : ℤ) = A249036 (n + 1)

end A249036

/-! ## A249036.P9008004437343721081

`2-A006165(a(n-1)+1)+n` with `a(0)=1`
-/

namespace A249036.P9008004437343721081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - A006165 (a (n - 1) + 1).toNat + (n : ℤ)

end

end A249036.P9008004437343721081

namespace A249036

/-- `2-A006165(a(n-1)+1)+n` -/
def P9008004437343721081.Spec : Prop :=
  ∀ n, P9008004437343721081.a n = A249036 (n + 1)

end A249036

/-! ## A249036.P16337819232240317416

`∑[1-char[A092754(n+1)+n+1]]`
-/

namespace A249036.P16337819232240317416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (n + 1) + (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249036.P16337819232240317416

namespace A249036

/-- `∑[1-char[A092754(n+1)+n+1]]` -/
def P16337819232240317416.Spec : Prop :=
  ∀ n, P16337819232240317416.a n = A249036 (n + 1)

end A249036

/-! ## A249036.P14776631448865209181

`A004526(lt[A000265(n+1), A245812(n)])`
-/

namespace A249036.P14776631448865209181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A249036.P14776631448865209181

namespace A249036

/-- `A004526(lt[A000265(n+1), A245812(n)])` -/
def P14776631448865209181.Spec : Prop :=
  ∀ n, P14776631448865209181.a n = A249036 (n + 1)

end A249036

/-!
# A249037: Number of even terms in first n terms of A249036.

The programs for A249037, the canonical program `A249037.P6663428575612269827` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249037 has offset 1).

The definition of A249037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249037.P2859075396575338882

`1-A249038(n+1)+n`
-/

namespace A249037.P2859075396575338882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A249038 (n + 1) + (n : ℤ)

end

end A249037.P2859075396575338882

namespace A249037

/-- `1-A249038(n+1)+n` -/
def P2859075396575338882.Spec : Prop :=
  ∀ n, P2859075396575338882.a n = A249037 (n + 1)

end A249037

/-! ## A249037.P16436496984664046055

`∑[log2(gcd(2, A249036(n+1)))]`
-/

namespace A249037.P16436496984664046055
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A249036 (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249037.P16436496984664046055

namespace A249037

/-- `∑[log2(gcd(2, A249036(n+1)))]` -/
def P16436496984664046055.Spec : Prop :=
  ∀ n, P16436496984664046055.a n = (A249037 (n + 1) : ℝ)

end A249037

/-! ## A249037.P10496536197467566530

`∑[∑[∑[A169731(n+1)]]%2]`
-/

namespace A249037.P10496536197467566530
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249037.P10496536197467566530

namespace A249037

/-- `∑[∑[∑[A169731(n+1)]]%2]` -/
def P10496536197467566530.Spec : Prop :=
  ∀ n, P10496536197467566530.a n = A249037 (n + 1)

end A249037

/-! ## A249037.P10164964482882347346

`∑[∑[char[A294456(n+2)]]%2]`
-/

namespace A249037.P10164964482882347346
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249037.P10164964482882347346

namespace A249037

/-- `∑[∑[char[A294456(n+2)]]%2]` -/
def P10164964482882347346.Spec : Prop :=
  ∀ n, (P10164964482882347346.a n : ℤ) = A249037 (n + 1)

end A249037

/-! ## A249037.P6663428575612269827

`∑[A059841(A249036(n+1))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A249037

/-- `∑[A059841(A249036(n+1))]` -/
def P6663428575612269827.Spec : Prop :=
  ∀ n, P6663428575612269827.a n = A249037 (n + 1)

theorem P6663428575612269827.correct : P6663428575612269827.Spec := by
  intro n
  simp only [A249037, Nat.add_sub_cancel]

end A249037

/-! ## A249037.P3231246679964384987

`n-A023443(A249038(n+1))`
-/

namespace A249037.P3231246679964384987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A249038 (n + 1)).toNat

end

end A249037.P3231246679964384987

namespace A249037

/-- `n-A023443(A249038(n+1))` -/
def P3231246679964384987.Spec : Prop :=
  ∀ n, P3231246679964384987.a n = A249037 (n + 1)

end A249037

/-! ## A249037.P8287443607765441849

`∑[A000035(A249036(n+1)+1)]`
-/

namespace A249037.P8287443607765441849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A249036 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249037.P8287443607765441849

namespace A249037

/-- `∑[A000035(A249036(n+1)+1)]` -/
def P8287443607765441849.Spec : Prop :=
  ∀ n, P8287443607765441849.a n = A249037 (n + 1)

end A249037

/-! ## A249037.P1003199350606620130

`∑[∑[A249036(2*(n+1))]%2]`
-/

namespace A249037.P1003199350606620130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249036 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249037.P1003199350606620130

namespace A249037

/-- `∑[∑[A249036(2*(n+1))]%2]` -/
def P1003199350606620130.Spec : Prop :=
  ∀ n, P1003199350606620130.a n = A249037 (n + 1)

end A249037

/-! ## A249037.P15111171566826411931

`∑[A091297(A249036(n+1)²)]`
-/

namespace A249037.P15111171566826411931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (A249036 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249037.P15111171566826411931

namespace A249037

/-- `∑[A091297(A249036(n+1)²)]` -/
def P15111171566826411931.Spec : Prop :=
  ∀ n, P15111171566826411931.a n = A249037 (n + 1)

end A249037

/-! ## A249037.P8971548747342891548

`∑[A056594(A249036(n+1)²)]`
-/

namespace A249037.P8971548747342891548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A249036 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249037.P8971548747342891548

namespace A249037

/-- `∑[A056594(A249036(n+1)²)]` -/
def P8971548747342891548.Spec : Prop :=
  ∀ n, P8971548747342891548.a n = A249037 (n + 1)

end A249037

/-!
# A249038: Number of odd terms in first n terms of A249036.

The programs for A249038, the canonical program `A249038.P8201411425765856461` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249038 has offset 1).

The definition of A249038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249038.P8201411425765856461

`∑[A249036(n+1)%2]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A249038

/-- `∑[A249036(n+1)%2]` -/
def P8201411425765856461.Spec : Prop :=
  ∀ n, P8201411425765856461.a n = A249038 (n + 1)

theorem P8201411425765856461.correct : P8201411425765856461.Spec := by
  intro n
  simp only [A249038, Nat.add_sub_cancel]

end A249038

/-! ## A249038.P14447848067788562005

`1-A249037(n+1)+n`
-/

namespace A249038.P14447848067788562005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A249037 (n + 1) + (n : ℤ)

end

end A249038.P14447848067788562005

namespace A249038

/-- `1-A249037(n+1)+n` -/
def P14447848067788562005.Spec : Prop :=
  ∀ n, P14447848067788562005.a n = A249038 (n + 1)

end A249038

/-! ## A249038.P365197181970826263

`∑[∑[char[A294456(n+1)]]%2]`
-/

namespace A249038.P365197181970826263
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249038.P365197181970826263

namespace A249038

/-- `∑[∑[char[A294456(n+1)]]%2]` -/
def P365197181970826263.Spec : Prop :=
  ∀ n, (P365197181970826263.a n : ℤ) = A249038 (n + 1)

end A249038

/-! ## A249038.P2706004839754861225

`1-(A249037(Δ[n²]-n)-n)`
-/

namespace A249038.P2706004839754861225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A249037 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (n : ℤ))

end

end A249038.P2706004839754861225

namespace A249038

/-- `1-(A249037(Δ[n²]-n)-n)` -/
def P2706004839754861225.Spec : Prop :=
  ∀ n, P2706004839754861225.a n = A249038 (n + 1)

end A249038

/-! ## A249038.P2000926647868138715

`n+1-∑[∑[∑[A169731(n+1)]]%2]`
-/

namespace A249038.P2000926647868138715
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249038.P2000926647868138715

namespace A249038

/-- `n+1-∑[∑[∑[A169731(n+1)]]%2]` -/
def P2000926647868138715.Spec : Prop :=
  ∀ n, P2000926647868138715.a n = A249038 (n + 1)

end A249038

/-! ## A249038.P6327710088774929180

`∑[∑[1-char[A092754(n+1)+n+1]]%2]`
-/

namespace A249038.P6327710088774929180
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (n + 1) + (n + 1 : ℤ)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249038.P6327710088774929180

namespace A249038

/-- `∑[∑[1-char[A092754(n+1)+n+1]]%2]` -/
def P6327710088774929180.Spec : Prop :=
  ∀ n, P6327710088774929180.a n = A249038 (n + 1)

end A249038

/-! ## A249038.P16841846918091360095

`∑[A000035(A249036(n+1))]`
-/

namespace A249038.P16841846918091360095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A249036 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249038.P16841846918091360095

namespace A249038

/-- `∑[A000035(A249036(n+1))]` -/
def P16841846918091360095.Spec : Prop :=
  ∀ n, P16841846918091360095.a n = A249038 (n + 1)

end A249038

/-! ## A249038.P1997637557277201631

`A024000(A249037(n+1))+n`
-/

namespace A249038.P1997637557277201631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A249037 (n + 1)).toNat + (n : ℤ)

end

end A249038.P1997637557277201631

namespace A249038

/-- `A024000(A249037(n+1))+n` -/
def P1997637557277201631.Spec : Prop :=
  ∀ n, P1997637557277201631.a n = A249038 (n + 1)

end A249038

/-! ## A249038.P3655419787430018796

`∑[A010873(A249036(n+1)²)]`
-/

namespace A249038.P3655419787430018796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A249036 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249038.P3655419787430018796

namespace A249038

/-- `∑[A010873(A249036(n+1)²)]` -/
def P3655419787430018796.Spec : Prop :=
  ∀ n, P3655419787430018796.a n = A249038 (n + 1)

end A249038

/-! ## A249038.P13725115284779191141

`∑[A039982(A249036(n+1)²)]`
-/

namespace A249038.P13725115284779191141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (A249036 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249038.P13725115284779191141

namespace A249038

/-- `∑[A039982(A249036(n+1)²)]` -/
def P13725115284779191141.Spec : Prop :=
  ∀ n, P13725115284779191141.a n = A249038 (n + 1)

end A249038

/-!
# A249039: a(1)=1, a(2)=2; thereafter a(n) = a(n-1) + a(n-1-(number of even terms so far)) + a(n-1-(number of odd terms so far)).

The programs for A249039, there is no canonical definition to state claims against.
-/

/-! ## A249039.P15195686734038771706

`∑[∑[A139351(A041029(n))]]`
-/

namespace A249039.P15195686734038771706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A041029 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249039.P15195686734038771706

/-! ## A249039.P14260510618607487534

`∑[A156251(∑[A347655(n)])]`
-/

namespace A249039.P14260510618607487534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249039.P14260510618607487534

/-! ## A249039.P6310773077739366400

`∑[A036042(A003104(n+1))]`
-/

namespace A249039.P6310773077739366400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A003104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249039.P6310773077739366400

/-! ## A249039.P4240973685969958482

`A114886(A099385(n))`
-/

namespace A249039.P4240973685969958482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (A099385 n).toNat

end

end A249039.P4240973685969958482

/-! ## A249039.P4495855289178956940

`A114886(A063676(n+1))`
-/

namespace A249039.P4495855289178956940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (A063676 (n + 1)).toNat

end

end A249039.P4495855289178956940

/-!
# A249040: Number of even terms in first n terms of A249039.

The programs for A249040, the canonical program `A249040.P13332248197705166820` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249040 has offset 1).

The definition of A249040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249040.P13665069395337223220

`a(n-1)+1-A249039(n+1)%2` with `a(0)=0`
-/

namespace A249040.P13665069395337223220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 1 - Int.tmod (A249039 (n + 1)) 2

end

end A249040.P13665069395337223220

namespace A249040

/-- `a(n-1)+1-A249039(n+1)%2` -/
def P13665069395337223220.Spec : Prop :=
  ∀ n, P13665069395337223220.a n = A249040 (n + 1)

end A249040

/-! ## A249040.P13332248197705166820

`1-A249041(n+1)+n`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249040

/-- `1-A249041(n+1)+n` -/
def P13332248197705166820.Spec : Prop :=
  ∀ n, P13332248197705166820.a n = A249040 (n + 1)

theorem P13332248197705166820.correct : P13332248197705166820.Spec := by
  intro n
  simp only [A249040, Nat.add_sub_cancel]

end A249040

/-! ## A249040.P5732252806304759960

`∑[1-A249039(n+1)%2]`
-/

namespace A249040.P5732252806304759960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A249039 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249040.P5732252806304759960

namespace A249040

/-- `∑[1-A249039(n+1)%2]` -/
def P5732252806304759960.Spec : Prop :=
  ∀ n, P5732252806304759960.a n = A249040 (n + 1)

end A249040

/-! ## A249040.P6585887507770941200

`(A000578(n)*A249041(n+1))%(n+1)`
-/

namespace A249040.P6585887507770941200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n * A249041 (n + 1)) (n + 1 : ℤ)

end

end A249040.P6585887507770941200

namespace A249040

/-- `(A000578(n)*A249041(n+1))%(n+1)` -/
def P6585887507770941200.Spec : Prop :=
  ∀ n, P6585887507770941200.a n = A249040 (n + 1)

end A249040

/-! ## A249040.P14378417027445645098

`A000096(n+1)%(A249041(n+1)+∑[n+1])`
-/

namespace A249040.P14378417027445645098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 (n + 1)) (A249041 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A249040.P14378417027445645098

namespace A249040

/-- `A000096(n+1)%(A249041(n+1)+∑[n+1])` -/
def P14378417027445645098.Spec : Prop :=
  ∀ n, P14378417027445645098.a n = A249040 (n + 1)

end A249040

/-! ## A249040.P14613942766027702137

`A008619(2*n)-A249041(A008619(2*n))`
-/

namespace A249040.P14613942766027702137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A249041 (A008619 (2 * n)).toNat

end

end A249040.P14613942766027702137

namespace A249040

/-- `A008619(2*n)-A249041(A008619(2*n))` -/
def P14613942766027702137.Spec : Prop :=
  ∀ n, P14613942766027702137.a n = A249040 (n + 1)

end A249040

/-!
# A249041: Number of odd terms in first n terms of A249039.

The programs for A249041, the canonical program `A249041.P5947846608937990163` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249041 has offset 1).

The definition of A249041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249041.P5947846608937990163

`n+1-a(a(n-1)-1)-a(n-1-a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249041

/-- `n+1-a(a(n-1)-1)-a(n-1-a(n-1))` -/
def P5947846608937990163.Spec : Prop :=
  ∀ n, P5947846608937990163.a n = A249041 (n + 1)

theorem P5947846608937990163.correct : P5947846608937990163.Spec := by
  intro n
  simp only [A249041, Nat.add_sub_cancel]

end A249041

/-! ## A249041.P4967591481551186356

`a(n-1)+A249039(n+1)%2` with `a(0)=1`
-/

namespace A249041.P4967591481551186356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A249039 (n + 1)) 2

end

end A249041.P4967591481551186356

namespace A249041

/-- `a(n-1)+A249039(n+1)%2` -/
def P4967591481551186356.Spec : Prop :=
  ∀ n, P4967591481551186356.a n = A249041 (n + 1)

end A249041

/-! ## A249041.P3819557216245375373

`∑[A249039(n+1)%2]`
-/

namespace A249041.P3819557216245375373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249039 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249041.P3819557216245375373

namespace A249041

/-- `∑[A249039(n+1)%2]` -/
def P3819557216245375373.Spec : Prop :=
  ∀ n, P3819557216245375373.a n = A249041 (n + 1)

end A249041

/-! ## A249041.P8103586118731619776

`1-A249040(n+1)+n`
-/

namespace A249041.P8103586118731619776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A249040 (n + 1) + (n : ℤ)

end

end A249041.P8103586118731619776

namespace A249041

/-- `1-A249040(n+1)+n` -/
def P8103586118731619776.Spec : Prop :=
  ∀ n, P8103586118731619776.a n = A249041 (n + 1)

theorem P8103586118731619776.correct : P8103586118731619776.Spec := by
  intro n
  simp only [A249041, Nat.add_sub_cancel, A249041.P8103586118731619776.a, A249041.P5947846608937990163.a, A249040, A249040.P13332248197705166820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249041

/-! ## A249041.P12186042456130775733

`A024000(A249040(n+1))+n`
-/

namespace A249041.P12186042456130775733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A249040 (n + 1)).toNat + (n : ℤ)

end

end A249041.P12186042456130775733

namespace A249041

/-- `A024000(A249040(n+1))+n` -/
def P12186042456130775733.Spec : Prop :=
  ∀ n, P12186042456130775733.a n = A249041 (n + 1)

end A249041

/-! ## A249041.P15544574271699516262

`∑[and(A020985(n)², A249039(n+1))]`
-/

namespace A249041.P15544574271699516262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020985 n ^ 2) (A249039 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249041.P15544574271699516262

namespace A249041

/-- `∑[and(A020985(n)², A249039(n+1))]` -/
def P15544574271699516262.Spec : Prop :=
  ∀ n, P15544574271699516262.a n = A249041 (n + 1)

end A249041

/-! ## A249041.P1000226483167555963

`∑[and(1, A000213(n)*A249039(n+1))]`
-/

namespace A249041.P1000226483167555963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000213 n * A249039 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249041.P1000226483167555963

namespace A249041

/-- `∑[and(1, A000213(n)*A249039(n+1))]` -/
def P1000226483167555963.Spec : Prop :=
  ∀ n, P1000226483167555963.a n = A249041 (n + 1)

end A249041

/-! ## A249041.P1107241407175566626

`A004736(A249040(n+1)+A167614(n+1))`
-/

namespace A249041.P1107241407175566626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A249040 (n + 1) + A167614 (n + 1)).toNat

end

end A249041.P1107241407175566626

namespace A249041

/-- `A004736(A249040(n+1)+A167614(n+1))` -/
def P1107241407175566626.Spec : Prop :=
  ∀ n, P1107241407175566626.a n = A249041 (n + 1)

end A249041

/-!
# A249042: Three-dimensional array of numbers N(r,p,m) read by triangular slices, each slice being read across rows: N(r,p,m) is the number of "r-panes in a (p,m) structure".

The programs for A249042, there is no canonical definition to state claims against.
-/

/-! ## A249042.P16463845303689394773

`A000120(A134991(comp[3*n]))`
-/

namespace A249042.P16463845303689394773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A134991 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A249042.P16463845303689394773

/-!
# A249043: a(1) = 42; a(n+1) = a(n) + sum of decimal digits of a(n).

The programs for A249043, the canonical program `A249043.P15231578259827823311` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249043 has offset 1).

The definition of A249043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 582 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249043.P15231578259827823311

`A062028(a(n-1))` with `a(0)=42`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A249043

/-- `A062028(a(n-1))` -/
def P15231578259827823311.Spec : Prop :=
  ∀ n, P15231578259827823311.a n = A249043 (n + 1)

theorem P15231578259827823311.correct : P15231578259827823311.Spec := by
  intro n
  simp only [A249043, Nat.add_sub_cancel]

end A249043

/-! ## A249043.P1096435886872241682

`A160931(a(n-1)-1)+1` with `a(0)=42`
-/

namespace A249043.P1096435886872241682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [42] fun n a =>
  A160931 (a (n - 1) - 1).toNat + 1

end

end A249043.P1096435886872241682

namespace A249043

/-- `A160931(a(n-1)-1)+1` -/
def P1096435886872241682.Spec : Prop :=
  ∀ n, P1096435886872241682.a n = A249043 (n + 1)

end A249043

/-! ## A249043.P2866340173706972851

`A160939(a(n-1)+1)-1` with `a(0)=42`
-/

namespace A249043.P2866340173706972851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [42] fun n a =>
  A160939 (a (n - 1) + 1).toNat - 1

end

end A249043.P2866340173706972851

namespace A249043

/-- `A160939(a(n-1)+1)-1` -/
def P2866340173706972851.Spec : Prop :=
  ∀ n, P2866340173706972851.a n = A249043 (n + 1)

end A249043

/-! ## A249043.P15276570058058780050

`record[A062028(a(A046666(n)))]` with `a(0)=42, a(1)=2`
-/

namespace A249043.P15276570058058780050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [42, 2] fun n f1 =>
  A062028 (f1 (A046666 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249043.P15276570058058780050

namespace A249043

/-- `record[A062028(a(A046666(n)))]` -/
def P15276570058058780050.Spec : Prop :=
  ∀ n, P15276570058058780050.a n = A249043 (n + 1)

end A249043

/-! ## A249043.P15435041733629512299

`A007953(a(n-1))+a(A023443(n))` with `a(0)=42`
-/

namespace A249043.P15435041733629512299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [42] fun n a =>
  A007953 (a (n - 1)).toNat + a (A023443 n).toNat

end

end A249043.P15435041733629512299

namespace A249043

/-- `A007953(a(n-1))+a(A023443(n))` -/
def P15435041733629512299.Spec : Prop :=
  ∀ n, P15435041733629512299.a n = A249043 (n + 1)

end A249043

/-!
# A249044: Composite self-numbers.

The programs for A249044, there is no canonical definition to state claims against.
-/

/-! ## A249044.P3471820411164623781

`filter[A003052(n+1), A066247(#)]`
-/

namespace A249044.P3471820411164623781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A249044.P3471820411164623781

/-! ## A249044.P4421294900154242725

`filter[A003052(n+2), A005171(#)]`
-/

namespace A249044.P4421294900154242725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A249044.P4421294900154242725

/-! ## A249044.P14189059640626147710

`∩[A002808(n+1), A003052(n+1)]`
-/

namespace A249044.P14189059640626147710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249044.P14189059640626147710

/-! ## A249044.P12018963710965210108

`∩[A003052(n+1), A062973(n+1)]`
-/

namespace A249044.P12018963710965210108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249044.P12018963710965210108

/-! ## A249044.P17378475717373965709

`∩[A003052(n+1), A387319(n+1)]`
-/

namespace A249044.P17378475717373965709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249044.P17378475717373965709

/-! ## A249044.P7472564492238620881

`record[A191558(A003052(n+5))]`
-/

namespace A249044.P7472564492238620881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A003052 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249044.P7472564492238620881

/-! ## A249044.P8951962410954377234

`eq[n*A339579(n+1), A230093(n)]`
-/

namespace A249044.P8951962410954377234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A339579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249044.P8951962410954377234

/-! ## A249044.P12342088002117662558

`eq[A339579(n+1)/A054519(n), A230093(n)]`
-/

namespace A249044.P12342088002117662558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339579 (n + 1) : ℚ) / (A054519 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A249044.P12342088002117662558

/-! ## A249044.P2030686274304409991

`eq[A049084(A210882(n+1)), A230093(n)]`
-/

namespace A249044.P2030686274304409991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A210882 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249044.P2030686274304409991

/-! ## A249044.P11480262135093110700

`A026239(p?[A026239(A003052(n+1))])`
-/

namespace A249044.P11480262135093110700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A003052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249044.P11480262135093110700

/-!
# A249045: Self-numbers (A003052) that are multiples of 3.

The programs for A249045, there is no canonical definition to state claims against.
-/

/-! ## A249045.P10139647078463344770

`∪[A249046(n+1), A249048(n+1)]`
-/

namespace A249045.P10139647078463344770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249045.P10139647078463344770

/-! ## A249045.P10910540820856922300

`∩[A003052(n+1), A008585(n)]`
-/

namespace A249045.P10910540820856922300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249045.P10910540820856922300

/-! ## A249045.P104989717247858639

`∩[A001651(2*n+1)+2, A003052(n+2)]`
-/

namespace A249045.P104989717247858639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249045.P104989717247858639

/-! ## A249045.P1166567620788038213

`record[A036233(3*(n+1))]`
-/

namespace A249045.P1166567620788038213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249045.P1166567620788038213

/-! ## A249045.P12937043794736457150

`eq[A091684(n), A230093(n)]`
-/

namespace A249045.P12937043794736457150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249045.P12937043794736457150

/-! ## A249045.P15740300915148450059

`eq[A100050(n), A230093(n)]`
-/

namespace A249045.P15740300915148450059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249045.P15740300915148450059

/-! ## A249045.P2992195665540067746

`eq[A104555(n), A230093(n)]`
-/

namespace A249045.P2992195665540067746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104555 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249045.P2992195665540067746

/-! ## A249045.P1361497872604775461

`eq[A128615(n), A230093(n)]`
-/

namespace A249045.P1361497872604775461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249045.P1361497872604775461

/-! ## A249045.P11150689160729229971

`eq[A131358(n), A230093(n)]`
-/

namespace A249045.P11150689160729229971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249045.P11150689160729229971

/-! ## A249045.P14633191305456575832

`eq[A147666(n), A230093(n)]`
-/

namespace A249045.P14633191305456575832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147666 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249045.P14633191305456575832

/-! ## A249045.P7196876442213146829

`eq[A230093(n), A265511(n)]`
-/

namespace A249045.P7196876442213146829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249045.P7196876442213146829

/-! ## A249045.P12421226424378624039

`eq[A230093(n), A353327(n)]`
-/

namespace A249045.P12421226424378624039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249045.P12421226424378624039

/-! ## A249045.P10314459660274614038

`filter[A003052(n+1), A079978(#)]`
-/

namespace A249045.P10314459660274614038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A249045.P10314459660274614038

/-! ## A249045.P16791724125095324043

`filter[A003052(n+2), A173857(#)]`
-/

namespace A249045.P16791724125095324043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A249045.P16791724125095324043

/-! ## A249045.P3402333286164701489

`filter[A003052(n+2), A329680(#)]`
-/

namespace A249045.P3402333286164701489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A249045.P3402333286164701489

/-! ## A249045.P11316915802931480067

`eq[A230093(n), A266578(n+1)]`
-/

namespace A249045.P11316915802931480067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249045.P11316915802931480067

/-!
# A249046: Self-numbers (A003052) that are multiples of 3 but not of 9.

The programs for A249046, there is no canonical definition to state claims against.
-/

/-! ## A249046.P2111031234716705232

`∩[A003052(n+1), A016051(n+1)]`
-/

namespace A249046.P2111031234716705232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249046.P2111031234716705232

/-! ## A249046.P7324767817880182132

`∩[A016051(n+1), A249045(n+1)]`
-/

namespace A249046.P7324767817880182132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249046.P7324767817880182132

/-! ## A249046.P17414456063605420993

`∩[A249045(n+1), A268226(n+1)]`
-/

namespace A249046.P17414456063605420993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249046.P17414456063605420993

/-! ## A249046.P11613064814685379885

`∩[A249045(n+1), A391164(n)]`
-/

namespace A249046.P11613064814685379885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391164 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249046.P11613064814685379885

/-! ## A249046.P12176759823011386840

`∩[A249045(n+1), A275910(n+1)]`
-/

namespace A249046.P12176759823011386840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249046.P12176759823011386840

/-! ## A249046.P9016512802573248201

`∩[A168183(n+1), A249045(n+1)]`
-/

namespace A249046.P9016512802573248201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249046.P9016512802573248201

/-! ## A249046.P5546673421782321396

`record[A036233(A016051(n+1))]`
-/

namespace A249046.P5546673421782321396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (A016051 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249046.P5546673421782321396

/-! ## A249046.P14390410402485683925

`filter[A249045(n+1), A060584(#)]`
-/

namespace A249046.P14390410402485683925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A060584 (f1 j).toNat = 1) n)

end

end A249046.P14390410402485683925

/-! ## A249046.P13913820958180948582

`filter[A249045(n+1), A168182(#)]`
-/

namespace A249046.P13913820958180948582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A249046.P13913820958180948582

/-! ## A249046.P5667343180459244622

`record[A036233(A250122(2*n+1))]`
-/

namespace A249046.P5667343180459244622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (A250122 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249046.P5667343180459244622

/-! ## A249046.P13676212016302702764

`record[A036233(3*A001651(n+1))]`
-/

namespace A249046.P13676212016302702764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (3 * A001651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249046.P13676212016302702764

/-! ## A249046.P15264563307952381032

`record[A036233(3*A038502(n+1))]`
-/

namespace A249046.P15264563307952381032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (3 * A038502 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249046.P15264563307952381032

/-! ## A249046.P14221069563417054282

`record[A036233(lcm(3, A001651(n+1)))]`
-/

namespace A249046.P14221069563417054282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (Int.lcm 3 (A001651 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249046.P14221069563417054282

/-! ## A249046.P7981390906075010958

`record[A036233(A008486(A001651(n+1)))]`
-/

namespace A249046.P7981390906075010958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (A008486 (A001651 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249046.P7981390906075010958

/-!
# A249047: Self-numbers (A003052) that are not divisible by 3.

The programs for A249047, there is no canonical definition to state claims against.
-/

/-! ## A249047.P12415607114157415168

`A003052(eq[1, A003052(n+1)²%3]+1)`
-/

namespace A249047.P12415607114157415168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003052 (n + 1) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A249047.P12415607114157415168

/-! ## A249047.P6487106799188266651

`∩[A001651(n+1), A003052(n+1)]`
-/

namespace A249047.P6487106799188266651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249047.P6487106799188266651

/-! ## A249047.P10547069757845788429

`record[A036233(A001651(n+1))]`
-/

namespace A249047.P10547069757845788429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (A001651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249047.P10547069757845788429

/-! ## A249047.P11347148972989058005

`record[A038502(A003052(n+1))]`
-/

namespace A249047.P11347148972989058005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A003052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249047.P11347148972989058005

/-! ## A249047.P4889343708642375936

`record[A038502(A036233(n+1))]`
-/

namespace A249047.P4889343708642375936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A036233 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249047.P4889343708642375936

/-! ## A249047.P14740072812231354504

`record[A036233(A008619(n)+n)]`
-/

namespace A249047.P14740072812231354504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (A008619 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249047.P14740072812231354504

/-! ## A249047.P7181804415007463519

`filter[A003052(n+1), A011655(#)]`
-/

namespace A249047.P7181804415007463519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A249047.P7181804415007463519

/-! ## A249047.P457820929861062763

`filter[A003052(n+1), A267208(#)]`
-/

namespace A249047.P457820929861062763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A249047.P457820929861062763

/-! ## A249047.P9124740970668802077

`eq[n, A230093(n)+A091684(n)]`
-/

namespace A249047.P9124740970668802077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n + A091684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249047.P9124740970668802077

/-! ## A249047.P4910900929781714352

`record[A036233(A004526(n)+n+1)]`
-/

namespace A249047.P4910900929781714352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (A004526 n + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249047.P4910900929781714352

/-! ## A249047.P10140687647123661050

`record[A036233(A008619(3*n))]`
-/

namespace A249047.P10140687647123661050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (A008619 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249047.P10140687647123661050

/-!
# A249048: Self-numbers (A003052) that are multiples of 9.

The programs for A249048, there is no canonical definition to state claims against.
-/

/-! ## A249048.P13152985743064216290

`∩[A003052(n+1), 9*n]`
-/

namespace A249048.P13152985743064216290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A249048.P13152985743064216290

/-! ## A249048.P4342767503041197839

`filter[A249045(n+1), A359430(#)]`
-/

namespace A249048.P4342767503041197839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A249048.P4342767503041197839

/-! ## A249048.P17115821488424926347

`filter[A249045(n+1), A373991(#)]`
-/

namespace A249048.P17115821488424926347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A249048.P17115821488424926347

/-! ## A249048.P16467064598388460280

`filter[A249045(n+1), A374039(#)]`
-/

namespace A249048.P16467064598388460280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A249048.P16467064598388460280

/-! ## A249048.P10375843912872406799

`filter[A249045(n+1), A374117(#)]`
-/

namespace A249048.P10375843912872406799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374117 (f1 j).toNat = 1) n)

end

end A249048.P10375843912872406799

/-! ## A249048.P7831791063867482467

`filter[A249045(n+1), A374121(#)]`
-/

namespace A249048.P7831791063867482467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374121 (f1 j).toNat = 1) n)

end

end A249048.P7831791063867482467

/-! ## A249048.P12146549417961574994

`∩[A249044(n+1), A008591(n)]`
-/

namespace A249048.P12146549417961574994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249048.P12146549417961574994

/-! ## A249048.P16218902003752952234

`∩[A249045(n+1), A008591(n)]`
-/

namespace A249048.P16218902003752952234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249048.P16218902003752952234

/-! ## A249048.P4876443066180484815

`∩[A249045(n+1), A374118(n+1)]`
-/

namespace A249048.P4876443066180484815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249048.P4876443066180484815

/-! ## A249048.P7443497622466644985

`∩[A249045(n+1), A301291(n)]`
-/

namespace A249048.P7443497622466644985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249048.P7443497622466644985

/-! ## A249048.P3726056507505095886

`∩[A249045(n+1), A301293(n)]`
-/

namespace A249048.P3726056507505095886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249048.P3726056507505095886

/-! ## A249048.P13583308549374766399

`∩[A249045(n+1), A312933(n)]`
-/

namespace A249048.P13583308549374766399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249048.P13583308549374766399

/-! ## A249048.P15595314795220132320

`∩[A249045(n+1), A312941(n)]`
-/

namespace A249048.P15595314795220132320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312941 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249048.P15595314795220132320

/-! ## A249048.P12081814496577917175

`∩[A249045(n+1), A312943(n)]`
-/

namespace A249048.P12081814496577917175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249048.P12081814496577917175

/-! ## A249048.P14613200972346150019

`∩[A090570(n+1), A249045(n+1)]`
-/

namespace A249048.P14613200972346150019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249048.P14613200972346150019

/-! ## A249048.P15370834688329760418

`∩[A120740(n+1), A249045(n+1)]`
-/

namespace A249048.P15370834688329760418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249048.P15370834688329760418

/-! ## A249048.P7363836554562699218

`∩[A130877(n+1), A249045(n+1)]`
-/

namespace A249048.P7363836554562699218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249048.P7363836554562699218

/-! ## A249048.P9207400973516818288

`∩[A249045(n+1), A263941(n+1)]`
-/

namespace A249048.P9207400973516818288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249048.P9207400973516818288

/-! ## A249048.P7607527499366345100

`∩[A249045(n+1), A274406(n+1)]`
-/

namespace A249048.P7607527499366345100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249048.P7607527499366345100

/-! ## A249048.P17305178798730207855

`∩[A249045(n+1), A314836(n)]`
-/

namespace A249048.P17305178798730207855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314836 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249048.P17305178798730207855

/-!
# A249049: a(0)=1; thereafter a(n) = number of integers 1 <= i < A247665(n) that are not yet terms of A247665.

The programs for A249049, there is no canonical definition to state claims against.
-/

/-! ## A249049.P9034803113956086358

`A249050(floor(acot(n)+n))+1`
-/

namespace A249049.P9034803113956086358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249050 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1

end

end A249049.P9034803113956086358

/-! ## A249049.P10310257581201515661

`A249050(round(acot(n)+n))+1`
-/

namespace A249049.P10310257581201515661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249050 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1

end

end A249049.P10310257581201515661

/-! ## A249049.P5733114390951091678

`A249050(abs(1-n)+1)+1`
-/

namespace A249049.P5733114390951091678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249050 (|1 - (n : ℤ)| + 1).toNat + 1

end

end A249049.P5733114390951091678

/-! ## A249049.P1059082682008061253

`(A249050(n)+1)*a(floor(atan(n+1))-1)` with `a(0)=1`
-/

namespace A249049.P1059082682008061253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A249050 n + 1) * a (⌊Real.arctan (n + 1 : ℝ)⌋ - 1).toNat

end

end A249049.P1059082682008061253

/-!
# A249050: a(n) = number of integers 2 <= i < A247665(n) that are not yet terms of A247665.

The programs for A249050, there is no canonical definition to state claims against.
-/

/-! ## A249050.P9764760423276689150

`A249049(n+1)-1`
-/

namespace A249050.P9764760423276689150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249049 (n + 1) - 1

end

end A249050.P9764760423276689150

/-! ## A249050.P6587805278695327112

`∑[Δ[A249049(n)]%12]`
-/

namespace A249050.P6587805278695327112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249050.P6587805278695327112

/-! ## A249050.P9663128292514136220

`A023443(A249049(n+1))`
-/

namespace A249050.P9663128292514136220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A249049 (n + 1)).toNat

end

end A249050.P9663128292514136220

/-! ## A249050.P14630768204474288070

`∑[Δ[A249049(n)]*A178334(n)]`
-/

namespace A249050.P14630768204474288070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249050.P14630768204474288070

/-! ## A249050.P5675498544072811477

`A001478(n+1)+A249049(n+1)+n`
-/

namespace A249050.P5675498544072811477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A249049 (n + 1) + (n : ℤ))

end

end A249050.P5675498544072811477

/-! ## A249050.P7690972535452024649

`∑[A014963(6*(n+1))*Δ[A249049(n)]]`
-/

namespace A249050.P7690972535452024649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249050.P7690972535452024649

/-! ## A249050.P2567785400678353662

`∑[A000041(((-1)^n)²)*Δ[A249049(n)]]`
-/

namespace A249050.P2567785400678353662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (((-1) ^ n) ^ 2).toNat * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249050.P2567785400678353662

/-! ## A249050.P6616536847147062111

`abs(A249049(n+1)+A038608(gcd(n, n+1)))`
-/

namespace A249050.P6616536847147062111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A249049 (n + 1) + A038608 (Nat.gcd n (n + 1))|

end

end A249050.P6616536847147062111

/-! ## A249050.P7258272477144018220

`A038608(2*n+1)+A249049(n+1)+2*n`
-/

namespace A249050.P7258272477144018220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (2 * n + 1) + (A249049 (n + 1) + (2 * n : ℤ))

end

end A249050.P7258272477144018220

/-! ## A249050.P10052087771459828389

`A307445(A006530(n+2))+A249049(n+1)`
-/

namespace A249050.P10052087771459828389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A006530 (n + 2)).toNat + A249049 (n + 1)

end

end A249050.P10052087771459828389

/-!
# A249051: The smallest integer > 1 of exactly n consecutive integers divisible respectively by the first n natural numbers (A000027), or 0 if no such number exists.

The programs for A249051, there is no canonical definition to state claims against.
-/

/-! ## A249051.P11781158414428338180

`A328449(n+1)+A010055(n+2)`
-/

namespace A249051.P11781158414428338180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328449 (n + 1) + A010055 (n + 2)

end

end A249051.P11781158414428338180

/-! ## A249051.P16705723956241563948

`A328449(n+1)+Δ[A065515(n+1)]`
-/

namespace A249051.P16705723956241563948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328449 (n + 1) + (f1 (n + 1) - f1 n)

end

end A249051.P16705723956241563948

/-! ## A249051.P9660361442207581598

`(A070198(n)+2)*Δ[A065515(n+1)]`
-/

namespace A249051.P9660361442207581598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070198 n + 2) * (f1 (n + 1) - f1 n)

end

end A249051.P9660361442207581598

/-! ## A249051.P6735023813316160252

`(A003418(n+1)+1)*A010055(n+2)`
-/

namespace A249051.P6735023813316160252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) + 1) * A010055 (n + 2)

end

end A249051.P6735023813316160252

/-! ## A249051.P12265292835650974823

`(A003418(n+1)+1)*A069513(n+2)`
-/

namespace A249051.P12265292835650974823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) + 1) * A069513 (n + 2)

end

end A249051.P12265292835650974823

/-!
# A249052: Odd numbers n without prime factors of the form 4k+3 such that x^2-n*y^2=-1 has no solutions.

The programs for A249052, there is no canonical definition to state claims against.
-/

/-! ## A249052.P3950694316674436913

`∩[A031399(n+1), A077425(n+1)]`
-/

namespace A249052.P3950694316674436913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249052.P3950694316674436913

/-! ## A249052.P6072125715917802589

`∩[A031399(n+1), A082686(n+1)]`
-/

namespace A249052.P6072125715917802589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249052.P6072125715917802589

/-! ## A249052.P16686258050542104532

`∩[A031399(n+1), A138227(n+1)]`
-/

namespace A249052.P16686258050542104532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249052.P16686258050542104532

/-!
# A249053: Defined by (i) a(1)=1; (ii) if you move a(n) steps to the right you must reach a prime; (iii) a(n) = smallest unused composite number greater than a(n-1), unless a(n) is required to be prime by (ii), in which case a(n) is the smallest unused prime greater than a(n-1).

The programs for A249053, there is no canonical definition to state claims against.
-/

/-! ## A249053.P12537801420776933127

`∑[A055444(∑[A055472(n+1)+3])]`
-/

namespace A249053.P12537801420776933127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055444 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249053.P12537801420776933127

/-! ## A249053.P7193629870012827803

`A179834(n+1)+A179829(A104434(n))`
-/

namespace A249053.P7193629870012827803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179834 (n + 1) + A179829 (A104434 n).toNat

end

end A249053.P7193629870012827803

/-! ## A249053.P9009996945164904983

`lt[A339975(A305551(n)), A237591(n+1)]`
-/

namespace A249053.P9009996945164904983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 (A305551 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249053.P9009996945164904983

/-! ## A249053.P12746688815518568489

`lt[(A091245(3*n+1)+A086251(3*n+5)+1)%3, 1]`
-/

namespace A249053.P12746688815518568489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091245 (3 * n + 1) + A086251 (3 * n + 5) + 1) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A249053.P12746688815518568489

/-!
# A249054: Defined by (i) a(1)=1; (ii) if you move a(n) steps to the right you must reach a prime; (iii) a(n) = smallest unused composite number, unless a(n) is required to be prime by (ii), in which case a(n) is the smallest unused prime.

The programs for A249054, there is no canonical definition to state claims against.
-/

/-! ## A249054.P13340111511444839285

`A243571(A083050(n))%A034295(2*n+3)`
-/

namespace A249054.P13340111511444839285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243571 (A083050 n).toNat) (A034295 (2 * n + 3))

end

end A249054.P13340111511444839285

/-!
# A249055: a(1)=0; the next term is always the product of the two smallest numbers not yet in the sequence and which have not yet been used.

The programs for A249055, there is no canonical definition to state claims against.
-/

/-! ## A249055.P9182201880535364115

`A043096(2*n+1)*A072649(A299108(n))`
-/

namespace A249055.P9182201880535364115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (2 * n + 1) * A072649 (A299108 n).toNat

end

end A249055.P9182201880535364115

/-! ## A249055.P17060751282968423847

`A172278(n)*A278044(A326212(n))`
-/

namespace A249055.P17060751282968423847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172278 n * A278044 (A326212 n).toNat

end

end A249055.P17060751282968423847

/-! ## A249055.P2578373603898701775

`A010784(2*n+1)*A029837(A006318(n))`
-/

namespace A249055.P2578373603898701775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (2 * n + 1) * A029837 (A006318 n).toNat

end

end A249055.P2578373603898701775

/-!
# A249056: a(n) = Product_{i=1..floor(n/2)} (2n-i)*(2n+i).

The programs for A249056, there is no canonical definition to state claims against.
-/

/-! ## A249056.P4997519476003619039

`A163934(a(n-1))` with `a(0)=1, a(1)=1, a(2)=15`
-/

namespace A249056.P4997519476003619039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 15] fun n a =>
  A163934 (a (n - 1)).toNat

end

end A249056.P4997519476003619039

/-!
# A249058: a(n) = number of primes less than the square root of the (2^n)-th prime.

The programs for A249058, there is no canonical definition to state claims against.
-/

/-! ## A249058.P15012644167928116409

`A000720(floor(sqrt(A018249(n))))`
-/

namespace A249058.P15012644167928116409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.sqrt (A018249 n)).toNat

end

end A249058.P15012644167928116409

/-! ## A249058.P9368102575514113590

`A000720(floor(sqrt(A033844(n))))`
-/

namespace A249058.P9368102575514113590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.sqrt (A033844 n)).toNat

end

end A249058.P9368102575514113590

/-! ## A249058.P2054895235616014001

`A000720(floor(root(A018249(n), 2)))`
-/

namespace A249058.P2054895235616014001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(A018249 n : ℝ) ^ (1 / (2 : ℝ))⌋.toNat

end

end A249058.P2054895235616014001

/-! ## A249058.P1817015327543795616

`A230980(floor(sqrt(A018249(n))))`
-/

namespace A249058.P1817015327543795616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.sqrt (A018249 n)).toNat

end

end A249058.P1817015327543795616

/-! ## A249058.P12814361724634658970

`A036234(floor(root(A018249(n), 2)))-1`
-/

namespace A249058.P12814361724634658970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 ⌊(A018249 n : ℝ) ^ (1 / (2 : ℝ))⌋.toNat - 1

end

end A249058.P12814361724634658970

/-!
# A249059: Row sums of the triangular array at A249057.

The programs for A249059, the canonical program `A249059.P13768370939734906991` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249059 has offset 0).

The definition of A249059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249059.P13383364108797885424

`∏[(n+3)/a(n-1)+1]` with `a(0)=1`
-/

namespace A249059.P13383364108797885424
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 3 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A249059.P13383364108797885424

namespace A249059

/-- `∏[(n+3)/a(n-1)+1]` -/
def P13383364108797885424.Spec : Prop :=
  ∀ n, P13383364108797885424.a n = (A249059 n : ℚ)

end A249059

/-! ## A249059.P13768370939734906991

`a(n-1)+(n+3)*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249059

/-- `a(n-1)+(n+3)*a(n-2)` -/
def P13768370939734906991.Spec : Prop :=
  ∀ n, (P13768370939734906991.a n : ℤ) = A249059 n

theorem P13768370939734906991.correct : P13768370939734906991.Spec := by
  intro n
  simp only [A249059]

end A249059

/-! ## A249059.P2169724086209065307

`record[a(n-1)-(1-n)*a(n-2)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A249059.P2169724086209065307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1, 1] fun n f1 =>
  f1 (n - 1) - (1 - (n : ℤ)) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249059.P2169724086209065307

namespace A249059

/-- `record[a(n-1)-(1-n)*a(n-2)]` -/
def P2169724086209065307.Spec : Prop :=
  ∀ n, P2169724086209065307.a n = A249059 n

end A249059

/-! ## A249059.P7864575352782359309

`A291856(n+4)/2`
-/

namespace A249059.P7864575352782359309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291856 (n + 4) : ℚ) / 2

end

end A249059.P7864575352782359309

namespace A249059

/-- `A291856(n+4)/2` -/
def P7864575352782359309.Spec : Prop :=
  ∀ n, P7864575352782359309.a n = (A249059 n : ℚ)

end A249059

/-! ## A249059.P4490363572053489243

`A185308(n+3)-A185309(n+2)`
-/

namespace A249059.P4490363572053489243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185308 (n + 3) - A185309 (n + 2)

end

end A249059.P4490363572053489243

namespace A249059

/-- `A185308(n+3)-A185309(n+2)` -/
def P4490363572053489243.Spec : Prop :=
  ∀ n, P4490363572053489243.a n = A249059 n

end A249059

/-! ## A249059.P1032834461861463858

`A000932(n+3)-A001475(n+3)`
-/

namespace A249059.P1032834461861463858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000932 (n + 3) - A001475 (n + 3)

end

end A249059.P1032834461861463858

namespace A249059

/-- `A000932(n+3)-A001475(n+3)` -/
def P1032834461861463858.Spec : Prop :=
  ∀ n, P1032834461861463858.a n = A249059 n

end A249059

/-! ## A249059.P3576534522228780743

`A000932(n+3)%A001475(A289207(n+5))`
-/

namespace A249059.P3576534522228780743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000932 (n + 3)) (A001475 (A289207 (n + 5)).toNat)

end

end A249059.P3576534522228780743

namespace A249059

/-- `A000932(n+3)%A001475(A289207(n+5))` -/
def P3576534522228780743.Spec : Prop :=
  ∀ n, P3576534522228780743.a n = A249059 n

end A249059

/-!
# A249060: Column 1 of the triangular array at A249057.

The programs for A249060, the canonical program `A249060.P12615847143221430500` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249060 has offset 0).

The definition of A249060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249060.P12615847143221430500

`(3+n)*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249060

/-- `(3+n)*a(n-2)` -/
def P12615847143221430500.Spec : Prop :=
  ∀ n, (P12615847143221430500.a n : ℤ) = A249060 n

theorem P12615847143221430500.correct : P12615847143221430500.Spec := by
  intro n
  simp only [A249060]

end A249060

/-! ## A249060.P15319746890725297876

`∏[(n+3)/a(n-1)]` with `a(0)=1`
-/

namespace A249060.P15319746890725297876
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 3 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A249060.P15319746890725297876

namespace A249060

/-- `∏[(n+3)/a(n-1)]` -/
def P15319746890725297876.Spec : Prop :=
  ∀ n, P15319746890725297876.a n = (A249060 n : ℚ)

end A249060

/-! ## A249060.P8414948374756235712

`record[n*a(n-2)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A249060.P8414948374756235712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  n * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249060.P8414948374756235712

namespace A249060

/-- `record[n*a(n-2)]` -/
def P8414948374756235712.Spec : Prop :=
  ∀ n, (P8414948374756235712.a n : ℤ) = A249060 n

end A249060

/-! ## A249060.P6737265765575879960

`a(n-2)/(n+3)^(-1)` with `a(0)=1, a(1)=4`
-/

namespace A249060.P6737265765575879960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) / (n + 3 : ℚ) ^ (-1 : ℤ)

end

end A249060.P6737265765575879960

namespace A249060

/-- `a(n-2)/(n+3)^(-1)` -/
def P6737265765575879960.Spec : Prop :=
  ∀ n, P6737265765575879960.a n = (A249060 n : ℚ)

end A249060

/-! ## A249060.P17582283733750899668

`record[a(n-2)/n^(-1)]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=1`
-/

namespace A249060.P17582283733750899668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, -1, 1, 1] fun n f1 =>
  f1 (n - 2) / (n : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249060.P17582283733750899668

namespace A249060

/-- `record[a(n-2)/n^(-1)]` -/
def P17582283733750899668.Spec : Prop :=
  ∀ n, P17582283733750899668.a n = (A249060 n : ℚ)

end A249060

/-! ## A249060.P8234317850000871752

`4*a(n-2)-(1-n)*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A249060.P8234317850000871752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 2) - (1 - (n : ℤ)) * a (n - 2)

end

end A249060.P8234317850000871752

namespace A249060

/-- `4*a(n-2)-(1-n)*a(n-2)` -/
def P8234317850000871752.Spec : Prop :=
  ∀ n, P8234317850000871752.a n = A249060 n

end A249060

/-! ## A249060.P11297751713872775724

`A006882(n+3)/A010693(n+1)`
-/

namespace A249060.P11297751713872775724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (n + 3) : ℚ) / (A010693 (n + 1) : ℚ)

end

end A249060.P11297751713872775724

namespace A249060

/-- `A006882(n+3)/A010693(n+1)` -/
def P11297751713872775724.Spec : Prop :=
  ∀ n, P11297751713872775724.a n = (A249060 n : ℚ)

end A249060

/-! ## A249060.P4580208754570606874

`A249057(∑[n])`
-/

namespace A249060.P4580208754570606874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249057 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249060.P4580208754570606874

namespace A249060

/-- `A249057(∑[n])` -/
def P4580208754570606874.Spec : Prop :=
  ∀ n, P4580208754570606874.a n = A249060 n

end A249060

/-!
# A249061: a(n) is the least number of successive numbers 1, 2, 3, ... which when added to n produce a prime number.

The programs for A249061, there is no canonical definition to state claims against.
-/

/-! ## A249061.P13587989176163736428

`A036989(A345941(A077570(n+1)))`
-/

namespace A249061.P13587989176163736428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (A345941 (A077570 (n + 1)).toNat).toNat

end

end A249061.P13587989176163736428

/-! ## A249061.P3808527909595522943

`A324347((A032766(n+1)-A032766(n))*A066745(n+1))`
-/

namespace A249061.P3808527909595522943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324347 ((A032766 (n + 1) - A032766 n) * A066745 (n + 1)).toNat

end

end A249061.P3808527909595522943

/-! ## A249061.P14505275020055444371

`A060501((A328112(n+1)+2)²)`
-/

namespace A249061.P14505275020055444371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 ((A328112 (n + 1) + 2) ^ 2).toNat

end

end A249061.P14505275020055444371

/-! ## A249061.P2284347173742863048

`A001221(A109927(3*n+5)+n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A249061.P2284347173742863048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A109927 (3 * n + 5) : ℚ) + ((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))).toNat

end

end A249061.P2284347173742863048

/-! ## A249061.P3835848241522940191

`A000120(A032647(n+1)^A039651(n+1))`
-/

namespace A249061.P3835848241522940191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A032647 (n + 1) : ℚ) ^ (A039651 (n + 1) : ℤ))).toNat

end

end A249061.P3835848241522940191

/-!
# A249062: A double binomial sum.

The programs for A249062, there is no canonical definition to state claims against.
-/

/-! ## A249062.P4402707931917500700

`A242311(∑[xor(1, n*a(n-1))])` with `a(0)=1, a(1)=1`
-/

namespace A249062.P4402707931917500700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Nat.xor 1 (n * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242311 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249062.P4402707931917500700

/-! ## A249062.P6001329569241138182

`A065361(A235321(n+1))`
-/

namespace A249062.P6001329569241138182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A235321 (n + 1)).toNat

end

end A249062.P6001329569241138182

/-!
# A249063: a(n) = floor(cos(n)*PrimePi(n)).

The programs for A249063, the canonical program `A249063.P11209629505306054437` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249063 has offset 1).

The definition of A249063 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(cos(n+1)*A000720(n+1))` (program `A249063.P11209629505306054437`, by `A249063.P11209629505306054437.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249063.P11209629505306054437

`floor(cos(n+1)*A000720(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249063

/-- `floor(cos(n+1)*A000720(n+1))` -/
def P11209629505306054437.Spec : Prop :=
  ∀ n, P11209629505306054437.a n = A249063 (n + 1)

theorem P11209629505306054437.correct : P11209629505306054437.Spec := by
  intro n
  simp only [A249063, Nat.add_sub_cancel]

end A249063

/-! ## A249063.P16107972138955542777

`floor(∑[A010051(n+1)]*cos(n+1))`
-/

namespace A249063.P16107972138955542777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) * Real.cos (n + 1 : ℝ)⌋

end

end A249063.P16107972138955542777

namespace A249063

/-- `floor(∑[A010051(n+1)]*cos(n+1))` -/
def P16107972138955542777.Spec : Prop :=
  ∀ n, P16107972138955542777.a n = A249063 (n + 1)

end A249063

/-! ## A249063.P3722965790897992764

`floor((A036234(n+1)-1)*cos(n+1))`
-/

namespace A249063.P3722965790897992764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036234 (n + 1) - 1 : ℝ) * Real.cos (n + 1 : ℝ)⌋

end

end A249063.P3722965790897992764

namespace A249063

/-- `floor((A036234(n+1)-1)*cos(n+1))` -/
def P3722965790897992764.Spec : Prop :=
  ∀ n, P3722965790897992764.a n = A249063 (n + 1)

theorem P3722965790897992764.correct : P3722965790897992764.Spec := by
  intro n
  simp only [A249063, Nat.add_sub_cancel, A249063.P3722965790897992764.a, A249063.P11209629505306054437.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A249063

/-! ## A249063.P13025220114340279639

`floor(∑[floor(n/(A000203(n+1)-2))]*cos(n+1))`
-/

namespace A249063.P13025220114340279639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A000203 (n + 1) - 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) * Real.cos (n + 1 : ℝ)⌋

end

end A249063.P13025220114340279639

namespace A249063

/-- `floor(∑[floor(n/(A000203(n+1)-2))]*cos(n+1))` -/
def P13025220114340279639.Spec : Prop :=
  ∀ n, P13025220114340279639.a n = A249063 (n + 1)

end A249063

/-! ## A249063.P13457071223264460698

`floor(cos(n+1)*A230980(n+1))`
-/

namespace A249063.P13457071223264460698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (n + 1 : ℝ) * (A230980 (n + 1) : ℝ)⌋

end

end A249063.P13457071223264460698

namespace A249063

/-- `floor(cos(n+1)*A230980(n+1))` -/
def P13457071223264460698.Spec : Prop :=
  ∀ n, P13457071223264460698.a n = A249063 (n + 1)

end A249063

/-! ## A249063.P5652891993476700544

`floor(cos(n+1)*A056172(2*(n+1)))`
-/

namespace A249063.P5652891993476700544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (n + 1 : ℝ) * (A056172 (2 * (n + 1)) : ℝ)⌋

end

end A249063.P5652891993476700544

namespace A249063

/-- `floor(cos(n+1)*A056172(2*(n+1)))` -/
def P5652891993476700544.Spec : Prop :=
  ∀ n, P5652891993476700544.a n = A249063 (n + 1)

end A249063

/-! ## A249063.P8938474908781326510

`floor(cos(n+1)*A055679(A103517(n)))`
-/

namespace A249063.P8938474908781326510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (n + 1 : ℝ) * (A055679 (A103517 n).toNat : ℝ)⌋

end

end A249063.P8938474908781326510

namespace A249063

/-- `floor(cos(n+1)*A055679(A103517(n)))` -/
def P8938474908781326510.Spec : Prop :=
  ∀ n, P8938474908781326510.a n = A249063 (n + 1)

end A249063

/-!
# A249066: a(n) is the number of new prime distinct divisors of n^2+1 not already present in m^2+1 for all m < n.

The programs for A249066, the canonical program `A249066.P1278430547906090756` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249066 has offset 1).

The definition of A249066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249066.P4195008288137362334

`floor(1/A242012(n+1))`
-/

namespace A249066.P4195008288137362334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A242012 (n + 1) : ℚ)⌋

end

end A249066.P4195008288137362334

namespace A249066

/-- `floor(1/A242012(n+1))` -/
def P4195008288137362334.Spec : Prop :=
  ∀ n, P4195008288137362334.a n = A249066 (n + 1)

end A249066

/-! ## A249066.P1421797536639732546

`floor(1/A252890(n+1))`
-/

namespace A249066.P1421797536639732546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A252890 (n + 1) : ℚ)⌋

end

end A249066.P1421797536639732546

namespace A249066

/-- `floor(1/A252890(n+1))` -/
def P1421797536639732546.Spec : Prop :=
  ∀ n, P1421797536639732546.a n = A249066 (n + 1)

end A249066

/-! ## A249066.P1278430547906090756

`char[A005528(n+1)-1]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A249066

/-- `char[A005528(n+1)-1]` -/
def P1278430547906090756.Spec : Prop :=
  ∀ n, (P1278430547906090756.a n : ℤ) = A249066 (n + 1)

theorem P1278430547906090756.correct : P1278430547906090756.Spec := by
  intro n
  simp only [A249066, Nat.add_sub_cancel]

end A249066

/-! ## A249066.P10733433639684874634

`A008683(A252890(n+1)²)`
-/

namespace A249066.P10733433639684874634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A252890 (n + 1) ^ 2).toNat

end

end A249066.P10733433639684874634

namespace A249066

/-- `A008683(A252890(n+1)²)` -/
def P10733433639684874634.Spec : Prop :=
  ∀ n, P10733433639684874634.a n = A249066 (n + 1)

end A249066

/-! ## A249066.P10189978588845659345

`A000007(A242012(n+1)-1)`
-/

namespace A249066.P10189978588845659345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A242012 (n + 1) - 1).toNat

end

end A249066.P10189978588845659345

namespace A249066

/-- `A000007(A242012(n+1)-1)` -/
def P10189978588845659345.Spec : Prop :=
  ∀ n, P10189978588845659345.a n = A249066 (n + 1)

end A249066

/-! ## A249066.P6324474606746919125

`A000007(A252890(n+1)-1)`
-/

namespace A249066.P6324474606746919125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A252890 (n + 1) - 1).toNat

end

end A249066.P6324474606746919125

namespace A249066

/-- `A000007(A252890(n+1)-1)` -/
def P6324474606746919125.Spec : Prop :=
  ∀ n, P6324474606746919125.a n = A249066 (n + 1)

end A249066

/-! ## A249066.P14169035332650984209

`A010051(2*A242012(n+1))`
-/

namespace A249066.P14169035332650984209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A242012 (n + 1)).toNat

end

end A249066.P14169035332650984209

namespace A249066

/-- `A010051(2*A242012(n+1))` -/
def P14169035332650984209.Spec : Prop :=
  ∀ n, P14169035332650984209.a n = A249066 (n + 1)

end A249066

/-! ## A249066.P7337224533062532713

`A105700(2*A242012(n+1)²)`
-/

namespace A249066.P7337224533062532713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * A242012 (n + 1) ^ 2).toNat

end

end A249066.P7337224533062532713

namespace A249066

/-- `A105700(2*A242012(n+1)²)` -/
def P7337224533062532713.Spec : Prop :=
  ∀ n, P7337224533062532713.a n = A249066 (n + 1)

end A249066

/-! ## A249066.P104534884474502478

`A167294(∏{e}[A252890(n+1)², #])`
-/

namespace A249066.P104534884474502478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252890 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167294 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A249066.P104534884474502478

namespace A249066

/-- `A167294(∏{e}[A252890(n+1)², #])` -/
def P104534884474502478.Spec : Prop :=
  ∀ n, P104534884474502478.a n = A249066 (n + 1)

end A249066

/-! ## A249066.P1145642059036501690

`A167294(∏{e}[A252890(n+1), 2*#])`
-/

namespace A249066.P1145642059036501690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167294 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 * Nat.factorization (f1 n).natAbs p)

end

end A249066.P1145642059036501690

namespace A249066

/-- `A167294(∏{e}[A252890(n+1), 2*#])` -/
def P1145642059036501690.Spec : Prop :=
  ∀ n, P1145642059036501690.a n = A249066 (n + 1)

end A249066

/-! ## A249066.P8332167498954408035

`floor(A242012(n+1)^-A008620(n))`
-/

namespace A249066.P8332167498954408035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242012 (n + 1) : ℚ) ^ (-A008620 n : ℤ)⌋

end

end A249066.P8332167498954408035

namespace A249066

/-- `floor(A242012(n+1)^-A008620(n))` -/
def P8332167498954408035.Spec : Prop :=
  ∀ n, P8332167498954408035.a n = A249066 (n + 1)

end A249066

/-! ## A249066.P13822107419574496545

`∏{e}[A252890(n+1), A008683(A255423(#))]`
-/

namespace A249066.P13822107419574496545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 (A255423 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A249066.P13822107419574496545

namespace A249066

/-- `∏{e}[A252890(n+1), A008683(A255423(#))]` -/
def P13822107419574496545.Spec : Prop :=
  ∀ n, P13822107419574496545.a n = A249066 (n + 1)

end A249066

/-! ## A249066.P9777261609571487440

`A010051(A242012(n+1)+A242012(n+1))`
-/

namespace A249066.P9777261609571487440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A242012 (n + 1) + A242012 (n + 1)).toNat

end

end A249066.P9777261609571487440

namespace A249066

/-- `A010051(A242012(n+1)+A242012(n+1))` -/
def P9777261609571487440.Spec : Prop :=
  ∀ n, P9777261609571487440.a n = A249066 (n + 1)

end A249066

/-! ## A249066.P6886970837555691513

`A105700(2*A242012(n+1)*A242012(n+1))`
-/

namespace A249066.P6886970837555691513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * A242012 (n + 1) * A242012 (n + 1)).toNat

end

end A249066.P6886970837555691513

namespace A249066

/-- `A105700(2*A242012(n+1)*A242012(n+1))` -/
def P6886970837555691513.Spec : Prop :=
  ∀ n, P6886970837555691513.a n = A249066 (n + 1)

end A249066

/-! ## A249066.P6321626805328402454

`A105700(A242012(n+1)+A242012(n+1)²²)`
-/

namespace A249066.P6321626805328402454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A242012 (n + 1) + (A242012 (n + 1) ^ 2) ^ 2).toNat

end

end A249066.P6321626805328402454

namespace A249066

/-- `A105700(A242012(n+1)+A242012(n+1)²²)` -/
def P6321626805328402454.Spec : Prop :=
  ∀ n, P6321626805328402454.a n = A249066 (n + 1)

end A249066

/-! ## A249066.P3408742998591174924

`A001222(gcd(1-A242012(n+1), A014442(n+1)))`
-/

namespace A249066.P3408742998591174924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (1 - A242012 (n + 1)) (A014442 (n + 1)))

end

end A249066.P3408742998591174924

namespace A249066

/-- `A001222(gcd(1-A242012(n+1), A014442(n+1)))` -/
def P3408742998591174924.Spec : Prop :=
  ∀ n, P3408742998591174924.a n = A249066 (n + 1)

end A249066

/-! ## A249066.P6081632226983410525

`C(A001222(A252893(n+1)), A252890(n+1))`
-/

namespace A249066.P6081632226983410525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A252893 (n + 1)).toNat).toNat (A252890 (n + 1)).toNat

end

end A249066.P6081632226983410525

namespace A249066

/-- `C(A001222(A252893(n+1)), A252890(n+1))` -/
def P6081632226983410525.Spec : Prop :=
  ∀ n, (P6081632226983410525.a n : ℤ) = A249066 (n + 1)

end A249066

/-!
# A249068: a(n+1) gives the number of occurrences of the last digit of a(n) in octal base so far, up to and including a(n), with a(0)=0.

The programs for A249068, there is no canonical definition to state claims against.
-/

/-! ## A249068.P17772039873625005965

`A000035(A006094(n+1))*A308073(A028310(n))`
-/

namespace A249068.P17772039873625005965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A006094 (n + 1)).toNat * A308073 (A028310 n).toNat

end

end A249068.P17772039873625005965

/-! ## A249068.P14691514685339596666

`A308073(A233583(n+1))-A033683(A034747(n+1))`
-/

namespace A249068.P14691514685339596666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308073 (A233583 (n + 1)).toNat - A033683 (A034747 (n + 1)).toNat

end

end A249068.P14691514685339596666

/-! ## A249068.P9691252734411316283

`∑{e}[2^n, A308073(#)]`
-/

namespace A249068.P9691252734411316283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A308073 (Nat.factorization (f1 n) p)

end

end A249068.P9691252734411316283

/-! ## A249068.P17545355296350059212

`A248034(n)+A025468(A000325(n))`
-/

namespace A249068.P17545355296350059212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248034 n + A025468 (A000325 n).toNat

end

end A249068.P17545355296350059212

/-! ## A249068.P1359616589475196032

`A358967(n)+A269166(A022173(n))`
-/

namespace A249068.P1359616589475196032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358967 n + A269166 (A022173 n).toNat

end

end A249068.P1359616589475196032

/-!
# A249069: a(n+1) gives the number of occurrences of the first digit of a(n) in factorial base (i.e., A099563(a(n))) so far amongst the factorial base representations of all the terms up to and including a(n), with a(0)=0.

The programs for A249069, there is no canonical definition to state claims against.
-/

/-! ## A249069.P13136040927807223101

`A151713(n)!*A249070(n)`
-/

namespace A249069.P13136040927807223101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151713 n).toNat : ℤ) * A249070 n

end

end A249069.P13136040927807223101

/-! ## A249069.P13941636242700329613

`A249070(n)%A002982(n+1)`
-/

namespace A249069.P13941636242700329613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249070 n) (A002982 (n + 1))

end

end A249069.P13941636242700329613

/-! ## A249069.P817352795396056872

`A249070(n)+val(A324698(2*n+5), 17)`
-/

namespace A249069.P817352795396056872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249070 n + (SequenceMachineLib.valuation (A324698 (2 * n + 5)).toNat 17 : ℤ)

end

end A249069.P817352795396056872

/-! ## A249069.P5736376120757131775

`A249070(n)+A000035(A062293(n))`
-/

namespace A249069.P5736376120757131775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249070 n + A000035 (A062293 n).toNat

end

end A249069.P5736376120757131775

/-! ## A249069.P7161134599111140145

`A335446(A129593(n))+A249070(n)`
-/

namespace A249069.P7161134599111140145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A129593 n).toNat + A249070 n

end

end A249069.P7161134599111140145

/-!
# A249070: a(n+1) gives the number of occurrences of the maximum digit of a(n) in factorial base (i.e., A246359(a(n))) so far amongst the factorial base representations of all the terms up to and including a(n), with a(0)=0.

The programs for A249070, there is no canonical definition to state claims against.
-/

/-! ## A249070.P503519285820125254

`A249069(n)%A099355(A028421(n))`
-/

namespace A249070.P503519285820125254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249069 n) (A099355 (A028421 n).toNat)

end

end A249070.P503519285820125254

/-!
# A249071: a(n) = A004001(2*n) - n, where A004001 is Hofstadter-Conway $10000 sequence.

The programs for A249071, the canonical program `A249071.P16849140940575758352` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249071 has offset 1).

The definition of A249071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A004001(2*(n+1))-(n+1)` (program `A249071.P16849140940575758352`, by `A249071.P16849140940575758352.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249071.P9008095088928354976

`A004074(2*(n+1))/2`
-/

namespace A249071.P9008095088928354976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004074 (2 * (n + 1)) : ℚ) / 2

end

end A249071.P9008095088928354976

namespace A249071

/-- `A004074(2*(n+1))/2` -/
def P9008095088928354976.Spec : Prop :=
  ∀ n, P9008095088928354976.a n = (A249071 (n + 1) : ℚ)

end A249071

/-! ## A249071.P16849140940575758352

`A004001(2*(n+1))-(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249071

/-- `A004001(2*(n+1))-(n+1)` -/
def P16849140940575758352.Spec : Prop :=
  ∀ n, P16849140940575758352.a n = A249071 (n + 1)

theorem P16849140940575758352.correct : P16849140940575758352.Spec := by
  intro n
  simp only [A249071, Nat.add_sub_cancel]

end A249071

/-! ## A249071.P9209328397963723985

`A004526(A004074(2*(n+1)))`
-/

namespace A249071.P9209328397963723985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004074 (2 * (n + 1))).toNat

end

end A249071.P9209328397963723985

namespace A249071

/-- `A004526(A004074(2*(n+1)))` -/
def P9209328397963723985.Spec : Prop :=
  ∀ n, P9209328397963723985.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P2602495142644339384

`A028242(A004074(2*(n+1))+1)`
-/

namespace A249071.P2602495142644339384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A004074 (2 * (n + 1)) + 1).toNat

end

end A249071.P2602495142644339384

namespace A249071

/-- `A028242(A004074(2*(n+1))+1)` -/
def P2602495142644339384.Spec : Prop :=
  ∀ n, P2602495142644339384.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P3830151893839783858

`A084964(A004074(2*(n+1))+1)`
-/

namespace A249071.P3830151893839783858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A004074 (2 * (n + 1)) + 1).toNat

end

end A249071.P3830151893839783858

namespace A249071

/-- `A084964(A004074(2*(n+1))+1)` -/
def P3830151893839783858.Spec : Prop :=
  ∀ n, P3830151893839783858.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P17196700041813760565

`A110657(2*A004074(2*(n+1)))`
-/

namespace A249071.P17196700041813760565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * A004074 (2 * (n + 1))).toNat

end

end A249071.P17196700041813760565

namespace A249071

/-- `A110657(2*A004074(2*(n+1)))` -/
def P17196700041813760565.Spec : Prop :=
  ∀ n, P17196700041813760565.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P4358368341315159109

`A226577(2*A004074(2*(n+1)))`
-/

namespace A249071.P4358368341315159109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226577 (2 * A004074 (2 * (n + 1))).toNat

end

end A249071.P4358368341315159109

namespace A249071

/-- `A226577(2*A004074(2*(n+1)))` -/
def P4358368341315159109.Spec : Prop :=
  ∀ n, P4358368341315159109.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P4851257743386229247

`A283469(2*(n+1))+A283472(2*(n+1))-(n+1)`
-/

namespace A249071.P4851257743386229247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283469 (2 * (n + 1)) + (A283472 (2 * (n + 1)) - (n + 1 : ℤ))

end

end A249071.P4851257743386229247

namespace A249071

/-- `A283469(2*(n+1))+A283472(2*(n+1))-(n+1)` -/
def P4851257743386229247.Spec : Prop :=
  ∀ n, P4851257743386229247.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P6162599371473925006

`A080513(A004074(2*(n+1)))-A000035(A004074(2*n+1))`
-/

namespace A249071.P6162599371473925006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A004074 (2 * (n + 1))).toNat - A000035 (A004074 (2 * n + 1)).toNat

end

end A249071.P6162599371473925006

namespace A249071

/-- `A080513(A004074(2*(n+1)))-A000035(A004074(2*n+1))` -/
def P6162599371473925006.Spec : Prop :=
  ∀ n, P6162599371473925006.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P13788583197440234509

`A143232(2*(n+1))`
-/

namespace A249071.P13788583197440234509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143232 (2 * (n + 1))

end

end A249071.P13788583197440234509

namespace A249071

/-- `A143232(2*(n+1))` -/
def P13788583197440234509.Spec : Prop :=
  ∀ n, P13788583197440234509.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P17788362007544277409

`n+1-A087816(Δ[n²])`
-/

namespace A249071.P17788362007544277409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A087816 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A249071.P17788362007544277409

namespace A249071

/-- `n+1-A087816(Δ[n²])` -/
def P17788362007544277409.Spec : Prop :=
  ∀ n, P17788362007544277409.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P6948009842491381806

`1-A087816(2*n+1)+n`
-/

namespace A249071.P6948009842491381806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A087816 (2 * n + 1) + (n : ℤ)

end

end A249071.P6948009842491381806

namespace A249071

/-- `1-A087816(2*n+1)+n` -/
def P6948009842491381806.Spec : Prop :=
  ∀ n, P6948009842491381806.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P18256991496745952422

`2-A080677(2*(n+1))+n`
-/

namespace A249071.P18256991496745952422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080677 (2 * (n + 1)) + (n : ℤ)

end

end A249071.P18256991496745952422

namespace A249071

/-- `2-A080677(2*(n+1))+n` -/
def P18256991496745952422.Spec : Prop :=
  ∀ n, P18256991496745952422.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P3898883595370997291

`A004001(2*n+2)%(n+1)`
-/

namespace A249071.P3898883595370997291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004001 (2 * n + 2)) (n + 1 : ℤ)

end

end A249071.P3898883595370997291

namespace A249071

/-- `A004001(2*n+2)%(n+1)` -/
def P3898883595370997291.Spec : Prop :=
  ∀ n, P3898883595370997291.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P13637151917366645491

`A004001(Δ[n²]+1)-1-n`
-/

namespace A249071.P13637151917366645491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat - 1 - (n : ℤ)

end

end A249071.P13637151917366645491

namespace A249071

/-- `A004001(Δ[n²]+1)-1-n` -/
def P13637151917366645491.Spec : Prop :=
  ∀ n, P13637151917366645491.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P13595427031937715697

`A053644(2*n+1)-(A266349(2*n+1)+n)`
-/

namespace A249071.P13595427031937715697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n + 1) - (A266349 (2 * n + 1) + (n : ℤ))

end

end A249071.P13595427031937715697

namespace A249071

/-- `A053644(2*n+1)-(A266349(2*n+1)+n)` -/
def P13595427031937715697.Spec : Prop :=
  ∀ n, P13595427031937715697.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P11642793667600430540

`A142150(A142150(2*n+1)+A004074(2*(n+1)))`
-/

namespace A249071.P11642793667600430540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A142150 (2 * n + 1) + A004074 (2 * (n + 1))).toNat

end

end A249071.P11642793667600430540

namespace A249071

/-- `A142150(A142150(2*n+1)+A004074(2*(n+1)))` -/
def P11642793667600430540.Spec : Prop :=
  ∀ n, P11642793667600430540.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P14160964109253683532

`A080513(A004074(2*(n+1)))-A000035(2*n+1)`
-/

namespace A249071.P14160964109253683532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A004074 (2 * (n + 1))).toNat - A000035 (2 * n + 1)

end

end A249071.P14160964109253683532

namespace A249071

/-- `A080513(A004074(2*(n+1)))-A000035(2*n+1)` -/
def P14160964109253683532.Spec : Prop :=
  ∀ n, P14160964109253683532.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P8475411868485456201

`A070139((A004074(2*(n+1))+2)²)`
-/

namespace A249071.P8475411868485456201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070139 ((A004074 (2 * (n + 1)) + 2) ^ 2).toNat

end

end A249071.P8475411868485456201

namespace A249071

/-- `A070139((A004074(2*(n+1))+2)²)` -/
def P8475411868485456201.Spec : Prop :=
  ∀ n, P8475411868485456201.a n = A249071 (n + 1)

end A249071

/-! ## A249071.P8430244662043580606

`A001222(A000079(A004001(2*(n+1)))/A000079(n+1))`
-/

namespace A249071.P8430244662043580606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A000079 (A004001 (2 * (n + 1))).toNat : ℚ) / (A000079 (n + 1) : ℚ))).toNat

end

end A249071.P8430244662043580606

namespace A249071

/-- `A001222(A000079(A004001(2*(n+1)))/A000079(n+1))` -/
def P8430244662043580606.Spec : Prop :=
  ∀ n, P8430244662043580606.a n = A249071 (n + 1)

end A249071

/-!
# A249072: Sum of prime indices in the prime factorization of A249337(n), counted with multiplicity: a(n) = A056239(A249337(n)).

The programs for A249072, there is no canonical definition to state claims against.
-/

/-! ## A249072.P5474732347897937319

`A056239(A249337(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249072.P5474732347897937319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A249337 (n + 1)).toNat

end

end A249072.P5474732347897937319

/-! ## A249072.P1169863191559172563

`∑{d}[A249337(n+1), A000720(A014963(#))]`
-/

namespace A249072.P1169863191559172563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 (A014963 d).toNat

end

end A249072.P1169863191559172563

/-! ## A249072.P12834090951915475692

`A346698(A249337(n+1)²)`
-/

namespace A249072.P12834090951915475692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A249337 (n + 1) ^ 2).toNat

end

end A249072.P12834090951915475692

/-! ## A249072.P5093430121081457096

`A346698(A249337(n+1)^2)`
-/

namespace A249072.P5093430121081457096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A249337 (n + 1) ^ 2).toNat

end

end A249072.P5093430121081457096

/-! ## A249072.P15244001586447055281

`A249338(A249339(A249337(n+1))+1)`
-/

namespace A249072.P15244001586447055281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249338 (A249339 (A249337 (n + 1)).toNat + 1).toNat

end

end A249072.P15244001586447055281

/-! ## A249072.P824685405547172603

`A346698(2*A249337(n+1)*A249337(n+1))`
-/

namespace A249072.P824685405547172603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (2 * A249337 (n + 1) * A249337 (n + 1)).toNat

end

end A249072.P824685405547172603

/-! ## A249072.P3967226035517520231

`A057427(A006872(n+1))*A302039(A249337(n+1))`
-/

namespace A249072.P3967226035517520231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A006872 (n + 1)).toNat * A302039 (A249337 (n + 1)).toNat

end

end A249072.P3967226035517520231

/-! ## A249072.P9478990318373710467

`A302039(A249337(n+1))+A000038(A173971(n+1))`
-/

namespace A249072.P9478990318373710467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (A249337 (n + 1)).toNat + A000038 (A173971 (n + 1)).toNat

end

end A249072.P9478990318373710467

/-! ## A249072.P3803308456416271356

`A302039(A249337(n+1))+A000007(A342098(n+1))`
-/

namespace A249072.P3803308456416271356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (A249337 (n + 1)).toNat + A000007 (A342098 (n + 1)).toNat

end

end A249072.P3803308456416271356

/-! ## A249072.P1568683594284856758

`A019426(A108605(n+1))*A302039(A249337(n+1))`
-/

namespace A249072.P1568683594284856758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A108605 (n + 1)).toNat * A302039 (A249337 (n + 1)).toNat

end

end A249072.P1568683594284856758

/-! ## A249072.P5421048988983899920

`A302039(A249337(n+1)%A251885(n+1))`
-/

namespace A249072.P5421048988983899920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (Int.tmod (A249337 (n + 1)) (A251885 (n + 1))).toNat

end

end A249072.P5421048988983899920

/-! ## A249072.P4231154645293323667

`A073424(∑[n])*A302039(A249337(n+1))`
-/

namespace A249072.P4231154645293323667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (∑ j ∈ Finset.range (n + 1), f1 j) * A302039 (A249337 (n + 1)).toNat

end

end A249072.P4231154645293323667

/-! ## A249072.P14498491892602527152

`A007318(∑[n])*A302039(A249337(n+1))`
-/

namespace A249072.P14498491892602527152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A302039 (A249337 (n + 1)).toNat

end

end A249072.P14498491892602527152

/-! ## A249072.P468561388403272268

`A035263(A003154(n+1))*A302039(A249337(n+1))`
-/

namespace A249072.P468561388403272268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A003154 (n + 1)).toNat * A302039 (A249337 (n + 1)).toNat

end

end A249072.P468561388403272268

/-!
# A249073: Ordered union of the sets {h^6, h >=1} and {2*k^6, k >=1}.

The programs for A249073, the canonical program `A249073.P7124989258507197905` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249073 has offset 1).

The definition of A249073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249073.P7124989258507197905

`∪[2*(n+1)^6, ∑[A022522(n)]]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249073

/-- `∪[2*(n+1)^6, ∑[A022522(n)]]` -/
def P7124989258507197905.Spec : Prop :=
  ∀ n, (P7124989258507197905.a n : ℤ) = A249073 (n + 1)

theorem P7124989258507197905.correct : P7124989258507197905.Spec := by
  intro n
  simp only [A249073, Nat.add_sub_cancel]

end A249073

/-! ## A249073.P12900564227513049836

`∪[2*(n+1)^6, Δ[A000540(n)]]`
-/

namespace A249073.P12900564227513049836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249073.P12900564227513049836

namespace A249073

/-- `∪[2*(n+1)^6, Δ[A000540(n)]]` -/
def P12900564227513049836.Spec : Prop :=
  ∀ n, (P12900564227513049836.a n : ℤ) = A249073 (n + 1)

end A249073

/-! ## A249073.P15677012697383374068

`∪[A001014(n+1), Δ[A259109(n)]]`
-/

namespace A249073.P15677012697383374068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259109 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249073.P15677012697383374068

namespace A249073

/-- `∪[A001014(n+1), Δ[A259109(n)]]` -/
def P15677012697383374068.Spec : Prop :=
  ∀ n, (P15677012697383374068.a n : ℤ) = A249073 (n + 1)

end A249073

/-! ## A249073.P4988718446379636474

`∪[A001014(n+1), A106318(n+1)]`
-/

namespace A249073.P4988718446379636474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249073.P4988718446379636474

namespace A249073

/-- `∪[A001014(n+1), A106318(n+1)]` -/
def P4988718446379636474.Spec : Prop :=
  ∀ n, (P4988718446379636474.a n : ℤ) = A249073 (n + 1)

end A249073

/-!
# A249074: Triangular array read by rows: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A249074, there is no canonical definition to state claims against.
-/

/-! ## A249074.P15514241152527826131

`A016116(A004736(n+1))*A248809(n)`
-/

namespace A249074.P15514241152527826131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004736 (n + 1)).toNat * A248809 n

end

end A249074.P15514241152527826131

/-! ## A249074.P7383259121270172869

`A016116(A057555(2*(n+1)))*A248809(n)`
-/

namespace A249074.P7383259121270172869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A057555 (2 * (n + 1))).toNat * A248809 n

end

end A249074.P7383259121270172869

/-! ## A249074.P17754232508459713278

`A019554(A130321(n))*A248809(n)`
-/

namespace A249074.P17754232508459713278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A130321 n).toNat * A248809 n

end

end A249074.P17754232508459713278

/-! ## A249074.P11086931246425328652

`A038040(A248809(n)%A344272(n+1))`
-/

namespace A249074.P11086931246425328652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (Int.tmod (A248809 n) (A344272 (n + 1))).toNat

end

end A249074.P11086931246425328652

/-!
# A249075: Sum of the numbers in row n of the array at A249074.

The programs for A249075, the canonical program `A249075.P4216302954530682771` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249075 has offset 0).

The definition of A249075 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249075.P4216302954530682771

`a(n-1)+2*(n+1)*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249075

/-- `a(n-1)+2*(n+1)*a(n-2)` -/
def P4216302954530682771.Spec : Prop :=
  ∀ n, (P4216302954530682771.a n : ℤ) = A249075 n

theorem P4216302954530682771.correct : P4216302954530682771.Spec := by
  intro n
  simp only [A249075]

end A249075

/-! ## A249075.P9155664329276336354

`∏[2*(n+1)/a(n-1)+1]` with `a(0)=1`
-/

namespace A249075.P9155664329276336354
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * (n + 1) : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A249075.P9155664329276336354

namespace A249075

/-- `∏[2*(n+1)/a(n-1)+1]` -/
def P9155664329276336354.Spec : Prop :=
  ∀ n, P9155664329276336354.a n = (A249075 n : ℚ)

end A249075

/-! ## A249075.P5657092788568235126

`a(n-1)+a(n-2)*A103517(n)` with `a(0)=1, a(1)=5`
-/

namespace A249075.P5657092788568235126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + a (n - 2) * A103517 n

end

end A249075.P5657092788568235126

namespace A249075

/-- `a(n-1)+a(n-2)*A103517(n)` -/
def P5657092788568235126.Spec : Prop :=
  ∀ n, P5657092788568235126.a n = A249075 n

end A249075

/-!
# A249076: a(n) = (n*(n+1))^6.

The programs for A249076, the canonical program `A249076.P2240679337943034702` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249076 has offset 0).

The definition of A249076 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n*(n+1))^6` (program `A249076.P2240679337943034702`, by `A249076.P2240679337943034702.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249076.P2240679337943034702

`(n*(n+1))^6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249076

/-- `(n*(n+1))^6` -/
def P2240679337943034702.Spec : Prop :=
  ∀ n, (P2240679337943034702.a n : ℤ) = A249076 n

theorem P2240679337943034702.correct : P2240679337943034702.Spec := by
  intro n
  simp only [A249076]

end A249076

/-! ## A249076.P14028501796680676546

`(lcm(n, n+1)^3)²`
-/

namespace A249076.P14028501796680676546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) ^ 3) ^ 2

end

end A249076.P14028501796680676546

namespace A249076

/-- `(lcm(n, n+1)^3)²` -/
def P14028501796680676546.Spec : Prop :=
  ∀ n, (P14028501796680676546.a n : ℤ) = A249076 n

end A249076

/-! ## A249076.P13413605146146052889

`((n/tan(acot(n+1)))^3)²`
-/

namespace A249076.P13413605146146052889
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))) ^ 3) ^ 2

end

end A249076.P13413605146146052889

namespace A249076

/-- `((n/tan(acot(n+1)))^3)²` -/
def P13413605146146052889.Spec : Prop :=
  ∀ n, P13413605146146052889.a n = (A249076 n : ℝ)

end A249076

/-! ## A249076.P11597732259170523802

`(∑[a(n-1)+2]^3)²` with `a(0)=0`
-/

namespace A249076.P11597732259170523802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3) ^ 2

end

end A249076.P11597732259170523802

namespace A249076

/-- `(∑[a(n-1)+2]^3)²` -/
def P11597732259170523802.Spec : Prop :=
  ∀ n, (P11597732259170523802.a n : ℤ) = A249076 n

end A249076

/-! ## A249076.P17589882458962079400

`floor(∑[a(n-1)+2]^6)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A249076.P17589882458962079400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 6

end

end A249076.P17589882458962079400

namespace A249076

/-- `floor(∑[a(n-1)+2]^6)` -/
def P17589882458962079400.Spec : Prop :=
  ∀ n, (P17589882458962079400.a n : ℤ) = A249076 n

end A249076

/-! ## A249076.P15801718573695802858

`floor((∑[a(n-1)-2]^3)²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A249076.P15801718573695802858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3) ^ 2

end

end A249076.P15801718573695802858

namespace A249076

/-- `floor((∑[a(n-1)-2]^3)²)` -/
def P15801718573695802858.Spec : Prop :=
  ∀ n, P15801718573695802858.a n = A249076 n

end A249076

/-! ## A249076.P12527164058370919269

`((n+1-record[(n-1)²])^3)²`
-/

namespace A249076.P12527164058370919269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 3) ^ 2

end

end A249076.P12527164058370919269

namespace A249076

/-- `((n+1-record[(n-1)²])^3)²` -/
def P12527164058370919269.Spec : Prop :=
  ∀ n, P12527164058370919269.a n = A249076 n

end A249076

/-! ## A249076.P12736403735001740665

`((∑[a(n-1)-4]/2)^3)²` with `a(0)=0`
-/

namespace A249076.P12736403735001740665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2) ^ 3) ^ 2

end

end A249076.P12736403735001740665

namespace A249076

/-- `((∑[a(n-1)-4]/2)^3)²` -/
def P12736403735001740665.Spec : Prop :=
  ∀ n, P12736403735001740665.a n = (A249076 n : ℚ)

end A249076

/-! ## A249076.P14270262091278695776

`(lcm((n+1)², n²)*∑[2*n])²`
-/

namespace A249076.P14270262091278695776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm ((n + 1) ^ 2) (n ^ 2) * (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A249076.P14270262091278695776

namespace A249076

/-- `(lcm((n+1)², n²)*∑[2*n])²` -/
def P14270262091278695776.Spec : Prop :=
  ∀ n, (P14270262091278695776.a n : ℤ) = A249076 n

end A249076

/-! ## A249076.P18419252673755410983

`lcm(2*n, ∑[2*n]²*∑[2*n])²`
-/

namespace A249076.P18419252673755410983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)) ^ 2

end

end A249076.P18419252673755410983

namespace A249076

/-- `lcm(2*n, ∑[2*n]²*∑[2*n])²` -/
def P18419252673755410983.Spec : Prop :=
  ∀ n, (P18419252673755410983.a n : ℤ) = A249076 n

end A249076

/-! ## A249076.P12345079692374400734

`(∑[and(2*n+1, 2*n)]²*∑[2*n])²`
-/

namespace A249076.P12345079692374400734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)) ^ 2

end

end A249076.P12345079692374400734

namespace A249076

/-- `(∑[and(2*n+1, 2*n)]²*∑[2*n])²` -/
def P12345079692374400734.Spec : Prop :=
  ∀ n, (P12345079692374400734.a n : ℤ) = A249076 n

end A249076

/-! ## A249076.P7126192746544999582

`A060459(n)²`
-/

namespace A249076.P7126192746544999582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060459 n ^ 2

end

end A249076.P7126192746544999582

namespace A249076

/-- `A060459(n)²` -/
def P7126192746544999582.Spec : Prop :=
  ∀ n, P7126192746544999582.a n = A249076 n

theorem P7126192746544999582.correct : P7126192746544999582.Spec := by
  intro n
  simp only [A249076, Nat.add_sub_cancel, A249076.P7126192746544999582.a, A249076.P2240679337943034702.a, A060459, A060459.P13091624147768298715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249076

/-! ## A249076.P16947174416790366385

`(A002378(n)^3)²`
-/

namespace A249076.P16947174416790366385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 n ^ 3) ^ 2

end

end A249076.P16947174416790366385

namespace A249076

/-- `(A002378(n)^3)²` -/
def P16947174416790366385.Spec : Prop :=
  ∀ n, P16947174416790366385.a n = A249076 n

theorem P16947174416790366385.correct : P16947174416790366385.Spec := by
  intro n
  simp only [A249076, Nat.add_sub_cancel, A249076.P16947174416790366385.a, A249076.P2240679337943034702.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249076

/-! ## A249076.P10000835492048048408

`sqrt(A248619(n)^3)`
-/

namespace A249076.P10000835492048048408
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A248619 n ^ 3 : ℝ)

end

end A249076.P10000835492048048408

namespace A249076

/-- `sqrt(A248619(n)^3)` -/
def P10000835492048048408.Spec : Prop :=
  ∀ n, P10000835492048048408.a n = (A249076 n : ℝ)

end A249076

/-! ## A249076.P7919246576670586644

`(n*A099762(n))²`
-/

namespace A249076.P7919246576670586644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A099762 n) ^ 2

end

end A249076.P7919246576670586644

namespace A249076

/-- `(n*A099762(n))²` -/
def P7919246576670586644.Spec : Prop :=
  ∀ n, P7919246576670586644.a n = A249076 n

theorem P7919246576670586644.correct : P7919246576670586644.Spec := by
  intro n
  simp only [A249076, Nat.add_sub_cancel, A249076.P7919246576670586644.a, A249076.P2240679337943034702.a, A099762, A099762.P5343226608238859591.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249076

/-! ## A249076.P8354596335804816302

`(n²*A085540(n))²`
-/

namespace A249076.P8354596335804816302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A085540 n) ^ 2

end

end A249076.P8354596335804816302

namespace A249076

/-- `(n²*A085540(n))²` -/
def P8354596335804816302.Spec : Prop :=
  ∀ n, P8354596335804816302.a n = A249076 n

theorem P8354596335804816302.correct : P8354596335804816302.Spec := by
  intro n
  simp only [A249076, Nat.add_sub_cancel, A249076.P8354596335804816302.a, A249076.P2240679337943034702.a, A085540, A085540.P1594090999451982572.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249076

/-! ## A249076.P13778047794387070822

`(∑[n]*A254371(n))²`
-/

namespace A249076.P13778047794387070822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A254371 n) ^ 2

end

end A249076.P13778047794387070822

namespace A249076

/-- `(∑[n]*A254371(n))²` -/
def P13778047794387070822.Spec : Prop :=
  ∀ n, P13778047794387070822.a n = A249076 n

end A249076

/-! ## A249076.P3870590138950039301

`A002378(n)*A248720(n)`
-/

namespace A249076.P3870590138950039301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n * A248720 n

end

end A249076.P3870590138950039301

namespace A249076

/-- `A002378(n)*A248720(n)` -/
def P3870590138950039301.Spec : Prop :=
  ∀ n, P3870590138950039301.a n = A249076 n

theorem P3870590138950039301.correct : P3870590138950039301.Spec := by
  intro n
  simp only [A249076, Nat.add_sub_cancel, A249076.P3870590138950039301.a, A249076.P2240679337943034702.a, A002378, A002378.P6342434596694243671.a, A248720, A248720.P14698641325103046806.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249076

/-! ## A249076.P17196739940209449973

`A035287(n+1)*A248619(n)`
-/

namespace A249076.P17196739940209449973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035287 (n + 1) * A248619 n

end

end A249076.P17196739940209449973

namespace A249076

/-- `A035287(n+1)*A248619(n)` -/
def P17196739940209449973.Spec : Prop :=
  ∀ n, P17196739940209449973.a n = A249076 n

theorem P17196739940209449973.correct : P17196739940209449973.Spec := by
  intro n
  simp only [A249076, Nat.add_sub_cancel, A249076.P17196739940209449973.a, A249076.P2240679337943034702.a, A035287, A035287.P16843695516421463004.a, A248619, A248619.P9491875530803965383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249076

/-! ## A249076.P4889939491950901608

`(A000578(n+1)*A000578(n))²`
-/

namespace A249076.P4889939491950901608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (n + 1) * A000578 n) ^ 2

end

end A249076.P4889939491950901608

namespace A249076

/-- `(A000578(n+1)*A000578(n))²` -/
def P4889939491950901608.Spec : Prop :=
  ∀ n, P4889939491950901608.a n = A249076 n

theorem P4889939491950901608.correct : P4889939491950901608.Spec := by
  intro n
  simp only [A249076, Nat.add_sub_cancel, A249076.P4889939491950901608.a, A249076.P2240679337943034702.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249076

/-!
# A249077: Primes of the form n^2 + k such that n^2 - k is also prime, where -n < k < n.

The programs for A249077, there is no canonical definition to state claims against.
-/

/-! ## A249077.P8519567272632716142

`p?[A101264(A061579(n))+2*n]`
-/

namespace A249077.P8519567272632716142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A061579 n).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249077.P8519567272632716142

/-! ## A249077.P8715544461092490310

`p?[(2*n+1)*A091304(A038722(n+1))]`
-/

namespace A249077.P8715544461092490310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A091304 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249077.P8715544461092490310

/-! ## A249077.P8104360525470434383

`p?[(2*n+1)*A091304(A061579(n)+1)]`
-/

namespace A249077.P8104360525470434383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A091304 (A061579 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249077.P8104360525470434383

/-! ## A249077.P13915664363431080655

`p?[A103517(n)-A101264(A061579(n))]`
-/

namespace A249077.P13915664363431080655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - A101264 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249077.P13915664363431080655

/-! ## A249077.P11025201073985574451

`p?[A005408(n)*A101264(A061579(n))]`
-/

namespace A249077.P11025201073985574451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A101264 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249077.P11025201073985574451

/-! ## A249077.P3670592437015223868

`p?[(A016777(n)-n)*A101264(A061579(n))]`
-/

namespace A249077.P3670592437015223868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n - (n : ℤ)) * A101264 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249077.P3670592437015223868

/-!
# A249078: E.g.f.: exp(1)*P(x) - Q(x), where P(x) = 1/Product_{n>=1} (1 - x^n/n) and Q(x) = Sum_{n>=1} 1/Product_{k=1..n} (k - x^k).

The programs for A249078, there is no canonical definition to state claims against.
-/

/-! ## A249078.P6067022311041078445

`20*A213513(a(n-2))-n` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A249078.P6067022311041078445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  20 * A213513 (a (n - 2)).toNat - (n : ℤ)

end

end A249078.P6067022311041078445

/-! ## A249078.P15291727793374761782

`A142727(A093344(n)+1)-n`
-/

namespace A249078.P15291727793374761782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142727 (A093344 n + 1).toNat - (n : ℤ)

end

end A249078.P15291727793374761782

/-!
# A249079: 

The programs for A249079, there is no canonical definition to state claims against.
-/

/-! ## A249079.P12739570205558058380

`round(n*(1/29+29))`
-/

namespace A249079.P12739570205558058380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * ((1 : ℚ) / 29 + 29))

end

end A249079.P12739570205558058380

/-!
# A249080: Number of length n+5 0..3 arrays with every six consecutive terms having two times the sum of some two elements equal to the sum of the remaining four.

The programs for A249080, there is no canonical definition to state claims against.
-/

/-! ## A249080.P2221175852833646143

`A249085(∑[n+3]+1)`
-/

namespace A249080.P2221175852833646143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249080.P2221175852833646143

/-! ## A249080.P13500529416426868719

`lcm(2, A249085(A034856(n+2)))`
-/

namespace A249080.P13500529416426868719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249085 (A034856 (n + 2)).toNat)

end

end A249080.P13500529416426868719

/-! ## A249080.P2022872624193230640

`A249085(A034856(n+2))+A000035(2*n)`
-/

namespace A249080.P2022872624193230640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A034856 (n + 2)).toNat + A000035 (2 * n)

end

end A249080.P2022872624193230640

/-! ## A249080.P8397058155080617510

`A249085(A034856(n+2))%A249081(n+1)`
-/

namespace A249080.P8397058155080617510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249085 (A034856 (n + 2)).toNat) (A249081 (n + 1))

end

end A249080.P8397058155080617510

/-!
# A249081: Number of length n+5 0..4 arrays with every six consecutive terms having two times the sum of some two elements equal to the sum of the remaining four.

The programs for A249081, there is no canonical definition to state claims against.
-/

/-! ## A249081.P17057675531780674340

`A249085(∑[n+4]+3)`
-/

namespace A249081.P17057675531780674340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A249081.P17057675531780674340

/-! ## A249081.P6487226024404535313

`or(1, A249085(A141214(n+1)))`
-/

namespace A249081.P6487226024404535313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A249085 (A141214 (n + 1)).toNat)

end

end A249081.P6487226024404535313

/-! ## A249081.P18030403232917560676

`or(1, A249085(A027379(n+2)))`
-/

namespace A249081.P18030403232917560676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A249085 (A027379 (n + 2)).toNat)

end

end A249081.P18030403232917560676

/-! ## A249081.P85131980275119780

`gcd(n, n+1)*A249085(Δ[A034857(n+1)])`
-/

namespace A249081.P85131980275119780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A249085 (f1 (n + 1) - f1 n).toNat

end

end A249081.P85131980275119780

/-! ## A249081.P10388248412160755888

`A249085(A141214(n+1))+A000035(2*n)`
-/

namespace A249081.P10388248412160755888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A141214 (n + 1)).toNat + A000035 (2 * n)

end

end A249081.P10388248412160755888

/-!
# A249082: Number of length n+5 0..5 arrays with every six consecutive terms having two times the sum of some two elements equal to the sum of the remaining four.

The programs for A249082, there is no canonical definition to state claims against.
-/

/-! ## A249082.P14200313778459648066

`A249085(Δ[A264443(n)])`
-/

namespace A249082.P14200313778459648066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (f1 (n + 1) - f1 n).toNat

end

end A249082.P14200313778459648066

/-! ## A249082.P14842898831191079980

`A249085(A046691(n+3))`
-/

namespace A249082.P14842898831191079980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A046691 (n + 3)).toNat

end

end A249082.P14842898831191079980

/-! ## A249082.P199147866077034918

`A249085(Δ[A023545(n+1)])`
-/

namespace A249082.P199147866077034918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (f1 (n + 1) - f1 n).toNat

end

end A249082.P199147866077034918

/-! ## A249082.P12201636672408618302

`A249085(A000217(n+5)-4)`
-/

namespace A249082.P12201636672408618302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A000217 (n + 5) - 4).toNat

end

end A249082.P12201636672408618302

/-! ## A249082.P8556720229666363987

`A249085(Δ[A034857(n+2)]-1)`
-/

namespace A249082.P8556720229666363987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (f1 (n + 1) - f1 n - 1).toNat

end

end A249082.P8556720229666363987

/-!
# A249083: Number of length n+5 0..6 arrays with every six consecutive terms having two times the sum of some two elements equal to the sum of the remaining four.

The programs for A249083, there is no canonical definition to state claims against.
-/

/-! ## A249083.P3058161485501665602

`A249085(A052905(n+3))`
-/

namespace A249083.P3058161485501665602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A052905 (n + 3)).toNat

end

end A249083.P3058161485501665602

/-! ## A249083.P18361201916701956558

`A249085(A055999(n+3)+1)`
-/

namespace A249083.P18361201916701956558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A055999 (n + 3) + 1).toNat

end

end A249083.P18361201916701956558

/-! ## A249083.P15646629009012395590

`A249085(A055998(n+4)-2)`
-/

namespace A249083.P15646629009012395590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A055998 (n + 4) - 2).toNat

end

end A249083.P15646629009012395590

/-! ## A249083.P12058478004480231982

`A249085(A000217(n+6)-5)`
-/

namespace A249083.P12058478004480231982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A000217 (n + 6) - 5).toNat

end

end A249083.P12058478004480231982

/-! ## A249083.P10813241338650210465

`A249085(Δ[Δ[A006504(n+1)]])`
-/

namespace A249083.P10813241338650210465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (f1 (n + 1) - f1 n).toNat

end

end A249083.P10813241338650210465

/-!
# A249084: Number of length n+5 0..7 arrays with every six consecutive terms having two times the sum of some two elements equal to the sum of the remaining four.

The programs for A249084, there is no canonical definition to state claims against.
-/

/-! ## A249084.P10238585903927495999

`A249085(A055999(n+4))`
-/

namespace A249084.P10238585903927495999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A055999 (n + 4)).toNat

end

end A249084.P10238585903927495999

/-! ## A249084.P8384188934717434897

`A249085(A000124(n+7)-7)`
-/

namespace A249084.P8384188934717434897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A000124 (n + 7) - 7).toNat

end

end A249084.P8384188934717434897

/-! ## A249084.P16862335312602506159

`A249085(A000217(n+6)+n+1)`
-/

namespace A249084.P16862335312602506159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A249084.P16862335312602506159

/-! ## A249084.P670193764303543422

`A249085(A055998(n+4)+n+4)`
-/

namespace A249084.P670193764303543422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A055998 (n + 4) + (n + 4 : ℤ)).toNat

end

end A249084.P670193764303543422

/-! ## A249084.P14216384497856435868

`A249085(A005408(n)+Δ[A023545(n+1)]+10)`
-/

namespace A249084.P14216384497856435868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A005408 n + (f1 (n + 1) - f1 n + 10)).toNat

end

end A249084.P14216384497856435868

/-!
# A249085: T(n,k) = Number of length n+5 0..k arrays with every six consecutive terms having two times the sum of some two elements equal to the sum of the remaining four.

The programs for A249085, there is no canonical definition to state claims against.
-/

/-! ## A249085.P14670343718201559763

`A249086(A004736(n+1)^A053497(n))`
-/

namespace A249085.P14670343718201559763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249086 (SequenceMachineLib.roundAway ((A004736 (n + 1) : ℚ) ^ (A053497 n : ℤ))).toNat

end

end A249085.P14670343718201559763

/-!
# A249086: Number of length 1+5 0..n arrays with every six consecutive terms having two times the sum of some two elements equal to the sum of the remaining four.

The programs for A249086, there is no canonical definition to state claims against.
-/

/-! ## A249086.P12593866703281897678

`A001014(n+2)-A249234(n+1)`
-/

namespace A249086.P12593866703281897678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (n + 2) - A249234 (n + 1)

end

end A249086.P12593866703281897678

/-! ## A249086.P17750712030320939152

`A249085(∑[n]+1)`
-/

namespace A249086.P17750712030320939152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249086.P17750712030320939152

/-! ## A249086.P3905839706527309420

`or(and(1, n), A249085(A000124(n)))`
-/

namespace A249086.P3905839706527309420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 n : ℤ) (A249085 (A000124 n).toNat)

end

end A249086.P3905839706527309420

/-! ## A249086.P2639072356467072335

`record[A249085(n+1)/A098474(n)]`
-/

namespace A249086.P2639072356467072335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249085 (n + 1) : ℚ) / (A098474 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249086.P2639072356467072335

/-! ## A249086.P4930983096577857574

`A007318(∑[n])*A249085(A000124(n))`
-/

namespace A249086.P4930983096577857574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A249085 (A000124 n).toNat

end

end A249086.P4930983096577857574

/-!
# A249087: Number of length 2+5 0..n arrays with every six consecutive terms having two times the sum of some two elements equal to the sum of the remaining four.

The programs for A249087, there is no canonical definition to state claims against.
-/

/-! ## A249087.P12148631970853633289

`A249085(∑[n+1]+2)`
-/

namespace A249087.P12148631970853633289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249087.P12148631970853633289

/-! ## A249087.P2460912344590636508

`record[A249085(A022856(n+1))]`
-/

namespace A249087.P2460912344590636508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249087.P2460912344590636508

/-! ## A249087.P14235146215347822228

`record[gcd(A249085(n+1), A263657(n))]`
-/

namespace A249087.P14235146215347822228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A249085 (n + 1)) (A263657 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249087.P14235146215347822228

/-! ## A249087.P17515102347409481293

`record[root(A249085(n+1), A057059(n+1))]`
-/

namespace A249087.P17515102347409481293
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A249085 (n + 1) : ℝ) ^ (1 / (A057059 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249087.P17515102347409481293

/-! ## A249087.P1513387513743174892

`record[root(A249085(n+1), A130270(n+1))]`
-/

namespace A249087.P1513387513743174892
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A249085 (n + 1) : ℝ) ^ (1 / (A130270 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249087.P1513387513743174892

/-!
# A249088: Number of length 3+5 0..n arrays with every six consecutive terms having two times the sum of some two elements equal to the sum of the remaining four.

The programs for A249088, there is no canonical definition to state claims against.
-/

/-! ## A249088.P17019151053628808292

`A249085(∑[n+2]+4)`
-/

namespace A249088.P17019151053628808292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249088.P17019151053628808292

/-! ## A249088.P9150083521488588684

`or(char[1], A249085(A167614(n+1)))`
-/

namespace A249088.P9150083521488588684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A249085 (A167614 (n + 1)).toNat)

end

end A249088.P9150083521488588684

/-! ## A249088.P1352362706677294600

`or(and(1, n), A249085(A046691(n)+7))`
-/

namespace A249088.P1352362706677294600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 n : ℤ) (A249085 (A046691 n + 7).toNat)

end

end A249088.P1352362706677294600

/-! ## A249088.P1024925719380701712

`A063435(n)*A249085(A167614(n+1))`
-/

namespace A249088.P1024925719380701712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A249085 (A167614 (n + 1)).toNat

end

end A249088.P1024925719380701712

/-! ## A249088.P6908845624051213192

`lcm(A033999(n), A249085(A167614(n+1)))`
-/

namespace A249088.P6908845624051213192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A249085 (A167614 (n + 1)).toNat)

end

end A249088.P6908845624051213192

/-!
# A249089: Number of length 4+5 0..n arrays with every six consecutive terms having two times the sum of some two elements equal to the sum of the remaining four.

The programs for A249089, there is no canonical definition to state claims against.
-/

/-! ## A249089.P5120703201799935643

`A249085(∑[n+3]+7)`
-/

namespace A249089.P5120703201799935643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A249089.P5120703201799935643

/-! ## A249089.P4570031725395011890

`or(char[1], A249085(A055999(n)+10))`
-/

namespace A249089.P4570031725395011890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A249085 (A055999 n + 10).toNat)

end

end A249089.P4570031725395011890

/-! ## A249089.P9536656601517178765

`or(A000035(n), A249085(A000217(n+3)+4))`
-/

namespace A249089.P9536656601517178765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A249085 (A000217 (n + 3) + 4).toNat)

end

end A249089.P9536656601517178765

/-! ## A249089.P385055900577760968

`A007318(A000217(n))*A249085(A000217(n+3)+4)`
-/

namespace A249089.P385055900577760968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A249085 (A000217 (n + 3) + 4).toNat

end

end A249089.P385055900577760968

/-! ## A249089.P14551644947186255615

`A014963(A008458(n))*A249085(A000217(n+3)+4)`
-/

namespace A249089.P14551644947186255615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A249085 (A000217 (n + 3) + 4).toNat

end

end A249089.P14551644947186255615

/-!
# A249090: Number of length 5+5 0..n arrays with every six consecutive terms having two times the sum of some two elements equal to the sum of the remaining four.

The programs for A249090, there is no canonical definition to state claims against.
-/

/-! ## A249090.P13689714841452669362

`A249085(A167499(n+3))`
-/

namespace A249090.P13689714841452669362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A167499 (n + 3)).toNat

end

end A249090.P13689714841452669362

/-! ## A249090.P619017510364795647

`A249085(A155212(n)+13)`
-/

namespace A249090.P619017510364795647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A155212 n + 13).toNat

end

end A249090.P619017510364795647

/-! ## A249090.P1383892014154271178

`A249085(A000124(n+4)+4)`
-/

namespace A249090.P1383892014154271178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A000124 (n + 4) + 4).toNat

end

end A249090.P1383892014154271178

/-! ## A249090.P4928286965527921376

`A249085(A000217(n+4)+5)`
-/

namespace A249090.P4928286965527921376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A000217 (n + 4) + 5).toNat

end

end A249090.P4928286965527921376

/-! ## A249090.P11355650052126403015

`A249085(A027379(n+2)+8)`
-/

namespace A249090.P11355650052126403015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A027379 (n + 2) + 8).toNat

end

end A249090.P11355650052126403015

/-!
# A249091: Number of length 6+5 0..n arrays with every six consecutive terms having two times the sum of some two elements equal to the sum of the remaining four.

The programs for A249091, there is no canonical definition to state claims against.
-/

/-! ## A249091.P7419775069997285757

`A249085(A167499(n+4)+1)`
-/

namespace A249091.P7419775069997285757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A167499 (n + 4) + 1).toNat

end

end A249091.P7419775069997285757

/-! ## A249091.P6501473122060621447

`A249085(A000124(n+5)+5)`
-/

namespace A249091.P6501473122060621447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A000124 (n + 5) + 5).toNat

end

end A249091.P6501473122060621447

/-! ## A249091.P10986498570259688580

`A249085(A000217(n+5)+6)`
-/

namespace A249091.P10986498570259688580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A000217 (n + 5) + 6).toNat

end

end A249091.P10986498570259688580

/-! ## A249091.P12435362615445202658

`A249085(A179865(n+6)+6)`
-/

namespace A249091.P12435362615445202658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A179865 (n + 6) + 6).toNat

end

end A249091.P12435362615445202658

/-! ## A249091.P196291521935158261

`A249085(A175631(n+7)+7)`
-/

namespace A249091.P196291521935158261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A175631 (n + 7) + 7).toNat

end

end A249091.P196291521935158261

/-!
# A249092: Number of length 7+5 0..n arrays with every six consecutive terms having two times the sum of some two elements equal to the sum of the remaining four.

The programs for A249092, there is no canonical definition to state claims against.
-/

/-! ## A249092.P4594979483262234602

`A249085(A167499(n+5)+2)`
-/

namespace A249092.P4594979483262234602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A167499 (n + 5) + 2).toNat

end

end A249092.P4594979483262234602

/-! ## A249092.P9443379500353881174

`A249085(A000217(n+6)+7)`
-/

namespace A249092.P9443379500353881174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A000217 (n + 6) + 7).toNat

end

end A249092.P9443379500353881174

/-! ## A249092.P18349795704753755749

`A249085(A179865(n+7)+7)`
-/

namespace A249092.P18349795704753755749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A179865 (n + 7) + 7).toNat

end

end A249092.P18349795704753755749

/-! ## A249092.P8488583403330463777

`A249085(A000124(n+10)-A008574(n+7))`
-/

namespace A249092.P8488583403330463777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A000124 (n + 10) - A008574 (n + 7)).toNat

end

end A249092.P8488583403330463777

/-! ## A249092.P12415120966765549589

`A249085(A034856(n+11)-A008458(n+8))`
-/

namespace A249092.P12415120966765549589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249085 (A034856 (n + 11) - A008458 (n + 8)).toNat

end

end A249092.P12415120966765549589

/-!
# A249093: Length of self-iteration of the Kolakoski sequence A000002 starting at A000002(n): a(n) = max { k | A000002(n+i-1) = A000002(i), 0 < i <= k }.

The programs for A249093, there is no canonical definition to state claims against.
-/

/-! ## A249093.P16623935087235764920

`A249094(A022295(2*(n+1))+n)`
-/

namespace A249093.P16623935087235764920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249094 (A022295 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A249093.P16623935087235764920

/-! ## A249093.P4221055372206130664

`A249094(A074300(3*n+4)-(n+1))`
-/

namespace A249093.P4221055372206130664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249094 (A074300 (3 * n + 4) - (n + 1 : ℤ)).toNat

end

end A249093.P4221055372206130664

/-! ## A249093.P12242327774993280675

`A023443(n)%A121906(A007821(n+1))`
-/

namespace A249093.P12242327774993280675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 n) (A121906 (A007821 (n + 1)).toNat)

end

end A249093.P12242327774993280675

/-! ## A249093.P14007726852139721611

`A046660(A000079(n))%A137807(n+4)`
-/

namespace A249093.P14007726852139721611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046660 (A000079 n).toNat) (A137807 (n + 4))

end

end A249093.P14007726852139721611

/-! ## A249093.P3502316313358839811

`A024450(A024450(n+1))%A001792(A033762(n+1))`
-/

namespace A249093.P3502316313358839811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024450 (A024450 (n + 1)).toNat) (A001792 (A033762 (n + 1)).toNat)

end

end A249093.P3502316313358839811

/-!
# A249094: Length of reverse self-iteration of the Kolakoski sequence A000002 starting at A000002(n): a(n) = max { k | A000002(n-i+1) = A000002(i), 0 < i <= k }.

The programs for A249094, there is no canonical definition to state claims against.
-/

/-! ## A249094.P8940834601768294733

`A249093(A022295(n+2))`
-/

namespace A249094.P8940834601768294733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (A022295 (n + 2)).toNat

end

end A249094.P8940834601768294733

/-! ## A249094.P9963690926839959490

`A249093(A022294(3*n+5)-(n+1))`
-/

namespace A249094.P9963690926839959490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (A022294 (3 * n + 5) - (n + 1 : ℤ)).toNat

end

end A249094.P9963690926839959490

/-! ## A249094.P16397321936385093398

`A249093(A074300(3*n+1)-A034888(2*(n+1)))`
-/

namespace A249094.P16397321936385093398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (A074300 (3 * n + 1) - A034888 (2 * (n + 1))).toNat

end

end A249094.P16397321936385093398

/-! ## A249094.P9929646335450504863

`A249093(A074300(3*(n+1))-(n+1))`
-/

namespace A249094.P9929646335450504863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (A074300 (3 * (n + 1)) - (n + 1 : ℤ)).toNat

end

end A249094.P9929646335450504863

/-! ## A249094.P6961082864265425260

`A036581(A290998(n))^A036584(n)`
-/

namespace A249094.P6961082864265425260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036581 (A290998 n).toNat : ℚ) ^ (A036584 n : ℤ)

end

end A249094.P6961082864265425260

/-!
# A249095: Triangle read by rows: interleaving successive pairs of rows of Pascal's triangle.

The programs for A249095, the canonical program `A249095.P14931875295036221106` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249095 has offset 0).

The definition of A249095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249095.P14931875295036221106

`A007318(((n+1)²%A122800(n+1))%(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A249095

/-- `A007318(((n+1)²%A122800(n+1))%(n+1))` -/
def P14931875295036221106.Spec : Prop :=
  ∀ n, P14931875295036221106.a n = A249095 n

theorem P14931875295036221106.correct : P14931875295036221106.Spec := by
  intro n
  simp only [A249095]

end A249095

/-! ## A249095.P8502547392915225339

`A249307(n)/A000079(A053186(n))`
-/

namespace A249095.P8502547392915225339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249307 n : ℚ) / (A000079 (A053186 n).toNat : ℚ)

end

end A249095.P8502547392915225339

namespace A249095

/-- `A249307(n)/A000079(A053186(n))` -/
def P8502547392915225339.Spec : Prop :=
  ∀ n, P8502547392915225339.a n = (A249095 n : ℚ)

end A249095

/-! ## A249095.P17701821835253216974

`A152905(A127366(n))`
-/

namespace A249095.P17701821835253216974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (A127366 n).toNat

end

end A249095.P17701821835253216974

namespace A249095

/-- `A152905(A127366(n))` -/
def P17701821835253216974.Spec : Prop :=
  ∀ n, P17701821835253216974.a n = A249095 n

end A249095

/-! ## A249095.P2996879863019950340

`A119963(A161983(n))`
-/

namespace A249095.P2996879863019950340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (A161983 n).toNat

end

end A249095.P2996879863019950340

namespace A249095

/-- `A119963(A161983(n))` -/
def P2996879863019950340.Spec : Prop :=
  ∀ n, P2996879863019950340.a n = A249095 n

end A249095

/-! ## A249095.P583816318229097347

`A119963(eq[1, and(1, A002024(n+1))])`
-/

namespace A249095.P583816318229097347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002024 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249095.P583816318229097347

namespace A249095

/-- `A119963(eq[1, and(1, A002024(n+1))])` -/
def P583816318229097347.Spec : Prop :=
  ∀ n, P583816318229097347.a n = A249095 n

end A249095

/-! ## A249095.P3985790137951984558

`A119963(A316670(n+1))`
-/

namespace A249095.P3985790137951984558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (A316670 (n + 1)).toNat

end

end A249095.P3985790137951984558

namespace A249095

/-- `A119963(A316670(n+1))` -/
def P3985790137951984558.Spec : Prop :=
  ∀ n, P3985790137951984558.a n = A249095 n

end A249095

/-! ## A249095.P18442030639261954362

`A119963(A316965(n)+1)`
-/

namespace A249095.P18442030639261954362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (A316965 n + 1).toNat

end

end A249095.P18442030639261954362

namespace A249095

/-- `A119963(A316965(n)+1)` -/
def P18442030639261954362.Spec : Prop :=
  ∀ n, P18442030639261954362.a n = A249095 n

end A249095

/-! ## A249095.P10072620067086374213

`A007318(A117384(n+1)-1)`
-/

namespace A249095.P10072620067086374213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A117384 (n + 1) - 1).toNat

end

end A249095.P10072620067086374213

namespace A249095

/-- `A007318(A117384(n+1)-1)` -/
def P10072620067086374213.Spec : Prop :=
  ∀ n, P10072620067086374213.a n = A249095 n

end A249095

/-! ## A249095.P6395852575891287101

`A007318(1-Δ[A098162(n+1)]+n)`
-/

namespace A249095.P6395852575891287101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (1 - (f1 (n + 1) - f1 n) + (n : ℤ)).toNat

end

end A249095.P6395852575891287101

namespace A249095

/-- `A007318(1-Δ[A098162(n+1)]+n)` -/
def P6395852575891287101.Spec : Prop :=
  ∀ n, P6395852575891287101.a n = A249095 n

end A249095

/-!
# A249096: {2*h^2, h >=1} union {3*k^2, k >=1}, in increasing order.

The programs for A249096, the canonical program `A249096.P474669818713901447` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249096 has offset 1).

The definition of A249096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249096.P474669818713901447

`∑[abs(Δ[∪[2*n², 3*n²]])]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249096

/-- `∑[abs(Δ[∪[2*n², 3*n²]])]` -/
def P474669818713901447.Spec : Prop :=
  ∀ n, P474669818713901447.a n = A249096 (n + 1)

theorem P474669818713901447.correct : P474669818713901447.Spec := by
  intro n
  simp only [A249096, Nat.add_sub_cancel]

end A249096

/-! ## A249096.P9382623885477936652

`∪[2*(n+1)², 3*(n+1)²]`
-/

namespace A249096.P9382623885477936652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A249096.P9382623885477936652

namespace A249096

/-- `∪[2*(n+1)², 3*(n+1)²]` -/
def P9382623885477936652.Spec : Prop :=
  ∀ n, (P9382623885477936652.a n : ℤ) = A249096 (n + 1)

end A249096

/-! ## A249096.P11276865624891352715

`filter[A083854(n+1), A066829(#)]`
-/

namespace A249096.P11276865624891352715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A249096.P11276865624891352715

namespace A249096

/-- `filter[A083854(n+1), A066829(#)]` -/
def P11276865624891352715.Spec : Prop :=
  ∀ n, P11276865624891352715.a n = A249096 (n + 1)

end A249096

/-! ## A249096.P10797086523161919248

`filter[A083854(n+1), A182582(#)]`
-/

namespace A249096.P10797086523161919248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A249096.P10797086523161919248

namespace A249096

/-- `filter[A083854(n+1), A182582(#)]` -/
def P10797086523161919248.Spec : Prop :=
  ∀ n, P10797086523161919248.a n = A249096 (n + 1)

end A249096

/-! ## A249096.P1261417185078836568

`filter[A083854(n+1), A358769(#)]`
-/

namespace A249096.P1261417185078836568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A249096.P1261417185078836568

namespace A249096

/-- `filter[A083854(n+1), A358769(#)]` -/
def P1261417185078836568.Spec : Prop :=
  ∀ n, P1261417185078836568.a n = A249096 (n + 1)

end A249096

/-! ## A249096.P10526073943923202527

`∩[A084917(n+1), A083854(n)]`
-/

namespace A249096.P10526073943923202527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249096.P10526073943923202527

namespace A249096

/-- `∩[A084917(n+1), A083854(n)]` -/
def P10526073943923202527.Spec : Prop :=
  ∀ n, (P10526073943923202527.a n : ℤ) = A249096 (n + 1)

end A249096

/-! ## A249096.P6493453190838109940

`∩[A028955(n+2), A083854(n)]`
-/

namespace A249096.P6493453190838109940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249096.P6493453190838109940

namespace A249096

/-- `∩[A028955(n+2), A083854(n)]` -/
def P6493453190838109940.Spec : Prop :=
  ∀ n, (P6493453190838109940.a n : ℤ) = A249096 (n + 1)

end A249096

/-! ## A249096.P5575694869414832855

`∩[A029718(n+2), A083854(n)]`
-/

namespace A249096.P5575694869414832855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029718 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249096.P5575694869414832855

namespace A249096

/-- `∩[A029718(n+2), A083854(n)]` -/
def P5575694869414832855.Spec : Prop :=
  ∀ n, (P5575694869414832855.a n : ℤ) = A249096 (n + 1)

end A249096

/-! ## A249096.P5576733585649975695

`∩[A002480(n+2), A083854(n)]`
-/

namespace A249096.P5576733585649975695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249096.P5576733585649975695

namespace A249096

/-- `∩[A002480(n+2), A083854(n)]` -/
def P5576733585649975695.Spec : Prop :=
  ∀ n, (P5576733585649975695.a n : ℤ) = A249096 (n + 1)

end A249096

/-! ## A249096.P18302400344664851416

`filter[A229125(n+1), A182582(#)]`
-/

namespace A249096.P18302400344664851416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A249096.P18302400344664851416

namespace A249096

/-- `filter[A229125(n+1), A182582(#)]` -/
def P18302400344664851416.Spec : Prop :=
  ∀ n, P18302400344664851416.a n = A249096 (n + 1)

end A249096

/-! ## A249096.P14116453320081231046

`∩[A229125(n+1), A083854(n)]`
-/

namespace A249096.P14116453320081231046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249096.P14116453320081231046

namespace A249096

/-- `∩[A229125(n+1), A083854(n)]` -/
def P14116453320081231046.Spec : Prop :=
  ∀ n, (P14116453320081231046.a n : ℤ) = A249096 (n + 1)

end A249096

/-! ## A249096.P14273631716541399794

`filter[A265640(n+1), A182582(#)]`
-/

namespace A249096.P14273631716541399794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A249096.P14273631716541399794

namespace A249096

/-- `filter[A265640(n+1), A182582(#)]` -/
def P14273631716541399794.Spec : Prop :=
  ∀ n, P14273631716541399794.a n = A249096 (n + 1)

end A249096

/-! ## A249096.P3245313124577622493

`filter[A325424(n+1), A358769(#)]`
-/

namespace A249096.P3245313124577622493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A249096.P3245313124577622493

namespace A249096

/-- `filter[A325424(n+1), A358769(#)]` -/
def P3245313124577622493.Spec : Prop :=
  ∀ n, P3245313124577622493.a n = A249096 (n + 1)

end A249096

/-! ## A249096.P29266309129326498

`∩[A325424(n+1), A083854(n)]`
-/

namespace A249096.P29266309129326498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249096.P29266309129326498

namespace A249096

/-- `∩[A325424(n+1), A083854(n)]` -/
def P29266309129326498.Spec : Prop :=
  ∀ n, (P29266309129326498.a n : ℤ) = A249096 (n + 1)

end A249096

/-! ## A249096.P12314606994325835464

`∩[A229125(n+1), A325424(n+1)]`
-/

namespace A249096.P12314606994325835464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249096.P12314606994325835464

namespace A249096

/-- `∩[A229125(n+1), A325424(n+1)]` -/
def P12314606994325835464.Spec : Prop :=
  ∀ n, (P12314606994325835464.a n : ℤ) = A249096 (n + 1)

end A249096

/-! ## A249096.P15307848762344700423

`∩[A265640(n+1), A325424(n+1)]`
-/

namespace A249096.P15307848762344700423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249096.P15307848762344700423

namespace A249096

/-- `∩[A265640(n+1), A325424(n+1)]` -/
def P15307848762344700423.Spec : Prop :=
  ∀ n, (P15307848762344700423.a n : ℤ) = A249096 (n + 1)

end A249096

/-! ## A249096.P16868045574984331578

`∩[A338691(n+1), A083854(n)]`
-/

namespace A249096.P16868045574984331578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249096.P16868045574984331578

namespace A249096

/-- `∩[A338691(n+1), A083854(n)]` -/
def P16868045574984331578.Spec : Prop :=
  ∀ n, (P16868045574984331578.a n : ℤ) = A249096 (n + 1)

end A249096

/-! ## A249096.P11921829062018234091

`∩[A026424(n+1), A083854(n)]`
-/

namespace A249096.P11921829062018234091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249096.P11921829062018234091

namespace A249096

/-- `∩[A026424(n+1), A083854(n)]` -/
def P11921829062018234091.Spec : Prop :=
  ∀ n, (P11921829062018234091.a n : ℤ) = A249096 (n + 1)

end A249096

/-! ## A249096.P9955109661570374459

`∩[A189716(n+1), A083854(n)]`
-/

namespace A249096.P9955109661570374459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249096.P9955109661570374459

namespace A249096

/-- `∩[A189716(n+1), A083854(n)]` -/
def P9955109661570374459.Spec : Prop :=
  ∀ n, (P9955109661570374459.a n : ℤ) = A249096 (n + 1)

end A249096

/-! ## A249096.P14041004733036700393

`∩[A243192(n+2), A083854(n)]`
-/

namespace A249096.P14041004733036700393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243192 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249096.P14041004733036700393

namespace A249096

/-- `∩[A243192(n+2), A083854(n)]` -/
def P14041004733036700393.Spec : Prop :=
  ∀ n, (P14041004733036700393.a n : ℤ) = A249096 (n + 1)

end A249096

/-!
# A249097: Ordered union of the sets {h^6, h >=1} and {3*k^6, k >=1}.

The programs for A249097, the canonical program `A249097.P355184434680390509` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249097 has offset 1).

The definition of A249097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249097.P355184434680390509

`∪[3*(n+1)^6, Δ[A000540(n)]]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249097

/-- `∪[3*(n+1)^6, Δ[A000540(n)]]` -/
def P355184434680390509.Spec : Prop :=
  ∀ n, (P355184434680390509.a n : ℤ) = A249097 (n + 1)

theorem P355184434680390509.correct : P355184434680390509.Spec := by
  intro n
  simp only [A249097, Nat.add_sub_cancel]

end A249097

/-! ## A249097.P2039271580300083871

`∪[3*A001014(n+1), A001014(n+1)]`
-/

namespace A249097.P2039271580300083871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249097.P2039271580300083871

namespace A249097

/-- `∪[3*A001014(n+1), A001014(n+1)]` -/
def P2039271580300083871.Spec : Prop :=
  ∀ n, (P2039271580300083871.a n : ℤ) = A249097 (n + 1)

end A249097

/-! ## A249097.P6583925970852263958

`filter[A004854(n+2), A145377(#)]`
-/

namespace A249097.P6583925970852263958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004854 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145377 (f1 j).toNat = 1) n)

end

end A249097.P6583925970852263958

namespace A249097

/-- `filter[A004854(n+2), A145377(#)]` -/
def P6583925970852263958.Spec : Prop :=
  ∀ n, P6583925970852263958.a n = A249097 (n + 1)

end A249097

/-!
# A249098: Position of n^6 in the ordered union of {h^6, h >=1} and {3*k^6, k >=1}.

The programs for A249098, the canonical program `A249098.P10374508697824237151` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249098 has offset 1).

The definition of A249098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249098.P10374508697824237151

`floor((1+1/3^(1/6))*(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249098

/-- `floor((1+1/3^(1/6))*(n+1))` -/
def P10374508697824237151.Spec : Prop :=
  ∀ n, P10374508697824237151.a n = A249098 (n + 1)

theorem P10374508697824237151.correct : P10374508697824237151.Spec := by
  intro n
  simp only [A249098, Nat.add_sub_cancel]

end A249098

/-! ## A249098.P11220938098733374093

`∑[A168185((n+1)²)]+n`
-/

namespace A249098.P11220938098733374093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A249098.P11220938098733374093

namespace A249098

/-- `∑[A168185((n+1)²)]+n` -/
def P11220938098733374093.Spec : Prop :=
  ∀ n, P11220938098733374093.a n = A249098 (n + 1)

end A249098

/-! ## A249098.P2623597369255516498

`round(log(A104531(n+1)))`
-/

namespace A249098.P2623597369255516498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A104531 (n + 1) : ℝ))

end

end A249098.P2623597369255516498

namespace A249098

/-- `round(log(A104531(n+1)))` -/
def P2623597369255516498.Spec : Prop :=
  ∀ n, P2623597369255516498.a n = A249098 (n + 1)

end A249098

/-! ## A249098.P4830704165580885993

`round(log(A127358(2*n+1)))`
-/

namespace A249098.P4830704165580885993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A127358 (2 * n + 1) : ℝ))

end

end A249098.P4830704165580885993

namespace A249098

/-- `round(log(A127358(2*n+1)))` -/
def P4830704165580885993.Spec : Prop :=
  ∀ n, P4830704165580885993.a n = A249098 (n + 1)

end A249098

/-! ## A249098.P10915243111444373364

`∑[A080063((n+1)²)]+n`
-/

namespace A249098.P10915243111444373364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080063 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A249098.P10915243111444373364

namespace A249098

/-- `∑[A080063((n+1)²)]+n` -/
def P10915243111444373364.Spec : Prop :=
  ∀ n, P10915243111444373364.a n = A249098 (n + 1)

end A249098

/-! ## A249098.P11573050518493915862

`∑[A141212((n+1)²)]+n`
-/

namespace A249098.P11573050518493915862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141212 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A249098.P11573050518493915862

namespace A249098

/-- `∑[A141212((n+1)²)]+n` -/
def P11573050518493915862.Spec : Prop :=
  ∀ n, P11573050518493915862.a n = A249098 (n + 1)

end A249098

/-! ## A249098.P11770994760728114119

`∑[A059620((n+1)²)]+n`
-/

namespace A249098.P11770994760728114119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059620 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A249098.P11770994760728114119

namespace A249098

/-- `∑[A059620((n+1)²)]+n` -/
def P11770994760728114119.Spec : Prop :=
  ∀ n, P11770994760728114119.a n = A249098 (n + 1)

end A249098

/-! ## A249098.P2507285393635790007

`∑[A131719((n+1)²)]+n`
-/

namespace A249098.P2507285393635790007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131719 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A249098.P2507285393635790007

namespace A249098

/-- `∑[A131719((n+1)²)]+n` -/
def P2507285393635790007.Spec : Prop :=
  ∀ n, P2507285393635790007.a n = A249098 (n + 1)

end A249098

/-! ## A249098.P1742374014555949203

`Δ[A194223((n+1)²)]+n`
-/

namespace A249098.P1742374014555949203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194223 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A249098.P1742374014555949203

namespace A249098

/-- `Δ[A194223((n+1)²)]+n` -/
def P1742374014555949203.Spec : Prop :=
  ∀ n, P1742374014555949203.a n = A249098 (n + 1)

end A249098

/-! ## A249098.P12909393075993120835

`Δ[A114540((n+1)²)]+n`
-/

namespace A249098.P12909393075993120835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114540 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A249098.P12909393075993120835

namespace A249098

/-- `Δ[A114540((n+1)²)]+n` -/
def P12909393075993120835.Spec : Prop :=
  ∀ n, P12909393075993120835.a n = A249098 (n + 1)

end A249098

/-!
# A249099: Position of 3*n^6 in the ordered union of {h^6, h >=1} and {3*k^6, k >=1}.

The programs for A249099, the canonical program `A249099.P7656201923004243480` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249099 has offset 1).

The definition of A249099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249099.P7656201923004243480

`floor((1+3^(1/6))*(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249099

/-- `floor((1+3^(1/6))*(n+1))` -/
def P7656201923004243480.Spec : Prop :=
  ∀ n, P7656201923004243480.a n = A249099 (n + 1)

theorem P7656201923004243480.correct : P7656201923004243480.Spec := by
  intro n
  simp only [A249099, Nat.add_sub_cancel]

end A249099

/-! ## A249099.P10613745777488360555

`A257839(A250120(n+1))+n`
-/

namespace A249099.P10613745777488360555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A250120 (n + 1)).toNat + (n : ℤ)

end

end A249099.P10613745777488360555

namespace A249099

/-- `A257839(A250120(n+1))+n` -/
def P10613745777488360555.Spec : Prop :=
  ∀ n, P10613745777488360555.a n = A249099 (n + 1)

end A249099

/-! ## A249099.P3190333219068174647

`A160542(2*n+3)+A008683(A007700(n+1))`
-/

namespace A249099.P3190333219068174647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (2 * n + 3) + A008683 (A007700 (n + 1)).toNat

end

end A249099.P3190333219068174647

namespace A249099

/-- `A160542(2*n+3)+A008683(A007700(n+1))` -/
def P3190333219068174647.Spec : Prop :=
  ∀ n, P3190333219068174647.a n = A249099 (n + 1)

end A249099

/-! ## A249099.P88740456389879622

`A160542(2*n+3)-A060576(A034387(2*n+1))`
-/

namespace A249099.P88740456389879622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (2 * n + 3) - A060576 (A034387 (2 * n + 1)).toNat

end

end A249099.P88740456389879622

namespace A249099

/-- `A160542(2*n+3)-A060576(A034387(2*n+1))` -/
def P88740456389879622.Spec : Prop :=
  ∀ n, P88740456389879622.a n = A249099 (n + 1)

end A249099

/-! ## A249099.P12762570362289224069

`A160542(2*n+3)-A057427(A056034(2*n+5))`
-/

namespace A249099.P12762570362289224069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (2 * n + 3) - A057427 (A056034 (2 * n + 5)).toNat

end

end A249099.P12762570362289224069

namespace A249099

/-- `A160542(2*n+3)-A057427(A056034(2*n+5))` -/
def P12762570362289224069.Spec : Prop :=
  ∀ n, P12762570362289224069.a n = A249099 (n + 1)

end A249099

/-! ## A249099.P10156787850629041740

`A240088(A275999(n+1))+A057354(3*n+3)`
-/

namespace A249099.P10156787850629041740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240088 (A275999 (n + 1)).toNat + A057354 (3 * n + 3)

end

end A249099.P10156787850629041740

namespace A249099

/-- `A240088(A275999(n+1))+A057354(3*n+3)` -/
def P10156787850629041740.Spec : Prop :=
  ∀ n, P10156787850629041740.a n = A249099 (n + 1)

end A249099

/-! ## A249099.P12796374362740675349

`A160542(2*(n+2))-A000005(A235395(3*n+2))`
-/

namespace A249099.P12796374362740675349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (2 * (n + 2)) - A000005 (A235395 (3 * n + 2)).toNat

end

end A249099.P12796374362740675349

namespace A249099

/-- `A160542(2*(n+2))-A000005(A235395(3*n+2))` -/
def P12796374362740675349.Spec : Prop :=
  ∀ n, P12796374362740675349.a n = A249099 (n + 1)

end A249099

/-! ## A249099.P15983358871141826787

`A057354(3*n+3)+A002024(A000124(n))`
-/

namespace A249099.P15983358871141826787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (3 * n + 3) + A002024 (A000124 n).toNat

end

end A249099.P15983358871141826787

namespace A249099

/-- `A057354(3*n+3)+A002024(A000124(n))` -/
def P15983358871141826787.Spec : Prop :=
  ∀ n, P15983358871141826787.a n = A249099 (n + 1)

end A249099

/-! ## A249099.P1644246087057891757

`∑[A135352(∑[n+3])]`
-/

namespace A249099.P1644246087057891757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135352 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249099.P1644246087057891757

namespace A249099

/-- `∑[A135352(∑[n+3])]` -/
def P1644246087057891757.Spec : Prop :=
  ∀ n, P1644246087057891757.a n = A249099 (n + 1)

end A249099

/-! ## A249099.P9180763625592481421

`∑[A299229((5^val(n+1, 5))²)]`
-/

namespace A249099.P9180763625592481421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299229 ((5 ^ SequenceMachineLib.valuation (n + 1) 5) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249099.P9180763625592481421

namespace A249099

/-- `∑[A299229((5^val(n+1, 5))²)]` -/
def P9180763625592481421.Spec : Prop :=
  ∀ n, P9180763625592481421.a n = A249099 (n + 1)

end A249099

/-! ## A249099.P12494940643528522972

`∑[A165024(Δ[A007091(n)])]`
-/

namespace A249099.P12494940643528522972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165024 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249099.P12494940643528522972

namespace A249099

/-- `∑[A165024(Δ[A007091(n)])]` -/
def P12494940643528522972.Spec : Prop :=
  ∀ n, P12494940643528522972.a n = A249099 (n + 1)

end A249099

/-! ## A249099.P1659847917152184934

`∑[A049237(A075528(val(n+1, 5)+1))]`
-/

namespace A249099.P1659847917152184934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049237 (A075528 (SequenceMachineLib.valuation (n + 1) 5 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249099.P1659847917152184934

namespace A249099

/-- `∑[A049237(A075528(val(n+1, 5)+1))]` -/
def P1659847917152184934.Spec : Prop :=
  ∀ n, P1659847917152184934.a n = A249099 (n + 1)

end A249099

/-! ## A249099.P5981843086215863818

`∑[A129654(A033429(5^val(n+1, 5)))]`
-/

namespace A249099.P5981843086215863818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (A033429 (5 ^ SequenceMachineLib.valuation (n + 1) 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249099.P5981843086215863818

namespace A249099

/-- `∑[A129654(A033429(5^val(n+1, 5)))]` -/
def P5981843086215863818.Spec : Prop :=
  ∀ n, P5981843086215863818.a n = A249099 (n + 1)

end A249099

