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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C026

/-!
# A284600: a(n) = n/(largest prime power dividing n).

The programs for A284600, there is no canonical definition to state claims against.
-/

/-! ## A284600.P8266189527042762560

`(n+1)/A034699(n+1)`
-/

namespace A284600.P8266189527042762560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A034699 (n + 1) : ℚ)

end

end A284600.P8266189527042762560

/-! ## A284600.P5072474892187563143

`(n+1)/(n+1-A081805(n+1))`
-/

namespace A284600.P5072474892187563143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A081805 (n + 1) : ℚ)

end

end A284600.P5072474892187563143

/-! ## A284600.P5477425885609581792

`A081805(n+1)/A366649(n+1)+1`
-/

namespace A284600.P5477425885609581792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081805 (n + 1) : ℚ) / (A366649 (n + 1) : ℚ) + 1

end

end A284600.P5477425885609581792

/-! ## A284600.P12476155568213903731

`(n+1)/(A057110(n+1)+A002034(n+1))`
-/

namespace A284600.P12476155568213903731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057110 (n + 1) + A002034 (n + 1) : ℚ)

end

end A284600.P12476155568213903731

/-! ## A284600.P10384542485569504732

`(n+1)/A088387(n+1)^A088388(n+1)`
-/

namespace A284600.P10384542485569504732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A088387 (n + 1) : ℚ) ^ (A088388 (n + 1) : ℤ)

end

end A284600.P10384542485569504732

/-! ## A284600.P4557764350503486737

`(n+1)/A210208(A210241(n+1))`
-/

namespace A284600.P4557764350503486737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A210208 (A210241 (n + 1)).toNat : ℚ)

end

end A284600.P4557764350503486737

/-! ## A284600.P418076932211961982

`(n+1)/(A081472(n+1)-(n+1))`
-/

namespace A284600.P418076932211961982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A081472 (n + 1) - (n + 1 : ℤ) : ℚ)

end

end A284600.P418076932211961982

/-! ## A284600.P8346504485279942478

`A001478(n+1)/A001478(A081472(n+1)+A001478(n+1))`
-/

namespace A284600.P8346504485279942478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001478 (n + 1) : ℚ) / (A001478 (A081472 (n + 1) + A001478 (n + 1)).toNat : ℚ)

end

end A284600.P8346504485279942478

/-! ## A284600.P8605268661594902822

`A052128((n+1)*A366649(n+1))`
-/

namespace A284600.P8605268661594902822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 ((n + 1 : ℤ) * A366649 (n + 1)).toNat

end

end A284600.P8605268661594902822

/-! ## A284600.P5491909913510643227

`A010766(A034699(n+1)+A000217(n))`
-/

namespace A284600.P5491909913510643227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A034699 (n + 1) + A000217 n).toNat

end

end A284600.P5491909913510643227

/-! ## A284600.P32338695811540097

`(n+1)/sqrt(A274006((n+1)²))`
-/

namespace A284600.P32338695811540097
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.sqrt (A274006 ((n + 1) ^ 2) : ℝ)

end

end A284600.P32338695811540097

/-! ## A284600.P7808579249999045433

`A052128((n+1)*A034699(n+1))`
-/

namespace A284600.P7808579249999045433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 ((n + 1 : ℤ) * A034699 (n + 1)).toNat

end

end A284600.P7808579249999045433

/-! ## A284600.P10471734484975769826

`A052128((n+1)*A088387(n+1))`
-/

namespace A284600.P10471734484975769826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 ((n + 1 : ℤ) * A088387 (n + 1)).toNat

end

end A284600.P10471734484975769826

/-! ## A284600.P14726096015539867493

`A345994((n+1)*A034699(n+1))`
-/

namespace A284600.P14726096015539867493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345994 ((n + 1 : ℤ) * A034699 (n + 1)).toNat

end

end A284600.P14726096015539867493

/-! ## A284600.P7396711287872843179

`A076388(A034699((n+1)²)+n+1)`
-/

namespace A284600.P7396711287872843179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076388 (A034699 ((n + 1) ^ 2) + (n + 1 : ℤ)).toNat

end

end A284600.P7396711287872843179

/-! ## A284600.P3604362041136812262

`A076388(A304233(A034699(n+1))+n+1)`
-/

namespace A284600.P3604362041136812262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076388 (A304233 (A034699 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A284600.P3604362041136812262

/-! ## A284600.P16253848882017842247

`A345994((n+1)*A324388(A324388(n+1)))`
-/

namespace A284600.P16253848882017842247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345994 ((n + 1 : ℤ) * A324388 (A324388 (n + 1)).toNat).toNat

end

end A284600.P16253848882017842247

/-!
# A284601: Numbers k such that the decimal representation of 1/k does not terminate and has odd period.

The programs for A284601, there is no canonical definition to state claims against.
-/

/-! ## A284601.P353260896946657113

`eq[1, A051626(n+1)%2]+1`
-/

namespace A284601.P353260896946657113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051626 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284601.P353260896946657113

/-! ## A284601.P2392735668788921596

`eq[1, A000035(A051626(n+1))]+1`
-/

namespace A284601.P2392735668788921596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A051626 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284601.P2392735668788921596

/-! ## A284601.P180415457620126205

`eq[A000265(A007732(n+1)), A051626(n+1)]+1`
-/

namespace A284601.P180415457620126205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A007732 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A284601.P180415457620126205

/-! ## A284601.P12404119233220997958

`eq[1, A000035(A051626(A008574(n)))]`
-/

namespace A284601.P12404119233220997958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A051626 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284601.P12404119233220997958

/-! ## A284601.P6282183766693619942

`eq[1, A000035(A051626(A008706(n)))]`
-/

namespace A284601.P6282183766693619942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A051626 (A008706 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284601.P6282183766693619942

/-! ## A284601.P14260164825405978426

`eq[1, A051626(A234275(n))%2]`
-/

namespace A284601.P14260164825405978426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051626 (A234275 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284601.P14260164825405978426

/-!
# A284602: Numbers k such that the decimal representation of 1/k is either finite or has even period.

The programs for A284602, there is no canonical definition to state claims against.
-/

/-! ## A284602.P10067852209487079592

`eq[1, A000034(A051626(n+1))]+1`
-/

namespace A284602.P10067852209487079592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A051626 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284602.P10067852209487079592

/-! ## A284602.P11949145041589312429

`eq[1, A006519(A051626(n+1)+1)]+1`
-/

namespace A284602.P11949145041589312429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A051626 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284602.P11949145041589312429

/-! ## A284602.P7857064978997029667

`eq[char[A284601(n+1)], A000007(n)]`
-/

namespace A284602.P7857064978997029667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284601 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A284602.P7857064978997029667

/-! ## A284602.P91041247096249752

`eq[char[A284601(n+1)], A000038(n)]`
-/

namespace A284602.P91041247096249752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284601 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A284602.P91041247096249752

/-! ## A284602.P4812804518480357618

`record[A032742(n+1)/A006519(A051626(n+1)+1)]`
-/

namespace A284602.P4812804518480357618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A006519 (A051626 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284602.P4812804518480357618

/-! ## A284602.P5461397949973850231

`record[A028242(2*n)/A006519(A051626(n+1)+1)]`
-/

namespace A284602.P5461397949973850231
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A006519 (A051626 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284602.P5461397949973850231

/-! ## A284602.P13977239602938397906

`record[A131732(2*n)/A006519(A051626(n+1)+1)]`
-/

namespace A284602.P13977239602938397906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131732 (2 * n) : ℚ) / (A006519 (A051626 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284602.P13977239602938397906

/-!
# A284603: The number of partitions of n! into divisors of n!.

The programs for A284603, there is no canonical definition to state claims against.
-/

/-! ## A284603.P13087533779630459684

`A018818(n!)`
-/

namespace A284603.P13087533779630459684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018818 (Nat.factorial n)

end

end A284603.P13087533779630459684

/-! ## A284603.P14104453006764283585

`A210442(n!)+1`
-/

namespace A284603.P14104453006764283585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (Nat.factorial n) + 1

end

end A284603.P14104453006764283585

/-! ## A284603.P11191141067313288574

`A018818(A000142(n))`
-/

namespace A284603.P11191141067313288574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018818 (A000142 n).toNat

end

end A284603.P11191141067313288574

/-! ## A284603.P13640875113847057752

`A018818(A061602(n))`
-/

namespace A284603.P13640875113847057752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018818 (A061602 n).toNat

end

end A284603.P13640875113847057752

/-!
# A284604: Quadratic recurrence: a(n+2) = a(n+1)^2 + a(n)^2 + 1, with a(0) = a(1) = 1.

The programs for A284604, there is no canonical definition to state claims against.
-/

/-! ## A284604.P16179476541650895844

`a(n-1)²+a(n-2)²+1` with `a(0)=1, a(1)=1`
-/

namespace A284604.P16179476541650895844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) ^ 2 + (a (n - 2) ^ 2 + 1)

end

end A284604.P16179476541650895844

/-! ## A284604.P258021720513918999

`a(n-1)-(a(n-3)²-a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A284604.P258021720513918999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) - (a (n - 3) ^ 2 - a (n - 1) ^ 2)

end

end A284604.P258021720513918999

/-! ## A284604.P15003766978793266811

`a(n-1)*a(n-1)+a(n-2)*a(n-2)+1` with `a(0)=1, a(1)=1`
-/

namespace A284604.P15003766978793266811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * a (n - 1) + (a (n - 2) * a (n - 2) + 1)

end

end A284604.P15003766978793266811

/-!
# A284605: The number of partitions of n! into factorials.

The programs for A284605, there is no canonical definition to state claims against.
-/

/-! ## A284605.P1712508535696721266

`A064986(n!)`
-/

namespace A284605.P1712508535696721266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (Nat.factorial n)

end

end A284605.P1712508535696721266

/-! ## A284605.P11663850567726207232

`A064986(∏[round(1/acot(n))])`
-/

namespace A284605.P11663850567726207232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284605.P11663850567726207232

/-! ## A284605.P8610450423134795861

`A064986(∏[ceil(abs(γ-n))])`
-/

namespace A284605.P8610450423134795861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284605.P8610450423134795861

/-! ## A284605.P13101145826339011085

`A064986(A000142(n))+A035042(n)`
-/

namespace A284605.P13101145826339011085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (A000142 n).toNat + A035042 n

end

end A284605.P13101145826339011085

/-!
# A284606: a(n) = (-1)^n * A284019(n).

The programs for A284606, the canonical program `A284606.P6562321549469287511` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284606 has offset 1).

The definition of A284606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284606.P6562321549469287511

`A062157(n)*A284019(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284606

/-- `A062157(n)*A284019(n+1)` -/
def P6562321549469287511.Spec : Prop :=
  ∀ n, P6562321549469287511.a n = A284606 (n + 1)

theorem P6562321549469287511.correct : P6562321549469287511.Spec := by
  intro n
  simp only [A284606, Nat.add_sub_cancel]

end A284606

/-! ## A284606.P6263865162311729158

`A105812(n)*A284019(n+1)`
-/

namespace A284606.P6263865162311729158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 n * A284019 (n + 1)

end

end A284606.P6263865162311729158

namespace A284606

/-- `A105812(n)*A284019(n+1)` -/
def P6263865162311729158.Spec : Prop :=
  ∀ n, P6263865162311729158.a n = A284606 (n + 1)

end A284606

/-! ## A284606.P3127780636010827656

`A165326(n)*A284019(n+1)`
-/

namespace A284606.P3127780636010827656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n * A284019 (n + 1)

end

end A284606.P3127780636010827656

namespace A284606

/-- `A165326(n)*A284019(n+1)` -/
def P3127780636010827656.Spec : Prop :=
  ∀ n, P3127780636010827656.a n = A284606 (n + 1)

end A284606

/-! ## A284606.P16734329262042939271

`A284019(n+1)/A062157(n+2)`
-/

namespace A284606.P16734329262042939271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284019 (n + 1) : ℚ) / (A062157 (n + 2) : ℚ)

end

end A284606.P16734329262042939271

namespace A284606

/-- `A284019(n+1)/A062157(n+2)` -/
def P16734329262042939271.Spec : Prop :=
  ∀ n, P16734329262042939271.a n = (A284606 (n + 1) : ℚ)

end A284606

/-! ## A284606.P7669770054749013068

`A284019(n+1)/A105812(n+2)`
-/

namespace A284606.P7669770054749013068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284019 (n + 1) : ℚ) / (A105812 (n + 2) : ℚ)

end

end A284606.P7669770054749013068

namespace A284606

/-- `A284019(n+1)/A105812(n+2)` -/
def P7669770054749013068.Spec : Prop :=
  ∀ n, P7669770054749013068.a n = (A284606 (n + 1) : ℚ)

end A284606

/-! ## A284606.P7172250658025386957

`A034947(2*n+3)*A284019(n+1)`
-/

namespace A284606.P7172250658025386957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 3) * A284019 (n + 1)

end

end A284606.P7172250658025386957

namespace A284606

/-- `A034947(2*n+3)*A284019(n+1)` -/
def P7172250658025386957.Spec : Prop :=
  ∀ n, P7172250658025386957.a n = A284606 (n + 1)

end A284606

/-!
# A284607: Expansion of (eta(q^3)eta(q^6)/(eta(q)eta(q^2)))^4 in powers of q.

The programs for A284607, there is no canonical definition to state claims against.
-/

/-! ## A284607.P5997773738725843897

`A335604(3*n+2)/3`
-/

namespace A284607.P5997773738725843897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335604 (3 * n + 2) : ℚ) / 3

end

end A284607.P5997773738725843897

/-!
# A284609: Number of partitions of n such that the (sum of all odd parts) = floor(n/2).

The programs for A284609, there is no canonical definition to state claims against.
-/

/-! ## A284609.P12409977491650970744

`A000009(∑[n%2])*A035363(A008619(n))`
-/

namespace A284609.P12409977491650970744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (∑ j ∈ Finset.range (n + 1), f1 j) * A035363 (A008619 n).toNat

end

end A284609.P12409977491650970744

/-! ## A284609.P997536178121860900

`A035363(A004526(n)+1)*A172033(n+1)`
-/

namespace A284609.P997536178121860900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A004526 n + 1).toNat * A172033 (n + 1)

end

end A284609.P997536178121860900

/-! ## A284609.P7610200420847791392

`A000009(A065033(n))*A035363(A008619(n))`
-/

namespace A284609.P7610200420847791392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A065033 n).toNat * A035363 (A008619 n).toNat

end

end A284609.P7610200420847791392

/-! ## A284609.P15821200103751186010

`A000009(A110654(n))*A035363(A008619(n))`
-/

namespace A284609.P15821200103751186010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A110654 n).toNat * A035363 (A008619 n).toNat

end

end A284609.P15821200103751186010

/-! ## A284609.P12076391748103007524

`A000009(A004526(n+1))*A035363(A008619(n))`
-/

namespace A284609.P12076391748103007524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A004526 (n + 1)).toNat * A035363 (A008619 n).toNat

end

end A284609.P12076391748103007524

/-!
# A284611: Number of partitions of n such that the (sum of all even parts) = floor(n/2).

The programs for A284611, there is no canonical definition to state claims against.
-/

/-! ## A284611.P14536422889692675408

`Δ[A035444(n)]*A081360(A008619(n))`
-/

namespace A284611.P14536422889692675408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A081360 (A008619 n).toNat

end

end A284611.P14536422889692675408

/-! ## A284611.P11030910374425382848

`A000009(floor(n/2)+1)*A035363(A110654(n))`
-/

namespace A284611.P11030910374425382848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (⌊(n : ℚ) / 2⌋ + 1).toNat * A035363 (A110654 n).toNat

end

end A284611.P11030910374425382848

/-! ## A284611.P8332405791652112146

`Δ[A004525(n)]*A323053(A262545(n+1))`
-/

namespace A284611.P8332405791652112146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A323053 (A262545 (n + 1)).toNat

end

end A284611.P8332405791652112146

/-! ## A284611.P4421823005056016897

`A323053(A262545(n+1)^Δ[A004525(n)])`
-/

namespace A284611.P4421823005056016897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323053 (SequenceMachineLib.roundAway ((A262545 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A284611.P4421823005056016897

/-! ## A284611.P3022407939143029130

`A000035(A000124(n))*A323053(A262545(n+1))`
-/

namespace A284611.P3022407939143029130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000124 n).toNat * A323053 (A262545 (n + 1)).toNat

end

end A284611.P3022407939143029130

/-!
# A284612: Number of partitions of n such that the (sum of distinct odd parts) < n/2.

The programs for A284612, there is no canonical definition to state claims against.
-/

/-! ## A284612.P1571310579226085784

`Δ[A000070(n)]-A284615(n+1)`
-/

namespace A284612.P1571310579226085784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A284615 (n + 1)

end

end A284612.P1571310579226085784

/-! ## A284612.P3604900102208830723

`record[A035363(n)]-A284615(n+1)`
-/

namespace A284612.P3604900102208830723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284615 (n + 1)

end

end A284612.P3604900102208830723

/-! ## A284612.P12441561390254560081

`record[A035377(n)]-A284615(n+1)`
-/

namespace A284612.P12441561390254560081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284615 (n + 1)

end

end A284612.P12441561390254560081

/-! ## A284612.P17386291771765706596

`record[A035444(n)]-A284615(n+1)`
-/

namespace A284612.P17386291771765706596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284615 (n + 1)

end

end A284612.P17386291771765706596

/-! ## A284612.P9981250792422296656

`record[A114099(n)]-A284615(n+1)`
-/

namespace A284612.P9981250792422296656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284615 (n + 1)

end

end A284612.P9981250792422296656

/-!
# A284613: Number of partitions of n such that the (sum of distinct odd parts) <= n/2.

The programs for A284613, there is no canonical definition to state claims against.
-/

/-! ## A284613.P11301524473183418070

`Δ[A000070(n)]-A284614(n+1)`
-/

namespace A284613.P11301524473183418070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A284614 (n + 1)

end

end A284613.P11301524473183418070

/-! ## A284613.P16228144656732156519

`record[A035363(n)]-A284614(n+1)`
-/

namespace A284613.P16228144656732156519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284614 (n + 1)

end

end A284613.P16228144656732156519

/-! ## A284613.P3011908024827141020

`record[A035377(n)]-A284614(n+1)`
-/

namespace A284613.P3011908024827141020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284614 (n + 1)

end

end A284613.P3011908024827141020

/-! ## A284613.P9720280816168030669

`record[A035444(n)]-A284614(n+1)`
-/

namespace A284613.P9720280816168030669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284614 (n + 1)

end

end A284613.P9720280816168030669

/-! ## A284613.P7110556119488319215

`record[A114099(n)]-A284614(n+1)`
-/

namespace A284613.P7110556119488319215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284614 (n + 1)

end

end A284613.P7110556119488319215

/-!
# A284614: Number of partitions of n such that the (sum of distinct odd parts) > n/2.

The programs for A284614, there is no canonical definition to state claims against.
-/

/-! ## A284614.P1538708977567986769

`Δ[A000070(n)]-A284613(n+1)`
-/

namespace A284614.P1538708977567986769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A284613 (n + 1)

end

end A284614.P1538708977567986769

/-! ## A284614.P10169050365306963852

`record[A035363(n)]-A284613(n+1)`
-/

namespace A284614.P10169050365306963852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284613 (n + 1)

end

end A284614.P10169050365306963852

/-! ## A284614.P1152832339880774784

`record[A035377(n)]-A284613(n+1)`
-/

namespace A284614.P1152832339880774784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284613 (n + 1)

end

end A284614.P1152832339880774784

/-! ## A284614.P10340395147386224156

`record[A035444(n)]-A284613(n+1)`
-/

namespace A284614.P10340395147386224156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284613 (n + 1)

end

end A284614.P10340395147386224156

/-! ## A284614.P10441534434758280877

`record[A114099(n)]-A284613(n+1)`
-/

namespace A284614.P10441534434758280877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284613 (n + 1)

end

end A284614.P10441534434758280877

/-!
# A284615: Number of partitions of n such that the (sum of distinct odd parts) >= n/2.

The programs for A284615, there is no canonical definition to state claims against.
-/

/-! ## A284615.P15463059067098030267

`Δ[A000070(n)]-A284612(n+1)`
-/

namespace A284615.P15463059067098030267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A284612 (n + 1)

end

end A284615.P15463059067098030267

/-! ## A284615.P5770007678792104048

`record[A035363(n)]-A284612(n+1)`
-/

namespace A284615.P5770007678792104048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284612 (n + 1)

end

end A284615.P5770007678792104048

/-! ## A284615.P13731228210763090730

`record[A035377(n)]-A284612(n+1)`
-/

namespace A284615.P13731228210763090730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284612 (n + 1)

end

end A284615.P13731228210763090730

/-! ## A284615.P7974196872774957130

`record[A035444(n)]-A284612(n+1)`
-/

namespace A284615.P7974196872774957130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284612 (n + 1)

end

end A284615.P7974196872774957130

/-! ## A284615.P8096563152202375322

`record[A114099(n)]-A284612(n+1)`
-/

namespace A284615.P8096563152202375322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284612 (n + 1)

end

end A284615.P8096563152202375322

/-!
# A284616: Number of partitions of n such that the (sum of distinct even parts) < n/2.

The programs for A284616, there is no canonical definition to state claims against.
-/

/-! ## A284616.P16632773308916423014

`Δ[A000070(n)]-A284619(n+1)`
-/

namespace A284616.P16632773308916423014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A284619 (n + 1)

end

end A284616.P16632773308916423014

/-! ## A284616.P17083408448162623040

`record[A035363(n)]-A284619(n+1)`
-/

namespace A284616.P17083408448162623040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284619 (n + 1)

end

end A284616.P17083408448162623040

/-! ## A284616.P11304824854327976001

`record[A035377(n)]-A284619(n+1)`
-/

namespace A284616.P11304824854327976001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284619 (n + 1)

end

end A284616.P11304824854327976001

/-! ## A284616.P17371013056539614055

`record[A035444(n)]-A284619(n+1)`
-/

namespace A284616.P17371013056539614055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284619 (n + 1)

end

end A284616.P17371013056539614055

/-! ## A284616.P6748838360587961640

`record[A114099(n)]-A284619(n+1)`
-/

namespace A284616.P6748838360587961640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284619 (n + 1)

end

end A284616.P6748838360587961640

/-!
# A284617: Number of partitions of n such that the (sum of distinct even parts) <= n/2.

The programs for A284617, there is no canonical definition to state claims against.
-/

/-! ## A284617.P6062460254067867348

`Δ[A000070(n)]-A284618(n+1)`
-/

namespace A284617.P6062460254067867348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A284618 (n + 1)

end

end A284617.P6062460254067867348

/-! ## A284617.P12022660716250715313

`record[A035363(n)]-A284618(n+1)`
-/

namespace A284617.P12022660716250715313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284618 (n + 1)

end

end A284617.P12022660716250715313

/-! ## A284617.P908993473571691486

`record[A035377(n)]-A284618(n+1)`
-/

namespace A284617.P908993473571691486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284618 (n + 1)

end

end A284617.P908993473571691486

/-! ## A284617.P2600615761676056908

`record[A035444(n)]-A284618(n+1)`
-/

namespace A284617.P2600615761676056908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284618 (n + 1)

end

end A284617.P2600615761676056908

/-! ## A284617.P17875056233492484011

`record[A114099(n)]-A284618(n+1)`
-/

namespace A284617.P17875056233492484011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284618 (n + 1)

end

end A284617.P17875056233492484011

/-!
# A284618: Number of partitions of n such that the (sum of distinct even parts) > n/2.

The programs for A284618, there is no canonical definition to state claims against.
-/

/-! ## A284618.P17409703678018136707

`A284619(n+1)-A284610(A133265(n))`
-/

namespace A284618.P17409703678018136707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284619 (n + 1) - A284610 (A133265 n).toNat

end

end A284618.P17409703678018136707

/-! ## A284618.P9309983137774228047

`A284619(n+1)-A000035(n)*A284610(n+1)`
-/

namespace A284618.P9309983137774228047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284619 (n + 1) - A000035 n * A284610 (n + 1)

end

end A284618.P9309983137774228047

/-! ## A284618.P381462217963544462

`A284619(n+1)-A021913(n)*A284610(n+1)`
-/

namespace A284618.P381462217963544462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284619 (n + 1) - A021913 n * A284610 (n + 1)

end

end A284618.P381462217963544462

/-! ## A284618.P2125912208143219058

`A284619(n+1)-lcm(A075553(n), A284610(n+1))`
-/

namespace A284618.P2125912208143219058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284619 (n + 1) - (Int.lcm (A075553 n) (A284610 (n + 1)) : ℤ)

end

end A284618.P2125912208143219058

/-! ## A284618.P1693206733684078666

`Δ[A000070(n)]-A284617(n+1)`
-/

namespace A284618.P1693206733684078666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A284617 (n + 1)

end

end A284618.P1693206733684078666

/-!
# A284619: Number of partitions of n such that the (sum of distinct even parts) >= n/2.

The programs for A284619, there is no canonical definition to state claims against.
-/

/-! ## A284619.P2206469638916772937

`A284618(n+1)+A284610(A133265(n))`
-/

namespace A284619.P2206469638916772937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284618 (n + 1) + A284610 (A133265 n).toNat

end

end A284619.P2206469638916772937

/-! ## A284619.P15339915133295765021

`A284618(n+1)+A000035(n)*A284610(n+1)`
-/

namespace A284619.P15339915133295765021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284618 (n + 1) + A000035 n * A284610 (n + 1)

end

end A284619.P15339915133295765021

/-! ## A284619.P15990865438798720558

`A284618(n+1)+A021913(n)*A284610(n+1)`
-/

namespace A284619.P15990865438798720558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284618 (n + 1) + A021913 n * A284610 (n + 1)

end

end A284619.P15990865438798720558

/-! ## A284619.P8703921934755105820

`A284618(n+1)+lcm(A075553(n), A284610(n+1))`
-/

namespace A284619.P8703921934755105820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284618 (n + 1) + (Int.lcm (A075553 n) (A284610 (n + 1)) : ℤ)

end

end A284619.P8703921934755105820

/-! ## A284619.P14764655095518611367

`Δ[A000070(n)]-A284616(n+1)`
-/

namespace A284619.P14764655095518611367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A284616 (n + 1)

end

end A284619.P14764655095518611367

/-!
# A284620: {00->2}-transform of the infinite Fibonacci word A003849.

The programs for A284620, the canonical program `A284620.P13390262342659901568` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284620 has offset 1).

The definition of A284620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284620.P5297401890315725643

`A063037(n+1)%A040003(n)`
-/

namespace A284620.P5297401890315725643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063037 (n + 1)) (A040003 n)

