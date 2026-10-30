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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A033900: Sort then Add, a(1)=19.

The programs for A033900, there is no canonical definition to state claims against.
-/

/-! ## A033900.P5853045760041572562

`A070196(a(n-1))` with `a(0)=19`
-/

namespace A033900.P5853045760041572562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19] fun n a =>
  A070196 (a (n - 1)).toNat

end

end A033900.P5853045760041572562

/-! ## A033900.P1079244584733453668

`A004185(a(n-1))+a(n-1)` with `a(0)=19`
-/

namespace A033900.P1079244584733453668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19] fun n a =>
  A004185 (a (n - 1)).toNat + a (n - 1)

end

end A033900.P1079244584733453668

/-! ## A033900.P10717248586312516488

`a(n-1)+a(n-1)-A193581(a(n-1))` with `a(0)=19`
-/

namespace A033900.P10717248586312516488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19] fun n a =>
  a (n - 1) + (a (n - 1) - A193581 (a (n - 1)).toNat)

end

end A033900.P10717248586312516488

/-! ## A033900.P11790212581730358719

`record[A070196(a(A220096(n)))]` with `a(0)=19`
-/

namespace A033900.P11790212581730358719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [19] fun n f1 =>
  A070196 (f1 (A220096 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033900.P11790212581730358719

/-!
# A033901: Sort then Add, a(1)=21.

The programs for A033901, there is no canonical definition to state claims against.
-/

/-! ## A033901.P4262055305778504877

`A033898(n+2)+A033906(n+2)-A033905(n+1)`
-/

namespace A033901.P4262055305778504877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033898 (n + 2) + (A033906 (n + 2) - A033905 (n + 1))

end

end A033901.P4262055305778504877

/-! ## A033901.P2125554107097435899

`A070196(a(n-1))` with `a(0)=21`
-/

namespace A033901.P2125554107097435899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21] fun n a =>
  A070196 (a (n - 1)).toNat

end

end A033901.P2125554107097435899

/-! ## A033901.P4971439070305788530

`A004185(a(n-1))+a(n-1)` with `a(0)=21`
-/

namespace A033901.P4971439070305788530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21] fun n a =>
  A004185 (a (n - 1)).toNat + a (n - 1)

end

end A033901.P4971439070305788530

/-! ## A033901.P11182463040657796032

`a(n-1)+a(n-1)-A193581(a(n-1))` with `a(0)=21`
-/

namespace A033901.P11182463040657796032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21] fun n a =>
  a (n - 1) + (a (n - 1) - A193581 (a (n - 1)).toNat)

end

end A033901.P11182463040657796032

/-!
# A033902: Sort then Add, a(1)=25.

The programs for A033902, there is no canonical definition to state claims against.
-/

/-! ## A033902.P17691194199046885514

`A070196(a(n-1))` with `a(0)=25`
-/

namespace A033902.P17691194199046885514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25] fun n a =>
  A070196 (a (n - 1)).toNat

end

end A033902.P17691194199046885514

/-! ## A033902.P1929747854687862457

`A004185(a(n-1))+a(n-1)` with `a(0)=25`
-/

namespace A033902.P1929747854687862457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25] fun n a =>
  A004185 (a (n - 1)).toNat + a (n - 1)

end

end A033902.P1929747854687862457

/-! ## A033902.P6265143122882687495

`a(n-1)+a(n-1)-A193581(a(n-1))` with `a(0)=25`
-/

namespace A033902.P6265143122882687495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25] fun n a =>
  a (n - 1) + (a (n - 1) - A193581 (a (n - 1)).toNat)

end

end A033902.P6265143122882687495

/-! ## A033902.P17908125764625459904

`record[A070196(a(A193581(n)))]` with `a(0)=25`
-/

namespace A033902.P17908125764625459904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [25] fun n f1 =>
  A070196 (f1 (A193581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033902.P17908125764625459904

/-!
# A033903: Sort then Add, a(1)=27.

The programs for A033903, there is no canonical definition to state claims against.
-/

/-! ## A033903.P7532841692856076435

`A070196(a(n-1))` with `a(0)=27`
-/

namespace A033903.P7532841692856076435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [27] fun n a =>
  A070196 (a (n - 1)).toNat

end

end A033903.P7532841692856076435

/-! ## A033903.P4138840192058657589

`A004185(a(n-1))+a(n-1)` with `a(0)=27`
-/

namespace A033903.P4138840192058657589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [27] fun n a =>
  A004185 (a (n - 1)).toNat + a (n - 1)

end

end A033903.P4138840192058657589

/-! ## A033903.P6558883579178166695

`a(n-1)+a(n-1)-A193581(a(n-1))` with `a(0)=27`
-/

namespace A033903.P6558883579178166695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [27] fun n a =>
  a (n - 1) + (a (n - 1) - A193581 (a (n - 1)).toNat)

end

end A033903.P6558883579178166695

/-! ## A033903.P4741909962756608566

`record[A070196(a(A193581(n)))]` with `a(0)=27`
-/

namespace A033903.P4741909962756608566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [27] fun n f1 =>
  A070196 (f1 (A193581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033903.P4741909962756608566

/-! ## A033903.P17556489013783952241

`record[A070196(a(A220096(n)))]` with `a(0)=27`
-/

namespace A033903.P17556489013783952241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [27] fun n f1 =>
  A070196 (f1 (A220096 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033903.P17556489013783952241

/-!
# A033904: Sort then Add, a(1)=29.

The programs for A033904, there is no canonical definition to state claims against.
-/

/-! ## A033904.P14860455923733888831

`A070196(a(n-1))` with `a(0)=29`
-/

namespace A033904.P14860455923733888831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [29] fun n a =>
  A070196 (a (n - 1)).toNat

end

end A033904.P14860455923733888831

/-! ## A033904.P18092167334984887398

`A004185(a(n-1))+a(n-1)` with `a(0)=29`
-/

namespace A033904.P18092167334984887398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [29] fun n a =>
  A004185 (a (n - 1)).toNat + a (n - 1)

end

end A033904.P18092167334984887398

/-! ## A033904.P4206918083425335074

`a(n-1)+a(n-1)-A193581(a(n-1))` with `a(0)=29`
-/

namespace A033904.P4206918083425335074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [29] fun n a =>
  a (n - 1) + (a (n - 1) - A193581 (a (n - 1)).toNat)

end

end A033904.P4206918083425335074

/-! ## A033904.P15556595222923908534

`record[A070196(a(A193581(n)))]` with `a(0)=29`
-/

namespace A033904.P15556595222923908534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [29] fun n f1 =>
  A070196 (f1 (A193581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033904.P15556595222923908534

/-! ## A033904.P12703544528371867733

`record[A070196(a(A220096(n)))]` with `a(0)=29`
-/

namespace A033904.P12703544528371867733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [29] fun n f1 =>
  A070196 (f1 (A220096 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033904.P12703544528371867733

/-!
# A033905: Sort then Add, a(1)=31.

The programs for A033905, there is no canonical definition to state claims against.
-/

/-! ## A033905.P6265087146381997292

`A033898(n+2)+A033906(n+2)-A033901(n+1)`
-/

namespace A033905.P6265087146381997292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033898 (n + 2) + (A033906 (n + 2) - A033901 (n + 1))

end

end A033905.P6265087146381997292

/-! ## A033905.P10346337953425816518

`A070196(a(n-1))` with `a(0)=31`
-/

namespace A033905.P10346337953425816518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [31] fun n a =>
  A070196 (a (n - 1)).toNat

end

end A033905.P10346337953425816518

/-! ## A033905.P15418529911248039218

`A004185(a(n-1))+a(n-1)` with `a(0)=31`
-/

namespace A033905.P15418529911248039218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [31] fun n a =>
  A004185 (a (n - 1)).toNat + a (n - 1)

end

end A033905.P15418529911248039218

/-! ## A033905.P484811821905729137

`a(n-1)+a(n-1)-A193581(a(n-1))` with `a(0)=31`
-/

namespace A033905.P484811821905729137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [31] fun n a =>
  a (n - 1) + (a (n - 1) - A193581 (a (n - 1)).toNat)

end

end A033905.P484811821905729137

/-!
# A033906: Sort then Add, a(1)=20.

The programs for A033906, there is no canonical definition to state claims against.
-/

/-! ## A033906.P2286853455315645353

`A070196(a(n-1))` with `a(0)=20`
-/

namespace A033906.P2286853455315645353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [20] fun n a =>
  A070196 (a (n - 1)).toNat

end

end A033906.P2286853455315645353

/-! ## A033906.P7306322180510191075

`A004185(a(n-1))+a(n-1)` with `a(0)=20`
-/

namespace A033906.P7306322180510191075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [20] fun n a =>
  A004185 (a (n - 1)).toNat + a (n - 1)

end

end A033906.P7306322180510191075

/-! ## A033906.P4352501224460889135

`a(n-1)+a(n-1)-A193581(a(n-1))` with `a(0)=20`
-/

namespace A033906.P4352501224460889135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [20] fun n a =>
  a (n - 1) + (a (n - 1) - A193581 (a (n - 1)).toNat)

end

end A033906.P4352501224460889135

/-! ## A033906.P14399050373486343046

`record[A070196(a(A220096(n)))]` with `a(0)=20`
-/

namespace A033906.P14399050373486343046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [20] fun n f1 =>
  A070196 (f1 (A220096 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033906.P14399050373486343046

/-!
# A033907: Sort then Add, a(1)=32.

The programs for A033907, there is no canonical definition to state claims against.
-/

/-! ## A033907.P732273928827319312

`A033860(n+6)`
-/

namespace A033907.P732273928827319312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033860 (n + 6)

end

end A033907.P732273928827319312

/-! ## A033907.P15312761429402524443

`A070196(a(n-1))` with `a(0)=32`
-/

namespace A033907.P15312761429402524443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  A070196 (a (n - 1)).toNat

end

end A033907.P15312761429402524443

/-! ## A033907.P9480012434052405814

`A004185(a(n-1))+a(n-1)` with `a(0)=32`
-/

namespace A033907.P9480012434052405814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  A004185 (a (n - 1)).toNat + a (n - 1)

end

end A033907.P9480012434052405814

/-! ## A033907.P15100144467612787831

`a(n-1)+a(n-1)-A193581(a(n-1))` with `a(0)=32`
-/

namespace A033907.P15100144467612787831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  a (n - 1) + (a (n - 1) - A193581 (a (n - 1)).toNat)

end

end A033907.P15100144467612787831

/-! ## A033907.P12849082738429949244

`record[A070196(a(A193581(n)))]` with `a(0)=32`
-/

namespace A033907.P12849082738429949244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [32] fun n f1 =>
  A070196 (f1 (A193581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033907.P12849082738429949244

/-!
# A033908: Least number of Sort-then-add persistence n.

The programs for A033908, there is no canonical definition to state claims against.
-/

/-! ## A033908.P5190916393926084367

`A033863(n)-floor(acot(n))`
-/

namespace A033908.P5190916393926084367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033863 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A033908.P5190916393926084367

/-! ## A033908.P13581300326010843430

`A033863(n)-A000007(n)`
-/

namespace A033908.P13581300326010843430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033863 n - A000007 n

end

end A033908.P13581300326010843430

/-! ## A033908.P8169484799082629751

`A033863(n)-A088157(n)`
-/

namespace A033908.P8169484799082629751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033863 n - A088157 n

end

end A033908.P8169484799082629751

/-! ## A033908.P802145444693157118

`A033863(n)-A112316(n)`
-/

namespace A033908.P802145444693157118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033863 n - A112316 n

end

end A033908.P802145444693157118

/-! ## A033908.P9790711725238623147

`A033863(n)-A151810(n)`
-/

namespace A033908.P9790711725238623147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033863 n - A151810 n

end

end A033908.P9790711725238623147

/-!
# A033909: Number of Sort then Add steps needed to reach a sorted number, or -1 if never reach sorted number.

The programs for A033909, there is no canonical definition to state claims against.
-/

/-! ## A033909.P4478153176814818534

`3^C(n, 64)²-char[A004185(n)]`
-/

namespace A033909.P4478153176814818534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ Nat.choose n 64 ^ 2 : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A033909.P4478153176814818534

/-! ## A033909.P101181921927862727

`3^C(n, 64)²-char[A009994(n+1)]`
-/

namespace A033909.P101181921927862727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ Nat.choose n 64 ^ 2 : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A033909.P101181921927862727

/-! ## A033909.P17204859851947824478

`3^C(n, 64)²-A000007(A193581(n))`
-/

namespace A033909.P17204859851947824478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ Nat.choose n 64 ^ 2 : ℤ) - A000007 (A193581 n).toNat

end

end A033909.P17204859851947824478

/-! ## A033909.P9538193748310665831

`3^C(n, 64)²-A016050(A213217(n))`
-/

namespace A033909.P9538193748310665831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ Nat.choose n 64 ^ 2 : ℤ) - A016050 (A213217 n).toNat

end

end A033909.P9538193748310665831

/-! ## A033909.P17376054870961305935

`ceil((11*floor(n/10)-n)/A352872(n+1))`
-/

namespace A033909.P17376054870961305935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ) : ℚ) / (A352872 (n + 1) : ℚ)⌉

end

end A033909.P17376054870961305935

/-! ## A033909.P7952235001631459555

`ceil(A056965(n)/A036470(n))`
-/

namespace A033909.P7952235001631459555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056965 n : ℚ) / (A036470 n : ℚ)⌉

end

end A033909.P7952235001631459555

/-! ## A033909.P14871849282275169743

`A059995(A053831(n))^A122638(n+1)`
-/

namespace A033909.P14871849282275169743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059995 (A053831 n).toNat : ℚ) ^ (A122638 (n + 1) : ℤ)

end

end A033909.P14871849282275169743

/-!
# A033911: Numbers k such that s(k) + s(k+1) + ... + s(k+3) = t(k) + t(k+1) + ... + t(k+3).

The programs for A033911, there is no canonical definition to state claims against.
-/

/-! ## A033911.P13475924989102920899

`A233327(A062777(n+1))`
-/

namespace A033911.P13475924989102920899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233327 (A062777 (n + 1)).toNat

end

end A033911.P13475924989102920899

/-!
# A033913: Numbers k such that s(k) + s(k+1) + ... + s(k+6) = t(k) + t(k+1) + ... + t(k+6).

The programs for A033913, there is no canonical definition to state claims against.
-/

/-! ## A033913.P390565051812167063

`A204900(A226223(n+1))+comp[C(n, 2)]+1`
-/

namespace A033913.P390565051812167063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204900 (A226223 (n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ)

end

end A033913.P390565051812167063

/-!
# A033917: Coefficients of iterated exponential function defined by y(x) = x^y(x) for e^-e < x < e^(1/e), expanded about x=1.

The programs for A033917, there is no canonical definition to state claims against.
-/

/-! ## A033917.P9403594987093232942

`A028310(n)*A136461(abs(1-n))`
-/

namespace A033917.P9403594987093232942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A136461 |1 - (n : ℤ)|.toNat

end

end A033917.P9403594987093232942

/-! ## A033917.P9564084332498607262

`A323619(n+1)+n*A323619(n)`
-/

namespace A033917.P9564084332498607262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323619 (n + 1) + (n : ℤ) * A323619 n

end

end A033917.P9564084332498607262

/-! ## A033917.P3758864443666059719

`A101279(2*n+1)*A136461(abs(1-n))`
-/

namespace A033917.P3758864443666059719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (2 * n + 1) * A136461 |1 - (n : ℤ)|.toNat

end

end A033917.P3758864443666059719

/-! ## A033917.P3649902383813469022

`A007318(A000124(n))*A136461(abs(1-n))`
-/

namespace A033917.P3649902383813469022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A136461 |1 - (n : ℤ)|.toNat

end

end A033917.P3649902383813469022

/-! ## A033917.P572507439497260084

`A110657(A008574(n))*A136461(abs(1-n))`
-/

namespace A033917.P572507439497260084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A008574 n).toNat * A136461 |1 - (n : ℤ)|.toNat

end

end A033917.P572507439497260084

/-!
# A033918: Triangular array in which n-th row consists of the numbers 1^1, 2^2, ... n^n.

The programs for A033918, the canonical program `A033918.P17864259698316955696` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033918 has offset 1).

The definition of A033918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033918.P15528771102005888525

`(1+col(n))^(1+col(n))`
-/

namespace A033918.P15528771102005888525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + SequenceMachineLib.triCol n) ^ (1 + SequenceMachineLib.triCol n)

end

end A033918.P15528771102005888525

namespace A033918

/-- `(1+col(n))^(1+col(n))` -/
def P15528771102005888525.Spec : Prop :=
  ∀ n, (P15528771102005888525.a n : ℤ) = A033918 (n + 1)

end A033918

/-! ## A033918.P16089572890030047480

`val(2*2^col(n), 2)^val(2*2^col(n), 2)`
-/

namespace A033918.P16089572890030047480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * 2 ^ SequenceMachineLib.triCol n) 2 ^ SequenceMachineLib.valuation (2 * 2 ^ SequenceMachineLib.triCol n) 2

end

end A033918.P16089572890030047480

namespace A033918

/-- `val(2*2^col(n), 2)^val(2*2^col(n), 2)` -/
def P16089572890030047480.Spec : Prop :=
  ∀ n, (P16089572890030047480.a n : ℤ) = A033918 (n + 1)

end A033918

/-! ## A033918.P17864259698316955696

`A000312(1+col(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033918

/-- `A000312(1+col(n))` -/
def P17864259698316955696.Spec : Prop :=
  ∀ n, P17864259698316955696.a n = A033918 (n + 1)

theorem P17864259698316955696.correct : P17864259698316955696.Spec := by
  intro n
  simp only [A033918, Nat.add_sub_cancel]

end A033918

/-! ## A033918.P14478705202488969042

`A000312(col(comp[C(n, 2)]))`
-/

namespace A033918.P14478705202488969042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (SequenceMachineLib.triCol (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A033918.P14478705202488969042

namespace A033918

/-- `A000312(col(comp[C(n, 2)]))` -/
def P14478705202488969042.Spec : Prop :=
  ∀ n, P14478705202488969042.a n = A033918 (n + 1)

end A033918

/-! ## A033918.P13742583600274247995

`A048861(col(n)+1)+1`
-/

namespace A033918.P13742583600274247995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048861 (SequenceMachineLib.triCol n + 1) + 1

end

end A033918.P13742583600274247995

namespace A033918

/-- `A048861(col(n)+1)+1` -/
def P13742583600274247995.Spec : Prop :=
  ∀ n, P13742583600274247995.a n = A033918 (n + 1)

theorem P13742583600274247995.correct : P13742583600274247995.Spec := by
  intro n
  simp only [A033918, Nat.add_sub_cancel, A033918.P13742583600274247995.a, A033918.P17864259698316955696.a, A000312, A000312.P3932771318196185165.a, A048861, A048861.P10845564465953315184.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A033918

/-! ## A033918.P2901417130545528615

`A014566(col(n)+1)-1`
-/

namespace A033918.P2901417130545528615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014566 (SequenceMachineLib.triCol n + 1) - 1

end

end A033918.P2901417130545528615

namespace A033918

/-- `A014566(col(n)+1)-1` -/
def P2901417130545528615.Spec : Prop :=
  ∀ n, P2901417130545528615.a n = A033918 (n + 1)

theorem P2901417130545528615.correct : P2901417130545528615.Spec := by
  intro n
  simp only [A033918, Nat.add_sub_cancel, A033918.P2901417130545528615.a, A033918.P17864259698316955696.a, A000312, A000312.P3932771318196185165.a, A014566, A014566.P17220125683731441908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033918

/-! ## A033918.P4428265905887453875

`gcd(T(n-1,k), A089072(n+1))` with `a(0)=1`
-/

namespace A033918.P4428265905887453875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd ((SequenceMachineLib.triUp a n : ℕ) : ℤ) (A089072 (n + 1))

end

end A033918.P4428265905887453875

namespace A033918

/-- `gcd(T(n-1,k), A089072(n+1))` -/
def P4428265905887453875.Spec : Prop :=
  ∀ n, (P4428265905887453875.a n : ℤ) = A033918 (n + 1)

end A033918

/-! ## A033918.P6374154905807550177

`A061190(col(n)+1)+col(n)+1`
-/

namespace A033918.P6374154905807550177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061190 (SequenceMachineLib.triCol n + 1) + (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A033918.P6374154905807550177

namespace A033918

/-- `A061190(col(n)+1)+col(n)+1` -/
def P6374154905807550177.Spec : Prop :=
  ∀ n, P6374154905807550177.a n = A033918 (n + 1)

theorem P6374154905807550177.correct : P6374154905807550177.Spec := by
  intro n
  simp only [A033918, Nat.add_sub_cancel, A033918.P6374154905807550177.a, A033918.P17864259698316955696.a, A000312, A000312.P3932771318196185165.a, A061190, A061190.P17603137389957577556.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033918

/-! ## A033918.P16754243479573632779

`(col(n)+1)*A000169(col(n)+1)`
-/

namespace A033918.P16754243479573632779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * A000169 (SequenceMachineLib.triCol n + 1)

end

end A033918.P16754243479573632779

namespace A033918

/-- `(col(n)+1)*A000169(col(n)+1)` -/
def P16754243479573632779.Spec : Prop :=
  ∀ n, P16754243479573632779.a n = A033918 (n + 1)

theorem P16754243479573632779.correct : P16754243479573632779.Spec := by
  intro n
  simp only [A033918, Nat.add_sub_cancel, A033918.P16754243479573632779.a, A033918.P17864259698316955696.a, A000169, A000169.P4048163930515893600.a, A000312, A000312.P3932771318196185165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033918

/-! ## A033918.P853637361775758329

`(1+A002262(n))^(n+1-C(floor(1/2+sqrt(2*(n+1))), 2))`
-/

namespace A033918.P853637361775758329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A002262 n : ℚ) ^ ((n + 1 : ℤ) - (Nat.choose ⌊((1 : ℚ) / 2 : ℝ) + Real.sqrt (2 * (n + 1) : ℝ)⌋.toNat 2 : ℤ) : ℤ)

end

end A033918.P853637361775758329

namespace A033918

/-- `(1+A002262(n))^(n+1-C(floor(1/2+sqrt(2*(n+1))), 2))` -/
def P853637361775758329.Spec : Prop :=
  ∀ n, P853637361775758329.a n = (A033918 (n + 1) : ℚ)

end A033918

/-! ## A033918.P8521925484385826751

`A000312(A002260(1+n))`
-/

namespace A033918.P8521925484385826751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A002260 (1 + n)).toNat

end

end A033918.P8521925484385826751

namespace A033918

/-- `A000312(A002260(1+n))` -/
def P8521925484385826751.Spec : Prop :=
  ∀ n, P8521925484385826751.a n = A033918 (n + 1)

end A033918

/-! ## A033918.P10756405508036146596

`A000312(A002262(n)+1)`
-/

namespace A033918.P10756405508036146596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A002262 n + 1).toNat

end

end A033918.P10756405508036146596

namespace A033918

/-- `A000312(A002262(n)+1)` -/
def P10756405508036146596.Spec : Prop :=
  ∀ n, P10756405508036146596.a n = A033918 (n + 1)

end A033918

/-! ## A033918.P5190104990504878578

`A112953(A037126(n+1))`
-/

namespace A033918.P5190104990504878578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112953 (A037126 (n + 1)).toNat

end

end A033918.P5190104990504878578

namespace A033918

/-- `A112953(A037126(n+1))` -/
def P5190104990504878578.Spec : Prop :=
  ∀ n, P5190104990504878578.a n = A033918 (n + 1)

end A033918

/-! ## A033918.P2570575578117506274

`A094054(A133819(n+1))`
-/

namespace A033918.P2570575578117506274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094054 (A133819 (n + 1)).toNat

end

end A033918.P2570575578117506274

namespace A033918

/-- `A094054(A133819(n+1))` -/
def P2570575578117506274.Spec : Prop :=
  ∀ n, P2570575578117506274.a n = A033918 (n + 1)

end A033918

/-! ## A033918.P3477616941111989881

`A000312(A131818(n+2)-1)`
-/

namespace A033918.P3477616941111989881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A131818 (n + 2) - 1).toNat

end

end A033918.P3477616941111989881

namespace A033918

/-- `A000312(A131818(n+2)-1)` -/
def P3477616941111989881.Spec : Prop :=
  ∀ n, P3477616941111989881.a n = A033918 (n + 1)

end A033918

/-! ## A033918.P11971024955791086989

`A089072(n+1)/A009998(n)`
-/

namespace A033918.P11971024955791086989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089072 (n + 1) : ℚ) / (A009998 n : ℚ)

end

end A033918.P11971024955791086989

namespace A033918

/-- `A089072(n+1)/A009998(n)` -/
def P11971024955791086989.Spec : Prop :=
  ∀ n, P11971024955791086989.a n = (A033918 (n + 1) : ℚ)

end A033918

/-! ## A033918.P16413143106527977913

`A002260(n+1)^A002260(n+1)`
-/

namespace A033918.P16413143106527977913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A033918.P16413143106527977913

namespace A033918

/-- `A002260(n+1)^A002260(n+1)` -/
def P16413143106527977913.Spec : Prop :=
  ∀ n, P16413143106527977913.a n = (A033918 (n + 1) : ℚ)

end A033918

/-! ## A033918.P3309278181740255988

`A002262(comp[∑[n]])^(A002262(n)+1)`
-/

namespace A033918.P3309278181740255988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (A002262 n + 1 : ℤ)

end

end A033918.P3309278181740255988

namespace A033918

/-- `A002262(comp[∑[n]])^(A002262(n)+1)` -/
def P3309278181740255988.Spec : Prop :=
  ∀ n, P3309278181740255988.a n = (A033918 (n + 1) : ℚ)

end A033918

/-! ## A033918.P559322877087140946

`A097285(2*n+1)^A097285(2*n+1)`
-/

namespace A033918.P559322877087140946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097285 (2 * n + 1) : ℚ) ^ (A097285 (2 * n + 1) : ℤ)

end

end A033918.P559322877087140946

namespace A033918

/-- `A097285(2*n+1)^A097285(2*n+1)` -/
def P559322877087140946.Spec : Prop :=
  ∀ n, P559322877087140946.a n = (A033918 (n + 1) : ℚ)

end A033918

/-! ## A033918.P3039148438757818621

`A349520(2*n+1)^A349520(2*n+1)`
-/

namespace A033918.P3039148438757818621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349520 (2 * n + 1) : ℚ) ^ (A349520 (2 * n + 1) : ℤ)

end

end A033918.P3039148438757818621

namespace A033918

/-- `A349520(2*n+1)^A349520(2*n+1)` -/
def P3039148438757818621.Spec : Prop :=
  ∀ n, P3039148438757818621.a n = (A033918 (n + 1) : ℚ)

end A033918

/-!
# A033921: Largest proper substring of 2^n that is a power of 2 (0 if none).

The programs for A033921, there is no canonical definition to state claims against.
-/

/-! ## A033921.P6896629706496690790

`floor(2^A352924(n))`
-/

namespace A033921.P6896629706496690790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (A352924 n : ℤ)⌋

end

end A033921.P6896629706496690790

/-! ## A033921.P13149960495069298494

`A131577(A352924(n)+1)`
-/

namespace A033921.P13149960495069298494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A352924 n + 1).toNat

end

end A033921.P13149960495069298494

/-! ## A033921.P1595922359926079242

`A034008(A352924(n)+2)`
-/

namespace A033921.P1595922359926079242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A352924 n + 2).toNat

end

end A033921.P1595922359926079242

/-! ## A033921.P5872138581542617789

`floor(A000079(A352924(n)+1)/2)`
-/

namespace A033921.P5872138581542617789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 (A352924 n + 1).toNat : ℚ) / 2⌋

end

end A033921.P5872138581542617789

/-! ## A033921.P2876105532370618917

`A025480(2*2^A352924(n))`
-/

namespace A033921.P2876105532370618917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A352924 n : ℤ))).toNat

end

end A033921.P2876105532370618917

/-!
# A033922: Base-2 digital convolution sequence.

The programs for A033922, there is no canonical definition to state claims against.
-/

/-! ## A033922.P9309372732375661890

`A206774(n)+a(n-1)` with `a(0)=1`
-/

namespace A033922.P9309372732375661890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A206774 n + a (n - 1)

end

end A033922.P9309372732375661890

/-! ## A033922.P6316195855914327474

`A116549(n)-A397704(n)`
-/

namespace A033922.P6316195855914327474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116549 n - A397704 n

end

end A033922.P6316195855914327474

/-! ## A033922.P17007161094640512107

`∑[A206774(A028310(n))]+1`
-/

namespace A033922.P17007161094640512107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206774 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A033922.P17007161094640512107

/-! ## A033922.P17930469885678727674

`∑[A206774(C(A000796(n), (n+1)²)+n)]`
-/

namespace A033922.P17930469885678727674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206774 (Nat.choose (A000796 (n + 1)).toNat ((n + 1) ^ 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033922.P17930469885678727674

/-! ## A033922.P1812733999179673330

`∑[A206774(n+1)]+1-A206774(n+1)`
-/

namespace A033922.P1812733999179673330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A206774 (n + 1))

end

end A033922.P1812733999179673330

/-! ## A033922.P7721590565754815581

`∑[A206774(C(A030777(n+1), (n+1)²)+n)]`
-/

namespace A033922.P7721590565754815581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206774 (Nat.choose (A030777 (n + 1)).toNat ((n + 1) ^ 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033922.P7721590565754815581

/-! ## A033922.P12208462513375024068

`A028310(∑[A206774(A008486(n))])`
-/

namespace A033922.P12208462513375024068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206774 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033922.P12208462513375024068

/-! ## A033922.P753431705807709058

`∑[A206774(A065033(2*n))]+1`
-/

namespace A033922.P753431705807709058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206774 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A033922.P753431705807709058

/-! ## A033922.P10360948935277727542

`∑[A206774(A168101(n))]`
-/

namespace A033922.P10360948935277727542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206774 (A168101 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033922.P10360948935277727542

/-! ## A033922.P1804848499518746754

`A028310(∑[A206774(A008706(n))])`
-/

namespace A033922.P1804848499518746754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206774 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033922.P1804848499518746754

/-!
# A033923: Base 3 digital convolution sequence.

The programs for A033923, there is no canonical definition to state claims against.
-/

/-! ## A033923.P7348831748171316767

`A253092(n)+A097479(n)!`
-/

namespace A033923.P7348831748171316767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 n + (Nat.factorial (A097479 n).toNat : ℤ)

end

end A033923.P7348831748171316767

/-! ## A033923.P12229837634373427049

`A253092(n)+A151713(n)!`
-/

namespace A033923.P12229837634373427049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 n + (Nat.factorial (A151713 n).toNat : ℤ)

end

end A033923.P12229837634373427049

/-! ## A033923.P4038024182110377299

`A253092(A097479(n)+n)+1`
-/

namespace A033923.P4038024182110377299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 (A097479 n + (n : ℤ)).toNat + 1

end

end A033923.P4038024182110377299

/-! ## A033923.P630571652185245290

`A253092(n)+A054977(A355721(n))`
-/

namespace A033923.P630571652185245290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 n + A054977 (A355721 n).toNat

end

end A033923.P630571652185245290

/-! ## A033923.P365097360125010502

`A253092(n)+A028310(A151713(n)²)`
-/

namespace A033923.P365097360125010502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 n + A028310 (A151713 n ^ 2).toNat

end

end A033923.P365097360125010502

/-!
# A033924: Base 4 digital convolution sequence.

The programs for A033924, there is no canonical definition to state claims against.
-/

/-! ## A033924.P9707706954197442249

`A033930(record[A064770(n)])`
-/

namespace A033924.P9707706954197442249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033924.P9707706954197442249

/-! ## A033924.P12256895052787197183

`A033930(A222239(record[A222239(n)]))`
-/

namespace A033924.P12256895052787197183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (A222239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A033924.P12256895052787197183

/-! ## A033924.P15334877875171367504

`A033930(eq[A064770(n), A136400(n)])`
-/

namespace A033924.P15334877875171367504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A033924.P15334877875171367504

/-! ## A033924.P16054535228995808136

`A257991(lcm(2, A339821(n)))`
-/

namespace A033924.P16054535228995808136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (Int.lcm 2 (A339821 n))

end

end A033924.P16054535228995808136

/-! ## A033924.P4490632359705693418

`A257991(A339821(A000007(n)+n))`
-/

namespace A033924.P4490632359705693418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A339821 (A000007 n + (n : ℤ)).toNat).toNat

end

end A033924.P4490632359705693418

/-! ## A033924.P18259773776735099969

`A054725(A101942(n))`
-/

namespace A033924.P18259773776735099969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A101942 n).toNat

end

end A033924.P18259773776735099969

/-!
# A033925: Base 5 digital convolution sequence.

The programs for A033925, there is no canonical definition to state claims against.
-/

/-! ## A033925.P2742947005312821702

`A033927(A037466(n)+1)`
-/

namespace A033925.P2742947005312821702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033927 (A037466 n + 1).toNat

end

end A033925.P2742947005312821702

/-! ## A033925.P7161715187743258042

`A033930(A007091(n))`
-/

namespace A033925.P7161715187743258042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (A007091 n).toNat

end

end A033925.P7161715187743258042

/-! ## A033925.P4358251152965540723

`A033930(eq[0, A102675(n)])`
-/

namespace A033925.P4358251152965540723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033925.P4358251152965540723

/-! ## A033925.P7222135145180523172

`A033930(A014263(n+1)/2)`
-/

namespace A033925.P7222135145180523172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

end

end A033925.P7222135145180523172

/-! ## A033925.P2863266705323739

`A033930(record[A106747(n)])`
-/

namespace A033925.P2863266705323739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033925.P2863266705323739

/-! ## A033925.P14618432165116939590

`A033930(eq[n, A167831(n)])`
-/

namespace A033925.P14618432165116939590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033925.P14618432165116939590

/-! ## A033925.P9648309300658730878

`A033930(record[A107130(n)/2])`
-/

namespace A033925.P9648309300658730878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107130 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A033925.P9648309300658730878

/-! ## A033925.P16295198520602748948

`A033930(record[A107130(2*n)-n])`
-/

namespace A033925.P16295198520602748948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033925.P16295198520602748948

/-! ## A033925.P4556834429917409798

`A033930(record[A235049(A007092(n))])`
-/

namespace A033925.P4556834429917409798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A007092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033925.P4556834429917409798

/-! ## A033925.P4211766725572745546

`A033930(A004525(A014263(n+1)))`
-/

namespace A033925.P4211766725572745546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (A004525 (A014263 (n + 1)).toNat).toNat

end

end A033925.P4211766725572745546

/-!
# A033926: Base 6 digital convolution sequence.

The programs for A033926, there is no canonical definition to state claims against.
-/

/-! ## A033926.P5269512366713183067

`A033927(A020658(n+1))`
-/

namespace A033926.P5269512366713183067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033927 (A020658 (n + 1)).toNat

end

end A033926.P5269512366713183067

/-! ## A033926.P9798798142401394382

`A033927(A020657(n+1)+1)`
-/

namespace A033926.P9798798142401394382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033927 (A020657 (n + 1) + 1).toNat

end

end A033926.P9798798142401394382

/-! ## A033926.P96615311500369060

`A033930(A007092(n))`
-/

namespace A033926.P96615311500369060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (A007092 n).toNat

end

end A033926.P96615311500369060

/-! ## A033926.P7599645268837658283

`A033930(record[n-A106747(n)])`
-/

namespace A033926.P7599645268837658283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033926.P7599645268837658283

/-! ## A033926.P18069946059569026751

`A033930(eq[A007953(n), A280913(n)])`
-/

namespace A033926.P18069946059569026751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A033926.P18069946059569026751

/-! ## A033926.P6104950703096735945

`A033930(record[n-A107130(n)])`
-/

namespace A033926.P6104950703096735945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A107130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033926.P6104950703096735945

/-! ## A033926.P2407192654443132506

`A033930(eq[n, A222254(A222249(n))])`
-/

namespace A033926.P2407192654443132506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033926.P2407192654443132506

/-! ## A033926.P5830788528016617860

`A033930(eq[n, A222253(A222250(n))])`
-/

namespace A033926.P5830788528016617860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222250 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033926.P5830788528016617860

/-! ## A033926.P7622493169209744540

`A033930(eq[n, A222252(A222251(n))])`
-/

namespace A033926.P7622493169209744540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222251 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033926.P7622493169209744540

/-!
# A033927: Base 7 digital convolution sequence.

The programs for A033927, there is no canonical definition to state claims against.
-/

/-! ## A033927.P2773916490921074445

`A033928(A037474(n)+1)`
-/

namespace A033927.P2773916490921074445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033928 (A037474 n + 1).toNat

end

end A033927.P2773916490921074445

/-! ## A033927.P14043095872359537319

`A033929(A037475(n)+1)`
-/

namespace A033927.P14043095872359537319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033929 (A037475 n + 1).toNat

end

end A033927.P14043095872359537319

/-! ## A033927.P1876758461965437819

`A033930(A007093(n))`
-/

namespace A033927.P1876758461965437819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (A007093 n).toNat

end

end A033927.P1876758461965437819

/-! ## A033927.P8742998914091369778

`A033930(record[n-A064770(n)])`
-/

namespace A033927.P8742998914091369778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033927.P8742998914091369778

/-! ## A033927.P12406109241093592783

`A033930(eq[n, A222253(A222252(n))])`
-/

namespace A033927.P12406109241093592783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033927.P12406109241093592783

/-! ## A033927.P8006518262524170981

`A033930(eq[n, A222254(A222252(n))])`
-/

namespace A033927.P8006518262524170981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033927.P8006518262524170981

/-! ## A033927.P7223297992941075

`A033930(eq[n, A222254(A222253(n))])`
-/

namespace A033927.P7223297992941075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222253 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033927.P7223297992941075

/-!
# A033928: Base 8 digital convolution sequence.

The programs for A033928, there is no canonical definition to state claims against.
-/

/-! ## A033928.P5518389385901150921

`A033929(A037477(n)+1)`
-/

namespace A033928.P5518389385901150921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033929 (A037477 n + 1).toNat

end

end A033928.P5518389385901150921

/-! ## A033928.P1523553273863808188

`A033930(A007094(n))`
-/

namespace A033928.P1523553273863808188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (A007094 n).toNat

end

end A033928.P1523553273863808188

/-! ## A033928.P14895642045727661731

`A033930(eq[n, A222254(n)])`
-/

namespace A033928.P14895642045727661731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033928.P14895642045727661731

/-! ## A033928.P8314002784073681066

`A033930(record[gcd(n, A222254(n))])`
-/

namespace A033928.P8314002784073681066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A222254 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A033928.P8314002784073681066

/-! ## A033928.P5402984073588965047

`A033930(eq[n, A004184(A004183(n))])`
-/

namespace A033928.P5402984073588965047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A004183 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033928.P5402984073588965047

/-! ## A033928.P16796948633826212623

`A196564(A217871(n))+A053829(n)`
-/

namespace A033928.P16796948633826212623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A217871 n).toNat + A053829 n

end

end A033928.P16796948633826212623

/-! ## A033928.P3216902261214113837

`A053829(A151934(n)+n)`
-/

namespace A033928.P3216902261214113837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A151934 n + (n : ℤ)).toNat

end

end A033928.P3216902261214113837

/-! ## A033928.P11825542375448040739

`A053829(A151935(n)+n)`
-/

namespace A033928.P11825542375448040739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A151935 n + (n : ℤ)).toNat

end

end A033928.P11825542375448040739

/-! ## A033928.P6905308432865308638

`A053829(n)-(A151810(A151810(n))-1)`
-/

namespace A033928.P6905308432865308638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n - (A151810 (A151810 n).toNat - 1)

end

end A033928.P6905308432865308638

/-!
# A033929: Base 9 digital convolution sequence.

The programs for A033929, there is no canonical definition to state claims against.
-/

/-! ## A033929.P11256267016406598277

`A033930(A007095(n))`
-/

namespace A033929.P11256267016406598277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (A007095 n).toNat

end

end A033929.P11256267016406598277

/-! ## A033929.P7750261943231580592

`A033930(eq[A048379(n), A216556(n)])`
-/

namespace A033929.P7750261943231580592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A033929.P7750261943231580592

/-! ## A033929.P12236271611296482628

`A033930(eq[A006942(n), A277116(n)])`
-/

namespace A033929.P12236271611296482628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A033929.P12236271611296482628

/-! ## A033929.P3766550359410181778

`A033930(record[A004184(n)])`
-/

namespace A033929.P3766550359410181778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033929.P3766550359410181778

/-! ## A033929.P1901854565024712688

`A033930(record[A235049(n)])`
-/

namespace A033929.P1901854565024712688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033929.P1901854565024712688

/-! ## A033929.P2553107822606933361

`A033930(eq[n, A004184(n)])`
-/

namespace A033929.P2553107822606933361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033929.P2553107822606933361

/-! ## A033929.P6946294851702682213

`A033930(record[n-A136400(n)])`
-/

namespace A033929.P6946294851702682213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A136400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033929.P6946294851702682213

/-! ## A033929.P8984038526813956795

`A053830(n)-(A151934(A151934(n))-1)`
-/

namespace A033929.P8984038526813956795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n - (A151934 (A151934 n).toNat - 1)

end

end A033929.P8984038526813956795

/-! ## A033929.P6571821750690994359

`A053830(n)-(A151935(A151935(n))-1)`
-/

namespace A033929.P6571821750690994359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n - (A151935 (A151935 n).toNat - 1)

end

end A033929.P6571821750690994359

/-! ## A033929.P12165680433536912434

`A053830(n)-(A151810(A151810(n))-1)`
-/

namespace A033929.P12165680433536912434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n - (A151810 (A151810 n).toNat - 1)

end

end A033929.P12165680433536912434

/-!
# A033930: Base 10 digital convolution sequence.

The programs for A033930, there is no canonical definition to state claims against.
-/

/-! ## A033930.P12203273758019852350

`A007953(A033619(n+1))^A032741(A006530(n²+1))`
-/

namespace A033930.P12203273758019852350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 (A033619 (n + 1)).toNat : ℚ) ^ (A032741 (A006530 (n ^ 2 + 1)).toNat : ℤ)

end

end A033930.P12203273758019852350

/-! ## A033930.P16570007137996447979

`A007953(A033619(n+1))+A151878(n)%2`
-/

namespace A033930.P16570007137996447979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A033619 (n + 1)).toNat + Int.tmod (A151878 n) 2

end

end A033930.P16570007137996447979

/-! ## A033930.P3801627890334021082

`A054899(A175674(n))+A007953(A033619(n+1))`
-/

namespace A033930.P3801627890334021082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A175674 n).toNat + A007953 (A033619 (n + 1)).toNat

end

end A033930.P3801627890334021082

/-! ## A033930.P5355968420224663222

`A000196(A106487(n)+∑{digits}[n, #]²)`
-/

namespace A033930.P5355968420224663222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A106487 n + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ)).toNat

end

end A033930.P5355968420224663222

/-! ## A033930.P2538171962974404182

`A000196(A118881(n)+A106487(n))`
-/

namespace A033930.P2538171962974404182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A118881 n + A106487 n).toNat

end

end A033930.P2538171962974404182

/-! ## A033930.P8388237056348732999

`A033665(A196222(n))+A028310(A007953(n))`
-/

namespace A033930.P8388237056348732999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A196222 n).toNat + A028310 (A007953 n).toNat

end

end A033930.P8388237056348732999

/-! ## A033930.P13928549613858452568

`A000196(A276502(n+1)+A118881(n))`
-/

namespace A033930.P13928549613858452568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A276502 (n + 1) + A118881 n).toNat

end

end A033930.P13928549613858452568

/-! ## A033930.P2636515921894092403

`A007953(A028310(n)-(A118759(n)-n))`
-/

namespace A033930.P2636515921894092403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A028310 n - (A118759 n - (n : ℤ))).toNat

end

end A033930.P2636515921894092403

/-! ## A033930.P9457186410750855828

`A000196(A276502(n+1)+A007953(n)²)`
-/

namespace A033930.P9457186410750855828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A276502 (n + 1) + A007953 n ^ 2).toNat

