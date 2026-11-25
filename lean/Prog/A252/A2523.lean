import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B003.C001
import Seq.B004.C001
import Seq.B005.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A252300: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252300, there is no canonical definition to state claims against.
-/

/-! ## A252300.P8379141390799616597

`A252305(∑[n+3]+1)`
-/

namespace A252300.P8379141390799616597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252300.P8379141390799616597

/-!
# A252301: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252301, there is no canonical definition to state claims against.
-/

/-! ## A252301.P14351030766299689496

`A252305(∑[n+4]+3)`
-/

namespace A252301.P14351030766299689496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A252301.P14351030766299689496

/-!
# A252302: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252302, there is no canonical definition to state claims against.
-/

/-! ## A252302.P9458562707965927378

`A252305(∑[n+5]+6)`
-/

namespace A252302.P9458562707965927378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A252302.P9458562707965927378

/-!
# A252303: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252303, there is no canonical definition to state claims against.
-/

/-! ## A252303.P14588792888301727452

`A252305(A052905(n+3))`
-/

namespace A252303.P14588792888301727452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A052905 (n + 3)).toNat

end

end A252303.P14588792888301727452

/-!
# A252304: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252304, there is no canonical definition to state claims against.
-/

/-! ## A252304.P1198950397736273223

`A252305(A055999(n+4))`
-/

namespace A252304.P1198950397736273223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A055999 (n + 4)).toNat

end

end A252304.P1198950397736273223

/-!
# A252306: Number of (1+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252306, there is no canonical definition to state claims against.
-/

/-! ## A252306.P2571017898432539706

`A252305(1+∑[n])`
-/

namespace A252306.P2571017898432539706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252306.P2571017898432539706

/-! ## A252306.P10937274065125410090

`record[gcd(col(n), A252305(n+1))]`
-/

namespace A252306.P10937274065125410090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.triCol n : ℤ) (A252305 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252306.P10937274065125410090

/-! ## A252306.P6057454338062616545

`record[A252305(∑[gcd(1-n, floor(n/2))])]`
-/

namespace A252306.P6057454338062616545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252306.P6057454338062616545

/-! ## A252306.P3590106338394731598

`record[A252305(∑[A057979(n)])]`
-/

namespace A252306.P3590106338394731598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252306.P3590106338394731598

/-! ## A252306.P11835733333276813742

`record[A252305(record[A114220(n)])]`
-/

namespace A252306.P11835733333276813742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252306.P11835733333276813742

/-!
# A252307: Number of (2+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252307, there is no canonical definition to state claims against.
-/

/-! ## A252307.P4255918609098460932

`A252305(∑[n+1]+2)`
-/

namespace A252307.P4255918609098460932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252307.P4255918609098460932

/-!
# A252308: Number of (3+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252308, there is no canonical definition to state claims against.
-/

/-! ## A252308.P9609128404184800880

`A252305(∑[n+2]+4)`
-/

namespace A252308.P9609128404184800880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252308.P9609128404184800880

/-!
# A252309: Number of (4+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252309, there is no canonical definition to state claims against.
-/

/-! ## A252309.P8593502634594396233

`A252305(∑[n+3]+7)`
-/

namespace A252309.P8593502634594396233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252309.P8593502634594396233

/-!
# A252310: Number of (5+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252310, there is no canonical definition to state claims against.
-/

/-! ## A252310.P1276154666228455149

`A252305(C(n+6, 2)-n)`
-/

namespace A252310.P1276154666228455149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (Nat.choose (n + 6) 2 - n)

end

end A252310.P1276154666228455149

/-!
# A252311: Number of (6+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252311, there is no canonical definition to state claims against.
-/

/-! ## A252311.P15639180355667089404

`A252305(∑[n+5]+16)`
-/

namespace A252311.P15639180355667089404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A252311.P15639180355667089404

/-!
# A252312: Number of (7+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252312, there is no canonical definition to state claims against.
-/

/-! ## A252312.P9515767342988236292

`A252305(A056119(n)+28)`
-/

namespace A252312.P9515767342988236292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A056119 n + 28).toNat

end

end A252312.P9515767342988236292

/-!
# A252313: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252313, there is no canonical definition to state claims against.
-/

/-! ## A252313.P11438169458067836534

`A252321(∑[4*n]+1)`
-/

namespace A252313.P11438169458067836534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252313.P11438169458067836534

/-! ## A252313.P11434375418833643601

`record[root(A252321(n+1), A106599(n))]`
-/

namespace A252313.P11434375418833643601
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252321 (n + 1) : ℝ) ^ (1 / (A106599 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252313.P11434375418833643601

/-! ## A252313.P2364584432057900982

`record[gcd(A049581(n), A252321(n+1))]`
-/

namespace A252313.P2364584432057900982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A252321 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252313.P2364584432057900982

/-!
# A252314: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252314, there is no canonical definition to state claims against.
-/

/-! ## A252314.P3803896667293720002

`A252321(∑[n]+1)`
-/

namespace A252314.P3803896667293720002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252314.P3803896667293720002

/-! ## A252314.P12441949697601396725

`record[A252321(n+1)/A013612(n)]`
-/

namespace A252314.P12441949697601396725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252321 (n + 1) : ℚ) / (A013612 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252314.P12441949697601396725

/-! ## A252314.P3434855195498500053

`record[A252321(n+1)/A013613(n)]`
-/

namespace A252314.P3434855195498500053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252321 (n + 1) : ℚ) / (A013613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252314.P3434855195498500053

/-! ## A252314.P15682176784643337331

`record[A252321(n+1)/A022171(n)]`
-/

namespace A252314.P15682176784643337331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252321 (n + 1) : ℚ) / (A022171 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252314.P15682176784643337331

/-! ## A252314.P362146689217314971

`record[gcd(A002262(n), A252321(n+1))]`
-/

namespace A252314.P362146689217314971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252321 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252314.P362146689217314971

/-!
# A252315: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252315, there is no canonical definition to state claims against.
-/

/-! ## A252315.P10061870694551746579

`A252321(∑[n+1]+2)`
-/

namespace A252315.P10061870694551746579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252315.P10061870694551746579

/-!
# A252316: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252316, there is no canonical definition to state claims against.
-/

/-! ## A252316.P12586169356128864523

`A252321(∑[n+2]+4)`
-/

namespace A252316.P12586169356128864523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252316.P12586169356128864523

/-!
# A252317: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252317, there is no canonical definition to state claims against.
-/

/-! ## A252317.P13548739840271061796

`A252321(∑[n+3]+7)`
-/

namespace A252317.P13548739840271061796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252317.P13548739840271061796

/-!
# A252318: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252318, there is no canonical definition to state claims against.
-/

/-! ## A252318.P10861802035574937310

`A252321(A167499(n+3))`
-/

namespace A252318.P10861802035574937310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A167499 (n + 3)).toNat

end

end A252318.P10861802035574937310

/-! ## A252318.P8821927684377332722

`A252321(A374005(n+1))`
-/

namespace A252318.P8821927684377332722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A374005 (n + 1)).toNat

end

end A252318.P8821927684377332722

/-!
# A252319: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252319, there is no canonical definition to state claims against.
-/

/-! ## A252319.P7410436249414007869

`A252321(A167614(n+4)+3)`
-/

namespace A252319.P7410436249414007869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A167614 (n + 4) + 3).toNat

end

end A252319.P7410436249414007869

/-! ## A252319.P7979811036276555346

`A252321(A374007(n+1))`
-/

namespace A252319.P7979811036276555346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A374007 (n + 1)).toNat

end

end A252319.P7979811036276555346

/-!
# A252320: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252320, there is no canonical definition to state claims against.
-/

/-! ## A252320.P8202041705140829790

`A252321(eq[8, A131818(n+1)])`
-/

namespace A252320.P8202041705140829790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252320.P8202041705140829790

/-! ## A252320.P15318445811878774542

`A252321(A374008(n+1))`
-/

namespace A252320.P15318445811878774542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A374008 (n + 1)).toNat

end

end A252320.P15318445811878774542

/-!
# A252322: Number of (n+2)X(1+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 3 or 6.

The programs for A252322, there is no canonical definition to state claims against.
-/

/-! ## A252322.P8051303784163579023

`A252325(∑[n]+1)`
-/

namespace A252322.P8051303784163579023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252325 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252322.P8051303784163579023

/-! ## A252322.P11075869712245352201

`record[A252325(A114091(n+1))]`
-/

namespace A252322.P11075869712245352201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252325 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252322.P11075869712245352201

/-! ## A252322.P6210663832432735667

`record[A252325(A246276(n+1))]`
-/

namespace A252322.P6210663832432735667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252325 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252322.P6210663832432735667

/-! ## A252322.P9767898287211063367

`record[A010054(n)*A252325(n+1)]`
-/

namespace A252322.P9767898287211063367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252322.P9767898287211063367