end

end A284620.P5297401890315725643

namespace A284620

/-- `A063037(n+1)%A040003(n)` -/
def P5297401890315725643.Spec : Prop :=
  ∀ n, P5297401890315725643.a n = A284620 (n + 1)

end A284620

/-! ## A284620.P9044667661007244139

`and(A040001(n), A063037(n+1))`
-/

namespace A284620.P9044667661007244139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040001 n) (A063037 (n + 1))

end

end A284620.P9044667661007244139

namespace A284620

/-- `and(A040001(n), A063037(n+1))` -/
def P9044667661007244139.Spec : Prop :=
  ∀ n, P9044667661007244139.a n = A284620 (n + 1)

end A284620

/-! ## A284620.P13390262342659901568

`and(A063037(n+1), A134451(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A284620

/-- `and(A063037(n+1), A134451(n))` -/
def P13390262342659901568.Spec : Prop :=
  ∀ n, P13390262342659901568.a n = A284620 (n + 1)

theorem P13390262342659901568.correct : P13390262342659901568.Spec := by
  intro n
  simp only [A284620, Nat.add_sub_cancel]

end A284620

/-! ## A284620.P13658394144070228051

`and(A063037(n+1), A176040(n))`
-/

namespace A284620.P13658394144070228051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063037 (n + 1)) (A176040 n)

end

end A284620.P13658394144070228051

namespace A284620

/-- `and(A063037(n+1), A176040(n))` -/
def P13658394144070228051.Spec : Prop :=
  ∀ n, P13658394144070228051.a n = A284620 (n + 1)

end A284620

/-! ## A284620.P11826752432764179227

`and(A194721(n), A363057(n+1))`
-/

namespace A284620.P11826752432764179227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A194721 n) (A363057 (n + 1))

end

end A284620.P11826752432764179227

namespace A284620

/-- `and(A194721(n), A363057(n+1))` -/
def P11826752432764179227.Spec : Prop :=
  ∀ n, P11826752432764179227.a n = A284620 (n + 1)

end A284620

/-! ## A284620.P15577621567923976227

`and(A363057(n+1), A397808(n+1))`
-/

namespace A284620.P15577621567923976227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A363057 (n + 1)) (A397808 (n + 1))

end

end A284620.P15577621567923976227

namespace A284620

/-- `and(A363057(n+1), A397808(n+1))` -/
def P15577621567923976227.Spec : Prop :=
  ∀ n, P15577621567923976227.a n = A284620 (n + 1)

end A284620

/-! ## A284620.P1299277489893668446

`A337176(10*and(3, -A063037(n+1))+1)`
-/

namespace A284620.P1299277489893668446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337176 (10 * Int.land 3 (-A063037 (n + 1)) + 1).toNat

end

end A284620.P1299277489893668446

namespace A284620

/-- `A337176(10*and(3, -A063037(n+1))+1)` -/
def P1299277489893668446.Spec : Prop :=
  ∀ n, P1299277489893668446.a n = A284620 (n + 1)

end A284620

/-! ## A284620.P1905736614507721067

`val(A108103(n+2)+1, 2)`
-/

namespace A284620.P1905736614507721067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108103 (n + 2) + 1).toNat 2

end

end A284620.P1905736614507721067

namespace A284620

/-- `val(A108103(n+2)+1, 2)` -/
def P1905736614507721067.Spec : Prop :=
  ∀ n, (P1905736614507721067.a n : ℤ) = A284620 (n + 1)

end A284620

/-! ## A284620.P16462123654129072508

`Δ[abs(A188016(n+1)-(n+3))]`
-/

namespace A284620.P16462123654129072508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188016 (n + 1) - (n + 3 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284620.P16462123654129072508

namespace A284620

/-- `Δ[abs(A188016(n+1)-(n+3))]` -/
def P16462123654129072508.Spec : Prop :=
  ∀ n, P16462123654129072508.a n = A284620 (n + 1)

end A284620

/-! ## A284620.P14450062629472520488

`A188016(n+2)-(A188468(n+2)+1)`
-/

namespace A284620.P14450062629472520488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 2) - (A188468 (n + 2) + 1)

end

end A284620.P14450062629472520488

namespace A284620

/-- `A188016(n+2)-(A188468(n+2)+1)` -/
def P14450062629472520488.Spec : Prop :=
  ∀ n, P14450062629472520488.a n = A284620 (n + 1)

end A284620

/-! ## A284620.P1239111436799384903

`A000034(n+1)*A096270(A188010(n+2))`
-/

namespace A284620.P1239111436799384903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A096270 (A188010 (n + 2)).toNat

end

end A284620.P1239111436799384903

namespace A284620

/-- `A000034(n+1)*A096270(A188010(n+2))` -/
def P1239111436799384903.Spec : Prop :=
  ∀ n, P1239111436799384903.a n = A284620 (n + 1)

end A284620

/-! ## A284620.P1235897394699298976

`Δ[A188468(n+2)]-1`
-/

namespace A284620.P1235897394699298976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A284620.P1235897394699298976

namespace A284620

/-- `Δ[A188468(n+2)]-1` -/
def P1235897394699298976.Spec : Prop :=
  ∀ n, P1235897394699298976.a n = A284620 (n + 1)

end A284620

/-! ## A284620.P13714554075434865965

`A383670(A072061(n+1))`
-/

namespace A284620.P13714554075434865965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383670 (A072061 (n + 1)).toNat

end

end A284620.P13714554075434865965

namespace A284620

/-- `A383670(A072061(n+1))` -/
def P13714554075434865965.Spec : Prop :=
  ∀ n, P13714554075434865965.a n = A284620 (n + 1)

end A284620

/-! ## A284620.P10095892533126301854

`A159917(comp[A003623(n+1)])`
-/

namespace A284620.P10095892533126301854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159917 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A284620.P10095892533126301854

namespace A284620

/-- `A159917(comp[A003623(n+1)])` -/
def P10095892533126301854.Spec : Prop :=
  ∀ n, P10095892533126301854.a n = A284620 (n + 1)

end A284620

/-! ## A284620.P18361606980646076310

`A383670(A054084(n+2))`
-/

namespace A284620.P18361606980646076310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383670 (A054084 (n + 2)).toNat

end

end A284620.P18361606980646076310

namespace A284620

/-- `A383670(A054084(n+2))` -/
def P18361606980646076310.Spec : Prop :=
  ∀ n, P18361606980646076310.a n = A284620 (n + 1)

end A284620

/-! ## A284620.P2056035742339017099

`A159917(eq[A005614(n), A189661(n+2)])`
-/

namespace A284620.P2056035742339017099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159917 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A284620.P2056035742339017099

namespace A284620

/-- `A159917(eq[A005614(n), A189661(n+2)])` -/
def P2056035742339017099.Spec : Prop :=
  ∀ n, P2056035742339017099.a n = A284620 (n + 1)

end A284620

/-! ## A284620.P16226283539318374921

`A187581(n+1)%A199536(n+1)`
-/

namespace A284620.P16226283539318374921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187581 (n + 1)) (A199536 (n + 1))

end

end A284620.P16226283539318374921

namespace A284620

/-- `A187581(n+1)%A199536(n+1)` -/
def P16226283539318374921.Spec : Prop :=
  ∀ n, P16226283539318374921.a n = A284620 (n + 1)

end A284620

/-! ## A284620.P12759499720611017000

`A188468(n+3)-A065475(A188468(n+2))`
-/

namespace A284620.P12759499720611017000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 3) - A065475 (A188468 (n + 2)).toNat

end

end A284620.P12759499720611017000

namespace A284620

/-- `A188468(n+3)-A065475(A188468(n+2))` -/
def P12759499720611017000.Spec : Prop :=
  ∀ n, P12759499720611017000.a n = A284620 (n + 1)

end A284620

/-! ## A284620.P1942694128557181748

`A276790(A356899(n+1))`
-/

namespace A284620.P1942694128557181748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276790 (A356899 (n + 1)).toNat

end

end A284620.P1942694128557181748

namespace A284620

/-- `A276790(A356899(n+1))` -/
def P1942694128557181748.Spec : Prop :=
  ∀ n, P1942694128557181748.a n = A284620 (n + 1)

end A284620

/-!
# A284621: Positions of 0 in A284620.

The programs for A284621, the canonical program `A284621.P14588018230324982726` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284621 has offset 1).

The definition of A284621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284621.P7252696256863576257

`2*floor(n*ϕ²)+1`
-/

namespace A284621.P7252696256863576257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 1

end

end A284621.P7252696256863576257

namespace A284621

/-- `2*floor(n*ϕ²)+1` -/
def P7252696256863576257.Spec : Prop :=
  ∀ n, P7252696256863576257.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P4365099999565098060

`or(1, floor(2*n*ϕ²))`
-/

namespace A284621.P4365099999565098060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(2 * n : ℝ) * Real.goldenRatio ^ 2⌋

end

end A284621.P4365099999565098060

namespace A284621

/-- `or(1, floor(2*n*ϕ²))` -/
def P4365099999565098060.Spec : Prop :=
  ∀ n, P4365099999565098060.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P16561561717267397643

`xor(1, 2*floor(n*ϕ²))`
-/

namespace A284621.P16561561717267397643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋)

end

end A284621.P16561561717267397643

namespace A284621

/-- `xor(1, 2*floor(n*ϕ²))` -/
def P16561561717267397643.Spec : Prop :=
  ∀ n, P16561561717267397643.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P18281059970631910875

`abs(2-A288709(n+1))`
-/

namespace A284621.P18281059970631910875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A288709 (n + 1)|

end

end A284621.P18281059970631910875

namespace A284621

/-- `abs(2-A288709(n+1))` -/
def P18281059970631910875.Spec : Prop :=
  ∀ n, P18281059970631910875.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P5133712282959331850

`abs(2-A288713(n+1))`
-/

namespace A284621.P5133712282959331850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A288713 (n + 1)|

end

end A284621.P5133712282959331850

namespace A284621

/-- `abs(2-A288713(n+1))` -/
def P5133712282959331850.Spec : Prop :=
  ∀ n, P5133712282959331850.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P14588018230324982726

`abs(1-2*A004957(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284621

/-- `abs(1-2*A004957(n))` -/
def P14588018230324982726.Spec : Prop :=
  ∀ n, P14588018230324982726.a n = A284621 (n + 1)

theorem P14588018230324982726.correct : P14588018230324982726.Spec := by
  intro n
  simp only [A284621, Nat.add_sub_cancel]

end A284621

/-! ## A284621.P17246093826196174053

`abs(abs(A047924(n)-1)+n-1)`
-/

namespace A284621.P17246093826196174053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A047924 n - 1| + (n : ℤ) - 1)|

end

end A284621.P17246093826196174053

namespace A284621

/-- `abs(abs(A047924(n)-1)+n-1)` -/
def P17246093826196174053.Spec : Prop :=
  ∀ n, P17246093826196174053.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P14232253102496827872

`record[2*A002251(n)+1]`
-/

namespace A284621.P14232253102496827872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002251 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284621.P14232253102496827872

namespace A284621

/-- `record[2*A002251(n)+1]` -/
def P14232253102496827872.Spec : Prop :=
  ∀ n, P14232253102496827872.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P3545051051423704864

`record[2*A019444(n+1)-1]`
-/

namespace A284621.P3545051051423704864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019444 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284621.P3545051051423704864

namespace A284621

/-- `record[2*A019444(n+1)-1]` -/
def P3545051051423704864.Spec : Prop :=
  ∀ n, P3545051051423704864.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P13355295343119534487

`A075317(A026351(n))`
-/

namespace A284621.P13355295343119534487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (A026351 n).toNat

end

end A284621.P13355295343119534487

namespace A284621

/-- `A075317(A026351(n))` -/
def P13355295343119534487.Spec : Prop :=
  ∀ n, P13355295343119534487.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P3869953315649880175

`record[2*A054089(n+1)-1]`
-/

namespace A284621.P3869953315649880175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054089 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284621.P3869953315649880175

namespace A284621

/-- `record[2*A054089(n+1)-1]` -/
def P3869953315649880175.Spec : Prop :=
  ∀ n, P3869953315649880175.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P14500455913248058440

`record[2*(n+1)*A003849(n)+1]`
-/

namespace A284621.P14500455913248058440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A003849 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284621.P14500455913248058440

namespace A284621

/-- `record[2*(n+1)*A003849(n)+1]` -/
def P14500455913248058440.Spec : Prop :=
  ∀ n, P14500455913248058440.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P8773312921431952697

`A004273(A026352(n))`
-/

namespace A284621.P8773312921431952697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A026352 n).toNat

end

end A284621.P8773312921431952697

namespace A284621

/-- `A004273(A026352(n))` -/
def P8773312921431952697.Spec : Prop :=
  ∀ n, P8773312921431952697.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P5993359261344611220

`A267872(A026352(n)-1)`
-/

namespace A284621.P5993359261344611220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (A026352 n - 1).toNat

end

end A284621.P5993359261344611220

namespace A284621

/-- `A267872(A026352(n)-1)` -/
def P5993359261344611220.Spec : Prop :=
  ∀ n, P5993359261344611220.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P16544236220546619689

`A004273(A026351(n)+n)`
-/

namespace A284621.P16544236220546619689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A026351 n + (n : ℤ)).toNat

end

end A284621.P16544236220546619689

namespace A284621

/-- `A004273(A026351(n)+n)` -/
def P16544236220546619689.Spec : Prop :=
  ∀ n, P16544236220546619689.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P17285752749490940506

`A287658(A060143(n)+2*n+1)`
-/

namespace A284621.P17285752749490940506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287658 (A060143 n + (2 * n + 1 : ℤ)).toNat

end

end A284621.P17285752749490940506

namespace A284621

/-- `A287658(A060143(n)+2*n+1)` -/
def P17285752749490940506.Spec : Prop :=
  ∀ n, P17285752749490940506.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P4270365504066109551

`A004276(A022413(n))`
-/

namespace A284621.P4270365504066109551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (A022413 n).toNat

end

end A284621.P4270365504066109551

namespace A284621

/-- `A004276(A022413(n))` -/
def P4270365504066109551.Spec : Prop :=
  ∀ n, P4270365504066109551.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P9462702443658324053

`A004274(A004957(n)+1)`
-/

namespace A284621.P9462702443658324053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A004957 n + 1).toNat

end

end A284621.P9462702443658324053

namespace A284621

/-- `A004274(A004957(n)+1)` -/
def P9462702443658324053.Spec : Prop :=
  ∀ n, P9462702443658324053.a n = A284621 (n + 1)

end A284621

/-! ## A284621.P12997899056456012644

`A004274(A007066(n+1))`
-/

namespace A284621.P12997899056456012644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A007066 (n + 1)).toNat

end

end A284621.P12997899056456012644

namespace A284621

/-- `A004274(A007066(n+1))` -/
def P12997899056456012644.Spec : Prop :=
  ∀ n, P12997899056456012644.a n = A284621 (n + 1)

end A284621

/-!
# A284622: {0011->0}-transform of the Thue-Morse word A010060.

The programs for A284622, there is no canonical definition to state claims against.
-/

/-! ## A284622.P5321485917234119990

`char[A284626(n+1)-1]`
-/

namespace A284622.P5321485917234119990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284626 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284622.P5321485917234119990

/-! ## A284622.P17592751472557324515

`char[comp[A284623(n+1)-1]]`
-/

namespace A284622.P17592751472557324515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284623 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A284622.P17592751472557324515

/-! ## A284622.P4547976879242126001

`A000035(A284627(n+1)*A347618(n))`
-/

namespace A284622.P4547976879242126001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A284627 (n + 1) * A347618 n).toNat

end

end A284622.P4547976879242126001

/-! ## A284622.P11055161135782153863

`A025426(A347618(n)+A284627(n+1))`
-/

namespace A284622.P11055161135782153863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A347618 n + A284627 (n + 1)).toNat

end

end A284622.P11055161135782153863

/-!
# A284623: Positions of 0 in A284622; complement of A284626.

The programs for A284623, there is no canonical definition to state claims against.
-/

/-! ## A284623.P875776423080090244

`eq[0, A284622(n+1)]+1`
-/

namespace A284623.P875776423080090244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284623.P875776423080090244

/-! ## A284623.P14020449635815760249

`record[n+1-A000290(n*A284622(n+1))]`
-/

namespace A284623.P14020449635815760249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000290 ((n : ℤ) * A284622 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284623.P14020449635815760249

/-! ## A284623.P788077312509256551

`record[n+1-A055262(n*A284622(n+1))]`
-/

namespace A284623.P788077312509256551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A055262 ((n : ℤ) * A284622 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284623.P788077312509256551

/-! ## A284623.P7660075863347057099

`record[n+1-A303660(n*A284622(n+1)+1)]`
-/

namespace A284623.P7660075863347057099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A303660 ((n : ℤ) * A284622 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284623.P7660075863347057099

/-! ## A284623.P1938615562650254267

`record[n+1-A007917(n+2)*A284622(n+1)]`
-/

namespace A284623.P1938615562650254267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007917 (n + 2) * A284622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284623.P1938615562650254267

/-! ## A284623.P10386501117286596045

`eq[A028310(n)-n, A284622(A028310(n))]`
-/

namespace A284623.P10386501117286596045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284622 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284623.P10386501117286596045

/-!
# A284624: Positions of 1 in A284749.

The programs for A284624, the canonical program `A284624.P2118528827355321266` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284624 has offset 1).

The definition of A284624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284624.P5152103491964551352

`floor(n*(ϕ+2))+2`
-/

namespace A284624.P5152103491964551352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.goldenRatio + 2)⌋ + 2

end

end A284624.P5152103491964551352

namespace A284624

/-- `floor(n*(ϕ+2))+2` -/
def P5152103491964551352.Spec : Prop :=
  ∀ n, P5152103491964551352.a n = A284624 (n + 1)

end A284624

/-! ## A284624.P9674388587339579570

`ceil(ϕ*n+A004277(n)+1)`
-/

namespace A284624.P9674388587339579570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ) + (A004277 n + 1 : ℝ)⌉

end

end A284624.P9674388587339579570

namespace A284624

/-- `ceil(ϕ*n+A004277(n)+1)` -/
def P9674388587339579570.Spec : Prop :=
  ∀ n, P9674388587339579570.a n = A284624 (n + 1)

end A284624

/-! ## A284624.P536292823537096101

`(A285682(n+1)+n+2)/2`
-/

namespace A284624.P536292823537096101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285682 (n + 1) + (n + 2 : ℤ) : ℚ) / 2

end

end A284624.P536292823537096101

namespace A284624

/-- `(A285682(n+1)+n+2)/2` -/
def P536292823537096101.Spec : Prop :=
  ∀ n, P536292823537096101.a n = (A284624 (n + 1) : ℚ)

end A284624

/-! ## A284624.P13989311856634999325

`A000027(A026356(n+1)+n)`
-/

namespace A284624.P13989311856634999325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A026356 (n + 1) + (n : ℤ)).toNat

end

end A284624.P13989311856634999325

namespace A284624

/-- `A000027(A026356(n+1)+n)` -/
def P13989311856634999325.Spec : Prop :=
  ∀ n, P13989311856634999325.a n = A284624 (n + 1)

end A284624

/-! ## A284624.P2118528827355321266

`A000027(A026352(n)+1+n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284624

/-- `A000027(A026352(n)+1+n)` -/
def P2118528827355321266.Spec : Prop :=
  ∀ n, P2118528827355321266.a n = A284624 (n + 1)

theorem P2118528827355321266.correct : P2118528827355321266.Spec := by
  intro n
  simp only [A284624, Nat.add_sub_cancel]

end A284624

/-! ## A284624.P6091789346604436740

`record[A019444(n+1)+ceil((n+1)/ϕ)]`
-/

namespace A284624.P6091789346604436740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019444 (n + 1) + ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284624.P6091789346604436740

namespace A284624

/-- `record[A019444(n+1)+ceil((n+1)/ϕ)]` -/
def P6091789346604436740.Spec : Prop :=
  ∀ n, P6091789346604436740.a n = A284624 (n + 1)

end A284624

/-! ## A284624.P10353437644864333479

`record[A019446(n+1)+A019444(n+1)]`
-/

namespace A284624.P10353437644864333479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (n + 1) + A019444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284624.P10353437644864333479

namespace A284624

/-- `record[A019446(n+1)+A019444(n+1)]` -/
def P10353437644864333479.Spec : Prop :=
  ∀ n, P10353437644864333479.a n = A284624 (n + 1)

end A284624

/-! ## A284624.P16521763068899797581

`record[Δ[A005752(n)]+1]`
-/

namespace A284624.P16521763068899797581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284624.P16521763068899797581

namespace A284624

/-- `record[Δ[A005752(n)]+1]` -/
def P16521763068899797581.Spec : Prop :=
  ∀ n, P16521763068899797581.a n = A284624 (n + 1)

end A284624

/-! ## A284624.P10695741287196135687

`A195121(A026352(n))`
-/

namespace A284624.P10695741287196135687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 (A026352 n).toNat

end

end A284624.P10695741287196135687

namespace A284624

/-- `A195121(A026352(n))` -/
def P10695741287196135687.Spec : Prop :=
  ∀ n, P10695741287196135687.a n = A284624 (n + 1)

end A284624

/-! ## A284624.P17804954542964490153

`A249115(A026356(n+1))`
-/

namespace A284624.P17804954542964490153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (A026356 (n + 1)).toNat

end

end A284624.P17804954542964490153

namespace A284624

/-- `A249115(A026356(n+1))` -/
def P17804954542964490153.Spec : Prop :=
  ∀ n, P17804954542964490153.a n = A284624 (n + 1)

end A284624

/-! ## A284624.P7150885635410425219

`A249115(A026352(n)+1)`
-/

namespace A284624.P7150885635410425219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (A026352 n + 1).toNat

end

end A284624.P7150885635410425219

namespace A284624

/-- `A249115(A026352(n)+1)` -/
def P7150885635410425219.Spec : Prop :=
  ∀ n, P7150885635410425219.a n = A284624 (n + 1)

end A284624

/-! ## A284624.P16560388013307846454

`A195121(A026351(n)+n)`
-/

namespace A284624.P16560388013307846454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 (A026351 n + (n : ℤ)).toNat

end

end A284624.P16560388013307846454

namespace A284624

/-- `A195121(A026351(n)+n)` -/
def P16560388013307846454.Spec : Prop :=
  ∀ n, P16560388013307846454.a n = A284624 (n + 1)

end A284624

/-! ## A284624.P17795542482160891488

`A195121(comp[A195121(n)]-n)`
-/

namespace A284624.P17795542482160891488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A284624.P17795542482160891488

namespace A284624

/-- `A195121(comp[A195121(n)]-n)` -/
def P17795542482160891488.Spec : Prop :=
  ∀ n, P17795542482160891488.a n = A284624 (n + 1)

end A284624

/-! ## A284624.P10166985702117446448

`A249115(A026351(A026351(n)))`
-/

namespace A284624.P10166985702117446448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (A026351 (A026351 n).toNat).toNat

end

end A284624.P10166985702117446448

namespace A284624

/-- `A249115(A026351(A026351(n)))` -/
def P10166985702117446448.Spec : Prop :=
  ∀ n, P10166985702117446448.a n = A284624 (n + 1)

end A284624

/-! ## A284624.P2661173314529323668

`lt[A002251(lt[A188436(n+1), 1]), n]`
-/

namespace A284624.P2661173314529323668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188436 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A284624.P2661173314529323668

namespace A284624

/-- `lt[A002251(lt[A188436(n+1), 1]), n]` -/
def P2661173314529323668.Spec : Prop :=
  ∀ n, (P2661173314529323668.a n : ℤ) = A284624 (n + 1)

end A284624

/-! ## A284624.P4470780106305273716

`A020725(A214971(n+1))`
-/

namespace A284624.P4470780106305273716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A214971 (n + 1)).toNat

end

end A284624.P4470780106305273716

namespace A284624

/-- `A020725(A214971(n+1))` -/
def P4470780106305273716.Spec : Prop :=
  ∀ n, P4470780106305273716.a n = A284624 (n + 1)

end A284624

/-! ## A284624.P11570131787930114591

`A195121(A214971(n+1)-n)`
-/

namespace A284624.P11570131787930114591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 (A214971 (n + 1) - (n : ℤ)).toNat

end

end A284624.P11570131787930114591

namespace A284624

/-- `A195121(A214971(n+1)-n)` -/
def P11570131787930114591.Spec : Prop :=
  ∀ n, P11570131787930114591.a n = A284624 (n + 1)

end A284624

/-!
# A284625: Positions of 2 in A284749.

The programs for A284625, the canonical program `A284625.P13423851547970933234` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284625 has offset 1).

The definition of A284625 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050140, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284625.P13423851547970933234

`A050140(n+1)+2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284625