end

end A033930.P9457186410750855828

/-! ## A033930.P2309546693638340882

`A055641(A000196(n))+A007953(A051022(n))`
-/

namespace A033930.P2309546693638340882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A000196 n).toNat + A007953 (A051022 n).toNat

end

end A033930.P2309546693638340882

/-! ## A033930.P794502347367367103

`A007953(A000196(n²+1))`
-/

namespace A033930.P794502347367367103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000196 (n ^ 2 + 1)).toNat

end

end A033930.P794502347367367103

/-!
# A033931: a(n) = lcm(n,n+1,n+2).

The programs for A033931, the canonical program `A033931.P627927411410535541` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033931 has offset 1).

The definition of A033931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033931.P627927411410535541

`lcm((n+1)²+n+1, n+3)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A033931

/-- `lcm((n+1)²+n+1, n+3)` -/
def P627927411410535541.Spec : Prop :=
  ∀ n, (P627927411410535541.a n : ℤ) = A033931 (n + 1)

theorem P627927411410535541.correct : P627927411410535541.Spec := by
  intro n
  simp only [A033931, Nat.add_sub_cancel]

end A033931

/-! ## A033931.P11036055171801132364

`(n+1)*(n+2)*(n+3)*(3-(-1)^(n+1))/4`
-/

namespace A033931.P11036055171801132364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) * (n + 3) : ℤ) * (3 - (-1) ^ (n + 1)) : ℚ) / 4

end

end A033931.P11036055171801132364

namespace A033931

/-- `(n+1)*(n+2)*(n+3)*(3-(-1)^(n+1))/4` -/
def P11036055171801132364.Spec : Prop :=
  ∀ n, P11036055171801132364.a n = (A033931 (n + 1) : ℚ)

end A033931

/-! ## A033931.P1448617934175943367

`6*A067046(n+1)`
-/

namespace A033931.P1448617934175943367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A067046 (n + 1)

end

end A033931.P1448617934175943367

namespace A033931

/-- `6*A067046(n+1)` -/
def P1448617934175943367.Spec : Prop :=
  ∀ n, P1448617934175943367.a n = A033931 (n + 1)

end A033931

/-! ## A033931.P331060113383213317

`lcm(2, n+3)*∑[n+1]`
-/

namespace A033931.P331060113383213317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033931.P331060113383213317

namespace A033931

/-- `lcm(2, n+3)*∑[n+1]` -/
def P331060113383213317.Spec : Prop :=
  ∀ n, (P331060113383213317.a n : ℤ) = A033931 (n + 1)

end A033931

/-! ## A033931.P14223195648283277912

`lcm(n+1, 2*C(n+3, 2))`
-/

namespace A033931.P14223195648283277912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (2 * Nat.choose (n + 3) 2)

end

end A033931.P14223195648283277912

namespace A033931

/-- `lcm(n+1, 2*C(n+3, 2))` -/
def P14223195648283277912.Spec : Prop :=
  ∀ n, (P14223195648283277912.a n : ℤ) = A033931 (n + 1)

end A033931

/-! ## A033931.P3703049868868553878

`(n+3)*gcd(2, n)*∑[n+1]`
-/

namespace A033931.P3703049868868553878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (Nat.gcd 2 n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A033931.P3703049868868553878

namespace A033931

/-- `(n+3)*gcd(2, n)*∑[n+1]` -/
def P3703049868868553878.Spec : Prop :=
  ∀ n, (P3703049868868553878.a n : ℤ) = A033931 (n + 1)

end A033931

/-! ## A033931.P11771771101340307019

`lcm(2*(n+2), (n+1)*(n+3))/2`
-/

namespace A033931.P11771771101340307019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * (n + 2)) ((n + 1) * (n + 3)) : ℚ) / 2

end

end A033931.P11771771101340307019

namespace A033931

/-- `lcm(2*(n+2), (n+1)*(n+3))/2` -/
def P11771771101340307019.Spec : Prop :=
  ∀ n, P11771771101340307019.a n = (A033931 (n + 1) : ℚ)

end A033931

/-! ## A033931.P7875970717059250779

`C((n+2)², 2)/gcd(n+2, ∑[n+1])`
-/

namespace A033931.P7875970717059250779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 2) ^ 2) 2 : ℚ) / (Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A033931.P7875970717059250779

namespace A033931

/-- `C((n+2)², 2)/gcd(n+2, ∑[n+1])` -/
def P7875970717059250779.Spec : Prop :=
  ∀ n, P7875970717059250779.a n = (A033931 (n + 1) : ℚ)

end A033931

/-! ## A033931.P13859152159818548600

`Δ[a(n-1)+(n+1)*lcm(n, n+2)]` with `a(0)=0`
-/

namespace A033931.P13859152159818548600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (n + 1) * Nat.lcm n (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A033931.P13859152159818548600

namespace A033931

/-- `Δ[a(n-1)+(n+1)*lcm(n, n+2)]` -/
def P13859152159818548600.Spec : Prop :=
  ∀ n, P13859152159818548600.a n = A033931 (n + 1)

end A033931

/-! ## A033931.P16678410150811125166

`(n+2)*(n+3)*gcd(n+1, C(n+1, 2))`
-/

namespace A033931.P16678410150811125166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * ((n + 3) * Nat.gcd (n + 1) (Nat.choose (n + 1) 2))

end

end A033931.P16678410150811125166

namespace A033931

/-- `(n+2)*(n+3)*gcd(n+1, C(n+1, 2))` -/
def P16678410150811125166.Spec : Prop :=
  ∀ n, (P16678410150811125166.a n : ℤ) = A033931 (n + 1)

end A033931

/-! ## A033931.P506525648025058155

`(n+1)*(n+2)*(n+3)/gcd(n-1, 2*n)`
-/

namespace A033931.P506525648025058155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) / (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℚ)))

end

end A033931.P506525648025058155

namespace A033931

/-- `(n+1)*(n+2)*(n+3)/gcd(n-1, 2*n)` -/
def P506525648025058155.Spec : Prop :=
  ∀ n, P506525648025058155.a n = (A033931 (n + 1) : ℚ)

end A033931

/-! ## A033931.P4177414945544579760

`A295388(n+1)-(n+1)`
-/

namespace A033931.P4177414945544579760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295388 (n + 1) - (n + 1 : ℤ)

end

end A033931.P4177414945544579760

namespace A033931

/-- `A295388(n+1)-(n+1)` -/
def P4177414945544579760.Spec : Prop :=
  ∀ n, P4177414945544579760.a n = A033931 (n + 1)

end A033931

/-! ## A033931.P10876650534927097268

`(n+1)*A045896(n+1)`
-/

namespace A033931.P10876650534927097268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A045896 (n + 1)

end

end A033931.P10876650534927097268

namespace A033931

/-- `(n+1)*A045896(n+1)` -/
def P10876650534927097268.Spec : Prop :=
  ∀ n, P10876650534927097268.a n = A033931 (n + 1)

end A033931

/-! ## A033931.P12283615349151893458

`(n+3)*A168059(n+1)`
-/

namespace A033931.P12283615349151893458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A168059 (n + 1)

end

end A033931.P12283615349151893458

namespace A033931

/-- `(n+3)*A168059(n+1)` -/
def P12283615349151893458.Spec : Prop :=
  ∀ n, P12283615349151893458.a n = A033931 (n + 1)

end A033931

/-! ## A033931.P8696676804605196792

`(n+2)/2*A039720(n+2)`
-/

namespace A033931.P8696676804605196792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A039720 (n + 2) : ℚ)

end

end A033931.P8696676804605196792

namespace A033931

/-- `(n+2)/2*A039720(n+2)` -/
def P8696676804605196792.Spec : Prop :=
  ∀ n, P8696676804605196792.a n = (A033931 (n + 1) : ℚ)

end A033931

/-! ## A033931.P17647101231057341402

`gcd(A033486(n), A331433(n))`
-/

namespace A033931.P17647101231057341402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033486 n) (A331433 n)

end

end A033931.P17647101231057341402

namespace A033931

/-- `gcd(A033486(n), A331433(n))` -/
def P17647101231057341402.Spec : Prop :=
  ∀ n, (P17647101231057341402.a n : ℤ) = A033931 (n + 1)

end A033931

/-! ## A033931.P2295604750180364497

`A000217(n+2)*A109043(n+1)`
-/

namespace A033931.P2295604750180364497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A109043 (n + 1)

end

end A033931.P2295604750180364497

namespace A033931

/-- `A000217(n+2)*A109043(n+1)` -/
def P2295604750180364497.Spec : Prop :=
  ∀ n, P2295604750180364497.a n = A033931 (n + 1)

end A033931

/-! ## A033931.P16254391889468216043

`(n+2)*A066830(n+2)`
-/

namespace A033931.P16254391889468216043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A066830 (n + 2)

end

end A033931.P16254391889468216043

namespace A033931

/-- `(n+2)*A066830(n+2)` -/
def P16254391889468216043.Spec : Prop :=
  ∀ n, P16254391889468216043.a n = A033931 (n + 1)

end A033931

/-! ## A033931.P11756539560235254458

`(A000217(n+1)+A000217(n+1))*A145051(n+2)`
-/

namespace A033931.P11756539560235254458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) + A000217 (n + 1)) * A145051 (n + 2)

end

end A033931.P11756539560235254458

namespace A033931

/-- `(A000217(n+1)+A000217(n+1))*A145051(n+2)` -/
def P11756539560235254458.Spec : Prop :=
  ∀ n, P11756539560235254458.a n = A033931 (n + 1)

end A033931

/-! ## A033931.P2676174418538666681

`(A135370(n+2)-A135370(n+1))*A142705(n+2)`
-/

namespace A033931.P2676174418538666681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135370 (n + 2) - A135370 (n + 1)) * A142705 (n + 2)

end

end A033931.P2676174418538666681

namespace A033931

/-- `(A135370(n+2)-A135370(n+1))*A142705(n+2)` -/
def P2676174418538666681.Spec : Prop :=
  ∀ n, P2676174418538666681.a n = A033931 (n + 1)

end A033931

/-!
# A033932: Least positive m such that n! + m is prime.

The programs for A033932, there is no canonical definition to state claims against.
-/

/-! ## A033932.P12921784399342426904

`or(1, A245695(n+1)/(n+1))`
-/

namespace A033932.P12921784399342426904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((A245695 (n + 1) : ℚ) / (n + 1 : ℚ)))

end

end A033932.P12921784399342426904

/-! ## A033932.P9792560609969088228

`∏{d}[A245695(n+1)/A000027(n+1), #]`
-/

namespace A033932.P9792560609969088228
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245695 (n + 1) : ℚ) / (A000027 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A033932.P9792560609969088228

/-! ## A033932.P15844683958028549462

`A093178(A245695(n+1)/(n+1))`
-/

namespace A033932.P15844683958028549462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (SequenceMachineLib.roundAway ((A245695 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A033932.P15844683958028549462

/-! ## A033932.P8086527865945782769

`A029579(A245695(n+1)/(n+1))`
-/

namespace A033932.P8086527865945782769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (SequenceMachineLib.roundAway ((A245695 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A033932.P8086527865945782769

/-! ## A033932.P879346507492849790

`A109613(A245695(n+1)/(n+1))`
-/

namespace A033932.P879346507492849790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.roundAway ((A245695 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A033932.P879346507492849790

/-! ## A033932.P12511606765691514766

`A029579(A087421(n)-n!)`
-/

namespace A033932.P12511606765691514766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A087421 n - (Nat.factorial n : ℤ)).toNat

end

end A033932.P12511606765691514766

/-! ## A033932.P15693675989311833557

`A037151(A028310(n))-A000142(n)`
-/

namespace A033932.P15693675989311833557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037151 (A028310 n).toNat - A000142 n

end

end A033932.P15693675989311833557

/-! ## A033932.P3484259784216135379

`A029579(A087421(n)-A000142(n))`
-/

namespace A033932.P3484259784216135379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A087421 n - A000142 n).toNat

end

end A033932.P3484259784216135379

/-! ## A033932.P15083662174973977094

`A029579(A087421(n)%A000142(n))`
-/

namespace A033932.P15083662174973977094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (Int.tmod (A087421 n) (A000142 n)).toNat

end

end A033932.P15083662174973977094

/-! ## A033932.P7332264982834748650

`A193814(n)+1`
-/

namespace A033932.P7332264982834748650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193814 n + 1

end

end A033932.P7332264982834748650

/-!
# A033933: Least nonnegative m such that n! - m is prime.

The programs for A033933, there is no canonical definition to state claims against.
-/

/-! ## A033933.P9674823438019814217

`A245696(n+3)/(n+3)`
-/

namespace A033933.P9674823438019814217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245696 (n + 3) : ℚ) / (n + 3 : ℚ)

end

end A033933.P9674823438019814217

/-! ## A033933.P6596526975482075263

`A058054(n+2)-A033932(n+2)`
-/

namespace A033933.P6596526975482075263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058054 (n + 2) - A033932 (n + 2)

end

end A033933.P6596526975482075263

/-! ## A033933.P11256481253852358564

`A015906(A340802(n+2))-A033932(n+2)`
-/

namespace A033933.P11256481253852358564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A340802 (n + 2)).toNat - A033932 (n + 2)

end

end A033933.P11256481253852358564

/-! ## A033933.P9972114355055459448

`(n+2)!-A006990(n+2)`
-/

namespace A033933.P9972114355055459448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℤ) - A006990 (n + 2)

end

end A033933.P9972114355055459448

/-! ## A033933.P16559857026436928379

`A000142(n+2)-A006990(n+2)`
-/

namespace A033933.P16559857026436928379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 2) - A006990 (n + 2)

end

end A033933.P16559857026436928379

/-!
# A033934: a(n) = (10^n + 1)^2.

The programs for A033934, the canonical program `A033934.P11766874347427226134` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033934 has offset 0).

The definition of A033934 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n+1)²` (program `A033934.P11766874347427226134`, by `A033934.P11766874347427226134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033934.P11766874347427226134

`(10^n+1)²`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A033934

/-- `(10^n+1)²` -/
def P11766874347427226134.Spec : Prop :=
  ∀ n, (P11766874347427226134.a n : ℤ) = A033934 n

theorem P11766874347427226134.correct : P11766874347427226134.Spec := by
  intro n
  simp only [A033934]

end A033934

/-! ## A033934.P16907094062615499266

`A066138(n)+A011557(n)`
-/

namespace A033934.P16907094062615499266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066138 n + A011557 n

end

end A033934.P16907094062615499266

namespace A033934

/-- `A066138(n)+A011557(n)` -/
def P16907094062615499266.Spec : Prop :=
  ∀ n, P16907094062615499266.a n = A033934 n

theorem P16907094062615499266.correct : P16907094062615499266.Spec := by
  intro n
  simp only [A033934, Nat.add_sub_cancel, A033934.P16907094062615499266.a, A033934.P11766874347427226134.a, A011557, A011557.P11220211478167790856.a, A066138, A066138.P15800142740498849672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033934

/-! ## A033934.P4319217930018047390

`floor(∑[10*a(n-1)]²)` with `a(0)=2, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A033934.P4319217930018047390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A033934.P4319217930018047390

namespace A033934

/-- `floor(∑[10*a(n-1)]²)` -/
def P4319217930018047390.Spec : Prop :=
  ∀ n, (P4319217930018047390.a n : ℤ) = A033934 n

end A033934

/-! ## A033934.P9687889698907312674

`lcm(2, 10^n+1)/2*(10^n+1)%(10*a(n-1)+4)` with `a(0)=4`
-/

namespace A033934.P9687889698907312674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (Nat.lcm 2 (10 ^ n + 1) : ℚ) / 2 * (Int.tmod (10 ^ n + 1 : ℤ) (SequenceMachineLib.roundAway (10 * a (n - 1) + 4)) : ℚ)

end

end A033934.P9687889698907312674

namespace A033934

/-- `lcm(2, 10^n+1)/2*(10^n+1)%(10*a(n-1)+4)` -/
def P9687889698907312674.Spec : Prop :=
  ∀ n, P9687889698907312674.a n = (A033934 n : ℚ)

end A033934

/-! ## A033934.P2345353742210998701

`A134230(n)+1`
-/

namespace A033934.P2345353742210998701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134230 n + 1

end

end A033934.P2345353742210998701

namespace A033934

/-- `A134230(n)+1` -/
def P2345353742210998701.Spec : Prop :=
  ∀ n, P2345353742210998701.a n = A033934 n

theorem P2345353742210998701.correct : P2345353742210998701.Spec := by
  intro n
  simp only [A033934, Nat.add_sub_cancel, A033934.P2345353742210998701.a, A033934.P11766874347427226134.a, A134230, A134230.P7961735828533681939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033934

/-! ## A033934.P2094040373886980794

`(A002283(n)+2)^2`
-/

namespace A033934.P2094040373886980794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002283 n + 2) ^ 2

end

end A033934.P2094040373886980794

namespace A033934

/-- `(A002283(n)+2)^2` -/
def P2094040373886980794.Spec : Prop :=
  ∀ n, P2094040373886980794.a n = A033934 n

theorem P2094040373886980794.correct : P2094040373886980794.Spec := by
  intro n
  simp only [A033934, Nat.add_sub_cancel, A033934.P2094040373886980794.a, A033934.P11766874347427226134.a, A002283, A002283.P2252111154706607536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033934

/-! ## A033934.P15137316275444626480

`(Δ[A002275(n)]+1)^2`
-/

namespace A033934.P15137316275444626480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) ^ 2

end

end A033934.P15137316275444626480

namespace A033934

/-- `(Δ[A002275(n)]+1)^2` -/
def P15137316275444626480.Spec : Prop :=
  ∀ n, P15137316275444626480.a n = A033934 n

end A033934

/-! ## A033934.P12973016185130187924

`A065983(n²+n+1)`
-/

namespace A033934.P12973016185130187924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065983 (n ^ 2 + (n + 1))

end

end A033934.P12973016185130187924

namespace A033934

/-- `A065983(n²+n+1)` -/
def P12973016185130187924.Spec : Prop :=
  ∀ n, P12973016185130187924.a n = A033934 n

end A033934

/-! ## A033934.P4778674963227544435

`(10^n+1)*A062397(n)`
-/

namespace A033934.P4778674963227544435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 1 : ℤ) * A062397 n

end

end A033934.P4778674963227544435

namespace A033934

/-- `(10^n+1)*A062397(n)` -/
def P4778674963227544435.Spec : Prop :=
  ∀ n, P4778674963227544435.a n = A033934 n

theorem P4778674963227544435.correct : P4778674963227544435.Spec := by
  intro n
  simp only [A033934, Nat.add_sub_cancel, A033934.P4778674963227544435.a, A033934.P11766874347427226134.a, A062397, A062397.P11904164326522871108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033934

/-! ## A033934.P2194639114789128551

`(A007318(∑[n])+10^n)^2`
-/

namespace A033934.P2194639114789128551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) + (10 ^ n : ℤ)) ^ 2

end

end A033934.P2194639114789128551

namespace A033934

/-- `(A007318(∑[n])+10^n)^2` -/
def P2194639114789128551.Spec : Prop :=
  ∀ n, P2194639114789128551.a n = A033934 n

end A033934

/-!
# A033935: Sum of squares of coefficients in full expansion of (z1+z2+...+zn)^n.

The programs for A033935, there is no canonical definition to state claims against.
-/

/-! ## A033935.P10070203159334811402

`A303503(n)/A000984(n)`
-/

namespace A033935.P10070203159334811402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303503 n : ℚ) / (A000984 n : ℚ)

end

end A033935.P10070203159334811402

/-! ## A033935.P12899944220770301147

`A287316(∑[4*n])`
-/

namespace A033935.P12899944220770301147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287316 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033935.P12899944220770301147

/-! ## A033935.P2880244761419112470

`lcm(A028310(n), A287316(A046092(n)))`
-/

namespace A033935.P2880244761419112470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A287316 (A046092 n).toNat)

end

end A033935.P2880244761419112470

/-! ## A033935.P12305762058156700876

`or(A000007(n), A287316(A046092(n)))`
-/

namespace A033935.P12305762058156700876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A287316 (A046092 n).toNat)

end

end A033935.P12305762058156700876

/-! ## A033935.P1632377338281385193

`or(A133943(n+1), A287316(A046092(n)))`
-/

namespace A033935.P1632377338281385193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A133943 (n + 1)) (A287316 (A046092 n).toNat)

end

end A033935.P1632377338281385193

/-!
# A033936: a(n+1) = a(n) + sum of squares of digits of a(n).

The programs for A033936, the canonical program `A033936.P15777479944997308924` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033936 has offset 0).

The definition of A033936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033936.P15777479944997308924

`A003132(a(n-1))+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033936

/-- `A003132(a(n-1))+a(n-1)` -/
def P15777479944997308924.Spec : Prop :=
  ∀ n, P15777479944997308924.a n = A033936 n

theorem P15777479944997308924.correct : P15777479944997308924.Spec := by
  intro n
  simp only [A033936]

end A033936

/-! ## A033936.P2300845622964028644

`A003132(floor(a(n-1)))-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A033936.P2300845622964028644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003132 (a (n - 1)).toNat - (-a (n - 1))

end

end A033936.P2300845622964028644

namespace A033936

/-- `A003132(floor(a(n-1)))-floor(-a(n-1))` -/
def P2300845622964028644.Spec : Prop :=
  ∀ n, P2300845622964028644.a n = A033936 n

theorem P2300845622964028644.correct : P2300845622964028644.Spec := by
  intro n
  simp only [A033936, Nat.add_sub_cancel, A033936.P2300845622964028644.a, A033936.P15777479944997308924.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A033936

/-!
# A033937: Convolution of natural numbers n >= 1 with Fibonacci numbers F(k), k >= 3.

The programs for A033937, the canonical program `A033937.P16657048820302200629` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033937 has offset 0).

The definition of A033937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033937.P14148908482757983150

`ogf((2+x)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A033937.P14148908482757983150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -3, 2, 1, -1] n

end

end A033937.P14148908482757983150

namespace A033937

/-- `ogf((2+x)/(1-3x+2x^2+x^3-x^4))` -/
def P14148908482757983150.Spec : Prop :=
  ∀ n, P14148908482757983150.a n = A033937 n

end A033937

/-! ## A033937.P16657048820302200629

`A000045(n+7)-(11+3*n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033937

/-- `A000045(n+7)-(11+3*n)` -/
def P16657048820302200629.Spec : Prop :=
  ∀ n, P16657048820302200629.a n = A033937 n

theorem P16657048820302200629.correct : P16657048820302200629.Spec := by
  intro n
  simp only [A033937]

end A033937

/-! ## A033937.P12102357262787010425

`∑[ogf((2+x)/(1-2x+x^3))]`
-/

namespace A033937.P12102357262787010425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P12102357262787010425

namespace A033937

/-- `∑[ogf((2+x)/(1-2x+x^3))]` -/
def P12102357262787010425.Spec : Prop :=
  ∀ n, P12102357262787010425.a n = A033937 n

end A033937

/-! ## A033937.P13403044352584587923

`∑[∑[round(ϕ*a(n-1))]]` with `a(0)=2`
-/

namespace A033937.P13403044352584587923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f2 (n - 1) : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P13403044352584587923

namespace A033937

/-- `∑[∑[round(ϕ*a(n-1))]]` -/
def P13403044352584587923.Spec : Prop :=
  ∀ n, P13403044352584587923.a n = A033937 n

end A033937

/-! ## A033937.P16767912323531860910

`∑[ceil(ϕ*(a(n-1)+1))]` with `a(0)=2`
-/

namespace A033937.P16767912323531860910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P16767912323531860910

namespace A033937

/-- `∑[ceil(ϕ*(a(n-1)+1))]` -/
def P16767912323531860910.Spec : Prop :=
  ∀ n, P16767912323531860910.a n = A033937 n

end A033937

/-! ## A033937.P7493325302021889034

`∑[floor(ϕ*a(n-1))+2]` with `a(0)=2`
-/

namespace A033937.P7493325302021889034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋ + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P7493325302021889034

namespace A033937

/-- `∑[floor(ϕ*a(n-1))+2]` -/
def P7493325302021889034.Spec : Prop :=
  ∀ n, P7493325302021889034.a n = A033937 n

end A033937

/-! ## A033937.P8495164939810917271

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=2, a(1)=3`
-/

namespace A033937.P8495164939810917271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P8495164939810917271

namespace A033937

/-- `∑[∑[a(n-1)+a(n-2)]]` -/
def P8495164939810917271.Spec : Prop :=
  ∀ n, (P8495164939810917271.a n : ℤ) = A033937 n

end A033937

/-! ## A033937.P6517366240024128383

`∑[∑[2*a(n-1)-a(n-3)]]` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A033937.P6517366240024128383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n f2 =>
  2 * f2 (n - 1) - f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P6517366240024128383

namespace A033937

/-- `∑[∑[2*a(n-1)-a(n-3)]]` -/
def P6517366240024128383.Spec : Prop :=
  ∀ n, P6517366240024128383.a n = A033937 n

end A033937

/-! ## A033937.P7751332537685228630

`∑[∑[a(n-1)-(a(n-3)-a(n-1))]]` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A033937.P7751332537685228630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n f2 =>
  f2 (n - 1) - (f2 (n - 3) - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P7751332537685228630

namespace A033937

/-- `∑[∑[a(n-1)-(a(n-3)-a(n-1))]]` -/
def P7751332537685228630.Spec : Prop :=
  ∀ n, P7751332537685228630.a n = A033937 n

end A033937

/-! ## A033937.P13995575080172679623

`∑[∑[A020695(n)]]`
-/

namespace A033937.P13995575080172679623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P13995575080172679623

namespace A033937

/-- `∑[∑[A020695(n)]]` -/
def P13995575080172679623.Spec : Prop :=
  ∀ n, P13995575080172679623.a n = A033937 n

end A033937

/-! ## A033937.P3936234036404768634

`∑[A020732(n)-2]`
-/

namespace A033937.P3936234036404768634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P3936234036404768634

namespace A033937

/-- `∑[A020732(n)-2]` -/
def P3936234036404768634.Spec : Prop :=
  ∀ n, P3936234036404768634.a n = A033937 n

end A033937

/-! ## A033937.P15883846638386120764

`∑[A020712(n)-3]`
-/

namespace A033937.P15883846638386120764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P15883846638386120764

namespace A033937

/-- `∑[A020712(n)-3]` -/
def P15883846638386120764.Spec : Prop :=
  ∀ n, P15883846638386120764.a n = A033937 n

end A033937

/-! ## A033937.P9809062834766128621

`∑[A006327(n+5)]`
-/

namespace A033937.P9809062834766128621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P9809062834766128621

namespace A033937

/-- `∑[A006327(n+5)]` -/
def P9809062834766128621.Spec : Prop :=
  ∀ n, P9809062834766128621.a n = A033937 n

end A033937

/-! ## A033937.P2142174743918683202

`∑[A020717(n)-4]`
-/

namespace A033937.P2142174743918683202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020717 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P2142174743918683202

namespace A033937

/-- `∑[A020717(n)-4]` -/
def P2142174743918683202.Spec : Prop :=
  ∀ n, P2142174743918683202.a n = A033937 n

end A033937

/-! ## A033937.P5533523816487951380

`∑[A020743(n)-5]`
-/

namespace A033937.P5533523816487951380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020743 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P5533523816487951380

namespace A033937

/-- `∑[A020743(n)-5]` -/
def P5533523816487951380.Spec : Prop :=
  ∀ n, P5533523816487951380.a n = A033937 n

end A033937

/-! ## A033937.P9433699073723679155

`∑[∑[A001911(n)+2]]`
-/

namespace A033937.P9433699073723679155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P9433699073723679155

namespace A033937

/-- `∑[∑[A001911(n)+2]]` -/
def P9433699073723679155.Spec : Prop :=
  ∀ n, P9433699073723679155.a n = A033937 n

end A033937

/-! ## A033937.P15771096176879358541

`∑[∑[A048577(n)-1]]`
-/

namespace A033937.P15771096176879358541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P15771096176879358541

namespace A033937

/-- `∑[∑[A048577(n)-1]]` -/
def P15771096176879358541.Spec : Prop :=
  ∀ n, P15771096176879358541.a n = A033937 n

end A033937

/-! ## A033937.P10345185738261985487

`∑[∑[A000045(n+3)]]`
-/

namespace A033937.P10345185738261985487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P10345185738261985487

namespace A033937

/-- `∑[∑[A000045(n+3)]]` -/
def P10345185738261985487.Spec : Prop :=
  ∀ n, P10345185738261985487.a n = A033937 n

end A033937

/-! ## A033937.P2112657354317003271

`∑[∑[A018910(n)-2]]`
-/

namespace A033937.P2112657354317003271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P2112657354317003271

namespace A033937

/-- `∑[∑[A018910(n)-2]]` -/
def P2112657354317003271.Spec : Prop :=
  ∀ n, P2112657354317003271.a n = A033937 n

end A033937

/-! ## A033937.P9185879218389614013

`∑[∑[A097594(2*n)]]`
-/

namespace A033937.P9185879218389614013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097594 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P9185879218389614013

namespace A033937

/-- `∑[∑[A097594(2*n)]]` -/
def P9185879218389614013.Spec : Prop :=
  ∀ n, P9185879218389614013.a n = A033937 n

end A033937

/-!
# A033938: Palindromic primes n such that the period of 1/n is a palindrome.

The programs for A033938, there is no canonical definition to state claims against.
-/

/-! ## A033938.P1111266449987432157

`record[p?[A262038(A160089(n))]]`
-/

namespace A033938.P1111266449987432157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A160089 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033938.P1111266449987432157

/-! ## A033938.P329023062990628433

`A083139(record[A001223(n+1)/A126759(n)])`
-/

namespace A033938.P329023062990628433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) / (A126759 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083139 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A033938.P329023062990628433

/-! ## A033938.P8837341877731868543

`∩[A002385(n+1), A068938(A002473(n+1))]`
-/

namespace A033938.P8837341877731868543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068938 (A002473 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033938.P8837341877731868543

/-! ## A033938.P15797601617095501790

`∩[A002385(n+1), A182358(A062687(n+1))]`
-/

namespace A033938.P15797601617095501790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182358 (A062687 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033938.P15797601617095501790

/-!
# A033939: Period of 1/n in sequence A033938.

The programs for A033939, there is no canonical definition to state claims against.
-/

/-! ## A033939.P922082782302214374

`A007732(A033938(n+1))`
-/

namespace A033939.P922082782302214374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A033938 (n + 1)).toNat

end

end A033939.P922082782302214374

/-! ## A033939.P3286242926537540890

`A134558(or(4, A003320(n)))`
-/

namespace A033939.P3286242926537540890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134558 (Int.lor 4 (A003320 n)).toNat

end

end A033939.P3286242926537540890

/-! ## A033939.P2626796915594346562

`A114972(xor(3, A114990(2*n+1)))`
-/

namespace A033939.P2626796915594346562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114972 (Int.xor 3 (A114990 (2 * n + 1))).toNat

end

end A033939.P2626796915594346562

/-!
# A033940: a(n) = 10^n mod 7.

The programs for A033940, the canonical program `A033940.P12531404933165278132` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033940 has offset 0).

The definition of A033940 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n)%7` (program `A033940.P12531404933165278132`, by `A033940.P12531404933165278132.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033940.P16478597412817440698

`a(n-6)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=6, a(4)=4, a(5)=5`
-/

namespace A033940.P16478597412817440698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 6, 4, 5] fun n a =>
  a (n - 6)

end

end A033940.P16478597412817440698

namespace A033940

/-- `a(n-6)` -/
def P16478597412817440698.Spec : Prop :=
  ∀ n, (P16478597412817440698.a n : ℤ) = A033940 n

end A033940

/-! ## A033940.P12531404933165278132

`(10^n)%7`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A033940

/-- `(10^n)%7` -/
def P12531404933165278132.Spec : Prop :=
  ∀ n, (P12531404933165278132.a n : ℤ) = A033940 n

theorem P12531404933165278132.correct : P12531404933165278132.Spec := by
  intro n
  simp only [A033940]

end A033940

/-!
# A033941: Number of ways A002808(n) can be properly factored into 2 integers.

The programs for A033941, the canonical program `A033941.P7624727038485756511` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033941 has offset 1).

