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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A339600: a(n) = a(n-1) + 6*a(n-3) + 2*a(n-4), with a(0) = a(1) = 1, a(2) = 3, a(3) = 6.

The programs for A339600, the canonical program `A339600.P16957241824333469520` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339600 has offset 0).

The definition of A339600 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+6*a(n-3)+2*a(n-4)` (program `A339600.P16957241824333469520`, by `A339600.P16957241824333469520.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A339600.P16957241824333469520

`a(n-1)+6*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A339600

/-- `a(n-1)+6*a(n-3)+2*a(n-4)` -/
def P16957241824333469520.Spec : Prop :=
  ∀ n, (P16957241824333469520.a n : ℤ) = A339600 n

theorem P16957241824333469520.correct : P16957241824333469520.Spec := by
  intro n
  simp only [A339600]

end A339600

/-! ## A339600.P9745832565605481908

`A345000(A011965(n))+A337282(n)`
-/

namespace A339600.P9745832565605481908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345000 (A011965 n).toNat + A337282 n

end

end A339600.P9745832565605481908

namespace A339600

/-- `A345000(A011965(n))+A337282(n)` -/
def P9745832565605481908.Spec : Prop :=
  ∀ n, P9745832565605481908.a n = A339600 n

end A339600

/-! ## A339600.P6169001697328037584

`or(A000005(A200731(n)), A232230(n))`
-/

namespace A339600.P6169001697328037584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A200731 n).toNat) (A232230 n)

end

end A339600.P6169001697328037584

namespace A339600

/-- `or(A000005(A200731(n)), A232230(n))` -/
def P6169001697328037584.Spec : Prop :=
  ∀ n, P6169001697328037584.a n = A339600 n

end A339600

/-! ## A339600.P16126436384356883682

`A209315(A000162(n+1))+A000219(n)`
-/

namespace A339600.P16126436384356883682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209315 (A000162 (n + 1)).toNat + A000219 n

end

end A339600.P16126436384356883682

namespace A339600

/-- `A209315(A000162(n+1))+A000219(n)` -/
def P16126436384356883682.Spec : Prop :=
  ∀ n, P16126436384356883682.a n = A339600 n

end A339600

/-!
# A339601: Starting from x_0 = n, iterate by dividing with 3 (discarding any remainder), until zero is reached: x_1 = floor(x_0/3), x_2 = floor(x_1/3), etc. Then a(n) = Sum_{i=0..} (x_i AND 2^i), where AND is bitwise-and.

The programs for A339601, there is no canonical definition to state claims against.
-/

/-! ## A339601.P15165252202854316760

`A103181(A007092(n))%8`
-/

namespace A339601.P15165252202854316760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103181 (A007092 n).toNat) 8

end

end A339601.P15165252202854316760

/-! ## A339601.P1458160690553827963

`A103181(record[A222230(n)])%8`
-/

namespace A339601.P1458160690553827963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103181 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 8

end

end A339601.P1458160690553827963

/-! ## A339601.P2208069102484341922

`A103181(record[A222248(n)])%8`
-/

namespace A339601.P2208069102484341922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103181 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 8

end

end A339601.P2208069102484341922

/-! ## A339601.P16977628414419463887

`A103181(eq[0, A102677(n)])%8`
-/

namespace A339601.P16977628414419463887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) 8

end

end A339601.P16977628414419463887

/-! ## A339601.P2037596844763055431

`A103181(lt[A054055(n), 6])%8`
-/

namespace A339601.P2037596844763055431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103181 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)) 8

end

end A339601.P2037596844763055431

/-! ## A339601.P7525386024448623298

`A103181(lt[A086066(n), 58])%8`
-/

namespace A339601.P7525386024448623298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  58

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103181 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)) 8

end

end A339601.P7525386024448623298

/-! ## A339601.P14791954496521574153

`A103181(record[n-A106747(n)])%8`
-/

namespace A339601.P14791954496521574153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103181 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 8

end

end A339601.P14791954496521574153

/-! ## A339601.P7271349910365960067

`A103181(record[n-A107130(n)])%8`
-/

namespace A339601.P7271349910365960067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A107130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103181 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 8

end

end A339601.P7271349910365960067

/-! ## A339601.P14996953990513246950

`(A215089(3*n)-A215089(n))/2`
-/

namespace A339601.P14996953990513246950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215089 (3 * n) - A215089 n : ℚ) / 2

end

end A339601.P14996953990513246950

/-! ## A339601.P8652326730298160523

`and(7, A103181(record[(A132387(n)+n)/2]))`
-/

namespace A339601.P8652326730298160523
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132387 n + (n : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A103181 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat)

end

end A339601.P8652326730298160523

/-! ## A339601.P8658806036019576432

`and(A103181(A007092(n)), A196655(n))`
-/

namespace A339601.P8658806036019576432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103181 (A007092 n).toNat) (A196655 n)

end

end A339601.P8658806036019576432

/-! ## A339601.P5963200560090997674

`A004525(A215089(3*n)-A215089(n))`
-/

namespace A339601.P5963200560090997674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A215089 (3 * n) - A215089 n).toNat

end

end A339601.P5963200560090997674

/-! ## A339601.P5832197284094240996

`A004526(A215089(3*n)-A215089(n))`
-/

namespace A339601.P5832197284094240996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A215089 (3 * n) - A215089 n).toNat

end

end A339601.P5832197284094240996

/-! ## A339601.P12741071087351831462

`A273943(A215089(3*n)-A215089(n))`
-/

namespace A339601.P12741071087351831462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A215089 (3 * n) - A215089 n).toNat

end

end A339601.P12741071087351831462

/-! ## A339601.P18011044980193054046

`A028242(A215089(3*n+1)-A215089(n))`
-/

namespace A339601.P18011044980193054046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A215089 (3 * n + 1) - A215089 n).toNat

end

end A339601.P18011044980193054046

/-! ## A339601.P3634947229112815239

`A078898(A215089(A008585(n))-A215089(n))`
-/

namespace A339601.P3634947229112815239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A215089 (A008585 n).toNat - A215089 n).toNat

end

end A339601.P3634947229112815239

/-! ## A339601.P3862600492581822805

`A110654(A215089(A008585(n))-A215089(n))`
-/

namespace A339601.P3862600492581822805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A215089 (A008585 n).toNat - A215089 n).toNat

end

end A339601.P3862600492581822805

/-!
# A339602: a(n) = (a(n-2) XOR A030101(a(n-1))) + 1, a(0) = 0, a(1) = 1.

The programs for A339602, there is no canonical definition to state claims against.
-/

/-! ## A339602.P5046375884843405146

`gcd(A028347(A000975(n+2)), A279891(n))`
-/

namespace A339602.P5046375884843405146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028347 (A000975 (n + 2)).toNat) (A279891 n)

end

end A339602.P5046375884843405146

/-! ## A339602.P4965968800097315398

`A051953(A028310(n)+A015886(2*n)-1)`
-/

namespace A339602.P4965968800097315398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A028310 n + A015886 (2 * n) - 1).toNat

end

end A339602.P4965968800097315398

/-! ## A339602.P8523270102858628161

`A005599(n)%A000005(A007955(3*n+4))`
-/

namespace A339602.P8523270102858628161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005599 n) (A000005 (A007955 (3 * n + 4)).toNat)

end

end A339602.P8523270102858628161

/-! ## A339602.P12585268220005750131

`and(A005599(n), A014261(A299279(3*n+2)))`
-/

namespace A339602.P12585268220005750131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005599 n) (A014261 (A299279 (3 * n + 2)).toNat)

end

end A339602.P12585268220005750131

/-! ## A339602.P6867441020782803834

`C(A051953(n+2), A135539(A062196(3*n+4)))`
-/

namespace A339602.P6867441020782803834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051953 (n + 2)).toNat (A135539 (A062196 (3 * n + 4)).toNat).toNat

end

end A339602.P6867441020782803834

/-!
# A339603: a(n) is the sum of (2^n mod k) for odd numbers k < 2^(n-1).

The programs for A339603, there is no canonical definition to state claims against.
-/

/-! ## A339603.P12295571932686681940

`A340740(2^(n+1))`
-/

namespace A339603.P12295571932686681940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340740 (2 ^ (n + 1))

end

end A339603.P12295571932686681940

/-! ## A339603.P4904173304654706307

`A340740(A011782(n+2))%A000262(n)`
-/

namespace A339603.P4904173304654706307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340740 (A011782 (n + 2)).toNat) (A000262 n)

end

end A339603.P4904173304654706307

/-! ## A339603.P5927749524094973939

`A194285(n+1)*A340740(A000079(n+1))`
-/

namespace A339603.P5927749524094973939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (n + 1) * A340740 (A000079 (n + 1)).toNat

end

end A339603.P5927749524094973939

/-! ## A339603.P3286724333233930633

`A340740(A000079(n+1))%A162009(n+1)`
-/

namespace A339603.P3286724333233930633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340740 (A000079 (n + 1)).toNat) (A162009 (n + 1))

end

end A339603.P3286724333233930633

/-! ## A339603.P11864766401792807645

`or(A083917(n+1), A340740(A000079(n+1)))`
-/

namespace A339603.P11864766401792807645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083917 (n + 1)) (A340740 (A000079 (n + 1)).toNat)

end

end A339603.P11864766401792807645

/-!
# A339608: Numbers whose bijective base-2 representation is a Lyndon word.

The programs for A339608, there is no canonical definition to state claims against.
-/

/-! ## A339608.P13546941695721346831

`A329327(n+1)-1`
-/

namespace A339608.P13546941695721346831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329327 (n + 1) - 1

end

end A339608.P13546941695721346831

/-! ## A339608.P3029528300404085724

`eq[2, A211100(n+1)]`
-/

namespace A339608.P3029528300404085724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A339608.P3029528300404085724

/-! ## A339608.P10470212734525094542

`eq[2, A211100(n)]-1`
-/

namespace A339608.P10470212734525094542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A339608.P10470212734525094542

/-! ## A339608.P5748317313180514222

`eq[1, A211097(n+1)]+1`
-/

namespace A339608.P5748317313180514222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339608.P5748317313180514222

/-! ## A339608.P14436313105922831554

`lt[A211100(n+1), A122553(n)]`
-/

namespace A339608.P14436313105922831554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A339608.P14436313105922831554

/-! ## A339608.P12631655063924168174

`lt[6, A270844(floor(5/A211100(n+1)))]`
-/

namespace A339608.P12631655063924168174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270844 ⌊5 / (A211100 (n + 1) : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A339608.P12631655063924168174

/-! ## A339608.P1701424489339602631

`record[A124625(n+2)/A211097(n+1)]`
-/

namespace A339608.P1701424489339602631
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124625 (n + 2) : ℚ) / (A211097 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339608.P1701424489339602631

/-! ## A339608.P12015715564137235549

`record[(n+1)/A089623(A211097(n+1)²)]`
-/

namespace A339608.P12015715564137235549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A089623 (A211097 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339608.P12015715564137235549

/-! ## A339608.P4376946525950122702

`record[gcd(n+1, A027375(A211097(n+1)-1))]`
-/

namespace A339608.P4376946525950122702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A027375 (A211097 (n + 1) - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339608.P4376946525950122702

/-! ## A339608.P2467651707269357279

`eq[A001281(n), A373399(n+1)]`
-/

namespace A339608.P2467651707269357279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339608.P2467651707269357279

/-! ## A339608.P7231753666770594372

`eq[A014682(n), A373399(n+1)]`
-/

namespace A339608.P7231753666770594372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339608.P7231753666770594372

/-! ## A339608.P5249519153601686408

`eq[A030451(n), A373399(n+1)]`
-/

namespace A339608.P5249519153601686408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339608.P5249519153601686408

/-! ## A339608.P2993142990557124302

`eq[A064680(n), A373399(n+1)]`
-/

namespace A339608.P2993142990557124302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339608.P2993142990557124302

/-! ## A339608.P15058793929014233733

`eq[A082010(n), A373399(n+1)]`
-/

namespace A339608.P15058793929014233733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339608.P15058793929014233733

/-! ## A339608.P18120948908095820969

`eq[A318972(n), A373399(n+1)]`
-/

namespace A339608.P18120948908095820969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318972 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339608.P18120948908095820969

/-! ## A339608.P2467540376892879422

`eq[A352544(n), A373399(n+1)]`
-/

namespace A339608.P2467540376892879422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352544 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339608.P2467540376892879422

/-!
# A339609: Consider a triangle drawn on the perimeter of a triangular lattice with side length n. a(n) is the number of regions inside the triangle after drawing unit circles centered at each lattice point inside the triangle.

The programs for A339609, the canonical program `A339609.P16423068332349151675` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339609 has offset 1).

The definition of A339609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339609.P16423068332349151675

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=10, a(4)=22, a(5)=39`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A339609

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P16423068332349151675.Spec : Prop :=
  ∀ n, P16423068332349151675.a n = A339609 (n + 1)

theorem P16423068332349151675.correct : P16423068332349151675.Spec := by
  intro n
  simp only [A339609, Nat.add_sub_cancel]

end A339609

/-! ## A339609.P8352081942041456861

`A116733(n+1)-A036453(A026806(n+1))`
-/

namespace A339609.P8352081942041456861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116733 (n + 1) - A036453 (A026806 (n + 1)).toNat

end

end A339609.P8352081942041456861

namespace A339609

/-- `A116733(n+1)-A036453(A026806(n+1))` -/
def P8352081942041456861.Spec : Prop :=
  ∀ n, P8352081942041456861.a n = A339609 (n + 1)

end A339609

/-! ## A339609.P11286516687868348976

`A116733(n+1)-A001221(A253106(n+1))`
-/

namespace A339609.P11286516687868348976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116733 (n + 1) - A001221 (A253106 (n + 1)).toNat

end

end A339609.P11286516687868348976

namespace A339609

/-- `A116733(n+1)-A001221(A253106(n+1))` -/
def P11286516687868348976.Spec : Prop :=
  ∀ n, P11286516687868348976.a n = A339609 (n + 1)

end A339609

/-! ## A339609.P1006808062181154281

`A007590(A004274(n))+A001971(A267873(n))`
-/

namespace A339609.P1006808062181154281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A004274 n).toNat + A001971 (A267873 n).toNat

end

end A339609.P1006808062181154281

namespace A339609

/-- `A007590(A004274(n))+A001971(A267873(n))` -/
def P1006808062181154281.Spec : Prop :=
  ∀ n, P1006808062181154281.a n = A339609 (n + 1)

end A339609

/-! ## A339609.P10102647451452754002

`A116733(n+1)-gcd(2, A026622(n))`
-/

namespace A339609.P10102647451452754002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116733 (n + 1) - (Int.gcd 2 (A026622 n) : ℤ)

end

end A339609.P10102647451452754002

namespace A339609

/-- `A116733(n+1)-gcd(2, A026622(n))` -/
def P10102647451452754002.Spec : Prop :=
  ∀ n, P10102647451452754002.a n = A339609 (n + 1)

end A339609

/-! ## A339609.P2873152767131403536

`A116733(n+1)-A316828(A194603(n+1))`
-/

namespace A339609.P2873152767131403536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116733 (n + 1) - A316828 (A194603 (n + 1)).toNat

end

end A339609.P2873152767131403536

namespace A339609

/-- `A116733(n+1)-A316828(A194603(n+1))` -/
def P2873152767131403536.Spec : Prop :=
  ∀ n, P2873152767131403536.a n = A339609 (n + 1)

end A339609

/-! ## A339609.P4848749636971663471

`A116733(n+1)-A040001(A342766(n+1))`
-/

namespace A339609.P4848749636971663471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116733 (n + 1) - A040001 (A342766 (n + 1)).toNat

end

end A339609.P4848749636971663471

namespace A339609

/-- `A116733(n+1)-A040001(A342766(n+1))` -/
def P4848749636971663471.Spec : Prop :=
  ∀ n, P4848749636971663471.a n = A339609 (n + 1)

end A339609

/-!
# A339610: Expansion of x*(2 - x - x^2 - 2*x^3)/(1 - x - x^2)^2.

The programs for A339610, the canonical program `A339610.P2300221392478852020` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339610 has offset 1).

The definition of A339610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339610.P2300221392478852020