/-- `A050140(n+1)+2` -/
def P13423851547970933234.Spec : Prop :=
  ∀ n, P13423851547970933234.a n = A284625 (n + 1)

theorem P13423851547970933234.correct : P13423851547970933234.Spec := by
  intro n
  simp only [A284625, Nat.add_sub_cancel]

end A284625

/-! ## A284625.P7789291655061960045

`∑[3^Δ[ceil(n/ϕ)]]`
-/

namespace A284625.P7789291655061960045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284625.P7789291655061960045

namespace A284625

/-- `∑[3^Δ[ceil(n/ϕ)]]` -/
def P7789291655061960045.Spec : Prop :=
  ∀ n, P7789291655061960045.a n = (A284625 (n + 1) : ℚ)

end A284625

/-! ## A284625.P5809424855905862780

`∑[or(1, A001468(n))]+2`
-/

namespace A284625.P5809424855905862780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001468 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A284625.P5809424855905862780

namespace A284625

/-- `∑[or(1, A001468(n))]+2` -/
def P5809424855905862780.Spec : Prop :=
  ∀ n, P5809424855905862780.a n = A284625 (n + 1)

end A284625

/-! ## A284625.P2212419006618627022

`A283233(n+1)+1-n`
-/

namespace A284625.P2212419006618627022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283233 (n + 1) + (1 - (n : ℤ))

end

end A284625.P2212419006618627022

namespace A284625

/-- `A283233(n+1)+1-n` -/
def P2212419006618627022.Spec : Prop :=
  ∀ n, P2212419006618627022.a n = A284625 (n + 1)

end A284625

/-! ## A284625.P7099980477515114013

`A075317(n+1)+2-n`
-/

namespace A284625.P7099980477515114013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (n + 1) + (2 - (n : ℤ))

end

end A284625.P7099980477515114013

namespace A284625

/-- `A075317(n+1)+2-n` -/
def P7099980477515114013.Spec : Prop :=
  ∀ n, P7099980477515114013.a n = A284625 (n + 1)

end A284625

/-! ## A284625.P1403144438471015867

`A003623(n+1)-2*n`
-/

namespace A284625.P1403144438471015867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) - (2 * n : ℤ)

end

end A284625.P1403144438471015867

namespace A284625

/-- `A003623(n+1)-2*n` -/
def P1403144438471015867.Spec : Prop :=
  ∀ n, P1403144438471015867.a n = A284625 (n + 1)

end A284625

/-! ## A284625.P10716255271520174910

`A075318(n+1)-3*n`
-/

namespace A284625.P10716255271520174910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075318 (n + 1) - (3 * n : ℤ)

end

end A284625.P10716255271520174910

namespace A284625

/-- `A075318(n+1)-3*n` -/
def P10716255271520174910.Spec : Prop :=
  ∀ n, P10716255271520174910.a n = A284625 (n + 1)

end A284625

/-! ## A284625.P1126481395115149935

`A050141(n)+a(n-1)` with `a(0)=3`
-/

namespace A284625.P1126481395115149935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A050141 n + a (n - 1)

end

end A284625.P1126481395115149935

namespace A284625

/-- `A050141(n)+a(n-1)` -/
def P1126481395115149935.Spec : Prop :=
  ∀ n, P1126481395115149935.a n = A284625 (n + 1)

end A284625

/-! ## A284625.P11446214165208947350

`A089910(n+1)-Δ[n²]`
-/

namespace A284625.P11446214165208947350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284625.P11446214165208947350

namespace A284625

/-- `A089910(n+1)-Δ[n²]` -/
def P11446214165208947350.Spec : Prop :=
  ∀ n, P11446214165208947350.a n = A284625 (n + 1)

end A284625

/-! ## A284625.P5115946132447702860

`2*A019446(n+1)+n+1`
-/

namespace A284625.P5115946132447702860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019446 (n + 1) + (n + 1 : ℤ)

end

end A284625.P5115946132447702860

namespace A284625

/-- `2*A019446(n+1)+n+1` -/
def P5115946132447702860.Spec : Prop :=
  ∀ n, P5115946132447702860.a n = A284625 (n + 1)

end A284625

/-! ## A284625.P7140239967106115533

`2*A004956(n+1)-(n+1)`
-/

namespace A284625.P7140239967106115533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004956 (n + 1) - (n + 1 : ℤ)

end

end A284625.P7140239967106115533

namespace A284625

/-- `2*A004956(n+1)-(n+1)` -/
def P7140239967106115533.Spec : Prop :=
  ∀ n, P7140239967106115533.a n = A284625 (n + 1)

end A284625

/-! ## A284625.P5268502024728314842

`2*A026351(n+1)-(n+1)`
-/

namespace A284625.P5268502024728314842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026351 (n + 1) - (n + 1 : ℤ)

end

end A284625.P5268502024728314842

namespace A284625

/-- `2*A026351(n+1)-(n+1)` -/
def P5268502024728314842.Spec : Prop :=
  ∀ n, P5268502024728314842.a n = A284625 (n + 1)

end A284625

/-! ## A284625.P15638698460643386871

`A035336(n+1)+1-2*n`
-/

namespace A284625.P15638698460643386871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) + (1 - (2 * n : ℤ))

end

end A284625.P15638698460643386871

namespace A284625

/-- `A035336(n+1)+1-2*n` -/
def P15638698460643386871.Spec : Prop :=
  ∀ n, P15638698460643386871.a n = A284625 (n + 1)

end A284625

/-! ## A284625.P7030064964354890087

`A101868(n+1)-2*(n+1)`
-/

namespace A284625.P7030064964354890087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101868 (n + 1) - (2 * (n + 1) : ℤ)

end

end A284625.P7030064964354890087

namespace A284625

/-- `A101868(n+1)-2*(n+1)` -/
def P7030064964354890087.Spec : Prop :=
  ∀ n, P7030064964354890087.a n = A284625 (n + 1)

end A284625

/-! ## A284625.P12423778945371199403

`A371388(n+1)/(n+1)+2`
-/

namespace A284625.P12423778945371199403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A371388 (n + 1) : ℚ) / (n + 1 : ℚ) + 2

end

end A284625.P12423778945371199403

namespace A284625

/-- `A371388(n+1)/(n+1)+2` -/
def P12423778945371199403.Spec : Prop :=
  ∀ n, P12423778945371199403.a n = (A284625 (n + 1) : ℚ)

end A284625

/-! ## A284625.P5982614463330910114

`4*(n+1)-A286751(n+1)`
-/

namespace A284625.P5982614463330910114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A286751 (n + 1)

end

end A284625.P5982614463330910114

namespace A284625

/-- `4*(n+1)-A286751(n+1)` -/
def P5982614463330910114.Spec : Prop :=
  ∀ n, P5982614463330910114.a n = A284625 (n + 1)

end A284625

/-! ## A284625.P11903852319010669809

`A005408(A019446(n+1))+n`
-/

namespace A284625.P11903852319010669809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A019446 (n + 1)).toNat + (n : ℤ)

end

end A284625.P11903852319010669809

namespace A284625

/-- `A005408(A019446(n+1))+n` -/
def P11903852319010669809.Spec : Prop :=
  ∀ n, P11903852319010669809.a n = A284625 (n + 1)

end A284625

/-! ## A284625.P9651652430450131534

`A165747(n)+A035336(n+1)`
-/

namespace A284625.P9651652430450131534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 n + A035336 (n + 1)

end

end A284625.P9651652430450131534

namespace A284625

/-- `A165747(n)+A035336(n+1)` -/
def P9651652430450131534.Spec : Prop :=
  ∀ n, P9651652430450131534.a n = A284625 (n + 1)

end A284625

/-!
# A284626: Positions of 1 in A284622; complement of A284623.

The programs for A284626, there is no canonical definition to state claims against.
-/

/-! ## A284626.P13608713544163552491

`filter[n+1, A284622(#)]`
-/

namespace A284626.P13608713544163552491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284622 (f1 j) = 1) n)

end

end A284626.P13608713544163552491

/-! ## A284626.P6608286845608760022

`eq[1, A284622(n+1)]+1`
-/

namespace A284626.P6608286845608760022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284626.P6608286845608760022

/-! ## A284626.P16254703051430204377

`record[(n+2)*A284622(n+2)]`
-/

namespace A284626.P16254703051430204377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A284622 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284626.P16254703051430204377

/-! ## A284626.P14315419089515574281

`eq[1, A284622(A028310(n))]`
-/

namespace A284626.P14315419089515574281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284622 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284626.P14315419089515574281

/-! ## A284626.P13481593310204645231

`A020725(eq[1, A284622(n+1)])`
-/

namespace A284626.P13481593310204645231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284626.P13481593310204645231

/-! ## A284626.P17077764257645613401

`lt[A000007(n), A284622(n+1)]+1`
-/

namespace A284626.P17077764257645613401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A284626.P17077764257645613401

/-! ## A284626.P16917594526901491050

`lt[A000038(n), A284622(n+1)]+1`
-/

namespace A284626.P16917594526901491050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A284626.P16917594526901491050

/-! ## A284626.P12777944743605054719

`eq[1, A284622(A123108(2*n))]`
-/

namespace A284626.P12777944743605054719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284622 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284626.P12777944743605054719

/-! ## A284626.P1523805447183243015

`eq[1, A284622(A004736(A133263(n)))]`
-/

namespace A284626.P1523805447183243015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284622 (A004736 (A133263 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284626.P1523805447183243015

/-!
# A284627: {0011->1}-transform of the Thue-Morse word A010060.

The programs for A284627, there is no canonical definition to state claims against.
-/

/-! ## A284627.P4133292123927597966

`char[A284685(n+1)-1]`
-/

namespace A284627.P4133292123927597966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284685 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284627.P4133292123927597966

/-! ## A284627.P6682855664296307985

`char[comp[A284684(n+1)-1]]`
-/

namespace A284627.P6682855664296307985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284684 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A284627.P6682855664296307985

/-! ## A284627.P4601591749457434469

`1-char[A284684(xor(1, n)+1)-1]`
-/

namespace A284627.P4601591749457434469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284684 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284627.P4601591749457434469

/-! ## A284627.P7134940031709833078

`1-char[A284684(floor(n/2)+1)-1]`
-/

namespace A284627.P7134940031709833078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284684 (⌊(n : ℚ) / 2⌋ + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284627.P7134940031709833078

/-! ## A284627.P5949169610433890018

`abs(1-char[A284684(A008619(n))-1])`
-/

namespace A284627.P5949169610433890018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284684 (A008619 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)|

end

end A284627.P5949169610433890018

/-!
# A284628: Expansion of Product_{k>=1} 1/(1+x^(2*k-1))^(2*k-1).

The programs for A284628, there is no canonical definition to state claims against.
-/

/-! ## A284628.P4879811174925494770

`(-1)^n*A262811(n)`
-/

namespace A284628.P4879811174925494770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A262811 n

end

end A284628.P4879811174925494770

/-! ## A284628.P224683708917303991

`A262811(n)/A033999(n)`
-/

namespace A284628.P224683708917303991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262811 n : ℚ) / (A033999 n : ℚ)

end

end A284628.P224683708917303991

/-! ## A284628.P1147333904423704484

`A262811(n)/A009001(2*n)`
-/

namespace A284628.P1147333904423704484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262811 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A284628.P1147333904423704484

/-! ## A284628.P2127729926489169656

`A262811(n)/A130815(3*n)`
-/

namespace A284628.P2127729926489169656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262811 n : ℚ) / (A130815 (3 * n) : ℚ)

end

end A284628.P2127729926489169656

/-! ## A284628.P11584966312216854305

`∑[A263199(n)]*A165326(n+1)`
-/

namespace A284628.P11584966312216854305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A165326 (n + 1)

end

end A284628.P11584966312216854305

/-! ## A284628.P1176267513484228428

`A262811(n)/A285048(n)*A285287(n)`
-/

namespace A284628.P1176267513484228428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262811 n : ℚ) / (A285048 n : ℚ) * (A285287 n : ℚ)

end

end A284628.P1176267513484228428

/-! ## A284628.P1712451762837990516

`A262811(n)/A071936(A020639(19*n+3))`
-/

namespace A284628.P1712451762837990516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262811 n : ℚ) / (A071936 (A020639 (19 * n + 3)).toNat : ℚ)

end

end A284628.P1712451762837990516

/-!
# A284629: Expansion of (eta(q)eta(q^10)/(eta(q^2)eta(q^5)))^6 in powers of q.

The programs for A284629, there is no canonical definition to state claims against.
-/

/-! ## A284629.P142060946030890071

`A138518(n+1)-A138521(n+1)`
-/

namespace A284629.P142060946030890071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138518 (n + 1) - A138521 (n + 1)

end

end A284629.P142060946030890071

/-! ## A284629.P16826335061588962758

`-(A138521(n+1)+4*A095813(n+1))`
-/

namespace A284629.P16826335061588962758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A138521 (n + 1) + 4 * A095813 (n + 1))

end

end A284629.P16826335061588962758

/-!
# A284630: a(1)=1, a(2)=2; for n > 1, a(n+1) = (a(n-1) mod n) + n.

The programs for A284630, the canonical program `A284630.P3904716783152492088` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284630 has offset 1).

The definition of A284630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284630.P3904716783152492088