The definition of A033941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033941.P758179653972182983

`ceil(A144925(n+1)/2)`
-/

namespace A033941.P758179653972182983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A144925 (n + 1) : ℚ) / 2⌉

end

end A033941.P758179653972182983

namespace A033941

/-- `ceil(A144925(n+1)/2)` -/
def P758179653972182983.Spec : Prop :=
  ∀ n, P758179653972182983.a n = A033941 (n + 1)

end A033941

/-! ## A033941.P16116930053874580466

`A004526(A144925(n+1)+1)`
-/

namespace A033941.P16116930053874580466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A144925 (n + 1) + 1).toNat

end

end A033941.P16116930053874580466

namespace A033941

/-- `A004526(A144925(n+1)+1)` -/
def P16116930053874580466.Spec : Prop :=
  ∀ n, P16116930053874580466.a n = A033941 (n + 1)

end A033941

/-! ## A033941.P7303236754287200667

`A008619(A144925(n+1)-1)`
-/

namespace A033941.P7303236754287200667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A144925 (n + 1) - 1).toNat

end

end A033941.P7303236754287200667

namespace A033941

/-- `A008619(A144925(n+1)-1)` -/
def P7303236754287200667.Spec : Prop :=
  ∀ n, P7303236754287200667.a n = A033941 (n + 1)

end A033941

/-! ## A033941.P14138237618363275449

`ceil(A000005(A002808(n+1))/2)-1`
-/

namespace A033941.P14138237618363275449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (A002808 (n + 1)).toNat : ℚ) / 2⌉ - 1

end

end A033941.P14138237618363275449

namespace A033941

/-- `ceil(A000005(A002808(n+1))/2)-1` -/
def P14138237618363275449.Spec : Prop :=
  ∀ n, P14138237618363275449.a n = A033941 (n + 1)

end A033941

/-! ## A033941.P8389363656376664733

`ceil(A000005(lt[1, A001222(n+1)]+1)/2)-1`
-/

namespace A033941.P8389363656376664733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℚ) / 2⌉ - 1

end

end A033941.P8389363656376664733

namespace A033941

/-- `ceil(A000005(lt[1, A001222(n+1)]+1)/2)-1` -/
def P8389363656376664733.Spec : Prop :=
  ∀ n, P8389363656376664733.a n = A033941 (n + 1)

end A033941

/-! ## A033941.P8882351367312252762

`A072670(A072668(n+1))`
-/

namespace A033941.P8882351367312252762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A072668 (n + 1)).toNat

end

end A033941.P8882351367312252762

namespace A033941

/-- `A072670(A072668(n+1))` -/
def P8882351367312252762.Spec : Prop :=
  ∀ n, P8882351367312252762.a n = A033941 (n + 1)

end A033941

/-! ## A033941.P11736679653574573123

`A072670(A060462(n+2))`
-/

namespace A033941.P11736679653574573123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A060462 (n + 2)).toNat

end

end A033941.P11736679653574573123

namespace A033941

/-- `A072670(A060462(n+2))` -/
def P11736679653574573123.Spec : Prop :=
  ∀ n, P11736679653574573123.a n = A033941 (n + 1)

end A033941

/-! ## A033941.P12472602288374931930

`A072670(lt[0, A072670(n)])`
-/

namespace A033941.P12472602288374931930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A033941.P12472602288374931930

namespace A033941

/-- `A072670(lt[0, A072670(n)])` -/
def P12472602288374931930.Spec : Prop :=
  ∀ n, P12472602288374931930.a n = A033941 (n + 1)

end A033941

/-! ## A033941.P2560698948524617372

`A072670(A002808(n+1)-1)`
-/

namespace A033941.P2560698948524617372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A002808 (n + 1) - 1).toNat

end

end A033941.P2560698948524617372

namespace A033941

/-- `A072670(A002808(n+1)-1)` -/
def P2560698948524617372.Spec : Prop :=
  ∀ n, P2560698948524617372.a n = A033941 (n + 1)

end A033941

/-! ## A033941.P3867884145496833073

`A072670(A079696(n+1)-2)`
-/

namespace A033941.P3867884145496833073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A079696 (n + 1) - 2).toNat

end

end A033941.P3867884145496833073

namespace A033941

/-- `A072670(A079696(n+1)-2)` -/
def P3867884145496833073.Spec : Prop :=
  ∀ n, P3867884145496833073.a n = A033941 (n + 1)

end A033941

/-! ## A033941.P7624727038485756511