/-!
# A252323: Number of (n+2)X(2+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 3 or 6.

The programs for A252323, there is no canonical definition to state claims against.
-/

/-! ## A252323.P434549692387000636

`A252325(∑[n+1]+2)`
-/

namespace A252323.P434549692387000636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252325 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252323.P434549692387000636

/-! ## A252323.P13519940101067879048

`record[A252325(A114091(n+1)+1)]`
-/

namespace A252323.P13519940101067879048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252325 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252323.P13519940101067879048

/-! ## A252323.P1006107818473926427

`record[A010054(n)*A252325(n+2)]`
-/

namespace A252323.P1006107818473926427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252325 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252323.P1006107818473926427

/-!
# A252324: Number of (n+2)X(3+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 3 or 6.

The programs for A252324, there is no canonical definition to state claims against.
-/

/-! ## A252324.P12855555299898508055

`A252325(∑[n+2]+4)`
-/

namespace A252324.P12855555299898508055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252325 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252324.P12855555299898508055

/-!
# A252326: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252326, there is no canonical definition to state claims against.
-/

/-! ## A252326.P5035102433665812523

`A252334((n+1)²+n²)`
-/

namespace A252326.P5035102433665812523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 ((n + 1) ^ 2 + n ^ 2)

end

end A252326.P5035102433665812523

/-! ## A252326.P4290192044411401709

`record[A003982(n)*A252334(n+1)]`
-/

namespace A252326.P4290192044411401709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252326.P4290192044411401709

/-! ## A252326.P1556910767484986120

`record[gcd(A049581(n), A252334(n+1))]`
-/

namespace A252326.P1556910767484986120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A252334 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252326.P1556910767484986120

/-!
# A252327: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252327, there is no canonical definition to state claims against.
-/

/-! ## A252327.P6985871595861470167

`A252334(∑[n]+1)`
-/

namespace A252327.P6985871595861470167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252327.P6985871595861470167

/-! ## A252327.P15923276865338539564

`record[A010054(n)*A252334(n+1)]`
-/

namespace A252327.P15923276865338539564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252327.P15923276865338539564

/-! ## A252327.P7211789362632284584

`record[gcd(A002262(n), A252334(n+1))]`
-/

namespace A252327.P7211789362632284584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252334 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252327.P7211789362632284584

/-! ## A252327.P8662662566123157744

`record[A252334(n+1)/A008277(n+1)]`
-/

namespace A252327.P8662662566123157744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252334 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252327.P8662662566123157744

/-! ## A252327.P6180793616513866371

`record[A252334(n+1)/A163269(n+1)]`
-/

namespace A252327.P6180793616513866371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252334 (n + 1) : ℚ) / (A163269 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252327.P6180793616513866371

/-!
# A252328: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252328, there is no canonical definition to state claims against.
-/

/-! ## A252328.P15062853011697160594

`A252334(∑[n+1]+2)`
-/

namespace A252328.P15062853011697160594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252328.P15062853011697160594

/-! ## A252328.P9778614055714395023

`record[A010054(n)*A252334(n+2)]`
-/

namespace A252328.P9778614055714395023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252328.P9778614055714395023

/-! ## A252328.P11711568908198219276

`record[gcd(A002262(n), A252334(n+2))]`
-/

namespace A252328.P11711568908198219276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252334 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252328.P11711568908198219276

/-! ## A252328.P14162737228672138356

`record[A252334(A133263(A110659(n)))]`
-/

namespace A252328.P14162737228672138356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A133263 (A110659 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252328.P14162737228672138356

/-!
# A252329: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252329, there is no canonical definition to state claims against.
-/

/-! ## A252329.P14418445882341168129

`A252334(∑[n+2]+4)`
-/

namespace A252329.P14418445882341168129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252329.P14418445882341168129

/-!
# A252330: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252330, there is no canonical definition to state claims against.
-/

/-! ## A252330.P11595407537187803962

`A252334(A374004(n+1))`
-/

namespace A252330.P11595407537187803962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A374004 (n + 1)).toNat

end

end A252330.P11595407537187803962

/-! ## A252330.P2655905520454616484

`A252334(A141214(n+1))`
-/

namespace A252330.P2655905520454616484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A141214 (n + 1)).toNat

end

end A252330.P2655905520454616484

/-!
# A252331: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252331, there is no canonical definition to state claims against.
-/

/-! ## A252331.P15522118563668664082

`A252334(A374005(n+1))`
-/

namespace A252331.P15522118563668664082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A374005 (n + 1)).toNat

end

end A252331.P15522118563668664082

/-!
# A252332: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252332, there is no canonical definition to state claims against.
-/

/-! ## A252332.P14954232415376550710

`A252334(A374007(n+1))`
-/

namespace A252332.P14954232415376550710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A374007 (n + 1)).toNat

end

end A252332.P14954232415376550710

/-!
# A252333: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252333, there is no canonical definition to state claims against.
-/

/-! ## A252333.P1445958842465490927

`A252334(A374008(n+1))`
-/

namespace A252333.P1445958842465490927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A374008 (n + 1)).toNat

end

end A252333.P1445958842465490927

/-!
# A252335: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252335, there is no canonical definition to state claims against.
-/

/-! ## A252335.P18231019056309258321

`2*A255019(n+1)`
-/

namespace A252335.P18231019056309258321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255019 (n + 1)

end

end A252335.P18231019056309258321

/-! ## A252335.P20702040968722710

`A252343(∑[4*n]+1)`
-/

namespace A252335.P20702040968722710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252343 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252335.P20702040968722710

/-! ## A252335.P12959714699211014430

`2*A255027(record[Δ[A235355(n)]])`
-/

namespace A252335.P12959714699211014430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A252335.P12959714699211014430

/-! ## A252335.P15806844828851092989

`record[root(A252343(n+1), A143182(n))]`
-/

namespace A252335.P15806844828851092989
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252343 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252335.P15806844828851092989

/-!
# A252336: Number of (n+2) X (1+2) 0..2 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252336, the canonical program `A252336.P3933143258631784290` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252336 has offset 1).

The definition of A252336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252336.P3933143258631784290