`a(n-2)%n+n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A284630

/-- `a(n-2)%n+n` -/
def P3904716783152492088.Spec : Prop :=
  ∀ n, (P3904716783152492088.a n : ℤ) = A284630 (n + 1)

theorem P3904716783152492088.correct : P3904716783152492088.Spec := by
  intro n
  simp only [A284630, Nat.add_sub_cancel]

end A284630

/-! ## A284630.P6249642181398378881

`n--a(n-2)%n` with `a(0)=1, a(1)=2`
-/

namespace A284630.P6249642181398378881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - Int.tmod (-a (n - 2)) (n : ℤ)

end

end A284630.P6249642181398378881

namespace A284630

/-- `n--a(n-2)%n` -/
def P6249642181398378881.Spec : Prop :=
  ∀ n, P6249642181398378881.a n = A284630 (n + 1)

end A284630

/-! ## A284630.P15144244099091582761

`n-(n-a(n-2)-n²)%n` with `a(0)=1, a(1)=2`
-/

namespace A284630.P15144244099091582761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - Int.tmod ((n : ℤ) - a (n - 2) - (n ^ 2 : ℤ)) (n : ℤ)

end

end A284630.P15144244099091582761

namespace A284630

/-- `n-(n-a(n-2)-n²)%n` -/
def P15144244099091582761.Spec : Prop :=
  ∀ n, P15144244099091582761.a n = A284630 (n + 1)

end A284630

/-! ## A284630.P13994202158452085663

`n-((1-a(n-2))%n-1)%n` with `a(0)=1, a(1)=2`
-/

namespace A284630.P13994202158452085663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - Int.tmod (Int.tmod (1 - a (n - 2)) (n : ℤ) - 1) (n : ℤ)

end

end A284630.P13994202158452085663

namespace A284630

/-- `n-((1-a(n-2))%n-1)%n` -/
def P13994202158452085663.Spec : Prop :=
  ∀ n, P13994202158452085663.a n = A284630 (n + 1)

end A284630

/-! ## A284630.P5208221167212976612

`A322832(a(n-2)+n²)` with `a(0)=1, a(1)=2`
-/

namespace A284630.P5208221167212976612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A322832 (a (n - 2) + (n ^ 2 : ℤ)).toNat

end

end A284630.P5208221167212976612

namespace A284630

/-- `A322832(a(n-2)+n²)` -/
def P5208221167212976612.Spec : Prop :=
  ∀ n, P5208221167212976612.a n = A284630 (n + 1)

end A284630

/-!
# A284632: Numbers n with digits 2 and 6 only.

The programs for A284632, there is no canonical definition to state claims against.
-/

/-! ## A284632.P30408883562725145

`2*A032917(n+1)`
-/

namespace A284632.P30408883562725145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032917 (n + 1)

end

end A284632.P30408883562725145

/-! ## A284632.P2055833569428924451

`2/3*A284964(n+1)`
-/

namespace A284632.P2055833569428924451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A284964 (n + 1) : ℚ)

end

end A284632.P2055833569428924451

/-! ## A284632.P5454578670780025706

`lcm(2, A032917(C(n+1, n)))`
-/

namespace A284632.P5454578670780025706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A032917 (Nat.choose (n + 1) n))

end

end A284632.P5454578670780025706

/-! ## A284632.P16593069542240000811

`lcm(2, A032917(A000027(n+1)))`
-/

namespace A284632.P16593069542240000811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A032917 (A000027 (n + 1)).toNat)

end

end A284632.P16593069542240000811

/-! ## A284632.P5032424442359235936

`A032822(n+1)+A007931(n+1)`
-/

namespace A284632.P5032424442359235936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + A007931 (n + 1)

end

end A284632.P5032424442359235936

/-! ## A284632.P3533852805425094090

`A276037(n+1)+A256077(n+1)`
-/

namespace A284632.P3533852805425094090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1) + A256077 (n + 1)

end

end A284632.P3533852805425094090

/-! ## A284632.P15367960926650852510

`A284963(n+1)-A007931(n+1)`
-/

namespace A284632.P15367960926650852510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1) - A007931 (n + 1)

end

end A284632.P15367960926650852510

/-! ## A284632.P5149261263419805167

`A284973(n+1)-A032810(n+1)`
-/

namespace A284632.P5149261263419805167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1) - A032810 (n + 1)

end

end A284632.P5149261263419805167

/-! ## A284632.P7071282949626800438

`A284964(n+1)-A032917(n+1)`
-/

namespace A284632.P7071282949626800438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284964 (n + 1) - A032917 (n + 1)

end

end A284632.P7071282949626800438

/-! ## A284632.P1747467559582585045

`A143967(n+1)-A256077(n+1)`
-/

namespace A284632.P1747467559582585045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1) - A256077 (n + 1)

end

end A284632.P1747467559582585045

/-! ## A284632.P3742109403437864726

`2*(A072961(n+1)-A007931(n+1))`
-/

namespace A284632.P3742109403437864726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A072961 (n + 1) - A007931 (n + 1))

end

end A284632.P3742109403437864726

/-! ## A284632.P3249761930347693235

`A007931(n+1)+A284922(n+1)/2`
-/

namespace A284632.P3249761930347693235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007931 (n + 1) : ℚ) + (A284922 (n + 1) : ℚ) / 2

end

end A284632.P3249761930347693235

/-! ## A284632.P940639054884816391

`2*(A284633(n+1)-A032810(n+1))`
-/

namespace A284632.P940639054884816391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284633 (n + 1) - A032810 (n + 1))

end

end A284632.P940639054884816391

/-! ## A284632.P11979003077595071472

`(A284923(n+1)+A032810(n+1))/2`
-/

namespace A284632.P11979003077595071472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284923 (n + 1) + A032810 (n + 1) : ℚ) / 2

end

end A284632.P11979003077595071472

/-! ## A284632.P686939889112378395

`2*(A284921(n+1)-A032822(n+1))`
-/

namespace A284632.P686939889112378395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284921 (n + 1) - A032822 (n + 1))

end

end A284632.P686939889112378395

/-! ## A284632.P8750371997038280804

`A032822(n+1)+A284920(n+1)/2`
-/

namespace A284632.P8750371997038280804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032822 (n + 1) : ℚ) + (A284920 (n + 1) : ℚ) / 2

end

end A284632.P8750371997038280804

/-! ## A284632.P2595827898400958400

`(A284963(n+1)+A032822(n+1))/2`
-/

namespace A284632.P2595827898400958400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284963 (n + 1) + A032822 (n + 1) : ℚ) / 2

end

end A284632.P2595827898400958400

/-! ## A284632.P16736658690888252365

`2*(A284971(n+1)-A032834(n+1))`
-/

namespace A284632.P16736658690888252365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284971 (n + 1) - A032834 (n + 1))

end

end A284632.P16736658690888252365

/-! ## A284632.P12392372666573812333

`2*A072961(n+1)-A284920(n+1)`
-/

namespace A284632.P12392372666573812333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072961 (n + 1) - A284920 (n + 1)

end

end A284632.P12392372666573812333

/-! ## A284632.P16623534608644299607

`(A284921(n+1)+A072961(n+1))/2`
-/

namespace A284632.P16623534608644299607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284921 (n + 1) + A072961 (n + 1) : ℚ) / 2

end

end A284632.P16623534608644299607

/-!
# A284633: Numbers n with digits 3 and 6 only.

The programs for A284633, there is no canonical definition to state claims against.
-/

/-! ## A284633.P9546244470900534916

`3*A007931(n+1)`
-/

namespace A284633.P9546244470900534916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007931 (n + 1)

end

end A284633.P9546244470900534916

/-! ## A284633.P10224847741281552518

`3/2*A284920(n+1)`
-/

namespace A284633.P10224847741281552518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A284920 (n + 1) : ℚ)

end

end A284633.P10224847741281552518

/-! ## A284633.P7555399832100067642

`3/4*A284972(n+1)`
-/

namespace A284633.P7555399832100067642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A284972 (n + 1) : ℚ)

end

end A284633.P7555399832100067642

/-! ## A284633.P8872260366787480421

`A032917(n+1)+A032810(n+1)`
-/

namespace A284633.P8872260366787480421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1) + A032810 (n + 1)

end

end A284633.P8872260366787480421

/-! ## A284633.P669380401113011993

`A284920(n+1)+A007931(n+1)`
-/

namespace A284633.P669380401113011993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284920 (n + 1) + A007931 (n + 1)

end

end A284633.P669380401113011993

/-! ## A284633.P11278506929603499137

`A256077(n+1)+A072961(n+1)`
-/

namespace A284633.P11278506929603499137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (n + 1) + A072961 (n + 1)

end

end A284633.P11278506929603499137

/-! ## A284633.P3338552574540524751

`A284972(n+1)-A007931(n+1)`
-/

namespace A284633.P3338552574540524751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284972 (n + 1) - A007931 (n + 1)

end

end A284633.P3338552574540524751

/-! ## A284633.P14963958787375343159

`A284382(n+1)-A032810(n+1)`
-/

namespace A284633.P14963958787375343159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1) - A032810 (n + 1)

end

end A284633.P14963958787375343159

/-! ## A284633.P3183178519148333044

`A284973(n+1)-A032917(n+1)`
-/

namespace A284633.P3183178519148333044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1) - A032917 (n + 1)

end

end A284633.P3183178519148333044

/-! ## A284633.P5935100467323250164

`A284971(n+1)-A256077(n+1)`
-/

namespace A284633.P5935100467323250164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1) - A256077 (n + 1)

end

end A284633.P5935100467323250164

/-! ## A284633.P3998784846354679488

`A032822(n+1)+2*A256077(n+1)`
-/

namespace A284633.P3998784846354679488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + 2 * A256077 (n + 1)

end

end A284633.P3998784846354679488

/-! ## A284633.P13404311697070579225

`2*A072961(n+1)-A032822(n+1)`
-/

namespace A284633.P13404311697070579225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072961 (n + 1) - A032822 (n + 1)

end

end A284633.P13404311697070579225

/-! ## A284633.P7634938825313314307

`2*A284379(n+1)-A032834(n+1)`
-/

namespace A284633.P7634938825313314307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284379 (n + 1) - A032834 (n + 1)

end

end A284633.P7634938825313314307

/-! ## A284633.P16553503552514793229

`(A284382(n+1)+A032917(n+1))/2`
-/

namespace A284633.P16553503552514793229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284382 (n + 1) + A032917 (n + 1) : ℚ) / 2

end

end A284633.P16553503552514793229

/-! ## A284633.P15913226121859294284

`A032810(n+1)+A284632(n+1)/2`
-/

namespace A284633.P15913226121859294284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032810 (n + 1) : ℚ) + (A284632 (n + 1) : ℚ) / 2

end

end A284633.P15913226121859294284

/-! ## A284633.P4719676098438339950

`A032917(n+1)+A284634(n+1)/2`
-/

namespace A284633.P4719676098438339950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032917 (n + 1) : ℚ) + (A284634 (n + 1) : ℚ) / 2

end

end A284633.P4719676098438339950

/-! ## A284633.P1700760940558231226

`(A284973(n+1)+A032810(n+1))/2`
-/

namespace A284633.P1700760940558231226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284973 (n + 1) + A032810 (n + 1) : ℚ) / 2

end

end A284633.P1700760940558231226

/-! ## A284633.P18159013194518445824

`(A284963(n+1)+A032834(n+1))/2`
-/

namespace A284633.P18159013194518445824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284963 (n + 1) + A032834 (n + 1) : ℚ) / 2

end

end A284633.P18159013194518445824

/-! ## A284633.P8362042267351972222

`(A284379(n+1)+A143967(n+1))/2`
-/

namespace A284633.P8362042267351972222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284379 (n + 1) + A143967 (n + 1) : ℚ) / 2

end

end A284633.P8362042267351972222

/-! ## A284633.P8569293450259174325

`2*A143967(n+1)-A284963(n+1)`
-/

namespace A284633.P8569293450259174325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143967 (n + 1) - A284963 (n + 1)

end

end A284633.P8569293450259174325

/-!
# A284634: Numbers with digits 4 and 6 only.

The programs for A284634, there is no canonical definition to state claims against.
-/

/-! ## A284634.P16072127322819909131

`2*A032810(n+1)`
-/

namespace A284634.P16072127322819909131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032810 (n + 1)

end

end A284634.P16072127322819909131

/-! ## A284634.P3274856996099312838

`2/3*A284636(n+1)`
-/

namespace A284634.P3274856996099312838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A284636 (n + 1) : ℚ)

end

end A284634.P3274856996099312838

/-! ## A284634.P11519388127317657098

`A032834(n+1)+A007931(n+1)`
-/

namespace A284634.P11519388127317657098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + A007931 (n + 1)

end

end A284634.P11519388127317657098

/-! ## A284634.P13222798487745140071

`A284379(n+1)+A256077(n+1)`
-/

namespace A284634.P13222798487745140071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1) + A256077 (n + 1)

end

end A284634.P13222798487745140071

/-! ## A284634.P11747589689177554527

`A284381(n+1)-A007931(n+1)`
-/

namespace A284634.P11747589689177554527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284381 (n + 1) - A007931 (n + 1)

end

end A284634.P11747589689177554527

/-! ## A284634.P5238765677023378416

`A284382(n+1)-A032917(n+1)`
-/

namespace A284634.P5238765677023378416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1) - A032917 (n + 1)

end

end A284634.P5238765677023378416

/-! ## A284634.P13664293912572173673

`A284636(n+1)-A032810(n+1)`
-/

namespace A284634.P13664293912572173673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284636 (n + 1) - A032810 (n + 1)

end

end A284634.P13664293912572173673

/-! ## A284634.P11084553693125897029

`A284380(n+1)-A256077(n+1)`
-/

namespace A284634.P11084553693125897029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284380 (n + 1) - A256077 (n + 1)

end

end A284634.P11084553693125897029

/-! ## A284634.P14938598287809384203

`2*(A256077(n+1)+A007931(n+1))`
-/

namespace A284634.P14938598287809384203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A256077 (n + 1) + A007931 (n + 1))

end

end A284634.P14938598287809384203

/-! ## A284634.P8025813924623641507

`A284920(n+1)+2*A256077(n+1)`
-/

namespace A284634.P8025813924623641507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284920 (n + 1) + 2 * A256077 (n + 1)

end

end A284634.P8025813924623641507

/-! ## A284634.P209220927363543308

`2*(A143967(n+1)-A032822(n+1))`
-/

namespace A284634.P209220927363543308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A143967 (n + 1) - A032822 (n + 1))

end

end A284634.P209220927363543308

/-! ## A284634.P3707145500105770608

`2*(A032834(n+1)-A256077(n+1))`
-/

namespace A284634.P3707145500105770608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A032834 (n + 1) - A256077 (n + 1))

end

end A284634.P3707145500105770608

/-! ## A284634.P5295065267276274799

`2*(A284379(n+1)-A007931(n+1))`
-/

namespace A284634.P5295065267276274799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284379 (n + 1) - A007931 (n + 1))

end

end A284634.P5295065267276274799

/-! ## A284634.P13864703510882650350

`A007931(n+1)+A284635(n+1)/2`
-/

namespace A284634.P13864703510882650350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007931 (n + 1) : ℚ) + (A284635 (n + 1) : ℚ) / 2

end

end A284634.P13864703510882650350

/-! ## A284634.P4786570772350529373

`2*(A284380(n+1)-A032834(n+1))`
-/

namespace A284634.P4786570772350529373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284380 (n + 1) - A032834 (n + 1))

end

end A284634.P4786570772350529373

/-! ## A284634.P11748278879708839827

`(A284381(n+1)+A032834(n+1))/2`
-/

namespace A284634.P11748278879708839827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284381 (n + 1) + A032834 (n + 1) : ℚ) / 2

end

end A284634.P11748278879708839827

/-! ## A284634.P12434477518384888449

`2*(A284633(n+1)-A032917(n+1))`
-/

namespace A284634.P12434477518384888449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284633 (n + 1) - A032917 (n + 1))

end

end A284634.P12434477518384888449

/-! ## A284634.P9636239526186225093

`A032834(n+1)+A284920(n+1)/2`
-/

namespace A284634.P9636239526186225093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032834 (n + 1) : ℚ) + (A284920 (n + 1) : ℚ) / 2

end

end A284634.P9636239526186225093

/-! ## A284634.P14744003237819116363

`2*(A284972(n+1)-A072961(n+1))`
-/

namespace A284634.P14744003237819116363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284972 (n + 1) - A072961 (n + 1))

end

end A284634.P14744003237819116363

/-! ## A284634.P10833571017045611841

`A284635(n+1)-2*A256077(n+1)`
-/

namespace A284634.P10833571017045611841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284635 (n + 1) - 2 * A256077 (n + 1)

end

end A284634.P10833571017045611841

/-!
# A284635: Numbers with digits 6 and 8 only.

The programs for A284635, there is no canonical definition to state claims against.
-/

/-! ## A284635.P906447780553104997

`2*A032834(n+1)`
-/

namespace A284635.P906447780553104997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032834 (n + 1)

end

end A284635.P906447780553104997

/-! ## A284635.P12212502048062368756

`A256291(n+1)+A007931(n+1)`
-/

namespace A284635.P12212502048062368756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256291 (n + 1) + A007931 (n + 1)

end

end A284635.P12212502048062368756

/-! ## A284635.P3034825599056130403

`A256290(n+1)+A032810(n+1)`
-/

namespace A284635.P3034825599056130403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + A032810 (n + 1)

end

end A284635.P3034825599056130403

/-! ## A284635.P10223935825342006224

`A284380(n+1)+A256077(n+1)`
-/

namespace A284635.P10223935825342006224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284380 (n + 1) + A256077 (n + 1)

end

end A284635.P10223935825342006224

/-! ## A284635.P9493624577765824325

`A285011(n+1)-A256077(n+1)`
-/

namespace A284635.P9493624577765824325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285011 (n + 1) - A256077 (n + 1)

end

end A284635.P9493624577765824325

/-! ## A284635.P15924525826310481102

`2*(A256077(n+1)+A032810(n+1))`
-/

namespace A284635.P15924525826310481102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A256077 (n + 1) + A032810 (n + 1))

end

end A284635.P15924525826310481102

/-! ## A284635.P29491271100869428

`A284634(n+1)+2*A256077(n+1)`
-/

namespace A284635.P29491271100869428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284634 (n + 1) + 2 * A256077 (n + 1)

end

end A284635.P29491271100869428

/-! ## A284635.P12236148999919111233

`2*(A284634(n+1)-A007931(n+1))`
-/

namespace A284635.P12236148999919111233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284634 (n + 1) - A007931 (n + 1))

end

end A284635.P12236148999919111233

/-! ## A284635.P15505453702144892849

`2*(A284380(n+1)-A032810(n+1))`
-/

namespace A284635.P15505453702144892849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284380 (n + 1) - A032810 (n + 1))

end

end A284635.P15505453702144892849

/-! ## A284635.P6321154419527805799

`2*(A284972(n+1)-A032822(n+1))`
-/

namespace A284635.P6321154419527805799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284972 (n + 1) - A032822 (n + 1))

end

end A284635.P6321154419527805799

/-! ## A284635.P16455262846123957354

`2*(A284971(n+1)-A032917(n+1))`
-/

namespace A284635.P16455262846123957354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284971 (n + 1) - A032917 (n + 1))

end

end A284635.P16455262846123957354

/-! ## A284635.P4663773232124452408

`2*(A284382(n+1)-A072961(n+1))`
-/

namespace A284635.P4663773232124452408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284382 (n + 1) - A072961 (n + 1))

end

end A284635.P4663773232124452408

/-! ## A284635.P1773870647131920712

`2*(A256290(n+1)-A256077(n+1))`
-/

namespace A284635.P1773870647131920712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A256290 (n + 1) - A256077 (n + 1))

end

end A284635.P1773870647131920712

/-! ## A284635.P14837334266879473705

`A256290(n+1)+A284634(n+1)/2`
-/

namespace A284635.P14837334266879473705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256290 (n + 1) : ℚ) + (A284634 (n + 1) : ℚ) / 2

end

end A284635.P14837334266879473705

/-! ## A284635.P16813713579160611475

`(A284636(n+1)+A256292(n+1))/2`
-/

namespace A284635.P16813713579160611475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284636 (n + 1) + A256292 (n + 1) : ℚ) / 2

end

end A284635.P16813713579160611475

/-! ## A284635.P8773682170711152898

`2*(A285011(n+1)-A256290(n+1))`
-/

namespace A284635.P8773682170711152898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A285011 (n + 1) - A256290 (n + 1))

end

end A284635.P8773682170711152898

/-! ## A284635.P4119815435535278997

`2*(A284973(n+1)-A276037(n+1))`
-/

namespace A284635.P4119815435535278997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284973 (n + 1) - A276037 (n + 1))

end

end A284635.P4119815435535278997

/-! ## A284635.P17426565740454564925

`2*A284380(n+1)-A284634(n+1)`
-/

namespace A284635.P17426565740454564925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284380 (n + 1) - A284634 (n + 1)

end

end A284635.P17426565740454564925

/-! ## A284635.P9212695876098718820

`2*(A284636(n+1)-A284379(n+1))`
-/

namespace A284635.P9212695876098718820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284636 (n + 1) - A284379 (n + 1))

end

end A284635.P9212695876098718820

/-! ## A284635.P13017070793025823217

`2*(A284381(n+1)-A284920(n+1))`
-/

namespace A284635.P13017070793025823217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284381 (n + 1) - A284920 (n + 1))

end

end A284635.P13017070793025823217

/-!
# A284636: Numbers with digits 6 and 9 only.

The programs for A284636, there is no canonical definition to state claims against.
-/

/-! ## A284636.P1775695886207587741

`3*A032810(n+1)`
-/

namespace A284636.P1775695886207587741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032810 (n + 1)

end

end A284636.P1775695886207587741

/-! ## A284636.P17515350056310759713

`3/2*A284634(n+1)`
-/

namespace A284636.P17515350056310759713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A284634 (n + 1) : ℚ)

end

end A284636.P17515350056310759713

/-! ## A284636.P7827940785372743252

`A256291(n+1)+A032917(n+1)`
-/

namespace A284636.P7827940785372743252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256291 (n + 1) + A032917 (n + 1)

end

end A284636.P7827940785372743252

/-! ## A284636.P5973998221260763678

`A284380(n+1)+A007931(n+1)`
-/

namespace A284636.P5973998221260763678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284380 (n + 1) + A007931 (n + 1)

end

end A284636.P5973998221260763678

/-! ## A284636.P13272332584637026058

`A284379(n+1)+A032834(n+1)`
-/

namespace A284636.P13272332584637026058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1) + A032834 (n + 1)

end

end A284636.P13272332584637026058

/-! ## A284636.P13750993538640509462

`A284634(n+1)+A032810(n+1)`
-/

namespace A284636.P13750993538640509462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284634 (n + 1) + A032810 (n + 1)

end

end A284636.P13750993538640509462

/-! ## A284636.P13956270562625401687

`A284381(n+1)+A256077(n+1)`
-/

namespace A284636.P13956270562625401687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284381 (n + 1) + A256077 (n + 1)

end

end A284636.P13956270562625401687

/-! ## A284636.P17960742530839492267

`A284920(n+1)+A256290(n+1)`
-/

namespace A284636.P17960742530839492267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284920 (n + 1) + A256290 (n + 1)

end

end A284636.P17960742530839492267

/-! ## A284636.P2502813483515230576

`A256290(n+1)+2*A007931(n+1)`
-/

namespace A284636.P2502813483515230576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + 2 * A007931 (n + 1)

end

end A284636.P2502813483515230576

/-! ## A284636.P13531440794844955397

`A284971(n+1)+2*A256077(n+1)`
-/

namespace A284636.P13531440794844955397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1) + 2 * A256077 (n + 1)

end

end A284636.P13531440794844955397

/-! ## A284636.P7167206068995280652

`2*A284380(n+1)-A256290(n+1)`
-/

namespace A284636.P7167206068995280652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284380 (n + 1) - A256290 (n + 1)

end

end A284636.P7167206068995280652

/-! ## A284636.P17753905107154562079

`2*A284635(n+1)-A256292(n+1)`
-/

namespace A284636.P17753905107154562079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284635 (n + 1) - A256292 (n + 1)

end

end A284636.P17753905107154562079

/-! ## A284636.P9634163758196138802

`A256291(n+1)+A284632(n+1)/2`
-/

namespace A284636.P9634163758196138802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256291 (n + 1) : ℚ) + (A284632 (n + 1) : ℚ) / 2

end

end A284636.P9634163758196138802

/-! ## A284636.P12902200219277630202

`A256290(n+1)+A284972(n+1)/2`
-/

namespace A284636.P12902200219277630202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256290 (n + 1) : ℚ) + (A284972 (n + 1) : ℚ) / 2

end

end A284636.P12902200219277630202

/-! ## A284636.P4859835271229006076

`3*(A284381(n+1)-A284379(n+1))`
-/

namespace A284636.P4859835271229006076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A284381 (n + 1) - A284379 (n + 1))

end

end A284636.P4859835271229006076

/-! ## A284636.P238055310323618464

`A007931(n+1)+A032834(n+1)+A032810(n+1)`
-/

namespace A284636.P238055310323618464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + (A032834 (n + 1) + A032810 (n + 1))

end

end A284636.P238055310323618464

/-! ## A284636.P8914375166445833687

`A032810(n+1)+A284381(n+1)-A007931(n+1)`
-/

namespace A284636.P8914375166445833687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) + (A284381 (n + 1) - A007931 (n + 1))

end

end A284636.P8914375166445833687

/-! ## A284636.P9218182695373384396

`A032834(n+1)+A284381(n+1)-A032810(n+1)`
-/

namespace A284636.P9218182695373384396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + (A284381 (n + 1) - A032810 (n + 1))

end

end A284636.P9218182695373384396

/-! ## A284636.P2255169082992288411

`A032834(n+1)+A284973(n+1)-A032822(n+1)`
-/

namespace A284636.P2255169082992288411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + (A284973 (n + 1) - A032822 (n + 1))

end

end A284636.P2255169082992288411

/-! ## A284636.P7544487081267659046

`A256290(n+1)+A284381(n+1)-A032834(n+1)`
-/

namespace A284636.P7544487081267659046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + (A284381 (n + 1) - A032834 (n + 1))

end

end A284636.P7544487081267659046

/-!
# A284639: Number of ways to write n > 1 as a power of a product n = (x_1*..*x_k)^y, where y >= 1, x_i > 1, and x_i <= x_j for i < j.

The programs for A284639, there is no canonical definition to state claims against.
-/

/-! ## A284639.P9627725133158369547

`A116370(3*A079617(n+2))`
-/

namespace A284639.P9627725133158369547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116370 (3 * A079617 (n + 2)).toNat

end

end A284639.P9627725133158369547

/-! ## A284639.P6477532538747218597

`A073524(A332671(3*n+4)+A046523(n+2))`
-/

namespace A284639.P6477532538747218597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073524 (A332671 (3 * n + 4) + A046523 (n + 2)).toNat

end

end A284639.P6477532538747218597

/-! ## A284639.P12560328511912647338

`A184340(2*(n+1))+A046645(n+2)-1`
-/

namespace A284639.P12560328511912647338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184340 (2 * (n + 1)) + (A046645 (n + 2) - 1)

end

end A284639.P12560328511912647338

/-! ## A284639.P6595199255474299356

`A240832(A184340(2*(n+1)))+A046645(n+2)`
-/

namespace A284639.P6595199255474299356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240832 (A184340 (2 * (n + 1))).toNat + A046645 (n + 2)

end

end A284639.P6595199255474299356

/-! ## A284639.P15411108632963680151

`A157226(A211776(n+2))`
-/

namespace A284639.P15411108632963680151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157226 (A211776 (n + 2)).toNat

end

end A284639.P15411108632963680151

/-!
# A284640: Number of positive subset sums of strict integer partitions of n.

The programs for A284640, there is no canonical definition to state claims against.
-/

/-! ## A284640.P16281606671363127271

`A365925(n+1)-A000009(n+1)`
-/

namespace A284640.P16281606671363127271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365925 (n + 1) - A000009 (n + 1)

end

end A284640.P16281606671363127271

/-! ## A284640.P17978669114109407496

`A123108(eq[A174064(n+1), A174066(n+1)])`
-/

namespace A284640.P17978669114109407496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A284640.P17978669114109407496

/-!
# A284642: Numbers k such that concat(k, sigma(k)) and concat(sigma(k), k) are both prime.

The programs for A284642, there is no canonical definition to state claims against.
-/

/-! ## A284642.P11818192635951225024

`record[or(A018470(n+1), A168491(n))²]`
-/

namespace A284642.P11818192635951225024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018470 (n + 1)) (A168491 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284642.P11818192635951225024

/-!
# A284643: Numbers k such that concat(k, d(k)) and concat(d(k), k) are both prime, where d(k) is the number of divisors of k.

The programs for A284643, there is no canonical definition to state claims against.
-/

/-! ## A284643.P14949303953375939286

`A322273(A001042(n))²`
-/

namespace A284643.P14949303953375939286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322273 (A001042 n).toNat ^ 2

end

end A284643.P14949303953375939286

/-!
# A284644: a(1) = a(2) = 2, a(3) = 1; a(n) = a(n-a(n-1)) + a(n-a(n-2)) for n > 3.

The programs for A284644, the canonical program `A284644.P5692453168812054425` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284644 has offset 1).

The definition of A284644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))` (program `A284644.P5692453168812054425`, by `A284644.P5692453168812054425.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A284644.P5692453168812054425

`a(n-a(n-1))+a(n-a(n-2))` with `a(0)=2, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A284644

/-- `a(n-a(n-1))+a(n-a(n-2))` -/
def P5692453168812054425.Spec : Prop :=
  ∀ n, (P5692453168812054425.a n : ℤ) = A284644 (n + 1)

theorem P5692453168812054425.correct : P5692453168812054425.Spec := by
  intro n
  simp only [A284644, Nat.add_sub_cancel]

end A284644

/-!
# A284645: Number of partitions of n^2 that are the sum of n not necessarily distinct partitions of n.

The programs for A284645, there is no canonical definition to state claims against.
-/

/-! ## A284645.P9033652881446546333

`A213086(2*n²+1)`
-/

namespace A284645.P9033652881446546333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (2 * n ^ 2 + 1)

end

end A284645.P9033652881446546333

/-! ## A284645.P13854560666368992806

`A213086(A058331(n))+char[10]`
-/

namespace A284645.P13854560666368992806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (A058331 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A284645.P13854560666368992806

/-! ## A284645.P8638370130396383179

`A007318(∑[n])*A213086(A058331(n))`
-/

namespace A284645.P8638370130396383179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A213086 (A058331 n).toNat

end

end A284645.P8638370130396383179

/-! ## A284645.P10881803850832716775

`A213086(A058331(n))/A007318(C(2, n))`
-/

namespace A284645.P10881803850832716775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213086 (A058331 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A284645.P10881803850832716775

/-! ## A284645.P14977679112751039927

`A213086(A058331(n))/A000108(and(1, -n))`
-/

namespace A284645.P14977679112751039927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213086 (A058331 n).toNat : ℚ) / (A000108 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A284645.P14977679112751039927

/-!
# A284646: Variation on Leyland numbers: k = x'^y + y'^x, where x' and y' are the arithmetic derivative of x and y.

The programs for A284646, there is no canonical definition to state claims against.
-/

/-! ## A284646.P11021951080406354155

`record[A130795(n+5)²+1]`
-/

namespace A284646.P11021951080406354155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130795 (n + 5) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284646.P11021951080406354155

/-! ## A284646.P6675525979369708610

`((n+3)²+1)%A005343(n+1)`
-/

namespace A284646.P6675525979369708610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 3) ^ 2 + 1 : ℤ) (A005343 (n + 1))

end

end A284646.P6675525979369708610

/-! ## A284646.P1825887375002957059

`(n+3)^A001222(∏{p}[6^n, #])+1`
-/

namespace A284646.P1825887375002957059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ) + 1

end

end A284646.P1825887375002957059

/-! ## A284646.P17706728616765221719

`(n+3)²%A156831(2*(n+1))+1`
-/

namespace A284646.P17706728616765221719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 3) ^ 2 : ℤ) (A156831 (2 * (n + 1))) + 1

end

end A284646.P17706728616765221719

/-!
# A284647: Number of nonisomorphic unfoldings in an n-gonal Archimedean antiprism.

The programs for A284647, the canonical program `A284647.P15991210336664587039` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284647 has offset 0).

The definition of A284647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284647.P15991210336664587039

`11*(a(n-1)-3*(a(n-2)-a(n-3))-a(n-4))+a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=36, a(4)=231`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A284647

/-- `11*(a(n-1)-3*(a(n-2)-a(n-3))-a(n-4))+a(n-5)` -/
def P15991210336664587039.Spec : Prop :=
  ∀ n, P15991210336664587039.a n = A284647 n

theorem P15991210336664587039.correct : P15991210336664587039.Spec := by
  intro n
  simp only [A284647]

end A284647

/-! ## A284647.P12134411225002687027