`Δ[A183003(A018252(n+1))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A033941

/-- `Δ[A183003(A018252(n+1))]` -/
def P7624727038485756511.Spec : Prop :=
  ∀ n, P7624727038485756511.a n = A033941 (n + 1)

theorem P7624727038485756511.correct : P7624727038485756511.Spec := by
  intro n
  simp only [A033941, Nat.add_sub_cancel]

end A033941

/-! ## A033941.P10951944854493997463

`A038548(A002808(n+1))-1`
-/

namespace A033941.P10951944854493997463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A002808 (n + 1)).toNat - 1

end

end A033941.P10951944854493997463

namespace A033941

/-- `A038548(A002808(n+1))-1` -/
def P10951944854493997463.Spec : Prop :=
  ∀ n, P10951944854493997463.a n = A033941 (n + 1)

end A033941

/-! ## A033941.P17163978531131250806

`A038548(A018252(n+2))-1`
-/

namespace A033941.P17163978531131250806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A018252 (n + 2)).toNat - 1

end

end A033941.P17163978531131250806

namespace A033941

/-- `A038548(A018252(n+2))-1` -/
def P17163978531131250806.Spec : Prop :=
  ∀ n, P17163978531131250806.a n = A033941 (n + 1)

end A033941

/-! ## A033941.P8547718102223600769

`A038548(lt[1, A032741(n)])-1`
-/

namespace A033941.P8547718102223600769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A033941.P8547718102223600769

namespace A033941

/-- `A038548(lt[1, A032741(n)])-1` -/
def P8547718102223600769.Spec : Prop :=
  ∀ n, P8547718102223600769.a n = A033941 (n + 1)

end A033941

/-! ## A033941.P13149902812850228300

`A161840(lt[1, A032741(n)])/2`
-/

namespace A033941.P13149902812850228300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161840 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A033941.P13149902812850228300

namespace A033941

/-- `A161840(lt[1, A032741(n)])/2` -/
def P13149902812850228300.Spec : Prop :=
  ∀ n, P13149902812850228300.a n = (A033941 (n + 1) : ℚ)

end A033941

/-! ## A033941.P16483156248272647523

`A038548(A072668(n+1)+1)-1`
-/

namespace A033941.P16483156248272647523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A072668 (n + 1) + 1).toNat - 1

end

end A033941.P16483156248272647523

namespace A033941

/-- `A038548(A072668(n+1)+1)-1` -/
def P16483156248272647523.Spec : Prop :=
  ∀ n, P16483156248272647523.a n = A033941 (n + 1)

end A033941

/-! ## A033941.P17678065008216976668

`Δ[record[A183003(A242112(n))]]`
-/

namespace A033941.P17678065008216976668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183003 (A242112 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033941.P17678065008216976668

namespace A033941

/-- `Δ[record[A183003(A242112(n))]]` -/
def P17678065008216976668.Spec : Prop :=
  ∀ n, P17678065008216976668.a n = A033941 (n + 1)

end A033941

/-! ## A033941.P14559732975306341924

`A220400(A129401(n+1))`
-/

namespace A033941.P14559732975306341924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (A129401 (n + 1)).toNat

end

end A033941.P14559732975306341924

namespace A033941

/-- `A220400(A129401(n+1))` -/
def P14559732975306341924.Spec : Prop :=
  ∀ n, P14559732975306341924.a n = A033941 (n + 1)

end A033941

/-!
# A033942: Positive integers with at least 3 prime factors (counted with multiplicity).

The programs for A033942, the canonical program `A033942.P4752248338100259006` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033942 has offset 1).

The definition of A033942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033942.P17927999868903657392

`lt[3, A074206(n)]`
-/

namespace A033942.P17927999868903657392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A033942.P17927999868903657392

namespace A033942

/-- `lt[3, A074206(n)]` -/
def P17927999868903657392.Spec : Prop :=
  ∀ n, (P17927999868903657392.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P460487902447782521

`lt[4, A077462(n)]`
-/

namespace A033942.P460487902447782521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A033942.P460487902447782521

namespace A033942

/-- `lt[4, A077462(n)]` -/
def P460487902447782521.Spec : Prop :=
  ∀ n, (P460487902447782521.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P17931174704402126904

`lt[1, A216677(n+1)]+1`
-/

namespace A033942.P17931174704402126904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A033942.P17931174704402126904

namespace A033942

/-- `lt[1, A216677(n+1)]+1` -/
def P17931174704402126904.Spec : Prop :=
  ∀ n, (P17931174704402126904.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P1144552084485085349

`lt[1, A300239(n+1)]+1`
-/

namespace A033942.P1144552084485085349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A033942.P1144552084485085349

namespace A033942

/-- `lt[1, A300239(n+1)]+1` -/
def P1144552084485085349.Spec : Prop :=
  ∀ n, (P1144552084485085349.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P13343651862918340235

`lt[1, A339890(n+1)]+1`
-/

namespace A033942.P13343651862918340235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A033942.P13343651862918340235

namespace A033942

/-- `lt[1, A339890(n+1)]+1` -/
def P13343651862918340235.Spec : Prop :=
  ∀ n, (P13343651862918340235.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P11387447350025730951

`lt[2, A001222(n+1)]+1`
-/

namespace A033942.P11387447350025730951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A033942.P11387447350025730951

namespace A033942

/-- `lt[2, A001222(n+1)]+1` -/
def P11387447350025730951.Spec : Prop :=
  ∀ n, (P11387447350025730951.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P10350782837945893108

`lt[2, A033273(n+1)]+1`
-/

namespace A033942.P10350782837945893108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A033942.P10350782837945893108

namespace A033942

/-- `lt[2, A033273(n+1)]+1` -/
def P10350782837945893108.Spec : Prop :=
  ∀ n, (P10350782837945893108.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P13291339227512089906

`lt[2, A292504(n+1)]+1`
-/

namespace A033942.P13291339227512089906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A033942.P13291339227512089906

namespace A033942

/-- `lt[2, A292504(n+1)]+1` -/
def P13291339227512089906.Spec : Prop :=
  ∀ n, (P13291339227512089906.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P17022228797747186575

`eq[0, C(2, A001222(n+2))]+2`
-/

namespace A033942.P17022228797747186575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A001222 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A033942.P17022228797747186575

namespace A033942

/-- `eq[0, C(2, A001222(n+2))]+2` -/
def P17022228797747186575.Spec : Prop :=
  ∀ n, (P17022228797747186575.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P6548128837958626729

`∪[A058080(n+1), A033477(n)]`
-/

namespace A033942.P6548128837958626729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033477 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033942.P6548128837958626729

namespace A033942

/-- `∪[A058080(n+1), A033477(n)]` -/
def P6548128837958626729.Spec : Prop :=
  ∀ n, (P6548128837958626729.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P5392971220586484355

`∪[A058080(n+1), A111307(n)]`
-/

namespace A033942.P5392971220586484355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033942.P5392971220586484355

namespace A033942

/-- `∪[A058080(n+1), A111307(n)]` -/
def P5392971220586484355.Spec : Prop :=
  ∀ n, (P5392971220586484355.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P4752248338100259006

`∪[A014612(n+1), A033987(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A033942

/-- `∪[A014612(n+1), A033987(n+1)]` -/
def P4752248338100259006.Spec : Prop :=
  ∀ n, (P4752248338100259006.a n : ℤ) = A033942 (n + 1)

theorem P4752248338100259006.correct : P4752248338100259006.Spec := by
  intro n
  simp only [A033942, Nat.add_sub_cancel]

end A033942

/-! ## A033942.P1543122353020980048

`∪[A007624(n+1), A048108(n+1)]`
-/

namespace A033942.P1543122353020980048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033942.P1543122353020980048

namespace A033942

/-- `∪[A007624(n+1), A048108(n+1)]` -/
def P1543122353020980048.Spec : Prop :=
  ∀ n, (P1543122353020980048.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P9181691022358662997

`∪[A007624(n+1), A062171(n+1)]`
-/

namespace A033942.P9181691022358662997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033942.P9181691022358662997

namespace A033942

/-- `∪[A007624(n+1), A062171(n+1)]` -/
def P9181691022358662997.Spec : Prop :=
  ∀ n, (P9181691022358662997.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P14664315747961437857

`∪[A014612(n+1), A058080(n+1)]`
-/

namespace A033942.P14664315747961437857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033942.P14664315747961437857

namespace A033942

/-- `∪[A014612(n+1), A058080(n+1)]` -/
def P14664315747961437857.Spec : Prop :=
  ∀ n, (P14664315747961437857.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P6549549704702906862

`∪[A033987(n+1), A046339(n+1)]`
-/

namespace A033942.P6549549704702906862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033942.P6549549704702906862

namespace A033942

/-- `∪[A033987(n+1), A046339(n+1)]` -/
def P6549549704702906862.Spec : Prop :=
  ∀ n, (P6549549704702906862.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P17434697900000825784

`∪[A030078(n+1), A058080(n+1)]`
-/

namespace A033942.P17434697900000825784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033942.P17434697900000825784

namespace A033942

/-- `∪[A030078(n+1), A058080(n+1)]` -/
def P17434697900000825784.Spec : Prop :=
  ∀ n, (P17434697900000825784.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P6476218089871087433

`∪[A033859(n+1), A058080(n+1)]`
-/

namespace A033942.P6476218089871087433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033942.P6476218089871087433

namespace A033942

/-- `∪[A033859(n+1), A058080(n+1)]` -/
def P6476218089871087433.Spec : Prop :=
  ∀ n, (P6476218089871087433.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P8781298965814189682

`∪[A046099(n+1), A058080(n+1)]`
-/

namespace A033942.P8781298965814189682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033942.P8781298965814189682

namespace A033942

/-- `∪[A046099(n+1), A058080(n+1)]` -/
def P8781298965814189682.Spec : Prop :=
  ∀ n, (P8781298965814189682.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P9611176514800535030

`∪[A058080(n+1), A046339(n+1)]`
-/

namespace A033942.P9611176514800535030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033942.P9611176514800535030

namespace A033942

/-- `∪[A058080(n+1), A046339(n+1)]` -/
def P9611176514800535030.Spec : Prop :=
  ∀ n, (P9611176514800535030.a n : ℤ) = A033942 (n + 1)

end A033942

/-! ## A033942.P8269451052909227298

`lt[2, ∑{e}[n+3, #]]+3`
-/

namespace A033942.P8269451052909227298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3

end

end A033942.P8269451052909227298

namespace A033942

/-- `lt[2, ∑{e}[n+3, #]]+3` -/
def P8269451052909227298.Spec : Prop :=
  ∀ n, (P8269451052909227298.a n : ℤ) = A033942 (n + 1)

end A033942

/-!
# A033943: Sum of coefficients of a polynomial associated to a family of digraphs.

The programs for A033943, there is no canonical definition to state claims against.
-/

/-! ## A033943.P3311233155218658536

`A156616(n)-(∑{d}[n+1, lcm(2, #)/2]-1)`
-/

namespace A033943.P3311233155218658536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156616 n : ℚ) - (∑ d ∈ Nat.divisors (f1 n), (Nat.lcm 2 d : ℚ) / 2 - 1)

end

end A033943.P3311233155218658536

/-! ## A033943.P11591305121180771417

`A029579(round(3*(n+2)*2^(n-3))-round(sqrt(2*n)))`
-/

namespace A033943.P11591305121180771417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (SequenceMachineLib.roundAway (3 * ((n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A033943.P11591305121180771417

/-! ## A033943.P16782154610304326889

`A088629(A002524(n))`
-/

namespace A033943.P16782154610304326889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088629 (A002524 n).toNat

end

end A033943.P16782154610304326889

/-!
# A033945: Record highs in A033885 (3n - sum of divisors of n).

The programs for A033945, the canonical program `A033945.P16229750016631118543` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033945 has offset 1).

The definition of A033945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033945.P16229750016631118543

`record[3*(n+1)-A000203(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033945

/-- `record[3*(n+1)-A000203(n+1)]` -/
def P16229750016631118543.Spec : Prop :=
  ∀ n, P16229750016631118543.a n = A033945 (n + 1)

theorem P16229750016631118543.correct : P16229750016631118543.Spec := by
  intro n
  simp only [A033945, Nat.add_sub_cancel]

end A033945

/-! ## A033945.P8946479846358194170

`record[A000010(n+1)+A008966(n+1)+n]`
-/

namespace A033945.P8946479846358194170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A008966 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P8946479846358194170

namespace A033945

/-- `record[A000010(n+1)+A008966(n+1)+n]` -/
def P8946479846358194170.Spec : Prop :=
  ∀ n, P8946479846358194170.a n = A033945 (n + 1)

end A033945

/-! ## A033945.P18440778814549081638

`record[A318441(n+1)+n+1]`
-/

namespace A033945.P18440778814549081638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318441 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P18440778814549081638

namespace A033945

/-- `record[A318441(n+1)+n+1]` -/
def P18440778814549081638.Spec : Prop :=
  ∀ n, P18440778814549081638.a n = A033945 (n + 1)

end A033945

/-! ## A033945.P9071651494856225339

`record[A318878(n+1)+1+n]`
-/

namespace A033945.P9071651494856225339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318878 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P9071651494856225339

namespace A033945

/-- `record[A318878(n+1)+1+n]` -/
def P9071651494856225339.Spec : Prop :=
  ∀ n, P9071651494856225339.a n = A033945 (n + 1)

end A033945

/-! ## A033945.P999152691295801828

`record[A318678(n+1)+A000010(n+1)]`
-/

namespace A033945.P999152691295801828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318678 (n + 1) + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P999152691295801828

namespace A033945

/-- `record[A318678(n+1)+A000010(n+1)]` -/
def P999152691295801828.Spec : Prop :=
  ∀ n, P999152691295801828.a n = A033945 (n + 1)

end A033945

/-! ## A033945.P15207305104406427218

`record[n+1+A033879(n+1)]`
-/

namespace A033945.P15207305104406427218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P15207305104406427218

namespace A033945

/-- `record[n+1+A033879(n+1)]` -/
def P15207305104406427218.Spec : Prop :=
  ∀ n, P15207305104406427218.a n = A033945 (n + 1)

theorem P15207305104406427218.correct : P15207305104406427218.Spec := by
  intro n
  simp only [A033945, Nat.add_sub_cancel, A033945.P15207305104406427218.f1, A033945.P15207305104406427218.a, A033945.P16229750016631118543.f1, A033945.P16229750016631118543.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P5965131822542929609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033945

/-! ## A033945.P13717381367457861195

`record[A388283(1+n)]`
-/

namespace A033945.P13717381367457861195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388283 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P13717381367457861195

namespace A033945

/-- `record[A388283(1+n)]` -/
def P13717381367457861195.Spec : Prop :=
  ∀ n, P13717381367457861195.a n = A033945 (n + 1)

end A033945

/-! ## A033945.P14241419513422821796

`record[A082729(n+1)+1+n]`
-/

namespace A033945.P14241419513422821796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082729 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P14241419513422821796

namespace A033945

/-- `record[A082729(n+1)+1+n]` -/
def P14241419513422821796.Spec : Prop :=
  ∀ n, P14241419513422821796.a n = A033945 (n + 1)

end A033945

/-! ## A033945.P8976421143055291921

`record[A103977(n+1)+1+n]`
-/

namespace A033945.P8976421143055291921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P8976421143055291921

namespace A033945

/-- `record[A103977(n+1)+1+n]` -/
def P8976421143055291921.Spec : Prop :=
  ∀ n, P8976421143055291921.a n = A033945 (n + 1)

end A033945

/-! ## A033945.P15173925162324553964

`A388283(A033946(2*n+1-n))`
-/

namespace A033945.P15173925162324553964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388283 (A033946 (2 * n + 1 - n)).toNat

end

end A033945.P15173925162324553964

namespace A033945

/-- `A388283(A033946(2*n+1-n))` -/
def P15173925162324553964.Spec : Prop :=
  ∀ n, P15173925162324553964.a n = A033945 (n + 1)

end A033945

/-! ## A033945.P9338758693593990707

`record[3*(n+1)-∑{d}[n+1, #]]`
-/

namespace A033945.P9338758693593990707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P9338758693593990707

namespace A033945

/-- `record[3*(n+1)-∑{d}[n+1, #]]` -/
def P9338758693593990707.Spec : Prop :=
  ∀ n, P9338758693593990707.a n = A033945 (n + 1)

theorem P9338758693593990707.correct : P9338758693593990707.Spec := by
  intro n
  simp only [A033945, Nat.add_sub_cancel, A033945.P9338758693593990707.f2, A033945.P9338758693593990707.f1, A033945.P9338758693593990707.a, A033945.P16229750016631118543.f1, A033945.P16229750016631118543.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033945

/-! ## A033945.P6247244930511835462

`record[A033885(1+n)]`
-/

namespace A033945.P6247244930511835462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P6247244930511835462

namespace A033945

/-- `record[A033885(1+n)]` -/
def P6247244930511835462.Spec : Prop :=
  ∀ n, P6247244930511835462.a n = A033945 (n + 1)

end A033945

/-! ## A033945.P12123628000081537839

`record[A353190(n+1)+1]`
-/

namespace A033945.P12123628000081537839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353190 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P12123628000081537839

namespace A033945

/-- `record[A353190(n+1)+1]` -/
def P12123628000081537839.Spec : Prop :=
  ∀ n, P12123628000081537839.a n = A033945 (n + 1)

theorem P12123628000081537839.correct : P12123628000081537839.Spec := by
  intro n
  simp only [A033945, Nat.add_sub_cancel, A033945.P12123628000081537839.f1, A033945.P12123628000081537839.a, A033945.P16229750016631118543.f1, A033945.P16229750016631118543.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A353190, A353190.P11422691785722745783.a, A001065, A001065.P4097147489331274860.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033945

/-! ## A033945.P4343059795755569575

`record[A130107(n+1)+1+n]`
-/

namespace A033945.P4343059795755569575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130107 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P4343059795755569575

namespace A033945

/-- `record[A130107(n+1)+1+n]` -/
def P4343059795755569575.Spec : Prop :=
  ∀ n, P4343059795755569575.a n = A033945 (n + 1)

end A033945

/-! ## A033945.P6731438063994097392

`record[A306408(n+1)+1+n]`
-/

namespace A033945.P6731438063994097392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306408 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P6731438063994097392

namespace A033945

/-- `record[A306408(n+1)+1+n]` -/
def P6731438063994097392.Spec : Prop :=
  ∀ n, P6731438063994097392.a n = A033945 (n + 1)

end A033945

/-! ## A033945.P11989785220062223876

`record[1-A033880(n+1)+n]`
-/

namespace A033945.P11989785220062223876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033880 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P11989785220062223876

namespace A033945

/-- `record[1-A033880(n+1)+n]` -/
def P11989785220062223876.Spec : Prop :=
  ∀ n, P11989785220062223876.a n = A033945 (n + 1)

end A033945

/-! ## A033945.P15180790123453557912

`record[2-A237588(n+1)+n]`
-/

namespace A033945.P15180790123453557912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A237588 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P15180790123453557912

namespace A033945

/-- `record[2-A237588(n+1)+n]` -/
def P15180790123453557912.Spec : Prop :=
  ∀ n, P15180790123453557912.a n = A033945 (n + 1)

end A033945

/-! ## A033945.P4879648648004948829

`record[2*(n+1)-A001065(n+1)]`
-/

namespace A033945.P4879648648004948829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P4879648648004948829

namespace A033945

/-- `record[2*(n+1)-A001065(n+1)]` -/
def P4879648648004948829.Spec : Prop :=
  ∀ n, P4879648648004948829.a n = A033945 (n + 1)

theorem P4879648648004948829.correct : P4879648648004948829.Spec := by
  intro n
  simp only [A033945, Nat.add_sub_cancel, A033945.P4879648648004948829.f1, A033945.P4879648648004948829.a, A033945.P16229750016631118543.f1, A033945.P16229750016631118543.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033945

/-! ## A033945.P12279118336918512826

`A033885(A033946(n+1))`
-/

namespace A033945.P12279118336918512826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (A033946 (n + 1)).toNat

end

end A033945.P12279118336918512826

namespace A033945

/-- `A033885(A033946(n+1))` -/
def P12279118336918512826.Spec : Prop :=
  ∀ n, P12279118336918512826.a n = A033945 (n + 1)

end A033945

/-! ## A033945.P10374701135146833216

`record[A349338(2*A349338(n+1))]`
-/

namespace A033945.P10374701135146833216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349338 (2 * A349338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P10374701135146833216

namespace A033945

/-- `record[A349338(2*A349338(n+1))]` -/
def P10374701135146833216.Spec : Prop :=
  ∀ n, P10374701135146833216.a n = A033945 (n + 1)

end A033945

/-!
# A033946: Values of n corresponding to A033945.

The programs for A033946, the canonical program `A033946.P5008854941610242731` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033946 has offset 1).

The definition of A033946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033946.P17024125229046538653

`eq[A107286(n), A344180(A107463(n))]`
-/

namespace A033946.P17024125229046538653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033946.P17024125229046538653

namespace A033946

/-- `eq[A107286(n), A344180(A107463(n))]` -/
def P17024125229046538653.Spec : Prop :=
  ∀ n, (P17024125229046538653.a n : ℤ) = A033946 (n + 1)

end A033946

/-! ## A033946.P11117863484341795239

`record[A032741(A300835(n+1))+A000010(n+1)]`
-/

namespace A033946.P11117863484341795239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A300835 (n + 1)).toNat + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033946.P11117863484341795239

namespace A033946

/-- `record[A032741(A300835(n+1))+A000010(n+1)]` -/
def P11117863484341795239.Spec : Prop :=
  ∀ n, P11117863484341795239.a n = A033946 (n + 1)

end A033946

/-! ## A033946.P5008854941610242731

`lt[A048050(n+1), A054541(xor(1, n)+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A033946

/-- `lt[A048050(n+1), A054541(xor(1, n)+1)]+1` -/
def P5008854941610242731.Spec : Prop :=
  ∀ n, (P5008854941610242731.a n : ℤ) = A033946 (n + 1)

theorem P5008854941610242731.correct : P5008854941610242731.Spec := by
  intro n
  simp only [A033946, Nat.add_sub_cancel]

end A033946

/-! ## A033946.P1075190395123649580

`lt[A051953(n+1), A054541(xor(1, n)+1)]+1`
-/

namespace A033946.P1075190395123649580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (Nat.xor 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A033946.P1075190395123649580

namespace A033946

/-- `lt[A051953(n+1), A054541(xor(1, n)+1)]+1` -/
def P1075190395123649580.Spec : Prop :=
  ∀ n, (P1075190395123649580.a n : ℤ) = A033946 (n + 1)

end A033946

/-! ## A033946.P6937791215518093983

`eq[A004273(A051699(n)), A037213(n)]`
-/

namespace A033946.P6937791215518093983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A051699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033946.P6937791215518093983

namespace A033946

/-- `eq[A004273(A051699(n)), A037213(n)]` -/
def P6937791215518093983.Spec : Prop :=
  ∀ n, (P6937791215518093983.a n : ℤ) = A033946 (n + 1)

end A033946

/-! ## A033946.P14559201330104621705

`eq[A037213(n), A087805(A007920(n))]`
-/

namespace A033946.P14559201330104621705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087805 (A007920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033946.P14559201330104621705

namespace A033946

/-- `eq[A037213(n), A087805(A007920(n))]` -/
def P14559201330104621705.Spec : Prop :=
  ∀ n, (P14559201330104621705.a n : ℤ) = A033946 (n + 1)

end A033946

/-! ## A033946.P7245387374555298527

`eq[A051699(n), A286100(A008619(n))]`
-/

namespace A033946.P7245387374555298527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286100 (A008619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033946.P7245387374555298527

namespace A033946

/-- `eq[A051699(n), A286100(A008619(n))]` -/
def P7245387374555298527.Spec : Prop :=
  ∀ n, (P7245387374555298527.a n : ℤ) = A033946 (n + 1)

end A033946

/-! ## A033946.P1851604711761994859

`eq[A107286(n), A344180(A003415(n))]`
-/

namespace A033946.P1851604711761994859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033946.P1851604711761994859

namespace A033946

/-- `eq[A107286(n), A344180(A003415(n))]` -/
def P1851604711761994859.Spec : Prop :=
  ∀ n, (P1851604711761994859.a n : ℤ) = A033946 (n + 1)

end A033946

/-! ## A033946.P4701024936750191298

`eq[A104725(n), A143862(A119655(n)+1)]`
-/

namespace A033946.P4701024936750191298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 (A119655 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033946.P4701024936750191298

namespace A033946

/-- `eq[A104725(n), A143862(A119655(n)+1)]` -/
def P4701024936750191298.Spec : Prop :=
  ∀ n, (P4701024936750191298.a n : ℤ) = A033946 (n + 1)

end A033946

/-! ## A033946.P15289249236557123337

`eq[A107286(n), A344180(A184727(n+1))]`
-/

namespace A033946.P15289249236557123337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (A184727 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033946.P15289249236557123337

namespace A033946

/-- `eq[A107286(n), A344180(A184727(n+1))]` -/
def P15289249236557123337.Spec : Prop :=
  ∀ n, (P15289249236557123337.a n : ℤ) = A033946 (n + 1)

end A033946

/-! ## A033946.P5347042878485606019

`eq[A160144(A082024(n)), A285718(n+1)]`
-/

namespace A033946.P5347042878485606019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160144 (A082024 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033946.P5347042878485606019

namespace A033946

/-- `eq[A160144(A082024(n)), A285718(n+1)]` -/
def P5347042878485606019.Spec : Prop :=
  ∀ n, (P5347042878485606019.a n : ℤ) = A033946 (n + 1)

end A033946

/-! ## A033946.P12907960850188539892

`lt[A331888(n), A020639(A331903(n+1))]`
-/

namespace A033946.P12907960850188539892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A331903 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033946.P12907960850188539892

namespace A033946

/-- `lt[A331888(n), A020639(A331903(n+1))]` -/
def P12907960850188539892.Spec : Prop :=
  ∀ n, (P12907960850188539892.a n : ℤ) = A033946 (n + 1)

end A033946

/-!
# A033948: Numbers that have a primitive root (k such that the multiplicative group modulo k is cyclic).

The programs for A033948, the canonical program `A033948.P5912959351970205991` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033948 has offset 1).

The definition of A033948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033948.P5912959351970205991

`record[n*A211487(n+1)+1]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A033948

/-- `record[n*A211487(n+1)+1]` -/
def P5912959351970205991.Spec : Prop :=
  ∀ n, P5912959351970205991.a n = A033948 (n + 1)

theorem P5912959351970205991.correct : P5912959351970205991.Spec := by
  intro n
  simp only [A033948, Nat.add_sub_cancel]

end A033948

/-! ## A033948.P17364116580255842996

`∪[A008578(n+1), A193305(n+1)]`
-/

namespace A033948.P17364116580255842996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033948.P17364116580255842996

namespace A033948

/-- `∪[A008578(n+1), A193305(n+1)]` -/
def P17364116580255842996.Spec : Prop :=
  ∀ n, (P17364116580255842996.a n : ℤ) = A033948 (n + 1)

end A033948

/-! ## A033948.P97771888274115421

`∪[A033946(n+1), A193305(n+1)]`
-/

namespace A033948.P97771888274115421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033948.P97771888274115421

namespace A033948

/-- `∪[A033946(n+1), A193305(n+1)]` -/
def P97771888274115421.Spec : Prop :=
  ∀ n, (P97771888274115421.a n : ℤ) = A033948 (n + 1)

end A033948

/-! ## A033948.P706950375926145

`∪[A046022(n+1), A193305(n+1)]`
-/

namespace A033948.P706950375926145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033948.P706950375926145

namespace A033948

/-- `∪[A046022(n+1), A193305(n+1)]` -/
def P706950375926145.Spec : Prop :=
  ∀ n, (P706950375926145.a n : ℤ) = A033948 (n + 1)

end A033948

/-! ## A033948.P16323173045455112442

`∪[A066050(n+1), A193305(n+1)]`
-/

namespace A033948.P16323173045455112442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033948.P16323173045455112442

namespace A033948

/-- `∪[A066050(n+1), A193305(n+1)]` -/
def P16323173045455112442.Spec : Prop :=
  ∀ n, (P16323173045455112442.a n : ℤ) = A033948 (n + 1)

end A033948

/-! ## A033948.P10251317208307441700

`∪[A067126(n+1), A193305(n+1)]`
-/

namespace A033948.P10251317208307441700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033948.P10251317208307441700

namespace A033948

/-- `∪[A067126(n+1), A193305(n+1)]` -/
def P10251317208307441700.Spec : Prop :=
  ∀ n, (P10251317208307441700.a n : ℤ) = A033948 (n + 1)

end A033948

/-! ## A033948.P7398690390077537909

`∪[A074583(n+1), A193305(n+1)]`
-/

namespace A033948.P7398690390077537909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033948.P7398690390077537909

namespace A033948

/-- `∪[A074583(n+1), A193305(n+1)]` -/
def P7398690390077537909.Spec : Prop :=
  ∀ n, (P7398690390077537909.a n : ℤ) = A033948 (n + 1)

end A033948

/-! ## A033948.P1309930222106426207

`∪[A097987(n+1), A224450(n+1)]`
-/

namespace A033948.P1309930222106426207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033948.P1309930222106426207

namespace A033948

/-- `∪[A097987(n+1), A224450(n+1)]` -/
def P1309930222106426207.Spec : Prop :=
  ∀ n, (P1309930222106426207.a n : ℤ) = A033948 (n + 1)

end A033948

/-! ## A033948.P4932673118629719072

`∪[A166684(n+1), A193305(n+1)]`
-/

namespace A033948.P4932673118629719072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033948.P4932673118629719072

namespace A033948

/-- `∪[A166684(n+1), A193305(n+1)]` -/
def P4932673118629719072.Spec : Prop :=
  ∀ n, (P4932673118629719072.a n : ℤ) = A033948 (n + 1)

end A033948

/-! ## A033948.P9867412992765676449

`∪[A193305(n+1), A235050(n+1)]`
-/

namespace A033948.P9867412992765676449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033948.P9867412992765676449

namespace A033948

/-- `∪[A193305(n+1), A235050(n+1)]` -/
def P9867412992765676449.Spec : Prop :=
  ∀ n, (P9867412992765676449.a n : ℤ) = A033948 (n + 1)

end A033948

/-! ## A033948.P216863454613550878

`∪[A193305(n+1), A235868(n+1)]`
-/

namespace A033948.P216863454613550878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033948.P216863454613550878

namespace A033948

/-- `∪[A193305(n+1), A235868(n+1)]` -/
def P216863454613550878.Spec : Prop :=
  ∀ n, (P216863454613550878.a n : ℤ) = A033948 (n + 1)

end A033948

/-! ## A033948.P9911260463182427649

`∩[A300064(n+1), A302140(n+1)]`
-/

namespace A033948.P9911260463182427649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033948.P9911260463182427649

namespace A033948

/-- `∩[A300064(n+1), A302140(n+1)]` -/
def P9911260463182427649.Spec : Prop :=
  ∀ n, (P9911260463182427649.a n : ℤ) = A033948 (n + 1)

end A033948

/-! ## A033948.P18439995466453878767

`lt[A072273(n+1), 2]+1`
-/

namespace A033948.P18439995466453878767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A033948.P18439995466453878767

namespace A033948

/-- `lt[A072273(n+1), 2]+1` -/
def P18439995466453878767.Spec : Prop :=
  ∀ n, (P18439995466453878767.a n : ℤ) = A033948 (n + 1)

end A033948

/-! ## A033948.P12658793476848033372

`comp[A175594(n+1)]`
-/

namespace A033948.P12658793476848033372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A033948.P12658793476848033372

namespace A033948

/-- `comp[A175594(n+1)]` -/
def P12658793476848033372.Spec : Prop :=
  ∀ n, (P12658793476848033372.a n : ℤ) = A033948 (n + 1)

end A033948

/-! ## A033948.P17840576145483786247

`filter[A047592(n+1), A354924(#)]`
-/

namespace A033948.P17840576145483786247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A033948.P17840576145483786247

namespace A033948

/-- `filter[A047592(n+1), A354924(#)]` -/
def P17840576145483786247.Spec : Prop :=
  ∀ n, P17840576145483786247.a n = A033948 (n + 1)

end A033948

/-! ## A033948.P11073764987239734117

`record[A141258(n+1)]`
-/

namespace A033948.P11073764987239734117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033948.P11073764987239734117

namespace A033948

/-- `record[A141258(n+1)]` -/
def P11073764987239734117.Spec : Prop :=
  ∀ n, P11073764987239734117.a n = A033948 (n + 1)

end A033948

/-! ## A033948.P6401726657337231106

`eq[1, gcd(n, A046145(n))]`
-/

namespace A033948.P6401726657337231106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A046145 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033948.P6401726657337231106

namespace A033948

/-- `eq[1, gcd(n, A046145(n))]` -/
def P6401726657337231106.Spec : Prop :=
  ∀ n, (P6401726657337231106.a n : ℤ) = A033948 (n + 1)

end A033948

/-! ## A033948.P2388199167879799374

`record[A160377(n+1)+1]`
-/

namespace A033948.P2388199167879799374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160377 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033948.P2388199167879799374

namespace A033948

/-- `record[A160377(n+1)+1]` -/
def P2388199167879799374.Spec : Prop :=
  ∀ n, P2388199167879799374.a n = A033948 (n + 1)

end A033948

/-! ## A033948.P16739378281334018026

`eq[1, A034380(1+n)]+1`
-/

namespace A033948.P16739378281334018026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033948.P16739378281334018026

namespace A033948

/-- `eq[1, A034380(1+n)]+1` -/
def P16739378281334018026.Spec : Prop :=
  ∀ n, (P16739378281334018026.a n : ℤ) = A033948 (n + 1)

end A033948

/-! ## A033948.P16281670888134360040

`eq[1, A046072(n+1)]+1`
-/

namespace A033948.P16281670888134360040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033948.P16281670888134360040

namespace A033948

/-- `eq[1, A046072(n+1)]+1` -/
def P16281670888134360040.Spec : Prop :=
  ∀ n, (P16281670888134360040.a n : ℤ) = A033948 (n + 1)

end A033948

/-!
# A033949: Positive integers that do not have a primitive root.

The programs for A033949, the canonical program `A033949.P11842067900504890488` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033949 has offset 1).

The definition of A033949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033949.P11842067900504890488

`lt[1, A072273(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A033949

/-- `lt[1, A072273(n+1)]+1` -/
def P11842067900504890488.Spec : Prop :=
  ∀ n, (P11842067900504890488.a n : ℤ) = A033949 (n + 1)

theorem P11842067900504890488.correct : P11842067900504890488.Spec := by
  intro n
  simp only [A033949, Nat.add_sub_cancel]

end A033949

/-! ## A033949.P647760486836572598

`lt[A211487(n+2), 1]+2`
-/

namespace A033949.P647760486836572598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A033949.P647760486836572598

namespace A033949

/-- `lt[A211487(n+2), 1]+2` -/
def P647760486836572598.Spec : Prop :=
  ∀ n, (P647760486836572598.a n : ℤ) = A033949 (n + 1)

end A033949

/-! ## A033949.P375998792564292211

`comp[A033948(n+1)-1]+1`
-/

namespace A033949.P375998792564292211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A033949.P375998792564292211

namespace A033949

/-- `comp[A033948(n+1)-1]+1` -/
def P375998792564292211.Spec : Prop :=
  ∀ n, (P375998792564292211.a n : ℤ) = A033949 (n + 1)

end A033949

/-! ## A033949.P14415937341739528318

`filter[A002808(n+2), A354108(#)]`
-/

namespace A033949.P14415937341739528318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A033949.P14415937341739528318

namespace A033949

/-- `filter[A002808(n+2), A354108(#)]` -/
def P14415937341739528318.Spec : Prop :=
  ∀ n, P14415937341739528318.a n = A033949 (n + 1)

end A033949

/-! ## A033949.P11087680788282034124

`filter[A264828(n+2), A354108(#)]`
-/

namespace A033949.P11087680788282034124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A033949.P11087680788282034124

namespace A033949

/-- `filter[A264828(n+2), A354108(#)]` -/
def P11087680788282034124.Spec : Prop :=
  ∀ n, P11087680788282034124.a n = A033949 (n + 1)

end A033949

/-! ## A033949.P729332354040111351

`filter[A018252(n+3), A354108(#)]`
-/

namespace A033949.P729332354040111351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A033949.P729332354040111351

namespace A033949

/-- `filter[A018252(n+3), A354108(#)]` -/
def P729332354040111351.Spec : Prop :=
  ∀ n, P729332354040111351.a n = A033949 (n + 1)

end A033949

/-! ## A033949.P12357259511426011840

`filter[A379051(n+3), A354108(#)]`
-/

namespace A033949.P12357259511426011840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379051 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A033949.P12357259511426011840

namespace A033949

/-- `filter[A379051(n+3), A354108(#)]` -/
def P12357259511426011840.Spec : Prop :=
  ∀ n, P12357259511426011840.a n = A033949 (n + 1)

end A033949

/-! ## A033949.P6421701537762553488

`A277777(n+1)+A082568(n+1)`
-/

namespace A033949.P6421701537762553488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277777 (n + 1) + A082568 (n + 1)

end

end A033949.P6421701537762553488

namespace A033949

/-- `A277777(n+1)+A082568(n+1)` -/
def P6421701537762553488.Spec : Prop :=
  ∀ n, P6421701537762553488.a n = A033949 (n + 1)

end A033949

/-! ## A033949.P10005505751389488675

`A175594(n+2)`
-/

namespace A033949.P10005505751389488675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175594 (n + 2)

end

end A033949.P10005505751389488675

namespace A033949

/-- `A175594(n+2)` -/
def P10005505751389488675.Spec : Prop :=
  ∀ n, P10005505751389488675.a n = A033949 (n + 1)

end A033949

/-! ## A033949.P11296637431385050474

`A180634(n+3)`
-/

namespace A033949.P11296637431385050474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180634 (n + 3)

end

end A033949.P11296637431385050474

namespace A033949

/-- `A180634(n+3)` -/
def P11296637431385050474.Spec : Prop :=
  ∀ n, P11296637431385050474.a n = A033949 (n + 1)

end A033949

/-! ## A033949.P11693365440571576096

`filter[A080257(n+1), A354108(#)]`
-/

namespace A033949.P11693365440571576096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A033949.P11693365440571576096

namespace A033949

/-- `filter[A080257(n+1), A354108(#)]` -/
def P11693365440571576096.Spec : Prop :=
  ∀ n, P11693365440571576096.a n = A033949 (n + 1)

end A033949

/-! ## A033949.P6374598493284126886

`filter[A220571(n+1), A354108(#)]`
-/

namespace A033949.P6374598493284126886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A033949.P6374598493284126886

namespace A033949

/-- `filter[A220571(n+1), A354108(#)]` -/
def P6374598493284126886.Spec : Prop :=
  ∀ n, P6374598493284126886.a n = A033949 (n + 1)

end A033949

/-! ## A033949.P1605672982123828226

`filter[A056653(n+2), A354108(#)]`
-/

namespace A033949.P1605672982123828226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A033949.P1605672982123828226

namespace A033949

/-- `filter[A056653(n+2), A354108(#)]` -/
def P1605672982123828226.Spec : Prop :=
  ∀ n, P1605672982123828226.a n = A033949 (n + 1)

end A033949

/-! ## A033949.P136242170488854136

`filter[A172019(n+1), A354108(#)]`
-/

namespace A033949.P136242170488854136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A033949.P136242170488854136

namespace A033949

/-- `filter[A172019(n+1), A354108(#)]` -/
def P136242170488854136.Spec : Prop :=
  ∀ n, P136242170488854136.a n = A033949 (n + 1)

end A033949

/-! ## A033949.P10259289938920384080

`filter[A216846(n+3), A354108(#)]`
-/

namespace A033949.P10259289938920384080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216846 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A033949.P10259289938920384080

namespace A033949

/-- `filter[A216846(n+3), A354108(#)]` -/
def P10259289938920384080.Spec : Prop :=
  ∀ n, P10259289938920384080.a n = A033949 (n + 1)

end A033949

/-! ## A033949.P1839732631341727562

`filter[A049195(n+1), A354108(#)]`
-/

namespace A033949.P1839732631341727562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A033949.P1839732631341727562

namespace A033949

/-- `filter[A049195(n+1), A354108(#)]` -/
def P1839732631341727562.Spec : Prop :=
  ∀ n, P1839732631341727562.a n = A033949 (n + 1)

end A033949

/-! ## A033949.P4891519112286584555

`filter[A332556(n+1), A354108(#)]`
-/

namespace A033949.P4891519112286584555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A033949.P4891519112286584555

namespace A033949

/-- `filter[A332556(n+1), A354108(#)]` -/
def P4891519112286584555.Spec : Prop :=
  ∀ n, P4891519112286584555.a n = A033949 (n + 1)

end A033949

/-! ## A033949.P12441040389753173734

`filter[A230457(n+1), A354108(#)]`
-/

namespace A033949.P12441040389753173734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A033949.P12441040389753173734

namespace A033949

/-- `filter[A230457(n+1), A354108(#)]` -/
def P12441040389753173734.Spec : Prop :=
  ∀ n, P12441040389753173734.a n = A033949 (n + 1)

end A033949

/-! ## A033949.P1095570169013910719

`filter[A270653(n+2), A354108(#)]`
-/

namespace A033949.P1095570169013910719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A033949.P1095570169013910719

namespace A033949

/-- `filter[A270653(n+2), A354108(#)]` -/
def P1095570169013910719.Spec : Prop :=
  ∀ n, P1095570169013910719.a n = A033949 (n + 1)

end A033949

/-! ## A033949.P11295725927806925381

`filter[A389838(n+2), A354108(#)]`
-/

namespace A033949.P11295725927806925381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389838 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A033949.P11295725927806925381

namespace A033949

/-- `filter[A389838(n+2), A354108(#)]` -/
def P11295725927806925381.Spec : Prop :=
  ∀ n, P11295725927806925381.a n = A033949 (n + 1)

end A033949

/-!
# A033950: Refactorable numbers: number of divisors of k divides k. Also known as tau numbers.

The programs for A033950, the canonical program `A033950.P9371750250849887585` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033950 has offset 1).

The definition of A033950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033950.P3829372096373389347

`A360779(n)+a(n-1)` with `a(0)=1`
-/

namespace A033950.P3829372096373389347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A360779 n + a (n - 1)

end

end A033950.P3829372096373389347

namespace A033950

/-- `A360779(n)+a(n-1)` -/
def P3829372096373389347.Spec : Prop :=
  ∀ n, P3829372096373389347.a n = A033950 (n + 1)

end A033950

/-! ## A033950.P489930541556760573

`A036762(n+1)*A039819(n+1)`
-/

namespace A033950.P489930541556760573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036762 (n + 1) * A039819 (n + 1)

end

end A033950.P489930541556760573

namespace A033950

/-- `A036762(n+1)*A039819(n+1)` -/
def P489930541556760573.Spec : Prop :=
  ∀ n, P489930541556760573.a n = A033950 (n + 1)

end A033950

/-! ## A033950.P12169992654838211370

`∪[A036907(n+1), A057265(n+1)]`
-/

namespace A033950.P12169992654838211370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033950.P12169992654838211370

namespace A033950

/-- `∪[A036907(n+1), A057265(n+1)]` -/
def P12169992654838211370.Spec : Prop :=
  ∀ n, (P12169992654838211370.a n : ℤ) = A033950 (n + 1)

end A033950

/-! ## A033950.P17913947677804788657

`∪[A057265(n+1), A280353(n+1)]`
-/

namespace A033950.P17913947677804788657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033950.P17913947677804788657

namespace A033950

/-- `∪[A057265(n+1), A280353(n+1)]` -/
def P17913947677804788657.Spec : Prop :=
  ∀ n, (P17913947677804788657.a n : ℤ) = A033950 (n + 1)

end A033950

/-! ## A033950.P14021868093892912876

`∪[A057265(n+1), A322797(n+1)]`
-/

namespace A033950.P14021868093892912876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033950.P14021868093892912876

namespace A033950

/-- `∪[A057265(n+1), A322797(n+1)]` -/
def P14021868093892912876.Spec : Prop :=
  ∀ n, (P14021868093892912876.a n : ℤ) = A033950 (n + 1)

end A033950

/-! ## A033950.P8621504292993264503

`∪[A057265(n+1), A376120(n+1)]`
-/

namespace A033950.P8621504292993264503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033950.P8621504292993264503

namespace A033950

/-- `∪[A057265(n+1), A376120(n+1)]` -/
def P8621504292993264503.Spec : Prop :=
  ∀ n, (P8621504292993264503.a n : ℤ) = A033950 (n + 1)

end A033950

/-! ## A033950.P9371750250849887585

`record[(n+1)/A002878((n+1)%A000005(n+1))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A033950

/-- `record[(n+1)/A002878((n+1)%A000005(n+1))]` -/
def P9371750250849887585.Spec : Prop :=
  ∀ n, P9371750250849887585.a n = (A033950 (n + 1) : ℚ)

end A033950

/-! ## A033950.P2463107165616211301

`record[(n+1)*A336040(n+1)]`
-/

namespace A033950.P2463107165616211301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A336040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033950.P2463107165616211301

namespace A033950

/-- `record[(n+1)*A336040(n+1)]` -/
def P2463107165616211301.Spec : Prop :=
  ∀ n, P2463107165616211301.a n = A033950 (n + 1)

end A033950

/-! ## A033950.P5841347426110556283

`filter[A245047(n+1), A336040(#)]`
-/

namespace A033950.P5841347426110556283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A033950.P5841347426110556283

namespace A033950

/-- `filter[A245047(n+1), A336040(#)]` -/
def P5841347426110556283.Spec : Prop :=
  ∀ n, P5841347426110556283.a n = A033950 (n + 1)

end A033950

/-! ## A033950.P12683771698505281541

`filter[A305801(n+1), A336040(#)]`
-/

namespace A033950.P12683771698505281541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A033950.P12683771698505281541

namespace A033950

/-- `filter[A305801(n+1), A336040(#)]` -/
def P12683771698505281541.Spec : Prop :=
  ∀ n, P12683771698505281541.a n = A033950 (n + 1)

end A033950

/-! ## A033950.P3866437042388930244

`filter[A305890(n+1), A336040(#)]`
-/

namespace A033950.P3866437042388930244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A033950.P3866437042388930244

namespace A033950

/-- `filter[A305890(n+1), A336040(#)]` -/
def P3866437042388930244.Spec : Prop :=
  ∀ n, P3866437042388930244.a n = A033950 (n + 1)

end A033950

/-! ## A033950.P5269368388448567860

`filter[A305900(n+1), A336040(#)]`
-/

namespace A033950.P5269368388448567860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A033950.P5269368388448567860

namespace A033950

/-- `filter[A305900(n+1), A336040(#)]` -/
def P5269368388448567860.Spec : Prop :=
  ∀ n, P5269368388448567860.a n = A033950 (n + 1)

end A033950

/-! ## A033950.P3546975214363148544

`filter[A305901(n+1), A336040(#)]`
-/

namespace A033950.P3546975214363148544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A033950.P3546975214363148544

namespace A033950

/-- `filter[A305901(n+1), A336040(#)]` -/
def P3546975214363148544.Spec : Prop :=
  ∀ n, P3546975214363148544.a n = A033950 (n + 1)

end A033950

/-! ## A033950.P11838141791931947289

`filter[A305903(n+1), A336040(#)]`
-/

namespace A033950.P11838141791931947289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A033950.P11838141791931947289

namespace A033950

/-- `filter[A305903(n+1), A336040(#)]` -/
def P11838141791931947289.Spec : Prop :=
  ∀ n, P11838141791931947289.a n = A033950 (n + 1)

end A033950

/-! ## A033950.P9006094118162052218

`filter[A305904(n+1), A336040(#)]`
-/

namespace A033950.P9006094118162052218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A033950.P9006094118162052218

namespace A033950

/-- `filter[A305904(n+1), A336040(#)]` -/
def P9006094118162052218.Spec : Prop :=
  ∀ n, P9006094118162052218.a n = A033950 (n + 1)

end A033950

/-! ## A033950.P14143318487414203351

`filter[A318500(n+1), A336040(#)]`
-/

namespace A033950.P14143318487414203351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A033950.P14143318487414203351

namespace A033950

/-- `filter[A318500(n+1), A336040(#)]` -/
def P14143318487414203351.Spec : Prop :=
  ∀ n, P14143318487414203351.a n = A033950 (n + 1)

end A033950

/-! ## A033950.P14718226060708666634

`filter[A319704(n+1), A336040(#)]`
-/

namespace A033950.P14718226060708666634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A033950.P14718226060708666634

namespace A033950

/-- `filter[A319704(n+1), A336040(#)]` -/
def P14718226060708666634.Spec : Prop :=
  ∀ n, P14718226060708666634.a n = A033950 (n + 1)

end A033950

/-! ## A033950.P11678195069971538729

`filter[A319707(n+1), A336040(#)]`
-/

namespace A033950.P11678195069971538729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A033950.P11678195069971538729

namespace A033950

/-- `filter[A319707(n+1), A336040(#)]` -/
def P11678195069971538729.Spec : Prop :=
  ∀ n, P11678195069971538729.a n = A033950 (n + 1)

end A033950

/-! ## A033950.P632419265369354672

`filter[A331304(n+1), A336040(#)]`
-/

namespace A033950.P632419265369354672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A033950.P632419265369354672

namespace A033950

/-- `filter[A331304(n+1), A336040(#)]` -/
def P632419265369354672.Spec : Prop :=
  ∀ n, P632419265369354672.a n = A033950 (n + 1)

end A033950

/-! ## A033950.P13587638074278340938

`filter[A379000(n+1), A336040(#)]`
-/

namespace A033950.P13587638074278340938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A033950.P13587638074278340938

namespace A033950

/-- `filter[A379000(n+1), A336040(#)]` -/
def P13587638074278340938.Spec : Prop :=
  ∀ n, P13587638074278340938.a n = A033950 (n + 1)

end A033950

/-!
# A033951: Write 1,2,... in a clockwise spiral; sequence gives numbers on positive x axis.

The programs for A033951, the canonical program `A033951.P3925852296356009015` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033951 has offset 0).

The definition of A033951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033951.P6678597161170195077

`ogf((1+5x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A033951.P6678597161170195077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 2] [1, -3, 3, -1] n

end

end A033951.P6678597161170195077

namespace A033951

/-- `ogf((1+5x+2x^2)/(1-3x+3x^2-x^3))` -/
def P6678597161170195077.Spec : Prop :=
  ∀ n, P6678597161170195077.a n = A033951 n

end A033951

/-! ## A033951.P3925852296356009015

`4*n²+3*n+1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A033951

/-- `4*n²+3*n+1` -/
def P3925852296356009015.Spec : Prop :=
  ∀ n, (P3925852296356009015.a n : ℤ) = A033951 n

theorem P3925852296356009015.correct : P3925852296356009015.Spec := by
  intro n
  simp only [A033951]

end A033951

/-! ## A033951.P9269696835916673726

`A014848(2*n+1)`
-/

namespace A033951.P9269696835916673726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 (2 * n + 1)

end

end A033951.P9269696835916673726

namespace A033951

/-- `A014848(2*n+1)` -/
def P9269696835916673726.Spec : Prop :=
  ∀ n, P9269696835916673726.a n = A033951 n

end A033951

/-! ## A033951.P6449878685461554342

`record[xor(1, n)²]-n`
-/

namespace A033951.P6449878685461554342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A033951.P6449878685461554342

namespace A033951

/-- `record[xor(1, n)²]-n` -/
def P6449878685461554342.Spec : Prop :=
  ∀ n, P6449878685461554342.a n = A033951 n

end A033951

/-! ## A033951.P18290438014490747730

`or(1, 2*n)²-n`
-/

namespace A033951.P18290438014490747730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) ^ 2 : ℤ) - (n : ℤ)

end

end A033951.P18290438014490747730

namespace A033951

/-- `or(1, 2*n)²-n` -/
def P18290438014490747730.Spec : Prop :=
  ∀ n, P18290438014490747730.a n = A033951 n

end A033951

/-! ## A033951.P13585689378929100880

`xor(1, 2*n)²-n`
-/

namespace A033951.P13585689378929100880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n) ^ 2 : ℤ) - (n : ℤ)

end

end A033951.P13585689378929100880

namespace A033951

/-- `xor(1, 2*n)²-n` -/
def P13585689378929100880.Spec : Prop :=
  ∀ n, P13585689378929100880.a n = A033951 n

end A033951

/-! ## A033951.P14643365424365305045

`∑[a(n-1)+8]` with `a(0)=1, a(1)=7`
-/

namespace A033951.P14643365424365305045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033951.P14643365424365305045

namespace A033951

/-- `∑[a(n-1)+8]` -/
def P14643365424365305045.Spec : Prop :=
  ∀ n, (P14643365424365305045.a n : ℤ) = A033951 n

end A033951

/-! ## A033951.P2363277008245999459

`∑[or(1, abs(1-8*n))]`
-/

namespace A033951.P2363277008245999459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 |1 - (8 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033951.P2363277008245999459

namespace A033951

/-- `∑[or(1, abs(1-8*n))]` -/
def P2363277008245999459.Spec : Prop :=
  ∀ n, P2363277008245999459.a n = A033951 n

end A033951

/-! ## A033951.P738177625843710036

`floor((4*n+3)/acot(n))`
-/

namespace A033951.P738177625843710036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * n + 3 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋

end

end A033951.P738177625843710036

namespace A033951

/-- `floor((4*n+3)/acot(n))` -/
def P738177625843710036.Spec : Prop :=
  ∀ n, P738177625843710036.a n = A033951 n

end A033951

/-! ## A033951.P12971828596811224981

`∑[ogf((1+5x+2x^2)/(1-2x+x^2))]`
-/

namespace A033951.P12971828596811224981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033951.P12971828596811224981

namespace A033951

/-- `∑[ogf((1+5x+2x^2)/(1-2x+x^2))]` -/
def P12971828596811224981.Spec : Prop :=
  ∀ n, P12971828596811224981.a n = A033951 n

end A033951

/-! ## A033951.P4213343794044188061

`∑[ceil(4/acot(2*n))-2]`
-/

namespace A033951.P4213343794044188061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 / SequenceMachineLib.acot (2 * n : ℝ)⌉ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033951.P4213343794044188061

namespace A033951

/-- `∑[ceil(4/acot(2*n))-2]` -/
def P4213343794044188061.Spec : Prop :=
  ∀ n, P4213343794044188061.a n = A033951 n

end A033951

/-! ## A033951.P9832818088684721287

`(C(4*n+2, 2)+1)/2`
-/

namespace A033951.P9832818088684721287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 2) 2 + 1 : ℚ) / 2

end

end A033951.P9832818088684721287

namespace A033951

/-- `(C(4*n+2, 2)+1)/2` -/
def P9832818088684721287.Spec : Prop :=
  ∀ n, P9832818088684721287.a n = (A033951 n : ℚ)

theorem P9832818088684721287.correct : P9832818088684721287.Spec := by
  intro n
  simp only [A033951, Nat.add_sub_cancel, A033951.P9832818088684721287.a, A033951.P3925852296356009015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A033951

/-! ## A033951.P6826475300972920079

`floor(8*n+a(n-1)-1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A033951.P6826475300972920079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n : ℤ) + (a (n - 1) - 1)

end

end A033951.P6826475300972920079

namespace A033951

/-- `floor(8*n+a(n-1)-1)` -/
def P6826475300972920079.Spec : Prop :=
  ∀ n, P6826475300972920079.a n = A033951 n

theorem P6826475300972920079.correct : P6826475300972920079.Spec := by
  intro n
  induction n with
  | zero => simp [A033951, A033951.P6826475300972920079.a, A033951.P3925852296356009015.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A033951, Nat.add_sub_cancel, A033951.P6826475300972920079.a, A033951.P3925852296356009015.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A033951

/-! ## A033951.P2420815082959245826

`floor(8*n-(1-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A033951.P2420815082959245826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n : ℤ) - (1 - a (n - 1))

end

end A033951.P2420815082959245826

namespace A033951

/-- `floor(8*n-(1-a(n-1)))` -/
def P2420815082959245826.Spec : Prop :=
  ∀ n, P2420815082959245826.a n = A033951 n

theorem P2420815082959245826.correct : P2420815082959245826.Spec := by
  intro n
  induction n with
  | zero => simp [A033951, A033951.P2420815082959245826.a, A033951.P3925852296356009015.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A033951, Nat.add_sub_cancel, A033951.P2420815082959245826.a, A033951.P3925852296356009015.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A033951

/-! ## A033951.P3549112236425386872

`abs(4*lcm(n, n+1)-(n-1))`
-/

namespace A033951.P3549112236425386872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 * Nat.lcm n (n + 1) : ℤ) - ((n : ℤ) - 1)|

end

end A033951.P3549112236425386872

namespace A033951

/-- `abs(4*lcm(n, n+1)-(n-1))` -/
def P3549112236425386872.Spec : Prop :=
  ∀ n, P3549112236425386872.a n = A033951 n

end A033951

/-! ## A033951.P3971715359580292412

`-(Δ[-C(2*n+1, 3)]+n)`
-/

namespace A033951.P3971715359580292412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (2 * n + 1) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n + (n : ℤ))

end

end A033951.P3971715359580292412

namespace A033951

/-- `-(Δ[-C(2*n+1, 3)]+n)` -/
def P3971715359580292412.Spec : Prop :=
  ∀ n, P3971715359580292412.a n = A033951 n

theorem P3971715359580292412.correct : P3971715359580292412.Spec := by
  intro n
  simp only [A033951, Nat.add_sub_cancel, A033951.P3971715359580292412.f1, A033951.P3971715359580292412.a, A033951.P3925852296356009015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A033951

/-! ## A033951.P14153415732500742470

`∑[A133655(n)]`
-/

namespace A033951.P14153415732500742470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033951.P14153415732500742470

namespace A033951

/-- `∑[A133655(n)]` -/
def P14153415732500742470.Spec : Prop :=
  ∀ n, P14153415732500742470.a n = A033951 n

end A033951

/-! ## A033951.P16507976441203217918

`(A014634(n)+1)/2`
-/

namespace A033951.P16507976441203217918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014634 n + 1 : ℚ) / 2

end

end A033951.P16507976441203217918

namespace A033951

/-- `(A014634(n)+1)/2` -/
def P16507976441203217918.Spec : Prop :=
  ∀ n, P16507976441203217918.a n = (A033951 n : ℚ)

theorem P16507976441203217918.correct : P16507976441203217918.Spec := by
  intro n
  simp only [A033951, Nat.add_sub_cancel, A033951.P16507976441203217918.a, A033951.P3925852296356009015.a, A014634, A014634.P13834563675282914036.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033951

/-! ## A033951.P8796262597712313393

`(A033587(n)+2)/2`
-/

namespace A033951.P8796262597712313393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033587 n + 2 : ℚ) / 2

end

end A033951.P8796262597712313393

namespace A033951

/-- `(A033587(n)+2)/2` -/
def P8796262597712313393.Spec : Prop :=
  ∀ n, P8796262597712313393.a n = (A033951 n : ℚ)

theorem P8796262597712313393.correct : P8796262597712313393.Spec := by
  intro n
  simp only [A033951, Nat.add_sub_cancel, A033951.P8796262597712313393.a, A033951.P3925852296356009015.a, A033587, A033587.P16272004082571904291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033951

/-! ## A033951.P4684302671307835949

`(A157870(n)+2)/4`
-/

namespace A033951.P4684302671307835949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157870 n + 2 : ℚ) / 4

end

end A033951.P4684302671307835949

namespace A033951

/-- `(A157870(n)+2)/4` -/
def P4684302671307835949.Spec : Prop :=
  ∀ n, P4684302671307835949.a n = (A033951 n : ℚ)

theorem P4684302671307835949.correct : P4684302671307835949.Spec := by
  intro n
  simp only [A033951, Nat.add_sub_cancel, A033951.P4684302671307835949.a, A033951.P3925852296356009015.a, A157870, A157870.P6469800247760931367.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033951

/-!
# A033952: Write 1,2,... in a clockwise spiral on a square lattice, writing each digit at a separate lattice point, starting with 1 at the origin and 2 at x=0, y=-1; sequence gives the numbers on the positive x-axis.

The programs for A033952, there is no canonical definition to state claims against.
-/

/-! ## A033952.P11369346729257594013

`A007376(Δ[n²]²-n)`
-/

namespace A033952.P11369346729257594013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A033952.P11369346729257594013

/-! ## A033952.P12899384301898698293

`dr(A007376((2*n+1)²-n))`
-/

namespace A033952.P12899384301898698293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ((2 * n + 1) ^ 2 - n))

end

end A033952.P12899384301898698293

/-! ## A033952.P17831303739066987680

`and(-1, A007376(xor(1, 2*n)²-n))`
-/

namespace A033952.P17831303739066987680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007376 (Nat.xor 1 (2 * n) ^ 2 - n))

end

end A033952.P17831303739066987680

/-! ## A033952.P2715010511127064727

`and(-1, A007376(abs((2*n+1)²-n)))`
-/

namespace A033952.P2715010511127064727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007376 |((2 * n + 1) ^ 2 : ℤ) - (n : ℤ)|.toNat)

end

end A033952.P2715010511127064727

/-! ## A033952.P9222272892582329840

`A070681(3*n+1)+A007376((2*n+1)²-n)`
-/

namespace A033952.P9222272892582329840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070681 (3 * n + 1) + A007376 ((2 * n + 1) ^ 2 - n)

end

end A033952.P9222272892582329840

/-! ## A033952.P14541150522034189847

`gcd(A000038(n), A007376(A033951(n)))`
-/

namespace A033952.P14541150522034189847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007376 (A033951 n).toNat)

end

end A033952.P14541150522034189847

/-! ## A033952.P1896521496365231850

`or(A000007(n), A007376(A033951(n)))`
-/

namespace A033952.P1896521496365231850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A007376 (A033951 n).toNat)

end

end A033952.P1896521496365231850

/-! ## A033952.P17299192423263704796

`A033999(n)²*A007376(A033951(n))`
-/

namespace A033952.P17299192423263704796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A007376 (A033951 n).toNat

end

end A033952.P17299192423263704796

/-! ## A033952.P17274960781828388103

`A007376(A033951(n))+A000007(n+1)`
-/

namespace A033952.P17274960781828388103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A033951 n).toNat + A000007 (n + 1)

end

end A033952.P17274960781828388103

/-! ## A033952.P13952421584553900095

`A007376(A033951(n))+A000038(n+1)`
-/

namespace A033952.P13952421584553900095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A033951 n).toNat + A000038 (n + 1)

end

end A033952.P13952421584553900095

/-! ## A033952.P6666764575934603339

`A007376(A033951(n))*A057427(n+1)`
-/

namespace A033952.P6666764575934603339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A033951 n).toNat * A057427 (n + 1)

end

end A033952.P6666764575934603339

/-! ## A033952.P7434169874421962171

`A007318(C(2, n))*A007376(A033951(n))`
-/

namespace A033952.P7434169874421962171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A033951 n).toNat

end

end A033952.P7434169874421962171

/-! ## A033952.P767102150875592139

`A007376(A033951(n))+char[A000108(n+9)]`
-/

namespace A033952.P767102150875592139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 9)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A033951 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A033952.P767102150875592139

/-! ## A033952.P8263396857557574327

`A007376(A033951(n))^A014963(4*n+2)`
-/

namespace A033952.P8263396857557574327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A033951 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A033952.P8263396857557574327

/-! ## A033952.P3930591343045297125

`A014963(4*n+10)*A007376(A033951(n))`
-/

namespace A033952.P3930591343045297125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 10) * A007376 (A033951 n).toNat

end

end A033952.P3930591343045297125

/-! ## A033952.P7235533833964343722

`A000041(C(2, n+2))*A007376(A033951(n))`
-/

namespace A033952.P7235533833964343722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A007376 (A033951 n).toNat

end

end A033952.P7235533833964343722

/-!
# A033953: Write 0,1,2,... in a clockwise spiral on a square lattice, writing each digit at a separate lattice point, starting with 0 at the origin and 1 at x=0, y=-1; sequence gives the numbers on the positive x-axis.

The programs for A033953, there is no canonical definition to state claims against.
-/

/-! ## A033953.P926079086775274138

`A007376(∑[8*n]-n)`
-/

namespace A033953.P926079086775274138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A033953.P926079086775274138

/-! ## A033953.P12563059073543335639

`dr(A007376(n*record[xor(3, n)]))`
-/

namespace A033953.P12563059073543335639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A033953.P12563059073543335639

/-! ## A033953.P14487968452660911198

`dr(A007376(n*(4*n+3)))`
-/

namespace A033953.P14487968452660911198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (n * (4 * n + 3)))

end

end A033953.P14487968452660911198

/-! ## A033953.P10995634563153771272

`A007376(Δ[n²]²-n-1)%10`
-/

namespace A033953.P10995634563153771272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - (n : ℤ) - 1).toNat) 10