`ogf((52+56x+126x^2+148x^3+132x^4+68x^5+8x^6)/(1-x-3x^3-4x^4-4x^5-2x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A252336

/-- `ogf((52+56x+126x^2+148x^3+132x^4+68x^5+8x^6)/(1-x-3x^3-4x^4-4x^5-2x^6))` -/
def P3933143258631784290.Spec : Prop :=
  ∀ n, P3933143258631784290.a n = A252336 (n + 1)

theorem P3933143258631784290.correct : P3933143258631784290.Spec := by
  intro n
  simp only [A252336, Nat.add_sub_cancel]

end A252336

/-! ## A252336.P14346688827292867023

`2*A255020(1+n)`
-/

namespace A252336.P14346688827292867023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255020 (1 + n)

end

end A252336.P14346688827292867023

namespace A252336

/-- `2*A255020(1+n)` -/
def P14346688827292867023.Spec : Prop :=
  ∀ n, P14346688827292867023.a n = A252336 (n + 1)

end A252336

/-! ## A252336.P10310982884487714026

`A255020(n+1)+A255020(n+1)`
-/

namespace A252336.P10310982884487714026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255020 (n + 1) + A255020 (n + 1)

end

end A252336.P10310982884487714026

namespace A252336

/-- `A255020(n+1)+A255020(n+1)` -/
def P10310982884487714026.Spec : Prop :=
  ∀ n, P10310982884487714026.a n = A252336 (n + 1)

end A252336

/-! ## A252336.P3970204380874444529

`record[2*A255020(A134478(n))]`
-/

namespace A252336.P3970204380874444529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255020 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252336.P3970204380874444529

namespace A252336

/-- `record[2*A255020(A134478(n))]` -/
def P3970204380874444529.Spec : Prop :=
  ∀ n, P3970204380874444529.a n = A252336 (n + 1)

end A252336

/-! ## A252336.P5279310520294326504

`record[2*A255020(A143182(n))]`
-/

namespace A252336.P5279310520294326504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255020 (A143182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252336.P5279310520294326504

namespace A252336

/-- `record[2*A255020(A143182(n))]` -/
def P5279310520294326504.Spec : Prop :=
  ∀ n, P5279310520294326504.a n = A252336 (n + 1)

end A252336

/-!
# A252337: Number of (n+2) X (2+2) 0..2 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252337, the canonical program `A252337.P2918130458097700704` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252337 has offset 1).

The definition of A252337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252337.P2918130458097700704

`2*A255021(1+n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A252337

/-- `2*A255021(1+n)` -/
def P2918130458097700704.Spec : Prop :=
  ∀ n, P2918130458097700704.a n = A252337 (n + 1)

theorem P2918130458097700704.correct : P2918130458097700704.Spec := by
  intro n
  simp only [A252337, Nat.add_sub_cancel]

end A252337

/-! ## A252337.P8385969420702974741

`record[2*A255021(A134478(n))]`
-/

namespace A252337.P8385969420702974741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255021 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252337.P8385969420702974741

namespace A252337

/-- `record[2*A255021(A134478(n))]` -/
def P8385969420702974741.Spec : Prop :=
  ∀ n, P8385969420702974741.a n = A252337 (n + 1)

end A252337

/-! ## A252337.P303975512846791146

`A255021(n+1)+A255021(n+1)`
-/

namespace A252337.P303975512846791146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255021 (n + 1) + A255021 (n + 1)

end

end A252337.P303975512846791146

namespace A252337

/-- `A255021(n+1)+A255021(n+1)` -/
def P303975512846791146.Spec : Prop :=
  ∀ n, P303975512846791146.a n = A252337 (n + 1)

theorem P303975512846791146.correct : P303975512846791146.Spec := by
  intro n
  simp only [A252337, Nat.add_sub_cancel, A252337.P303975512846791146.a, A252337.P2918130458097700704.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A252337

/-! ## A252337.P17150176574918335880

`A252263(n+1)+A252263(n+1)-A252363(n+1)`
-/

namespace A252337.P17150176574918335880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252263 (n + 1) + (A252263 (n + 1) - A252363 (n + 1))

end

end A252337.P17150176574918335880

namespace A252337

/-- `A252263(n+1)+A252263(n+1)-A252363(n+1)` -/
def P17150176574918335880.Spec : Prop :=
  ∀ n, P17150176574918335880.a n = A252337 (n + 1)

end A252337

/-! ## A252337.P8596858814818140515

`2*A252263(n+1)-A252363(n+1)`
-/

namespace A252337.P8596858814818140515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252263 (n + 1) - A252363 (n + 1)

end

end A252337.P8596858814818140515

namespace A252337

/-- `2*A252263(n+1)-A252363(n+1)` -/
def P8596858814818140515.Spec : Prop :=
  ∀ n, P8596858814818140515.a n = A252337 (n + 1)

end A252337

/-! ## A252337.P2245150079264780404

`record[2*A255021(A143182(n))]`
-/

namespace A252337.P2245150079264780404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255021 (A143182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252337.P2245150079264780404

namespace A252337

/-- `record[2*A255021(A143182(n))]` -/
def P2245150079264780404.Spec : Prop :=
  ∀ n, P2245150079264780404.a n = A252337 (n + 1)

end A252337

/-!
# A252338: Number of (n+2)X(3+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252338, there is no canonical definition to state claims against.
-/

/-! ## A252338.P11795643557177177847

`2*A255022(1+n)`
-/

namespace A252338.P11795643557177177847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255022 (1 + n)

end

end A252338.P11795643557177177847

/-! ## A252338.P14431252112300918903

`lcm(2, A255022(n+1))`
-/

namespace A252338.P14431252112300918903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A255022 (n + 1))

end

end A252338.P14431252112300918903

/-! ## A252338.P13163801207055530222

`record[2*A255022(A134478(n))]`
-/

namespace A252338.P13163801207055530222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255022 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252338.P13163801207055530222

/-! ## A252338.P18424804377815140176

`A255022(n+1)+A255022(Δ[n²]-n)`
-/

namespace A252338.P18424804377815140176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255022 (n + 1) + A255022 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A252338.P18424804377815140176

/-! ## A252338.P1625601559090071372

`A255022(n+1)+record[A255022(A134478(n))]`
-/

namespace A252338.P1625601559090071372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255022 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255022 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252338.P1625601559090071372

/-!
# A252339: Number of (n+2)X(4+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252339, there is no canonical definition to state claims against.
-/

/-! ## A252339.P13963767591304601727

`2*A255023(n+1)`
-/

namespace A252339.P13963767591304601727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255023 (n + 1)

end

end A252339.P13963767591304601727

/-! ## A252339.P18307893740326992420

`A255023(1-(n-2*n))/cot(atan(2))`
-/

namespace A252339.P18307893740326992420
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A255023 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A252339.P18307893740326992420

/-! ## A252339.P15734168495887429262

`record[2*A255023(A134478(n))]`
-/

namespace A252339.P15734168495887429262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255023 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252339.P15734168495887429262

/-! ## A252339.P6938330935207319244

`A255023(n+1)+A255023(Δ[n²]-n)`
-/

namespace A252339.P6938330935207319244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255023 (n + 1) + A255023 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A252339.P6938330935207319244

/-! ## A252339.P11695799970042759067

`A255023(n+1)+record[A255023(A134478(n))]`
-/

namespace A252339.P11695799970042759067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255023 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255023 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252339.P11695799970042759067

/-! ## A252339.P5557017093695711413

`record[2*A255023(A143182(n))]`
-/

namespace A252339.P5557017093695711413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255023 (A143182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252339.P5557017093695711413

/-! ## A252339.P12151965720574882932

`A255023(n+1)+record[A255023(A143182(n))]`
-/

namespace A252339.P12151965720574882932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255023 (A143182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255023 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252339.P12151965720574882932

/-!
# A252340: Number of (n+2)X(5+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252340, there is no canonical definition to state claims against.
-/

/-! ## A252340.P7485656265039536332

`2*A255024(1+n)`
-/

namespace A252340.P7485656265039536332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255024 (1 + n)

end

end A252340.P7485656265039536332

/-! ## A252340.P17113158874267696327

`record[2*A255024(A134478(n))]`
-/

namespace A252340.P17113158874267696327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255024 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252340.P17113158874267696327

/-! ## A252340.P8923683998079918163

`A255024(n+1)+A255024(n+1)`
-/

namespace A252340.P8923683998079918163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255024 (n + 1) + A255024 (n + 1)

end

end A252340.P8923683998079918163

/-! ## A252340.P6965592377655896035

`4*A255024(Δ[n²]-n)/2`
-/

namespace A252340.P6965592377655896035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A255024 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2

end

end A252340.P6965592377655896035

/-! ## A252340.P4840116001739313736

`2*A255027(A374005(n+1))`
-/

namespace A252340.P4840116001739313736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255027 (A374005 (n + 1)).toNat

end

end A252340.P4840116001739313736

/-!
# A252341: Number of (n+2)X(6+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252341, there is no canonical definition to state claims against.
-/

/-! ## A252341.P12112420374002192547

`2*A255025(1+n)`
-/

namespace A252341.P12112420374002192547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255025 (1 + n)

end

end A252341.P12112420374002192547

/-! ## A252341.P5966731939217376271

`record[2*A255025(A134478(n))]`
-/

namespace A252341.P5966731939217376271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255025 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252341.P5966731939217376271

/-! ## A252341.P10183507520037778333

`A255025(n+1)+A255025(n+1)`
-/

namespace A252341.P10183507520037778333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255025 (n + 1) + A255025 (n + 1)

end

end A252341.P10183507520037778333

/-! ## A252341.P17821065682891596134

`A252343(A374007(n+1))`
-/

namespace A252341.P17821065682891596134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252343 (A374007 (n + 1)).toNat

end

end A252341.P17821065682891596134

/-!
# A252342: Number of (n+2)X(7+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252342, there is no canonical definition to state claims against.
-/

/-! ## A252342.P15426864946581070543

`2*A255026(1+n)`
-/

namespace A252342.P15426864946581070543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255026 (1 + n)

end

end A252342.P15426864946581070543

/-! ## A252342.P12358492503826222469

`A255026(n+1)+A255026(n+1)`
-/

namespace A252342.P12358492503826222469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255026 (n + 1) + A255026 (n + 1)

end

end A252342.P12358492503826222469

/-! ## A252342.P8941466407645150081

`2*A255027(A374008(n+1))`
-/

namespace A252342.P8941466407645150081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255027 (A374008 (n + 1)).toNat

end

end A252342.P8941466407645150081

/-! ## A252342.P8593574936646534565

`A252343(A167487(n+5))`
-/

namespace A252342.P8593574936646534565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252343 (A167487 (n + 5)).toNat

end

end A252342.P8593574936646534565

/-! ## A252342.P17713644198991327535

`A252343(A374008(n+1))`
-/

namespace A252342.P17713644198991327535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252343 (A374008 (n + 1)).toNat

end

end A252342.P17713644198991327535

/-!
# A252343: T(n,k)=Number of (n+2)X(k+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252343, there is no canonical definition to state claims against.
-/

/-! ## A252343.P17137671560952724701

`2*A255027(n+1)`
-/

namespace A252343.P17137671560952724701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255027 (n + 1)

end

end A252343.P17137671560952724701

/-! ## A252343.P10925732240226292699

`A255027(∑[n+1]-∑[n])+A255027(n+1)`
-/

namespace A252343.P10925732240226292699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j) + A255027 (n + 1)

end

end A252343.P10925732240226292699

/-! ## A252343.P12955187963555665642

`A255027(n+1)+A255027(n+1)%A252065(n+1)`
-/

namespace A252343.P12955187963555665642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (n + 1) + Int.tmod (A255027 (n + 1)) (A252065 (n + 1))

end

end A252343.P12955187963555665642

/-! ## A252343.P2068182316559523239

`A004277(A255027(n+1))`
-/

namespace A252343.P2068182316559523239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A255027 (n + 1)).toNat

end

end A252343.P2068182316559523239

/-!
# A252344: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 8.

The programs for A252344, there is no canonical definition to state claims against.
-/

/-! ## A252344.P10394341772171590008

`A252352(∑[4*n]+1)`
-/

namespace A252344.P10394341772171590008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252344.P10394341772171590008

/-! ## A252344.P13795215073190434581

`record[gcd(A049581(n), A252352(n+1))]`
-/

namespace A252344.P13795215073190434581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A252352 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252344.P13795215073190434581

/-!
# A252345: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 8.

The programs for A252345, there is no canonical definition to state claims against.
-/

/-! ## A252345.P12689514113276686991

`A252352(∑[n]+1)`
-/

namespace A252345.P12689514113276686991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252345.P12689514113276686991

/-! ## A252345.P5167341503529618957

`record[A252352(A246276(n+1))]`
-/

namespace A252345.P5167341503529618957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252345.P5167341503529618957

/-! ## A252345.P3546088859663663680

`record[gcd(A014473(n), A252352(n+1))]`
-/

namespace A252345.P3546088859663663680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A252352 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252345.P3546088859663663680

/-!
# A252346: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 8.

The programs for A252346, there is no canonical definition to state claims against.
-/

/-! ## A252346.P5866083554831818626

`A252352(∑[n+1]+2)`
-/

namespace A252346.P5866083554831818626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252346.P5866083554831818626

/-! ## A252346.P14406178451740396314

`record[A252352(A117142(n+2))]`
-/

namespace A252346.P14406178451740396314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252346.P14406178451740396314

/-!
# A252347: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 8.

The programs for A252347, there is no canonical definition to state claims against.
-/

/-! ## A252347.P2665769366750734489

`A252352(∑[n+2]+4)`
-/

namespace A252347.P2665769366750734489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252347.P2665769366750734489

/-!
# A252348: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 8.

The programs for A252348, there is no canonical definition to state claims against.
-/

/-! ## A252348.P7613497660286320531

`A252352(A374004(n+1))`
-/

namespace A252348.P7613497660286320531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A374004 (n + 1)).toNat

end

end A252348.P7613497660286320531

/-! ## A252348.P5551686055291203583

`A252352(A141214(n+1))`
-/

namespace A252348.P5551686055291203583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A141214 (n + 1)).toNat