`C(∑[3*a(n-1)-a(n-2)], 2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A284647.P12134411225002687027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A284647.P12134411225002687027

namespace A284647

/-- `C(∑[3*a(n-1)-a(n-2)], 2)` -/
def P12134411225002687027.Spec : Prop :=
  ∀ n, (P12134411225002687027.a n : ℤ) = A284647 n

end A284647

/-! ## A284647.P15649964530622493619

`A033192(2*n)`
-/

namespace A284647.P15649964530622493619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 (2 * n)

end

end A284647.P15649964530622493619

namespace A284647

/-- `A033192(2*n)` -/
def P15649964530622493619.Spec : Prop :=
  ∀ n, P15649964530622493619.a n = A284647 n

end A284647

/-! ## A284647.P4029937484642334

`C(A055588(n), 2)`
-/

namespace A284647.P4029937484642334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055588 n).toNat 2

end

end A284647.P4029937484642334

namespace A284647

/-- `C(A055588(n), 2)` -/
def P4029937484642334.Spec : Prop :=
  ∀ n, (P4029937484642334.a n : ℤ) = A284647 n

end A284647

/-! ## A284647.P6154370694684077353

`C(∑[A001519(n)], 2)`
-/

namespace A284647.P6154370694684077353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A284647.P6154370694684077353

namespace A284647

/-- `C(∑[A001519(n)], 2)` -/
def P6154370694684077353.Spec : Prop :=
  ∀ n, (P6154370694684077353.a n : ℤ) = A284647 n

end A284647

/-! ## A284647.P12220678487481000089

`A032441(2*n)-1`
-/

namespace A284647.P12220678487481000089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032441 (2 * n) - 1

end

end A284647.P12220678487481000089

namespace A284647

/-- `A032441(2*n)-1` -/
def P12220678487481000089.Spec : Prop :=
  ∀ n, P12220678487481000089.a n = A284647 n

end A284647

/-! ## A284647.P5503238783608364661

`A059727(2*n)/2`
-/

namespace A284647.P5503238783608364661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059727 (2 * n) : ℚ) / 2

end

end A284647.P5503238783608364661

namespace A284647

/-- `A059727(2*n)/2` -/
def P5503238783608364661.Spec : Prop :=
  ∀ n, P5503238783608364661.a n = (A284647 n : ℚ)

end A284647

/-! ## A284647.P6411579267729164721

`A382608(2*n)/4`
-/

namespace A284647.P6411579267729164721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382608 (2 * n) : ℚ) / 4

end

end A284647.P6411579267729164721

namespace A284647

/-- `A382608(2*n)/4` -/
def P6411579267729164721.Spec : Prop :=
  ∀ n, P6411579267729164721.a n = (A284647 n : ℚ)

end A284647

/-! ## A284647.P6979267017601138751

`C(A001906(n)+1, 2)`
-/

namespace A284647.P6979267017601138751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001906 n + 1).toNat 2

end

end A284647.P6979267017601138751

namespace A284647

/-- `C(A001906(n)+1, 2)` -/
def P6979267017601138751.Spec : Prop :=
  ∀ n, (P6979267017601138751.a n : ℤ) = A284647 n

end A284647

/-! ## A284647.P11754521864140416962

`C(A001611(2*n), 2)`
-/

namespace A284647.P11754521864140416962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001611 (2 * n)).toNat 2

end

end A284647.P11754521864140416962

namespace A284647

/-- `C(A001611(2*n), 2)` -/
def P11754521864140416962.Spec : Prop :=
  ∀ n, (P11754521864140416962.a n : ℤ) = A284647 n

end A284647

/-! ## A284647.P5060990393556953362

`C(A008346(2*n), 2)`
-/

namespace A284647.P5060990393556953362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008346 (2 * n)).toNat 2

end

end A284647.P5060990393556953362

namespace A284647

/-- `C(A008346(2*n), 2)` -/
def P5060990393556953362.Spec : Prop :=
  ∀ n, (P5060990393556953362.a n : ℤ) = A284647 n

end A284647

/-! ## A284647.P578021909720927772

`C(A355020(2*n), 2)`
-/

namespace A284647.P578021909720927772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A355020 (2 * n)).toNat 2

end

end A284647.P578021909720927772

namespace A284647

/-- `C(A355020(2*n), 2)` -/
def P578021909720927772.Spec : Prop :=
  ∀ n, (P578021909720927772.a n : ℤ) = A284647 n

end A284647

/-! ## A284647.P994748657933861652

`C(∑[A032908(n)-1], 2)`
-/

namespace A284647.P994748657933861652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A284647.P994748657933861652

namespace A284647

/-- `C(∑[A032908(n)-1], 2)` -/
def P994748657933861652.Spec : Prop :=
  ∀ n, (P994748657933861652.a n : ℤ) = A284647 n

end A284647

/-! ## A284647.P1317499075473144173

`C(∑[A212804(2*n)], 2)`
-/

namespace A284647.P1317499075473144173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A284647.P1317499075473144173

namespace A284647

/-- `C(∑[A212804(2*n)], 2)` -/
def P1317499075473144173.Spec : Prop :=
  ∀ n, (P1317499075473144173.a n : ℤ) = A284647 n

end A284647

/-! ## A284647.P10135726035986873032

`C(A000045(2*n)+1, 2)`
-/

namespace A284647.P10135726035986873032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000045 (2 * n) + 1).toNat 2

end

end A284647.P10135726035986873032

namespace A284647

/-- `C(A000045(2*n)+1, 2)` -/
def P10135726035986873032.Spec : Prop :=
  ∀ n, (P10135726035986873032.a n : ℤ) = A284647 n

end A284647

/-! ## A284647.P2451662706782324119

`C(A094966(2*n)+1, 2)`
-/

namespace A284647.P2451662706782324119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094966 (2 * n) + 1).toNat 2

end

end A284647.P2451662706782324119

namespace A284647

/-- `C(A094966(2*n)+1, 2)` -/
def P2451662706782324119.Spec : Prop :=
  ∀ n, (P2451662706782324119.a n : ℤ) = A284647 n

end A284647

/-! ## A284647.P15193710356679036925

`C(A157725(2*n)-1, 2)`
-/

namespace A284647.P15193710356679036925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A157725 (2 * n) - 1).toNat 2

end

end A284647.P15193710356679036925

namespace A284647

/-- `C(A157725(2*n)-1, 2)` -/
def P15193710356679036925.Spec : Prop :=
  ∀ n, (P15193710356679036925.a n : ℤ) = A284647 n

end A284647

/-! ## A284647.P8512969497905495134

`C(A157726(2*n)-2, 2)`
-/

namespace A284647.P8512969497905495134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A157726 (2 * n) - 2).toNat 2

end

end A284647.P8512969497905495134

namespace A284647

/-- `C(A157726(2*n)-2, 2)` -/
def P8512969497905495134.Spec : Prop :=
  ∀ n, (P8512969497905495134.a n : ℤ) = A284647 n

end A284647

/-! ## A284647.P14796574820029276534

`C(A212804(2*n+1)+1, 2)`
-/

namespace A284647.P14796574820029276534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A212804 (2 * n + 1) + 1).toNat 2

end

end A284647.P14796574820029276534

namespace A284647

/-- `C(A212804(2*n+1)+1, 2)` -/
def P14796574820029276534.Spec : Prop :=
  ∀ n, (P14796574820029276534.a n : ℤ) = A284647 n

end A284647

/-!
# A284648: Numerator of sum of reciprocals of all divisors of all positive integers <= n.

The programs for A284648, there is no canonical definition to state claims against.
-/

/-! ## A284648.P5507935024302283546

`A356010(n+1)/A161980(A334958(n+1))`
-/

namespace A284648.P5507935024302283546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356010 (n + 1) : ℚ) / (A161980 (A334958 (n + 1)).toNat : ℚ)

end

end A284648.P5507935024302283546

/-! ## A284648.P10296082117721777204

`A090395(A356010(n+1))`
-/

namespace A284648.P10296082117721777204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (A356010 (n + 1)).toNat

end

end A284648.P10296082117721777204

/-!
# A284649: Primes p such that 2^(p-1) mod p^2 < p+2.

The programs for A284649, there is no canonical definition to state claims against.
-/

/-! ## A284649.P13186747537174212827

`p?[∑[A332651(A205557(n+1))]]`
-/

namespace A284649.P13186747537174212827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332651 (A205557 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A284649.P13186747537174212827

/-!
# A284650: Denominator of sum of reciprocals of all divisors of all positive integers <= n.

The programs for A284650, there is no canonical definition to state claims against.
-/

/-! ## A284650.P13182995335334816175

`A034699(A330719(n+1))*A290344(n+1)`
-/

namespace A284650.P13182995335334816175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A330719 (n + 1)).toNat * A290344 (n + 1)

end

end A284650.P13182995335334816175

/-! ## A284650.P12588412233628675407

`A111930(n+1)/A034699(A330719(n+1))`
-/

namespace A284650.P12588412233628675407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111930 (n + 1) : ℚ) / (A034699 (A330719 (n + 1)).toNat : ℚ)

end

end A284650.P12588412233628675407

/-! ## A284650.P7685562606139746504

`A007407(n+1)/A003418(A242474(n+1))`
-/

namespace A284650.P7685562606139746504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007407 (n + 1) : ℚ) / (A003418 (A242474 (n + 1)).toNat : ℚ)

end

end A284650.P7685562606139746504

/-! ## A284650.P309040265976824614

`A324500(2^n)`
-/

namespace A284650.P309040265976824614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324500 (2 ^ n)

end

end A284650.P309040265976824614

/-! ## A284650.P15535804067419133781

`gcd(∏[n+1], A324500(A000079(n)))`
-/

namespace A284650.P15535804067419133781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A324500 (A000079 n).toNat)

end

end A284650.P15535804067419133781

/-!
# A284651: Lexicographically earliest sequence of unique numbers such that for each digit "d" exactly one of the gaps to the neighboring digits "d" is equal to d, and no gap is smaller than d.

The programs for A284651, there is no canonical definition to state claims against.
-/

/-! ## A284651.P3736984354342433986

`A284516(n+1)+A025465(A188021(n))`
-/

namespace A284651.P3736984354342433986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284516 (n + 1) + A025465 (A188021 n).toNat

end

end A284651.P3736984354342433986

/-! ## A284651.P11080453877203871767

`A284527(A284563(n+3))+A284516(n+1)`
-/

namespace A284651.P11080453877203871767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284527 (A284563 (n + 3)).toNat + A284516 (n + 1)

end

end A284651.P11080453877203871767

/-! ## A284651.P15190952372455446131

`A294930(A250266(n))+A284516(n+1)`
-/

namespace A284651.P15190952372455446131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (A250266 n).toNat + A284516 (n + 1)

end

end A284651.P15190952372455446131

/-!
# A284652: Number T(n,k) of self-avoiding planar walks of length k starting at (0,0), ending at (n,0), remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1) with the restriction that (0,1) is never used below the diagonal and (1,0) is never used above the diagonal; triangle T(n,k), k>=0, floor((sqrt(1+8*k)-1)/2)<=n<=k, read by columns.

The programs for A284652, there is no canonical definition to state claims against.
-/

/-! ## A284652.P10514821235548089262

`A061394(n+1)^A001221(A148531(n))`
-/

namespace A284652.P10514821235548089262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061394 (n + 1) : ℚ) ^ (A001221 (A148531 n).toNat : ℤ)

end

end A284652.P10514821235548089262

/-! ## A284652.P8729502853947958936

`A302243(A302069(n+1))^A122921(n)`
-/

namespace A284652.P8729502853947958936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302243 (A302069 (n + 1)).toNat : ℚ) ^ (A122921 n : ℤ)

end

end A284652.P8729502853947958936

/-!
# A284653: 0-limiting word of the morphism 0 -> 1, 1 -> 0110.

The programs for A284653, there is no canonical definition to state claims against.
-/

/-! ## A284653.P201572964082749340

`A106052(n)%2`
-/

namespace A284653.P201572964082749340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106052 n) 2

end

end A284653.P201572964082749340

/-! ## A284653.P194721769010811432

`char[A284655(n+1)-1]`
-/

namespace A284653.P194721769010811432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284655 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284653.P194721769010811432

/-! ## A284653.P17272304809772841991

`char[comp[A284654(n+1)-1]]`
-/

namespace A284653.P17272304809772841991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284654 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A284653.P17272304809772841991

/-! ## A284653.P16406111337840134017

`and(A001535(n), A106052(n))`
-/

namespace A284653.P16406111337840134017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A106052 n)

end

end A284653.P16406111337840134017

/-! ## A284653.P16531701389220288389

`and(A001546(n), A106052(n))`
-/

namespace A284653.P16531701389220288389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A106052 n)

end

end A284653.P16531701389220288389

/-! ## A284653.P3129162544088468113

`and(A001846(n), A106052(n))`
-/

namespace A284653.P3129162544088468113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A106052 n)

end

end A284653.P3129162544088468113

/-! ## A284653.P2056554602339224399

`and(A004768(n), A106052(n))`
-/

namespace A284653.P2056554602339224399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A106052 n)

end

end A284653.P2056554602339224399

/-! ## A284653.P3618338595247258198

`and(A007204(n), A106052(n))`
-/

namespace A284653.P3618338595247258198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007204 n) (A106052 n)

end

end A284653.P3618338595247258198

/-! ## A284653.P13639042987904591770

`and(A008349(n), A106052(n))`
-/

namespace A284653.P13639042987904591770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A106052 n)

end

end A284653.P13639042987904591770

/-! ## A284653.P8367029739954102171

`and(A008362(n), A106052(n))`
-/

namespace A284653.P8367029739954102171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A106052 n)

end

end A284653.P8367029739954102171

/-! ## A284653.P11644214647796872704

`and(A008417(n), A106052(n))`
-/

namespace A284653.P11644214647796872704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A106052 n)

end

end A284653.P11644214647796872704

/-! ## A284653.P17546945328592176504

`and(A008514(n), A106052(n))`
-/

namespace A284653.P17546945328592176504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 n) (A106052 n)

end

end A284653.P17546945328592176504

/-! ## A284653.P5881414194093586164

`and(A008516(n), A106052(n))`
-/

namespace A284653.P5881414194093586164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008516 n) (A106052 n)

end

end A284653.P5881414194093586164

/-! ## A284653.P13535896147542927979

`and(A010690(n), A106052(n))`
-/

namespace A284653.P13535896147542927979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010690 n) (A106052 n)

end

end A284653.P13535896147542927979

/-! ## A284653.P5424150769750993728

`and(A014736(n), A106052(n))`
-/

namespace A284653.P5424150769750993728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014736 n) (A106052 n)

end

end A284653.P5424150769750993728

/-! ## A284653.P174832378486203846

`and(A014769(n), A106052(n))`
-/

namespace A284653.P174832378486203846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014769 n) (A106052 n)

end

end A284653.P174832378486203846

/-! ## A284653.P4563515953297129248

`and(A014793(n), A106052(n))`
-/

namespace A284653.P4563515953297129248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014793 n) (A106052 n)

end

end A284653.P4563515953297129248

/-! ## A284653.P7415807056486452227

`and(A014795(n), A106052(n))`
-/

namespace A284653.P7415807056486452227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014795 n) (A106052 n)

end

end A284653.P7415807056486452227

/-! ## A284653.P3971085027221874186

`and(A014797(n), A106052(n))`
-/

namespace A284653.P3971085027221874186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014797 n) (A106052 n)

end

end A284653.P3971085027221874186

/-! ## A284653.P4056595638609569916

`and(A014799(n), A106052(n))`
-/

namespace A284653.P4056595638609569916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014799 n) (A106052 n)

end

end A284653.P4056595638609569916

/-!
# A284654: Positions of 0 in A284653; complement of A284655.

The programs for A284654, there is no canonical definition to state claims against.
-/

/-! ## A284654.P11498410396733362907

`eq[0, A284653(n+1)]+1`
-/

namespace A284654.P11498410396733362907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284653 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284654.P11498410396733362907

/-! ## A284654.P12779902368829598557

`lt[0, 3%A106052(n)]+1`
-/

namespace A284654.P12779902368829598557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A106052 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A284654.P12779902368829598557

/-! ## A284654.P8182530442424995506

`lt[n*A284653(A028310(n)), n]`
-/

namespace A284654.P8182530442424995506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284653 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284654.P8182530442424995506

/-! ## A284654.P15503241088732498635

`lt[and(A106008(n+1)², A106052(n)), 1]+1`
-/

namespace A284654.P15503241088732498635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106008 (n + 1) ^ 2) (A106052 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A284654.P15503241088732498635

/-! ## A284654.P8618679351465718675

`record[n+1-A005914(n)*A284653(n+1)]`
-/

namespace A284654.P8618679351465718675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005914 n * A284653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284654.P8618679351465718675

/-! ## A284654.P14571761454105435139

`record[n+1-A049068(n+1)*A284653(n+1)]`
-/

namespace A284654.P14571761454105435139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A049068 (n + 1) * A284653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284654.P14571761454105435139

/-! ## A284654.P12869407909386510425

`A284657(n+1)-A284653(A284657(n+1))`
-/

namespace A284654.P12869407909386510425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284657 (n + 1) - A284653 (A284657 (n + 1)).toNat

end

end A284654.P12869407909386510425

/-!
# A284655: Positions of 1 in A284653; complement of A284654.

The programs for A284655, there is no canonical definition to state claims against.
-/

/-! ## A284655.P14517535075595793304

`comp[A284654(n+1)-1]+1`
-/

namespace A284655.P14517535075595793304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284654 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284655.P14517535075595793304

/-! ## A284655.P15445805073062512232

`filter[n+1, A284653(#)]`
-/

namespace A284655.P15445805073062512232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284653 (f1 j) = 1) n)

end

end A284655.P15445805073062512232

/-! ## A284655.P12404152171356296126

`lt[0, A284653(n+1)]+1`
-/

namespace A284655.P12404152171356296126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284653 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A284655.P12404152171356296126

/-! ## A284655.P9797647903046569443

`eq[0, 3%A106052(n)]+1`
-/

namespace A284655.P9797647903046569443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A106052 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284655.P9797647903046569443

/-! ## A284655.P9687341555387238959

`lt[0, A284653(A028310(n))]`
-/

namespace A284655.P9687341555387238959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284653 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A284655.P9687341555387238959

/-! ## A284655.P7474642409491007641

`A284658(n+1)+1-A284653(A284658(n+1))`
-/

namespace A284655.P7474642409491007641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284658 (n + 1) + (1 - A284653 (A284658 (n + 1)).toNat)

end

end A284655.P7474642409491007641

/-! ## A284655.P12526830743241230911

`A284657(2*n+1)-3*n`
-/

namespace A284655.P12526830743241230911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284657 (2 * n + 1) - (3 * n : ℤ)

end

end A284655.P12526830743241230911

/-! ## A284655.P2124914443657747426

`A284657(2*(n+1))%(3*(n+1))`
-/

namespace A284655.P2124914443657747426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284657 (2 * (n + 1))) (3 * (n + 1) : ℤ)

end

end A284655.P2124914443657747426

/-! ## A284655.P16987239447349040962

`A284658(n+1)+A284653(A284657(2*n+1))`
-/

namespace A284655.P16987239447349040962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284658 (n + 1) + A284653 (A284657 (2 * n + 1)).toNat

end

end A284655.P16987239447349040962

/-! ## A284655.P14076683079262231389

`A284658(n+1)+A284656(A284654(2*(n+1)))`
-/

namespace A284655.P14076683079262231389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284658 (n + 1) + A284656 (A284654 (2 * (n + 1))).toNat

end

end A284655.P14076683079262231389

/-! ## A284655.P11523570852142142293

`eq[A057427(3*n+1), A284653(A028310(n))]`
-/

namespace A284655.P11523570852142142293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284653 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284655.P11523570852142142293

/-!
# A284656: 1-limiting word of the morphism 0 -> 1, 1 -> 0110.

The programs for A284656, there is no canonical definition to state claims against.
-/

/-! ## A284656.P3862485392812011167

`char[A284658(n+1)-1]`
-/

namespace A284656.P3862485392812011167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284658 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284656.P3862485392812011167

/-! ## A284656.P14314761574139719630

`char[comp[A284657(n+1)-1]]`
-/

namespace A284656.P14314761574139719630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284657 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A284656.P14314761574139719630

/-! ## A284656.P14594175122075060234

`char[A023443(A284658(n+1))]`
-/

namespace A284656.P14594175122075060234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A284658 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284656.P14594175122075060234

/-! ## A284656.P11063471546410260549

`A322796((A298366(n+1)+1)²)`
-/

namespace A284656.P11063471546410260549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 ((A298366 (n + 1) + 1) ^ 2).toNat

end

end A284656.P11063471546410260549

/-! ## A284656.P5788524998909234985

`A359374(A000040(2*n+5)*A269345(n+1))`
-/

namespace A284656.P5788524998909234985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359374 (A000040 (2 * n + 5) * A269345 (n + 1)).toNat

end

end A284656.P5788524998909234985

/-!
# A284657: Positions of 0 in A284656; complement of A284658.

The programs for A284657, there is no canonical definition to state claims against.
-/

/-! ## A284657.P1013095192005332438

`eq[0, A284656(n+1)]+1`
-/

namespace A284657.P1013095192005332438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284657.P1013095192005332438

/-! ## A284657.P11018984570474902840

`A020725(eq[0, A284656(n+1)])`
-/

namespace A284657.P11018984570474902840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284657.P11018984570474902840

/-! ## A284657.P7745270066854062651

`A284656(A284654(n+1))+A284654(n+1)`
-/

namespace A284657.P7745270066854062651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284656 (A284654 (n + 1)).toNat + A284654 (n + 1)

end

end A284657.P7745270066854062651

/-! ## A284657.P17604263553321387716

`eq[0, A284656(A000007(n)+n)]`
-/

namespace A284657.P17604263553321387716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284656 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284657.P17604263553321387716

/-! ## A284657.P16097185325085404232

`eq[char[A284658(n+1)], A000007(n)]`
-/

namespace A284657.P16097185325085404232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284658 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A284657.P16097185325085404232

/-!
# A284658: Positions of 1 in A284656; complement of A284657.

The programs for A284658, there is no canonical definition to state claims against.
-/

/-! ## A284658.P16302048533833202744

`comp[A284657(n+1)-1]+1`
-/

namespace A284658.P16302048533833202744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284657 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284658.P16302048533833202744

/-! ## A284658.P11318641122685334115

`filter[n+1, A284656(#)]`
-/

namespace A284658.P11318641122685334115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284656 (f1 j) = 1) n)

end

end A284658.P11318641122685334115

/-! ## A284658.P8530945530550045007

`lt[0, A284656(n+1)]+1`
-/

namespace A284658.P8530945530550045007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A284658.P8530945530550045007

/-! ## A284658.P12479404583611110986

`eq[char[A284657(n+1)], A209229(2*n+1)]`
-/

namespace A284658.P12479404583611110986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284657 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A284658.P12479404583611110986

/-! ## A284658.P13518392601494667331

`A284655(n+1)+A284656(A284655(n+1))-1`
-/

namespace A284658.P13518392601494667331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284655 (n + 1) + (A284656 (A284655 (n + 1)).toNat - 1)

end

end A284658.P13518392601494667331

/-! ## A284658.P18151745126123648035

`A284654(2*n+1)-3*n`
-/

namespace A284658.P18151745126123648035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284654 (2 * n + 1) - (3 * n : ℤ)

end

end A284658.P18151745126123648035

/-! ## A284658.P4597566725187144764

`A284654(2*(n+1))%(3*(n+1))`
-/

namespace A284658.P4597566725187144764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284654 (2 * (n + 1))) (3 * (n + 1) : ℤ)

end

end A284658.P4597566725187144764

/-! ## A284658.P11964947222207037193

`A284655(n+1)-A284653(A284657(2*n+1))`
-/

namespace A284658.P11964947222207037193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284655 (n + 1) - A284653 (A284657 (2 * n + 1)).toNat

end

end A284658.P11964947222207037193

/-!
# A284660: Terms of A161897 that are not in A005385.

The programs for A284660, there is no canonical definition to state claims against.
-/

/-! ## A284660.P6095574385479966925

`p?[2*A005935(n+1)+1]`
-/

namespace A284660.P6095574385479966925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005935 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A284660.P6095574385479966925

/-! ## A284660.P10571053536482871785

`p?[2*A262051(n+1)+1]`
-/

namespace A284660.P10571053536482871785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262051 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A284660.P10571053536482871785

/-!
# A284661: Maximum value of Schubert polynomial specialization.

The programs for A284661, there is no canonical definition to state claims against.
-/

/-! ## A284661.P1004472172152925696

`record[A211361(Δ[A039946(n)])]`
-/

namespace A284661.P1004472172152925696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211361 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284661.P1004472172152925696

/-! ## A284661.P3559788591639935917

`record[A178518(record[A336336(2*n+5)])]`
-/

namespace A284661.P3559788591639935917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336336 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178518 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284661.P3559788591639935917

/-!
# A284663: Number of dominating sets in the Moebius ladder M_n.

The programs for A284663, there is no canonical definition to state claims against.
-/

/-! ## A284663.P11292305242313301489

`xor(A010675(n), A284702(n+1))`
-/

namespace A284663.P11292305242313301489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010675 n) (A284702 (n + 1))

end

end A284663.P11292305242313301489

/-! ## A284663.P18154205586053813229

`xor(A010673(n)², A284702(n+1))`
-/

namespace A284663.P18154205586053813229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 n ^ 2) (A284702 (n + 1))

end

end A284663.P18154205586053813229

/-! ## A284663.P2051347662751701714

`xor(4*A000035(n), A284702(n+1))`
-/

namespace A284663.P2051347662751701714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * A000035 n) (A284702 (n + 1))

end

end A284663.P2051347662751701714

/-! ## A284663.P4668624247723191599

`xor(and(4, A008574(n)), A284702(n+1))`
-/

namespace A284663.P4668624247723191599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land 4 (A008574 n)) (A284702 (n + 1))

end

end A284663.P4668624247723191599

/-! ## A284663.P18036255787717737845

`xor(Δ[A052928(n)]², A284702(n+1))`
-/

namespace A284663.P18036255787717737845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((f1 (n + 1) - f1 n) ^ 2) (A284702 (n + 1))

end

end A284663.P18036255787717737845

/-!
# A284664: Number of proper colorings of the 2n-gon with 2 instances of each of n colors under rotational symmetry.

The programs for A284664, there is no canonical definition to state claims against.
-/

/-! ## A284664.P14527209952602371797

`∩[A029145(3*n+1), A293401(n)-n]`
-/

namespace A284664.P14527209952602371797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029145 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293401 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284664.P14527209952602371797

/-!
# A284665: Numbers of form p^i + p^j for p prime and i, j > 0.

The programs for A284665, there is no canonical definition to state claims against.
-/

/-! ## A284665.P11423414867732673558

`eq[gcd(2, n+1), A005171(A061535(n+1))]`
-/

namespace A284665.P11423414867732673558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A061535 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284665.P11423414867732673558

/-! ## A284665.P11200636421374998938

`eq[A000034(n), A005171(A061535(n+1))]`
-/

namespace A284665.P11200636421374998938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A061535 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284665.P11200636421374998938

/-! ## A284665.P6284314628934442686

`eq[A005171(A061535(n+1)), A010689(n)]`
-/

namespace A284665.P6284314628934442686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A061535 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284665.P6284314628934442686

/-! ## A284665.P4751083364423811632

`eq[A005171(A061535(n+1)), A010691(n)]`
-/

namespace A284665.P4751083364423811632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A061535 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010691 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284665.P4751083364423811632

/-! ## A284665.P5887592119592219246

`eq[A005171(A061535(n+1)), A033999(n)]`
-/

namespace A284665.P5887592119592219246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A061535 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284665.P5887592119592219246