`A001595(n)+A094588(n)+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A339610

/-- `A001595(n)+A094588(n)+1` -/
def P2300221392478852020.Spec : Prop :=
  ∀ n, P2300221392478852020.a n = A339610 (n + 1)

theorem P2300221392478852020.correct : P2300221392478852020.Spec := by
  intro n
  simp only [A339610, Nat.add_sub_cancel]

end A339610

/-! ## A339610.P7712036717734075595

`A240847(n)+A239342(n+2)`
-/

namespace A339610.P7712036717734075595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240847 n + A239342 (n + 2)

end

end A339610.P7712036717734075595

namespace A339610

/-- `A240847(n)+A239342(n+2)` -/
def P7712036717734075595.Spec : Prop :=
  ∀ n, P7712036717734075595.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P12093953462002360316

`A020695(n)+n*A212804(n)`
-/

namespace A339610.P12093953462002360316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (n : ℤ) * A212804 n

end

end A339610.P12093953462002360316

namespace A339610

/-- `A020695(n)+n*A212804(n)` -/
def P12093953462002360316.Spec : Prop :=
  ∀ n, P12093953462002360316.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P2960532517133239768

`A020695(n)+n*Δ[A000045(n)]`
-/

namespace A339610.P2960532517133239768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A339610.P2960532517133239768

namespace A339610

/-- `A020695(n)+n*Δ[A000045(n)]` -/
def P2960532517133239768.Spec : Prop :=
  ∀ n, P2960532517133239768.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P8934680351362215702

`A020695(n)+n*Δ[A001611(n)]`
-/

namespace A339610.P8934680351362215702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A339610.P8934680351362215702

namespace A339610

/-- `A020695(n)+n*Δ[A001611(n)]` -/
def P8934680351362215702.Spec : Prop :=
  ∀ n, P8934680351362215702.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P13989702186688147381

`A006490(n+1)+A000032(n+1)`
-/

namespace A339610.P13989702186688147381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) + A000032 (n + 1)

end

end A339610.P13989702186688147381

namespace A339610

/-- `A006490(n+1)+A000032(n+1)` -/
def P13989702186688147381.Spec : Prop :=
  ∀ n, P13989702186688147381.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P15590369374132736305

`A006490(n+1)+A000204(n+1)`
-/

namespace A339610.P15590369374132736305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) + A000204 (n + 1)

end

end A339610.P15590369374132736305

namespace A339610

/-- `A006490(n+1)+A000204(n+1)` -/
def P15590369374132736305.Spec : Prop :=
  ∀ n, P15590369374132736305.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P5174385760397887174

`A006490(n+1)+A001610(n)+1`
-/

namespace A339610.P5174385760397887174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) + (A001610 n + 1)

end

end A339610.P5174385760397887174

namespace A339610

/-- `A006490(n+1)+A001610(n)+1` -/
def P5174385760397887174.Spec : Prop :=
  ∀ n, P5174385760397887174.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P2147899713413493621

`A208354(n+1)+A206268(n+1)`
-/

namespace A339610.P2147899713413493621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 1) + A206268 (n + 1)

end

end A339610.P2147899713413493621

namespace A339610

/-- `A208354(n+1)+A206268(n+1)` -/
def P2147899713413493621.Spec : Prop :=
  ∀ n, P2147899713413493621.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P15436667629558623232

`A136391(n+1)+A000045(n+2)`
-/

namespace A339610.P15436667629558623232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136391 (n + 1) + A000045 (n + 2)

end

end A339610.P15436667629558623232

namespace A339610

/-- `A136391(n+1)+A000045(n+2)` -/
def P15436667629558623232.Spec : Prop :=
  ∀ n, P15436667629558623232.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P4997642253977795561

`A029907(n)+A102702(n)-A010049(n)`
-/

namespace A339610.P4997642253977795561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + (A102702 n - A010049 n)

end

end A339610.P4997642253977795561

namespace A339610

/-- `A029907(n)+A102702(n)-A010049(n)` -/
def P4997642253977795561.Spec : Prop :=
  ∀ n, P4997642253977795561.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P4670073169866164216

`A208354(n+1)+A240847(n)+A208354(n)`
-/

namespace A339610.P4670073169866164216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 1) + (A240847 n + A208354 n)

end

end A339610.P4670073169866164216

namespace A339610

/-- `A208354(n+1)+A240847(n)+A208354(n)` -/
def P4670073169866164216.Spec : Prop :=
  ∀ n, P4670073169866164216.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P8401059445868398509

`A006355(n+1)+A010049(n+1)+A006367(n)`
-/

namespace A339610.P8401059445868398509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + (A010049 (n + 1) + A006367 n)

end

end A339610.P8401059445868398509

namespace A339610

/-- `A006355(n+1)+A010049(n+1)+A006367(n)` -/
def P8401059445868398509.Spec : Prop :=
  ∀ n, P8401059445868398509.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P18278285376411502390

`A000045(n+1)+A094588(n)+A000045(n+1)`
-/

namespace A339610.P18278285376411502390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A094588 n + A000045 (n + 1))

end

end A339610.P18278285376411502390

namespace A339610

/-- `A000045(n+1)+A094588(n)+A000045(n+1)` -/
def P18278285376411502390.Spec : Prop :=
  ∀ n, P18278285376411502390.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P6917440991794634282

`A000045(n+1)+A240847(n)+A029907(n+1)`
-/

namespace A339610.P6917440991794634282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A240847 n + A029907 (n + 1))

end

end A339610.P6917440991794634282

namespace A339610

/-- `A000045(n+1)+A240847(n)+A029907(n+1)` -/
def P6917440991794634282.Spec : Prop :=
  ∀ n, P6917440991794634282.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P13003425610116167260

`A022097(n+1)+A094588(n)-A022095(n+1)`
-/

namespace A339610.P13003425610116167260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 (n + 1) + (A094588 n - A022095 (n + 1))

end

end A339610.P13003425610116167260

namespace A339610

/-- `A022097(n+1)+A094588(n)-A022095(n+1)` -/
def P13003425610116167260.Spec : Prop :=
  ∀ n, P13003425610116167260.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P5288410649401693841

`A208354(n+1)+A208354(n+1)-A010049(n)`
-/

namespace A339610.P5288410649401693841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 1) + (A208354 (n + 1) - A010049 n)

end

end A339610.P5288410649401693841

namespace A339610

/-- `A208354(n+1)+A208354(n+1)-A010049(n)` -/
def P5288410649401693841.Spec : Prop :=
  ∀ n, P5288410649401693841.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P3886861143844632966

`A136391(n+1)+A136391(n+1)-A264147(n)`
-/

namespace A339610.P3886861143844632966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136391 (n + 1) + (A136391 (n + 1) - A264147 n)

end

end A339610.P3886861143844632966

namespace A339610

/-- `A136391(n+1)+A136391(n+1)-A264147(n)` -/
def P3886861143844632966.Spec : Prop :=
  ∀ n, P3886861143844632966.a n = A339610 (n + 1)

end A339610

/-! ## A339610.P15665015329522809196

`A094588(n+1)+A094588(n)-A264147(n+1)`
-/

namespace A339610.P15665015329522809196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (n + 1) + (A094588 n - A264147 (n + 1))

end

end A339610.P15665015329522809196

namespace A339610

/-- `A094588(n+1)+A094588(n)-A264147(n+1)` -/
def P15665015329522809196.Spec : Prop :=
  ∀ n, P15665015329522809196.a n = A339610 (n + 1)

end A339610

/-!
# A339612: Number of sets of distinct positive integers whose sum of squares is a square, the largest integer of a set is n.

The programs for A339612, there is no canonical definition to state claims against.
-/

/-! ## A339612.P10700851877043071005

`Δ[A336815(n)]`
-/

namespace A339612.P10700851877043071005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339612.P10700851877043071005

/-! ## A339612.P16642948148287648991

`A336815(n+1)-A336815(n)`
-/

namespace A339612.P16642948148287648991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336815 (n + 1) - A336815 n

end

end A339612.P16642948148287648991

/-! ## A339612.P7019029368180824007

`record[A336815(A236858(n))]-A336815(n)`
-/

namespace A339612.P7019029368180824007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336815 (A236858 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A336815 n

end

end A339612.P7019029368180824007

/-! ## A339612.P8272153911320167763

`record[A336815(A331300(n))]-A336815(n)`
-/

namespace A339612.P8272153911320167763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336815 (A331300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A336815 n

end

end A339612.P8272153911320167763

/-!
# A339613: Number of sets of distinct primes whose sum is a prime, the largest element of a set is prime(n).

The programs for A339613, there is no canonical definition to state claims against.
-/

/-! ## A339613.P644673401408134890

`Δ[A071810(A028310(n))%(2^n)]`
-/

namespace A339613.P644673401408134890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071810 (A028310 n).toNat) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339613.P644673401408134890

/-! ## A339613.P1594216899716781837

`A000007(n)+Δ[A071810(A028310(n))]`
-/

namespace A339613.P1594216899716781837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071810 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A339613.P1594216899716781837

/-! ## A339613.P15148609613286146502

`Δ[A071810(A028310(n))-A014963(4*n+2)]`
-/

namespace A339613.P15148609613286146502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071810 (A028310 n).toNat - A014963 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339613.P15148609613286146502

/-! ## A339613.P2801724736893960158

`Δ[A071810(A028310(n))+A000040(n+1)%2]`
-/

namespace A339613.P2801724736893960158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071810 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339613.P2801724736893960158

/-! ## A339613.P15928942286644417469

`Δ[A071810(A028310(n))]+A008683(6*(n+1)²)`
-/

namespace A339613.P15928942286644417469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071810 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A008683 (6 * (n + 1) ^ 2)

end

end A339613.P15928942286644417469

/-!
# A339614: Inputs n that yield a record-breaking value of A008908(n)/(log_2(n)+1) for the Collatz conjecture.

The programs for A339614, there is no canonical definition to state claims against.
-/

/-! ## A339614.P13767253452457326580

`A033495(xor(A000166(n), A007438(n+1)))`
-/

namespace A339614.P13767253452457326580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033495 (Int.xor (A000166 n) (A007438 (n + 1))).toNat

end

end A339614.P13767253452457326580

/-! ## A339614.P15203232622986516849

`∪[A000265(A248037(n+1)), A276665(2*n+1)]`
-/

namespace A339614.P15203232622986516849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A248037 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276665 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A339614.P15203232622986516849

/-!
# A339617: Number of non-graphical integer partitions of 2n.

The programs for A339617, there is no canonical definition to state claims against.
-/

/-! ## A339617.P7012488697545004584

`A058696(n)-A000569(n^floor(atan(n)))`
-/

namespace A339617.P7012488697545004584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A000569 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A339617.P7012488697545004584

/-! ## A339617.P17614171633332531250

`A058696(n)-A000569(A028310(n))`
-/

namespace A339617.P17614171633332531250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A000569 (A028310 n).toNat

end

end A339617.P17614171633332531250

/-! ## A339617.P2480411285854910948

`A000041(2*n)-A000569(A028310(n))`
-/

namespace A339617.P2480411285854910948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A000569 (A028310 n).toNat

end

end A339617.P2480411285854910948

/-! ## A339617.P12658430583389137781

`A058696(n)-A000569(A000007(n)+n)`
-/

namespace A339617.P12658430583389137781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A000569 (A000007 n + (n : ℤ)).toNat

end

end A339617.P12658430583389137781

/-! ## A339617.P9520762661693784380

`A000041(2*n)-A000569(A000007(n)+n)`
-/

namespace A339617.P9520762661693784380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A000569 (A000007 n + (n : ℤ)).toNat

end

end A339617.P9520762661693784380

/-!
# A339618: Heinz numbers of non-graphical integer partitions of even numbers.

The programs for A339618, there is no canonical definition to state claims against.
-/

/-! ## A339618.P5245478761311384065

`∪[A339620(n+1), A339842(n+1)]`
-/

namespace A339618.P5245478761311384065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A339618.P5245478761311384065

/-! ## A339618.P14426551270615203414

`∩[A116883(n+1), A344416(n+1)]`
-/

namespace A339618.P14426551270615203414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339618.P14426551270615203414

/-! ## A339618.P5588926130359508416

`∩[A182834(n+1), A344416(n+1)]`
-/

namespace A339618.P5588926130359508416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339618.P5588926130359508416

/-! ## A339618.P6447781941233073178

`∩[A344416(n+1), A352796(n+1)]`
-/

namespace A339618.P6447781941233073178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339618.P6447781941233073178

/-!
# A339619: Number of integer partitions of n with no 1's and a part divisible by all the other parts.

The programs for A339619, there is no canonical definition to state claims against.
-/

/-! ## A339619.P5401509026785440891

`A133501(A250262(n))+A072721(n)`
-/

namespace A339619.P5401509026785440891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133501 (A250262 n).toNat + A072721 n

end

end A339619.P5401509026785440891

/-! ## A339619.P15724698725871288883

`A218970(n)-A104607(A059889(2*n+1))`
-/

namespace A339619.P15724698725871288883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 n - A104607 (A059889 (2 * n + 1)).toNat

end

end A339619.P15724698725871288883

/-! ## A339619.P9244954323349691300

`A218970(n)-A316864(A316763(3*n+2))`
-/

namespace A339619.P9244954323349691300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 n - A316864 (A316763 (3 * n + 2)).toNat

end

end A339619.P9244954323349691300

/-! ## A339619.P963735146910209114

`A212663(A290074(n))+A035363(n)`
-/

namespace A339619.P963735146910209114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212663 (A290074 n).toNat + A035363 n

end

end A339619.P963735146910209114

/-!
# A339620: Heinz numbers of non-multigraphical partitions of even numbers.

The programs for A339620, there is no canonical definition to state claims against.
-/

/-! ## A339620.P6559124483900622745

`filter[A300061(n+1), A341642(#)]`
-/

namespace A339620.P6559124483900622745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A339620.P6559124483900622745

/-! ## A339620.P13276338155436184110

`filter[A344413(n+1), A341642(#)]`
-/

namespace A339620.P13276338155436184110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A339620.P13276338155436184110

/-! ## A339620.P13807396348343178844

`∩[A064052(n+1), A300061(n+1)]`
-/

namespace A339620.P13807396348343178844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339620.P13807396348343178844

/-! ## A339620.P1613213294404749964

`∩[A064052(n+1), A344413(n+1)]`
-/

namespace A339620.P1613213294404749964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339620.P1613213294404749964

/-! ## A339620.P4205249922624730079

`filter[A339618(n+1), A341642(#)]`
-/

namespace A339620.P4205249922624730079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A339620.P4205249922624730079

/-!
# A339621: Sum of Fibonacci divisors of n^2 + 1.

The programs for A339621, the canonical program `A339621.P4276796428824883945` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339621 has offset 0).

The definition of A339621 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005092, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339621.P4276796428824883945

`A005092(A002522(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A339621

/-- `A005092(A002522(n))` -/
def P4276796428824883945.Spec : Prop :=
  ∀ n, P4276796428824883945.a n = A339621 n

theorem P4276796428824883945.correct : P4276796428824883945.Spec := by
  intro n
  simp only [A339621]

end A339621

/-! ## A339621.P2004751884798592096

`A005092(n²+1)`
-/

namespace A339621.P2004751884798592096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005092 (n ^ 2 + 1)

end

end A339621.P2004751884798592096

namespace A339621

/-- `A005092(n²+1)` -/
def P2004751884798592096.Spec : Prop :=
  ∀ n, P2004751884798592096.a n = A339621 n

end A339621

/-! ## A339621.P6336898505837390563

`or(char[1], A005092(A000290(n)+1))`
-/

namespace A339621.P6336898505837390563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A005092 (A000290 n + 1).toNat)

end

end A339621.P6336898505837390563

namespace A339621

/-- `or(char[1], A005092(A000290(n)+1))` -/
def P6336898505837390563.Spec : Prop :=
  ∀ n, P6336898505837390563.a n = A339621 n

end A339621

/-! ## A339621.P8288695603994584802

`A005092(A000290(n)+1)/A007318(C(2, n))`
-/

namespace A339621.P8288695603994584802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005092 (A000290 n + 1).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A339621.P8288695603994584802

namespace A339621

/-- `A005092(A000290(n)+1)/A007318(C(2, n))` -/
def P8288695603994584802.Spec : Prop :=
  ∀ n, P8288695603994584802.a n = (A339621 n : ℚ)

end A339621

/-! ## A339621.P15330306125365255478

`A005092(A000290(n)+1)%(A000041(n)+11)`
-/

namespace A339621.P15330306125365255478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005092 (A000290 n + 1).toNat) (A000041 n + 11)

end

end A339621.P15330306125365255478

namespace A339621

/-- `A005092(A000290(n)+1)%(A000041(n)+11)` -/
def P15330306125365255478.Spec : Prop :=
  ∀ n, P15330306125365255478.a n = A339621 n

end A339621

/-! ## A339621.P1284607684446216676

`A005092(A000290(n)+1)+A008683(4*n+4)`
-/

namespace A339621.P1284607684446216676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005092 (A000290 n + 1).toNat + A008683 (4 * n + 4)

end

end A339621.P1284607684446216676

namespace A339621

/-- `A005092(A000290(n)+1)+A008683(4*n+4)` -/
def P1284607684446216676.Spec : Prop :=
  ∀ n, P1284607684446216676.a n = A339621 n

end A339621

/-! ## A339621.P13176551115994078589

`∑{d}[n²+1, #*A010056(#)]`
-/

namespace A339621.P13176551115994078589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010056 d

end

end A339621.P13176551115994078589

namespace A339621

/-- `∑{d}[n²+1, #*A010056(#)]` -/
def P13176551115994078589.Spec : Prop :=
  ∀ n, P13176551115994078589.a n = A339621 n

end A339621

/-!
# A339622: Number of Hamiltonian circuits within parallelograms of size 7 X n on the triangular lattice.

The programs for A339622, there is no canonical definition to state claims against.
-/

/-! ## A339622.P2421815969916633969

`A339849(A046691(n+4))`
-/

namespace A339622.P2421815969916633969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (A046691 (n + 4)).toNat

end

end A339622.P2421815969916633969

/-! ## A339622.P10870498694349622414

`A339849(A168104(n)+7)`
-/

namespace A339622.P10870498694349622414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (A168104 n + 7).toNat

end

end A339622.P10870498694349622414

/-! ## A339622.P12394987687998847312

`A339849(eq[12, A048004(n)])`
-/

namespace A339622.P12394987687998847312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339622.P12394987687998847312

/-!
# A339623: Consider a square drawn on the perimeter of a square lattice with side length n. a(n) is the number of regions inside the square after drawing unit circles centered at each interior lattice point of the square.

The programs for A339623, the canonical program `A339623.P17134026102361425332` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339623 has offset 1).

The definition of A339623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339623.P17134026102361425332

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=21, a(3)=52, a(4)=97`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A339623

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P17134026102361425332.Spec : Prop :=
  ∀ n, P17134026102361425332.a n = A339623 (n + 1)

theorem P17134026102361425332.correct : P17134026102361425332.Spec := by
  intro n
  simp only [A339623, Nat.add_sub_cancel]

end A339623

/-! ## A339623.P7073108020369876491

`3*n²+record[(n+1)^gcd(2, n)]`
-/

namespace A339623.P7073108020369876491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339623.P7073108020369876491

namespace A339623

/-- `3*n²+record[(n+1)^gcd(2, n)]` -/
def P7073108020369876491.Spec : Prop :=
  ∀ n, (P7073108020369876491.a n : ℤ) = A339623 (n + 1)

end A339623

/-! ## A339623.P16143037503419515086

`n*(A086570(n)-n)+1`
-/

namespace A339623.P16143037503419515086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A086570 n - (n : ℤ)) + 1

end

end A339623.P16143037503419515086

namespace A339623

/-- `n*(A086570(n)-n)+1` -/
def P16143037503419515086.Spec : Prop :=
  ∀ n, P16143037503419515086.a n = A339623 (n + 1)

end A339623

/-! ## A339623.P4892770542535403237

`A223134(n)+A051868(n)`
-/

namespace A339623.P4892770542535403237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n + A051868 n

end

end A339623.P4892770542535403237

namespace A339623

/-- `A223134(n)+A051868(n)` -/
def P4892770542535403237.Spec : Prop :=
  ∀ n, P4892770542535403237.a n = A339623 (n + 1)

end A339623

/-! ## A339623.P10917067839385836124

`A254667(n)+A239449(n)`
-/

namespace A339623.P10917067839385836124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n + A239449 n

end

end A339623.P10917067839385836124

namespace A339623

/-- `A254667(n)+A239449(n)` -/
def P10917067839385836124.Spec : Prop :=
  ∀ n, P10917067839385836124.a n = A339623 (n + 1)

end A339623

/-! ## A339623.P715306334891130061

`A056107(n)+record[A065530(n)]`
-/

namespace A339623.P715306334891130061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339623.P715306334891130061

namespace A339623

/-- `A056107(n)+record[A065530(n)]` -/
def P715306334891130061.Spec : Prop :=
  ∀ n, P715306334891130061.a n = A339623 (n + 1)

end A339623

/-! ## A339623.P6355419361486442131

`A005475(n)+record[A027626(n)]`
-/

namespace A339623.P6355419361486442131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339623.P6355419361486442131

namespace A339623

/-- `A005475(n)+record[A027626(n)]` -/
def P6355419361486442131.Spec : Prop :=
  ∀ n, P6355419361486442131.a n = A339623 (n + 1)

end A339623

/-! ## A339623.P3504431641830792557

`A005475(n)+record[A234041(n)]`
-/

namespace A339623.P3504431641830792557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339623.P3504431641830792557

namespace A339623

/-- `A005475(n)+record[A234041(n)]` -/
def P3504431641830792557.Spec : Prop :=
  ∀ n, P3504431641830792557.a n = A339623 (n + 1)

end A339623

/-! ## A339623.P12721883727587894382

`A080856(n)-A105570(n²)`
-/

namespace A339623.P12721883727587894382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080856 n - A105570 (n ^ 2)

end

end A339623.P12721883727587894382

namespace A339623

/-- `A080856(n)-A105570(n²)` -/
def P12721883727587894382.Spec : Prop :=
  ∀ n, P12721883727587894382.a n = A339623 (n + 1)

end A339623

/-! ## A339623.P6339636137375157704

`A048760(A002061(n))+A033579(n)`
-/

namespace A339623.P6339636137375157704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A002061 n).toNat + A033579 n

end

end A339623.P6339636137375157704

namespace A339623

/-- `A048760(A002061(n))+A033579(n)` -/
def P6339636137375157704.Spec : Prop :=
  ∀ n, P6339636137375157704.a n = A339623 (n + 1)

end A339623

/-!
# A339624: Perfect powers p^k, k >= 2 of palindromic primes p when p^k is not a palindrome.

The programs for A339624, there is no canonical definition to state claims against.
-/

/-! ## A339624.P6293554110037158557

`record[A008475(A348320(n+1))]`
-/

namespace A339624.P6293554110037158557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A348320 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339624.P6293554110037158557

/-! ## A339624.P12433483247163075808

`filter[A348320(n+1), A069513(#)]`
-/

namespace A339624.P12433483247163075808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A339624.P12433483247163075808

/-! ## A339624.P9018896058155901754

`filter[A348320(n+1), A268340(#)]`
-/

namespace A339624.P9018896058155901754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A268340 (f1 j).toNat = 1) n)

end

end A339624.P9018896058155901754

/-! ## A339624.P2677103845610306210

`filter[A348320(n+1), A344885(#)]`
-/

namespace A339624.P2677103845610306210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A339624.P2677103845610306210

/-! ## A339624.P8186837435883930251

`filter[A348320(n+1), A354923(#)]`
-/

namespace A339624.P8186837435883930251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A339624.P8186837435883930251

/-!
# A339625: a(n) is the number of ways to write 6*n = p + q with p a lesser twin prime (A001359) and q a greater twin prime (A006512).

The programs for A339625, there is no canonical definition to state claims against.
-/

/-! ## A339625.P9348768731645125501

`A129363(A103517(n)+1+n)`
-/

namespace A339625.P9348768731645125501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (A103517 n + 1 + (n : ℤ)).toNat

end

end A339625.P9348768731645125501

/-! ## A339625.P8974531255276047072

`A129363(record[A000265(n+4)]+n)`
-/

namespace A339625.P8974531255276047072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat

end

end A339625.P8974531255276047072

/-! ## A339625.P2650518098192876305

`A129363(3*(n+1))%A008458(n)`
-/

namespace A339625.P2650518098192876305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129363 (3 * (n + 1))) (A008458 n)