end

end A252348.P5551686055291203583

/-!
# A252349: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 8.

The programs for A252349, there is no canonical definition to state claims against.
-/

/-! ## A252349.P15281436836118118083

`A252352(A374005(n+1))`
-/

namespace A252349.P15281436836118118083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A374005 (n + 1)).toNat

end

end A252349.P15281436836118118083

/-!
# A252350: Number of (n+2) X (6+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 3 5 6 or 8 and every 3 X 3 diagonal and antidiagonal sum equal to 0 3 5 6 or 8.

The programs for A252350, there is no canonical definition to state claims against.
-/

/-! ## A252350.P14526745139742481861

`A252352(A374007(n+1))`
-/

namespace A252350.P14526745139742481861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A374007 (n + 1)).toNat

end

end A252350.P14526745139742481861

/-!
# A252351: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 8.

The programs for A252351, there is no canonical definition to state claims against.
-/

/-! ## A252351.P10972160235530100200

`A252352(A374008(n+1))`
-/

namespace A252351.P10972160235530100200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A374008 (n + 1)).toNat

end

end A252351.P10972160235530100200

/-!
# A252354: Number of Motzkin paths of length n with no level steps at height 2.

The programs for A252354, there is no canonical definition to state claims against.
-/

/-! ## A252354.P903382407364075109

`A317097(n+1)+A102683(A000111(n))`
-/

namespace A252354.P903382407364075109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317097 (n + 1) + A102683 (A000111 n).toNat

end

end A252354.P903382407364075109

/-! ## A252354.P3255982610443037344

`A317097(n+1)+A165878(A179006(n))`
-/

namespace A252354.P3255982610443037344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317097 (n + 1) + A165878 (A179006 n).toNat

end

end A252354.P3255982610443037344

/-! ## A252354.P14729847535055741298

`A179391(A000045(n+2))+A085748(n)`
-/

namespace A252354.P14729847535055741298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179391 (A000045 (n + 2)).toNat + A085748 n

end

end A252354.P14729847535055741298

/-! ## A252354.P15417192959963100233

`A317097(n+1)+A121373(A038718(2*n+5))`
-/

namespace A252354.P15417192959963100233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317097 (n + 1) + A121373 (A038718 (2 * n + 5)).toNat

end

end A252354.P15417192959963100233

/-! ## A252354.P2667801041804719269

`A086016(n)+A102683(A166536(n))+A085748(n)`
-/

namespace A252354.P2667801041804719269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086016 n + (A102683 (A166536 n).toNat + A085748 n)

end

end A252354.P2667801041804719269

/-!
# A252355: a(n) = sum_{k = 0..n-1} (-1)^k*C(2*n-1,k)*C(n-1,k), n>0.

The programs for A252355, the canonical program `A252355.P7354875656794667050` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252355 has offset 1).

The definition of A252355 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(2*(n+1)-1, #)*C(n, #)]` (program `A252355.P7354875656794667050`, by `A252355.P7354875656794667050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A252355.P7354875656794667050

`∑{#}[n, (-1)^#*C(2*(n+1)-1, #)*C(n, #)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A252355

/-- `∑{#}[n, (-1)^#*C(2*(n+1)-1, #)*C(n, #)]` -/
def P7354875656794667050.Spec : Prop :=
  ∀ n, P7354875656794667050.a n = A252355 (n + 1)

theorem P7354875656794667050.correct : P7354875656794667050.Spec := by
  intro n
  simp only [A252355, Nat.add_sub_cancel]

end A252355

/-! ## A252355.P18403716305321872020

`A098593(∑[9*n+1])`
-/

namespace A252355.P18403716305321872020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098593 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252355.P18403716305321872020

namespace A252355

/-- `A098593(∑[9*n+1])` -/
def P18403716305321872020.Spec : Prop :=
  ∀ n, P18403716305321872020.a n = A252355 (n + 1)

end A252355

/-! ## A252355.P17639004114784897276

`A117352(∑[A017221(n)])`
-/

namespace A252355.P17639004114784897276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117352 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A252355.P17639004114784897276

namespace A252355

/-- `A117352(∑[A017221(n)])` -/
def P17639004114784897276.Spec : Prop :=
  ∀ n, P17639004114784897276.a n = A252355 (n + 1)

end A252355

/-! ## A252355.P15564767349658742815

`A117355(A077591(n+1))`
-/

namespace A252355.P15564767349658742815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117355 (A077591 (n + 1)).toNat

end

end A252355.P15564767349658742815

namespace A252355

/-- `A117355(A077591(n+1))` -/
def P15564767349658742815.Spec : Prop :=
  ∀ n, P15564767349658742815.a n = A252355 (n + 1)

end A252355

/-!
# A252357: Numbers n of the form p^m where p is prime and m>0 such that the digit sum of n is p.

The programs for A252357, there is no canonical definition to state claims against.
-/

/-! ## A252357.P8140721526878356158

`∩[A067077(n+1), A111747(n+1)]`
-/

namespace A252357.P8140721526878356158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252357.P8140721526878356158

/-! ## A252357.P5416059165255978937

`∩[A023106(n), A212667(n+1)]`
-/

namespace A252357.P5416059165255978937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252357.P5416059165255978937

/-! ## A252357.P10542300340882752771

`∩[A067077(n+1), A212667(n+1)]`
-/

namespace A252357.P10542300340882752771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252357.P10542300340882752771

/-! ## A252357.P5514436792080377265

`∩[A111747(n+1), A212667(n+1)]`
-/

namespace A252357.P5514436792080377265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252357.P5514436792080377265

/-!
# A252358: Smallest prime p such that (2^n)^(p-1) == 1 (mod p^2), i.e., smallest Wieferich prime to base 2^n.

The programs for A252358, there is no canonical definition to state claims against.
-/

/-! ## A252358.P11965145541992550872

`A247072(2^n)`
-/

namespace A252358.P11965145541992550872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247072 (2 ^ n)

end

end A252358.P11965145541992550872

/-!
# A252361: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252361, there is no canonical definition to state claims against.
-/

/-! ## A252361.P17030996354492464781

`A252369(∑[4*n]+1)`
-/

namespace A252361.P17030996354492464781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252361.P17030996354492464781

/-! ## A252361.P14616591941883098468

`record[A003982(n)*A252369(n+1)]`
-/

namespace A252361.P14616591941883098468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252361.P14616591941883098468

/-! ## A252361.P10019825038391726096

`record[gcd(A114327(n), A252369(n+1))]`
-/

namespace A252361.P10019825038391726096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A252369 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252361.P10019825038391726096

/-!
# A252362: Number of (n+2) X (1+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252362, there is no canonical definition to state claims against.
-/

/-! ## A252362.P13420123751024886628

`A252369(∑[n]+1)`
-/

namespace A252362.P13420123751024886628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252362.P13420123751024886628

/-! ## A252362.P4123575656211152415

`record[A010054(n)*A252369(n+1)]`
-/

namespace A252362.P4123575656211152415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252362.P4123575656211152415

/-! ## A252362.P14098860172791170174

`record[A252369(n+1)/A063007(n)]`
-/

namespace A252362.P14098860172791170174
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252369 (n + 1) : ℚ) / (A063007 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252362.P14098860172791170174

/-! ## A252362.P903139158443260506

`record[A252369(n+1)/A008292(n+1)]`
-/

namespace A252362.P903139158443260506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252369 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252362.P903139158443260506

/-!
# A252363: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252363, there is no canonical definition to state claims against.
-/

/-! ## A252363.P17805596238584604233

`2*(A252263(n+1)-A255021(n+1))`
-/

namespace A252363.P17805596238584604233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A252263 (n + 1) - A255021 (n + 1))

end

end A252363.P17805596238584604233

/-! ## A252363.P4188737192351815747

`A252263(n+1)+A252263(n+1)-A252337(n+1)`
-/

namespace A252363.P4188737192351815747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252263 (n + 1) + (A252263 (n + 1) - A252337 (n + 1))

end

end A252363.P4188737192351815747

/-! ## A252363.P12874518119821714363

`2*A252263(n+1)-A252337(n+1)`
-/

namespace A252363.P12874518119821714363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252263 (n + 1) - A252337 (n + 1)

end

end A252363.P12874518119821714363

/-! ## A252363.P899832799363932356

`A252369(∑[n+1]+2)`
-/

namespace A252363.P899832799363932356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252363.P899832799363932356

/-! ## A252363.P831819223112226946

`record[A252369(A133263(abs(1-n)))]`
-/

namespace A252363.P831819223112226946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252363.P831819223112226946

/-!
# A252364: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252364, there is no canonical definition to state claims against.
-/

/-! ## A252364.P2389510976152796735

`2*A252264(n+1)-A252338(n+1)`
-/

namespace A252364.P2389510976152796735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252264 (n + 1) - A252338 (n + 1)

end

end A252364.P2389510976152796735

/-! ## A252364.P15485218072858776249

`A252369(∑[n+2]+4)`
-/

namespace A252364.P15485218072858776249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252364.P15485218072858776249

/-!
# A252365: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252365, there is no canonical definition to state claims against.
-/

/-! ## A252365.P5611080611590315350

`A252369(A052905(n)+9)`
-/

namespace A252365.P5611080611590315350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A052905 n + 9).toNat