/-!
# A284670: Exponents of powers of 5 that contain all ten decimal digits.

The programs for A284670, there is no canonical definition to state claims against.
-/

/-! ## A284670.P5789776259300526754

`lt[A271198(A099406(n+1)), A099405(n+1)]`
-/

namespace A284670.P5789776259300526754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271198 (A099406 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284670.P5789776259300526754

/-!
# A284671: Numbers n > 2 such that A258409(n)*A002322(n) divides n-1.

The programs for A284671, there is no canonical definition to state claims against.
-/

/-! ## A284671.P1064586071528095677

`A033181(A071294(n+1)^(∑{d}[n+1, #]-(n+1)))`
-/

namespace A284671.P1064586071528095677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033181 (SequenceMachineLib.roundAway ((A071294 (n + 1) : ℚ) ^ (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) : ℤ))).toNat

end

end A284671.P1064586071528095677

/-!
# A284673: Number of (undirected) Hamiltonian paths in the n-hypercube graph Q_n.

The programs for A284673, there is no canonical definition to state claims against.
-/

/-! ## A284673.P13912996385934007474

`lcm(n, A173675(A002110(n)))`
-/

namespace A284673.P13912996385934007474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A173675 (A002110 n).toNat)

end

end A284673.P13912996385934007474

/-!
# A284674: 0-limiting word of the morphism 0->1, 1-> 0111.

The programs for A284674, the canonical program `A284674.P839106522253429785` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284674 has offset 1).

The definition of A284674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284674.P839106522253429785

`char[A284676(n+1)-1]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284674

/-- `char[A284676(n+1)-1]` -/
def P839106522253429785.Spec : Prop :=
  ∀ n, (P839106522253429785.a n : ℤ) = A284674 (n + 1)

theorem P839106522253429785.correct : P839106522253429785.Spec := by
  intro n
  simp only [A284674, Nat.add_sub_cancel]

end A284674

/-! ## A284674.P8240798387093213965

`A284677(A181440(n+1))`
-/

namespace A284674.P8240798387093213965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284677 (A181440 (n + 1)).toNat

end

end A284674.P8240798387093213965

namespace A284674

/-- `A284677(A181440(n+1))` -/
def P8240798387093213965.Spec : Prop :=
  ∀ n, P8240798387093213965.a n = A284674 (n + 1)

end A284674

/-! ## A284674.P1236462976999063776

`A284677(A348776(n+1))`
-/

namespace A284674.P1236462976999063776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284677 (A348776 (n + 1)).toNat

end

end A284674.P1236462976999063776

namespace A284674

/-- `A284677(A348776(n+1))` -/
def P1236462976999063776.Spec : Prop :=
  ∀ n, P1236462976999063776.a n = A284674 (n + 1)

end A284674

/-! ## A284674.P14399649903370061682

`A284677(n+1)-A154955(n+1)`
-/

namespace A284674.P14399649903370061682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284677 (n + 1) - A154955 (n + 1)

end

end A284674.P14399649903370061682

namespace A284674

/-- `A284677(n+1)-A154955(n+1)` -/
def P14399649903370061682.Spec : Prop :=
  ∀ n, P14399649903370061682.a n = A284674 (n + 1)

end A284674

/-! ## A284674.P17398610360592740786

`xor(A019590(n+1), A284677(n+1))`
-/

namespace A284674.P17398610360592740786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019590 (n + 1)) (A284677 (n + 1))

end

end A284674.P17398610360592740786

namespace A284674

/-- `xor(A019590(n+1), A284677(n+1))` -/
def P17398610360592740786.Spec : Prop :=
  ∀ n, P17398610360592740786.a n = A284674 (n + 1)

end A284674

/-! ## A284674.P7612985624880617009

`A144610(A158225(n+1)-2)`
-/

namespace A284674.P7612985624880617009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144610 (A158225 (n + 1) - 2).toNat

end

end A284674.P7612985624880617009

namespace A284674

/-- `A144610(A158225(n+1)-2)` -/
def P7612985624880617009.Spec : Prop :=
  ∀ n, P7612985624880617009.a n = A284674 (n + 1)

end A284674

/-!
# A284675: Positions of 0 in A284674; complement of A284676.

The programs for A284675, the canonical program `A284675.P13236861927282947980` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284675 has offset 1).

The definition of A284675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284675.P13236861927282947980

`A080600(n)+1+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284675

/-- `A080600(n)+1+n` -/
def P13236861927282947980.Spec : Prop :=
  ∀ n, P13236861927282947980.a n = A284675 (n + 1)

theorem P13236861927282947980.correct : P13236861927282947980.Spec := by
  intro n
  simp only [A284675, Nat.add_sub_cancel]

end A284675

/-! ## A284675.P2138602147647292911

`A284679(n+1)+3*n`
-/

namespace A284675.P2138602147647292911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (n + 1) + (3 * n : ℤ)

end

end A284675.P2138602147647292911

namespace A284675

/-- `A284679(n+1)+3*n` -/
def P2138602147647292911.Spec : Prop :=
  ∀ n, P2138602147647292911.a n = A284675 (n + 1)

end A284675

/-! ## A284675.P13458424316102156305

`A284678(n+1)-A000007(n)`
-/

namespace A284675.P13458424316102156305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) - A000007 n

end

end A284675.P13458424316102156305

namespace A284675

/-- `A284678(n+1)-A000007(n)` -/
def P13458424316102156305.Spec : Prop :=
  ∀ n, P13458424316102156305.a n = A284675 (n + 1)

end A284675

/-! ## A284675.P10053691969088964540

`A284678(n+1)/A054977(n)`
-/

namespace A284675.P10053691969088964540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284678 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A284675.P10053691969088964540

namespace A284675

/-- `A284678(n+1)/A054977(n)` -/
def P10053691969088964540.Spec : Prop :=
  ∀ n, P10053691969088964540.a n = (A284675 (n + 1) : ℚ)

end A284675

/-! ## A284675.P13173554158814168143

`A284678(n+1)-A000122(n)%2`
-/

namespace A284675.P13173554158814168143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) - Int.tmod (A000122 n) 2

end

end A284675.P13173554158814168143

namespace A284675

/-- `A284678(n+1)-A000122(n)%2` -/
def P13173554158814168143.Spec : Prop :=
  ∀ n, P13173554158814168143.a n = A284675 (n + 1)

end A284675

/-! ## A284675.P2840153291045184078

`A284678(n+1)-A004016(n)%2`
-/

namespace A284675.P2840153291045184078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) - Int.tmod (A004016 n) 2

end

end A284675.P2840153291045184078

namespace A284675

/-- `A284678(n+1)-A004016(n)%2` -/
def P2840153291045184078.Spec : Prop :=
  ∀ n, P2840153291045184078.a n = A284675 (n + 1)

end A284675

/-! ## A284675.P2659237812440449922

`A284678(n+1)-A299268(n)%2`
-/

namespace A284675.P2659237812440449922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) - Int.tmod (A299268 n) 2

end

end A284675.P2659237812440449922

namespace A284675

/-- `A284678(n+1)-A299268(n)%2` -/
def P2659237812440449922.Spec : Prop :=
  ∀ n, P2659237812440449922.a n = A284675 (n + 1)

end A284675

/-! ## A284675.P3647534862649228375

`A284678(n+1)+n-A028310(n)`
-/

namespace A284675.P3647534862649228375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) + ((n : ℤ) - A028310 n)

end

end A284675.P3647534862649228375

namespace A284675

/-- `A284678(n+1)+n-A028310(n)` -/
def P3647534862649228375.Spec : Prop :=
  ∀ n, P3647534862649228375.a n = A284675 (n + 1)

end A284675

/-! ## A284675.P17109778385456576127

`A284678(n+1)-(A004277(n)-2*n)`
-/

namespace A284675.P17109778385456576127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) - (A004277 n - (2 * n : ℤ))

end

end A284675.P17109778385456576127

namespace A284675

/-- `A284678(n+1)-(A004277(n)-2*n)` -/
def P17109778385456576127.Spec : Prop :=
  ∀ n, P17109778385456576127.a n = A284675 (n + 1)

end A284675

/-! ## A284675.P8897938688916659452

`A284678(n+1)/A028920(A219433(n+1))`
-/

namespace A284675.P8897938688916659452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284678 (n + 1) : ℚ) / (A028920 (A219433 (n + 1)).toNat : ℚ)

end

end A284675.P8897938688916659452

namespace A284675

/-- `A284678(n+1)/A028920(A219433(n+1))` -/
def P8897938688916659452.Spec : Prop :=
  ∀ n, P8897938688916659452.a n = (A284675 (n + 1) : ℚ)

end A284675

/-! ## A284675.P11078843238885262369

`A284678(n+1)^A001222(A284694(n+1))`
-/

namespace A284675.P11078843238885262369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284678 (n + 1) : ℚ) ^ (A001222 (A284694 (n + 1)).toNat : ℤ)

end

end A284675.P11078843238885262369

namespace A284675

/-- `A284678(n+1)^A001222(A284694(n+1))` -/
def P11078843238885262369.Spec : Prop :=
  ∀ n, P11078843238885262369.a n = (A284675 (n + 1) : ℚ)

end A284675

/-! ## A284675.P6158376922778417127

`A284678(n+1)^A001222(A284695(n+1))`
-/

namespace A284675.P6158376922778417127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284678 (n + 1) : ℚ) ^ (A001222 (A284695 (n + 1)).toNat : ℤ)

end

end A284675.P6158376922778417127

namespace A284675

/-- `A284678(n+1)^A001222(A284695(n+1))` -/
def P6158376922778417127.Spec : Prop :=
  ∀ n, P6158376922778417127.a n = (A284675 (n + 1) : ℚ)

end A284675

/-! ## A284675.P17556823927221897922

`A284678(n+1)+A284679(n+1)-A284676(n+1)`
-/

namespace A284675.P17556823927221897922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) + (A284679 (n + 1) - A284676 (n + 1))

end

end A284675.P17556823927221897922

namespace A284675

/-- `A284678(n+1)+A284679(n+1)-A284676(n+1)` -/
def P17556823927221897922.Spec : Prop :=
  ∀ n, P17556823927221897922.a n = A284675 (n + 1)

end A284675

/-! ## A284675.P10115342046843098872

`A284677(n+2)+A284678(n+1)-A284674(n+2)`
-/

namespace A284675.P10115342046843098872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284677 (n + 2) + (A284678 (n + 1) - A284674 (n + 2))

end

end A284675.P10115342046843098872

namespace A284675

/-- `A284677(n+2)+A284678(n+1)-A284674(n+2)` -/
def P10115342046843098872.Spec : Prop :=
  ∀ n, P10115342046843098872.a n = A284675 (n + 1)

end A284675

/-! ## A284675.P1519009548696214667

`C(A284678(n+1), A001221(A284696(n+1)))`
-/

namespace A284675.P1519009548696214667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A284678 (n + 1)).toNat (A001221 (A284696 (n + 1)).toNat).toNat

end

end A284675.P1519009548696214667

namespace A284675

/-- `C(A284678(n+1), A001221(A284696(n+1)))` -/
def P1519009548696214667.Spec : Prop :=
  ∀ n, (P1519009548696214667.a n : ℤ) = A284675 (n + 1)

end A284675

/-! ## A284675.P3538951950219889195

`A284678(n+1)+A284674(A284679(n+1))-1`
-/

namespace A284675.P3538951950219889195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) + (A284674 (A284679 (n + 1)).toNat - 1)

end

end A284675.P3538951950219889195

namespace A284675

/-- `A284678(n+1)+A284674(A284679(n+1))-1` -/
def P3538951950219889195.Spec : Prop :=
  ∀ n, P3538951950219889195.a n = A284675 (n + 1)

end A284675

/-! ## A284675.P10492487189321693324

`A284678(n+1)^A001221(A284695(2*n+1))`
-/

namespace A284675.P10492487189321693324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284678 (n + 1) : ℚ) ^ (A001221 (A284695 (2 * n + 1)).toNat : ℤ)

end

end A284675.P10492487189321693324

namespace A284675

/-- `A284678(n+1)^A001221(A284695(2*n+1))` -/
def P10492487189321693324.Spec : Prop :=
  ∀ n, P10492487189321693324.a n = (A284675 (n + 1) : ℚ)

end A284675

/-! ## A284675.P2624438476781135564

`A184485(n+1)-A284677(A008486(n)+2)`
-/

namespace A284675.P2624438476781135564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184485 (n + 1) - A284677 (A008486 n + 2).toNat

end

end A284675.P2624438476781135564

namespace A284675

/-- `A184485(n+1)-A284677(A008486(n)+2)` -/
def P2624438476781135564.Spec : Prop :=
  ∀ n, P2624438476781135564.a n = A284675 (n + 1)

end A284675

/-! ## A284675.P8507881988116737689

`A184480(A080600(n)+1)`
-/

namespace A284675.P8507881988116737689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (A080600 n + 1).toNat

end

end A284675.P8507881988116737689

namespace A284675

/-- `A184480(A080600(n)+1)` -/
def P8507881988116737689.Spec : Prop :=
  ∀ n, P8507881988116737689.a n = A284675 (n + 1)

end A284675

/-! ## A284675.P17382951559270820332

`A184480(A284679(n+1)+n+n)`
-/

namespace A284675.P17382951559270820332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (A284679 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A284675.P17382951559270820332

namespace A284675

/-- `A184480(A284679(n+1)+n+n)` -/
def P17382951559270820332.Spec : Prop :=
  ∀ n, P17382951559270820332.a n = A284675 (n + 1)

end A284675

/-!
# A284676: Positions of 1 in A284674; complement of A284675.

The programs for A284676, the canonical program `A284676.P13125789313070463235` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284676 has offset 1).

The definition of A284676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284676.P13125789313070463235

`floor(n/(a(n-1)/n+2)+2+n)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A284676

/-- `floor(n/(a(n-1)/n+2)+2+n)` -/
def P13125789313070463235.Spec : Prop :=
  ∀ n, P13125789313070463235.a n = A284676 (n + 1)

theorem P13125789313070463235.correct : P13125789313070463235.Spec := by
  intro n
  simp only [A284676, Nat.add_sub_cancel]

end A284676

/-! ## A284676.P10404276192447718760

`comp[A001956(n+1)]+2`
-/

namespace A284676.P10404276192447718760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A284676.P10404276192447718760

namespace A284676

/-- `comp[A001956(n+1)]+2` -/
def P10404276192447718760.Spec : Prop :=
  ∀ n, (P10404276192447718760.a n : ℤ) = A284676 (n + 1)

end A284676

/-! ## A284676.P10782880310634596110

`comp[A080600(n)+n]+1`
-/

namespace A284676.P10782880310634596110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080600 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284676.P10782880310634596110

namespace A284676

/-- `comp[A080600(n)+n]+1` -/
def P10782880310634596110.Spec : Prop :=
  ∀ n, (P10782880310634596110.a n : ℤ) = A284676 (n + 1)

end A284676

/-! ## A284676.P17435775191033246929

`A284678(n+1)-3*n`
-/

namespace A284676.P17435775191033246929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) - (3 * n : ℤ)

end

end A284676.P17435775191033246929

namespace A284676

/-- `A284678(n+1)-3*n` -/
def P17435775191033246929.Spec : Prop :=
  ∀ n, P17435775191033246929.a n = A284676 (n + 1)

end A284676

/-! ## A284676.P16166794001898392482

`comp[A284675(n+1)-1]+1`
-/

namespace A284676.P16166794001898392482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284675 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284676.P16166794001898392482

namespace A284676

/-- `comp[A284675(n+1)-1]+1` -/
def P16166794001898392482.Spec : Prop :=
  ∀ n, (P16166794001898392482.a n : ℤ) = A284676 (n + 1)

end A284676

/-! ## A284676.P8489520603788538335

`A284679(n+1)+A000007(n)`
-/

namespace A284676.P8489520603788538335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (n + 1) + A000007 n

end

end A284676.P8489520603788538335

namespace A284676

/-- `A284679(n+1)+A000007(n)` -/
def P8489520603788538335.Spec : Prop :=
  ∀ n, P8489520603788538335.a n = A284676 (n + 1)

end A284676

/-! ## A284676.P3719118935785408051

`A054977(n)*A284679(n+1)`
-/

namespace A284676.P3719118935785408051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A284679 (n + 1)

end

end A284676.P3719118935785408051

namespace A284676

/-- `A054977(n)*A284679(n+1)` -/
def P3719118935785408051.Spec : Prop :=
  ∀ n, P3719118935785408051.a n = A284676 (n + 1)

end A284676

/-! ## A284676.P2365932296905170669

`A284679(n+1)+A284674(n+2)-A284677(n+2)`
-/

namespace A284676.P2365932296905170669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (n + 1) + (A284674 (n + 2) - A284677 (n + 2))

end

end A284676.P2365932296905170669

namespace A284676

/-- `A284679(n+1)+A284674(n+2)-A284677(n+2)` -/
def P2365932296905170669.Spec : Prop :=
  ∀ n, P2365932296905170669.a n = A284676 (n + 1)

end A284676

/-! ## A284676.P17289984559335840098

`filter[n+1, A284674(#)]`
-/

namespace A284676.P17289984559335840098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284674 (f1 j) = 1) n)

end

end A284676.P17289984559335840098

namespace A284676

/-- `filter[n+1, A284674(#)]` -/
def P17289984559335840098.Spec : Prop :=
  ∀ n, (P17289984559335840098.a n : ℤ) = A284676 (n + 1)

end A284676

/-! ## A284676.P3579616984041838992

`a(n-1)+2-A284674(a(n-1)+1)` with `a(0)=2`
-/

namespace A284676.P3579616984041838992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 - A284674 (a (n - 1) + 1).toNat

end

end A284676.P3579616984041838992

namespace A284676

/-- `a(n-1)+2-A284674(a(n-1)+1)` -/
def P3579616984041838992.Spec : Prop :=
  ∀ n, P3579616984041838992.a n = A284676 (n + 1)

end A284676

/-! ## A284676.P12671957268974965299

`A181440(A284679(n+1))`
-/

namespace A284676.P12671957268974965299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A284679 (n + 1)).toNat

end

end A284676.P12671957268974965299

namespace A284676

/-- `A181440(A284679(n+1))` -/
def P12671957268974965299.Spec : Prop :=
  ∀ n, P12671957268974965299.a n = A284676 (n + 1)

end A284676

/-! ## A284676.P3973186244290075577

`A284679(n+1)+A284677(A284675(n+1))`
-/

namespace A284676.P3973186244290075577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (n + 1) + A284677 (A284675 (n + 1)).toNat

end

end A284676.P3973186244290075577

namespace A284676

/-- `A284679(n+1)+A284677(A284675(n+1))` -/
def P3973186244290075577.Spec : Prop :=
  ∀ n, P3973186244290075577.a n = A284676 (n + 1)

end A284676

/-! ## A284676.P9898230636250256924

`A284679(n+1)+A284674(A284678(n+1))`
-/

namespace A284676.P9898230636250256924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (n + 1) + A284674 (A284678 (n + 1)).toNat

end

end A284676.P9898230636250256924

namespace A284676

/-- `A284679(n+1)+A284674(A284678(n+1))` -/
def P9898230636250256924.Spec : Prop :=
  ∀ n, P9898230636250256924.a n = A284676 (n + 1)

end A284676

/-!
# A284677: 1-limiting word of the morphism 0->1, 1-> 0111.

The programs for A284677, the canonical program `A284677.P16819107862571488426` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284677 has offset 1).

The definition of A284677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284677.P3865268517495403380

`9%A106437(n)`
-/

namespace A284677.P3865268517495403380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 9 (A106437 n)

end

end A284677.P3865268517495403380

namespace A284677

/-- `9%A106437(n)` -/
def P3865268517495403380.Spec : Prop :=
  ∀ n, P3865268517495403380.a n = A284677 (n + 1)

end A284677

/-! ## A284677.P11838168189252465063

`char[A284679(n+1)-1]`
-/

namespace A284677.P11838168189252465063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284677.P11838168189252465063

namespace A284677

/-- `char[A284679(n+1)-1]` -/
def P11838168189252465063.Spec : Prop :=
  ∀ n, (P11838168189252465063.a n : ℤ) = A284677 (n + 1)

end A284677

/-! ## A284677.P1670321948745268789

`char[char[A184480(n+1)]+n]`
-/

namespace A284677.P1670321948745268789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A284677.P1670321948745268789

namespace A284677

/-- `char[char[A184480(n+1)]+n]` -/
def P1670321948745268789.Spec : Prop :=
  ∀ n, (P1670321948745268789.a n : ℤ) = A284677 (n + 1)

end A284677

/-! ## A284677.P16819107862571488426

`A230901((2*n+1)%(n+3))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A284677

/-- `A230901((2*n+1)%(n+3))` -/
def P16819107862571488426.Spec : Prop :=
  ∀ n, P16819107862571488426.a n = A284677 (n + 1)

theorem P16819107862571488426.correct : P16819107862571488426.Spec := by
  intro n
  simp only [A284677, Nat.add_sub_cancel]

end A284677

/-! ## A284677.P12068655242491587493

`A284674(A181440(n+1))`
-/

namespace A284677.P12068655242491587493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284674 (A181440 (n + 1)).toNat

end

end A284677.P12068655242491587493

namespace A284677

/-- `A284674(A181440(n+1))` -/
def P12068655242491587493.Spec : Prop :=
  ∀ n, P12068655242491587493.a n = A284677 (n + 1)

end A284677

/-! ## A284677.P11927796996626753907

`A284674(n+1)+A154955(n+1)`
-/

namespace A284677.P11927796996626753907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284674 (n + 1) + A154955 (n + 1)

end

end A284677.P11927796996626753907

namespace A284677

/-- `A284674(n+1)+A154955(n+1)` -/
def P11927796996626753907.Spec : Prop :=
  ∀ n, P11927796996626753907.a n = A284677 (n + 1)

end A284677

/-! ## A284677.P4055588863786536154

`xor(A019590(n+1), A284674(n+1))`
-/

namespace A284677.P4055588863786536154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019590 (n + 1)) (A284674 (n + 1))

end

end A284677.P4055588863786536154

namespace A284677

/-- `xor(A019590(n+1), A284674(n+1))` -/
def P4055588863786536154.Spec : Prop :=
  ∀ n, P4055588863786536154.a n = A284677 (n + 1)

end A284677

/-! ## A284677.P6299677276914623825

`A284674(A275535(n+1))`
-/

namespace A284677.P6299677276914623825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284674 (A275535 (n + 1)).toNat

end

end A284677.P6299677276914623825

namespace A284677

/-- `A284674(A275535(n+1))` -/
def P6299677276914623825.Spec : Prop :=
  ∀ n, P6299677276914623825.a n = A284677 (n + 1)

end A284677

/-!
# A284678: Positions of 0 in A284677; complement of A284679.

The programs for A284678, the canonical program `A284678.P13700835878893103956` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284678 has offset 1).

The definition of A284678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284678.P13700835878893103956

`A284676(n+1)+3*n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284678

/-- `A284676(n+1)+3*n` -/
def P13700835878893103956.Spec : Prop :=
  ∀ n, P13700835878893103956.a n = A284678 (n + 1)

theorem P13700835878893103956.correct : P13700835878893103956.Spec := by
  intro n
  simp only [A284678, Nat.add_sub_cancel]

end A284678

/-! ## A284678.P15069866817378177596