end

end A339625.P2650518098192876305

/-! ## A339625.P17643406758778465681

`A129363(A057427(n)+A016789(n))`
-/

namespace A339625.P17643406758778465681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (A057427 n + A016789 n).toNat

end

end A339625.P17643406758778465681

/-! ## A339625.P17644952137339167389

`A129363(A016777(n)+2%A016777(n))`
-/

namespace A339625.P17644952137339167389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (A016777 n + Int.tmod 2 (A016777 n)).toNat

end

end A339625.P17644952137339167389

/-! ## A339625.P17478957725762636452

`A235644(n+1)+A187759(n+1)`
-/

namespace A339625.P17478957725762636452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235644 (n + 1) + A187759 (n + 1)

end

end A339625.P17478957725762636452

/-!
# A339626: a(n) = A322437(A002110(n)).

The programs for A339626, there is no canonical definition to state claims against.
-/

/-! ## A339626.P5579325987140414435

`A322437(A002110(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339626.P5579325987140414435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322437 (A002110 n).toNat

end

end A339626.P5579325987140414435

/-! ## A339626.P10727225045587955589

`floor(A322441(n)/2)`
-/

namespace A339626.P10727225045587955589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322441 n : ℚ) / 2⌋

end

end A339626.P10727225045587955589

/-! ## A339626.P9123135821808244055

`A322441(round(acot(n)+n))/2`
-/

namespace A339626.P9123135821808244055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322441 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ) / 2

end

end A339626.P9123135821808244055

/-! ## A339626.P5452772844657380962

`A322441(abs(1-n)+1)/2`
-/

namespace A339626.P5452772844657380962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322441 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2

end

end A339626.P5452772844657380962

/-! ## A339626.P1040167322688868670

`ceil(A322441(A028310(n))/2)`
-/

namespace A339626.P1040167322688868670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A322441 (A028310 n).toNat : ℚ) / 2⌉

end

end A339626.P1040167322688868670

/-!
# A339627: Number of partitions of n into distinct parts such that the sum of reciprocals of parts is an integer.

The programs for A339627, there is no canonical definition to state claims against.
-/

/-! ## A339627.P11614588209951195361

`dr(A007623(A339628(n)))`
-/

namespace A339627.P11614588209951195361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007623 (A339628 n).toNat)

end

end A339627.P11614588209951195361

/-! ## A339627.P7440216394098607683

`∑{digits}[A007623(A339628(n))+A000007(n+1), #]`
-/

namespace A339627.P7440216394098607683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A339628 n).toNat + A000007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A339627.P7440216394098607683

/-! ## A339627.P10173282801305431859

`A275729(A339628(n))%A059611(A267451(n))`
-/

namespace A339627.P10173282801305431859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275729 (A339628 n).toNat) (A059611 (A267451 n).toNat)

end

end A339627.P10173282801305431859

/-! ## A339627.P5579781126833534761

`A057427(A018783(n+2))*A275729(A339628(n))`
-/

namespace A339627.P5579781126833534761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A018783 (n + 2)).toNat * A275729 (A339628 n).toNat

end

end A339627.P5579781126833534761

/-! ## A339627.P14533976504846024715

`A275729(A339628(n))^A014963(A155212(n)+13)`
-/

namespace A339627.P14533976504846024715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275729 (A339628 n).toNat : ℚ) ^ (A014963 (A155212 n + 13).toNat : ℤ)

end

end A339627.P14533976504846024715

/-! ## A339627.P13808057655172109795

`A275729(A339628(n))^A014963(A000217(n+4)+5)`
-/

namespace A339627.P13808057655172109795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275729 (A339628 n).toNat : ℚ) ^ (A014963 (A000217 (n + 4) + 5).toNat : ℤ)

end

end A339627.P13808057655172109795

/-! ## A339627.P4427450065983791392

`A275729(A339628(n))+A000007(A324325(n+1))`
-/

namespace A339627.P4427450065983791392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275729 (A339628 n).toNat + A000007 (A324325 (n + 1)).toNat

end

end A339627.P4427450065983791392

/-! ## A339627.P6854627625585111999

`A034968(A339628(n))`
-/

namespace A339627.P6854627625585111999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A339628 n).toNat

end

end A339627.P6854627625585111999

/-! ## A339627.P1118393796162976324

`A001222(A002496((n+1)%2+n))+A275729(A339628(n))-1`
-/

namespace A339627.P1118393796162976324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002496 ((n + 1) % 2 + n)).toNat + (A275729 (A339628 n).toNat - 1)

end

end A339627.P1118393796162976324

/-!
# A339629: Number of compositions (ordered partitions) of n into distinct parts such that the sum of reciprocals of parts is 1.

The programs for A339629, there is no canonical definition to state claims against.
-/

/-! ## A339629.P15232390141989392255

`(A133300(n+1)*A339628(n))^3^a(n-1)` with `a(0)=0`
-/

namespace A339629.P15232390141989392255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (A133300 (n + 1) * A339628 n : ℝ) ^ ((3 : ℝ) ^ (a (n - 1)))

end

end A339629.P15232390141989392255

/-! ## A339629.P10784937596097783376

`A097449(A133300(n+1)*A339628(n))`
-/

namespace A339629.P10784937596097783376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A133300 (n + 1) * A339628 n).toNat

end

end A339629.P10784937596097783376

/-! ## A339629.P4645149851174486573

`A000035(A297457(n+1))*A339628(n)`
-/

namespace A339629.P4645149851174486573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A297457 (n + 1)).toNat * A339628 n

end

end A339629.P4645149851174486573

/-! ## A339629.P4616621718591027923

`A097449(lcm(A133300(n+1), A339628(n)))`
-/

namespace A339629.P4616621718591027923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (Int.lcm (A133300 (n + 1)) (A339628 n))

end

end A339629.P4616621718591027923

/-!
# A339632: Number of partitions of 2n into two positive integer parts (s,t) such that s and t have the same number of decimal digits and s*t is semiprime.

The programs for A339632, there is no canonical definition to state claims against.
-/

/-! ## A339632.P569095412676334733

`A339772(n+1)+char[4]`
-/

namespace A339632.P569095412676334733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339772 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A339632.P569095412676334733

/-! ## A339632.P16975224445468221016

`or(A185014(n), A339772(n+1))`
-/

namespace A339632.P16975224445468221016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185014 n) (A339772 (n + 1))

end

end A339632.P16975224445468221016

/-! ## A339632.P14583018344970378112

`floor(ratio[A008578(n+1)]*A339772(n+1))`
-/

namespace A339632.P14583018344970378112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A339772 (n + 1) : ℚ)⌋

end

end A339632.P14583018344970378112

/-! ## A339632.P3544096113039448475

`round(ratio[A008846(n+1)]*A339772(n+1))`
-/

namespace A339632.P3544096113039448475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A339772 (n + 1) : ℚ))

end

end A339632.P3544096113039448475

/-! ## A339632.P18358365387846966832

`or(A000007(A000586(n)), A339772(n+1))`
-/

namespace A339632.P18358365387846966832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A000586 n).toNat) (A339772 (n + 1))

end

end A339632.P18358365387846966832

/-! ## A339632.P4976685467681264686

`or(A063524(A002264(n)), A339772(n+1))`
-/

namespace A339632.P4976685467681264686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 (A002264 n).toNat) (A339772 (n + 1))

end

end A339632.P4976685467681264686

/-! ## A339632.P43934509195249699

`or(A010054(A155212(n)), A339772(n+1))`
-/

namespace A339632.P43934509195249699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A155212 n).toNat) (A339772 (n + 1))

end

end A339632.P43934509195249699

/-! ## A339632.P16146587688426569483

`A353464(A152947(n+1))+A339772(n+1)`
-/

namespace A339632.P16146587688426569483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A152947 (n + 1)).toNat + A339772 (n + 1)

end

end A339632.P16146587688426569483

/-!
# A339633: Number of final Tic-Tac-Toe positions on a (2*n) X 3 board that resulted in a tie.

The programs for A339633, there is no canonical definition to state claims against.
-/

/-! ## A339633.P11584831049278735629

`A339631(2*n)`
-/

namespace A339633.P11584831049278735629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339631 (2 * n)

end

end A339633.P11584831049278735629

/-! ## A339633.P17941884190827168947

`record[A339631(n)^(-1)^n]`
-/

namespace A339633.P17941884190827168947
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339631 n : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339633.P17941884190827168947

/-! ## A339633.P995043814799991004

`record[A339631(A014681(n))]`
-/

namespace A339633.P995043814799991004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339631 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339633.P995043814799991004

/-! ## A339633.P4405085998414635785

`record[A339631(A131508(n))]`
-/

namespace A339633.P4405085998414635785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339631 (A131508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339633.P4405085998414635785

/-! ## A339633.P9170894344529343750

`lcm((-1)^n, A339631(A005843(n)))`
-/

namespace A339633.P9170894344529343750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A339631 (A005843 n).toNat)

end

end A339633.P9170894344529343750

/-!
# A339634: Number of final Tic-Tac-Toe positions on a (2*n+1) X 3 board that result in a tie.

The programs for A339634, there is no canonical definition to state claims against.
-/

/-! ## A339634.P5902999489840733244

`A339631(Δ[n²])`
-/

namespace A339634.P5902999489840733244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339631 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A339634.P5902999489840733244

/-! ## A339634.P5538815557585243339

`record[A339631(n^(n%2))]`
-/

namespace A339634.P5538815557585243339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339631 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339634.P5538815557585243339

/-! ## A339634.P16957722184714127925

`root(A339631(2*n+1), 2)²`
-/

namespace A339634.P16957722184714127925
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A339631 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A339634.P16957722184714127925

/-! ## A339634.P5761823021848974684

`record[A339631(lcm(4, n+1)/4)]`
-/

namespace A339634.P5761823021848974684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339631 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339634.P5761823021848974684

/-! ## A339634.P2464073130456914575

`record[A339631((n+1)/2^val(n+1, 2))]`
-/

namespace A339634.P2464073130456914575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339631 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339634.P2464073130456914575

/-!
# A339635: Triangle read by rows, T(n, k) is the least number of 1's in an n X n binary matrix so that every k X k minor contains at least one 1.

The programs for A339635, there is no canonical definition to state claims against.
-/

/-! ## A339635.P14511146173352940082

`A085691(n+1)-A184964(A026300(n+1))`
-/

namespace A339635.P14511146173352940082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085691 (n + 1) - A184964 (A026300 (n + 1)).toNat

end

end A339635.P14511146173352940082