end

end A033953.P10995634563153771272

/-! ## A033953.P7633131932953471511

`and(-1, A007376(n*record[lcm(2, n)+5]))`
-/

namespace A033953.P7633131932953471511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007376 (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A033953.P7633131932953471511

/-! ## A033953.P7330388438264830830

`and(15, A007376(A033954(n)))`
-/

namespace A033953.P7330388438264830830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A007376 (A033954 n).toNat)

end

end A033953.P7330388438264830830

/-! ## A033953.P14954313085056309829

`A007376(A033954(n))*A057427(n)`
-/

namespace A033953.P14954313085056309829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A033954 n).toNat * A057427 n

end

end A033953.P14954313085056309829

/-! ## A033953.P7819250529940967576

`A007376(A033954(n))+A000038(n+1)`
-/

namespace A033953.P7819250529940967576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A033954 n).toNat + A000038 (n + 1)

end

end A033953.P7819250529940967576

/-! ## A033953.P4888093285585835764

`A000034(2*n)*A007376(A033954(n))`
-/

namespace A033953.P4888093285585835764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A007376 (A033954 n).toNat

end

end A033953.P4888093285585835764

/-! ## A033953.P18150721100181082369

`A007318(C(2, n))*A007376(A033954(n))`
-/

namespace A033953.P18150721100181082369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A033954 n).toNat

end

end A033953.P18150721100181082369

/-! ## A033953.P12450595453652083654

`A014963(4*n+2)*A007376(A033954(n))`
-/

namespace A033953.P12450595453652083654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A007376 (A033954 n).toNat

end

end A033953.P12450595453652083654

/-! ## A033953.P3923583541367510675

`A007376(A033954(n))/A000108(C(2, n+1))`
-/

namespace A033953.P3923583541367510675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A033954 n).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 1)) : ℚ)

end

end A033953.P3923583541367510675

/-!
# A033954: Second 10-gonal (or decagonal) numbers: n*(4*n+3).

The programs for A033954, the canonical program `A033954.P6740312584908585872` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033954 has offset 0).

The definition of A033954 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*n+3)` (program `A033954.P6740312584908585872`, by `A033954.P6740312584908585872.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033954.P6740312584908585872