`A284675(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A284678.P15069866817378177596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A284675 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A284678.P15069866817378177596

namespace A284678

/-- `A284675(n%a(n-1)+1)` -/
def P15069866817378177596.Spec : Prop :=
  ∀ n, P15069866817378177596.a n = A284678 (n + 1)

end A284678

/-! ## A284678.P3909049408332099553

`floor(A284675(n+1)+1/(n+1))`
-/

namespace A284678.P3909049408332099553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A284675 (n + 1) : ℚ) + 1 / (n + 1 : ℚ)⌋

end

end A284678.P3909049408332099553

namespace A284678

/-- `floor(A284675(n+1)+1/(n+1))` -/
def P3909049408332099553.Spec : Prop :=
  ∀ n, P3909049408332099553.a n = A284678 (n + 1)

end A284678

/-! ## A284678.P14839788808986494350

`A054977(n)*A284675(n+1)`
-/

namespace A284678.P14839788808986494350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A284675 (n + 1)

end

end A284678.P14839788808986494350

namespace A284678

/-- `A054977(n)*A284675(n+1)` -/
def P14839788808986494350.Spec : Prop :=
  ∀ n, P14839788808986494350.a n = A284678 (n + 1)

end A284678

/-! ## A284678.P10092608154049592374

`A000038(n)!*A284675(n+1)`
-/

namespace A284678.P10092608154049592374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A284675 (n + 1)

end

end A284678.P10092608154049592374

namespace A284678

/-- `A000038(n)!*A284675(n+1)` -/
def P10092608154049592374.Spec : Prop :=
  ∀ n, P10092608154049592374.a n = A284678 (n + 1)

end A284678

/-! ## A284678.P8210578395406626366

`(A000007(n)+1)*A284675(n+1)`
-/

namespace A284678.P8210578395406626366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A284675 (n + 1)

end

end A284678.P8210578395406626366

namespace A284678

/-- `(A000007(n)+1)*A284675(n+1)` -/
def P8210578395406626366.Spec : Prop :=
  ∀ n, P8210578395406626366.a n = A284678 (n + 1)

end A284678

/-! ## A284678.P9340688831332369657

`A284675(n^A000120(C(2, a(n-1))+1)+1)` with `a(0)=2`
-/

namespace A284678.P9340688831332369657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A284675 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A000120 (Nat.choose 2 (a (n - 1)).toNat + 1) : ℤ) + 1)).toNat

end

end A284678.P9340688831332369657

namespace A284678

/-- `A284675(n^A000120(C(2, a(n-1))+1)+1)` -/
def P9340688831332369657.Spec : Prop :=
  ∀ n, P9340688831332369657.a n = A284678 (n + 1)

end A284678

/-! ## A284678.P16618788060193830257

`A000034(A001223(n+1))*A284675(n+1)`
-/

namespace A284678.P16618788060193830257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A001223 (n + 1)).toNat * A284675 (n + 1)

end

end A284678.P16618788060193830257

namespace A284678

/-- `A000034(A001223(n+1))*A284675(n+1)` -/
def P16618788060193830257.Spec : Prop :=
  ∀ n, P16618788060193830257.a n = A284678 (n + 1)

end A284678

/-! ## A284678.P5158085655303553986

`A184480(A284676(n+1)+n+n)`
-/

namespace A284678.P5158085655303553986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (A284676 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A284678.P5158085655303553986

namespace A284678

/-- `A184480(A284676(n+1)+n+n)` -/
def P5158085655303553986.Spec : Prop :=
  ∀ n, P5158085655303553986.a n = A284678 (n + 1)

end A284678

/-! ## A284678.P4034582294093226287

`A007423(A008574(n))*A284675(n+1)`
-/

namespace A284678.P4034582294093226287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A008574 n).toNat * A284675 (n + 1)

end

end A284678.P4034582294093226287

namespace A284678

/-- `A007423(A008574(n))*A284675(n+1)` -/
def P4034582294093226287.Spec : Prop :=
  ∀ n, P4034582294093226287.a n = A284678 (n + 1)

end A284678

/-! ## A284678.P5837900086726357726

`lt[n*char[A284679(n+1)], n]`
-/

namespace A284678.P5837900086726357726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A284678.P5837900086726357726

namespace A284678

/-- `lt[n*char[A284679(n+1)], n]` -/
def P5837900086726357726.Spec : Prop :=
  ∀ n, (P5837900086726357726.a n : ℤ) = A284678 (n + 1)

end A284678

/-! ## A284678.P6498461540216723911

`A181440(A284675(n+1))`
-/

namespace A284678.P6498461540216723911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A284675 (n + 1)).toNat

end

end A284678.P6498461540216723911

namespace A284678

/-- `A181440(A284675(n+1))` -/
def P6498461540216723911.Spec : Prop :=
  ∀ n, P6498461540216723911.a n = A284678 (n + 1)

end A284678

/-! ## A284678.P9372440376062944723

`A181440(A080600(n)+1+n)`
-/

namespace A284678.P9372440376062944723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A080600 n + 1 + (n : ℤ)).toNat

end

end A284678.P9372440376062944723

namespace A284678

/-- `A181440(A080600(n)+1+n)` -/
def P9372440376062944723.Spec : Prop :=
  ∀ n, P9372440376062944723.a n = A284678 (n + 1)

end A284678

/-! ## A284678.P2335584435259829702

`A001511(A000040(n+1))*A284675(n+1)`
-/

namespace A284678.P2335584435259829702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000040 (n + 1)).toNat * A284675 (n + 1)

end

end A284678.P2335584435259829702

namespace A284678

/-- `A001511(A000040(n+1))*A284675(n+1)` -/
def P2335584435259829702.Spec : Prop :=
  ∀ n, P2335584435259829702.a n = A284678 (n + 1)

end A284678

/-! ## A284678.P12903643123723632587

`xor(A118112(A072055(n+1)), A284675(n+1))`
-/

namespace A284678.P12903643123723632587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A118112 (A072055 (n + 1)).toNat) (A284675 (n + 1))

end

end A284678.P12903643123723632587

namespace A284678

/-- `xor(A118112(A072055(n+1)), A284675(n+1))` -/
def P12903643123723632587.Spec : Prop :=
  ∀ n, P12903643123723632587.a n = A284678 (n + 1)

end A284678

/-! ## A284678.P8131768272449053283

`A014963(A014574(n+1))*A284675(n+1)`
-/

namespace A284678.P8131768272449053283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A014574 (n + 1)).toNat * A284675 (n + 1)

end

end A284678.P8131768272449053283

namespace A284678

/-- `A014963(A014574(n+1))*A284675(n+1)` -/
def P8131768272449053283.Spec : Prop :=
  ∀ n, P8131768272449053283.a n = A284678 (n + 1)

end A284678

/-! ## A284678.P608204757140900742

`A007423((n+1)²)*A284675(n+1)`
-/

namespace A284678.P608204757140900742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 ((n + 1) ^ 2) * A284675 (n + 1)

end

end A284678.P608204757140900742

namespace A284678

/-- `A007423((n+1)²)*A284675(n+1)` -/
def P608204757140900742.Spec : Prop :=
  ∀ n, P608204757140900742.a n = A284678 (n + 1)

end A284678

/-!
# A284679: Positions of 1 in A284677; complement of A284678.

The programs for A284679, the canonical program `A284679.P9480436399096967937` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284679 has offset 1).

The definition of A284679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284679.P9480436399096967937

`floor(n/(a(n-1)/n+2)+2+n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A284679

/-- `floor(n/(a(n-1)/n+2)+2+n)` -/
def P9480436399096967937.Spec : Prop :=
  ∀ n, P9480436399096967937.a n = A284679 (n + 1)

theorem P9480436399096967937.correct : P9480436399096967937.Spec := by
  intro n
  simp only [A284679, Nat.add_sub_cancel]

end A284679

/-! ## A284679.P8954620095481271564

`A080600(n)-(2*n-1)`
-/

namespace A284679.P8954620095481271564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080600 n - ((2 * n : ℤ) - 1)

end

end A284679.P8954620095481271564

namespace A284679

/-- `A080600(n)-(2*n-1)` -/
def P8954620095481271564.Spec : Prop :=
  ∀ n, P8954620095481271564.a n = A284679 (n + 1)

end A284679

/-! ## A284679.P13320473526120973093

`A284675(n+1)-3*n`
-/

namespace A284679.P13320473526120973093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284675 (n + 1) - (3 * n : ℤ)

end

end A284679.P13320473526120973093

namespace A284679

/-- `A284675(n+1)-3*n` -/
def P13320473526120973093.Spec : Prop :=
  ∀ n, P13320473526120973093.a n = A284679 (n + 1)

end A284679

/-! ## A284679.P10777672478094732697

`comp[A284678(n+1)-1]+1`
-/

namespace A284679.P10777672478094732697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284679.P10777672478094732697

namespace A284679

/-- `comp[A284678(n+1)-1]+1` -/
def P10777672478094732697.Spec : Prop :=
  ∀ n, (P10777672478094732697.a n : ℤ) = A284679 (n + 1)

end A284679

/-! ## A284679.P2315036034540159546

`A165747(n)+A080600(n)`
-/

namespace A284679.P2315036034540159546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 n + A080600 n

end

end A284679.P2315036034540159546

namespace A284679

/-- `A165747(n)+A080600(n)` -/
def P2315036034540159546.Spec : Prop :=
  ∀ n, P2315036034540159546.a n = A284679 (n + 1)

end A284679

/-! ## A284679.P13187743443621393610

`A284676(n+1)-A000007(n)`
-/

namespace A284679.P13187743443621393610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1) - A000007 n

end

end A284679.P13187743443621393610

namespace A284679

/-- `A284676(n+1)-A000007(n)` -/
def P13187743443621393610.Spec : Prop :=
  ∀ n, P13187743443621393610.a n = A284679 (n + 1)

end A284679

/-! ## A284679.P9232561210652078014

`A284678(n+1)-A008486(n)`
-/

namespace A284679.P9232561210652078014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) - A008486 n

end

end A284679.P9232561210652078014

namespace A284679

/-- `A284678(n+1)-A008486(n)` -/
def P9232561210652078014.Spec : Prop :=
  ∀ n, P9232561210652078014.a n = A284679 (n + 1)

end A284679

/-! ## A284679.P14499556131718383162

`A284676(n+1)/A054977(n)`
-/

namespace A284679.P14499556131718383162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284676 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A284679.P14499556131718383162

namespace A284679

/-- `A284676(n+1)/A054977(n)` -/
def P14499556131718383162.Spec : Prop :=
  ∀ n, P14499556131718383162.a n = (A284679 (n + 1) : ℚ)

end A284679

/-! ## A284679.P5297419356843668844

`A284678(n+1)-(A004277(n)+n)`
-/

namespace A284679.P5297419356843668844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) - (A004277 n + (n : ℤ))

end

end A284679.P5297419356843668844

namespace A284679

/-- `A284678(n+1)-(A004277(n)+n)` -/
def P5297419356843668844.Spec : Prop :=
  ∀ n, P5297419356843668844.a n = A284679 (n + 1)

end A284679

/-! ## A284679.P2161922720401723432

`ceil(A284676(n+1)-2/A016789(n))`
-/

namespace A284679.P2161922720401723432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284676 (n + 1) : ℚ) - 2 / (A016789 n : ℚ)⌉

end

end A284679.P2161922720401723432

namespace A284679

/-- `ceil(A284676(n+1)-2/A016789(n))` -/
def P2161922720401723432.Spec : Prop :=
  ∀ n, P2161922720401723432.a n = A284679 (n + 1)

end A284679

/-! ## A284679.P4295228013642206016

`A284676(n+1)-char[A179426(n+1)]`
-/

namespace A284679.P4295228013642206016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179426 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284679.P4295228013642206016

namespace A284679

/-- `A284676(n+1)-char[A179426(n+1)]` -/
def P4295228013642206016.Spec : Prop :=
  ∀ n, P4295228013642206016.a n = A284679 (n + 1)

end A284679

/-! ## A284679.P8298877281854825075

`A284676(n+1)^A001222(A284694(n+1))`
-/

namespace A284679.P8298877281854825075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284676 (n + 1) : ℚ) ^ (A001222 (A284694 (n + 1)).toNat : ℤ)

end

end A284679.P8298877281854825075

namespace A284679

/-- `A284676(n+1)^A001222(A284694(n+1))` -/
def P8298877281854825075.Spec : Prop :=
  ∀ n, P8298877281854825075.a n = (A284679 (n + 1) : ℚ)

end A284679

/-! ## A284679.P9762203378014764751

`A284676(n+1)^A001222(A284695(n+1))`
-/

namespace A284679.P9762203378014764751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284676 (n + 1) : ℚ) ^ (A001222 (A284695 (n + 1)).toNat : ℤ)

end

end A284679.P9762203378014764751

namespace A284679

/-- `A284676(n+1)^A001222(A284695(n+1))` -/
def P9762203378014764751.Spec : Prop :=
  ∀ n, P9762203378014764751.a n = (A284679 (n + 1) : ℚ)

end A284679

/-! ## A284679.P13345383820364909902

`A284676(n+1)+A284677(n+2)-A284674(n+2)`
-/

namespace A284679.P13345383820364909902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1) + (A284677 (n + 2) - A284674 (n + 2))

end

end A284679.P13345383820364909902

namespace A284679

/-- `A284676(n+1)+A284677(n+2)-A284674(n+2)` -/
def P13345383820364909902.Spec : Prop :=
  ∀ n, P13345383820364909902.a n = A284679 (n + 1)

end A284679

/-! ## A284679.P5059306069639064616

`filter[n+1, A284677(#)]`
-/

namespace A284679.P5059306069639064616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284677 (f1 j) = 1) n)

end

end A284679.P5059306069639064616

namespace A284679

/-- `filter[n+1, A284677(#)]` -/
def P5059306069639064616.Spec : Prop :=
  ∀ n, (P5059306069639064616.a n : ℤ) = A284679 (n + 1)

end A284679

/-! ## A284679.P14192818131820547288

`record[2*A284674(a(n-1)+1)+n]` with `a(0)=1`
-/

namespace A284679.P14192818131820547288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * A284674 (f1 (n - 1) + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284679.P14192818131820547288

namespace A284679

/-- `record[2*A284674(a(n-1)+1)+n]` -/
def P14192818131820547288.Spec : Prop :=
  ∀ n, P14192818131820547288.a n = A284679 (n + 1)

end A284679

/-! ## A284679.P8706875853723718672

`A181440(A284676(n+1))`
-/

namespace A284679.P8706875853723718672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A284676 (n + 1)).toNat

end

end A284679.P8706875853723718672

namespace A284679

/-- `A181440(A284676(n+1))` -/
def P8706875853723718672.Spec : Prop :=
  ∀ n, P8706875853723718672.a n = A284679 (n + 1)

end A284679

/-! ## A284679.P12404198750342630050

`A023443(A080600(n)-A023443(n)-A023443(n))`
-/

namespace A284679.P12404198750342630050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080600 n - A023443 n - A023443 n).toNat

end

end A284679.P12404198750342630050

namespace A284679

/-- `A023443(A080600(n)-A023443(n)-A023443(n))` -/
def P12404198750342630050.Spec : Prop :=
  ∀ n, P12404198750342630050.a n = A284679 (n + 1)

end A284679

/-! ## A284679.P9893410030078366786

`A284676(n+1)^A001221(A284695(2*n+1))`
-/

namespace A284679.P9893410030078366786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284676 (n + 1) : ℚ) ^ (A001221 (A284695 (2 * n + 1)).toNat : ℤ)

end

end A284679.P9893410030078366786

namespace A284679

/-- `A284676(n+1)^A001221(A284695(2*n+1))` -/
def P9893410030078366786.Spec : Prop :=
  ∀ n, P9893410030078366786.a n = (A284679 (n + 1) : ℚ)

end A284679

/-! ## A284679.P7221542163862742293

`A284676(n+1)-A284677(A284675(n+1))`
-/

namespace A284679.P7221542163862742293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1) - A284677 (A284675 (n + 1)).toNat

end

end A284679.P7221542163862742293

namespace A284679

/-- `A284676(n+1)-A284677(A284675(n+1))` -/
def P7221542163862742293.Spec : Prop :=
  ∀ n, P7221542163862742293.a n = A284679 (n + 1)

end A284679

/-!
# A284680: Fixed point of the morphism 0->1, 1->1000.

The programs for A284680, there is no canonical definition to state claims against.
-/

/-! ## A284680.P9656667241127176125

`char[A284682(n+1)-1]`
-/

namespace A284680.P9656667241127176125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284680.P9656667241127176125

/-! ## A284680.P11736275146529200911

`log2(Δ[A284746(n+1)])`
-/

namespace A284680.P11736275146529200911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284746 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A284680.P11736275146529200911

/-! ## A284680.P9597223541255714399

`A000035(Δ[A191263(n+1)])`
-/

namespace A284680.P9597223541255714399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (f1 (n + 1) - f1 n).toNat

end

end A284680.P9597223541255714399

/-! ## A284680.P5743093370443842806

`A000389(Δ[A191263(n+1)])`
-/

namespace A284680.P5743093370443842806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (f1 (n + 1) - f1 n).toNat

end

end A284680.P5743093370443842806

/-! ## A284680.P7770442198839198153

`A010059(Δ[A191263(n+1)])`
-/

namespace A284680.P7770442198839198153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (f1 (n + 1) - f1 n).toNat

end

end A284680.P7770442198839198153

/-! ## A284680.P4191466573701733799

`A082968(Δ[A191263(n+1)])`
-/

namespace A284680.P4191466573701733799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082968 (f1 (n + 1) - f1 n).toNat

end

end A284680.P4191466573701733799

/-! ## A284680.P4993207485339209922

`A001221(Δ[A284682(n+1)])`
-/

namespace A284680.P4993207485339209922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A284680.P4993207485339209922

/-! ## A284680.P16147111825150042313

`A001221(Δ[A284746(n+1)])`
-/

namespace A284680.P16147111825150042313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A284680.P16147111825150042313

/-! ## A284680.P3826264233371158443

`A001222(Δ[A284746(n+1)])`
-/

namespace A284680.P3826264233371158443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A284680.P3826264233371158443

/-! ## A284680.P15461000738904814709

`A103627(Δ[A191263(n+1)])`
-/

namespace A284680.P15461000738904814709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (f1 (n + 1) - f1 n).toNat

end

end A284680.P15461000738904814709

/-! ## A284680.P8350249915099684830

`A036586(Δ[A284746(n+1)])`
-/

namespace A284680.P8350249915099684830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036586 (f1 (n + 1) - f1 n).toNat

end

end A284680.P8350249915099684830

/-! ## A284680.P9103092681440448644

`A042965(Δ[A284746(n+1)])`
-/

namespace A284680.P9103092681440448644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (f1 (n + 1) - f1 n).toNat

end

end A284680.P9103092681440448644

/-! ## A284680.P1827640814594997456

`A191250(Δ[A191264(n+1)])`
-/

namespace A284680.P1827640814594997456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191250 (f1 (n + 1) - f1 n).toNat

end

end A284680.P1827640814594997456

/-! ## A284680.P11141585646695575917

`A304577(Δ[A191263(n+1)])`
-/

namespace A284680.P11141585646695575917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304577 (f1 (n + 1) - f1 n).toNat

end

end A284680.P11141585646695575917

/-! ## A284680.P4776618781801726700

`A284674(Δ[A284682(n+1)])`
-/

namespace A284680.P4776618781801726700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284674 (f1 (n + 1) - f1 n).toNat

end

end A284680.P4776618781801726700

/-! ## A284680.P11312034472533464736

`A284688(Δ[A284682(n+1)])`
-/

namespace A284680.P11312034472533464736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284688 (f1 (n + 1) - f1 n).toNat

end

end A284680.P11312034472533464736

/-! ## A284680.P1536403442241386143

`A001222(sqrt(Δ[A284682(n+1)]))`
-/

namespace A284680.P1536403442241386143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A284680.P1536403442241386143

/-! ## A284680.P4142143095465189052

`A000010(Δ[A284682(n+1)])-1`
-/

namespace A284680.P4142143095465189052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat - 1

end

end A284680.P4142143095465189052

/-! ## A284680.P2814720553085371266

`A020639(Δ[A284682(n+1)])-1`
-/

namespace A284680.P2814720553085371266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat - 1

end

end A284680.P2814720553085371266

/-!
# A284681: Positions of 0 in A284680; complement of A284682.

The programs for A284681, there is no canonical definition to state claims against.
-/

/-! ## A284681.P4251063058677046308

`comp[A284682(n+1)-1]+1`
-/

namespace A284681.P4251063058677046308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284681.P4251063058677046308

/-! ## A284681.P8736195216732104421

`A284682(∑[1-n²%3])+n+1`
-/

namespace A284681.P8736195216732104421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n + 1 : ℤ)

end

end A284681.P8736195216732104421

/-! ## A284681.P14176404021666923430

`A284682(∑[∑[n+1]%3])+n+1`
-/

namespace A284681.P14176404021666923430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A284681.P14176404021666923430

/-! ## A284681.P1906394844867787127

`lt[A284680(n+1), 1]+1`
-/

namespace A284681.P1906394844867787127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284680 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A284681.P1906394844867787127

/-! ## A284681.P8988967179218921576

`eq[2, Δ[A191263(n+1)]]+1`
-/

namespace A284681.P8988967179218921576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284681.P8988967179218921576

/-! ## A284681.P2860010982170385064

`eq[0, A284680(A028310(n))]`
-/

namespace A284681.P2860010982170385064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284680 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284681.P2860010982170385064

/-! ## A284681.P5478070366734530101

`eq[1, A000010(Δ[A284682(n+1)])]+1`
-/

namespace A284681.P5478070366734530101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284681.P5478070366734530101

/-! ## A284681.P15812316997052632208

`eq[0, A020639(Δ[A284682(n+1)])-1]+1`
-/

namespace A284681.P15812316997052632208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f3 (n + 1) - f3 n).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284681.P15812316997052632208

/-!
# A284682: Positions of 1 in A284680; complement of A284681.

The programs for A284682, there is no canonical definition to state claims against.
-/

/-! ## A284682.P17622647469040971845

`A191263(n+1)-(n+1)`
-/

namespace A284682.P17622647469040971845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191263 (n + 1) - (n + 1 : ℤ)

end

end A284682.P17622647469040971845

/-! ## A284682.P15168121946921874038

`3*A284746(n+1)-2*(n+1)`
-/

namespace A284682.P15168121946921874038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A284746 (n + 1) - (2 * (n + 1) : ℤ)

end

end A284682.P15168121946921874038

/-! ## A284682.P473560947952069542

`filter[n+1, A284680(#)]`
-/

namespace A284682.P473560947952069542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284680 (f1 j) = 1) n)

end

end A284682.P473560947952069542

/-! ## A284682.P16116551596765919350

`eq[1, A284680(n+1)]+1`
-/

namespace A284682.P16116551596765919350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284682.P16116551596765919350

/-! ## A284682.P14911173479151577136

`eq[n, A028310(n)*A284680(A028310(n))]`
-/

namespace A284682.P14911173479151577136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A284680 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284682.P14911173479151577136

/-! ## A284682.P7815041426692583394

`lt[1, A102005(n)]-n`
-/

namespace A284682.P7815041426692583394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A284682.P7815041426692583394

/-! ## A284682.P211954038422641925

`eq[1, A191261(n+1)]-n`
-/

namespace A284682.P211954038422641925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A284682.P211954038422641925

/-! ## A284682.P13730914353184511597

`eq[1, A284745(n+1)]-n`
-/

namespace A284682.P13730914353184511597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A284682.P13730914353184511597

/-! ## A284682.P13867714168790219382

`A078474(A284681(2*n+1+n))`
-/

namespace A284682.P13867714168790219382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078474 (A284681 (2 * n + 1 + n)).toNat

end

end A284682.P13867714168790219382

/-!
# A284683: Fixed point of the morphism 0 -> 01, 1 -> 0000.

The programs for A284683, there is no canonical definition to state claims against.
-/

/-! ## A284683.P12458907468990508121

`char[2*A285429(n+1)-1]`
-/

namespace A284683.P12458907468990508121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285429 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284683.P12458907468990508121

/-! ## A284683.P6138409747741992762

`A285427(A057979(n)+1)`
-/

namespace A284683.P6138409747741992762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285427 (A057979 n + 1).toNat

end

end A284683.P6138409747741992762

/-! ## A284683.P17992993489086759994

`and(n, A285427(A026741(n+1)))`
-/

namespace A284683.P17992993489086759994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A285427 (A026741 (n + 1)).toNat)

end

end A284683.P17992993489086759994

/-! ## A284683.P786867562908864015

`and(n, A285427(A140106(n+1)+1))`
-/

namespace A284683.P786867562908864015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A285427 (A140106 (n + 1) + 1).toNat)

end

end A284683.P786867562908864015

/-! ## A284683.P10191242602864235211

`∑{d}[n+1, A063524(#-1)*A285427((n+1)/#)]`
-/

namespace A284683.P10191242602864235211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063524 (d - 1) * A285427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284683.P10191242602864235211

/-! ## A284683.P3921328247381233942

`Δ[A008619(n)]*A285427(A008619(n))`
-/

namespace A284683.P3921328247381233942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A285427 (A008619 n).toNat

end

end A284683.P3921328247381233942

/-! ## A284683.P11770192042673301926

`and(n, A285427(∑[A000035(n+1)]))`
-/

namespace A284683.P11770192042673301926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A285427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A284683.P11770192042673301926

/-! ## A284683.P2549015778246637696

`1-A285427(lt[Δ[A285427(n+1)], 1]+1)`
-/

namespace A284683.P2549015778246637696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285427 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285427 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A284683.P2549015778246637696

/-! ## A284683.P11201130347370407226

`A285427(A004526(n)+1)*A285427(A285428(n+1)+1)`
-/

namespace A284683.P11201130347370407226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285427 (A004526 n + 1).toNat * A285427 (A285428 (n + 1) + 1).toNat

end

end A284683.P11201130347370407226

/-!
# A284684: Positions of 0 in A284627; complement of A284685.

The programs for A284684, there is no canonical definition to state claims against.
-/

/-! ## A284684.P8257184373240213917

`eq[0, A284627(n+1)]+1`
-/

namespace A284684.P8257184373240213917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284627 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284684.P8257184373240213917

/-! ## A284684.P13631216426093112341

`record[n+1-A000010(n+1)*A284627(n+1)]`
-/

namespace A284684.P13631216426093112341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (n + 1) * A284627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284684.P13631216426093112341

/-! ## A284684.P7970757862589108345

`record[n+1-A008851(n*A284627(n+1)+1)]`
-/