end

end A252365.P5611080611590315350

/-! ## A252365.P12149641502372316780

`A252369(A141214(n+1))`
-/

namespace A252365.P12149641502372316780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A141214 (n + 1)).toNat

end

end A252365.P12149641502372316780

/-!
# A252366: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252366, there is no canonical definition to state claims against.
-/

/-! ## A252366.P14015662893025775678

`A252369(A167499(n+3))`
-/

namespace A252366.P14015662893025775678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A167499 (n + 3)).toNat

end

end A252366.P14015662893025775678

/-! ## A252366.P1895569540939789927

`A252369(Δ[A264443(n)])`
-/

namespace A252366.P1895569540939789927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (f1 (n + 1) - f1 n).toNat

end

end A252366.P1895569540939789927

/-!
# A252367: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252367, there is no canonical definition to state claims against.
-/

/-! ## A252367.P4439176895288568979

`A252369(A166136(n+4))`
-/

namespace A252367.P4439176895288568979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A166136 (n + 4)).toNat

end

end A252367.P4439176895288568979

/-! ## A252367.P15729338435397014984

`A252369(A374007(n+1))`
-/

namespace A252367.P15729338435397014984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A374007 (n + 1)).toNat

end

end A252367.P15729338435397014984

/-!
# A252368: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252368, there is no canonical definition to state claims against.
-/

/-! ## A252368.P13974875314797333694

`A252369(A056119(n)+28)`
-/

namespace A252368.P13974875314797333694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A056119 n + 28).toNat

end

end A252368.P13974875314797333694

/-! ## A252368.P14857933299382175382

`A252369(A374008(n+1))`
-/

namespace A252368.P14857933299382175382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A374008 (n + 1)).toNat

end

end A252368.P14857933299382175382

/-!
# A252370: a(n) = A243055(A251726(n)).

The programs for A252370, the canonical program `A252370.P12784444514240699439` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252370 has offset 1).

The definition of A252370 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243055, A251726, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A252370.P12784444514240699439