/-! ## A339635.P12342620545519958741

`A085691(n+1)-A080225(A209196(n))`
-/

namespace A339635.P12342620545519958741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085691 (n + 1) - A080225 (A209196 n).toNat

end

end A339635.P12342620545519958741

/-! ## A339635.P4904648585224305624

`A085383(n+1)+A072966(A057728(n+1))`
-/

namespace A339635.P4904648585224305624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085383 (n + 1) + A072966 (A057728 (n + 1)).toNat

end

end A339635.P4904648585224305624

/-! ## A339635.P6022305801262261652

`A085691(n+1)-A353331(A002445(n+2))`
-/

namespace A339635.P6022305801262261652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085691 (n + 1) - A353331 (A002445 (n + 2)).toNat

end

end A339635.P6022305801262261652

/-! ## A339635.P5392409291621353787

`A157685(3*A085691(n+1))`
-/

namespace A339635.P5392409291621353787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (3 * A085691 (n + 1)).toNat

end

end A339635.P5392409291621353787

/-!
# A339637: Numbers congruent to 1 (mod 3) that are the quotient of two Cantor numbers (A005823).

The programs for A339637, there is no canonical definition to state claims against.
-/

/-! ## A339637.P11519804822954568824

`∩[3*n+1, A263488(n+1)]`
-/

namespace A339637.P11519804822954568824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339637.P11519804822954568824

/-! ## A339637.P14636648352688984712

`record[A051176(A263488(n+1))]`
-/

namespace A339637.P14636648352688984712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A263488 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339637.P14636648352688984712

/-! ## A339637.P9257267646937931093

`filter[A263488(n+1), A011655(#)]`
-/

namespace A339637.P9257267646937931093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A339637.P9257267646937931093

/-! ## A339637.P912993110358958822

`filter[A263488(n+1), A156595(#)]`
-/

namespace A339637.P912993110358958822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156595 (f1 j).toNat = 1) n)

end

end A339637.P912993110358958822

/-! ## A339637.P5091489475779109500

`filter[A263488(n+1), A267208(#)]`
-/

namespace A339637.P5091489475779109500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A339637.P5091489475779109500

/-! ## A339637.P3416758257599685364

`∩[A263488(n+1), A016777(n)]`
-/

namespace A339637.P3416758257599685364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339637.P3416758257599685364

/-! ## A339637.P6525863568606253694

`∩[A263488(n+1), A001651(n+1)]`
-/

namespace A339637.P6525863568606253694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339637.P6525863568606253694

/-! ## A339637.P17418183916620381577

`∩[A263488(n+1), A033627(n+1)]`
-/

namespace A339637.P17418183916620381577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339637.P17418183916620381577

/-! ## A339637.P5412687813265005095

`∩[A263488(n+1), A047236(n+1)]`
-/

namespace A339637.P5412687813265005095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339637.P5412687813265005095

/-! ## A339637.P7398656604244552878

`∩[A263488(n+1), A047259(n+1)]`
-/

namespace A339637.P7398656604244552878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339637.P7398656604244552878

/-!
# A339638: Number of nonempty sets of distinct positive integers that have a least common multiple <= n.

The programs for A339638, the canonical program `A339638.P3283840874986225576` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339638 has offset 1).

The definition of A339638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339638.P3283840874986225576

`∑[A076078(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A339638

/-- `∑[A076078(n+1)]` -/
def P3283840874986225576.Spec : Prop :=
  ∀ n, P3283840874986225576.a n = A339638 (n + 1)

theorem P3283840874986225576.correct : P3283840874986225576.Spec := by
  intro n
  simp only [A339638, Nat.add_sub_cancel]

end A339638

/-! ## A339638.P6992208127303355132

`∑[2*A069626(n+1)]-1`
-/

namespace A339638.P6992208127303355132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A339638.P6992208127303355132

namespace A339638

/-- `∑[2*A069626(n+1)]-1` -/
def P6992208127303355132.Spec : Prop :=
  ∀ n, P6992208127303355132.a n = A339638 (n + 1)

end A339638

/-! ## A339638.P11338127581235722693

`∑[A097211(A101296(n+1))]`
-/

namespace A339638.P11338127581235722693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097211 (A101296 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339638.P11338127581235722693

namespace A339638

/-- `∑[A097211(A101296(n+1))]` -/
def P11338127581235722693.Spec : Prop :=
  ∀ n, P11338127581235722693.a n = A339638 (n + 1)

end A339638

/-! ## A339638.P2236734229136999125

`A076078(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A339638.P2236734229136999125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076078 (n + 1) + a (A023443 n).toNat

end

end A339638.P2236734229136999125

namespace A339638

/-- `A076078(n+1)+a(A023443(n))` -/
def P2236734229136999125.Spec : Prop :=
  ∀ n, P2236734229136999125.a n = A339638 (n + 1)

end A339638

/-! ## A339638.P11919884087561683948

`∑[A040001(2*n)*A069626(n+1)]`
-/

namespace A339638.P11919884087561683948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A069626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339638.P11919884087561683948

namespace A339638

/-- `∑[A040001(2*n)*A069626(n+1)]` -/
def P11919884087561683948.Spec : Prop :=
  ∀ n, P11919884087561683948.a n = A339638 (n + 1)

end A339638

/-! ## A339638.P11149052458508590014

`∑[∑{d}[n+1, A008683(#)*A100587((n+1)/#)]]`
-/

namespace A339638.P11149052458508590014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A100587 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339638.P11149052458508590014

namespace A339638

/-- `∑[∑{d}[n+1, A008683(#)*A100587((n+1)/#)]]` -/
def P11149052458508590014.Spec : Prop :=
  ∀ n, P11149052458508590014.a n = A339638 (n + 1)

end A339638

/-! ## A339638.P2813412438796687538

`∑[A037445(A006530(n+1))*A069626(n+1)]`
-/

namespace A339638.P2813412438796687538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A006530 (n + 1)).toNat * A069626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339638.P2813412438796687538

namespace A339638

/-- `∑[A037445(A006530(n+1))*A069626(n+1)]` -/
def P2813412438796687538.Spec : Prop :=
  ∀ n, P2813412438796687538.a n = A339638 (n + 1)

end A339638

/-! ## A339638.P4544788232610470396

`∑[∑{d}[n+1, A305564(#)]]`
-/

namespace A339638.P4544788232610470396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A305564 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339638.P4544788232610470396

namespace A339638

/-- `∑[∑{d}[n+1, A305564(#)]]` -/
def P4544788232610470396.Spec : Prop :=
  ∀ n, P4544788232610470396.a n = A339638 (n + 1)

end A339638

/-!
# A339639: a(n) is the sum of the Wieferich and Wall-Sun-Sun residues of prime(n).

The programs for A339639, there is no canonical definition to state claims against.
-/

/-! ## A339639.P10793291109840100055

`A196202(n+1)+A113650(n+1)-1`
-/

namespace A339639.P10793291109840100055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196202 (n + 1) + A113650 (n + 1) - 1

end

end A339639.P10793291109840100055

/-! ## A339639.P2444675950993070714

`A113650(n+1)+A077815(record[A020639(n+2)])-1`
-/

namespace A339639.P2444675950993070714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113650 (n + 1) + A077815 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A339639.P2444675950993070714

/-! ## A339639.P18094819895315711129

`A113650(n+1)+A220105(record[A006530(n+2)])-1`
-/

namespace A339639.P18094819895315711129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113650 (n + 1) + (A220105 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1)

end

end A339639.P18094819895315711129

/-! ## A339639.P11441882825530879216

`A220105(record[A020639(n+2)])+A113650(n+1)-1`
-/

namespace A339639.P11441882825530879216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A113650 (n + 1) - 1

end

end A339639.P11441882825530879216

/-! ## A339639.P15163727101930546656

`A113650(n+1)+A220105(record[A220096(n+2)+1])-1`
-/

namespace A339639.P15163727101930546656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220096 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113650 (n + 1) + (A220105 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1)

end

end A339639.P15163727101930546656

/-!
# A339640: a(n) = (A062772(n) + A054270(n)) / 2 - A001248(n).

The programs for A339640, there is no canonical definition to state claims against.
-/

/-! ## A339640.P13360000113742845411

`(A062772(n+1)+A054270(n+1))/2-A001248(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339640.P13360000113742845411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062772 (n + 1) + A054270 (n + 1) : ℚ) / 2 - (A001248 (n + 1) : ℚ)

end

end A339640.P13360000113742845411

/-! ## A339640.P7289970389407458427

`(A091666(n+1)-A054271(n+1))/2`
-/

namespace A339640.P7289970389407458427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091666 (n + 1) - A054271 (n + 1) : ℚ) / 2

end

end A339640.P7289970389407458427

/-! ## A339640.P15516763398111802253

`-A056929(p?[xor(1, n)])`
-/

namespace A339640.P15516763398111802253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A056929 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A339640.P15516763398111802253

/-! ## A339640.P14453727432461838275

`-A056929(Δ[A007504(n)])`
-/

namespace A339640.P14453727432461838275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A056929 (f1 (n + 1) - f1 n).toNat

end

end A339640.P14453727432461838275

/-! ## A339640.P12430376086352683279

`-A056929(A000040(n+1))`
-/

namespace A339640.P12430376086352683279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A056929 (A000040 (n + 1)).toNat

end

end A339640.P12430376086352683279

/-! ## A339640.P10892604473651378161

`-A056929(sqrt(A001248(n+1)))`
-/

namespace A339640.P10892604473651378161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A056929 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A339640.P10892604473651378161

/-! ## A339640.P9828568555129339033

`-A056929(record[A014963(n+2)])`
-/

namespace A339640.P9828568555129339033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A056929 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A339640.P9828568555129339033

/-! ## A339640.P12113572635190016404

`-A056929(record[A020639(n+2)])`
-/

namespace A339640.P12113572635190016404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A056929 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A339640.P12113572635190016404

/-! ## A339640.P11881448351689824865

`-A056929(A006530(3*p?[round(8*n/7)]))`
-/

namespace A339640.P11881448351689824865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A056929 (A006530 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A339640.P11881448351689824865

/-! ## A339640.P12262222663159163400

`A056928(A000040(n+1))-A001248(n+1)`
-/

namespace A339640.P12262222663159163400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (A000040 (n + 1)).toNat - A001248 (n + 1)

end

end A339640.P12262222663159163400

/-!
# A339642: Number of rooted trees with n nodes colored using exactly 2 colors.

The programs for A339642, there is no canonical definition to state claims against.
-/

/-! ## A339642.P16360823100908233688

`A038055(n+1)-(A000081(n+1)+A000081(n+1))`
-/

namespace A339642.P16360823100908233688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038055 (n + 1) - (A000081 (n + 1) + A000081 (n + 1))

end

end A339642.P16360823100908233688

/-! ## A339642.P15831184723394065628

`A141610(A133263(n))-C(2, n+2)`
-/

namespace A339642.P15831184723394065628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141610 (A133263 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A339642.P15831184723394065628

/-! ## A339642.P18149973528007707204

`A141610(A133263(n))-A000007(n)`
-/

namespace A339642.P18149973528007707204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141610 (A133263 n).toNat - A000007 n

end

end A339642.P18149973528007707204

/-! ## A339642.P16116702114086409099

`A141610(A133263(n))%A167111(n)`
-/

namespace A339642.P16116702114086409099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141610 (A133263 n).toNat) (A167111 n)

end

end A339642.P16116702114086409099

/-! ## A339642.P17778265459503352646

`A000040(n+1)%2*A141610(A133263(n))`
-/

namespace A339642.P17778265459503352646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A141610 (A133263 n).toNat

end

end A339642.P17778265459503352646

/-! ## A339642.P13015445192896010006

`A141610(A133263(n))+A008683(2*(n+1)²)`
-/

namespace A339642.P13015445192896010006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141610 (A133263 n).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A339642.P13015445192896010006

/-!
# A339643: Number of rooted trees with n nodes colored using exactly 3 colors.

The programs for A339643, there is no canonical definition to state claims against.
-/

/-! ## A339643.P16786593395455973345

`(n²+n)/2*A185711(7^n)`
-/

namespace A339643.P16786593395455973345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℚ) / 2 * (A185711 (7 ^ n) : ℚ)

end

end A339643.P16786593395455973345

/-!
# A339644: Number of rooted trees on n nodes with labels covering an initial interval of positive integers.

The programs for A339644, there is no canonical definition to state claims against.
-/

/-! ## A339644.P10706878095995813527

`A233423(A179903(n))`
-/

namespace A339644.P10706878095995813527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233423 (A179903 n).toNat

end

end A339644.P10706878095995813527

/-!
# A339646: Number of inequivalent leaf colorings of series-reduced planted trees with n leaves using at most 2 colors.

The programs for A339646, there is no canonical definition to state claims against.
-/

/-! ## A339646.P5569427249386075539

`A339647(n+1)+A000669(n+1)`
-/

namespace A339646.P5569427249386075539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339647 (n + 1) + A000669 (n + 1)

end

end A339646.P5569427249386075539

/-! ## A339646.P2184267236922214468

`A339647(n+1)+A319254(∑[n+1])`
-/

namespace A339646.P2184267236922214468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339647 (n + 1) + A319254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339646.P2184267236922214468

/-! ## A339646.P15230329227986764050

`ceil(A339647(n+1)+A000084(n+1)/2)`
-/

namespace A339646.P15230329227986764050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A339647 (n + 1) : ℚ) + (A000084 (n + 1) : ℚ) / 2⌉

end

end A339646.P15230329227986764050

/-! ## A339646.P13027094304820656293

`A339647(n+1)+A106240(A000124(n))`
-/

namespace A339646.P13027094304820656293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339647 (n + 1) + A106240 (A000124 n).toNat

end

end A339646.P13027094304820656293

/-!
# A339647: Number of inequivalent leaf colorings of series-reduced planted trees with n leaves using exactly 2 colors.

The programs for A339647, there is no canonical definition to state claims against.
-/

/-! ## A339647.P12649044646090658929

`A339646(n+1)-A000669(n+1)`
-/

namespace A339647.P12649044646090658929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339646 (n + 1) - A000669 (n + 1)

end

end A339647.P12649044646090658929

/-! ## A339647.P5740878539824419466

`A339646(n+1)-A106240(∑[n]+1)`
-/

namespace A339647.P5740878539824419466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339646 (n + 1) - A106240 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A339647.P5740878539824419466

/-! ## A339647.P17268748500438444197

`A339646(n+1)-A319254(∑[n+1])`
-/

namespace A339647.P17268748500438444197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339646 (n + 1) - A319254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339647.P17268748500438444197

/-! ## A339647.P16980203607393292696

`A339646(n+1)-ceil(A000084(n+1)/2)`
-/

namespace A339647.P16980203607393292696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339646 (n + 1) - ⌈(A000084 (n + 1) : ℚ) / 2⌉

end

end A339647.P16980203607393292696

/-!
# A339648: Number of series reduced trees with n nodes and integer labeled leaves covering an initial interval of positive integers.

The programs for A339648, there is no canonical definition to state claims against.
-/

/-! ## A339648.P14685872295394827332

`A126257(A352624(n)+A126257(n))`
-/

namespace A339648.P14685872295394827332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A352624 n + A126257 n).toNat

end

end A339648.P14685872295394827332

/-! ## A339648.P9552912437499307966

`A343764(A290030(n)+A000522(n))`
-/

namespace A339648.P9552912437499307966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343764 (A290030 n + A000522 n).toNat

end

end A339648.P9552912437499307966

/-!
# A339650: Triangle read by rows: T(n,k) is the number of trees with n leaves of exactly k colors and all non-leaf nodes having degree 3.

The programs for A339650, there is no canonical definition to state claims against.
-/

/-! ## A339650.P16981195788696724599

`A156080(or(2, A261836(n)))`
-/

namespace A339650.P16981195788696724599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156080 (Int.lor 2 (A261836 n)).toNat

end

end A339650.P16981195788696724599

/-! ## A339650.P3606790328578916896

`A191228(A325167(n+1)+A256117(n))`
-/

namespace A339650.P3606790328578916896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191228 (A325167 (n + 1) + A256117 n).toNat

end

end A339650.P3606790328578916896

/-! ## A339650.P2760464725504516350

`A255270(A144328(n+2)*A270882(n))`
-/

namespace A339650.P2760464725504516350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A144328 (n + 2) * A270882 n).toNat

end

end A339650.P2760464725504516350

/-! ## A339650.P10652162619415509560

`A048723(n)*A347437(A081254(n+1))`
-/

namespace A339650.P10652162619415509560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 n * A347437 (A081254 (n + 1)).toNat

end

end A339650.P10652162619415509560

/-! ## A339650.P11354545022361719269

`gcd(A051517(A164340(n+1)), A244116(n))`
-/

namespace A339650.P11354545022361719269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051517 (A164340 (n + 1)).toNat) (A244116 n)

end

end A339650.P11354545022361719269

/-!
# A339651: Number of trees with n integer labeled leaves spanning an initial interval of positive integers and all non-leaf nodes having degree 3.

The programs for A339651, there is no canonical definition to state claims against.
-/

/-! ## A339651.P10094562027397854264

`A003991(floor(floor(4/9*10^n)/A098354(3*n+4))+1)`
-/

namespace A339651.P10094562027397854264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (⌊(⌊(4 : ℚ) / 9 * (10 ^ n : ℚ)⌋ : ℚ) / (A098354 (3 * n + 4) : ℚ)⌋ + 1).toNat

end

end A339651.P10094562027397854264

/-! ## A339651.P1138472619514663537

`A060384(A161631(n)+A004125(n+5))`
-/

namespace A339651.P1138472619514663537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A161631 n + A004125 (n + 5)).toNat

end

end A339651.P1138472619514663537

/-! ## A339651.P8854478047805526292

`A110655(or(A090368(n+1), A156171(n)))`
-/

namespace A339651.P8854478047805526292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (Int.lor (A090368 (n + 1)) (A156171 n)).toNat

end

end A339651.P8854478047805526292

/-!
# A339652: a(n) is the least number k such that 2*k+1 has exactly n expressions as p+2*q where p and q are primes, or 0 if there is no such k.

The programs for A339652, there is no canonical definition to state claims against.
-/

/-! ## A339652.P3809284938212810556

`ceil(ceil(A316571(A355484(n))/2)/2)`
-/

namespace A339652.P3809284938212810556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A316571 (A355484 n).toNat : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A339652.P3809284938212810556

/-! ## A339652.P3531810069616032583

`A323608(A355484(n))`
-/

namespace A339652.P3531810069616032583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323608 (A355484 n).toNat

end

end A339652.P3531810069616032583

/-!
# A339653: a(n) is 0 if the smallest base-n Wieferich prime is < n, 1 if it is > n and 2 if no base-n Wieferich prime exists.

The programs for A339653, there is no canonical definition to state claims against.
-/

/-! ## A339653.P11171708313259734417

`floor(acot(A255920(n+2)))`
-/

namespace A339653.P11171708313259734417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A255920 (n + 2) : ℝ)⌋

end

end A339653.P11171708313259734417

/-! ## A339653.P7275729474876126916

`char[A255921(n+1)-2]`
-/

namespace A339653.P7275729474876126916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255921 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A339653.P7275729474876126916

/-! ## A339653.P13505894660957799067

`char[lt[n, A039951(n+2)]]`
-/

namespace A339653.P13505894660957799067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039951 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A339653.P13505894660957799067

/-! ## A339653.P8806819232731675079

`char[lt[n, A178814(n+2)]]`
-/

namespace A339653.P8806819232731675079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178814 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A339653.P8806819232731675079

/-! ## A339653.P12314161472524484462

`char[(∑{e}[n+1, #]!/∏{e}[n+1, #!])%2*A275658(n+1)]`
-/

namespace A339653.P12314161472524484462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p) : ℕ) : ℚ))) 2 * A275658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A339653.P12314161472524484462