`n*(4*n+3)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A033954

/-- `n*(4*n+3)` -/
def P6740312584908585872.Spec : Prop :=
  ∀ n, (P6740312584908585872.a n : ℤ) = A033954 n

theorem P6740312584908585872.correct : P6740312584908585872.Spec := by
  intro n
  simp only [A033954]

end A033954

/-! ## A033954.P12679626445992043593

`ogf((7x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A033954.P12679626445992043593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 1] [1, -3, 3, -1] n

end

end A033954.P12679626445992043593

namespace A033954

/-- `ogf((7x+x^2)/(1-3x+3x^2-x^3))` -/
def P12679626445992043593.Spec : Prop :=
  ∀ n, P12679626445992043593.a n = A033954 n

end A033954

/-! ## A033954.P1959434678738410282

`A002943(n)+n`
-/

namespace A033954.P1959434678738410282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 n + (n : ℤ)

end

end A033954.P1959434678738410282

namespace A033954

/-- `A002943(n)+n` -/
def P1959434678738410282.Spec : Prop :=
  ∀ n, P1959434678738410282.a n = A033954 n

theorem P1959434678738410282.correct : P1959434678738410282.Spec := by
  intro n
  simp only [A033954, Nat.add_sub_cancel, A033954.P1959434678738410282.a, A033954.P6740312584908585872.a, A002943, A002943.P6554007946647441496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033954

/-! ## A033954.P12708425111942221217

`A033996(n)-n`
-/

namespace A033954.P12708425111942221217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n - (n : ℤ)

end

end A033954.P12708425111942221217

namespace A033954

/-- `A033996(n)-n` -/
def P12708425111942221217.Spec : Prop :=
  ∀ n, P12708425111942221217.a n = A033954 n

theorem P12708425111942221217.correct : P12708425111942221217.Spec := by
  intro n
  simp only [A033954, Nat.add_sub_cancel, A033954.P12708425111942221217.a, A033954.P6740312584908585872.a, A033996, A033996.P3972738276246908348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033954

/-! ## A033954.P3597232288490234591

`A007742(n)+2*n`
-/

namespace A033954.P3597232288490234591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n + (2 * n : ℤ)

end

end A033954.P3597232288490234591

namespace A033954

/-- `A007742(n)+2*n` -/
def P3597232288490234591.Spec : Prop :=
  ∀ n, P3597232288490234591.a n = A033954 n

theorem P3597232288490234591.correct : P3597232288490234591.Spec := by
  intro n
  simp only [A033954, Nat.add_sub_cancel, A033954.P3597232288490234591.a, A033954.P6740312584908585872.a, A007742, A007742.P14173437786459717136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033954

/-! ## A033954.P1506009481311561912

`A016742(n)+3*n`
-/

namespace A033954.P1506009481311561912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + (3 * n : ℤ)

end

end A033954.P1506009481311561912

namespace A033954

/-- `A016742(n)+3*n` -/
def P1506009481311561912.Spec : Prop :=
  ∀ n, P1506009481311561912.a n = A033954 n

theorem P1506009481311561912.correct : P1506009481311561912.Spec := by
  intro n
  simp only [A033954, Nat.add_sub_cancel, A033954.P1506009481311561912.a, A033954.P6740312584908585872.a, A016742, A016742.P17821809754172938154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033954

/-! ## A033954.P1666295915297687922

`A033991(n)+4*n`
-/

namespace A033954.P1666295915297687922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 n + (4 * n : ℤ)

end

end A033954.P1666295915297687922

namespace A033954

/-- `A033991(n)+4*n` -/
def P1666295915297687922.Spec : Prop :=
  ∀ n, P1666295915297687922.a n = A033954 n

theorem P1666295915297687922.correct : P1666295915297687922.Spec := by
  intro n
  simp only [A033954, Nat.add_sub_cancel, A033954.P1666295915297687922.a, A033954.P6740312584908585872.a, A033991, A033991.P11968073306702908903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033954

/-! ## A033954.P9824216209133745083

`A002939(n)+5*n`
-/

namespace A033954.P9824216209133745083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n + (5 * n : ℤ)

end

end A033954.P9824216209133745083

namespace A033954

/-- `A002939(n)+5*n` -/
def P9824216209133745083.Spec : Prop :=
  ∀ n, P9824216209133745083.a n = A033954 n

theorem P9824216209133745083.correct : P9824216209133745083.Spec := by
  intro n
  simp only [A033954, Nat.add_sub_cancel, A033954.P9824216209133745083.a, A033954.P6740312584908585872.a, A002939, A002939.P11095602872349887610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033954

/-! ## A033954.P10018461702712914071

`A001107(n)+6*n`
-/

namespace A033954.P10018461702712914071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n + (6 * n : ℤ)

end

end A033954.P10018461702712914071

namespace A033954

/-- `A001107(n)+6*n` -/
def P10018461702712914071.Spec : Prop :=
  ∀ n, P10018461702712914071.a n = A033954 n

theorem P10018461702712914071.correct : P10018461702712914071.Spec := by
  intro n
  simp only [A033954, Nat.add_sub_cancel, A033954.P10018461702712914071.a, A033954.P6740312584908585872.a, A001107, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033954

/-! ## A033954.P5514602646812214958

`A060544(n+1)-A000217(n+1)`
-/

namespace A033954.P5514602646812214958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1) - A000217 (n + 1)

end

end A033954.P5514602646812214958

namespace A033954

/-- `A060544(n+1)-A000217(n+1)` -/
def P5514602646812214958.Spec : Prop :=
  ∀ n, P5514602646812214958.a n = A033954 n

end A033954

/-! ## A033954.P1242499845768399211

`A074377(2*n)`
-/

namespace A033954.P1242499845768399211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 (2 * n)

end

end A033954.P1242499845768399211

namespace A033954

/-- `A074377(2*n)` -/
def P1242499845768399211.Spec : Prop :=
  ∀ n, P1242499845768399211.a n = A033954 n

end A033954

/-! ## A033954.P8492610127522103932

`A118729(8*n+6)`
-/

namespace A033954.P8492610127522103932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (8 * n + 6)

end

end A033954.P8492610127522103932

namespace A033954

/-- `A118729(8*n+6)` -/
def P8492610127522103932.Spec : Prop :=
  ∀ n, P8492610127522103932.a n = A033954 n

end A033954

/-! ## A033954.P7129103870860845516

`n*record[xor(3, n)]`
-/

namespace A033954.P7129103870860845516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033954.P7129103870860845516

namespace A033954

/-- `n*record[xor(3, n)]` -/
def P7129103870860845516.Spec : Prop :=
  ∀ n, (P7129103870860845516.a n : ℤ) = A033954 n

end A033954

/-! ## A033954.P17112153134797357837

`∑[a(n-1)+8]` with `a(0)=0, a(1)=7`
-/

namespace A033954.P17112153134797357837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033954.P17112153134797357837

namespace A033954

/-- `∑[a(n-1)+8]` -/
def P17112153134797357837.Spec : Prop :=
  ∀ n, (P17112153134797357837.a n : ℤ) = A033954 n

end A033954

/-! ## A033954.P2469676797695331422

`∑[ogf((7x+x^2)/(1-2x+x^2))]`
-/

namespace A033954.P2469676797695331422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033954.P2469676797695331422

namespace A033954

/-- `∑[ogf((7x+x^2)/(1-2x+x^2))]` -/
def P2469676797695331422.Spec : Prop :=
  ∀ n, P2469676797695331422.a n = A033954 n

end A033954

/-! ## A033954.P13232010470290198973

`8*n-(1-a(n-1))` with `a(0)=0`
-/

namespace A033954.P13232010470290198973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (8 * n : ℤ) - (1 - a (n - 1))

end

end A033954.P13232010470290198973

namespace A033954

/-- `8*n-(1-a(n-1))` -/
def P13232010470290198973.Spec : Prop :=
  ∀ n, P13232010470290198973.a n = A033954 n

theorem P13232010470290198973.correct : P13232010470290198973.Spec := by
  intro n
  induction n with
  | zero => simp [A033954, A033954.P13232010470290198973.a, A033954.P6740312584908585872.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A033954, Nat.add_sub_cancel, A033954.P13232010470290198973.a, A033954.P6740312584908585872.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A033954

/-! ## A033954.P5180129239730934587

`n²-∑[a(n-1)-6]` with `a(0)=0`
-/

namespace A033954.P5180129239730934587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033954.P5180129239730934587

namespace A033954

/-- `n²-∑[a(n-1)-6]` -/
def P5180129239730934587.Spec : Prop :=
  ∀ n, P5180129239730934587.a n = A033954 n

end A033954

/-! ## A033954.P15647399547746654221

`floor(C(Δ[n*2*n], 2)/2)`
-/

namespace A033954.P15647399547746654221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2 : ℚ) / 2⌋

end

end A033954.P15647399547746654221

namespace A033954

/-- `floor(C(Δ[n*2*n], 2)/2)` -/
def P15647399547746654221.Spec : Prop :=
  ∀ n, P15647399547746654221.a n = A033954 n

end A033954

/-! ## A033954.P8877414259725169569

`A033587(n)/2`
-/

namespace A033954.P8877414259725169569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033587 n : ℚ) / 2

end

end A033954.P8877414259725169569

namespace A033954

/-- `A033587(n)/2` -/
def P8877414259725169569.Spec : Prop :=
  ∀ n, P8877414259725169569.a n = (A033954 n : ℚ)

theorem P8877414259725169569.correct : P8877414259725169569.Spec := by
  intro n
  simp only [A033954, Nat.add_sub_cancel, A033954.P8877414259725169569.a, A033954.P6740312584908585872.a, A033587, A033587.P16272004082571904291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033954

/-! ## A033954.P3073191595247233642

`∑[A022144(n)-1]`
-/

namespace A033954.P3073191595247233642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033954.P3073191595247233642

namespace A033954

/-- `∑[A022144(n)-1]` -/
def P3073191595247233642.Spec : Prop :=
  ∀ n, P3073191595247233642.a n = A033954 n

end A033954

/-!
# A033955: Sum of the remainders when the n-th prime is divided by primes up to the (n-1)-th prime.

The programs for A033955, there is no canonical definition to state claims against.
-/

/-! ## A033955.P659089699530788908

`A033956(n+1)-A000040(n+1)`
-/

namespace A033955.P659089699530788908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033956 (n + 1) - A000040 (n + 1)

end

end A033955.P659089699530788908

/-! ## A033955.P4890499604911448079

`A173683(p?[comp[n²]])`
-/

namespace A033955.P4890499604911448079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A033955.P4890499604911448079

/-! ## A033955.P554340125606285401

`A024934(Δ[A007504(n)])`
-/

namespace A033955.P554340125606285401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024934 (f1 (n + 1) - f1 n).toNat

end

end A033955.P554340125606285401

/-! ## A033955.P3591702972824371031

`A024934(p?[A014681(n)])`
-/

namespace A033955.P3591702972824371031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024934 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A033955.P3591702972824371031

/-! ## A033955.P11623490166877783611

`A024934(A000040(n+1))`
-/

namespace A033955.P11623490166877783611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024934 (A000040 (n + 1)).toNat

end

end A033955.P11623490166877783611

/-! ## A033955.P10140961971802843712

`A024934(A006005(n+1))`
-/

namespace A033955.P10140961971802843712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024934 (A006005 (n + 1)).toNat

end

end A033955.P10140961971802843712

/-! ## A033955.P9867601903855295028

`A024934(A008578(n+2))`
-/

namespace A033955.P9867601903855295028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024934 (A008578 (n + 2)).toNat

end

end A033955.P9867601903855295028

/-! ## A033955.P15680053946690306882

`A024934(A075643(n+2))`
-/

namespace A033955.P15680053946690306882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024934 (A075643 (n + 2)).toNat

end

end A033955.P15680053946690306882

/-! ## A033955.P5865360896396965035

`A024934(A182986(n+2))`
-/

namespace A033955.P5865360896396965035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024934 (A182986 (n + 2)).toNat

end

end A033955.P5865360896396965035

/-! ## A033955.P12212290785831458142

`A024934(record[A006530(n+2)])`
-/

namespace A033955.P12212290785831458142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024934 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033955.P12212290785831458142

/-! ## A033955.P12896631263632315454

`A024934(record[A014963(n+2)])`
-/

namespace A033955.P12896631263632315454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024934 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033955.P12896631263632315454

/-! ## A033955.P3305656243802136963

`A024934(record[A020639(n+2)])`
-/

namespace A033955.P3305656243802136963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024934 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033955.P3305656243802136963

/-! ## A033955.P1505833804264808885

`A173683(record[A006530(n+2)])`
-/

namespace A033955.P1505833804264808885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033955.P1505833804264808885

/-! ## A033955.P12721305749650459365

`A173683(record[A014963(n+2)])`
-/

namespace A033955.P12721305749650459365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033955.P12721305749650459365

/-! ## A033955.P10414737020814063751

`A173683(record[A020639(n+2)])`
-/

namespace A033955.P10414737020814063751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033955.P10414737020814063751

/-!
# A033956: a(n) = prime(n) + A033955(n).

The programs for A033956, there is no canonical definition to state claims against.
-/

/-! ## A033956.P16387914694112472896

`A000040(n+1)+A033955(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033956.P16387914694112472896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A033955 (n + 1)

end

end A033956.P16387914694112472896

/-! ## A033956.P2436640735850259446

`A033955(n+1)+Δ[A007504(n)]`
-/

namespace A033956.P2436640735850259446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033955 (n + 1) + (f1 (n + 1) - f1 n)

end

end A033956.P2436640735850259446

/-! ## A033956.P12829112054183399088

`A033955(n+1)+sqrt(A001248(n+1))`
-/

namespace A033956.P12829112054183399088
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A033955 (n + 1) : ℝ) + Real.sqrt (A001248 (n + 1) : ℝ)

end

end A033956.P12829112054183399088

/-! ## A033956.P1341682904370048901

`A033955(n+1)+∑[A054541(n+1)]`
-/

namespace A033956.P1341682904370048901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033955 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033956.P1341682904370048901

/-! ## A033956.P107487694214933387

`A006093(n+1)+A033955(n+1)+1`
-/

namespace A033956.P107487694214933387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A033955 (n + 1) + 1)

end

end A033956.P107487694214933387

/-! ## A033956.P821995966911104126

`A008864(n+1)+A033955(n+1)-1`
-/

namespace A033956.P821995966911104126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A033955 (n + 1) - 1)

end

end A033956.P821995966911104126

/-! ## A033956.P9531973663104313117

`A014692(n+1)+A033955(n+1)+n`
-/

namespace A033956.P9531973663104313117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (A033955 (n + 1) + (n : ℤ))

end

end A033956.P9531973663104313117

/-! ## A033956.P13804754503901960969

`A007504(n+1)+A033955(n+1)-A007504(n)`
-/

namespace A033956.P13804754503901960969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A033955 (n + 1) - A007504 n)

end

end A033956.P13804754503901960969

/-! ## A033956.P5909921911933123644

`A033955(n+1)+p?[A000961(n+1)]`
-/

namespace A033956.P5909921911933123644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033955 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033956.P5909921911933123644

/-! ## A033956.P1785161656958133376

`A033955(n+1)+record[A000705(n+1)]`
-/

namespace A033956.P1785161656958133376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033955 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033956.P1785161656958133376

/-! ## A033956.P13282831896508912759

`A033955(n+1)+record[A006530(n+2)]`
-/

namespace A033956.P13282831896508912759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033955 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033956.P13282831896508912759

/-! ## A033956.P3851787889327600508

`A033955(n+1)+record[A020639(n+2)]`
-/

namespace A033956.P3851787889327600508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033955 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033956.P3851787889327600508

/-! ## A033956.P9787834752685113300

`record[A000010(n+1)]+A033955(n+1)+1`
-/

namespace A033956.P9787834752685113300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A033955 (n + 1) + 1)

end

end A033956.P9787834752685113300

/-! ## A033956.P13477173459795976915

`A033955(n+1)+A006530(A001749(n+1)/2)`
-/

namespace A033956.P13477173459795976915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033955 (n + 1) + A006530 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

end

end A033956.P13477173459795976915

/-! ## A033956.P11576110445524537966

`A033955(n+1)+A006530(A001749(n+1))`
-/

namespace A033956.P11576110445524537966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033955 (n + 1) + A006530 (A001749 (n + 1)).toNat

end

end A033956.P11576110445524537966

/-! ## A033956.P8713596949052020788

`A024934(A000040(n+1))+p?[A014681(n)]`
-/

namespace A033956.P8713596949052020788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024934 (A000040 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033956.P8713596949052020788

/-! ## A033956.P16709999847663817671

`A024934(A008578(n+2))+A008578(n+2)`
-/

namespace A033956.P16709999847663817671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024934 (A008578 (n + 2)).toNat + A008578 (n + 2)

end

end A033956.P16709999847663817671

/-! ## A033956.P4833957374518482223

`A182986(n+2)+A024934(A182986(n+2))`
-/

namespace A033956.P4833957374518482223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) + A024934 (A182986 (n + 2)).toNat

end

end A033956.P4833957374518482223

/-! ## A033956.P914075453431682832

`A033955(n+1)+p?[A001057(n)]`
-/

namespace A033956.P914075453431682832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033955 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033956.P914075453431682832

/-!
# A033958: In the '3x+1' problem, these starting values set new records for number of tripling steps to reach a power of 2.

The programs for A033958, there is no canonical definition to state claims against.
-/

/-! ## A033958.P15573082190343679248

`A092893(A033959(1+n))`
-/

namespace A033958.P15573082190343679248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092893 (A033959 (1 + n)).toNat

end

end A033958.P15573082190343679248

/-! ## A033958.P13306342201114918363

`A092893(record[A075680(n+1)])`
-/

namespace A033958.P13306342201114918363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092893 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033958.P13306342201114918363

/-! ## A033958.P8469113017719766244

`A092893(record[A006667(n+1)])`
-/

namespace A033958.P8469113017719766244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092893 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033958.P8469113017719766244

/-! ## A033958.P9085324626134742458

`A092893(record[A078719(n+1)-1])`
-/

namespace A033958.P9085324626134742458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092893 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033958.P9085324626134742458

/-! ## A033958.P14734163587659692919

`A092893(record[A286380(2*n+1)])`
-/

namespace A033958.P14734163587659692919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092893 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033958.P14734163587659692919

/-!
# A033959: Record number of steps to reach 1 in '3x+1' problem, corresponding to starting values in A033958.

The programs for A033959, there is no canonical definition to state claims against.
-/

/-! ## A033959.P1810059257424141297

`record[A075680(n+1)]`
-/

namespace A033959.P1810059257424141297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033959.P1810059257424141297

/-! ## A033959.P10398563181459262983

`record[A006667(n+1)]`
-/

namespace A033959.P10398563181459262983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033959.P10398563181459262983

/-! ## A033959.P7903197322819753128

`record[A078719(n+1)-1]`
-/

namespace A033959.P7903197322819753128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033959.P7903197322819753128

/-! ## A033959.P2583964901315519124

`record[A286380(2*n+1)]`
-/

namespace A033959.P2583964901315519124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033959.P2583964901315519124

/-! ## A033959.P2559803943600266520

`record[A220182(2*n+1)/2]`
-/

namespace A033959.P2559803943600266520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220182 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033959.P2559803943600266520

/-!
# A033960: Convolution of natural numbers n >= 1 with Fibonacci numbers F(k), k >= 4.

The programs for A033960, the canonical program `A033960.P13857782735858984413` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033960 has offset 0).

The definition of A033960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033960.P14276761599101192897

`ogf((3+2x)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A033960.P14276761599101192897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -3, 2, 1, -1] n

end

end A033960.P14276761599101192897

namespace A033960

/-- `ogf((3+2x)/(1-3x+2x^2+x^3-x^4))` -/
def P14276761599101192897.Spec : Prop :=
  ∀ n, P14276761599101192897.a n = A033960 n

end A033960

/-! ## A033960.P13857782735858984413

`A000045(n+8)-(18+5*n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033960

/-- `A000045(n+8)-(18+5*n)` -/
def P13857782735858984413.Spec : Prop :=
  ∀ n, P13857782735858984413.a n = A033960 n

theorem P13857782735858984413.correct : P13857782735858984413.Spec := by
  intro n
  simp only [A033960]

end A033960

/-! ## A033960.P14775276928288400502

`∑[ogf((3+2x)/(1-2x+x^3))]`
-/

namespace A033960.P14775276928288400502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P14775276928288400502

namespace A033960

/-- `∑[ogf((3+2x)/(1-2x+x^3))]` -/
def P14775276928288400502.Spec : Prop :=
  ∀ n, P14775276928288400502.a n = A033960 n

end A033960

/-! ## A033960.P891299235964155900

`∑[∑[round(ϕ*a(n-1))]]` with `a(0)=3`
-/

namespace A033960.P891299235964155900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f2 (n - 1) : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P891299235964155900

namespace A033960

/-- `∑[∑[round(ϕ*a(n-1))]]` -/
def P891299235964155900.Spec : Prop :=
  ∀ n, P891299235964155900.a n = A033960 n

end A033960

/-! ## A033960.P18261289920908230645

`∑[floor(ϕ*(a(n-1)+2))]` with `a(0)=3`
-/

namespace A033960.P18261289920908230645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) + 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P18261289920908230645

namespace A033960

/-- `∑[floor(ϕ*(a(n-1)+2))]` -/
def P18261289920908230645.Spec : Prop :=
  ∀ n, P18261289920908230645.a n = A033960 n

end A033960

/-! ## A033960.P2298783396320685439

`∑[ceil(ϕ*a(n-1))+3]` with `a(0)=3`
-/

namespace A033960.P2298783396320685439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉ + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P2298783396320685439

namespace A033960

/-- `∑[ceil(ϕ*a(n-1))+3]` -/
def P2298783396320685439.Spec : Prop :=
  ∀ n, P2298783396320685439.a n = A033960 n

end A033960

/-! ## A033960.P12639559723270511951

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=3, a(1)=5`
-/

namespace A033960.P12639559723270511951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P12639559723270511951

namespace A033960

/-- `∑[∑[a(n-1)+a(n-2)]]` -/
def P12639559723270511951.Spec : Prop :=
  ∀ n, (P12639559723270511951.a n : ℤ) = A033960 n

end A033960

/-! ## A033960.P1028511797647914633

`∑[∑[A020701(n)]]`
-/

namespace A033960.P1028511797647914633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P1028511797647914633

namespace A033960

/-- `∑[∑[A020701(n)]]` -/
def P1028511797647914633.Spec : Prop :=
  ∀ n, P1028511797647914633.a n = A033960 n

end A033960

/-! ## A033960.P2728052418592664665

`∑[A180671(n)+3]`
-/

namespace A033960.P2728052418592664665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180671 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P2728052418592664665

namespace A033960

/-- `∑[A180671(n)+3]` -/
def P2728052418592664665.Spec : Prop :=
  ∀ n, P2728052418592664665.a n = A033960 n

end A033960

/-! ## A033960.P3108866425408690910

`∑[A167616(n+6)]`
-/

namespace A033960.P3108866425408690910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167616 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P3108866425408690910

namespace A033960

/-- `∑[A167616(n+6)]` -/
def P3108866425408690910.Spec : Prop :=
  ∀ n, P3108866425408690910.a n = A033960 n

end A033960

/-! ## A033960.P17726862752717805252

`∑[∑[A020695(n+1)]]`
-/

namespace A033960.P17726862752717805252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P17726862752717805252

namespace A033960

/-- `∑[∑[A020695(n+1)]]` -/
def P17726862752717805252.Spec : Prop :=
  ∀ n, P17726862752717805252.a n = A033960 n

end A033960

/-! ## A033960.P11902712968917593428

`∑[∑[A020706(n)-1]]`
-/

namespace A033960.P11902712968917593428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P11902712968917593428

namespace A033960

/-- `∑[∑[A020706(n)-1]]` -/
def P11902712968917593428.Spec : Prop :=
  ∀ n, P11902712968917593428.a n = A033960 n

end A033960

/-! ## A033960.P7199001110053875650

`∑[∑[A071679(n+2)]]`
-/

namespace A033960.P7199001110053875650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P7199001110053875650

namespace A033960

/-- `∑[∑[A071679(n+2)]]` -/
def P7199001110053875650.Spec : Prop :=
  ∀ n, P7199001110053875650.a n = A033960 n

end A033960

/-! ## A033960.P8271823517130169093

`∑[∑[A373566(n+2)]]`
-/

namespace A033960.P8271823517130169093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373566 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P8271823517130169093

namespace A033960

/-- `∑[∑[A373566(n+2)]]` -/
def P8271823517130169093.Spec : Prop :=
  ∀ n, P8271823517130169093.a n = A033960 n

end A033960

/-! ## A033960.P9595995146882585017

`∑[∑[A048584(n)-2]]`
-/

namespace A033960.P9595995146882585017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P9595995146882585017

namespace A033960

/-- `∑[∑[A048584(n)-2]]` -/
def P9595995146882585017.Spec : Prop :=
  ∀ n, P9595995146882585017.a n = A033960 n

end A033960

/-! ## A033960.P14642258893558192546

`∑[∑[A000045(n+4)]]`
-/

namespace A033960.P14642258893558192546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P14642258893558192546

namespace A033960

/-- `∑[∑[A000045(n+4)]]` -/
def P14642258893558192546.Spec : Prop :=
  ∀ n, P14642258893558192546.a n = A033960 n

end A033960

/-! ## A033960.P11455329692513688039

`∑[A020732(n+1)-4]`
-/

namespace A033960.P11455329692513688039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P11455329692513688039

namespace A033960

/-- `∑[A020732(n+1)-4]` -/
def P11455329692513688039.Spec : Prop :=
  ∀ n, P11455329692513688039.a n = A033960 n

end A033960

/-! ## A033960.P5052448162682019379

`∑[A001911(n+3)-3]`
-/

namespace A033960.P5052448162682019379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 3) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P5052448162682019379

namespace A033960

/-- `∑[A001911(n+3)-3]` -/
def P5052448162682019379.Spec : Prop :=
  ∀ n, P5052448162682019379.a n = A033960 n

end A033960

/-! ## A033960.P13791490118732265623

`∑[A020712(n+1)-5]`
-/

namespace A033960.P13791490118732265623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P13791490118732265623

namespace A033960

/-- `∑[A020712(n+1)-5]` -/
def P13791490118732265623.Spec : Prop :=
  ∀ n, P13791490118732265623.a n = A033960 n

end A033960

/-! ## A033960.P17951828407376396355

`∑[A157728(n+6)-1]`
-/

namespace A033960.P17951828407376396355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157728 (n + 6) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P17951828407376396355

namespace A033960

/-- `∑[A157728(n+6)-1]` -/
def P17951828407376396355.Spec : Prop :=
  ∀ n, P17951828407376396355.a n = A033960 n

end A033960

/-!
# A033961: Number of different sets ("cut sets") of triangles a regular (n+2)-gon can be dissected into; two triangulations of an (n+2)-gon are equal if all numbers of congruent triangles coincide.

The programs for A033961, there is no canonical definition to state claims against.
-/

/-! ## A033961.P7096095817691915393

`A204166(A079514(n+1))`
-/

namespace A033961.P7096095817691915393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A079514 (n + 1)).toNat

end

end A033961.P7096095817691915393

/-! ## A033961.P14560042092888736327

`A089657(A124346(n+2))`
-/

namespace A033961.P14560042092888736327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089657 (A124346 (n + 2)).toNat

end

end A033961.P14560042092888736327

/-! ## A033961.P15530789430445900529

`A077773(A113863(n)-A002265(n))`
-/

namespace A033961.P15530789430445900529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 (A113863 n - A002265 n).toNat

end

end A033961.P15530789430445900529

/-! ## A033961.P6687888303667900840

`A077773(A113863(n)-A125688(2*(n+1)))`
-/

namespace A033961.P6687888303667900840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 (A113863 n - A125688 (2 * (n + 1))).toNat

end

end A033961.P6687888303667900840

/-! ## A033961.P11977776961655092368

`A048197(A192682(n))`
-/

namespace A033961.P11977776961655092368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048197 (A192682 n).toNat

end

end A033961.P11977776961655092368

/-!
# A033962: Trajectory of 1 under map n->9n+1 if n odd, n->n/2 if n even.

The programs for A033962, there is no canonical definition to state claims against.
-/

/-! ## A033962.P13222527639268380978

`A037102(n+10)`
-/

namespace A033962.P13222527639268380978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037102 (n + 10)

end

end A033962.P13222527639268380978

/-! ## A033962.P16762914290650199105

`A006370(A347365(a(n-1)))` with `a(0)=1`
-/

namespace A033962.P16762914290650199105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006370 (A347365 (a (n - 1)).toNat).toNat

end

end A033962.P16762914290650199105

/-! ## A033962.P4579359689146423024

`A006370(A186813(2*a(n-1)))` with `a(0)=1`
-/

namespace A033962.P4579359689146423024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006370 (A186813 (2 * a (n - 1)).toNat).toNat

end

end A033962.P4579359689146423024

/-!
# A033965: Trajectory of 1 under map n->17n+1 if n odd, n->n/2 if n even.

The programs for A033965, there is no canonical definition to state claims against.
-/

/-! ## A033965.P12192958804485539585

`A299405(a(n-2)+a(n-2))` with `a(0)=1, a(1)=18`
-/

namespace A033965.P12192958804485539585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18] fun n a =>
  A299405 (a (n - 2) + a (n - 2)).toNat

end

end A033965.P12192958804485539585

/-! ## A033965.P12429462033193175623

`A008619(17*a(n-(A102669(n)+1)))` with `a(0)=1, a(1)=18`
-/

namespace A033965.P12429462033193175623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18] fun n a =>
  A008619 (17 * a ((n : ℤ) - (A102669 n + 1)).toNat).toNat

end

end A033965.P12429462033193175623

/-! ## A033965.P16236593086452183901

`A008619(17*a(n-1-A102669(n)))` with `a(0)=1, a(1)=18`
-/

namespace A033965.P16236593086452183901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18] fun n a =>
  A008619 (17 * a ((n : ℤ) - 1 - A102669 n).toNat).toNat

end

end A033965.P16236593086452183901

/-!
# A033967: Trajectory of 1 under map n->21n+1 if n odd, n->n/2 if n even.

The programs for A033967, there is no canonical definition to state claims against.
-/

/-! ## A033967.P4117788478682405455

`A037108(n+7)`
-/

namespace A033967.P4117788478682405455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037108 (n + 7)

end

end A033967.P4117788478682405455

/-! ## A033967.P12187462295407723443

`lcm(A033999(n), A037108(A020719(n)))`
-/

namespace A033967.P12187462295407723443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A037108 (A020719 n).toNat)

end

end A033967.P12187462295407723443

/-! ## A033967.P15167479671066881915

`A033999(2*n)*A037108(A020719(n))`
-/

namespace A033967.P15167479671066881915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A037108 (A020719 n).toNat

end

end A033967.P15167479671066881915

/-! ## A033967.P12943740527731977255

`A037108(A020719(n))/A025446(n)!^n`
-/

namespace A033967.P12943740527731977255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037108 (A020719 n).toNat : ℚ) / (Nat.factorial (A025446 n).toNat ^ n : ℚ)

end

end A033967.P12943740527731977255

/-! ## A033967.P2195306954211619547

`A037108(A020719(n))-A008683(A017617(n))`
-/

namespace A033967.P2195306954211619547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037108 (A020719 n).toNat - A008683 (A017617 n).toNat

end

end A033967.P2195306954211619547

/-! ## A033967.P2953022919089711411

`A037108(A020719(n))-A000038(n)*A257297(n)`
-/

namespace A033967.P2953022919089711411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037108 (A020719 n).toNat - A000038 n * A257297 n

end

end A033967.P2953022919089711411

/-!
# A033969: Trajectory of 1 under map n->25n+1 if n odd, n->n/2 if n even.

The programs for A033969, there is no canonical definition to state claims against.
-/

/-! ## A033969.P5623983136482848709

`A008619(26*a(n-2)-a(n-2))` with `a(0)=1, a(1)=26`
-/

namespace A033969.P5623983136482848709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 26] fun n a =>
  A008619 (26 * a (n - 2) - a (n - 2)).toNat

end

end A033969.P5623983136482848709

/-!
# A033970: Trajectory of 1 under map n->27n+1 if n odd, n->n/2 if n even.

The programs for A033970, there is no canonical definition to state claims against.
-/

/-! ## A033970.P3210266733788047159

`xor(A298155(A097631(n+1)), A317105(n))`
-/

namespace A033970.P3210266733788047159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A298155 (A097631 (n + 1)).toNat) (A317105 n)

end

end A033970.P3210266733788047159

/-!
# A033971: Trajectory of 1 under map n->29n+1 if n odd, n->n/2 if n even.

The programs for A033971, there is no canonical definition to state claims against.
-/

/-! ## A033971.P16688179366938959748

`A008619(29*a(n-2))` with `a(0)=1, a(1)=30`
-/

namespace A033971.P16688179366938959748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 30] fun n a =>
  A008619 (29 * a (n - 2)).toNat

end

end A033971.P16688179366938959748

/-!
# A033972: Trajectory of 1 under map n->33n+1 if n odd, n->n/2 if n even.

The programs for A033972, there is no canonical definition to state claims against.
-/

/-! ## A033972.P5569017231487329983

`A028903(A033976(n))`
-/

namespace A033972.P5569017231487329983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A033976 n).toNat

end

end A033972.P5569017231487329983

/-!
# A033974: Trajectory of 1 under map n->37n+1 if n odd, n->n/2 if n even.

The programs for A033974, there is no canonical definition to state claims against.
-/

/-! ## A033974.P4653387961746293743

`A028904(A033976(n))`
-/

namespace A033974.P4653387961746293743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A033976 n).toNat

end

end A033974.P4653387961746293743

/-!
# A033977: Trajectory of 1 under map n->43n+1 if n odd, n->n/2 if n even.

The programs for A033977, there is no canonical definition to state claims against.
-/

/-! ## A033977.P14869771749493681457

`A007094(A033973(n*A351724(n)))`
-/

namespace A033977.P14869771749493681457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A033973 ((n : ℤ) * A351724 n).toNat).toNat

end

end A033977.P14869771749493681457

/-!
# A033978: Trajectory of 1 under map n->45n+1 if n odd, n->n/2 if n even.

The programs for A033978, there is no canonical definition to state claims against.
-/

/-! ## A033978.P3688091514656649497

`A008619(46*a(n-2)-a(n-2))` with `a(0)=1, a(1)=46`
-/

namespace A033978.P3688091514656649497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 46] fun n a =>
  A008619 (46 * a (n - 2) - a (n - 2)).toNat

end

end A033978.P3688091514656649497

/-!
# A033985: Number of partitions of n into two or more distinct nonzero squares.

The programs for A033985, there is no canonical definition to state claims against.
-/

/-! ## A033985.P9137126641743445054

`A033461(n+1)-char[n²-1]`
-/

namespace A033985.P9137126641743445054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A033985.P9137126641743445054

/-! ## A033985.P18172667619791273920

`Δ[A248801(n)-A000196(n)]`
-/

namespace A033985.P18172667619791273920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248801 n - A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033985.P18172667619791273920

/-! ## A033985.P6925102919719701540

`Δ[A248801(n)-A003059(n+1)]`
-/

namespace A033985.P6925102919719701540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248801 n - A003059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033985.P6925102919719701540

/-! ## A033985.P2778566484194483702

`A248801(n+1)-(A248801(n)+A010052(n+1))`
-/

namespace A033985.P2778566484194483702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248801 (n + 1) - (A248801 n + A010052 (n + 1))

end

end A033985.P2778566484194483702

/-! ## A033985.P2614192058826606174

`A034968(A348326(n+1))`
-/

namespace A033985.P2614192058826606174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A348326 (n + 1)).toNat

end

end A033985.P2614192058826606174

/-!
# A033987: Numbers that are divisible by at least 4 primes (counted with multiplicity).

The programs for A033987, the canonical program `A033987.P14627502685973143685` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033987 has offset 1).

The definition of A033987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033987.P17314953991504491495

`lt[1, A117358(n+1)]+1`
-/