`A243055(A251726(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A252370

/-- `A243055(A251726(n+1))` -/
def P12784444514240699439.Spec : Prop :=
  ∀ n, P12784444514240699439.a n = A252370 (n + 1)

theorem P12784444514240699439.correct : P12784444514240699439.Spec := by
  intro n
  simp only [A252370, Nat.add_sub_cancel]

end A252370

/-! ## A252370.P14835935189038209657

`A242411(∏{d}[A251726(1+n), A020639(#)])`
-/

namespace A252370.P14835935189038209657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251726 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (∏ d ∈ Nat.divisors (f1 n).natAbs, A020639 d).toNat

end

end A252370.P14835935189038209657

namespace A252370

/-- `A242411(∏{d}[A251726(1+n), A020639(#)])` -/
def P14835935189038209657.Spec : Prop :=
  ∀ n, P14835935189038209657.a n = A252370 (n + 1)

end A252370

/-! ## A252370.P10402244249565159505

`A286470(A251726(n+1)^2)`
-/

namespace A252370.P10402244249565159505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (A251726 (n + 1) ^ 2).toNat

end

end A252370.P10402244249565159505

namespace A252370

/-- `A286470(A251726(n+1)^2)` -/
def P10402244249565159505.Spec : Prop :=
  ∀ n, P10402244249565159505.a n = A252370 (n + 1)

end A252370

/-! ## A252370.P9816318685316896235

`A242411(A251726(n+1))`
-/

namespace A252370.P9816318685316896235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (A251726 (n + 1)).toNat

end

end A252370.P9816318685316896235

namespace A252370

/-- `A242411(A251726(n+1))` -/
def P9816318685316896235.Spec : Prop :=
  ∀ n, P9816318685316896235.a n = A252370 (n + 1)

end A252370

/-! ## A252370.P5624096054697579053

`A269249(A305498(n+1))`
-/

namespace A252370.P5624096054697579053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269249 (A305498 (n + 1)).toNat

end

end A252370.P5624096054697579053

namespace A252370

/-- `A269249(A305498(n+1))` -/
def P5624096054697579053.Spec : Prop :=
  ∀ n, P5624096054697579053.a n = A252370 (n + 1)

end A252370

/-!
# A252371: a(n) = A243055(A251727(n)).

The programs for A252371, the canonical program `A252371.P7024407539575237769` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252371 has offset 1).

The definition of A252371 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243055, A251727, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A252371.P7024407539575237769

`A243055(A251727(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A252371

/-- `A243055(A251727(n+1))` -/
def P7024407539575237769.Spec : Prop :=
  ∀ n, P7024407539575237769.a n = A252371 (n + 1)

theorem P7024407539575237769.correct : P7024407539575237769.Spec := by
  intro n
  simp only [A252371, Nat.add_sub_cancel]

end A252371

/-! ## A252371.P10767744002937016215

`A243056(∏{p}[A251727(n+1), #])`
-/

namespace A252371.P10767744002937016215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A252371.P10767744002937016215

namespace A252371

/-- `A243056(∏{p}[A251727(n+1), #])` -/
def P10767744002937016215.Spec : Prop :=
  ∀ n, P10767744002937016215.a n = A252371 (n + 1)

end A252371

/-!
# A252372: Characteristic function for A251726: a(n) = 1 if n > 1 and gpf(n) < lpf(n)^2, otherwise 0; here lpf(n) and gpf(n) (least and greatest prime factor of n) are sequences A020639(n) and A006530(n).

The programs for A252372, the canonical program `A252372.P15131646275609339437` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252372 has offset 1).

The definition of A252372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252372.P15131646275609339437

`Δ[fp[A251726(n+1)]]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A252372

/-- `Δ[fp[A251726(n+1)]]` -/
def P15131646275609339437.Spec : Prop :=
  ∀ n, P15131646275609339437.a n = A252372 (n + 1)

theorem P15131646275609339437.correct : P15131646275609339437.Spec := by
  intro n
  simp only [A252372, Nat.add_sub_cancel]

end A252372

/-! ## A252372.P5528588559661309754

`char[fp[A252373(n+1)]]`
-/

namespace A252372.P5528588559661309754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252373 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A252372.P5528588559661309754

namespace A252372

/-- `char[fp[A252373(n+1)]]` -/
def P5528588559661309754.Spec : Prop :=
  ∀ n, (P5528588559661309754.a n : ℤ) = A252372 (n + 1)

end A252372

/-! ## A252372.P9701821858522186055

`char[A251726(1+n)-1]`
-/

namespace A252372.P9701821858522186055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251726 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A252372.P9701821858522186055

namespace A252372

/-- `char[A251726(1+n)-1]` -/
def P9701821858522186055.Spec : Prop :=
  ∀ n, (P9701821858522186055.a n : ℤ) = A252372 (n + 1)

end A252372

/-! ## A252372.P14178327048278762156

`floor(sqrt(sqrt(A252374(1+n))))`
-/

namespace A252372.P14178327048278762156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A252374 (1 + n) : ℝ))⌋

end

end A252372.P14178327048278762156

namespace A252372

/-- `floor(sqrt(sqrt(A252374(1+n))))` -/
def P14178327048278762156.Spec : Prop :=
  ∀ n, P14178327048278762156.a n = A252372 (n + 1)

end A252372

/-! ## A252372.P7977167047099669390

`(A252757(1+n)-1)%2`
-/

namespace A252372.P7977167047099669390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252757 (1 + n) - 1) 2

end

end A252372.P7977167047099669390

namespace A252372

/-- `(A252757(1+n)-1)%2` -/
def P7977167047099669390.Spec : Prop :=
  ∀ n, P7977167047099669390.a n = A252372 (n + 1)

end A252372

/-! ## A252372.P18246263263550791251

`1-a(A284258(n+1))` with `a(0)=0`
-/

namespace A252372.P18246263263550791251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (A284258 (n + 1)).toNat

end

end A252372.P18246263263550791251

namespace A252372

/-- `1-a(A284258(n+1))` -/
def P18246263263550791251.Spec : Prop :=
  ∀ n, P18246263263550791251.a n = A252372 (n + 1)

end A252372

/-! ## A252372.P11972642710372654794

`round((A284255(n+1)-1)/(n+1))`
-/

namespace A252372.P11972642710372654794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A284255 (n + 1) - 1 : ℚ) / (n + 1 : ℚ))

end

end A252372.P11972642710372654794

namespace A252372

/-- `round((A284255(n+1)-1)/(n+1))` -/
def P11972642710372654794.Spec : Prop :=
  ∀ n, P11972642710372654794.a n = A252372 (n + 1)

end A252372

/-! ## A252372.P9211291850874961839

`C(C(n, C(n, n²)), A284252(n+1))`
-/

namespace A252372.P9211291850874961839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n (Nat.choose n (n ^ 2))) (A284252 (n + 1)).toNat

end

end A252372.P9211291850874961839

namespace A252372

/-- `C(C(n, C(n, n²)), A284252(n+1))` -/
def P9211291850874961839.Spec : Prop :=
  ∀ n, (P9211291850874961839.a n : ℤ) = A252372 (n + 1)

end A252372

/-! ## A252372.P5567395285084768788

`A252374(2^A252374(n+1))`
-/

namespace A252372.P5567395285084768788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252374 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A252374 (n + 1) : ℤ))).toNat

end

end A252372.P5567395285084768788

namespace A252372

/-- `A252374(2^A252374(n+1))` -/
def P5567395285084768788.Spec : Prop :=
  ∀ n, P5567395285084768788.a n = A252372 (n + 1)

end A252372

/-! ## A252372.P5095364056618016868

`A284254(n+1)%A006530(n+1)`
-/

namespace A252372.P5095364056618016868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284254 (n + 1)) (A006530 (n + 1))

end

end A252372.P5095364056618016868

namespace A252372

/-- `A284254(n+1)%A006530(n+1)` -/
def P5095364056618016868.Spec : Prop :=
  ∀ n, P5095364056618016868.a n = A252372 (n + 1)

end A252372

/-! ## A252372.P843955202081434342

`ceil(A252374(n+1)/A066048(n+1))`
-/

namespace A252372.P843955202081434342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A252374 (n + 1) : ℚ) / (A066048 (n + 1) : ℚ)⌉

end

end A252372.P843955202081434342

namespace A252372

/-- `ceil(A252374(n+1)/A066048(n+1))` -/
def P843955202081434342.Spec : Prop :=
  ∀ n, P843955202081434342.a n = A252372 (n + 1)

end A252372

/-! ## A252372.P2546342030720349865

`ceil(A252374(n+1)/A088835(n+1))`
-/

namespace A252372.P2546342030720349865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A252374 (n + 1) : ℚ) / (A088835 (n + 1) : ℚ)⌉

end

end A252372.P2546342030720349865

namespace A252372

/-- `ceil(A252374(n+1)/A088835(n+1))` -/
def P2546342030720349865.Spec : Prop :=
  ∀ n, P2546342030720349865.a n = A252372 (n + 1)

end A252372

/-! ## A252372.P12052013499212973810

`ceil(A252374(n+1)/A130065(n+1))`
-/

namespace A252372.P12052013499212973810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A252374 (n + 1) : ℚ) / (A130065 (n + 1) : ℚ)⌉

end

end A252372.P12052013499212973810

namespace A252372

/-- `ceil(A252374(n+1)/A130065(n+1))` -/
def P12052013499212973810.Spec : Prop :=
  ∀ n, P12052013499212973810.a n = A252372 (n + 1)

end A252372

/-! ## A252372.P11814362170682977154

`ceil(A252374(n+1)/A251727(n+1))`
-/

namespace A252372.P11814362170682977154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A252374 (n + 1) : ℚ) / (A251727 (n + 1) : ℚ)⌉

end

end A252372.P11814362170682977154

namespace A252372

/-- `ceil(A252374(n+1)/A251727(n+1))` -/
def P11814362170682977154.Spec : Prop :=
  ∀ n, P11814362170682977154.a n = A252372 (n + 1)

end A252372

/-! ## A252372.P4252171308536095490

`A057427(n)-A001221(A284252(n+1))`
-/

namespace A252372.P4252171308536095490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A001221 (A284252 (n + 1)).toNat

end

end A252372.P4252171308536095490

namespace A252372

/-- `A057427(n)-A001221(A284252(n+1))` -/
def P4252171308536095490.Spec : Prop :=
  ∀ n, P4252171308536095490.a n = A252372 (n + 1)

end A252372

/-! ## A252372.P2481457588717726328

`A001221(A001222(A252374(n+1)+1)+1)`
-/

namespace A252372.P2481457588717726328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001222 (A252374 (n + 1) + 1).toNat + 1).toNat

end

end A252372.P2481457588717726328

namespace A252372

/-- `A001221(A001222(A252374(n+1)+1)+1)` -/
def P2481457588717726328.Spec : Prop :=
  ∀ n, P2481457588717726328.a n = A252372 (n + 1)

end A252372

/-! ## A252372.P16686136850672795648

`1-A057427(A284252(n+1)-A057427(n))`
-/

namespace A252372.P16686136850672795648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 (A284252 (n + 1) - A057427 n).toNat

end

end A252372.P16686136850672795648

namespace A252372

/-- `1-A057427(A284252(n+1)-A057427(n))` -/
def P16686136850672795648.Spec : Prop :=
  ∀ n, P16686136850672795648.a n = A252372 (n + 1)

end A252372

/-! ## A252372.P3319565714794377949

`1-A057427(A284254(n+1)-A057427(n))`
-/

namespace A252372.P3319565714794377949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 (A284254 (n + 1) - A057427 n).toNat

end

end A252372.P3319565714794377949

namespace A252372

/-- `1-A057427(A284254(n+1)-A057427(n))` -/
def P3319565714794377949.Spec : Prop :=
  ∀ n, P3319565714794377949.a n = A252372 (n + 1)

end A252372

/-! ## A252372.P11463097781258873154

`char[A284255(2+n)-1]`
-/

namespace A252372.P11463097781258873154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284255 (2 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A252372.P11463097781258873154

namespace A252372

/-- `char[A284255(2+n)-1]` -/
def P11463097781258873154.Spec : Prop :=
  ∀ n, (P11463097781258873154.a n : ℤ) = A252372 (n + 1)

end A252372

/-! ## A252372.P16909819607491600682

`A057427(n)-A057427(n*A284256(n+1))`
-/

namespace A252372.P16909819607491600682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A057427 ((n : ℤ) * A284256 (n + 1)).toNat

end

end A252372.P16909819607491600682

namespace A252372

/-- `A057427(n)-A057427(n*A284256(n+1))` -/
def P16909819607491600682.Spec : Prop :=
  ∀ n, P16909819607491600682.a n = A252372 (n + 1)

end A252372

/-!
# A252373: Partial sums of A252372, inverse function for A251726.

The programs for A252373, the canonical program `A252373.P3426254770351729499` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252373 has offset 1).

The definition of A252373 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252372, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A252373.P3426254770351729499

`A252372(n+1)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A252373

/-- `A252372(n+1)+a(n-1)` -/
def P3426254770351729499.Spec : Prop :=
  ∀ n, P3426254770351729499.a n = A252373 (n + 1)

theorem P3426254770351729499.correct : P3426254770351729499.Spec := by
  intro n
  simp only [A252373, Nat.add_sub_cancel]

end A252373

/-! ## A252373.P11509758613442584417

`∑[A252372(1+n)]`
-/

namespace A252373.P11509758613442584417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252372 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P11509758613442584417

namespace A252373

/-- `∑[A252372(1+n)]` -/
def P11509758613442584417.Spec : Prop :=
  ∀ n, P11509758613442584417.a n = A252373 (n + 1)

end A252373

/-! ## A252373.P13270370982403410177

`fp[A251726(n+1)-1]`
-/

namespace A252373.P13270370982403410177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251726 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A252373.P13270370982403410177

namespace A252373

/-- `fp[A251726(n+1)-1]` -/
def P13270370982403410177.Spec : Prop :=
  ∀ n, (P13270370982403410177.a n : ℤ) = A252373 (n + 1)

end A252373

/-! ## A252373.P599274170432394491

`∑[char[A251726(1+n)-1]]`
-/

namespace A252373.P599274170432394491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251726 (1 + n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P599274170432394491

namespace A252373

/-- `∑[char[A251726(1+n)-1]]` -/
def P599274170432394491.Spec : Prop :=
  ∀ n, (P599274170432394491.a n : ℤ) = A252373 (n + 1)

end A252373

/-! ## A252373.P14295268318989738506

`∑[(A252757(1+n)-1)%2]`
-/

namespace A252373.P14295268318989738506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252757 (1 + n) - 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P14295268318989738506

namespace A252373

/-- `∑[(A252757(1+n)-1)%2]` -/
def P14295268318989738506.Spec : Prop :=
  ∀ n, P14295268318989738506.a n = A252373 (n + 1)

end A252373

/-! ## A252373.P1678672121127634849

`∑[1-a(A284258(n+1))]` with `a(0)=0`
-/

namespace A252373.P1678672121127634849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (A284258 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P1678672121127634849

namespace A252373

/-- `∑[1-a(A284258(n+1))]` -/
def P1678672121127634849.Spec : Prop :=
  ∀ n, P1678672121127634849.a n = A252373 (n + 1)

end A252373

/-! ## A252373.P8741200736135742687

`∑[round(A284252(n+1)^-1)]-1`
-/

namespace A252373.P8741200736135742687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A284252 (n + 1) : ℚ) ^ (-1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A252373.P8741200736135742687

namespace A252373

/-- `∑[round(A284252(n+1)^-1)]-1` -/
def P8741200736135742687.Spec : Prop :=
  ∀ n, P8741200736135742687.a n = A252373 (n + 1)

end A252373

/-! ## A252373.P8607392632647261511

`n-∑[A001222(A284252(n+1))]`
-/

namespace A252373.P8607392632647261511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P8607392632647261511

namespace A252373

/-- `n-∑[A001222(A284252(n+1))]` -/
def P8607392632647261511.Spec : Prop :=
  ∀ n, P8607392632647261511.a n = A252373 (n + 1)

end A252373

/-! ## A252373.P4586256338909459433

`n-∑[A016760(n)%A284252(n+1)]`
-/

namespace A252373.P4586256338909459433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A284252 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P4586256338909459433

namespace A252373

/-- `n-∑[A016760(n)%A284252(n+1)]` -/
def P4586256338909459433.Spec : Prop :=
  ∀ n, P4586256338909459433.a n = A252373 (n + 1)

end A252373

/-! ## A252373.P12578234802122320464

`n-∑[A017382(n)%A284252(n+1)]`
-/

namespace A252373.P12578234802122320464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017382 n) (A284252 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P12578234802122320464

namespace A252373

/-- `n-∑[A017382(n)%A284252(n+1)]` -/
def P12578234802122320464.Spec : Prop :=
  ∀ n, P12578234802122320464.a n = A252373 (n + 1)

end A252373

/-! ## A252373.P17787375987924500592

`n-∑[A000127(n+1)%A284252(n+1)]`
-/

namespace A252373.P17787375987924500592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000127 (n + 1)) (A284252 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P17787375987924500592

namespace A252373

/-- `n-∑[A000127(n+1)%A284252(n+1)]` -/
def P17787375987924500592.Spec : Prop :=
  ∀ n, P17787375987924500592.a n = A252373 (n + 1)

end A252373

/-! ## A252373.P9206825563263541617

`∑[A001221(A001222(A252374(n+1)+1)+1)]`
-/

namespace A252373.P9206825563263541617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001222 (A252374 (n + 1) + 1).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P9206825563263541617

namespace A252373

/-- `∑[A001221(A001222(A252374(n+1)+1)+1)]` -/
def P9206825563263541617.Spec : Prop :=
  ∀ n, P9206825563263541617.a n = A252373 (n + 1)

end A252373

/-! ## A252373.P5490452175063067227

`∑[char[A284255(n+3)-1]]`
-/

namespace A252373.P5490452175063067227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284255 (n + 3) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P5490452175063067227

namespace A252373

/-- `∑[char[A284255(n+3)-1]]` -/
def P5490452175063067227.Spec : Prop :=
  ∀ n, (P5490452175063067227.a n : ℤ) = A252373 (n + 1)

end A252373

/-!
# A252374: a(n) = exponent k for the smallest r such that r^k <= lpf(n) and gpf(n) < r^(k+1), for some k >= 0, where lpf and gpf (least and greatest prime factor of n) are given by A020639(n) and A006530(n).

The programs for A252374, there is no canonical definition to state claims against.
-/

/-! ## A252374.P4328565407291176478

`A252372(n+1)*A389616(n+1)`
-/

namespace A252374.P4328565407291176478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252372 (n + 1) * A389616 (n + 1)

end

end A252374.P4328565407291176478

/-! ## A252374.P2197523193353154060

`A238845(n)%A020639(A118870(n))`
-/

namespace A252374.P2197523193353154060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238845 n) (A020639 (A118870 n).toNat)

end

end A252374.P2197523193353154060

/-! ## A252374.P13410008461662867270

`A093873(n+1)%A020639(A118870(n))`
-/

namespace A252374.P13410008461662867270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093873 (n + 1)) (A020639 (A118870 n).toNat)

end

end A252374.P13410008461662867270

/-! ## A252374.P7937003879617811329

`A075119(n+1)%A020639(A284482(n))`
-/

namespace A252374.P7937003879617811329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075119 (n + 1)) (A020639 (A284482 n).toNat)

end

end A252374.P7937003879617811329

/-! ## A252374.P9367946487906672959

`A194218(A097229(n))%A331590(n+1)`
-/

namespace A252374.P9367946487906672959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194218 (A097229 n).toNat) (A331590 (n + 1))

end

end A252374.P9367946487906672959

/-!
# A252375: a(n) = smallest r such that r^k <= lpf(n) and gpf(n) < r^(k+1), for some k >= 0, where lpf and gpf (least and greatest prime factor of n) are given by A020639(n) and A006530(n).

The programs for A252375, there is no canonical definition to state claims against.
-/

/-! ## A252375.P14468643817077977618

`A251725(1+n)+A010055(n+1)`
-/

namespace A252375.P14468643817077977618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (1 + n) + A010055 (n + 1)

end

end A252375.P14468643817077977618

/-! ## A252375.P3291745912512813958

`A251725(n+1)+A000007(A046665(n+1))`
-/

namespace A252375.P3291745912512813958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (n + 1) + A000007 (A046665 (n + 1)).toNat

end

end A252375.P3291745912512813958

/-! ## A252375.P2851243198738916226

`A251725(1+n)+A128229(A034444(n+1))`
-/

namespace A252375.P2851243198738916226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (1 + n) + A128229 (A034444 (n + 1)).toNat

end

end A252375.P2851243198738916226

/-! ## A252375.P9140201719646649340

`A251725(n+1)+A000007(A251725(n+1)-1)`
-/

namespace A252375.P9140201719646649340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (n + 1) + A000007 (A251725 (n + 1) - 1).toNat

end

end A252375.P9140201719646649340

/-! ## A252375.P16848505600369829496

`A251725(n+1)+∏{p}[A251725(n+1), A104488(#)]`
-/

namespace A252375.P16848505600369829496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A104488 p

end

end A252375.P16848505600369829496

/-! ## A252375.P13936781365209326580

`A233583(1+A251725(n+1))`
-/

namespace A252375.P13936781365209326580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (1 + A251725 (n + 1)).toNat

end

end A252375.P13936781365209326580

/-! ## A252375.P14722411241511842967

`A000196(A251725(n+1)²+3)`
-/

namespace A252375.P14722411241511842967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A251725 (n + 1) ^ 2 + 3).toNat