/-!
# A339654: Number of lattice paths from (0,0) to (n,n) using steps (1,0), (0,1), (1,1), (-1,1) and whose points lie entirely in the integer square of lattice points {(i,j): 0 <= i,j <= n}.

The programs for A339654, there is no canonical definition to state claims against.
-/

/-! ## A339654.P9191788456949960840

`A232968(∑[4*n])`
-/

namespace A339654.P9191788456949960840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232968 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339654.P9191788456949960840

/-! ## A339654.P9662463830878566595

`record[A232968(gcd(n, A061579(n)))]`
-/

namespace A339654.P9662463830878566595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232968 (Int.gcd (n : ℤ) (A061579 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339654.P9662463830878566595

/-! ## A339654.P10668571981264953829

`A232968(A046092(n))^A178334(n)`
-/

namespace A339654.P10668571981264953829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232968 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A339654.P10668571981264953829

/-! ## A339654.P5056930209456555920

`gcd(A000038(n), A232968(A046092(n)))`
-/

namespace A339654.P5056930209456555920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A232968 (A046092 n).toNat)

end

end A339654.P5056930209456555920

/-! ## A339654.P8867401028463505905

`A057077(n)²*A232968(A046092(n))`
-/

namespace A339654.P8867401028463505905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * A232968 (A046092 n).toNat

end

end A339654.P8867401028463505905

/-! ## A339654.P4476809395172167507

`char[A002262(n)]*A232968(A046092(n))`
-/

namespace A339654.P4476809395172167507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A232968 (A046092 n).toNat

end

end A339654.P4476809395172167507

/-! ## A339654.P802345197694172640

`A232968(A046092(n))+A008683(4*(n+1))`
-/

namespace A339654.P802345197694172640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232968 (A046092 n).toNat + A008683 (4 * (n + 1))

end

end A339654.P802345197694172640

/-!
# A339655: Number of non-loop-graphical integer partitions of 2n.

The programs for A339655, there is no canonical definition to state claims against.
-/

/-! ## A339655.P8934817849652390116

`A058696(n)-A339656(n)`
-/

namespace A339655.P8934817849652390116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A339656 n

end

end A339655.P8934817849652390116

/-! ## A339655.P3749187073116382302

`A000041(2*n)-A339656(n)`
-/

namespace A339655.P3749187073116382302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A339656 n

end

end A339655.P3749187073116382302

/-! ## A339655.P18086119286909407426

`A000041(A005843(n))%A339656(n)`
-/

namespace A339655.P18086119286909407426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A005843 n).toNat) (A339656 n)

end

end A339655.P18086119286909407426

/-! ## A339655.P9323624792012324903

`A324929(2*a(n-2)+1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A339655.P9323624792012324903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A324929 (2 * a (n - 2) + 1).toNat

end

end A339655.P9323624792012324903

/-! ## A339655.P452138241804258135

`A052146(A360468(n))`
-/

namespace A339655.P452138241804258135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A360468 n).toNat

end

end A339655.P452138241804258135

/-!
# A339656: Number of loop-graphical integer partitions of 2n.

The programs for A339656, there is no canonical definition to state claims against.
-/

/-! ## A339656.P11150574767310627594

`A058696(n)-A339655(n)`
-/

namespace A339656.P11150574767310627594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A339655 n

end

end A339656.P11150574767310627594

/-! ## A339656.P8871534903483581710

`A000041(2*n)-A339655(n)`
-/

namespace A339656.P8871534903483581710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A339655 n

end

end A339656.P8871534903483581710

/-! ## A339656.P13847615190395670335

`A054404(A000041(2*(n+1))-A391235(n+1))`
-/

namespace A339656.P13847615190395670335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A000041 (2 * (n + 1)) - A391235 (n + 1)).toNat

end

end A339656.P13847615190395670335

/-! ## A339656.P3796953010357249996

`A375815(A116831(n+1))`
-/

namespace A339656.P3796953010357249996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375815 (A116831 (n + 1)).toNat

end

end A339656.P3796953010357249996

/-!
# A339657: Heinz numbers of non-loop-graphical partitions of even numbers.

The programs for A339657, there is no canonical definition to state claims against.
-/

/-! ## A339657.P18259510590823180066

`∩[A339618(n+1), comp[A339658(n+1)]]`
-/

namespace A339657.P18259510590823180066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339618 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339658 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A339657.P18259510590823180066

/-! ## A339657.P13971291882190159769

`A330946(n+1)-A353477(A245722(n+1))`
-/

namespace A339657.P13971291882190159769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330946 (n + 1) - A353477 (A245722 (n + 1)).toNat

end

end A339657.P13971291882190159769

/-! ## A339657.P8335778611307402511

`A330946(n+1)-A356921(A091965(n))`
-/

namespace A339657.P8335778611307402511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330946 (n + 1) - A356921 (A091965 n).toNat

end

end A339657.P8335778611307402511

/-! ## A339657.P15183544305226063378

`A330946(n+1)-A091225(A197551(n+1))`
-/

namespace A339657.P15183544305226063378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330946 (n + 1) - A091225 (A197551 (n + 1)).toNat

end

end A339657.P15183544305226063378

/-! ## A339657.P13697019497962626962

`A330946(n+1)-A288512(A125800(3*n))`
-/

namespace A339657.P13697019497962626962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330946 (n + 1) - A288512 (A125800 (3 * n)).toNat

end

end A339657.P13697019497962626962

/-!
# A339659: Irregular triangle read by rows where T(n,k) is the number of graphical partitions of 2n into k parts, 0 <= k <= 2n.

The programs for A339659, there is no canonical definition to state claims against.
-/

/-! ## A339659.P10361888790074708576

`A322452(A032793(n+1)^A069010(n))`
-/

namespace A339659.P10361888790074708576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (SequenceMachineLib.roundAway ((A032793 (n + 1) : ℚ) ^ (A069010 n : ℤ))).toNat

end

end A339659.P10361888790074708576

/-! ## A339659.P9758106483068325974

`A088205(A265163(n)%A090432(n+1))`
-/

namespace A339659.P9758106483068325974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088205 (Int.tmod (A265163 n) (A090432 (n + 1))).toNat

end

end A339659.P9758106483068325974

/-! ## A339659.P3423284946060722246

`A088205(A265163(n))`
-/

namespace A339659.P3423284946060722246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088205 (A265163 n).toNat

end

end A339659.P3423284946060722246

/-! ## A339659.P966719751338427758

`A284203(A265163(n)+2)`
-/

namespace A339659.P966719751338427758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284203 (A265163 n + 2).toNat

end

end A339659.P966719751338427758

/-! ## A339659.P14946203892326459599

`A268643(∑[∑[A275142(n+1)]])`
-/

namespace A339659.P14946203892326459599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339659.P14946203892326459599

/-!
# A339660: Number of strict integer partitions of n with no 1's and a part divisible by all the other parts.

The programs for A339660, there is no canonical definition to state claims against.
-/

/-! ## A339660.P11239308235299241065

`A343347(n)-a(n-1)` with `a(0)=1`
-/

namespace A339660.P11239308235299241065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A343347 n - a (n - 1)

end

end A339660.P11239308235299241065

/-! ## A339660.P8601538227895058102

`A343378(n)+A343380(n)-a(n-1)` with `a(0)=1`
-/

namespace A339660.P8601538227895058102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A343378 n + (A343380 n - a (n - 1))

end

end A339660.P8601538227895058102

/-! ## A339660.P595794781666168497

`A000009(n)-(A343377(n)+a(n-1))` with `a(0)=1`
-/

namespace A339660.P595794781666168497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000009 n - (A343377 n + a (n - 1))

end

end A339660.P595794781666168497

/-! ## A339660.P18418788604182191626

`A000009(n)-a(n-1)-(A343382(n)-A343380(n)%(n+1))` with `a(0)=1`
-/

namespace A339660.P18418788604182191626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000009 n - a (n - 1) - (A343382 n - Int.tmod (A343380 n) (n + 1 : ℤ))

end

end A339660.P18418788604182191626

/-! ## A339660.P8206447195235698306

`A343378(A077342(n+1))-A167865(A077342(n+1))`
-/

namespace A339660.P8206447195235698306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 (A077342 (n + 1)).toNat - A167865 (A077342 (n + 1)).toNat

end

end A339660.P8206447195235698306

/-!
# A339661: Number of factorizations of n into distinct squarefree semiprimes.

The programs for A339661, there is no canonical definition to state claims against.
-/

/-! ## A339661.P10574996342323200281

`∑{d}[n+1, A008836(#)*A339742((n+1)/#)]`
-/

namespace A339661.P10574996342323200281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A339742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339661.P10574996342323200281

/-! ## A339661.P11628815264064995633

`∑{d}[n+1, A219009(#)*A339839((n+1)/#)]`
-/

namespace A339661.P11628815264064995633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A219009 d * A339839 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339661.P11628815264064995633

/-! ## A339661.P1817877495096611821

`A320656(A089723(n+1)*A304481(n+1))`
-/

namespace A339661.P1817877495096611821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (A089723 (n + 1) * A304481 (n + 1)).toNat

end

end A339661.P1817877495096611821

/-! ## A339661.P8310562196879706458

`C(A322353(n+1), A020639(A008477(n+1)))`
-/

namespace A339661.P8310562196879706458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A322353 (n + 1)).toNat (A020639 (A008477 (n + 1)).toNat).toNat

end

end A339661.P8310562196879706458

/-! ## A339661.P2303984233595754660

`A320656(n+1)*A337939(A294874(n+1))`
-/

namespace A339661.P2303984233595754660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (n + 1) * A337939 (A294874 (n + 1)).toNat

end

end A339661.P2303984233595754660

/-! ## A339661.P8713251229896266757

`floor(2^∏{e}[n+1, (-C(2, #))^#]/9)^n`
-/

namespace A339661.P8713251229896266757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p : ℤ) / 9⌋ ^ n

end

end A339661.P8713251229896266757

/-! ## A339661.P6884045520281340837

`round(2^∏{e}[n+1, (-C(2, #))^#]/12)^n`
-/

namespace A339661.P6884045520281340837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p : ℤ) / 12) ^ n

end

end A339661.P6884045520281340837

/-! ## A339661.P4382975704921967890

`A249343(abs(∏{e}[n+1, (-C(2, #))^#]))^n`
-/

namespace A339661.P4382975704921967890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249343 |∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p|.toNat ^ n

end

end A339661.P4382975704921967890

/-! ## A339661.P17572746701398615261

`floor(A353337(n+1)/∏{e}[n+1, #!])^n`
-/

namespace A339661.P17572746701398615261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A353337 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℚ)⌋ ^ n

end

end A339661.P17572746701398615261

/-! ## A339661.P2663800163010929125

`A000387(∑{e}[∏{e}[n+1, (-C(2, #))^#], #])^n`
-/

namespace A339661.P2663800163010929125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.choose 2 (Nat.factorization (f2 n) p) : ℤ)) ^ Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000387 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ n

end

end A339661.P2663800163010929125

/-! ## A339661.P16903816655373700024

`val(A062011(A309307(n+1)!), A062011(n+1))`
-/

namespace A339661.P16903816655373700024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A062011 (Nat.factorial (A309307 (n + 1)).toNat)).toNat (A062011 (n + 1)).toNat

end

end A339661.P16903816655373700024

/-! ## A339661.P17848027364112316043

`A118682(A238946(n+1))^(3*n)`
-/

namespace A339661.P17848027364112316043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118682 (A238946 (n + 1)).toNat ^ (3 * n)

end

end A339661.P17848027364112316043

/-! ## A339661.P11255530507187805142

`A192174(A192178(∏{e}[n+1, #+1]+1-∏{e}[n+1, #]))`
-/

namespace A339661.P11255530507187805142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192174 (A192178 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 - ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

end

end A339661.P11255530507187805142

/-! ## A339661.P17242006043598707116

`A286561(A046523(n+1)*A293515(n+1))`
-/

namespace A339661.P17242006043598707116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286561 (A046523 (n + 1) * A293515 (n + 1)).toNat

end

end A339661.P17242006043598707116

/-! ## A339661.P536670569499898761

`and(A303707(A057567(n+1)), A322075(n+1))`
-/

namespace A339661.P536670569499898761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A303707 (A057567 (n + 1)).toNat) (A322075 (n + 1))

end

end A339661.P536670569499898761

/-! ## A339661.P16035199403485935350

`abs(A349920((n+1)²))`
-/

namespace A339661.P16035199403485935350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349920 ((n + 1) ^ 2)|

end

end A339661.P16035199403485935350

/-! ## A339661.P13683389130201651670

`A349920(∑[2*n+1])²`
-/

namespace A339661.P13683389130201651670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A339661.P13683389130201651670

/-! ## A339661.P2790409026907361080

`A349920((n+1)²)^A000010(n+1)`
-/

namespace A339661.P2790409026907361080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349920 ((n + 1) ^ 2) : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A339661.P2790409026907361080

/-! ## A339661.P7190994316586680309

`A349920((n+1)²)^A000203(n+1)`
-/

namespace A339661.P7190994316586680309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349920 ((n + 1) ^ 2) : ℚ) ^ (A000203 (n + 1) : ℤ)

end

end A339661.P7190994316586680309

/-!
# A339662: Greatest gap in the partition with Heinz number n.

The programs for A339662, there is no canonical definition to state claims against.
-/

/-! ## A339662.P1343349233137656736

`A000720(A079068(n+1))`
-/

namespace A339662.P1343349233137656736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A079068 (n + 1)).toNat

end

end A339662.P1343349233137656736

/-! ## A339662.P17232415504698664470

`∑{d}[A079068(n+1), A049084(#)]`
-/

namespace A339662.P17232415504698664470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A339662.P17232415504698664470

/-! ## A339662.P8955877274746837571

`∑{d}[A079068(n+1), A061395(#)]`
-/

namespace A339662.P8955877274746837571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A339662.P8955877274746837571

/-! ## A339662.P8820755418070585804

`A061395(A079068(n+1)²)`
-/

namespace A339662.P8820755418070585804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A079068 (n + 1) ^ 2).toNat

end

end A339662.P8820755418070585804

/-! ## A339662.P17641752756244590870

`A061395(A079068(n+1)*A079068(n+1))`
-/

namespace A339662.P17641752756244590870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A079068 (n + 1) * A079068 (n + 1)).toNat

end

end A339662.P17641752756244590870