namespace A033987.P17314953991504491495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A033987.P17314953991504491495

namespace A033987

/-- `lt[1, A117358(n+1)]+1` -/
def P17314953991504491495.Spec : Prop :=
  ∀ n, (P17314953991504491495.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P17412929494270571161

`lt[3, A001222(n+1)]+1`
-/

namespace A033987.P17412929494270571161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A033987.P17412929494270571161

namespace A033987

/-- `lt[3, A001222(n+1)]+1` -/
def P17412929494270571161.Spec : Prop :=
  ∀ n, (P17412929494270571161.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P14627502685973143685

`lt[3, A318473(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A033987

/-- `lt[3, A318473(n+1)]+1` -/
def P14627502685973143685.Spec : Prop :=
  ∀ n, (P14627502685973143685.a n : ℤ) = A033987 (n + 1)

theorem P14627502685973143685.correct : P14627502685973143685.Spec := by
  intro n
  simp only [A033987, Nat.add_sub_cancel]

end A033987

/-! ## A033987.P8237271031070497465

`comp[(n+1)*A340369(n+1)]`
-/

namespace A033987.P8237271031070497465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A340369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A033987.P8237271031070497465

namespace A033987

/-- `comp[(n+1)*A340369(n+1)]` -/
def P8237271031070497465.Spec : Prop :=
  ∀ n, (P8237271031070497465.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P9467201554875329735

`eq[3, 3%A001222(n+2)]+2`
-/

namespace A033987.P9467201554875329735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A001222 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A033987.P9467201554875329735

namespace A033987

/-- `eq[3, 3%A001222(n+2)]+2` -/
def P9467201554875329735.Spec : Prop :=
  ∀ n, (P9467201554875329735.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P17633197058806958232

`eq[2, a(A001222(n))+1]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A033987.P17633197058806958232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0] fun n f2 =>
  f2 (A001222 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033987.P17633197058806958232

namespace A033987

/-- `eq[2, a(A001222(n))+1]` -/
def P17633197058806958232.Spec : Prop :=
  ∀ n, (P17633197058806958232.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P18282470779357635279

`∪[A014613(n+1), A046304(n+1)]`
-/

namespace A033987.P18282470779357635279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033987.P18282470779357635279

namespace A033987

/-- `∪[A014613(n+1), A046304(n+1)]` -/
def P18282470779357635279.Spec : Prop :=
  ∀ n, (P18282470779357635279.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P16037147820914052007

`∪[A046304(n+1), A067028(n+1)]`
-/

namespace A033987.P16037147820914052007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033987.P16037147820914052007

namespace A033987

/-- `∪[A046304(n+1), A067028(n+1)]` -/
def P16037147820914052007.Spec : Prop :=
  ∀ n, (P16037147820914052007.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P9832650972133599290

`∪[A046304(n+1), A110893(n+1)]`
-/

namespace A033987.P9832650972133599290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033987.P9832650972133599290

namespace A033987

/-- `∪[A046304(n+1), A110893(n+1)]` -/
def P9832650972133599290.Spec : Prop :=
  ∀ n, (P9832650972133599290.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P11712861482559836228

`∪[A014613(n+1), A289554(n+1)]`
-/

namespace A033987.P11712861482559836228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033987.P11712861482559836228

namespace A033987

/-- `∪[A014613(n+1), A289554(n+1)]` -/
def P11712861482559836228.Spec : Prop :=
  ∀ n, (P11712861482559836228.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P3524067274992896837

`∪[A030514(n+1), A289554(n+1)]`
-/

namespace A033987.P3524067274992896837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033987.P3524067274992896837

namespace A033987

/-- `∪[A030514(n+1), A289554(n+1)]` -/
def P3524067274992896837.Spec : Prop :=
  ∀ n, (P3524067274992896837.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P11682513453358550900

`∪[A046101(n+1), A289554(n+1)]`
-/

namespace A033987.P11682513453358550900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033987.P11682513453358550900

namespace A033987

/-- `∪[A046101(n+1), A289554(n+1)]` -/
def P11682513453358550900.Spec : Prop :=
  ∀ n, (P11682513453358550900.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P15577974198976072238

`∪[A046370(n+1), A289554(n+1)]`
-/

namespace A033987.P15577974198976072238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033987.P15577974198976072238

namespace A033987

/-- `∪[A046370(n+1), A289554(n+1)]` -/
def P15577974198976072238.Spec : Prop :=
  ∀ n, (P15577974198976072238.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P17801243433102322730

`∪[A046453(n+1), A289554(n+1)]`
-/

namespace A033987.P17801243433102322730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033987.P17801243433102322730

namespace A033987

/-- `∪[A046453(n+1), A289554(n+1)]` -/
def P17801243433102322730.Spec : Prop :=
  ∀ n, (P17801243433102322730.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P10074234365780174345

`∪[A048111(n+1), A289554(n+1)]`
-/

namespace A033987.P10074234365780174345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033987.P10074234365780174345

namespace A033987

/-- `∪[A048111(n+1), A289554(n+1)]` -/
def P10074234365780174345.Spec : Prop :=
  ∀ n, (P10074234365780174345.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P3123024844995595666

`∪[A046304(n+1), A323350(n+1)]`
-/

namespace A033987.P3123024844995595666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033987.P3123024844995595666

namespace A033987

/-- `∪[A046304(n+1), A323350(n+1)]` -/
def P3123024844995595666.Spec : Prop :=
  ∀ n, (P3123024844995595666.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P15994044033468013312

`∪[A113849(n+1), A289554(n+1)]`
-/

namespace A033987.P15994044033468013312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033987.P15994044033468013312

namespace A033987

/-- `∪[A113849(n+1), A289554(n+1)]` -/
def P15994044033468013312.Spec : Prop :=
  ∀ n, (P15994044033468013312.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P9552114452315170985

`lt[A000005(n+1)², A330773(n)]+1`
-/

namespace A033987.P9552114452315170985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A033987.P9552114452315170985

namespace A033987

/-- `lt[A000005(n+1)², A330773(n)]+1` -/
def P9552114452315170985.Spec : Prop :=
  ∀ n, (P9552114452315170985.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P14275000679419742500

`lt[1, A050374(n+1)]+1`
-/

namespace A033987.P14275000679419742500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050374 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A033987.P14275000679419742500

namespace A033987

/-- `lt[1, A050374(n+1)]+1` -/
def P14275000679419742500.Spec : Prop :=
  ∀ n, (P14275000679419742500.a n : ℤ) = A033987 (n + 1)

end A033987

/-! ## A033987.P11066840075462387827

`eq[7, 7%A309891(n+2)]+2`
-/

namespace A033987.P11066840075462387827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A309891 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A033987.P11066840075462387827

namespace A033987

/-- `eq[7, 7%A309891(n+2)]+2` -/
def P11066840075462387827.Spec : Prop :=
  ∀ n, (P11066840075462387827.a n : ℤ) = A033987 (n + 1)

end A033987

/-!
# A033988: Write 0,1,2,... in a clockwise spiral on a square lattice, writing each digit at a separate lattice point, starting with 0 at the origin and 1 at x=0, y=-1; sequence gives the numbers on the positive y-axis.

The programs for A033988, there is no canonical definition to state claims against.
-/

/-! ## A033988.P7697468768986400718

`A007376((2*n)²+n)`
-/

namespace A033988.P7697468768986400718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((2 * n) ^ 2 + n)

end

end A033988.P7697468768986400718

/-! ## A033988.P14928569806611166516

`dr(A007376(n*(4*n+1)))`
-/

namespace A033988.P14928569806611166516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (n * (4 * n + 1)))

end

end A033988.P14928569806611166516

/-! ## A033988.P12168838276882934044

`A007376(A007742(n))%10`
-/

namespace A033988.P12168838276882934044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (A007742 n).toNat) 10

end

end A033988.P12168838276882934044

/-! ## A033988.P8894973029067255701

`lcm(A007376(A007742(n)), A033999(n))`
-/

namespace A033988.P8894973029067255701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007376 (A007742 n).toNat) (A033999 n)

end

end A033988.P8894973029067255701

/-! ## A033988.P9910333492343121358

`A007376(A007742(n))+A000007(n+1)`
-/

namespace A033988.P9910333492343121358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A007742 n).toNat + A000007 (n + 1)

end

end A033988.P9910333492343121358

/-! ## A033988.P16991570257668821038

`A007318(C(2, n))*A007376(A007742(n))`
-/

namespace A033988.P16991570257668821038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A007742 n).toNat

end

end A033988.P16991570257668821038

/-! ## A033988.P16076635140558824596

`A007376(A007742(n))/A007318(C(2, n)+1)`
-/

namespace A033988.P16076635140558824596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A007742 n).toNat : ℚ) / (A007318 (Nat.choose 2 n + 1) : ℚ)

end

end A033988.P16076635140558824596

/-! ## A033988.P4188135004112096520

`A000010(((-1)^n)²)*A007376(A007742(n))`
-/

namespace A033988.P4188135004112096520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((-1) ^ n) ^ 2).toNat * A007376 (A007742 n).toNat

end

end A033988.P4188135004112096520

/-! ## A033988.P10819534894440651959

`A007376(A007742(n))/A008683(A005117(n+1))²`
-/

namespace A033988.P10819534894440651959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A007742 n).toNat : ℚ) / (A008683 (A005117 (n + 1)).toNat ^ 2 : ℚ)

end

end A033988.P10819534894440651959

/-!
# A033989: Write 0,1,2,... in a clockwise spiral on a square lattice, writing each digit at a separate lattice point, starting with 0 at the origin and 1 at x=0, y=-1; sequence gives the numbers on the negative x-axis.

The programs for A033989, there is no canonical definition to state claims against.
-/

/-! ## A033989.P17387934377534082701

`A007376((2*n)²-n)`
-/

namespace A033989.P17387934377534082701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((2 * n) ^ 2 - n)

end

end A033989.P17387934377534082701

/-! ## A033989.P8244128530073425551

`dr(A007376(C(4*n, 2)/2))`
-/

namespace A033989.P8244128530073425551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway ((Nat.choose (4 * n) 2 : ℚ) / 2)).toNat)

end

end A033989.P8244128530073425551

/-! ## A033989.P3098205113407001625

`dr(A007376(n*or(3, 4*(n-1))))`
-/

namespace A033989.P3098205113407001625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ((n : ℤ) * Int.lor 3 (4 * ((n : ℤ) - 1))).toNat)

end

end A033989.P3098205113407001625

/-! ## A033989.P10140563704161013575

`A007376((Δ[n²]-1)²-n)%10`
-/

namespace A033989.P10140563704161013575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1) ^ 2 - (n : ℤ)).toNat) 10

end

end A033989.P10140563704161013575

/-! ## A033989.P3863901389506385293

`dr(A007376(n*(Δ[C(2*n, 2)]-2)))`
-/

namespace A033989.P3863901389506385293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2)).toNat)

end

end A033989.P3863901389506385293

/-! ## A033989.P12845689586520821926

`dr(A007376((2*n-tan(acot(2)))*2*n))`
-/

namespace A033989.P12845689586520821926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.tan (SequenceMachineLib.acot (2 : ℝ))) * (2 * n : ℝ))).toNat)

end

end A033989.P12845689586520821926

/-! ## A033989.P11407716023816501299

`dr(A007376(round(2*n/acot(2*n)-n)))`
-/

namespace A033989.P11407716023816501299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway ((2 * n : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) - (n : ℝ))).toNat)

end

end A033989.P11407716023816501299

/-! ## A033989.P10364094016381258718

`dr(A007376(A033991(n)))`
-/

namespace A033989.P10364094016381258718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A033991 n).toNat)

end

end A033989.P10364094016381258718

/-! ## A033989.P10101717301086726088

`dr(A007376(A054556(n+1)-1))`
-/

namespace A033989.P10101717301086726088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A054556 (n + 1) - 1).toNat)

end

end A033989.P10101717301086726088

/-! ## A033989.P4150970784145216741

`dr(A007376(n*A053438(2*n)))`
-/

namespace A033989.P4150970784145216741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ((n : ℤ) * A053438 (2 * n)).toNat)

end

end A033989.P4150970784145216741

/-! ## A033989.P13890953633253908421

`A007376(A033991(n))+A000007(n+1)`
-/

namespace A033989.P13890953633253908421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A033991 n).toNat + A000007 (n + 1)

end

end A033989.P13890953633253908421

/-! ## A033989.P5548253089175580324

`lcm(A007376(A033991(n)), A010892(3*n))`
-/

namespace A033989.P5548253089175580324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007376 (A033991 n).toNat) (A010892 (3 * n))

end

end A033989.P5548253089175580324

/-! ## A033989.P546207363829197744

`A007318(C(2, n))*A007376(A033991(n))`
-/

namespace A033989.P546207363829197744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A033991 n).toNat

end

end A033989.P546207363829197744

/-! ## A033989.P17361661697540829694

`gcd(2, A000040(n+1))*A007376(A033991(n))`
-/

namespace A033989.P17361661697540829694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℤ) * A007376 (A033991 n).toNat

end

end A033989.P17361661697540829694

/-! ## A033989.P12812887946995322774

`A000041(C(2, n+2))*A007376(A033991(n))`
-/

namespace A033989.P12812887946995322774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A007376 (A033991 n).toNat

end

end A033989.P12812887946995322774

/-!
# A033990: Write 0,1,2,... in a clockwise spiral on a square lattice, writing each digit at a separate lattice point, starting with 0 at the origin and 1 at x=0, y=-1; sequence gives the numbers on the negative y-axis.

The programs for A033990, there is no canonical definition to state claims against.
-/

/-! ## A033990.P11414347015190884583

`A007376(n*(4*n-3))`
-/

namespace A033990.P11414347015190884583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((n : ℤ) * ((4 * n : ℤ) - 3)).toNat

end

end A033990.P11414347015190884583

/-! ## A033990.P17749736117250729763

`dr(A007376(7-∑[a(n-1)-8]))` with `a(0)=7`
-/

namespace A033990.P17749736117250729763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (7 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A033990.P17749736117250729763

/-! ## A033990.P8504382506627795808

`dr(A007376(record[lcm(n, n+2)-n]-n))`
-/

namespace A033990.P8504382506627795808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 2) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat)

end

end A033990.P8504382506627795808

/-! ## A033990.P15032403414280339785

`dr(A007376(or(1, n-2+n)²+n-1))`
-/

namespace A033990.P15032403414280339785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Int.lor 1 ((n : ℤ) - 2 + (n : ℤ)) ^ 2 + ((n : ℤ) - 1)).toNat)

end

end A033990.P15032403414280339785

/-! ## A033990.P13498960723179124824

`dr(A007376(A001107(n)))`
-/

namespace A033990.P13498960723179124824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A001107 n).toNat)

end

end A033990.P13498960723179124824

/-! ## A033990.P17697480726120568388

`dr(A007376(A054552(n)-1))`
-/

namespace A033990.P17697480726120568388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A054552 n - 1).toNat)

end

end A033990.P17697480726120568388

/-! ## A033990.P18172325633465159305

`A007376(A001107(n))*A057427(n)`
-/

namespace A033990.P18172325633465159305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A001107 n).toNat * A057427 n

end

end A033990.P18172325633465159305

/-! ## A033990.P3469604366089141600

`lcm(A007376(A001107(n)), A033999(n))`
-/

namespace A033990.P3469604366089141600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007376 (A001107 n).toNat) (A033999 n)

end

end A033990.P3469604366089141600

/-! ## A033990.P6616345454707107063

`A020985(n)²*A007376(A001107(n))`
-/

namespace A033990.P6616345454707107063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A007376 (A001107 n).toNat

end

end A033990.P6616345454707107063

/-! ## A033990.P10096398648976746102

`A130151(n)²*A007376(A001107(n))`
-/

namespace A033990.P10096398648976746102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 n ^ 2 * A007376 (A001107 n).toNat

end

end A033990.P10096398648976746102

/-! ## A033990.P14085178685364731584

`A007376(A001107(n))+char[A016797(n)]`
-/

namespace A033990.P14085178685364731584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016797 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A001107 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A033990.P14085178685364731584

/-! ## A033990.P7827227133703878961

`A007318(C(2, n))*A007376(A001107(n))`
-/

namespace A033990.P7827227133703878961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A001107 n).toNat

end

end A033990.P7827227133703878961

/-! ## A033990.P8526868723219867751

`A007376(A001107(n))/A007318(C(3, n))`
-/

namespace A033990.P8526868723219867751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A001107 n).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A033990.P8526868723219867751

/-! ## A033990.P13499863914528946369

`A007376(A001107(n))+A008683(8*n+4)`
-/

namespace A033990.P13499863914528946369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A001107 n).toNat + A008683 (8 * n + 4)

end

end A033990.P13499863914528946369

/-! ## A033990.P16788633616662172976

`A000045(A020639(2*(n+1)))*A007376(A001107(n))`
-/

namespace A033990.P16788633616662172976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A007376 (A001107 n).toNat

end

end A033990.P16788633616662172976

/-!
# A033991: a(n) = n*(4*n-1).

The programs for A033991, the canonical program `A033991.P11968073306702908903` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033991 has offset 0).

The definition of A033991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*n-1)` (program `A033991.P11968073306702908903`, by `A033991.P11968073306702908903.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033991.P5575866184435354666

`4*n²-n`
-/

namespace A033991.P5575866184435354666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n ^ 2 : ℤ) - (n : ℤ)

end

end A033991.P5575866184435354666

namespace A033991

/-- `4*n²-n` -/
def P5575866184435354666.Spec : Prop :=
  ∀ n, P5575866184435354666.a n = A033991 n

theorem P5575866184435354666.correct : P5575866184435354666.Spec := by
  intro n
  simp only [A033991, Nat.add_sub_cancel, A033991.P5575866184435354666.a, A033991.P11968073306702908903.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A033991

/-! ## A033991.P2774716200699867542

`C(4*n, 2)/2`
-/

namespace A033991.P2774716200699867542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) 2 : ℚ) / 2

end

end A033991.P2774716200699867542

namespace A033991

/-- `C(4*n, 2)/2` -/
def P2774716200699867542.Spec : Prop :=
  ∀ n, P2774716200699867542.a n = (A033991 n : ℚ)

theorem P2774716200699867542.correct : P2774716200699867542.Spec := by
  intro n
  simp only [A033991, Nat.add_sub_cancel, A033991.P2774716200699867542.a, A033991.P11968073306702908903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A033991

/-! ## A033991.P11968073306702908903

`n*(4*n-1)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A033991

/-- `n*(4*n-1)` -/
def P11968073306702908903.Spec : Prop :=
  ∀ n, P11968073306702908903.a n = A033991 n

theorem P11968073306702908903.correct : P11968073306702908903.Spec := by
  intro n
  simp only [A033991]

end A033991

/-! ## A033991.P12309795648186081660

`ogf((3x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A033991.P12309795648186081660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 5] [1, -3, 3, -1] n

end

end A033991.P12309795648186081660

namespace A033991

/-- `ogf((3x+5x^2)/(1-3x+3x^2-x^3))` -/
def P12309795648186081660.Spec : Prop :=
  ∀ n, P12309795648186081660.a n = A033991 n

end A033991

/-! ## A033991.P18296409364708305081

`A014635(n)/2`
-/

namespace A033991.P18296409364708305081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014635 n : ℚ) / 2

end

end A033991.P18296409364708305081

namespace A033991

/-- `A014635(n)/2` -/
def P18296409364708305081.Spec : Prop :=
  ∀ n, P18296409364708305081.a n = (A033991 n : ℚ)

theorem P18296409364708305081.correct : P18296409364708305081.Spec := by
  intro n
  simp only [A033991, Nat.add_sub_cancel, A033991.P18296409364708305081.a, A033991.P11968073306702908903.a, A014635, A014635.P12617269699985302371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033991

/-! ## A033991.P4037697669384286773

`A014848(2*n)`
-/

namespace A033991.P4037697669384286773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 (2 * n)

end

end A033991.P4037697669384286773

namespace A033991

/-- `A014848(2*n)` -/
def P4037697669384286773.Spec : Prop :=
  ∀ n, P4037697669384286773.a n = A033991 n

end A033991

/-! ## A033991.P17672717027968762173

`A118729(8*n+2)`
-/

namespace A033991.P17672717027968762173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (8 * n + 2)

end

end A033991.P17672717027968762173

namespace A033991

/-- `A118729(8*n+2)` -/
def P17672717027968762173.Spec : Prop :=
  ∀ n, P17672717027968762173.a n = A033991 n

end A033991

/-! ## A033991.P8129312486841052342

`∑[a(n-1)+8]` with `a(0)=0, a(1)=3`
-/

namespace A033991.P8129312486841052342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033991.P8129312486841052342

namespace A033991

/-- `∑[a(n-1)+8]` -/
def P8129312486841052342.Spec : Prop :=
  ∀ n, (P8129312486841052342.a n : ℤ) = A033991 n

end A033991

/-! ## A033991.P3317906424281462567

`∑[ogf((3x+5x^2)/(1-2x+x^2))]`
-/

namespace A033991.P3317906424281462567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033991.P3317906424281462567

namespace A033991

/-- `∑[ogf((3x+5x^2)/(1-2x+x^2))]` -/
def P3317906424281462567.Spec : Prop :=
  ∀ n, P3317906424281462567.a n = A033991 n

end A033991

/-! ## A033991.P6216358925336582036

`-(Δ[-C(2*n, 3)]+n)`
-/

namespace A033991.P6216358925336582036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (2 * n) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n + (n : ℤ))

end

end A033991.P6216358925336582036

namespace A033991

/-- `-(Δ[-C(2*n, 3)]+n)` -/
def P6216358925336582036.Spec : Prop :=
  ∀ n, P6216358925336582036.a n = A033991 n

theorem P6216358925336582036.correct : P6216358925336582036.Spec := by
  intro n
  simp only [A033991, Nat.add_sub_cancel, A033991.P6216358925336582036.f1, A033991.P6216358925336582036.a, A033991.P11968073306702908903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A033991

/-! ## A033991.P3109557761928049512

`abs(xor(-1, (2*n)²)+n+1)`
-/

namespace A033991.P3109557761928049512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) ((2 * n) ^ 2 : ℤ) + (n + 1 : ℤ)|

end

end A033991.P3109557761928049512

namespace A033991

/-- `abs(xor(-1, (2*n)²)+n+1)` -/
def P3109557761928049512.Spec : Prop :=
  ∀ n, P3109557761928049512.a n = A033991 n

end A033991

/-! ## A033991.P3327555084392586293

`-(xor(-2, (2*n)²)+n+2)`
-/

namespace A033991.P3327555084392586293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (-2) ((2 * n) ^ 2 : ℤ) + (n + 2 : ℤ))

end

end A033991.P3327555084392586293

namespace A033991

/-- `-(xor(-2, (2*n)²)+n+2)` -/
def P3327555084392586293.Spec : Prop :=
  ∀ n, P3327555084392586293.a n = A033991 n

end A033991

/-! ## A033991.P14359327650989617425

`A062783(n)/3`
-/

namespace A033991.P14359327650989617425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062783 n : ℚ) / 3

end

end A033991.P14359327650989617425

namespace A033991

/-- `A062783(n)/3` -/
def P14359327650989617425.Spec : Prop :=
  ∀ n, P14359327650989617425.a n = (A033991 n : ℚ)

theorem P14359327650989617425.correct : P14359327650989617425.Spec := by
  intro n
  simp only [A033991, Nat.add_sub_cancel, A033991.P14359327650989617425.a, A033991.P11968073306702908903.a, A062783, A062783.P15889295991207525073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033991

/-! ## A033991.P8961798769939663179

`A104188(n)/4`
-/

namespace A033991.P8961798769939663179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104188 n : ℚ) / 4

end

end A033991.P8961798769939663179

namespace A033991

/-- `A104188(n)/4` -/
def P8961798769939663179.Spec : Prop :=
  ∀ n, P8961798769939663179.a n = (A033991 n : ℚ)

theorem P8961798769939663179.correct : P8961798769939663179.Spec := by
  intro n
  simp only [A033991, Nat.add_sub_cancel, A033991.P8961798769939663179.a, A033991.P11968073306702908903.a, A104188, A104188.P226395597657789732.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033991

/-! ## A033991.P549157737299643646

`(A185438(n)-1)/2`
-/

namespace A033991.P549157737299643646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185438 n - 1 : ℚ) / 2

end

end A033991.P549157737299643646

namespace A033991

/-- `(A185438(n)-1)/2` -/
def P549157737299643646.Spec : Prop :=
  ∀ n, P549157737299643646.a n = (A033991 n : ℚ)

theorem P549157737299643646.correct : P549157737299643646.Spec := by
  intro n
  simp only [A033991, Nat.add_sub_cancel, A033991.P549157737299643646.a, A033991.P11968073306702908903.a, A185438, A185438.P17362725107201576435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033991

/-! ## A033991.P7435381325568344926

`(A139273(n)+n)/2`
-/

namespace A033991.P7435381325568344926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139273 n + (n : ℤ) : ℚ) / 2

end

end A033991.P7435381325568344926

namespace A033991

/-- `(A139273(n)+n)/2` -/
def P7435381325568344926.Spec : Prop :=
  ∀ n, P7435381325568344926.a n = (A033991 n : ℚ)

theorem P7435381325568344926.correct : P7435381325568344926.Spec := by
  intro n
  simp only [A033991, Nat.add_sub_cancel, A033991.P7435381325568344926.a, A033991.P11968073306702908903.a, A139273, A139273.P14013562454579091989.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033991

/-! ## A033991.P2095132672233722813

`A010004(n)%A006137(n)`
-/

namespace A033991.P2095132672233722813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010004 n) (A006137 n)

end

end A033991.P2095132672233722813

namespace A033991

/-- `A010004(n)%A006137(n)` -/
def P2095132672233722813.Spec : Prop :=
  ∀ n, P2095132672233722813.a n = A033991 n

end A033991

/-! ## A033991.P14981858995874495578

`A015223(n)%A033951(n)`
-/

namespace A033991.P14981858995874495578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015223 n) (A033951 n)

end

end A033991.P14981858995874495578

namespace A033991

/-- `A015223(n)%A033951(n)` -/
def P14981858995874495578.Spec : Prop :=
  ∀ n, P14981858995874495578.a n = A033991 n

end A033991

/-! ## A033991.P15355780309530846447

`A084367(n)%A005899(n)`
-/

namespace A033991.P15355780309530846447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084367 n) (A005899 n)

end

end A033991.P15355780309530846447

namespace A033991

/-- `A084367(n)%A005899(n)` -/
def P15355780309530846447.Spec : Prop :=
  ∀ n, P15355780309530846447.a n = A033991 n

end A033991

/-! ## A033991.P17461922179177241470

`A016743(n)%A080856(n)`
-/

namespace A033991.P17461922179177241470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016743 n) (A080856 n)

end

end A033991.P17461922179177241470

namespace A033991

/-- `A016743(n)%A080856(n)` -/
def P17461922179177241470.Spec : Prop :=
  ∀ n, P17461922179177241470.a n = A033991 n

end A033991

/-!
# A033992: Numbers that are divisible by exactly three different primes.

The programs for A033992, the canonical program `A033992.P9984028461934439090` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033992 has offset 1).

The definition of A033992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033992.P9136729128969843477

`eq[3, A001221(n+1)]+1`
-/

namespace A033992.P9136729128969843477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033992.P9136729128969843477

namespace A033992

/-- `eq[3, A001221(n+1)]+1` -/
def P9136729128969843477.Spec : Prop :=
  ∀ n, (P9136729128969843477.a n : ℤ) = A033992 (n + 1)

end A033992

/-! ## A033992.P4755994009421243149

`eq[n, xor(n, a(A001221(n)))]` with `a(0)=2`
-/