end

end A252375.P14722411241511842967

/-! ## A252375.P11345385037625374683

`A014963(2*A307273(A251725(n+1)))*A251725(n+1)`
-/

namespace A252375.P11345385037625374683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A307273 (A251725 (n + 1)).toNat).toNat * A251725 (n + 1)

end

end A252375.P11345385037625374683

/-!
# A252376: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252376, there is no canonical definition to state claims against.
-/

/-! ## A252376.P12724076128512227906

`A252384(∑[4*n]+1)`
-/

namespace A252376.P12724076128512227906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252376.P12724076128512227906

/-!
# A252377: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252377, there is no canonical definition to state claims against.
-/

/-! ## A252377.P13257011105464898045

`A252384(∑[1+n])`
-/

namespace A252377.P13257011105464898045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252377.P13257011105464898045

/-!
# A252378: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252378, there is no canonical definition to state claims against.
-/

/-! ## A252378.P15673917784160625682

`A252384(∑[2+n])`
-/

namespace A252378.P15673917784160625682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252378.P15673917784160625682

/-!
# A252379: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252379, there is no canonical definition to state claims against.
-/

/-! ## A252379.P16702080878057521397

`A252384(∑[3+n]+1)`
-/

namespace A252379.P16702080878057521397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252379.P16702080878057521397