/-! ## A339662.P5477089645615882376

`A079067(A117369(A079068(n+1))²)`
-/

namespace A339662.P5477089645615882376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A117369 (A079068 (n + 1)).toNat ^ 2).toNat

end

end A339662.P5477089645615882376

/-! ## A339662.P5008080948353248534

`A049084(A079068((n+1)²))`
-/

namespace A339662.P5008080948353248534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A079068 ((n + 1) ^ 2)).toNat

end

end A339662.P5008080948353248534

/-! ## A339662.P15496672902954545088

`A055396(A079068(n+1)²)`
-/

namespace A339662.P15496672902954545088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A079068 (n + 1) ^ 2).toNat

end

end A339662.P15496672902954545088

/-! ## A339662.P6810454098902397170

`A056811(A079068(n+1)²)`
-/

namespace A339662.P6810454098902397170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A079068 (n + 1) ^ 2).toNat

end

end A339662.P6810454098902397170

/-! ## A339662.P11291591345724050453

`A241919(A079068(n+1)²)`
-/

namespace A339662.P11291591345724050453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (A079068 (n + 1) ^ 2).toNat

end

end A339662.P11291591345724050453

/-! ## A339662.P16741396382322225321

`A286469(A079068(n+1)²)`
-/

namespace A339662.P16741396382322225321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286469 (A079068 (n + 1) ^ 2).toNat

end

end A339662.P16741396382322225321

/-! ## A339662.P8191392178605438363

`A286469(A079068(n+1)^2)`
-/

namespace A339662.P8191392178605438363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286469 (A079068 (n + 1) ^ 2).toNat

end

end A339662.P8191392178605438363

/-! ## A339662.P5409187437273758032

`A079067(A117367(A079068(n+1)²))`
-/

namespace A339662.P5409187437273758032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A117367 (A079068 (n + 1) ^ 2).toNat).toNat

end

end A339662.P5409187437273758032

/-!
# A339664: Number of nonempty subsets of divisors of n whose geometric mean is an integer.

The programs for A339664, there is no canonical definition to state claims against.
-/

/-! ## A339664.P4301006916015024002

`∏{e}[(n+1)²², A342516(#)]`
-/

namespace A339664.P4301006916015024002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A342516 (Nat.factorization (f1 n) p)

end

end A339664.P4301006916015024002

/-! ## A339664.P1315980127878173504

`∏{e}[n+1, A100565(A002277(#))]`
-/

namespace A339664.P1315980127878173504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A100565 (A002277 (Nat.factorization (f1 n) p)).toNat

end

end A339664.P1315980127878173504

/-! ## A339664.P13794097763948692768

`∏{e}[A132998(n+1), A094565(#)]`
-/

namespace A339664.P13794097763948692768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A094565 (Nat.factorization (f1 n).natAbs p)

end

end A339664.P13794097763948692768

/-! ## A339664.P6557669724770864931

`∏{e}[n+1, A350254(A213667(#))]`
-/

namespace A339664.P6557669724770864931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A350254 (A213667 (Nat.factorization (f1 n) p)).toNat

end

end A339664.P6557669724770864931

/-! ## A339664.P1535841481900655198

`∏{e}[A054496(n+1), A245353(#+1)]`
-/

namespace A339664.P1535841481900655198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A245353 (Nat.factorization (f1 n).natAbs p + 1)

end

end A339664.P1535841481900655198

/-!
# A339665: Number of nonempty subsets of divisors of n whose harmonic mean is an integer.

The programs for A339665, there is no canonical definition to state claims against.
-/

/-! ## A339665.P5644894498279784366

`A154725(A334694(n+1))+A000005(n+1)`
-/

namespace A339665.P5644894498279784366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154725 (A334694 (n + 1)).toNat + A000005 (n + 1)

end

end A339665.P5644894498279784366

/-!
# A339666: Number of nonempty subsets of divisors of n whose root-mean-square is an integer.

The programs for A339666, there is no canonical definition to state claims against.
-/

/-! ## A339666.P836506773972788145

`∑{d}[n+1, A014963(A006519(A001945(#)))]`
-/

namespace A339666.P836506773972788145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014963 (A006519 (A001945 d).toNat).toNat

end

end A339666.P836506773972788145

/-! ## A339666.P17435324370880095274

`A095691(7*A304203(n+1))`
-/

namespace A339666.P17435324370880095274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095691 (7 * A304203 (n + 1)).toNat

end

end A339666.P17435324370880095274

/-! ## A339666.P2542346536463323227

`A334080(A064554(n+1))`
-/

namespace A339666.P2542346536463323227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334080 (A064554 (n + 1)).toNat

end

end A339666.P2542346536463323227

/-! ## A339666.P10966338088493890314

`A334080(A290641(n+1))`
-/

namespace A339666.P10966338088493890314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334080 (A290641 (n + 1)).toNat

end

end A339666.P10966338088493890314

/-! ## A339666.P7932788513974319383

`A334080(A235200(n+1))`
-/

namespace A339666.P7932788513974319383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334080 (A235200 (n + 1)).toNat

end

end A339666.P7932788513974319383

/-!
# A339667: Number of nonempty subsets of divisors of n having a common factor > 1.

The programs for A339667, the canonical program `A339667.P11239473250096639083` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339667 has offset 1).

The definition of A339667 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076078, A100587, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339667.P11239473250096639083

`A100587(n+1)-A076078(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A339667

/-- `A100587(n+1)-A076078(n+1)` -/
def P11239473250096639083.Spec : Prop :=
  ∀ n, P11239473250096639083.a n = A339667 (n + 1)

theorem P11239473250096639083.correct : P11239473250096639083.Spec := by
  intro n
  simp only [A339667, Nat.add_sub_cancel]

end A339667

/-! ## A339667.P18176318060534153505

`∑{d}[n+1, A100587(#)*A157658((n+1)/#)]`
-/

namespace A339667.P18176318060534153505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A100587 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339667.P18176318060534153505

namespace A339667

/-- `∑{d}[n+1, A100587(#)*A157658((n+1)/#)]` -/
def P18176318060534153505.Spec : Prop :=
  ∀ n, P18176318060534153505.a n = A339667 (n + 1)

end A339667

/-! ## A339667.P526858296104618268

`∑{d}[n+1, A057427(#-1)*A076078((n+1)/#)]`
-/

namespace A339667.P526858296104618268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A076078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339667.P526858296104618268

namespace A339667

/-- `∑{d}[n+1, A057427(#-1)*A076078((n+1)/#)]` -/
def P526858296104618268.Spec : Prop :=
  ∀ n, P526858296104618268.a n = A339667 (n + 1)

end A339667

/-! ## A339667.P8029760627716043573

`A000225(A000005(n+1))-A076078(n+1)`
-/

namespace A339667.P8029760627716043573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000005 (n + 1)).toNat - A076078 (n + 1)

end

end A339667.P8029760627716043573

namespace A339667

/-- `A000225(A000005(n+1))-A076078(n+1)` -/
def P8029760627716043573.Spec : Prop :=
  ∀ n, P8029760627716043573.a n = A339667 (n + 1)

end A339667

/-! ## A339667.P10502477830461353822

`A052551(A114003(n+1))-A076078(n+1)`
-/

namespace A339667.P10502477830461353822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A114003 (n + 1)).toNat - A076078 (n + 1)

end

end A339667.P10502477830461353822

namespace A339667

/-- `A052551(A114003(n+1))-A076078(n+1)` -/
def P10502477830461353822.Spec : Prop :=
  ∀ n, P10502477830461353822.a n = A339667 (n + 1)

end A339667

/-! ## A339667.P14618432916733494815

`A130330(A066446(n+1))-A076078(n+1)`
-/

namespace A339667.P14618432916733494815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 (A066446 (n + 1)).toNat - A076078 (n + 1)

end

end A339667.P14618432916733494815

namespace A339667

/-- `A130330(A066446(n+1))-A076078(n+1)` -/
def P14618432916733494815.Spec : Prop :=
  ∀ n, P14618432916733494815.a n = A339667 (n + 1)

end A339667

/-! ## A339667.P6880575222712377017

`A100587(n+1)-A097211(A101296(n+1))`
-/

namespace A339667.P6880575222712377017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100587 (n + 1) - A097211 (A101296 (n + 1)).toNat

end

end A339667.P6880575222712377017

namespace A339667

/-- `A100587(n+1)-A097211(A101296(n+1))` -/
def P6880575222712377017.Spec : Prop :=
  ∀ n, P6880575222712377017.a n = A339667 (n + 1)

end A339667

/-! ## A339667.P5472151264184442644

`A100587(A000027(n+1))%A076078(n+1)`
-/

namespace A339667.P5472151264184442644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100587 (A000027 (n + 1)).toNat) (A076078 (n + 1))

end

end A339667.P5472151264184442644

namespace A339667

/-- `A100587(A000027(n+1))%A076078(n+1)` -/
def P5472151264184442644.Spec : Prop :=
  ∀ n, P5472151264184442644.a n = A339667 (n + 1)

end A339667

/-! ## A339667.P2941117932481470046

`∑{d}[A100577(n+1), #]-A076078(n+1)`
-/

namespace A339667.P2941117932481470046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A076078 (n + 1)

end

end A339667.P2941117932481470046

namespace A339667

/-- `∑{d}[A100577(n+1), #]-A076078(n+1)` -/
def P2941117932481470046.Spec : Prop :=
  ∀ n, P2941117932481470046.a n = A339667 (n + 1)

end A339667

/-! ## A339667.P8107479152842097575

`A004273(A100577(n+1)-A069626(n+1))`
-/

namespace A339667.P8107479152842097575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A100577 (n + 1) - A069626 (n + 1)).toNat

end

end A339667.P8107479152842097575

namespace A339667

/-- `A004273(A100577(n+1)-A069626(n+1))` -/
def P8107479152842097575.Spec : Prop :=
  ∀ n, P8107479152842097575.a n = A339667 (n + 1)

end A339667

/-! ## A339667.P5663376956993336339

`A000203(A100577(n+1))-A076078(n+1)`
-/

namespace A339667.P5663376956993336339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A100577 (n + 1)).toNat - A076078 (n + 1)

end

end A339667.P5663376956993336339

namespace A339667

/-- `A000203(A100577(n+1))-A076078(n+1)` -/
def P5663376956993336339.Spec : Prop :=
  ∀ n, P5663376956993336339.a n = A339667 (n + 1)

end A339667

/-! ## A339667.P8108985808326479416

`A100587(A105119(n+1))%A076078(n+1)`
-/

namespace A339667.P8108985808326479416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100587 (A105119 (n + 1)).toNat) (A076078 (n + 1))

end

end A339667.P8108985808326479416

namespace A339667

/-- `A100587(A105119(n+1))%A076078(n+1)` -/
def P8108985808326479416.Spec : Prop :=
  ∀ n, P8108985808326479416.a n = A339667 (n + 1)

end A339667

/-! ## A339667.P14193612230771188213

`A035327(A076078(n+1))`
-/

namespace A339667.P14193612230771188213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A076078 (n + 1)).toNat

end

end A339667.P14193612230771188213

namespace A339667

/-- `A035327(A076078(n+1))` -/
def P14193612230771188213.Spec : Prop :=
  ∀ n, P14193612230771188213.a n = A339667 (n + 1)

end A339667

/-!
# A339668: Number of length-n binary strings having minimum string attractor size 2.

The programs for A339668, there is no canonical definition to state claims against.
-/

/-! ## A339668.P11323526803421004622

`A355520(n+1)-2`
-/

namespace A339668.P11323526803421004622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355520 (n + 1) - 2

end

end A339668.P11323526803421004622

/-! ## A339668.P1208213039510738176

`record[Δ[A355520(A193739(n))]]`
-/

namespace A339668.P1208213039510738176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355520 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339668.P1208213039510738176

/-! ## A339668.P2998320173010000094

`A023444(A355520(n+1))`
-/

namespace A339668.P2998320173010000094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A355520 (n + 1)).toNat

end

end A339668.P2998320173010000094

/-! ## A339668.P4453539159430635617

`A023193(A341221(n+3))-A025147(n)`
-/

namespace A339668.P4453539159430635617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A341221 (n + 3)).toNat - A025147 n

end

end A339668.P4453539159430635617

/-!
# A339669: Number of Fibonacci divisors of Lucas(n)^2 + 1.

The programs for A339669, there is no canonical definition to state claims against.
-/

/-! ## A339669.P1794873423220849727

`A339461(n-∑[a(n-1)-(1-a(n-2))])` with `a(0)=-2, a(1)=2`
-/

namespace A339669.P1794873423220849727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339461 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339669.P1794873423220849727

/-! ## A339669.P16484630476480788152

`A339461(A000032(n))`
-/

namespace A339669.P16484630476480788152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339461 (A000032 n).toNat

end

end A339669.P16484630476480788152

/-! ## A339669.P13122284351424525366

`A339461(A169985(n))`
-/

namespace A339669.P13122284351424525366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339461 (A169985 n).toNat

end

end A339669.P13122284351424525366

/-! ## A339669.P17166173556342864322

`A339461(A254729(n+1))`
-/

namespace A339669.P17166173556342864322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339461 (A254729 (n + 1)).toNat

end

end A339669.P17166173556342864322

/-! ## A339669.P4939108089406807816

`A339461(A001612(n)-1)`
-/

namespace A339669.P4939108089406807816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339461 (A001612 n - 1).toNat

end

end A339669.P4939108089406807816

/-!
# A339672: Number of partitions of n into 7 distinct and relatively prime parts.

The programs for A339672, there is no canonical definition to state claims against.
-/

/-! ## A339672.P8027787980482369206

`A008636(n)-A014081(A186727(n))`
-/

namespace A339672.P8027787980482369206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A014081 (A186727 n).toNat

end

end A339672.P8027787980482369206

/-! ## A339672.P7820038284571849727

`A008636(n)-A185284(A029076(n))`
-/

namespace A339672.P7820038284571849727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A185284 (A029076 n).toNat

end

end A339672.P7820038284571849727

/-! ## A339672.P13713484279775520555

`A008636(n)-A326590(A185264(n))`
-/

namespace A339672.P13713484279775520555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A326590 (A185264 n).toNat

end

end A339672.P13713484279775520555

/-! ## A339672.P4379080590116676999

`∑[A001996(n)]-A185254(A185264(n))`
-/

namespace A339672.P4379080590116676999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A185254 (A185264 n).toNat

end

end A339672.P4379080590116676999

/-! ## A339672.P13580901958129198689

`A008636(n)-A185284(A096458(n+1))`
-/

namespace A339672.P13580901958129198689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A185284 (A096458 (n + 1)).toNat

end

end A339672.P13580901958129198689

/-!
# A339674: Irregular triangle T(n, k), n, k >= 0, read by rows; for any number m with runs in binary expansion (r_1, ..., r_j), let R(m) = {r_1 + ... + r_j, r_2 + ... + r_j, ..., r_j}; row n corresponds to the numbers k such that R(k) is included in R(n), in ascending order.

The programs for A339674, there is no canonical definition to state claims against.
-/

/-! ## A339674.P10361186803945470123

`(A005408(A318802(n))-n)%A289437(2*(n+2))`
-/

namespace A339674.P10361186803945470123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A318802 n).toNat - (n : ℤ)) (A289437 (2 * (n + 2)))

end

end A339674.P10361186803945470123

/-!
# A339677: Partition array: T(n, k) is the number of aperiodic necklaces (Lyndon words) on a multiset of colored beads (of size n) whose color multiplicities form the k-th partition of n in Abramowitz-Stegun order.

The programs for A339677, there is no canonical definition to state claims against.
-/

/-! ## A339677.P14781112667057999994

`A318808(A185974(n+1))`
-/

namespace A339677.P14781112667057999994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (A185974 (n + 1)).toNat

end

end A339677.P14781112667057999994

/-! ## A339677.P11542921394159047776

`A318808(ratio[A185974(n)]*A185974(n))`
-/

namespace A339677.P11542921394159047776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A185974 n : ℚ))).toNat

end

end A339677.P11542921394159047776

/-! ## A339677.P2649725569027377942

`A298941(A036035(n+1))`
-/

namespace A339677.P2649725569027377942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (A036035 (n + 1)).toNat

end

end A339677.P2649725569027377942

/-! ## A339677.P7633423085077805798

`A298941(A059901(n+1))`
-/

namespace A339677.P7633423085077805798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (A059901 (n + 1)).toNat

end

end A339677.P7633423085077805798

/-! ## A339677.P1152840552401463697

`A276890(lt[A072726(3*n+2), A033706(2*(n+2))])`
-/

namespace A339677.P1152840552401463697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072726 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033706 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A339677.P1152840552401463697

/-!
# A339678: Lesser of amicable pair (a, b) such that the sum of their number of divisors d(a) + d(b) sets a new record.

The programs for A339678, there is no canonical definition to state claims against.
-/

/-! ## A339678.P15038535798722774644

`∑{d}[A339679(n+1), #]-A339679(n+1)`
-/

namespace A339678.P15038535798722774644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A339679 (n + 1)

end

end A339678.P15038535798722774644