namespace A284684.P7970757862589108345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008851 ((n : ℤ) * A284627 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284684.P7970757862589108345

/-! ## A284684.P5130508030610551932

`record[n+1-A049437(n+1)*A284627(n+1)]`
-/

namespace A284684.P5130508030610551932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A049437 (n + 1) * A284627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284684.P5130508030610551932

/-! ## A284684.P4930414031404697394

`record[(n+1)/A008578(n*A284627(n+1)+1)]`
-/

namespace A284684.P4930414031404697394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008578 ((n : ℤ) * A284627 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284684.P4930414031404697394

/-! ## A284684.P12863118724985103709

`record[n+1-A277903(n*A284627(n+1)+1)]`
-/

namespace A284684.P12863118724985103709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A277903 ((n : ℤ) * A284627 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284684.P12863118724985103709

/-! ## A284684.P7202393530170673634

`A000720(p?[A284627(n+1)+A000040(n+1)])`
-/

namespace A284684.P7202393530170673634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284627 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A284684.P7202393530170673634

/-! ## A284684.P7669370737428629855

`A056239(p?[A284627(n+1)+A000040(n+1)])`
-/

namespace A284684.P7669370737428629855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284627 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A284684.P7669370737428629855

/-!
# A284685: Positions of 1 in A284627; complement of A284684.

The programs for A284685, there is no canonical definition to state claims against.
-/

/-! ## A284685.P3427602208366986098

`comp[A284684(n+1)-1]+1`
-/

namespace A284685.P3427602208366986098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284684 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284685.P3427602208366986098

/-! ## A284685.P5893493111065871058

`filter[n+1, A284627(#)]`
-/

namespace A284685.P5893493111065871058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284627 (f1 j) = 1) n)

end

end A284685.P5893493111065871058

/-! ## A284685.P1704321928151516136

`lt[0, A284627(n+1)]+1`
-/

namespace A284685.P1704321928151516136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284627 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A284685.P1704321928151516136

/-! ## A284685.P3936364176760447100

`record[2*A284627(n+2)+n]`
-/

namespace A284685.P3936364176760447100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284627 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284685.P3936364176760447100

/-! ## A284685.P5980999226055923370

`A000720(p?[A000040(n+1)*A284627(n+1)])`
-/

namespace A284685.P5980999226055923370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A284627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A284685.P5980999226055923370

/-! ## A284685.P6202980746094335107

`eq[1, A284627(A123108(2*n))]`
-/

namespace A284685.P6202980746094335107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284627 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284685.P6202980746094335107

/-! ## A284685.P901806715386367402

`A056239(p?[A000040(n+1)*A284627(n+1)])`
-/

namespace A284685.P901806715386367402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A284627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A284685.P901806715386367402

/-!
# A284691: Numbers of the form (10^c-1)*the product any two (not necessarily distinct) terms of A074992.

The programs for A284691, there is no canonical definition to state claims against.
-/

/-! ## A284691.P12568314025246249025

`record[gcd(A111708(5*n+3), A111708(n))]`
-/

namespace A284691.P12568314025246249025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111708 (5 * n + 3)) (A111708 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284691.P12568314025246249025

/-!
# A284694: Least prime number appearing in the prime tower factorization of n (when n > 1); a(1) = 1.

The programs for A284694, there is no canonical definition to state claims against.
-/

/-! ## A284694.P18077876031325073370

`A020639(A000026(n+1))`
-/

namespace A284694.P18077876031325073370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000026 (n + 1)).toNat

end

end A284694.P18077876031325073370

/-! ## A284694.P12414415060695908948

`A020639(A336965(n+1))`
-/

namespace A284694.P12414415060695908948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A336965 (n + 1)).toNat

end

end A284694.P12414415060695908948

/-! ## A284694.P13732062186120623154

`A020639(A369319(n+1))`
-/

namespace A284694.P13732062186120623154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A369319 (n + 1)).toNat

end

end A284694.P13732062186120623154

/-! ## A284694.P17907806105888486133

`A020639(A381201(n+1))`
-/

namespace A284694.P17907806105888486133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A381201 (n + 1)).toNat

end

end A284694.P17907806105888486133

/-! ## A284694.P11291595832695151348

`A020639(A381588(n+1))`
-/

namespace A284694.P11291595832695151348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A381588 (n + 1)).toNat

end

end A284694.P11291595832695151348

/-! ## A284694.P4509640933074292872

`A020639(A005361(n+1)*A007913(n+1))`
-/

namespace A284694.P4509640933074292872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005361 (n + 1) * A007913 (n + 1)).toNat

end

end A284694.P4509640933074292872

/-! ## A284694.P9091628172452463738

`A020639(A005361(n+1)*A007947(n+1))`
-/

namespace A284694.P9091628172452463738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005361 (n + 1) * A007947 (n + 1)).toNat

end

end A284694.P9091628172452463738

/-! ## A284694.P10059871581937908977

`A020639(A005361(n+1)*A020639(n+1))`
-/

namespace A284694.P10059871581937908977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005361 (n + 1) * A020639 (n + 1)).toNat

end

end A284694.P10059871581937908977

/-! ## A284694.P3170679468140436984

`A020639(A020639(n+1)*A072411(n+1))`
-/

namespace A284694.P3170679468140436984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 1) * A072411 (n + 1)).toNat

end

end A284694.P3170679468140436984

/-! ## A284694.P7413294066214153785

`A020639(A020639(n+1)*A290107(n+1))`
-/

namespace A284694.P7413294066214153785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 1) * A290107 (n + 1)).toNat

end

end A284694.P7413294066214153785

/-! ## A284694.P12751793322248194005

`A020639(lcm(A005361(n+1), A020639(n+1)))`
-/

namespace A284694.P12751793322248194005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A005361 (n + 1)) (A020639 (n + 1)))

end

end A284694.P12751793322248194005

/-! ## A284694.P381521258262431283

`A020639(A020639(n+1)*A203639(n+1))`
-/

namespace A284694.P381521258262431283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 1) * A203639 (n + 1)).toNat

end

end A284694.P381521258262431283

/-! ## A284694.P8469350183904952731

`A020639(lcm(n+1, ∏{e}[n+1, #]))`
-/

namespace A284694.P8469350183904952731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A284694.P8469350183904952731

/-! ## A284694.P11108334019484446121

`A020639(lcm(n+1, A005361(n+1)))`
-/

namespace A284694.P11108334019484446121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (n + 1 : ℤ) (A005361 (n + 1)))

end

end A284694.P11108334019484446121

/-! ## A284694.P6157128043083671631

`A020639((n+1)*A072411(n+1))`
-/

namespace A284694.P6157128043083671631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * A072411 (n + 1)).toNat

end

end A284694.P6157128043083671631

/-! ## A284694.P9645949303796966632

`A020639((n+1)*∏{e}[n+1, #])`
-/

namespace A284694.P9645949303796966632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A284694.P9645949303796966632

/-! ## A284694.P2789962823579419865

`A020639((n+1)/∏{e}[n+1, 1/#])`
-/

namespace A284694.P2789962823579419865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), 1 / (Nat.factorization (f1 n) p : ℚ)))).toNat

end

end A284694.P2789962823579419865

/-! ## A284694.P8277897376909404444

`A020639((n+1)*A005361(n+1))`
-/

namespace A284694.P8277897376909404444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * A005361 (n + 1)).toNat

end

end A284694.P8277897376909404444

/-! ## A284694.P4998706092769591983

`A020639((n+1)*A290107(n+1))`
-/

namespace A284694.P4998706092769591983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * A290107 (n + 1)).toNat

end

end A284694.P4998706092769591983

/-!
# A284695: Greatest prime number appearing in the prime tower factorization of n (when n > 1); a(1) = 1.

The programs for A284695, the canonical program `A284695.P14105735879824220416` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284695 has offset 1).

The definition of A284695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284695.P3067066770881462529

`A002034(A336965(n+1))`
-/

namespace A284695.P3067066770881462529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A336965 (n + 1)).toNat

end

end A284695.P3067066770881462529

namespace A284695

/-- `A002034(A336965(n+1))` -/
def P3067066770881462529.Spec : Prop :=
  ∀ n, P3067066770881462529.a n = A284695 (n + 1)

end A284695

/-! ## A284695.P10075136793129994511

`A053585(A336965(2*n+1-n))`
-/

namespace A284695.P10075136793129994511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A336965 (2 * n + 1 - n)).toNat

end

end A284695.P10075136793129994511

namespace A284695

/-- `A053585(A336965(2*n+1-n))` -/
def P10075136793129994511.Spec : Prop :=
  ∀ n, P10075136793129994511.a n = A284695 (n + 1)

end A284695

/-! ## A284695.P13514784353077943232

`A006530(A284761(n+1)*A336965(n+1))`
-/

namespace A284695.P13514784353077943232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A284761 (n + 1) * A336965 (n + 1)).toNat

end

end A284695.P13514784353077943232

namespace A284695

/-- `A006530(A284761(n+1)*A336965(n+1))` -/
def P13514784353077943232.Spec : Prop :=
  ∀ n, P13514784353077943232.a n = A284695 (n + 1)

end A284695

/-! ## A284695.P14105735879824220416

`A006530((n+1)*a(A005361(n+1)-1))` with `a(0)=1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A284695

/-- `A006530((n+1)*a(A005361(n+1)-1))` -/
def P14105735879824220416.Spec : Prop :=
  ∀ n, P14105735879824220416.a n = A284695 (n + 1)

theorem P14105735879824220416.correct : P14105735879824220416.Spec := by
  intro n
  simp only [A284695, Nat.add_sub_cancel]

end A284695

/-! ## A284695.P3434880237180377582

`A006530(A336965(n+1)²)`
-/

namespace A284695.P3434880237180377582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A336965 (n + 1) ^ 2).toNat

end

end A284695.P3434880237180377582

namespace A284695

/-- `A006530(A336965(n+1)²)` -/
def P3434880237180377582.Spec : Prop :=
  ∀ n, P3434880237180377582.a n = A284695 (n + 1)

end A284695

/-! ## A284695.P6283519097104911939

`A006530((n+1)*A287620(n+1))`
-/

namespace A284695.P6283519097104911939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1 : ℤ) * A287620 (n + 1)).toNat

end

end A284695.P6283519097104911939

namespace A284695

/-- `A006530((n+1)*A287620(n+1))` -/
def P6283519097104911939.Spec : Prop :=
  ∀ n, P6283519097104911939.a n = A284695 (n + 1)

end A284695

/-! ## A284695.P6093716971108619026

`A006530((n+1)*A203639(n+1))`
-/

namespace A284695.P6093716971108619026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1 : ℤ) * A203639 (n + 1)).toNat

end

end A284695.P6093716971108619026

namespace A284695

/-- `A006530((n+1)*A203639(n+1))` -/
def P6093716971108619026.Spec : Prop :=
  ∀ n, P6093716971108619026.a n = A284695 (n + 1)

end A284695

/-! ## A284695.P3708674512585229163

`A006530(A000005(A003557(n+1))*A002618(n+1))`
-/

namespace A284695.P3708674512585229163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000005 (A003557 (n + 1)).toNat * A002618 (n + 1)).toNat

end

end A284695.P3708674512585229163

namespace A284695

/-- `A006530(A000005(A003557(n+1))*A002618(n+1))` -/
def P3708674512585229163.Spec : Prop :=
  ∀ n, P3708674512585229163.a n = A284695 (n + 1)

end A284695

/-! ## A284695.P14788107984898630781

`A006530((n+1)*A000005(A003188((n+1)²)))`
-/

namespace A284695.P14788107984898630781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1 : ℤ) * A000005 (A003188 ((n + 1) ^ 2)).toNat).toNat

end

end A284695.P14788107984898630781

namespace A284695

/-- `A006530((n+1)*A000005(A003188((n+1)²)))` -/
def P14788107984898630781.Spec : Prop :=
  ∀ n, P14788107984898630781.a n = A284695 (n + 1)

end A284695

/-! ## A284695.P11494286924213130469

`A006530(A005361(n+1)*A123667(n+1))`
-/

namespace A284695.P11494286924213130469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005361 (n + 1) * A123667 (n + 1)).toNat

end

end A284695.P11494286924213130469

namespace A284695

/-- `A006530(A005361(n+1)*A123667(n+1))` -/
def P11494286924213130469.Spec : Prop :=
  ∀ n, P11494286924213130469.a n = A284695 (n + 1)

end A284695

/-! ## A284695.P4575046942516880690

`A006530((n+1)*(n+1)*A006530(A181935(n)))`
-/

namespace A284695.P4575046942516880690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1 : ℤ) * ((n + 1 : ℤ) * A006530 (A181935 n).toNat)).toNat

end

end A284695.P4575046942516880690

namespace A284695

/-- `A006530((n+1)*(n+1)*A006530(A181935(n)))` -/
def P4575046942516880690.Spec : Prop :=
  ∀ n, P4575046942516880690.a n = A284695 (n + 1)

end A284695

/-! ## A284695.P439915620092643348

`A006530((n+1)²*A000005(floor(n/2)+1))`
-/

namespace A284695.P439915620092643348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (((n + 1) ^ 2 : ℤ) * A000005 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

end

end A284695.P439915620092643348

namespace A284695

/-- `A006530((n+1)²*A000005(floor(n/2)+1))` -/
def P439915620092643348.Spec : Prop :=
  ∀ n, P439915620092643348.a n = A284695 (n + 1)

end A284695

/-! ## A284695.P2809660375493863993

`A006530((A124764(n)+1)*A006530(n+1))`
-/

namespace A284695.P2809660375493863993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((A124764 n + 1) * A006530 (n + 1)).toNat

end

end A284695.P2809660375493863993

namespace A284695

/-- `A006530((A124764(n)+1)*A006530(n+1))` -/
def P2809660375493863993.Spec : Prop :=
  ∀ n, P2809660375493863993.a n = A284695 (n + 1)

end A284695

/-! ## A284695.P1397883533956613338

`A006530(A000026((n+1)²))`
-/

namespace A284695.P1397883533956613338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000026 ((n + 1) ^ 2)).toNat

end

end A284695.P1397883533956613338

namespace A284695

/-- `A006530(A000026((n+1)²))` -/
def P1397883533956613338.Spec : Prop :=
  ∀ n, P1397883533956613338.a n = A284695 (n + 1)

end A284695

/-! ## A284695.P10686560676701457688

`A006530(A203639((n+1)²))`
-/

namespace A284695.P10686560676701457688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A203639 ((n + 1) ^ 2)).toNat

end

end A284695.P10686560676701457688

namespace A284695

/-- `A006530(A203639((n+1)²))` -/
def P10686560676701457688.Spec : Prop :=
  ∀ n, P10686560676701457688.a n = A284695 (n + 1)

end A284695

/-! ## A284695.P3033654348025677025

`A249740(A000026(n+1)²)`
-/

namespace A284695.P3033654348025677025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (A000026 (n + 1) ^ 2).toNat

end

end A284695.P3033654348025677025

namespace A284695

/-- `A249740(A000026(n+1)²)` -/
def P3033654348025677025.Spec : Prop :=
  ∀ n, P3033654348025677025.a n = A284695 (n + 1)

end A284695

/-! ## A284695.P11681560560847249404

`A338668(A336965(A336965(n+1)²))`
-/

namespace A284695.P11681560560847249404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338668 (A336965 (A336965 (n + 1) ^ 2).toNat).toNat

end

end A284695.P11681560560847249404

namespace A284695

/-- `A338668(A336965(A336965(n+1)²))` -/
def P11681560560847249404.Spec : Prop :=
  ∀ n, P11681560560847249404.a n = A284695 (n + 1)

end A284695

/-! ## A284695.P524854046715502785

`A249740(A000026(n+1)*A000026(n+1))`
-/

namespace A284695.P524854046715502785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (A000026 (n + 1) * A000026 (n + 1)).toNat

end

end A284695.P524854046715502785

namespace A284695

/-- `A249740(A000026(n+1)*A000026(n+1))` -/
def P524854046715502785.Spec : Prop :=
  ∀ n, P524854046715502785.a n = A284695 (n + 1)

end A284695

/-!
# A284696: Numbers of the form p^^k, with p prime and k>=0, where ^^ denotes tetration.

The programs for A284696, there is no canonical definition to state claims against.
-/

/-! ## A284696.P17363324838915629405

`record[A253560(n+1)/A336965(n+1)]`
-/

namespace A284696.P17363324838915629405
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 1) : ℚ) / (A336965 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284696.P17363324838915629405

/-! ## A284696.P9289850175883264540

`eq[A006530(n+1), A336965(n+1)]+1`
-/

namespace A284696.P9289850175883264540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A284696.P9289850175883264540

/-! ## A284696.P11983832219450419421

`eq[A020639(n+1), A336965(n+1)]+1`
-/

namespace A284696.P11983832219450419421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A284696.P11983832219450419421

/-! ## A284696.P13821472720366322054

`eq[A284694(n+1), A284695(n+1)]+1`
-/

namespace A284696.P13821472720366322054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A284696.P13821472720366322054

/-! ## A284696.P12351589484859675800

`record[A020639(n+1)*A000189(A203639(n+1))]`
-/

namespace A284696.P12351589484859675800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A000189 (A203639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284696.P12351589484859675800

/-! ## A284696.P10664637130831668725

`record[A082299(n+1)*A094839(A000190(n+1))]`
-/

namespace A284696.P10664637130831668725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1) * A094839 (A000190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284696.P10664637130831668725

/-!
# A284697: Permutation of natural numbers: a(n) = (A073920(n) + 1) / 2.

The programs for A284697, there is no canonical definition to state claims against.
-/

/-! ## A284697.P14220179691220685290

`(A073920(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284697.P14220179691220685290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073920 (n + 1) + 1 : ℚ) / 2

end

end A284697.P14220179691220685290

/-! ## A284697.P4843219941342987225

`ceil(A073920(n+1)/2)`
-/

namespace A284697.P4843219941342987225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A073920 (n + 1) : ℚ) / 2⌉

end

end A284697.P4843219941342987225

/-! ## A284697.P4611588277309154682

`A000463(A073920(n+1))`
-/

namespace A284697.P4611588277309154682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A073920 (n + 1)).toNat

end

end A284697.P4611588277309154682

/-! ## A284697.P11590489539428015691

`A001281(A073920(n+1)+1)`
-/

namespace A284697.P11590489539428015691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A073920 (n + 1) + 1).toNat

end

end A284697.P11590489539428015691

/-! ## A284697.P15339691474384827778

`A004525(A073920(n+1)+1)`
-/

namespace A284697.P15339691474384827778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A073920 (n + 1) + 1).toNat

end

end A284697.P15339691474384827778

/-!
# A284698: Numbers k such that A284695(k) <= 3.

The programs for A284698, there is no canonical definition to state claims against.
-/

/-! ## A284698.P10373803724860441632

`lt[A284695(n+1), 4]+1`
-/

namespace A284698.P10373803724860441632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A284698.P10373803724860441632

/-! ## A284698.P17947513224980184931

`record[(n+1)/A065371(A000026(n+1))]`
-/

namespace A284698.P17947513224980184931
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065371 (A000026 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284698.P17947513224980184931

/-! ## A284698.P13951173095688647149

`record[A064553(n+1)/A186711(A284695(n+1))]`
-/

namespace A284698.P13951173095688647149
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064553 (n + 1) : ℚ) / (A186711 (A284695 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284698.P13951173095688647149

/-! ## A284698.P598483554746326696

`record[gcd(n+1, A165827(A014574(n+1)))]`
-/

namespace A284698.P598483554746326696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A165827 (A014574 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284698.P598483554746326696

/-!
# A284699: Number of dominating sets in the n-antiprism graph.

The programs for A284699, the canonical program `A284699.P3452078416810821010` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284699 has offset 1).

The definition of A284699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284699.P3452078416810821010

`3*a(n-1)+3*a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=3, a(1)=15, a(2)=57, a(3)=223, a(4)=863`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A284699

/-- `3*a(n-1)+3*a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P3452078416810821010.Spec : Prop :=
  ∀ n, (P3452078416810821010.a n : ℤ) = A284699 (n + 1)

theorem P3452078416810821010.correct : P3452078416810821010.Spec := by
  intro n
  simp only [A284699, Nat.add_sub_cancel]

end A284699

/-! ## A284699.P6859201757427439213

`A023424(Δ[n²])`
-/

namespace A284699.P6859201757427439213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023424 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284699.P6859201757427439213

namespace A284699

/-- `A023424(Δ[n²])` -/
def P6859201757427439213.Spec : Prop :=
  ∀ n, P6859201757427439213.a n = A284699 (n + 1)

end A284699

/-! ## A284699.P11274439052211897993

`A074048(2*(n+1))`
-/

namespace A284699.P11274439052211897993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074048 (2 * (n + 1))

end

end A284699.P11274439052211897993

namespace A284699

/-- `A074048(2*(n+1))` -/
def P11274439052211897993.Spec : Prop :=
  ∀ n, P11274439052211897993.a n = A284699 (n + 1)

end A284699

/-! ## A284699.P5944622974207627607

`record[A074048(and(n, n+1)+2)]`
-/

namespace A284699.P5944622974207627607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074048 (Nat.land n (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284699.P5944622974207627607

namespace A284699

/-- `record[A074048(and(n, n+1)+2)]` -/
def P5944622974207627607.Spec : Prop :=
  ∀ n, P5944622974207627607.a n = A284699 (n + 1)

end A284699

/-! ## A284699.P1793972033353146624

`record[A023424(A004442(n))]`
-/

namespace A284699.P1793972033353146624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023424 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284699.P1793972033353146624

namespace A284699

/-- `record[A023424(A004442(n))]` -/
def P1793972033353146624.Spec : Prop :=
  ∀ n, P1793972033353146624.a n = A284699 (n + 1)

end A284699

/-! ## A284699.P8778759086677830270

`record[A074048(A133265(n))]`
-/

namespace A284699.P8778759086677830270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074048 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284699.P8778759086677830270

namespace A284699

/-- `record[A074048(A133265(n))]` -/
def P8778759086677830270.Spec : Prop :=
  ∀ n, P8778759086677830270.a n = A284699 (n + 1)

end A284699

/-! ## A284699.P15926973321104231032

`record[A023424(A000265(n+1))]`
-/

namespace A284699.P15926973321104231032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023424 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284699.P15926973321104231032

namespace A284699

/-- `record[A023424(A000265(n+1))]` -/
def P15926973321104231032.Spec : Prop :=
  ∀ n, P15926973321104231032.a n = A284699 (n + 1)

end A284699

/-! ## A284699.P7938218577851683300

`record[A074048(A014681(n+1))]`
-/

namespace A284699.P7938218577851683300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074048 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284699.P7938218577851683300

namespace A284699

/-- `record[A074048(A014681(n+1))]` -/
def P7938218577851683300.Spec : Prop :=
  ∀ n, P7938218577851683300.a n = A284699 (n + 1)

end A284699

/-! ## A284699.P9385808121145015390

`ratio[A074048(2*n)]*A074048(2*n)`
-/

namespace A284699.P9385808121145015390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074048 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A074048 (2 * n) : ℚ)

end

end A284699.P9385808121145015390

namespace A284699

/-- `ratio[A074048(2*n)]*A074048(2*n)` -/
def P9385808121145015390.Spec : Prop :=
  ∀ n, P9385808121145015390.a n = (A284699 (n + 1) : ℚ)

end A284699

/-! ## A284699.P15778088275923927858

`A135493(2*(n+1))-A000322(2*n+1)`
-/

namespace A284699.P15778088275923927858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135493 (2 * (n + 1)) - A000322 (2 * n + 1)

end

end A284699.P15778088275923927858

namespace A284699

/-- `A135493(2*(n+1))-A000322(2*n+1)` -/
def P15778088275923927858.Spec : Prop :=
  ∀ n, P15778088275923927858.a n = A284699 (n + 1)

end A284699

/-! ## A284699.P5489442632764535592

`lcm(2, A023424(2*n+1))/2`
-/

namespace A284699.P5489442632764535592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A023424 (2 * n + 1)) : ℚ) / 2

end

end A284699.P5489442632764535592

namespace A284699

/-- `lcm(2, A023424(2*n+1))/2` -/
def P5489442632764535592.Spec : Prop :=
  ∀ n, P5489442632764535592.a n = (A284699 (n + 1) : ℚ)

end A284699

/-! ## A284699.P13485481045151926037

`gcd(A023424(2*n+1)*A256267(2*n+1), A023424(2*n+1))`
-/

namespace A284699.P13485481045151926037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023424 (2 * n + 1) * A256267 (2 * n + 1)) (A023424 (2 * n + 1))

end

end A284699.P13485481045151926037

namespace A284699

/-- `gcd(A023424(2*n+1)*A256267(2*n+1), A023424(2*n+1))` -/
def P13485481045151926037.Spec : Prop :=
  ∀ n, (P13485481045151926037.a n : ℤ) = A284699 (n + 1)

end A284699

/-! ## A284699.P10035284602531862195

`record[A074048(A198954(n)+1)]`
-/

namespace A284699.P10035284602531862195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074048 (A198954 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284699.P10035284602531862195

namespace A284699

/-- `record[A074048(A198954(n)+1)]` -/
def P10035284602531862195.Spec : Prop :=
  ∀ n, P10035284602531862195.a n = A284699 (n + 1)

end A284699