/-!
# A252380: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252380, there is no canonical definition to state claims against.
-/

/-! ## A252380.P9616350972809338459

`A252384(∑[n+4]+3)`
-/

namespace A252380.P9616350972809338459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A252380.P9616350972809338459

/-!
# A252381: Number of (n+2) X (5+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252381, there is no canonical definition to state claims against.
-/

/-! ## A252381.P16472880900272269545

`A252384(∑[n+5]+6)`
-/

namespace A252381.P16472880900272269545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A252381.P16472880900272269545

/-!
# A252382: Number of (n+2) X (6+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252382, there is no canonical definition to state claims against.
-/

/-! ## A252382.P16865538409420685894

`A252384(A052905(n+3))`
-/

namespace A252382.P16865538409420685894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A052905 (n + 3)).toNat

end

end A252382.P16865538409420685894

/-!
# A252383: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252383, there is no canonical definition to state claims against.
-/

/-! ## A252383.P1527656983741319124

`A252384(A055999(n+4))`
-/

namespace A252383.P1527656983741319124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A055999 (n + 4)).toNat

end

end A252383.P1527656983741319124

/-!
# A252385: Number of (1+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252385, there is no canonical definition to state claims against.
-/

/-! ## A252385.P4336245524613388797

`A252384(∑[n]+1)`
-/

namespace A252385.P4336245524613388797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252385.P4336245524613388797

/-! ## A252385.P4405145787663236115

`record[A252384(n+1)]`
-/

namespace A252385.P4405145787663236115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252385.P4405145787663236115

/-!
# A252386: Number of (2+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252386, there is no canonical definition to state claims against.
-/

/-! ## A252386.P12683867711956342856

`A252384(∑[n+1]+2)`
-/

namespace A252386.P12683867711956342856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252386.P12683867711956342856

/-! ## A252386.P1211022432112619495

`record[gcd(A025581(n), A252384(n+3))]`
-/

namespace A252386.P1211022432112619495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A252384 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252386.P1211022432112619495

/-! ## A252386.P5578533698420515432

`record[A252384(n+3)/A185105(n+1)]`
-/

namespace A252386.P5578533698420515432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252384 (n + 3) : ℚ) / (A185105 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252386.P5578533698420515432

/-! ## A252386.P2818859004320111886

`record[root(A252384(n+3), A051537(n+1))]`
-/

namespace A252386.P2818859004320111886
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252384 (n + 3) : ℝ) ^ (1 / (A051537 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252386.P2818859004320111886

/-! ## A252386.P12685364630419554453

`record[A252384(n+3)%A252384(n+2)]`
-/

namespace A252386.P12685364630419554453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252384 (n + 3)) (A252384 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252386.P12685364630419554453

/-!
# A252387: Number of (3+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252387, there is no canonical definition to state claims against.
-/

/-! ## A252387.P17366936319341205769

`A252384(∑[n+2]+4)`
-/

namespace A252387.P17366936319341205769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252387.P17366936319341205769

/-!
# A252388: Number of (4+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252388, there is no canonical definition to state claims against.
-/

/-! ## A252388.P1042145296707097729

`A252384(∑[n+3]+7)`
-/

namespace A252388.P1042145296707097729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252388.P1042145296707097729

/-!
# A252389: Number of (5+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252389, there is no canonical definition to state claims against.
-/

/-! ## A252389.P10659741835227011190

`A252384(A167499(n+3))`
-/

namespace A252389.P10659741835227011190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A167499 (n + 3)).toNat

end

end A252389.P10659741835227011190

/-!
# A252390: Number of (6+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252390, there is no canonical definition to state claims against.
-/

/-! ## A252390.P11882946387716664267

`A252384(∑[n+5]+16)`
-/

namespace A252390.P11882946387716664267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A252390.P11882946387716664267

/-!
# A252391: Number of (7+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252391, there is no canonical definition to state claims against.
-/

/-! ## A252391.P18226527022605999998

`A252384(A056119(n)+28)`
-/

namespace A252391.P18226527022605999998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A056119 n + 28).toNat

end

end A252391.P18226527022605999998

/-!
# A252392: Number of (n+2)X(1+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 4.

The programs for A252392, there is no canonical definition to state claims against.
-/

/-! ## A252392.P13216004408489246101

`A252397(∑[n]+1)`
-/

namespace A252392.P13216004408489246101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252392.P13216004408489246101

/-! ## A252392.P1590977797268485978

`record[A252397(n+1)/A118185(n)]`
-/

namespace A252392.P1590977797268485978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252397 (n + 1) : ℚ) / (A118185 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252392.P1590977797268485978

/-! ## A252392.P1078584385071130339

`record[gcd(A071920(n), A252397(n+1))]`
-/

namespace A252392.P1078584385071130339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071920 n) (A252397 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252392.P1078584385071130339

/-! ## A252392.P293172766415156337

`record[A252397(n+1)/A296827(n+1)]`
-/

namespace A252392.P293172766415156337
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252397 (n + 1) : ℚ) / (A296827 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252392.P293172766415156337

/-! ## A252392.P4943718899034335964

`record[root(A252397(n+1), A200370(n+1))]`
-/

namespace A252392.P4943718899034335964
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252397 (n + 1) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252392.P4943718899034335964

/-!
# A252393: Number of (n+2)X(2+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 4.

The programs for A252393, there is no canonical definition to state claims against.
-/

/-! ## A252393.P10195503204281280192

`A252397(∑[n+1]+2)`
-/

namespace A252393.P10195503204281280192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252393.P10195503204281280192

/-! ## A252393.P6676072953840946097

`record[A252397(abs(A201163(n)))]`
-/

namespace A252393.P6676072953840946097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252393.P6676072953840946097

/-!
# A252394: Number of (n+2)X(3+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 4.

The programs for A252394, there is no canonical definition to state claims against.
-/

/-! ## A252394.P10065531105151258607

`A252397(∑[2+n]+4)`
-/

namespace A252394.P10065531105151258607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252394.P10065531105151258607

/-!
# A252395: Number of (n+2)X(4+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 4.

The programs for A252395, there is no canonical definition to state claims against.
-/

/-! ## A252395.P5586138643734710966

`A252397(∑[n+3]+7)`
-/

namespace A252395.P5586138643734710966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252395.P5586138643734710966

/-!
# A252396: Number of (n+2)X(5+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 4.

The programs for A252396, there is no canonical definition to state claims against.
-/

/-! ## A252396.P17626754966503268176

`A252397(A167499(n+3))`
-/

namespace A252396.P17626754966503268176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 (A167499 (n + 3)).toNat

end

end A252396.P17626754966503268176

/-!
# A252399: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 2 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252399, there is no canonical definition to state claims against.
-/

/-! ## A252399.P13440724597146944503

`A252407((n+1)²+n²)`
-/

namespace A252399.P13440724597146944503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 ((n + 1) ^ 2 + n ^ 2)

end

end A252399.P13440724597146944503