/-! ## A339678.P13822384978671601686

`A000203(A339679(n+1))-A339679(n+1)`
-/

namespace A339678.P13822384978671601686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A339679 (n + 1)).toNat - A339679 (n + 1)

end

end A339678.P13822384978671601686

/-!
# A339679: Larger of amicable pair (a, b) such that the sum of their number of divisors d(a) + d(b) sets a new record.

The programs for A339679, there is no canonical definition to state claims against.
-/

/-! ## A339679.P12455398753969306644

`∑{d}[A339678(n+1), #]-A339678(n+1)`
-/

namespace A339679.P12455398753969306644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A339678 (n + 1)

end

end A339679.P12455398753969306644

/-! ## A339679.P2962644518302491800

`A000203(A339678(n+1))-A339678(n+1)`
-/

namespace A339679.P2962644518302491800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A339678 (n + 1)).toNat - A339678 (n + 1)

end

end A339679.P2962644518302491800

/-! ## A339679.P12690640454740737180

`A002046(A187829(2*(n+1))-A194905(n+2))`
-/

namespace A339679.P12690640454740737180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002046 (A187829 (2 * (n + 1)) - A194905 (n + 2)).toNat

end

end A339679.P12690640454740737180

/-!
# A339684: a(n) = Sum_{d|n} 4^(d-1).

The programs for A339684, the canonical program `A339684.P6484221370213892322` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339684 has offset 1).

The definition of A339684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339684.P6484221370213892322

`∑{d}[n+1, 4^(#-1)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A339684

/-- `∑{d}[n+1, 4^(#-1)]` -/
def P6484221370213892322.Spec : Prop :=
  ∀ n, P6484221370213892322.a n = (A339684 (n + 1) : ℚ)

end A339684

/-! ## A339684.P790292072521767116

`record[∑{d}[n-1, 4^(#-1)]]`
-/

namespace A339684.P790292072521767116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (4 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339684.P790292072521767116

namespace A339684

/-- `record[∑{d}[n-1, 4^(#-1)]]` -/
def P790292072521767116.Spec : Prop :=
  ∀ n, P790292072521767116.a n = (A339684 (n + 1) : ℚ)

end A339684

/-! ## A339684.P9687022975853316797

`∑{d}[n+1, 4^#]/4`
-/

namespace A339684.P9687022975853316797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), 4 ^ d : ℕ) : ℚ) / 4

end

end A339684.P9687022975853316797

namespace A339684

/-- `∑{d}[n+1, 4^#]/4` -/
def P9687022975853316797.Spec : Prop :=
  ∀ n, P9687022975853316797.a n = (A339684 (n + 1) : ℚ)

end A339684

/-! ## A339684.P10762042753583854067

`A308813(Δ[A023545(n+1)])`
-/

namespace A339684.P10762042753583854067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (f1 (n + 1) - f1 n).toNat

end

end A339684.P10762042753583854067

namespace A339684

/-- `A308813(Δ[A023545(n+1)])` -/
def P10762042753583854067.Spec : Prop :=
  ∀ n, P10762042753583854067.a n = A339684 (n + 1)

end A339684

/-! ## A339684.P12951226350914745224

`A308813(Δ[A055831(n+4)]+1)`
-/

namespace A339684.P12951226350914745224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (f1 (n + 1) - f1 n + 1).toNat

end

end A339684.P12951226350914745224

namespace A339684

/-- `A308813(Δ[A055831(n+4)]+1)` -/
def P12951226350914745224.Spec : Prop :=
  ∀ n, P12951226350914745224.a n = A339684 (n + 1)

end A339684

/-! ## A339684.P6156040335443091085

`A308813(A046691(n+2)+n+5)`
-/

namespace A339684.P6156040335443091085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A046691 (n + 2) + (n + 5 : ℤ)).toNat

end

end A339684.P6156040335443091085

namespace A339684

/-- `A308813(A046691(n+2)+n+5)` -/
def P6156040335443091085.Spec : Prop :=
  ∀ n, P6156040335443091085.a n = A339684 (n + 1)

end A339684

/-!
# A339685: a(n) = Sum_{d|n} 5^(d-1).

The programs for A339685, the canonical program `A339685.P12837176683981659217` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339685 has offset 1).

The definition of A339685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339685.P12837176683981659217

`∑{d}[n+1, 5^(#-1)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A339685

/-- `∑{d}[n+1, 5^(#-1)]` -/
def P12837176683981659217.Spec : Prop :=
  ∀ n, P12837176683981659217.a n = (A339685 (n + 1) : ℚ)

end A339685

/-! ## A339685.P14189144720186620925

`record[∑{d}[n-1, 5^(#-1)]]`
-/

namespace A339685.P14189144720186620925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (5 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339685.P14189144720186620925

namespace A339685

/-- `record[∑{d}[n-1, 5^(#-1)]]` -/
def P14189144720186620925.Spec : Prop :=
  ∀ n, P14189144720186620925.a n = (A339685 (n + 1) : ℚ)

end A339685

/-! ## A339685.P4806407119528424425

`∑{d}[n+1, 5^#]/5`
-/

namespace A339685.P4806407119528424425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), 5 ^ d : ℕ) : ℚ) / 5

end

end A339685.P4806407119528424425

namespace A339685

/-- `∑{d}[n+1, 5^#]/5` -/
def P4806407119528424425.Spec : Prop :=
  ∀ n, P4806407119528424425.a n = (A339685 (n + 1) : ℚ)

end A339685

/-! ## A339685.P22082521892276314

`A308813(A052905(n+3))`
-/

namespace A339685.P22082521892276314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A052905 (n + 3)).toNat

end

end A339685.P22082521892276314

namespace A339685

/-- `A308813(A052905(n+3))` -/
def P22082521892276314.Spec : Prop :=
  ∀ n, P22082521892276314.a n = A339685 (n + 1)

end A339685

/-! ## A339685.P12324634808869010574

`A308813(Δ[A055831(n+5)])`
-/

namespace A339685.P12324634808869010574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (f1 (n + 1) - f1 n).toNat

end

end A339685.P12324634808869010574

namespace A339685

/-- `A308813(Δ[A055831(n+5)])` -/
def P12324634808869010574.Spec : Prop :=
  ∀ n, P12324634808869010574.a n = A339685 (n + 1)

end A339685

/-! ## A339685.P10799975556789190810

`A308813(A000124(n+6)-6)`
-/

namespace A339685.P10799975556789190810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A000124 (n + 6) - 6).toNat

end

end A339685.P10799975556789190810

namespace A339685

/-- `A308813(A000124(n+6)-6)` -/
def P10799975556789190810.Spec : Prop :=
  ∀ n, P10799975556789190810.a n = A339685 (n + 1)

end A339685

/-! ## A339685.P11190479488037871779

`A308813(Δ[A023545(n+2)]-1)`
-/

namespace A339685.P11190479488037871779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (f1 (n + 1) - f1 n - 1).toNat

end

end A339685.P11190479488037871779

namespace A339685

/-- `A308813(Δ[A023545(n+2)]-1)` -/
def P11190479488037871779.Spec : Prop :=
  ∀ n, P11190479488037871779.a n = A339685 (n + 1)

end A339685

/-! ## A339685.P12330690249026805882

`A308813(n+3+A034856(n+4))`
-/

namespace A339685.P12330690249026805882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 ((n + 3 : ℤ) + A034856 (n + 4)).toNat

end

end A339685.P12330690249026805882

namespace A339685

/-- `A308813(n+3+A034856(n+4))` -/
def P12330690249026805882.Spec : Prop :=
  ∀ n, P12330690249026805882.a n = A339685 (n + 1)

end A339685

/-!
# A339686: a(n) = Sum_{d|n} 6^(d-1).

The programs for A339686, the canonical program `A339686.P16502510872565663406` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339686 has offset 1).

The definition of A339686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339686.P16502510872565663406

`∑{d}[n+1, 6^(#-1)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A339686

/-- `∑{d}[n+1, 6^(#-1)]` -/
def P16502510872565663406.Spec : Prop :=
  ∀ n, P16502510872565663406.a n = (A339686 (n + 1) : ℚ)

end A339686

/-! ## A339686.P16653091418139713747

`∑{d}[n+1, 6^#]/6`
-/

namespace A339686.P16653091418139713747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), 6 ^ d : ℕ) : ℚ) / 6

end

end A339686.P16653091418139713747

namespace A339686

/-- `∑{d}[n+1, 6^#]/6` -/
def P16653091418139713747.Spec : Prop :=
  ∀ n, P16653091418139713747.a n = (A339686 (n + 1) : ℚ)

end A339686

/-! ## A339686.P7910692634582312451

`A308813(A055999(n+4))`
-/

namespace A339686.P7910692634582312451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A055999 (n + 4)).toNat

end

end A339686.P7910692634582312451

namespace A339686

/-- `A308813(A055999(n+4))` -/
def P7910692634582312451.Spec : Prop :=
  ∀ n, P7910692634582312451.a n = A339686 (n + 1)

end A339686

/-! ## A339686.P3601803576539238294

`A308813(A000217(n+7)-6)`
-/

namespace A339686.P3601803576539238294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A000217 (n + 7) - 6).toNat

end

end A339686.P3601803576539238294

namespace A339686

/-- `A308813(A000217(n+7)-6)` -/
def P3601803576539238294.Spec : Prop :=
  ∀ n, P3601803576539238294.a n = A339686 (n + 1)

end A339686

/-! ## A339686.P10235175704761546610

`A308813(A000124(n+7)-7)`
-/

namespace A339686.P10235175704761546610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A000124 (n + 7) - 7).toNat

end

end A339686.P10235175704761546610

namespace A339686

/-- `A308813(A000124(n+7)-7)` -/
def P10235175704761546610.Spec : Prop :=
  ∀ n, P10235175704761546610.a n = A339686 (n + 1)

end A339686

/-!
# A339687: a(n) = Sum_{d|n} 7^(d-1).

The programs for A339687, the canonical program `A339687.P8657964865198153155` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339687 has offset 1).

The definition of A339687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339687.P603015872897190598

`∑{d}[n+1, 7^(#-1)]`
-/

namespace A339687.P603015872897190598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (7 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A339687.P603015872897190598

namespace A339687

/-- `∑{d}[n+1, 7^(#-1)]` -/
def P603015872897190598.Spec : Prop :=
  ∀ n, P603015872897190598.a n = (A339687 (n + 1) : ℚ)

end A339687

/-! ## A339687.P8657964865198153155

`floor(∑{d}[1-(n-2*n), 7^(#-1)])`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A339687

/-- `floor(∑{d}[1-(n-2*n), 7^(#-1)])` -/
def P8657964865198153155.Spec : Prop :=
  ∀ n, P8657964865198153155.a n = A339687 (n + 1)

theorem P8657964865198153155.correct : P8657964865198153155.Spec := by
  intro n
  simp only [A339687, Nat.add_sub_cancel]

end A339687

/-! ## A339687.P11616184452832223206

`∑{d}[n+1, 7^#]/7`
-/

namespace A339687.P11616184452832223206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), 7 ^ d : ℕ) : ℚ) / 7

end

end A339687.P11616184452832223206

namespace A339687

/-- `∑{d}[n+1, 7^#]/7` -/
def P11616184452832223206.Spec : Prop :=
  ∀ n, P11616184452832223206.a n = (A339687 (n + 1) : ℚ)

end A339687

/-! ## A339687.P1198928629946749241

`A308813(A052905(n+5)-2)`
-/

namespace A339687.P1198928629946749241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A052905 (n + 5) - 2).toNat

end

end A339687.P1198928629946749241

namespace A339687

/-- `A308813(A052905(n+5)-2)` -/
def P1198928629946749241.Spec : Prop :=
  ∀ n, P1198928629946749241.a n = A339687 (n + 1)

end A339687

/-! ## A339687.P13939794256860531521

`A308813(A000124(n+8)-8)`
-/

namespace A339687.P13939794256860531521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A000124 (n + 8) - 8).toNat

end

end A339687.P13939794256860531521

namespace A339687

/-- `A308813(A000124(n+8)-8)` -/
def P13939794256860531521.Spec : Prop :=
  ∀ n, P13939794256860531521.a n = A339687 (n + 1)

end A339687

/-! ## A339687.P981569415759577625

`A308813(A000217(n+7)+n+1)`
-/

namespace A339687.P981569415759577625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A339687.P981569415759577625

namespace A339687

/-- `A308813(A000217(n+7)+n+1)` -/
def P981569415759577625.Spec : Prop :=
  ∀ n, P981569415759577625.a n = A339687 (n + 1)

end A339687

/-!
# A339688: a(n) = Sum_{d|n} 8^(d-1).

The programs for A339688, the canonical program `A339688.P9944499641036360778` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339688 has offset 1).

The definition of A339688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339688.P9944499641036360778

`∑{d}[n+1, 8^(#-1)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A339688

/-- `∑{d}[n+1, 8^(#-1)]` -/
def P9944499641036360778.Spec : Prop :=
  ∀ n, P9944499641036360778.a n = (A339688 (n + 1) : ℚ)

end A339688

/-! ## A339688.P7691990421075578092

`∑{d}[n+1, 8^#]/8`
-/

namespace A339688.P7691990421075578092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), 8 ^ d : ℕ) : ℚ) / 8

end

end A339688.P7691990421075578092

namespace A339688

/-- `∑{d}[n+1, 8^#]/8` -/
def P7691990421075578092.Spec : Prop :=
  ∀ n, P7691990421075578092.a n = (A339688 (n + 1) : ℚ)

end A339688

/-! ## A339688.P4761080284549396932

`A308813(A052905(n+6)-3)`
-/

namespace A339688.P4761080284549396932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A052905 (n + 6) - 3).toNat

end

end A339688.P4761080284549396932

namespace A339688

/-- `A308813(A052905(n+6)-3)` -/
def P4761080284549396932.Spec : Prop :=
  ∀ n, P4761080284549396932.a n = A339688 (n + 1)

end A339688

/-! ## A339688.P11906437686661519659

`A308813(A000096(n+7)+n+2)`
-/

namespace A339688.P11906437686661519659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A000096 (n + 7) + (n + 2 : ℤ)).toNat

end

end A339688.P11906437686661519659

namespace A339688

/-- `A308813(A000096(n+7)+n+2)` -/
def P11906437686661519659.Spec : Prop :=
  ∀ n, P11906437686661519659.a n = A339688 (n + 1)

end A339688

/-! ## A339688.P2362542252601685494

`A308813(A000217(n+8)+n+1)`
-/

namespace A339688.P2362542252601685494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A000217 (n + 8) + (n : ℤ) + 1).toNat

end

end A339688.P2362542252601685494

namespace A339688

/-- `A308813(A000217(n+8)+n+1)` -/
def P2362542252601685494.Spec : Prop :=
  ∀ n, P2362542252601685494.a n = A339688 (n + 1)

end A339688

/-!
# A339689: a(n) = Sum_{d|n} 9^(d-1).

The programs for A339689, the canonical program `A339689.P17558829524981321897` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339689 has offset 1).

The definition of A339689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339689.P17558829524981321897

`∑{d}[n+1, 9^(#-1)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A339689

/-- `∑{d}[n+1, 9^(#-1)]` -/
def P17558829524981321897.Spec : Prop :=
  ∀ n, P17558829524981321897.a n = (A339689 (n + 1) : ℚ)

end A339689

/-! ## A339689.P9513772349050882459

`record[∑{d}[n-1, 9^(#-1)]]`
-/

namespace A339689.P9513772349050882459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (9 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339689.P9513772349050882459

namespace A339689

/-- `record[∑{d}[n-1, 9^(#-1)]]` -/
def P9513772349050882459.Spec : Prop :=
  ∀ n, P9513772349050882459.a n = (A339689 (n + 1) : ℚ)

end A339689

/-! ## A339689.P12099998574012573778

`∑{d}[n+1, 9^#]/9`
-/

namespace A339689.P12099998574012573778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), 9 ^ d : ℕ) : ℚ) / 9

end

end A339689.P12099998574012573778

namespace A339689

/-- `∑{d}[n+1, 9^#]/9` -/
def P12099998574012573778.Spec : Prop :=
  ∀ n, P12099998574012573778.a n = (A339689 (n + 1) : ℚ)

end A339689

/-! ## A339689.P5734406212773964649

`A308813(A161680(n+11)-9)`
-/

namespace A339689.P5734406212773964649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A161680 (n + 11) - 9).toNat

end

end A339689.P5734406212773964649

namespace A339689

/-- `A308813(A161680(n+11)-9)` -/
def P5734406212773964649.Spec : Prop :=
  ∀ n, P5734406212773964649.a n = A339689 (n + 1)

end A339689

/-! ## A339689.P11318514126203046731

`A308813(A000217(n+9)+n+1)`
-/

namespace A339689.P11318514126203046731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A000217 (n + 9) + (n + 1 : ℤ)).toNat

end

end A339689.P11318514126203046731

namespace A339689

/-- `A308813(A000217(n+9)+n+1)` -/
def P11318514126203046731.Spec : Prop :=
  ∀ n, P11318514126203046731.a n = A339689 (n + 1)

end A339689