namespace A033992.P4755994009421243149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  Nat.xor n (f2 (A001221 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033992.P4755994009421243149

namespace A033992

/-- `eq[n, xor(n, a(A001221(n)))]` -/
def P4755994009421243149.Spec : Prop :=
  ∀ n, (P4755994009421243149.a n : ℤ) = A033992 (n + 1)

end A033992

/-! ## A033992.P9984028461934439090

`A214195(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A033992

/-- `A214195(n+2)` -/
def P9984028461934439090.Spec : Prop :=
  ∀ n, P9984028461934439090.a n = A033992 (n + 1)

theorem P9984028461934439090.correct : P9984028461934439090.Spec := by
  intro n
  simp only [A033992, Nat.add_sub_cancel]

end A033992

/-! ## A033992.P4249293881117503868

`∩[A000977(n+1), A168638(n+1)]`
-/

namespace A033992.P4249293881117503868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033992.P4249293881117503868

namespace A033992

/-- `∩[A000977(n+1), A168638(n+1)]` -/
def P4249293881117503868.Spec : Prop :=
  ∀ n, (P4249293881117503868.a n : ℤ) = A033992 (n + 1)

end A033992

/-! ## A033992.P1765075771279909787

`∩[A030230(n+1), A168638(n+1)]`
-/

namespace A033992.P1765075771279909787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033992.P1765075771279909787

namespace A033992

/-- `∩[A030230(n+1), A168638(n+1)]` -/
def P1765075771279909787.Spec : Prop :=
  ∀ n, (P1765075771279909787.a n : ℤ) = A033992 (n + 1)

end A033992

/-! ## A033992.P14414461239581488932

`eq[2, A297155(n+1)]+1`
-/

namespace A033992.P14414461239581488932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033992.P14414461239581488932

namespace A033992

/-- `eq[2, A297155(n+1)]+1` -/
def P14414461239581488932.Spec : Prop :=
  ∀ n, (P14414461239581488932.a n : ℤ) = A033992 (n + 1)

end A033992

/-! ## A033992.P15419381082494479070

`eq[8, A034444(n+1)]+1`
-/

namespace A033992.P15419381082494479070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033992.P15419381082494479070

namespace A033992

/-- `eq[8, A034444(n+1)]+1` -/
def P15419381082494479070.Spec : Prop :=
  ∀ n, (P15419381082494479070.a n : ℤ) = A033992 (n + 1)

end A033992

/-! ## A033992.P5068067327066706565

`eq[A062513(n+2), n+2]+2`
-/

namespace A033992.P5068067327066706565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 2

end

end A033992.P5068067327066706565

namespace A033992

/-- `eq[A062513(n+2), n+2]+2` -/
def P5068067327066706565.Spec : Prop :=
  ∀ n, (P5068067327066706565.a n : ℤ) = A033992 (n + 1)

end A033992

/-! ## A033992.P16681958123399710825

`eq[3, A001221(A028310(n))]`
-/

namespace A033992.P16681958123399710825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033992.P16681958123399710825

namespace A033992

/-- `eq[3, A001221(A028310(n))]` -/
def P16681958123399710825.Spec : Prop :=
  ∀ n, (P16681958123399710825.a n : ℤ) = A033992 (n + 1)

end A033992

/-! ## A033992.P15423603159132466324

`eq[1, A001221(A257088(n))-2]`
-/

namespace A033992.P15423603159132466324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A257088 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033992.P15423603159132466324

namespace A033992

/-- `eq[1, A001221(A257088(n))-2]` -/
def P15423603159132466324.Spec : Prop :=
  ∀ n, (P15423603159132466324.a n : ℤ) = A033992 (n + 1)

end A033992

/-! ## A033992.P4171348219270426395

`filter[A168638(n+1), A092248(#)]`
-/

namespace A033992.P4171348219270426395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A033992.P4171348219270426395

namespace A033992

/-- `filter[A168638(n+1), A092248(#)]` -/
def P4171348219270426395.Spec : Prop :=
  ∀ n, P4171348219270426395.a n = A033992 (n + 1)

end A033992

/-! ## A033992.P11646334000373056458

`eq[2, A056699(A007875(n+1))]+1`
-/

namespace A033992.P11646334000373056458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (A007875 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033992.P11646334000373056458

namespace A033992

/-- `eq[2, A056699(A007875(n+1))]+1` -/
def P11646334000373056458.Spec : Prop :=
  ∀ n, (P11646334000373056458.a n : ℤ) = A033992 (n + 1)

end A033992

/-! ## A033992.P6868627384814283315

`eq[2, A243055(A046523(n+1))]+1`
-/

namespace A033992.P6868627384814283315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A046523 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033992.P6868627384814283315

namespace A033992

/-- `eq[2, A243055(A046523(n+1))]+1` -/
def P6868627384814283315.Spec : Prop :=
  ∀ n, (P6868627384814283315.a n : ℤ) = A033992 (n + 1)

end A033992

/-! ## A033992.P5911250938735203405

`A020725(eq[2, A007875(n+1)-2])`
-/

namespace A033992.P5911250938735203405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033992.P5911250938735203405

namespace A033992

/-- `A020725(eq[2, A007875(n+1)-2])` -/
def P5911250938735203405.Spec : Prop :=
  ∀ n, P5911250938735203405.a n = A033992 (n + 1)

end A033992

/-! ## A033992.P12349399650458191360

`A065475(eq[2, A007875(n+1)-2])`
-/

namespace A033992.P12349399650458191360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033992.P12349399650458191360

namespace A033992

/-- `A065475(eq[2, A007875(n+1)-2])` -/
def P12349399650458191360.Spec : Prop :=
  ∀ n, P12349399650458191360.a n = A033992 (n + 1)

end A033992

/-! ## A033992.P8692080017587467078

`A020725(eq[2, A007875(n+1)/2])`
-/

namespace A033992.P8692080017587467078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007875 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A033992.P8692080017587467078

namespace A033992

/-- `A020725(eq[2, A007875(n+1)/2])` -/
def P8692080017587467078.Spec : Prop :=
  ∀ n, P8692080017587467078.a n = A033992 (n + 1)

end A033992

/-! ## A033992.P11217216220238954851

`A065475(eq[2, A007875(n+1)/2])`
-/

namespace A033992.P11217216220238954851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007875 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A033992.P11217216220238954851

namespace A033992

/-- `A065475(eq[2, A007875(n+1)/2])` -/
def P11217216220238954851.Spec : Prop :=
  ∀ n, P11217216220238954851.a n = A033992 (n + 1)

end A033992

/-! ## A033992.P3249860059162345491

`filter[A373350(3*n+1), A092248(#)]`
-/

namespace A033992.P3249860059162345491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373350 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A033992.P3249860059162345491

namespace A033992

/-- `filter[A373350(3*n+1), A092248(#)]` -/
def P3249860059162345491.Spec : Prop :=
  ∀ n, P3249860059162345491.a n = A033992 (n + 1)

end A033992

/-! ## A033992.P9934200712175086865

`eq[1, A106404(A004277(n))-2]`
-/

namespace A033992.P9934200712175086865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A004277 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033992.P9934200712175086865

namespace A033992

/-- `eq[1, A106404(A004277(n))-2]` -/
def P9934200712175086865.Spec : Prop :=
  ∀ n, (P9934200712175086865.a n : ℤ) = A033992 (n + 1)

end A033992

/-! ## A033992.P2739901014867720035

`filter[A102467(n+1), A092248(#)]`
-/

namespace A033992.P2739901014867720035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A033992.P2739901014867720035

namespace A033992

/-- `filter[A102467(n+1), A092248(#)]` -/
def P2739901014867720035.Spec : Prop :=
  ∀ n, P2739901014867720035.a n = A033992 (n + 1)

end A033992

/-!
# A033993: Numbers that are divisible by exactly four different primes.

The programs for A033993, the canonical program `A033993.P8598925663694041500` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033993 has offset 1).

The definition of A033993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5573 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033993.P4887346013842753932

`∪[A046386(n+1), A200521(n+1)]`
-/

namespace A033993.P4887346013842753932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033993.P4887346013842753932

namespace A033993

/-- `∪[A046386(n+1), A200521(n+1)]` -/
def P4887346013842753932.Spec : Prop :=
  ∀ n, (P4887346013842753932.a n : ℤ) = A033993 (n + 1)

end A033993

/-! ## A033993.P8598925663694041500

`filter[A036116(n+1), A379958(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A033993

/-- `filter[A036116(n+1), A379958(#)]` -/
def P8598925663694041500.Spec : Prop :=
  ∀ n, P8598925663694041500.a n = A033993 (n + 1)

theorem P8598925663694041500.correct : P8598925663694041500.Spec := by
  intro n
  simp only [A033993, Nat.add_sub_cancel]

end A033993

/-! ## A033993.P10106831348849431876

`∩[A036116(n+1), A320632(n+1)]`
-/

namespace A033993.P10106831348849431876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033993.P10106831348849431876

namespace A033993

/-- `∩[A036116(n+1), A320632(n+1)]` -/
def P10106831348849431876.Spec : Prop :=
  ∀ n, (P10106831348849431876.a n : ℤ) = A033993 (n + 1)

end A033993

/-! ## A033993.P10765267652964884900

`∩[A036116(n+1), A119357(n+1)]`
-/

namespace A033993.P10765267652964884900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033993.P10765267652964884900

namespace A033993

/-- `∩[A036116(n+1), A119357(n+1)]` -/
def P10765267652964884900.Spec : Prop :=
  ∀ n, (P10765267652964884900.a n : ℤ) = A033993 (n + 1)

end A033993

/-! ## A033993.P10968781670975924659

`∩[A036116(n+1), A051774(n+1)]`
-/

namespace A033993.P10968781670975924659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033993.P10968781670975924659

namespace A033993

/-- `∩[A036116(n+1), A051774(n+1)]` -/
def P10968781670975924659.Spec : Prop :=
  ∀ n, (P10968781670975924659.a n : ℤ) = A033993 (n + 1)

end A033993

/-! ## A033993.P18428884992901695371

`∩[A005279(n+1), A036116(n+1)]`
-/

namespace A033993.P18428884992901695371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033993.P18428884992901695371

namespace A033993

/-- `∩[A005279(n+1), A036116(n+1)]` -/
def P18428884992901695371.Spec : Prop :=
  ∀ n, (P18428884992901695371.a n : ℤ) = A033993 (n + 1)

end A033993

/-! ## A033993.P17140340227831156695

`∩[A036116(n+1), A376834(n+1)]`
-/

namespace A033993.P17140340227831156695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033993.P17140340227831156695

namespace A033993

/-- `∩[A036116(n+1), A376834(n+1)]` -/
def P17140340227831156695.Spec : Prop :=
  ∀ n, (P17140340227831156695.a n : ℤ) = A033993 (n + 1)

end A033993

/-! ## A033993.P3236040133611073522

`∩[A000977(n+1), A036116(n+1)]`
-/

namespace A033993.P3236040133611073522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033993.P3236040133611073522

namespace A033993

/-- `∩[A000977(n+1), A036116(n+1)]` -/
def P3236040133611073522.Spec : Prop :=
  ∀ n, (P3236040133611073522.a n : ℤ) = A033993 (n + 1)

end A033993

/-! ## A033993.P10335204526820859470

`∩[A036116(n+1), A376384(n+1)]`
-/

namespace A033993.P10335204526820859470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033993.P10335204526820859470

namespace A033993

/-- `∩[A036116(n+1), A376384(n+1)]` -/
def P10335204526820859470.Spec : Prop :=
  ∀ n, (P10335204526820859470.a n : ℤ) = A033993 (n + 1)

end A033993

/-! ## A033993.P5203940386749707909

`∩[A036116(n+1), A307517(n+1)]`
-/

namespace A033993.P5203940386749707909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033993.P5203940386749707909

namespace A033993

/-- `∩[A036116(n+1), A307517(n+1)]` -/
def P5203940386749707909.Spec : Prop :=
  ∀ n, (P5203940386749707909.a n : ℤ) = A033993 (n + 1)

end A033993

/-! ## A033993.P13406606606949516691

`∩[A036116(n+1), A299991(n+1)]`
-/

namespace A033993.P13406606606949516691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033993.P13406606606949516691

namespace A033993

/-- `∩[A036116(n+1), A299991(n+1)]` -/
def P13406606606949516691.Spec : Prop :=
  ∀ n, (P13406606606949516691.a n : ℤ) = A033993 (n + 1)

end A033993

/-! ## A033993.P14687582186490414071

`eq[4, A001221(A028310(n))]`
-/

namespace A033993.P14687582186490414071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033993.P14687582186490414071

namespace A033993

/-- `eq[4, A001221(A028310(n))]` -/
def P14687582186490414071.Spec : Prop :=
  ∀ n, (P14687582186490414071.a n : ℤ) = A033993 (n + 1)

end A033993

/-! ## A033993.P5530232999493885756

`eq[4, A001221(A060000(n+1))]`
-/

namespace A033993.P5530232999493885756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033993.P5530232999493885756

namespace A033993

/-- `eq[4, A001221(A060000(n+1))]` -/
def P5530232999493885756.Spec : Prop :=
  ∀ n, (P5530232999493885756.a n : ℤ) = A033993 (n + 1)

end A033993

/-! ## A033993.P14080805273646301964

`filter[A036116(n+1), A143731(#)]`
-/

namespace A033993.P14080805273646301964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A033993.P14080805273646301964

namespace A033993

/-- `filter[A036116(n+1), A143731(#)]` -/
def P14080805273646301964.Spec : Prop :=
  ∀ n, P14080805273646301964.a n = A033993 (n + 1)

end A033993

/-! ## A033993.P4489859010951944944

`∩[A036116(n+1), A219095(n+2)]`
-/

namespace A033993.P4489859010951944944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219095 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033993.P4489859010951944944

namespace A033993

/-- `∩[A036116(n+1), A219095(n+2)]` -/
def P4489859010951944944.Spec : Prop :=
  ∀ n, (P4489859010951944944.a n : ℤ) = A033993 (n + 1)

end A033993

/-! ## A033993.P798685197067220439

`∩[A036116(n+1), A102495(n+1)]`
-/

namespace A033993.P798685197067220439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033993.P798685197067220439

namespace A033993

/-- `∩[A036116(n+1), A102495(n+1)]` -/
def P798685197067220439.Spec : Prop :=
  ∀ n, (P798685197067220439.a n : ℤ) = A033993 (n + 1)

end A033993

/-! ## A033993.P7000093041683251416

`eq[4, A106404(A004277(n))]`
-/

namespace A033993.P7000093041683251416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033993.P7000093041683251416

namespace A033993

/-- `eq[4, A106404(A004277(n))]` -/
def P7000093041683251416.Spec : Prop :=
  ∀ n, (P7000093041683251416.a n : ℤ) = A033993 (n + 1)

end A033993

/-! ## A033993.P5435003453823347034

`∩[A036116(n+1), A343126(n+1)]`
-/

namespace A033993.P5435003453823347034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033993.P5435003453823347034

namespace A033993

/-- `∩[A036116(n+1), A343126(n+1)]` -/
def P5435003453823347034.Spec : Prop :=
  ∀ n, (P5435003453823347034.a n : ℤ) = A033993 (n + 1)

end A033993

/-!
# A033994: a(n) = n*(n+1)*(5*n+1)/6.

The programs for A033994, the canonical program `A033994.P18096815922724586734` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033994 has offset 1).

The definition of A033994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033994.P3506986810271360324

`ogf((2+3x)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A033994.P3506986810271360324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -4, 6, -4, 1] n

end

end A033994.P3506986810271360324

namespace A033994

/-- `ogf((2+3x)/(1-4x+6x^2-4x^3+x^4))` -/
def P3506986810271360324.Spec : Prop :=
  ∀ n, P3506986810271360324.a n = A033994 (n + 1)

end A033994

/-! ## A033994.P10598849116851244855

`(n+1)*(n+2)*(5*(n+1)+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033994.P10598849116851244855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (5 * (n + 1) + 1) : ℚ) / 6

end

end A033994.P10598849116851244855

namespace A033994

/-- `(n+1)*(n+2)*(5*(n+1)+1)/6` -/
def P10598849116851244855.Spec : Prop :=
  ∀ n, P10598849116851244855.a n = (A033994 (n + 1) : ℚ)

end A033994

/-! ## A033994.P18096815922724586734

`A000292(n+1)+A002412(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033994

/-- `A000292(n+1)+A002412(n+1)` -/
def P18096815922724586734.Spec : Prop :=
  ∀ n, P18096815922724586734.a n = A033994 (n + 1)

theorem P18096815922724586734.correct : P18096815922724586734.Spec := by
  intro n
  simp only [A033994, Nat.add_sub_cancel]

end A033994

/-! ## A033994.P15426946049736632873

`A000330(n+1)+A002411(n+1)`
-/

namespace A033994.P15426946049736632873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + A002411 (n + 1)

end

end A033994.P15426946049736632873

namespace A033994

/-- `A000330(n+1)+A002411(n+1)` -/
def P15426946049736632873.Spec : Prop :=
  ∀ n, P15426946049736632873.a n = A033994 (n + 1)

end A033994

/-! ## A033994.P6302823716248501551

`∑{#}[n, (#+1)*(n+1+#+1)]`
-/

namespace A033994.P6302823716248501551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1) * (n + 1 + (k + 1))

end

end A033994.P6302823716248501551

namespace A033994

/-- `∑{#}[n, (#+1)*(n+1+#+1)]` -/
def P6302823716248501551.Spec : Prop :=
  ∀ n, (P6302823716248501551.a n : ℤ) = A033994 (n + 1)

end A033994

/-! ## A033994.P16854748777105747081

`A132121(C(n+2, 2)+1)`
-/

namespace A033994.P16854748777105747081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132121 (Nat.choose (n + 2) 2 + 1)

end

end A033994.P16854748777105747081

namespace A033994

/-- `A132121(C(n+2, 2)+1)` -/
def P16854748777105747081.Spec : Prop :=
  ∀ n, P16854748777105747081.a n = A033994 (n + 1)

end A033994

/-! ## A033994.P13449992668134459933

`∑[∑[a(n-1)+5]]` with `a(0)=2`
-/

namespace A033994.P13449992668134459933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033994.P13449992668134459933

namespace A033994

/-- `∑[∑[a(n-1)+5]]` -/
def P13449992668134459933.Spec : Prop :=
  ∀ n, (P13449992668134459933.a n : ℤ) = A033994 (n + 1)

end A033994

/-! ## A033994.P8513129133229509593

`∑[∑[ogf((2+3x)/(1-2x+x^2))]]`
-/

namespace A033994.P8513129133229509593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033994.P8513129133229509593

namespace A033994

/-- `∑[∑[ogf((2+3x)/(1-2x+x^2))]]` -/
def P8513129133229509593.Spec : Prop :=
  ∀ n, P8513129133229509593.a n = A033994 (n + 1)

end A033994

/-! ## A033994.P3122544844225952901

`Δ[Δ[n*∑[C(n+1, 3)]]]`
-/

namespace A033994.P3122544844225952901
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033994.P3122544844225952901

namespace A033994

/-- `Δ[Δ[n*∑[C(n+1, 3)]]]` -/
def P3122544844225952901.Spec : Prop :=
  ∀ n, P3122544844225952901.a n = A033994 (n + 1)

end A033994

/-! ## A033994.P17889952229185902551

`lcm(n+2, (n+1)²)-∑[∑[n]]`
-/

namespace A033994.P17889952229185902551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) ((n + 1) ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A033994.P17889952229185902551

namespace A033994

/-- `lcm(n+2, (n+1)²)-∑[∑[n]]` -/
def P17889952229185902551.Spec : Prop :=
  ∀ n, P17889952229185902551.a n = A033994 (n + 1)

end A033994

/-! ## A033994.P11384977742263887026

`(n+2)*(n+1)²-C(n+2, 3)`
-/

namespace A033994.P11384977742263887026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) ^ 2 : ℤ) - (Nat.choose (n + 2) 3 : ℤ)

end

end A033994.P11384977742263887026

namespace A033994

/-- `(n+2)*(n+1)²-C(n+2, 3)` -/
def P11384977742263887026.Spec : Prop :=
  ∀ n, P11384977742263887026.a n = A033994 (n + 1)

end A033994

/-! ## A033994.P17517629815712682086

`∑[lcm(2*n+1, n+1)]+∑[∑[n+1]]`
-/

namespace A033994.P17517629815712682086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A033994.P17517629815712682086

namespace A033994

/-- `∑[lcm(2*n+1, n+1)]+∑[∑[n+1]]` -/
def P17517629815712682086.Spec : Prop :=
  ∀ n, (P17517629815712682086.a n : ℤ) = A033994 (n + 1)

end A033994

/-! ## A033994.P1428914627497666288

`∑[∑[A016873(n)]]`
-/

namespace A033994.P1428914627497666288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033994.P1428914627497666288

namespace A033994

/-- `∑[∑[A016873(n)]]` -/
def P1428914627497666288.Spec : Prop :=
  ∀ n, P1428914627497666288.a n = A033994 (n + 1)

end A033994

/-! ## A033994.P16705102825526557664

`∑[A167469(n+1)/3]`
-/

namespace A033994.P16705102825526557664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167469 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033994.P16705102825526557664

namespace A033994

/-- `∑[A167469(n+1)/3]` -/
def P16705102825526557664.Spec : Prop :=
  ∀ n, P16705102825526557664.a n = (A033994 (n + 1) : ℚ)

end A033994

/-! ## A033994.P16973185078970154274

`∑[A192136(n+1)+n]`
-/

namespace A033994.P16973185078970154274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033994.P16973185078970154274

namespace A033994

/-- `∑[A192136(n+1)+n]` -/
def P16973185078970154274.Spec : Prop :=
  ∀ n, P16973185078970154274.a n = A033994 (n + 1)

end A033994

/-! ## A033994.P3075039293301552838

`A203551(n+1)+∑[n]`
-/

namespace A033994.P3075039293301552838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203551 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A033994.P3075039293301552838

namespace A033994

/-- `A203551(n+1)+∑[n]` -/
def P3075039293301552838.Spec : Prop :=
  ∀ n, P3075039293301552838.a n = A033994 (n + 1)

end A033994

/-! ## A033994.P3328994806537018333

`A037236(n)+∑[n-1]`
-/

namespace A033994.P3328994806537018333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037236 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033994.P3328994806537018333

namespace A033994

/-- `A037236(n)+∑[n-1]` -/
def P3328994806537018333.Spec : Prop :=
  ∀ n, P3328994806537018333.a n = A033994 (n + 1)

end A033994

/-! ## A033994.P2429469571331053963

`A102296(n)-a(n-1)` with `a(0)=2`
-/

namespace A033994.P2429469571331053963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A102296 n - a (n - 1)

end

end A033994.P2429469571331053963

namespace A033994

/-- `A102296(n)-a(n-1)` -/
def P2429469571331053963.Spec : Prop :=
  ∀ n, P2429469571331053963.a n = A033994 (n + 1)

end A033994

/-! ## A033994.P8128443141332396100

`∑[A005891(n)]+(n+1)²`
-/

namespace A033994.P8128443141332396100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A033994.P8128443141332396100

namespace A033994

/-- `∑[A005891(n)]+(n+1)²` -/
def P8128443141332396100.Spec : Prop :=
  ∀ n, P8128443141332396100.a n = A033994 (n + 1)

end A033994

/-! ## A033994.P13689114701079665419

`∑[A389608(n+1)-n²]`
-/

namespace A033994.P13689114701079665419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389608 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033994.P13689114701079665419

namespace A033994

/-- `∑[A389608(n+1)-n²]` -/
def P13689114701079665419.Spec : Prop :=
  ∀ n, P13689114701079665419.a n = A033994 (n + 1)

end A033994

/-!
# A033995: Number of bipartite graphs with n nodes.

The programs for A033995, there is no canonical definition to state claims against.
-/

/-! ## A033995.P1854643267075318005

`floor(A079571(n)+n/2)`
-/

namespace A033995.P1854643267075318005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079571 n : ℚ) + (n : ℚ) / 2⌋

end

end A033995.P1854643267075318005

/-! ## A033995.P6462604920775846716

`A076278(round(sqrt(n²+1)))+1`
-/

namespace A033995.P6462604920775846716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076278 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

end

end A033995.P6462604920775846716

/-! ## A033995.P15472656229654891628

`A079571(n)+A004526(n)`
-/

namespace A033995.P15472656229654891628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079571 n + A004526 n

end

end A033995.P15472656229654891628

/-! ## A033995.P9378457270533481279

`A079571(n)+A002265(2*n)`
-/

namespace A033995.P9378457270533481279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079571 n + A002265 (2 * n)

end

end A033995.P9378457270533481279

/-! ## A033995.P1712054209687830951

`A000088(n)-A236525(A028310(n))`
-/

namespace A033995.P1712054209687830951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A236525 (A028310 n).toNat

end

end A033995.P1712054209687830951

/-!
# A033996: 8 times triangular numbers: a(n) = 4*n*(n+1).

The programs for A033996, the canonical program `A033996.P3972738276246908348` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033996 has offset 0).

The definition of A033996 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(n+1)` (program `A033996.P3972738276246908348`, by `A033996.P3972738276246908348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033996.P3099735890273909462

`8*C(n+1, 2)`
-/

namespace A033996.P3099735890273909462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (n + 1) 2

end

end A033996.P3099735890273909462

namespace A033996

/-- `8*C(n+1, 2)` -/
def P3099735890273909462.Spec : Prop :=
  ∀ n, (P3099735890273909462.a n : ℤ) = A033996 n

theorem P3099735890273909462.correct : P3099735890273909462.Spec := by
  intro n
  simp only [A033996, Nat.add_sub_cancel, A033996.P3099735890273909462.a, A033996.P3972738276246908348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A033996

/-! ## A033996.P3972738276246908348

`4*n*(n+1)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A033996

/-- `4*n*(n+1)` -/
def P3972738276246908348.Spec : Prop :=
  ∀ n, (P3972738276246908348.a n : ℤ) = A033996 n

theorem P3972738276246908348.correct : P3972738276246908348.Spec := by
  intro n
  simp only [A033996]

end A033996

/-! ## A033996.P5712085755059972127

`ogf(8x/(1-3x+3x^2-x^3))`
-/

namespace A033996.P5712085755059972127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, -3, 3, -1] n

end

end A033996.P5712085755059972127

namespace A033996

/-- `ogf(8x/(1-3x+3x^2-x^3))` -/
def P5712085755059972127.Spec : Prop :=
  ∀ n, P5712085755059972127.a n = A033996 n

end A033996

/-! ## A033996.P6075432439874575921

`xor(1, Δ[n²]²)`
-/

namespace A033996.P6075432439874575921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A033996.P6075432439874575921

namespace A033996

/-- `xor(1, Δ[n²]²)` -/
def P6075432439874575921.Spec : Prop :=
  ∀ n, P6075432439874575921.a n = A033996 n

end A033996

/-! ## A033996.P13574505323776838949

`∑[n]/tan(acot(8))`
-/

namespace A033996.P13574505323776838949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (8 : ℝ))

end

end A033996.P13574505323776838949

namespace A033996

/-- `∑[n]/tan(acot(8))` -/
def P13574505323776838949.Spec : Prop :=
  ∀ n, P13574505323776838949.a n = (A033996 n : ℝ)

end A033996

/-! ## A033996.P8288536469768194884

`∑[n]/cot(atan(8))`
-/

namespace A033996.P8288536469768194884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.cot (Real.arctan (8 : ℝ))

end

end A033996.P8288536469768194884

namespace A033996

/-- `∑[n]/cot(atan(8))` -/
def P8288536469768194884.Spec : Prop :=
  ∀ n, P8288536469768194884.a n = (A033996 n : ℝ)

end A033996

/-! ## A033996.P3699670316418813889

`and(Δ[n²]², -2)`
-/

namespace A033996.P3699670316418813889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) (-2)

end

end A033996.P3699670316418813889

namespace A033996

/-- `and(Δ[n²]², -2)` -/
def P3699670316418813889.Spec : Prop :=
  ∀ n, P3699670316418813889.a n = A033996 n

end A033996

/-! ## A033996.P13753613030335908674

`record[xor(1, n)²-1]`
-/

namespace A033996.P13753613030335908674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033996.P13753613030335908674

namespace A033996

/-- `record[xor(1, n)²-1]` -/
def P13753613030335908674.Spec : Prop :=
  ∀ n, P13753613030335908674.a n = A033996 n

end A033996

/-! ## A033996.P6054041605724155652

`or(1, 2*n)²-1`
-/

namespace A033996.P6054041605724155652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) ^ 2 : ℤ) - 1

end

end A033996.P6054041605724155652

namespace A033996

/-- `or(1, 2*n)²-1` -/
def P6054041605724155652.Spec : Prop :=
  ∀ n, P6054041605724155652.a n = A033996 n

end A033996

/-! ## A033996.P16360139290385226485

`xor(1, 2*n)²-1`
-/

namespace A033996.P16360139290385226485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n) ^ 2 : ℤ) - 1

end

end A033996.P16360139290385226485

namespace A033996

/-- `xor(1, 2*n)²-1` -/
def P16360139290385226485.Spec : Prop :=
  ∀ n, P16360139290385226485.a n = A033996 n

end A033996

/-! ## A033996.P7129312157939813730

`∑[a(n-1)+8]` with `a(0)=0`
-/

namespace A033996.P7129312157939813730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033996.P7129312157939813730

namespace A033996

/-- `∑[a(n-1)+8]` -/
def P7129312157939813730.Spec : Prop :=
  ∀ n, (P7129312157939813730.a n : ℤ) = A033996 n

end A033996

/-! ## A033996.P921620428184963655

`filter[n², gcd(2, #)]-1`
-/

namespace A033996.P921620428184963655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => Nat.gcd 2 (f1 j) = 1) n) : ℤ) - 1

end

end A033996.P921620428184963655

namespace A033996

/-- `filter[n², gcd(2, #)]-1` -/
def P921620428184963655.Spec : Prop :=
  ∀ n, P921620428184963655.a n = A033996 n

end A033996

/-! ## A033996.P3047206926394611418

`filter[n², and(1, #)]-1`
-/

namespace A033996.P3047206926394611418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => Nat.land 1 (f1 j) = 1) n) : ℤ) - 1

end

end A033996.P3047206926394611418

namespace A033996

/-- `filter[n², and(1, #)]-1` -/
def P3047206926394611418.Spec : Prop :=
  ∀ n, P3047206926394611418.a n = A033996 n

end A033996

/-! ## A033996.P2232319382893167335

`lcm(2, 1-Δ[n²]²)`
-/

namespace A033996.P2232319382893167335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A033996.P2232319382893167335

namespace A033996

/-- `lcm(2, 1-Δ[n²]²)` -/
def P2232319382893167335.Spec : Prop :=
  ∀ n, (P2232319382893167335.a n : ℤ) = A033996 n

end A033996

/-! ## A033996.P2537597251985318638

`record[n*(xor(1, n)-3)]`
-/

namespace A033996.P2537597251985318638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.xor 1 n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033996.P2537597251985318638

namespace A033996

/-- `record[n*(xor(1, n)-3)]` -/
def P2537597251985318638.Spec : Prop :=
  ∀ n, P2537597251985318638.a n = A033996 n

end A033996

/-! ## A033996.P1750043716676486170

`or(1, Δ[n²]²)-1`
-/

namespace A033996.P1750043716676486170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) - 1

end

end A033996.P1750043716676486170

namespace A033996

/-- `or(1, Δ[n²]²)-1` -/
def P1750043716676486170.Spec : Prop :=
  ∀ n, P1750043716676486170.a n = A033996 n

end A033996

/-! ## A033996.P9269361720568913702

`∑[ogf(8x/(1-2x+x^2))]`
-/

namespace A033996.P9269361720568913702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033996.P9269361720568913702

namespace A033996

/-- `∑[ogf(8x/(1-2x+x^2))]` -/
def P9269361720568913702.Spec : Prop :=
  ∀ n, P9269361720568913702.a n = A033996 n

end A033996

/-! ## A033996.P2075608859652330423

`abs(∑[a(n-1)-8])` with `a(0)=0`
-/

namespace A033996.P2075608859652330423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A033996.P2075608859652330423

namespace A033996

/-- `abs(∑[a(n-1)-8])` -/
def P2075608859652330423.Spec : Prop :=
  ∀ n, P2075608859652330423.a n = A033996 n

end A033996

/-! ## A033996.P2679391248812487847

`-∑[a(n-1)-8]` with `a(0)=0`
-/

namespace A033996.P2679391248812487847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033996.P2679391248812487847

namespace A033996

/-- `-∑[a(n-1)-8]` -/
def P2679391248812487847.Spec : Prop :=
  ∀ n, P2679391248812487847.a n = A033996 n

end A033996

/-! ## A033996.P10419588207929674078

`record[n²-lcm(4, 2*n)]`
-/

namespace A033996.P10419588207929674078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Nat.lcm 4 (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033996.P10419588207929674078

namespace A033996

/-- `record[n²-lcm(4, 2*n)]` -/
def P10419588207929674078.Spec : Prop :=
  ∀ n, P10419588207929674078.a n = A033996 n

end A033996

/-!
# A033999: a(n) = (-1)^n.

The programs for A033999, the canonical program `A033999.P17703899380244199787` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033999 has offset 0).

The definition of A033999 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n` (program `A033999.P17703899380244199787`, by `A033999.P17703899380244199787.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033999.P17703899380244199787

`(-1)^n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A033999

/-- `(-1)^n` -/
def P17703899380244199787.Spec : Prop :=
  ∀ n, P17703899380244199787.a n = A033999 n

theorem P17703899380244199787.correct : P17703899380244199787.Spec := by
  intro n
  simp only [A033999]

end A033999