/-! ## A339689.P5460000552679456170

`A308813(A167487(n+7)+2*n+3)`
-/

namespace A339689.P5460000552679456170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A167487 (n + 7) + (2 * n + 3 : ℤ)).toNat

end

end A339689.P5460000552679456170

namespace A339689

/-- `A308813(A167487(n+7)+2*n+3)` -/
def P5460000552679456170.Spec : Prop :=
  ∀ n, P5460000552679456170.a n = A339689 (n + 1)

end A339689

/-! ## A339689.P4320488904306430708

`A308813(2*(n+1)+A167614(n+7)+5)`
-/

namespace A339689.P4320488904306430708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 ((2 * (n + 1) : ℤ) + (A167614 (n + 7) + 5)).toNat

end

end A339689.P4320488904306430708

namespace A339689

/-- `A308813(2*(n+1)+A167614(n+7)+5)` -/
def P4320488904306430708.Spec : Prop :=
  ∀ n, P4320488904306430708.a n = A339689 (n + 1)

end A339689

/-!
# A339690: Positive integers of the form 4^i*9^j*k with gcd(k,6)=1.

The programs for A339690, the canonical program `A339690.P16723611076842397338` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339690 has offset 1).

The definition of A339690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339690.P2807854797924631816

`A329575(n+1)/3`
-/

namespace A339690.P2807854797924631816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329575 (n + 1) : ℚ) / 3

end

end A339690.P2807854797924631816

namespace A339690

/-- `A329575(n+1)/3` -/
def P2807854797924631816.Spec : Prop :=
  ∀ n, P2807854797924631816.a n = (A339690 (n + 1) : ℚ)

end A339690

/-! ## A339690.P16723611076842397338

`eq[1, A372574(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A339690

/-- `eq[1, A372574(n+1)]+1` -/
def P16723611076842397338.Spec : Prop :=
  ∀ n, (P16723611076842397338.a n : ℤ) = A339690 (n + 1)

theorem P16723611076842397338.correct : P16723611076842397338.Spec := by
  intro n
  simp only [A339690, Nat.add_sub_cancel]

end A339690

/-! ## A339690.P16350707580173426786

`eq[2, A302786(3*(n+1))]+1`
-/

namespace A339690.P16350707580173426786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302786 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339690.P16350707580173426786

namespace A339690

/-- `eq[2, A302786(3*(n+1))]+1` -/
def P16350707580173426786.Spec : Prop :=
  ∀ n, (P16350707580173426786.a n : ℤ) = A339690 (n + 1)

end A339690

/-! ## A339690.P3629715284695565277

`eq[1, gcd(6, A007913(n+1))]+1`
-/

namespace A339690.P3629715284695565277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A007913 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A339690.P3629715284695565277

namespace A339690

/-- `eq[1, gcd(6, A007913(n+1))]+1` -/
def P3629715284695565277.Spec : Prop :=
  ∀ n, (P3629715284695565277.a n : ℤ) = A339690 (n + 1)

end A339690

/-! ## A339690.P1762625046946954781

`record[(n+3)%(A302792(n+1)+1)]`
-/

namespace A339690.P1762625046946954781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A302792 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339690.P1762625046946954781

namespace A339690

/-- `record[(n+3)%(A302792(n+1)+1)]` -/
def P1762625046946954781.Spec : Prop :=
  ∀ n, P1762625046946954781.a n = A339690 (n + 1)

end A339690

/-! ## A339690.P16910204203227676625

`A302792(A329575(n+1))`
-/

namespace A339690.P16910204203227676625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (A329575 (n + 1)).toNat

end

end A339690.P16910204203227676625

namespace A339690

/-- `A302792(A329575(n+1))` -/
def P16910204203227676625.Spec : Prop :=
  ∀ n, P16910204203227676625.a n = A339690 (n + 1)

end A339690

/-! ## A339690.P1200448602586419277

`lt[0, A349395(n+1)]+1`
-/

namespace A339690.P1200448602586419277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A339690.P1200448602586419277

namespace A339690

/-- `lt[0, A349395(n+1)]+1` -/
def P1200448602586419277.Spec : Prop :=
  ∀ n, (P1200448602586419277.a n : ℤ) = A339690 (n + 1)

end A339690

/-! ## A339690.P2158753738690206889

`filter[A036668(n+1), A014578(#)]`
-/

namespace A339690.P2158753738690206889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A339690.P2158753738690206889

namespace A339690

/-- `filter[A036668(n+1), A014578(#)]` -/
def P2158753738690206889.Spec : Prop :=
  ∀ n, P2158753738690206889.a n = A339690 (n + 1)

end A339690

/-! ## A339690.P12239095925507942290

`filter[A036668(n+1), A035263(#)]`
-/

namespace A339690.P12239095925507942290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A339690.P12239095925507942290

namespace A339690

/-- `filter[A036668(n+1), A035263(#)]` -/
def P12239095925507942290.Spec : Prop :=
  ∀ n, P12239095925507942290.a n = A339690 (n + 1)

end A339690

/-! ## A339690.P14770310824773198973

`filter[A036668(n+1), A372574(#)]`
-/

namespace A339690.P14770310824773198973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A339690.P14770310824773198973

namespace A339690

/-- `filter[A036668(n+1), A372574(#)]` -/
def P14770310824773198973.Spec : Prop :=
  ∀ n, P14770310824773198973.a n = A339690 (n + 1)

end A339690

/-! ## A339690.P1602968443330173675

`filter[A003159(n+1), A014578(#)]`
-/

namespace A339690.P1602968443330173675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A339690.P1602968443330173675

namespace A339690

/-- `filter[A003159(n+1), A014578(#)]` -/
def P1602968443330173675.Spec : Prop :=
  ∀ n, P1602968443330173675.a n = A339690 (n + 1)

end A339690

/-! ## A339690.P17225392565540811424

`filter[A003159(n+1), A372574(#)]`
-/

namespace A339690.P17225392565540811424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A339690.P17225392565540811424

namespace A339690

/-- `filter[A003159(n+1), A372574(#)]` -/
def P17225392565540811424.Spec : Prop :=
  ∀ n, P17225392565540811424.a n = A339690 (n + 1)

end A339690

/-! ## A339690.P2100574526678554963

`filter[A003159(n+1), A373136(#)]`
-/

namespace A339690.P2100574526678554963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A339690.P2100574526678554963

namespace A339690

/-- `filter[A003159(n+1), A373136(#)]` -/
def P2100574526678554963.Spec : Prop :=
  ∀ n, P2100574526678554963.a n = A339690 (n + 1)

end A339690

/-! ## A339690.P4453157010134757567

`∩[A003159(n+1), A036668(n+1)]`
-/

namespace A339690.P4453157010134757567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339690.P4453157010134757567

namespace A339690

/-- `∩[A003159(n+1), A036668(n+1)]` -/
def P4453157010134757567.Spec : Prop :=
  ∀ n, (P4453157010134757567.a n : ℤ) = A339690 (n + 1)

end A339690

/-! ## A339690.P11510048550835177370

`filter[A260401(n+1), A372574(#)]`
-/

namespace A339690.P11510048550835177370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A339690.P11510048550835177370

namespace A339690

/-- `filter[A260401(n+1), A372574(#)]` -/
def P11510048550835177370.Spec : Prop :=
  ∀ n, P11510048550835177370.a n = A339690 (n + 1)

end A339690

/-! ## A339690.P16869916837916719412

`filter[A007417(n+1), A035263(#)]`
-/

namespace A339690.P16869916837916719412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A339690.P16869916837916719412

namespace A339690

/-- `filter[A007417(n+1), A035263(#)]` -/
def P16869916837916719412.Spec : Prop :=
  ∀ n, P16869916837916719412.a n = A339690 (n + 1)

end A339690

/-! ## A339690.P18079023208360567692

`filter[A007417(n+1), A372574(#)]`
-/

namespace A339690.P18079023208360567692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A339690.P18079023208360567692

namespace A339690

/-- `filter[A007417(n+1), A372574(#)]` -/
def P18079023208360567692.Spec : Prop :=
  ∀ n, P18079023208360567692.a n = A339690 (n + 1)

end A339690

/-! ## A339690.P13963322398077381693

`filter[A007417(n+1), A373136(#)]`
-/

namespace A339690.P13963322398077381693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A339690.P13963322398077381693

namespace A339690

/-- `filter[A007417(n+1), A373136(#)]` -/
def P13963322398077381693.Spec : Prop :=
  ∀ n, P13963322398077381693.a n = A339690 (n + 1)

end A339690

/-! ## A339690.P3872992296351020353

`filter[A107750(n+1), A372574(#)]`
-/

namespace A339690.P3872992296351020353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A339690.P3872992296351020353

namespace A339690

/-- `filter[A107750(n+1), A372574(#)]` -/
def P3872992296351020353.Spec : Prop :=
  ∀ n, P3872992296351020353.a n = A339690 (n + 1)

end A339690

/-! ## A339690.P17034494681493805605

`filter[A042965(n+2), A372574(#)]`
-/

namespace A339690.P17034494681493805605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A339690.P17034494681493805605

namespace A339690

/-- `filter[A042965(n+2), A372574(#)]` -/
def P17034494681493805605.Spec : Prop :=
  ∀ n, P17034494681493805605.a n = A339690 (n + 1)

end A339690

/-!
# A339692: Primes that can be expressed as p^k+2*k where p is prime and k >= 1.

The programs for A339692, there is no canonical definition to state claims against.
-/

/-! ## A339692.P11100227333525797503

`A056813(2*A217736(n+1))`
-/

namespace A339692.P11100227333525797503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (2 * A217736 (n + 1)).toNat

end

end A339692.P11100227333525797503

/-! ## A339692.P15537180004510145152

`A056813(∑[A047436(n+1)²])`
-/

namespace A339692.P15537180004510145152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047436 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339692.P15537180004510145152

/-! ## A339692.P12828896200236008979

`record[A354200(A219237(n))]`
-/

namespace A339692.P12828896200236008979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354200 (A219237 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339692.P12828896200236008979

/-! ## A339692.P6422713462029647353

`A123318(A280255(n+2))`
-/

namespace A339692.P6422713462029647353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A280255 (n + 2)).toNat

end

end A339692.P6422713462029647353

/-!
# A339694: Triangle read by rows: A(n, k) = Sum_{i=0..n-1} x(i, k)*2^i, where x(i, k) = A014682^(i)(k) (mod 2) using the i-th iteration of A014682.

The programs for A339694, there is no canonical definition to state claims against.
-/

/-! ## A339694.P655296292384319718

`A035327(A284459(n+1)%(A343272(3*(n+1))+n))`
-/

namespace A339694.P655296292384319718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.tmod (A284459 (n + 1)) (A343272 (3 * (n + 1)) + (n : ℤ))).toNat

end

end A339694.P655296292384319718

/-! ## A339694.P7737805577148798005

`A014963(A158117(n))*A035327(A284459(n+1))`
-/

namespace A339694.P7737805577148798005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A158117 n).toNat * A035327 (A284459 (n + 1)).toNat

end

end A339694.P7737805577148798005

/-! ## A339694.P3515806542800280968

`A035327(A284459(n+1))^A146832(A007318(n))`
-/

namespace A339694.P3515806542800280968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035327 (A284459 (n + 1)).toNat : ℚ) ^ (A146832 (A007318 n).toNat : ℤ)

end

end A339694.P3515806542800280968

/-! ## A339694.P12842621524209776321

`A035327(A284459(n+1))%A000203(A007283(n))`
-/

namespace A339694.P12842621524209776321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035327 (A284459 (n + 1)).toNat) (A000203 (A007283 n).toNat)

end

end A339694.P12842621524209776321

/-! ## A339694.P17027168604618461687

`floor(A321905(n+2)/2)%A077079(n+1)`
-/

namespace A339694.P17027168604618461687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A321905 (n + 2) : ℚ) / 2⌋ (A077079 (n + 1))

end

end A339694.P17027168604618461687

/-!
# A339695: Let G be the undirected graph with nodes {g_k, k >= 0} such that for any k >= 0, g_k is connected to g_{k+1} and g_{A006068(k)} is connected to g_{A006068(k+1)}; a(n) is the distance between g_0 and g_n.

The programs for A339695, there is no canonical definition to state claims against.
-/

/-! ## A339695.P12038325821044787928

`A277013(A001405(n)*A292586(n+1))`
-/

namespace A339695.P12038325821044787928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (A001405 n * A292586 (n + 1)).toNat

end

end A339695.P12038325821044787928

/-! ## A339695.P3115902144404612333

`∑[A008683(A329916(3*n+5)+A022004(n+1))]`
-/

namespace A339695.P3115902144404612333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A329916 (3 * n + 5) + A022004 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339695.P3115902144404612333

/-!
# A339696: Let G be the undirected graph with nodes {g_k, k >= 0} such that for any k >= 0, g_k is connected to g_{k+1} and g_{A006068(k)} is connected to g_{A006068(k+1)}; a(n) is the number of nodes at distance n from g_0.

The programs for A339696, there is no canonical definition to state claims against.
-/

/-! ## A339696.P1457757016273871274

`A196564(A102371(n+1))+A004525(n)`
-/

namespace A339696.P1457757016273871274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A102371 (n + 1)).toNat + A004525 n

end

end A339696.P1457757016273871274

/-! ## A339696.P16536174171653178787

`1-A001222(A288820(n+1))+n-A002265(A216209(2*n))`
-/

namespace A339696.P16536174171653178787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001222 (A288820 (n + 1)).toNat + (n : ℤ) - A002265 (A216209 (2 * n)).toNat

end

end A339696.P16536174171653178787

/-!
# A339697: Square array T(n, k) read by antidiagonals, n >= 0 and k >= 0; let G be the undirected graph with nodes {g_k, k >= 0} such that for any k >= 0, g_k is connected to g_{k+1} and g_{A006068(k)} is connected to g_{A006068(k+1)}; T(n, k) is the distance between g_n and g_k.

The programs for A339697, there is no canonical definition to state claims against.
-/

/-! ## A339697.P14648445346455944530

`A344174(A271710(n)+1)`
-/

namespace A339697.P14648445346455944530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344174 (A271710 n + 1).toNat

end

end A339697.P14648445346455944530

/-! ## A339697.P9413069913364441912

`A037831(4^A204143(n+1))`
-/

namespace A339697.P9413069913364441912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A204143 (n + 1) : ℤ))).toNat

end

end A339697.P9413069913364441912

/-! ## A339697.P18294780031006656321

`A076869(A204143(n+1)²+1)-1`
-/

namespace A339697.P18294780031006656321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076869 (A204143 (n + 1) ^ 2 + 1).toNat - 1

end

end A339697.P18294780031006656321

/-! ## A339697.P5565333323149955960

`A075357(A204143(n+1)%A080533(n))`
-/

namespace A339697.P5565333323149955960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (Int.tmod (A204143 (n + 1)) (A080533 n)).toNat

end

end A339697.P5565333323149955960

/-! ## A339697.P10741279886234181606

`A339733(n+1)+A014471(A000292(2*n+3))`
-/

namespace A339697.P10741279886234181606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339733 (n + 1) + A014471 (A000292 (2 * n + 3)).toNat

end

end A339697.P10741279886234181606

/-!
# A339698: Primes of the form p^2 - p*q + q^2, where p and q are consecutive primes.

The programs for A339698, there is no canonical definition to state claims against.
-/

/-! ## A339698.P15534932194645306168

`p?[A069484(n+1)-A006094(n+1)]`
-/

namespace A339698.P15534932194645306168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) - A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339698.P15534932194645306168

/-! ## A339698.P7544120538795335680

`p?[A001248(n+2)-A291463(n+1)]`
-/

namespace A339698.P7544120538795335680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) - A291463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339698.P7544120538795335680

/-! ## A339698.P12106050966410560159

`p?[A006094(n+1)+A001223(n+1)²]`
-/

namespace A339698.P12106050966410560159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A001223 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339698.P12106050966410560159

/-! ## A339698.P13100364270939040708

`p?[A069484(n+1)-A000040(n+1)*A000040(n+2)]`
-/

namespace A339698.P13100364270939040708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) - A000040 (n + 1) * A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339698.P13100364270939040708

/-!
# A339699: Numbers m such that 3^m-1 and 3^m+1 have the same number k of prime factors counted with multiplicity.

The programs for A339699, there is no canonical definition to state claims against.
-/

/-! ## A339699.P9108413486444052738

`eq[A057941(n+1), A057958(n+1)]+1`
-/

namespace A339699.P9108413486444052738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057958 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A339699.P9108413486444052738

/-! ## A339699.P4508617477203524926

`A020725(eq[A057941(n+1), A057958(n+1)])`
-/

namespace A339699.P4508617477203524926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A339699.P4508617477203524926

/-! ## A339699.P3528435777825536192

`A065475(eq[A057941(n+1), A057958(n+1)])`
-/

namespace A339699.P3528435777825536192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A339699.P3528435777825536192

/-! ## A339699.P10866462817739645744

`A153152(eq[A057941(n+1), A057958(n+1)])`
-/

namespace A339699.P10866462817739645744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A339699.P10866462817739645744

