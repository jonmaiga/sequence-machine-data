import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C014
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A200200: Number of -4..4 arrays x(0..n+2) of n+3 elements with zero sum and nonzero second and third differences.

The programs for A200200, there is no canonical definition to state claims against.
-/

/-! ## A200200.P4816944708569039610

`A200204(2*n+5+∑[n+2])`
-/

namespace A200200.P4816944708569039610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (2 * n + 5 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200200.P4816944708569039610

/-! ## A200200.P7652998402653187571

`lcm(2, A200204(A027379(n+2)))`
-/

namespace A200200.P7652998402653187571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200204 (A027379 (n + 2)).toNat)

end

end A200200.P7652998402653187571

/-! ## A200200.P9104817084458529228

`A200204(A027379(n+2))+A000007(n+1)`
-/

namespace A200200.P9104817084458529228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A027379 (n + 2)).toNat + A000007 (n + 1)

end

end A200200.P9104817084458529228

/-! ## A200200.P9930877363299589815

`A200204(Δ[A006503(n+1)])+A000007(n+1)`
-/

namespace A200200.P9930877363299589815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A200200.P9930877363299589815

/-! ## A200200.P9024897563591190464

`A200204(A027379(n+2))+char[A000124(n+6)]`
-/

namespace A200200.P9024897563591190464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A027379 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A200200.P9024897563591190464

/-!
# A200201: Number of -5..5 arrays x(0..n+2) of n+3 elements with zero sum and nonzero second and third differences.

The programs for A200201, there is no canonical definition to state claims against.
-/

/-! ## A200201.P15248338224812531557

`A200204(Δ[A264443(n)])`
-/

namespace A200201.P15248338224812531557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (f1 (n + 1) - f1 n).toNat

end

end A200201.P15248338224812531557

/-! ## A200201.P516228173855485301

`A200204(A046691(n+3))`
-/

namespace A200201.P516228173855485301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A046691 (n + 3)).toNat

end

end A200201.P516228173855485301

/-! ## A200201.P16922891196584608214

`A200204(A056115(n)+11)`
-/

namespace A200201.P16922891196584608214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A056115 n + 11).toNat

end

end A200201.P16922891196584608214

/-! ## A200201.P2821829704996018227

`A200204(eq[4, A193592(n)])`
-/

namespace A200201.P2821829704996018227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200201.P2821829704996018227

/-! ## A200201.P7388846481168069239

`A200204(Δ[A023545(n+1)])`
-/

namespace A200201.P7388846481168069239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (f1 (n + 1) - f1 n).toNat

end

end A200201.P7388846481168069239

/-!
# A200202: Number of -6..6 arrays x(0..n+2) of n+3 elements with zero sum and nonzero second and third differences.

The programs for A200202, there is no canonical definition to state claims against.
-/

/-! ## A200202.P9910391639921318878

`A200204(A052905(n+3))`
-/

namespace A200202.P9910391639921318878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A052905 (n + 3)).toNat

end

end A200202.P9910391639921318878

/-! ## A200202.P4782509667887531842

`A200204(eq[3, A219347(n)])`
-/

namespace A200202.P4782509667887531842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200202.P4782509667887531842

/-! ## A200202.P4774351568399903708

`A200204(eq[5, A193592(n)])`
-/

namespace A200202.P4774351568399903708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200202.P4774351568399903708

/-! ## A200202.P12211410792612574926

`A200204(eq[6, A200370(n+1)])`
-/

namespace A200202.P12211410792612574926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200202.P12211410792612574926

/-! ## A200202.P10490696526547729066

`A200204(eq[8, A243070(n+1)])`
-/

namespace A200202.P10490696526547729066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200202.P10490696526547729066

/-!
# A200203: Number of -7..7 arrays x(0..n+2) of n+3 elements with zero sum and nonzero second and third differences.

The programs for A200203, there is no canonical definition to state claims against.
-/

/-! ## A200203.P10790847046601657214

`A200204(A055999(n+4))`
-/

namespace A200203.P10790847046601657214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A055999 (n + 4)).toNat

end

end A200203.P10790847046601657214

/-! ## A200203.P5319123283064578101

`A200204(A134227(n+5))`
-/

namespace A200203.P5319123283064578101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A134227 (n + 5)).toNat

end

end A200203.P5319123283064578101

/-! ## A200203.P7871564532421242636

`A200204(eq[4, A219347(n)])`
-/

namespace A200203.P7871564532421242636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200203.P7871564532421242636

/-! ## A200203.P3114425576787929124

`A200204(eq[6, A193592(n)])`
-/

namespace A200203.P3114425576787929124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200203.P3114425576787929124

/-! ## A200203.P14860210930166067996

`A200204(eq[7, A200370(n+1)])`
-/

namespace A200203.P14860210930166067996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200203.P14860210930166067996

/-!
# A200205: Number of -n..n arrays x(0..3) of 4 elements with zero sum and nonzero second and third differences.

The programs for A200205, there is no canonical definition to state claims against.
-/

/-! ## A200205.P6097890966826962179

`A200204(∑[n]+1)`
-/

namespace A200205.P6097890966826962179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200205.P6097890966826962179

/-! ## A200205.P5239375444407916646

`lcm(2, A200204(A000124(n)))`
-/

namespace A200205.P5239375444407916646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200204 (A000124 n).toNat)

end

end A200205.P5239375444407916646

/-! ## A200205.P12585891265036646530

`record[root(A200204(n+1), A071943(n))]`
-/

namespace A200205.P12585891265036646530
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A200204 (n + 1) : ℝ) ^ (1 / (A071943 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200205.P12585891265036646530

/-! ## A200205.P12927028902161897365

`A200214(n+1)+A200204(A000124(n))`
-/

namespace A200205.P12927028902161897365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200214 (n + 1) + A200204 (A000124 n).toNat

end

end A200205.P12927028902161897365

/-! ## A200205.P11469041071580828988

`A200204(A000124(n))/A133707(n+1)`
-/

namespace A200205.P11469041071580828988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200204 (A000124 n).toNat : ℚ) / (A133707 (n + 1) : ℚ)

end

end A200205.P11469041071580828988

/-!
# A200206: Number of -n..n arrays x(0..4) of 5 elements with zero sum and nonzero second and third differences.

The programs for A200206, there is no canonical definition to state claims against.
-/

/-! ## A200206.P13315766590855945720

`A200204(∑[n+1]+2)`
-/

namespace A200206.P13315766590855945720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200206.P13315766590855945720

/-! ## A200206.P6857629944044001754

`A200204(A133263(n+1))%A017212(n)`
-/

namespace A200206.P6857629944044001754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200204 (A133263 (n + 1)).toNat) (A017212 n)

end

end A200206.P6857629944044001754

/-! ## A200206.P14133428882559606397

`char[A057163(n)]*A200204(A133263(n+1))`
-/

namespace A200206.P14133428882559606397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A200204 (A133263 (n + 1)).toNat

end

end A200206.P14133428882559606397

/-! ## A200206.P15925485215685409240

`A200204(A133263(n+1))+char[A000124(n+6)]`
-/

namespace A200206.P15925485215685409240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A200206.P15925485215685409240

/-!
# A200207: Number of -n..n arrays x(0..5) of 6 elements with zero sum and nonzero second and third differences.

The programs for A200207, there is no canonical definition to state claims against.
-/

/-! ## A200207.P7217962182333499750

`A200204(∑[n+2]+4)`
-/

namespace A200207.P7217962182333499750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200207.P7217962182333499750

/-! ## A200207.P13139174331828276439

`lcm(2, A200204(A167614(n+1)))`
-/

namespace A200207.P13139174331828276439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200204 (A167614 (n + 1)).toNat)

end

end A200207.P13139174331828276439

/-! ## A200207.P3980347442568448459

`record[A200204(A167614(abs(round(sqrt(2*(n+1)))²-(2*n+1))+1))]`
-/

namespace A200207.P3980347442568448459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A167614 (|SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200207.P3980347442568448459

/-! ## A200207.P16184723200374452853

`A200204(A167614(n+1))%A016938(n)`
-/

namespace A200207.P16184723200374452853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200204 (A167614 (n + 1)).toNat) (A016938 n)

end

end A200207.P16184723200374452853

/-! ## A200207.P2859338071849375119

`or(A000038(n), A200204(A167614(n+1)))`
-/

namespace A200207.P2859338071849375119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A200204 (A167614 (n + 1)).toNat)

end

end A200207.P2859338071849375119

/-!
# A200208: Number of -n..n arrays x(0..6) of 7 elements with zero sum and nonzero second and third differences.

The programs for A200208, there is no canonical definition to state claims against.
-/

/-! ## A200208.P9184178247442816332

`A200204(A141214(n)+7)`
-/

namespace A200208.P9184178247442816332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A141214 n + 7).toNat

end

end A200208.P9184178247442816332

/-! ## A200208.P10704691974917991248

`A200204(A052905(n)+9)`
-/

namespace A200208.P10704691974917991248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A052905 n + 9).toNat

end

end A200208.P10704691974917991248

/-! ## A200208.P10713230315055095260

`A200204(A055999(n)+10)`
-/

namespace A200208.P10713230315055095260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A055999 n + 10).toNat

end

end A200208.P10713230315055095260

/-! ## A200208.P15913328813498347365

`A200204(A167614(n+2)+1)`
-/

namespace A200208.P15913328813498347365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A167614 (n + 2) + 1).toNat

end

end A200208.P15913328813498347365

/-! ## A200208.P14886380613806669353

`A200204(A167499(n+2)-1)`
-/

namespace A200208.P14886380613806669353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A167499 (n + 2) - 1).toNat

end

end A200208.P14886380613806669353

/-!
# A200209: Number of -n..n arrays x(0..7) of 8 elements with zero sum and nonzero second and third differences.

The programs for A200209, there is no canonical definition to state claims against.
-/

/-! ## A200209.P18418316394821685628

`A200204(A167499(n+3))`
-/

namespace A200209.P18418316394821685628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A167499 (n + 3)).toNat

end

end A200209.P18418316394821685628

/-! ## A200209.P13895129440830398460

`A200204(A056000(n)+15)`
-/

namespace A200209.P13895129440830398460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A056000 n + 15).toNat

end

end A200209.P13895129440830398460

/-! ## A200209.P4696423092047345744

`A200204(A000217(n+4)+5)`
-/

namespace A200209.P4696423092047345744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A000217 (n + 4) + 5).toNat

end

end A200209.P4696423092047345744

/-! ## A200209.P11657587023074208982

`A200204(A027379(n+2)+8)`
-/

namespace A200209.P11657587023074208982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A027379 (n + 2) + 8).toNat

end

end A200209.P11657587023074208982

/-! ## A200209.P3106236797051282532

`A200204(A038722(Δ[A023545(n+1)]))`
-/

namespace A200209.P3106236797051282532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A200209.P3106236797051282532

/-!
# A200210: Number of -n..n arrays x(0..8) of 9 elements with zero sum and nonzero second and third differences.

The programs for A200210, there is no canonical definition to state claims against.
-/

/-! ## A200210.P1188489512536678929

`A200204(A056115(n)+21)`
-/

namespace A200210.P1188489512536678929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A056115 n + 21).toNat

end

end A200210.P1188489512536678929

/-! ## A200210.P15225371625136245967

`A200204(A167499(n+4)+1)`
-/

namespace A200210.P15225371625136245967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A167499 (n + 4) + 1).toNat

end

end A200210.P15225371625136245967

/-! ## A200210.P17683140596422300428

`A200204(A000217(n+5)+6)`
-/

namespace A200210.P17683140596422300428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A000217 (n + 5) + 6).toNat

end

end A200210.P17683140596422300428

/-! ## A200210.P16326430213360738906

`A200204(A046691(n+3)+10)`
-/

namespace A200210.P16326430213360738906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A046691 (n + 3) + 10).toNat

end

end A200210.P16326430213360738906

/-! ## A200210.P9056043789213288711

`A200204(eq[7, A131818(n+1)])`
-/

namespace A200210.P9056043789213288711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200210.P9056043789213288711

/-!
# A200211: Number of -n..n arrays x(0..9) of 10 elements with zero sum and nonzero second and third differences.

The programs for A200211, there is no canonical definition to state claims against.
-/

/-! ## A200211.P8978685691531122704

`A200204(A056119(n)+28)`
-/

namespace A200211.P8978685691531122704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A056119 n + 28).toNat

end

end A200211.P8978685691531122704

/-! ## A200211.P10076452900878245940

`A200204(eq[11, A066657(n)])`
-/

namespace A200211.P10076452900878245940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200211.P10076452900878245940

/-! ## A200211.P1663836397304452417

`A200204(A000124(n+6)+6)`
-/

namespace A200211.P1663836397304452417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A000124 (n + 6) + 6).toNat

end

end A200211.P1663836397304452417

/-! ## A200211.P4185735232060697423

`A200204(A000217(n+6)+7)`
-/

namespace A200211.P4185735232060697423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A000217 (n + 6) + 7).toNat

end

end A200211.P4185735232060697423

/-! ## A200211.P6670798108202476376

`A200204(eq[8, A131818(n+1)])`
-/

namespace A200211.P6670798108202476376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200211.P6670798108202476376

/-!
# A200212: G.f. satisfies: A(x) = exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^3 * x^k*A(x)^(n-k)] * x^n/n ).

The programs for A200212, there is no canonical definition to state claims against.
-/

/-! ## A200212.P5713309551856604410

`A062108(A200731(n)+A099152(n))`
-/

namespace A200212.P5713309551856604410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A200731 n + A099152 n).toNat

end

end A200212.P5713309551856604410

/-! ## A200212.P11062796594449297330

`A062108(A287892(n)+A200731(n))`
-/

namespace A200212.P11062796594449297330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A287892 n + A200731 n).toNat

end

end A200212.P11062796594449297330

/-!
# A200213: Ordered factorizations of n with 2 distinct parts, both > 1.

The programs for A200213, the canonical program `A200213.P16790892476291859455` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200213 has offset 1).

The definition of A200213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200213.P16790892476291859455

`or(1, ∏{e}[abs(1-n)+2, #+1]-2)-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A200213

/-- `or(1, ∏{e}[abs(1-n)+2, #+1]-2)-1` -/
def P16790892476291859455.Spec : Prop :=
  ∀ n, P16790892476291859455.a n = A200213 (n + 1)

theorem P16790892476291859455.correct : P16790892476291859455.Spec := by
  intro n
  simp only [A200213, Nat.add_sub_cancel]

end A200213

/-! ## A200213.P14770156643873569636

`Δ[A278933(n)/2]`
-/

namespace A200213.P14770156643873569636
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278933 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200213.P14770156643873569636

namespace A200213

/-- `Δ[A278933(n)/2]` -/
def P14770156643873569636.Spec : Prop :=
  ∀ n, P14770156643873569636.a n = (A200213 (n + 1) : ℚ)

end A200213

/-! ## A200213.P13939083628771366436

`and(Δ[A325459(n)], -2)`
-/

namespace A200213.P13939083628771366436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (-2)

end

end A200213.P13939083628771366436

namespace A200213

/-- `and(Δ[A325459(n)], -2)` -/
def P13939083628771366436.Spec : Prop :=
  ∀ n, P13939083628771366436.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P1732915462516726452

`and(-2, A070824(n+1))`
-/

namespace A200213.P1732915462516726452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A070824 (n + 1))

end

end A200213.P1732915462516726452

namespace A200213

/-- `and(-2, A070824(n+1))` -/
def P1732915462516726452.Spec : Prop :=
  ∀ n, P1732915462516726452.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P2569934711129813184

`or(1, A264440(n+1))-1`
-/

namespace A200213.P2569934711129813184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A264440 (n + 1)) - 1

end

end A200213.P2569934711129813184

namespace A200213

/-- `or(1, A264440(n+1))-1` -/
def P2569934711129813184.Spec : Prop :=
  ∀ n, P2569934711129813184.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P14022259540768965879

`2*A211159(abs(1-n)+1)`
-/

namespace A200213.P14022259540768965879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211159 (|1 - (n : ℤ)| + 1).toNat

end

end A200213.P14022259540768965879

namespace A200213

/-- `2*A211159(abs(1-n)+1)` -/
def P14022259540768965879.Spec : Prop :=
  ∀ n, P14022259540768965879.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P6410073051287422872

`2*floor(abs(A000005(n+1)-2)/2)`
-/

namespace A200213.P6410073051287422872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(|A000005 (n + 1) - 2| : ℚ) / 2⌋

end

end A200213.P6410073051287422872

namespace A200213

/-- `2*floor(abs(A000005(n+1)-2)/2)` -/
def P6410073051287422872.Spec : Prop :=
  ∀ n, P6410073051287422872.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P16224062254149826146

`A052928(A070824(n+1))`
-/

namespace A200213.P16224062254149826146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A070824 (n + 1)).toNat

end

end A200213.P16224062254149826146

namespace A200213

/-- `A052928(A070824(n+1))` -/
def P16224062254149826146.Spec : Prop :=
  ∀ n, P16224062254149826146.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P11701881726836621921

`A052928(A264440(n+1))`
-/

namespace A200213.P11701881726836621921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A264440 (n + 1)).toNat

end

end A200213.P11701881726836621921

namespace A200213

/-- `A052928(A264440(n+1))` -/
def P11701881726836621921.Spec : Prop :=
  ∀ n, P11701881726836621921.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P9988858127610971436

`A052928(A325765(n)-1)`
-/

namespace A200213.P9988858127610971436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A325765 n - 1).toNat

end

end A200213.P9988858127610971436

namespace A200213

/-- `A052928(A325765(n)-1)` -/
def P9988858127610971436.Spec : Prop :=
  ∀ n, P9988858127610971436.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P3690294507569858699

`2*A140106(Δ[A006218(n)])`
-/

namespace A200213.P3690294507569858699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140106 (f1 (n + 1) - f1 n).toNat

end

end A200213.P3690294507569858699

namespace A200213

/-- `2*A140106(Δ[A006218(n)])` -/
def P3690294507569858699.Spec : Prop :=
  ∀ n, P3690294507569858699.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P14670992881700058097

`2*A140106(Δ[A054519(n)])`
-/

namespace A200213.P14670992881700058097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140106 (f1 (n + 1) - f1 n).toNat

end

end A200213.P14670992881700058097

namespace A200213

/-- `2*A140106(Δ[A054519(n)])` -/
def P14670992881700058097.Spec : Prop :=
  ∀ n, P14670992881700058097.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P11215712242905110223

`2*A140106(A000005(n+1))`
-/

namespace A200213.P11215712242905110223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140106 (A000005 (n + 1)).toNat

end

end A200213.P11215712242905110223

namespace A200213

/-- `2*A140106(A000005(n+1))` -/
def P11215712242905110223.Spec : Prop :=
  ∀ n, P11215712242905110223.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P8508534675442642101

`A267866(n)+A325765(n)-2`
-/

namespace A200213.P8508534675442642101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267866 n + (A325765 n - 2)

end

end A200213.P8508534675442642101

namespace A200213

/-- `A267866(n)+A325765(n)-2` -/
def P8508534675442642101.Spec : Prop :=
  ∀ n, P8508534675442642101.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P80180558610034915

`and(A070824(n+1), A113679(n))`
-/

namespace A200213.P80180558610034915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070824 (n + 1)) (A113679 n)

end

end A200213.P80180558610034915

namespace A200213

/-- `and(A070824(n+1), A113679(n))` -/
def P80180558610034915.Spec : Prop :=
  ∀ n, P80180558610034915.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P5904227127165376289

`2*A095861(A066446(n+1)+1)`
-/

namespace A200213.P5904227127165376289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095861 (A066446 (n + 1) + 1).toNat

end

end A200213.P5904227127165376289

namespace A200213

/-- `2*A095861(A066446(n+1)+1)` -/
def P5904227127165376289.Spec : Prop :=
  ∀ n, P5904227127165376289.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P9773746587629454897

`2*A140106(A070824(n+1)+2)`
-/

namespace A200213.P9773746587629454897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140106 (A070824 (n + 1) + 2).toNat

end

end A200213.P9773746587629454897

namespace A200213

/-- `2*A140106(A070824(n+1)+2)` -/
def P9773746587629454897.Spec : Prop :=
  ∀ n, P9773746587629454897.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P11235127758667483228

`A233583(or(1, A000005(n+1)))-2`
-/

namespace A200213.P11235127758667483228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.lor 1 (A000005 (n + 1))).toNat - 2

end

end A200213.P11235127758667483228

namespace A200213

/-- `A233583(or(1, A000005(n+1)))-2` -/
def P11235127758667483228.Spec : Prop :=
  ∀ n, P11235127758667483228.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P16128558787045154587

`A337524(n+1)%A348161(n+1)`
-/

namespace A200213.P16128558787045154587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337524 (n + 1)) (A348161 (n + 1))

end

end A200213.P16128558787045154587

namespace A200213

/-- `A337524(n+1)%A348161(n+1)` -/
def P16128558787045154587.Spec : Prop :=
  ∀ n, P16128558787045154587.a n = A200213 (n + 1)

end A200213

/-! ## A200213.P8255447518982547782

`abs(A109613(Δ[A006218(n)])-2)-1`
-/

namespace A200213.P8255447518982547782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109613 (f1 (n + 1) - f1 n).toNat - 2| - 1

end

end A200213.P8255447518982547782

namespace A200213

/-- `abs(A109613(Δ[A006218(n)])-2)-1` -/
def P8255447518982547782.Spec : Prop :=
  ∀ n, P8255447518982547782.a n = A200213 (n + 1)

end A200213

/-!
# A200214: Ordered factorizations of n with 3 distinct parts, all > 1.

The programs for A200214, the canonical program `A200214.P8720410556555359477` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200214 has offset 1).

The definition of A200214 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122180, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A200214.P8720410556555359477

`6*A122180(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A200214

/-- `6*A122180(n+1)` -/
def P8720410556555359477.Spec : Prop :=
  ∀ n, P8720410556555359477.a n = A200214 (n + 1)

theorem P8720410556555359477.correct : P8720410556555359477.Spec := by
  intro n
  simp only [A200214, Nat.add_sub_cancel]

end A200214

/-! ## A200214.P3256405821941039284

`A008588(A122180(n+1))`
-/

namespace A200214.P3256405821941039284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A122180 (n + 1)).toNat

end

end A200214.P3256405821941039284

namespace A200214

/-- `A008588(A122180(n+1))` -/
def P3256405821941039284.Spec : Prop :=
  ∀ n, P3256405821941039284.a n = A200214 (n + 1)

end A200214

/-! ## A200214.P16915197223137154588

`A008585(A122180(n+1)+A122180(n+1))`
-/

namespace A200214.P16915197223137154588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A122180 (n + 1) + A122180 (n + 1)).toNat

end

end A200214.P16915197223137154588

namespace A200214

/-- `A008585(A122180(n+1)+A122180(n+1))` -/
def P16915197223137154588.Spec : Prop :=
  ∀ n, P16915197223137154588.a n = A200214 (n + 1)

end A200214

/-! ## A200214.P3198690033139801380

`A008458(A122180(n+1)+n)-A008458(n)`
-/

namespace A200214.P3198690033139801380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A122180 (n + 1) + (n : ℤ)).toNat - A008458 n

end

end A200214.P3198690033139801380

namespace A200214

/-- `A008458(A122180(n+1)+n)-A008458(n)` -/
def P3198690033139801380.Spec : Prop :=
  ∀ n, P3198690033139801380.a n = A200214 (n + 1)

end A200214

/-! ## A200214.P8252329679962829447

`6*(A088434(n+1)-A123108(A264440(n+1)))`
-/

namespace A200214.P8252329679962829447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A088434 (n + 1) - A123108 (A264440 (n + 1)).toNat)

end

end A200214.P8252329679962829447

namespace A200214

/-- `6*(A088434(n+1)-A123108(A264440(n+1)))` -/
def P8252329679962829447.Spec : Prop :=
  ∀ n, P8252329679962829447.a n = A200214 (n + 1)

end A200214

/-! ## A200214.P6862443921938654274

`A004220(4^A122180(n+1))`
-/

namespace A200214.P6862443921938654274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004220 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A122180 (n + 1) : ℤ))).toNat

end

end A200214.P6862443921938654274

namespace A200214

/-- `A004220(4^A122180(n+1))` -/
def P6862443921938654274.Spec : Prop :=
  ∀ n, P6862443921938654274.a n = A200214 (n + 1)

end A200214

/-! ## A200214.P13696825572490408508

`A001414(8^A122180(n+1))`
-/

namespace A200214.P13696825572490408508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A122180 (n + 1) : ℤ))).toNat

end

end A200214.P13696825572490408508

namespace A200214

/-- `A001414(8^A122180(n+1))` -/
def P13696825572490408508.Spec : Prop :=
  ∀ n, P13696825572490408508.a n = A200214 (n + 1)

end A200214

/-! ## A200214.P3965143225785399286

`A078908(9^A122180(n+1))`
-/

namespace A200214.P3965143225785399286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A122180 (n + 1) : ℤ))).toNat

end

end A200214.P3965143225785399286

namespace A200214

/-- `A078908(9^A122180(n+1))` -/
def P3965143225785399286.Spec : Prop :=
  ∀ n, P3965143225785399286.a n = A200214 (n + 1)

end A200214

/-! ## A200214.P9747696214162419016

`A318994(9^A122180(n+1))`
-/

namespace A200214.P9747696214162419016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A122180 (n + 1) : ℤ))).toNat

end

end A200214.P9747696214162419016

namespace A200214

/-- `A318994(9^A122180(n+1))` -/
def P9747696214162419016.Spec : Prop :=
  ∀ n, P9747696214162419016.a n = A200214 (n + 1)

end A200214

/-! ## A200214.P3132484652343855667

`6*A138471(A296120(n+1))`
-/

namespace A200214.P3132484652343855667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138471 (A296120 (n + 1)).toNat

end

end A200214.P3132484652343855667

namespace A200214

/-- `6*A138471(A296120(n+1))` -/
def P3132484652343855667.Spec : Prop :=
  ∀ n, P3132484652343855667.a n = A200214 (n + 1)

end A200214

/-!
# A200215: G.f. satisfies: A(x) = exp( Sum_{n>=1} (Sum_{k=0..n} C(n,k)^3 * x^k*A(x)^k) * x^n*A(x)^n/n ).

The programs for A200215, there is no canonical definition to state claims against.
-/

/-! ## A200215.P9092262998125934839

`A101402(A011791(n)-A164349(n))`
-/

namespace A200215.P9092262998125934839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A011791 n - A164349 n).toNat

end

end A200215.P9092262998125934839

/-! ## A200215.P4054156808063522307

`A101402(A011791(n)-A215530(n))`
-/

namespace A200215.P4054156808063522307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A011791 n - A215530 n).toNat

end

end A200215.P4054156808063522307

/-! ## A200215.P5884315521683471642

`A101402(A011791(n)-A094186(n+1))`
-/

namespace A200215.P5884315521683471642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A011791 n - A094186 (n + 1)).toNat

end

end A200215.P5884315521683471642

/-!
# A200219: Number of solutions of the equation x^n + (x+1)^n == (x+2)^n (mod n) for x = 0..n-1.

The programs for A200219, there is no canonical definition to state claims against.
-/

/-! ## A200219.P6417421100591404485

`and(A008683(A217304(n)), A052126(n+1))`
-/

namespace A200219.P6417421100591404485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A217304 n).toNat) (A052126 (n + 1))

end

end A200219.P6417421100591404485

/-! ## A200219.P10352920302709297999

`A052126(n+1)^A164555(A046206(n+1))`
-/

namespace A200219.P10352920302709297999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052126 (n + 1) : ℚ) ^ (A164555 (A046206 (n + 1)).toNat : ℤ)

end

end A200219.P10352920302709297999

/-! ## A200219.P10600577967466286335

`A052126(n+1)%A286156(A200454(n+1))`
-/

namespace A200219.P10600577967466286335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052126 (n + 1)) (A286156 (A200454 (n + 1)).toNat)

end

end A200219.P10600577967466286335

/-! ## A200219.P9971087282883604515

`A052126(n+1)*A212793(A001405(n))`
-/

namespace A200219.P9971087282883604515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A212793 (A001405 n).toNat

end

end A200219.P9971087282883604515

/-! ## A200219.P1459311660081255256

`A052126(n+1)*A327077(A331437(n))`
-/

namespace A200219.P1459311660081255256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A327077 (A331437 n).toNat

end

end A200219.P1459311660081255256

/-!
# A200220: Product of Fibonacci and Padovan numbers: a(n) = A000045(n+1)*A000931(n+5).

The programs for A200220, the canonical program `A200220.P13235699375585790056` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200220 has offset 0).

The definition of A200220 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*A000931(n+5)` (program `A200220.P13235699375585790056`, by `A200220.P13235699375585790056.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200220.P13235699375585790056

`A000045(n+1)*A000931(n+5)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A200220

/-- `A000045(n+1)*A000931(n+5)` -/
def P13235699375585790056.Spec : Prop :=
  ∀ n, P13235699375585790056.a n = A200220 n

theorem P13235699375585790056.correct : P13235699375585790056.Spec := by
  intro n
  simp only [A200220]

end A200220

/-! ## A200220.P2767327593510422205

`A000045(n+1)*∑[A000931(n)]`
-/

namespace A200220.P2767327593510422205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200220.P2767327593510422205

namespace A200220

/-- `A000045(n+1)*∑[A000931(n)]` -/
def P2767327593510422205.Spec : Prop :=
  ∀ n, P2767327593510422205.a n = A200220 n

end A200220

/-! ## A200220.P6736613006492925910

`A000045(n+1)*A134816(n+1)`
-/

namespace A200220.P6736613006492925910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A134816 (n + 1)

end

end A200220.P6736613006492925910

namespace A200220

/-- `A000045(n+1)*A134816(n+1)` -/
def P6736613006492925910.Spec : Prop :=
  ∀ n, P6736613006492925910.a n = A200220 n

end A200220

/-! ## A200220.P10944170251616950656

`A000045(n+1)*A182097(n+2)`
-/

namespace A200220.P10944170251616950656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A182097 (n + 2)

end

end A200220.P10944170251616950656

namespace A200220

/-- `A000045(n+1)*A182097(n+2)` -/
def P10944170251616950656.Spec : Prop :=
  ∀ n, P10944170251616950656.a n = A200220 n

end A200220

/-! ## A200220.P11660710639424977013

`A000045(n+1)*A078027(n+7)`
-/

namespace A200220.P11660710639424977013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A078027 (n + 7)

end

end A200220.P11660710639424977013

namespace A200220

/-- `A000045(n+1)*A078027(n+7)` -/
def P11660710639424977013.Spec : Prop :=
  ∀ n, P11660710639424977013.a n = A200220 n

end A200220

/-! ## A200220.P6325345156827026945

`A000045(n+1)*A133034(n+9)`
-/

namespace A200220.P6325345156827026945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A133034 (n + 9)

end

end A200220.P6325345156827026945

namespace A200220

/-- `A000045(n+1)*A133034(n+9)` -/
def P6325345156827026945.Spec : Prop :=
  ∀ n, P6325345156827026945.a n = A200220 n

end A200220

/-! ## A200220.P12225321483779063919

`(A000071(n+1)+1)*∑[A000931(n)]`
-/

namespace A200220.P12225321483779063919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200220.P12225321483779063919

namespace A200220

/-- `(A000071(n+1)+1)*∑[A000931(n)]` -/
def P12225321483779063919.Spec : Prop :=
  ∀ n, P12225321483779063919.a n = A200220 n

end A200220

/-! ## A200220.P108449144263529149

`A000045(n+1)*Δ[A164001(n+2)]`
-/

namespace A200220.P108449144263529149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A200220.P108449144263529149

namespace A200220

/-- `A000045(n+1)*Δ[A164001(n+2)]` -/
def P108449144263529149.Spec : Prop :=
  ∀ n, P108449144263529149.a n = A200220 n

end A200220

/-! ## A200220.P11807605880080475850

`(A000045(n+1)-A129973(n+2))*A000045(n+1)`
-/

namespace A200220.P11807605880080475850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) - A129973 (n + 2)) * A000045 (n + 1)

end

end A200220.P11807605880080475850

namespace A200220

/-- `(A000045(n+1)-A129973(n+2))*A000045(n+1)` -/
def P11807605880080475850.Spec : Prop :=
  ∀ n, P11807605880080475850.a n = A200220 n

end A200220

/-! ## A200220.P13029433366399615473

`∑[A000931(n)]*A037027(∑[n])`
-/

namespace A200220.P13029433366399615473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A037027 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A200220.P13029433366399615473

namespace A200220

/-- `∑[A000931(n)]*A037027(∑[n])` -/
def P13029433366399615473.Spec : Prop :=
  ∀ n, P13029433366399615473.a n = A200220 n

end A200220

/-! ## A200220.P12103985153190960106

`∑[A000931(n)]*A036355(∑[n])`
-/

namespace A200220.P12103985153190960106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A036355 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A200220.P12103985153190960106

namespace A200220

/-- `∑[A000931(n)]*A036355(∑[n])` -/
def P12103985153190960106.Spec : Prop :=
  ∀ n, P12103985153190960106.a n = A200220 n

end A200220

/-!
# A200221: Ordered factorizations of n with 3 parts.

The programs for A200221, the canonical program `A200221.P18071779547883620232` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200221 has offset 1).

The definition of A200221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200221.P18071779547883620232

`∑{d}[n+1, A070824(#)]-A070824(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A200221

/-- `∑{d}[n+1, A070824(#)]-A070824(n+1)` -/
def P18071779547883620232.Spec : Prop :=
  ∀ n, P18071779547883620232.a n = A200221 (n + 1)

theorem P18071779547883620232.correct : P18071779547883620232.Spec := by
  intro n
  simp only [A200221, Nat.add_sub_cancel]

end A200221

/-! ## A200221.P2967660492760201288

`A007425(n+1)-A008486(A032741(n+1))`
-/

namespace A200221.P2967660492760201288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) - A008486 (A032741 (n + 1)).toNat

end

end A200221.P2967660492760201288

namespace A200221

/-- `A007425(n+1)-A008486(A032741(n+1))` -/
def P2967660492760201288.Spec : Prop :=
  ∀ n, P2967660492760201288.a n = A200221 (n + 1)

end A200221

/-! ## A200221.P14116082862230466079

`A007425(n+1)-(A114003(n+1)+A070824(n+1))`
-/

namespace A200221.P14116082862230466079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) - (A114003 (n + 1) + A070824 (n + 1))

end

end A200221.P14116082862230466079

namespace A200221

/-- `A007425(n+1)-(A114003(n+1)+A070824(n+1))` -/
def P14116082862230466079.Spec : Prop :=
  ∀ n, P14116082862230466079.a n = A200221 (n + 1)

end A200221

/-! ## A200221.P9991755450634704828

`A238952(n+1)+1-A000005(n+1)-A070824(n+1)`
-/

namespace A200221.P9991755450634704828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238952 (n + 1) + (1 - A000005 (n + 1)) - A070824 (n + 1)

end

end A200221.P9991755450634704828

namespace A200221

/-- `A238952(n+1)+1-A000005(n+1)-A070824(n+1)` -/
def P9991755450634704828.Spec : Prop :=
  ∀ n, P9991755450634704828.a n = A200221 (n + 1)

end A200221

/-! ## A200221.P16239242879613226667

`A007425(n+1)-A114003(n+1)-A289207(A000005(n+1))`
-/

namespace A200221.P16239242879613226667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) - A114003 (n + 1) - A289207 (A000005 (n + 1)).toNat

end

end A200221.P16239242879613226667

namespace A200221

/-- `A007425(n+1)-A114003(n+1)-A289207(A000005(n+1))` -/
def P16239242879613226667.Spec : Prop :=
  ∀ n, P16239242879613226667.a n = A200221 (n + 1)

end A200221

/-! ## A200221.P13065883941494940868

`A343879(n+1)-Δ[A325459(n)]`
-/

namespace A200221.P13065883941494940868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343879 (n + 1) - (f1 (n + 1) - f1 n)

end

end A200221.P13065883941494940868

namespace A200221

/-- `A343879(n+1)-Δ[A325459(n)]` -/
def P13065883941494940868.Spec : Prop :=
  ∀ n, P13065883941494940868.a n = A200221 (n + 1)

end A200221

/-! ## A200221.P6731665407764421988

`A343879(n+1)-A070824(n+1)`
-/

namespace A200221.P6731665407764421988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343879 (n + 1) - A070824 (n + 1)

end

end A200221.P6731665407764421988

namespace A200221

/-- `A343879(n+1)-A070824(n+1)` -/
def P6731665407764421988.Spec : Prop :=
  ∀ n, P6731665407764421988.a n = A200221 (n + 1)

end A200221

/-! ## A200221.P7557136352130972740

`A343879(n+1)+1-A325765(n)`
-/

namespace A200221.P7557136352130972740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343879 (n + 1) + (1 - A325765 n)

end

end A200221.P7557136352130972740

namespace A200221

/-- `A343879(n+1)+1-A325765(n)` -/
def P7557136352130972740.Spec : Prop :=
  ∀ n, P7557136352130972740.a n = A200221 (n + 1)

end A200221

/-! ## A200221.P12225795945635557630

`A343879(n+1)-A023443(A325765(n))`
-/

namespace A200221.P12225795945635557630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343879 (n + 1) - A023443 (A325765 n).toNat

end

end A200221.P12225795945635557630

namespace A200221

/-- `A343879(n+1)-A023443(A325765(n))` -/
def P12225795945635557630.Spec : Prop :=
  ∀ n, P12225795945635557630.a n = A200221 (n + 1)

end A200221

/-! ## A200221.P7944860443726091401

`A343879(n+1)-A338117(A100577(n+1))`
-/

namespace A200221.P7944860443726091401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343879 (n + 1) - A338117 (A100577 (n + 1)).toNat

end

end A200221.P7944860443726091401

namespace A200221

/-- `A343879(n+1)-A338117(A100577(n+1))` -/
def P7944860443726091401.Spec : Prop :=
  ∀ n, P7944860443726091401.a n = A200221 (n + 1)

end A200221

/-!
# A200222: G.f. satisfies: A(x) = 1 + Sum_{n>=1} (x*A(x))^(n^2) * (A(x)^n + 1/A(x)^n).

The programs for A200222, there is no canonical definition to state claims against.
-/

/-! ## A200222.P528987716537803278

`A008621(A151060(n)+A000125(n))`
-/

namespace A200222.P528987716537803278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A151060 n + A000125 n).toNat

end

end A200222.P528987716537803278

/-! ## A200222.P17333785097571834561

`A347710(A005893(n))+A005968(n)`
-/

namespace A200222.P17333785097571834561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347710 (A005893 n).toNat + A005968 n

end

end A200222.P17333785097571834561

/-! ## A200222.P8106095243057473559

`A035250(A355361(n)+A181337(n))`
-/

namespace A200222.P8106095243057473559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (A355361 n + A181337 n).toNat

end

end A200222.P8106095243057473559

/-!
# A200244: a(n)=1 iff binary weight of n-th prime is even.

The programs for A200244, the canonical program `A200244.P5861281741457501030` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200244 has offset 1).

The definition of A200244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200244.P4022799505911080298

`1-A200246(n+1)`
-/

namespace A200244.P4022799505911080298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A200246 (n + 1)

end

end A200244.P4022799505911080298

namespace A200244

/-- `1-A200246(n+1)` -/
def P4022799505911080298.Spec : Prop :=
  ∀ n, P4022799505911080298.a n = A200244 (n + 1)

end A200244

/-! ## A200244.P12077079473866414190

`val(A338524(n+1), 2)`
-/

namespace A200244.P12077079473866414190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A338524 (n + 1)).toNat 2

end

end A200244.P12077079473866414190

namespace A200244

/-- `val(A338524(n+1), 2)` -/
def P12077079473866414190.Spec : Prop :=
  ∀ n, (P12077079473866414190.a n : ℤ) = A200244 (n + 1)

end A200244

/-! ## A200244.P16375371646577252720

`log2(gcd(2, A014499(n+1)))`
-/

namespace A200244.P16375371646577252720
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A014499 (n + 1)) : ℝ)

end

end A200244.P16375371646577252720

namespace A200244

/-- `log2(gcd(2, A014499(n+1)))` -/
def P16375371646577252720.Spec : Prop :=
  ∀ n, P16375371646577252720.a n = (A200244 (n + 1) : ℝ)

end A200244

/-! ## A200244.P3840355952784683399

`char[A027700(n+1)-1]`
-/

namespace A200244.P3840355952784683399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027700 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A200244.P3840355952784683399

namespace A200244

/-- `char[A027700(n+1)-1]` -/
def P3840355952784683399.Spec : Prop :=
  ∀ n, (P3840355952784683399.a n : ℤ) = A200244 (n + 1)

end A200244

/-! ## A200244.P2398752923680430819

`and(1, A065081(n+1)+1)`
-/

namespace A200244.P2398752923680430819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A065081 (n + 1) + 1)

end

end A200244.P2398752923680430819

namespace A200244

/-- `and(1, A065081(n+1)+1)` -/
def P2398752923680430819.Spec : Prop :=
  ∀ n, P2398752923680430819.a n = A200244 (n + 1)

end A200244

/-! ## A200244.P6003728424233925231

`val((A162720(n+1)+1)²+1, 2)`
-/

namespace A200244.P6003728424233925231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((A162720 (n + 1) + 1) ^ 2 + 1).toNat 2

end

end A200244.P6003728424233925231

namespace A200244

/-- `val((A162720(n+1)+1)²+1, 2)` -/
def P6003728424233925231.Spec : Prop :=
  ∀ n, (P6003728424233925231.a n : ℤ) = A200244 (n + 1)

end A200244

/-! ## A200244.P5861281741457501030

`A059841(A014499(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A200244

/-- `A059841(A014499(n+1))` -/
def P5861281741457501030.Spec : Prop :=
  ∀ n, P5861281741457501030.a n = A200244 (n + 1)

theorem P5861281741457501030.correct : P5861281741457501030.Spec := by
  intro n
  simp only [A200244, Nat.add_sub_cancel]

end A200244

/-! ## A200244.P11488953538520542186

`A000035(A014499(n+1)+1)`
-/

namespace A200244.P11488953538520542186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A014499 (n + 1) + 1).toNat

end

end A200244.P11488953538520542186

namespace A200244

/-- `A000035(A014499(n+1)+1)` -/
def P11488953538520542186.Spec : Prop :=
  ∀ n, P11488953538520542186.a n = A200244 (n + 1)

end A200244

/-! ## A200244.P5300798612475782163

`A000035(A162720(n+1)+1)`
-/

namespace A200244.P5300798612475782163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A162720 (n + 1) + 1).toNat

end

end A200244.P5300798612475782163

namespace A200244

/-- `A000035(A162720(n+1)+1)` -/
def P5300798612475782163.Spec : Prop :=
  ∀ n, P5300798612475782163.a n = A200244 (n + 1)

end A200244

/-! ## A200244.P490557718957623667

`A262808(2*A014499(n+1))`
-/

namespace A200244.P490557718957623667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262808 (2 * A014499 (n + 1)).toNat

end

end A200244.P490557718957623667

namespace A200244

/-- `A262808(2*A014499(n+1))` -/
def P490557718957623667.Spec : Prop :=
  ∀ n, P490557718957623667.a n = A200244 (n + 1)

end A200244

/-! ## A200244.P266187556211909628

`and(A054977(n), A080085(n+1))`
-/

namespace A200244.P266187556211909628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A080085 (n + 1))

end

end A200244.P266187556211909628

namespace A200244

/-- `and(A054977(n), A080085(n+1))` -/
def P266187556211909628.Spec : Prop :=
  ∀ n, P266187556211909628.a n = A200244 (n + 1)

end A200244

/-! ## A200244.P434300568714097928

`and(A057427(n), A080085(n+1))`
-/

namespace A200244.P434300568714097928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A080085 (n + 1))

end

end A200244.P434300568714097928

namespace A200244

/-- `and(A057427(n), A080085(n+1))` -/
def P434300568714097928.Spec : Prop :=
  ∀ n, P434300568714097928.a n = A200244 (n + 1)

end A200244

/-! ## A200244.P16933341132518839749

`A065368((A065081(n+1)+1)²)`
-/

namespace A200244.P16933341132518839749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065368 ((A065081 (n + 1) + 1) ^ 2).toNat

end

end A200244.P16933341132518839749

namespace A200244

/-- `A065368((A065081(n+1)+1)²)` -/
def P16933341132518839749.Spec : Prop :=
  ∀ n, P16933341132518839749.a n = A200244 (n + 1)

end A200244

/-! ## A200244.P14216002626955132069

`A007814(A014499(n+1)²+2)`
-/

namespace A200244.P14216002626955132069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A014499 (n + 1) ^ 2 + 2).toNat

end

end A200244.P14216002626955132069

namespace A200244

/-- `A007814(A014499(n+1)²+2)` -/
def P14216002626955132069.Spec : Prop :=
  ∀ n, P14216002626955132069.a n = A200244 (n + 1)

end A200244

/-! ## A200244.P11585120597462905322

`and(1, A016760(n)+A014499(n+1))`
-/

namespace A200244.P11585120597462905322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A016760 n + A014499 (n + 1))

end

end A200244.P11585120597462905322

namespace A200244

/-- `and(1, A016760(n)+A014499(n+1))` -/
def P11585120597462905322.Spec : Prop :=
  ∀ n, P11585120597462905322.a n = A200244 (n + 1)

end A200244

/-! ## A200244.P13837363928445797169

`and(1, A016820(n)+A014499(n+1))`
-/

namespace A200244.P13837363928445797169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A016820 n + A014499 (n + 1))

end

end A200244.P13837363928445797169

namespace A200244

/-- `and(1, A016820(n)+A014499(n+1))` -/
def P13837363928445797169.Spec : Prop :=
  ∀ n, P13837363928445797169.a n = A200244 (n + 1)

end A200244

/-! ## A200244.P18424670843787819588

`and(1, (A014499(n+1)+A008417(n))²)`
-/

namespace A200244.P18424670843787819588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A014499 (n + 1) + A008417 n) ^ 2)

end

end A200244.P18424670843787819588

namespace A200244

/-- `and(1, (A014499(n+1)+A008417(n))²)` -/
def P18424670843787819588.Spec : Prop :=
  ∀ n, P18424670843787819588.a n = A200244 (n + 1)

end A200244

/-! ## A200244.P6691254969625902183

`and(1, A282997(n+1)+A014499(n+1))`
-/

namespace A200244.P6691254969625902183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A282997 (n + 1) + A014499 (n + 1))

end

end A200244.P6691254969625902183

namespace A200244

/-- `and(1, A282997(n+1)+A014499(n+1))` -/
def P6691254969625902183.Spec : Prop :=
  ∀ n, P6691254969625902183.a n = A200244 (n + 1)

end A200244

/-! ## A200244.P1677431481846534487

`A125184(A007814(A014499(n+1))²)`
-/

namespace A200244.P1677431481846534487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125184 (A007814 (A014499 (n + 1)).toNat ^ 2).toNat

end

end A200244.P1677431481846534487

namespace A200244

/-- `A125184(A007814(A014499(n+1))²)` -/
def P1677431481846534487.Spec : Prop :=
  ∀ n, P1677431481846534487.a n = A200244 (n + 1)

end A200244

/-!
# A200245: Partial sums of A200244.

The programs for A200245, the canonical program `A200245.P5209616361364891102` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200245 has offset 1).

The definition of A200245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200245.P5209616361364891102

`∑[A200244(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A200245

/-- `∑[A200244(n+1)]` -/
def P5209616361364891102.Spec : Prop :=
  ∀ n, P5209616361364891102.a n = A200245 (n + 1)

theorem P5209616361364891102.correct : P5209616361364891102.Spec := by
  intro n
  simp only [A200245, Nat.add_sub_cancel]

end A200245

/-! ## A200245.P3922295785199180867

`∑[1-A200246(n+1)]`
-/

namespace A200245.P3922295785199180867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A200246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P3922295785199180867

namespace A200245

/-- `∑[1-A200246(n+1)]` -/
def P3922295785199180867.Spec : Prop :=
  ∀ n, P3922295785199180867.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P5462076938399611366

`1-A200247(n+1)+n`
-/

namespace A200245.P5462076938399611366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A200247 (n + 1) + (n : ℤ)

end

end A200245.P5462076938399611366

namespace A200245

/-- `1-A200247(n+1)+n` -/
def P5462076938399611366.Spec : Prop :=
  ∀ n, P5462076938399611366.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P17537398700570051353

`(n+1-A130911(n+1))/2`
-/

namespace A200245.P17537398700570051353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A130911 (n + 1) : ℚ) / 2

end

end A200245.P17537398700570051353

namespace A200245

/-- `(n+1-A130911(n+1))/2` -/
def P17537398700570051353.Spec : Prop :=
  ∀ n, P17537398700570051353.a n = (A200245 (n + 1) : ℚ)

end A200245

/-! ## A200245.P10071168445103879985

`∑[A059841(A014499(n+1))]`
-/

namespace A200245.P10071168445103879985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A014499 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P10071168445103879985

namespace A200245

/-- `∑[A059841(A014499(n+1))]` -/
def P10071168445103879985.Spec : Prop :=
  ∀ n, P10071168445103879985.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P14313951306132171778

`∑[A007814(A014499(n+1)²+2)]`
-/

namespace A200245.P14313951306132171778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A014499 (n + 1) ^ 2 + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P14313951306132171778

namespace A200245

/-- `∑[A007814(A014499(n+1)²+2)]` -/
def P14313951306132171778.Spec : Prop :=
  ∀ n, P14313951306132171778.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P15372633417675823714

`∑[A010060(A091931(n+1))]`
-/

namespace A200245.P15372633417675823714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A091931 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P15372633417675823714

namespace A200245

/-- `∑[A010060(A091931(n+1))]` -/
def P15372633417675823714.Spec : Prop :=
  ∀ n, P15372633417675823714.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P296369063039501154

`∑[A010060(lt[A001222(2*n+1), 2])]`
-/

namespace A200245.P296369063039501154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P296369063039501154

namespace A200245

/-- `∑[A010060(lt[A001222(2*n+1), 2])]` -/
def P296369063039501154.Spec : Prop :=
  ∀ n, P296369063039501154.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P7885869245584328137

`∑[A000120(A057023(n+1))%2]-1`
-/

namespace A200245.P7885869245584328137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A057023 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A200245.P7885869245584328137

namespace A200245

/-- `∑[A000120(A057023(n+1))%2]-1` -/
def P7885869245584328137.Spec : Prop :=
  ∀ n, P7885869245584328137.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P17679975060126469179

`∑[A010060(A039915(n+1))]`
-/

namespace A200245.P17679975060126469179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A039915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P17679975060126469179

namespace A200245

/-- `∑[A010060(A039915(n+1))]` -/
def P17679975060126469179.Spec : Prop :=
  ∀ n, P17679975060126469179.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P8015675595711242817

`∑[1-A010060(A000040(n+1))]`
-/

namespace A200245.P8015675595711242817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P8015675595711242817

namespace A200245

/-- `∑[1-A010060(A000040(n+1))]` -/
def P8015675595711242817.Spec : Prop :=
  ∀ n, P8015675595711242817.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P3558391695331921879

`∑[1-A010060(A088146(n+1))]`
-/

namespace A200245.P3558391695331921879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 (A088146 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P3558391695331921879

namespace A200245

/-- `∑[1-A010060(A088146(n+1))]` -/
def P3558391695331921879.Spec : Prop :=
  ∀ n, P3558391695331921879.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P17648520973491400990

`∑[1-A010060(A008578(n+2))]`
-/

namespace A200245.P17648520973491400990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P17648520973491400990

namespace A200245

/-- `∑[1-A010060(A008578(n+2))]` -/
def P17648520973491400990.Spec : Prop :=
  ∀ n, P17648520973491400990.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P16768743059880881074

`∑[A010060(record[A000010(n+1)])]-1`
-/

namespace A200245.P16768743059880881074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A200245.P16768743059880881074

namespace A200245

/-- `∑[A010060(record[A000010(n+1)])]-1` -/
def P16768743059880881074.Spec : Prop :=
  ∀ n, P16768743059880881074.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P13293675687126042214

`∑[A010059(A000040(n+1))]`
-/

namespace A200245.P13293675687126042214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P13293675687126042214

namespace A200245

/-- `∑[A010059(A000040(n+1))]` -/
def P13293675687126042214.Spec : Prop :=
  ∀ n, P13293675687126042214.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P8337171577532599395

`∑[A010059(A008578(n+2))]`
-/

namespace A200245.P8337171577532599395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P8337171577532599395

namespace A200245

/-- `∑[A010059(A008578(n+2))]` -/
def P8337171577532599395.Spec : Prop :=
  ∀ n, P8337171577532599395.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P33012447995487517

`∑[A010059(A001747(n+2)/2)]`
-/

namespace A200245.P33012447995487517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P33012447995487517

namespace A200245

/-- `∑[A010059(A001747(n+2)/2)]` -/
def P33012447995487517.Spec : Prop :=
  ∀ n, P33012447995487517.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P17905511470041109036

`∑[A010060(A072055(n+1))]`
-/

namespace A200245.P17905511470041109036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A072055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P17905511470041109036

namespace A200245

/-- `∑[A010060(A072055(n+1))]` -/
def P17905511470041109036.Spec : Prop :=
  ∀ n, P17905511470041109036.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P699946937047478610

`∑[A010059(A088146(n+1))]`
-/

namespace A200245.P699946937047478610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A088146 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P699946937047478610

namespace A200245

/-- `∑[A010059(A088146(n+1))]` -/
def P699946937047478610.Spec : Prop :=
  ∀ n, P699946937047478610.a n = A200245 (n + 1)

end A200245

/-! ## A200245.P11129815752717124294

`∑[A010059(A001747(n+2))]`
-/

namespace A200245.P11129815752717124294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A001747 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P11129815752717124294

namespace A200245

/-- `∑[A010059(A001747(n+2))]` -/
def P11129815752717124294.Spec : Prop :=
  ∀ n, P11129815752717124294.a n = A200245 (n + 1)

end A200245

/-!
# A200246: a(n)=1 iff binary weight of n-th prime is odd.

The programs for A200246, the canonical program `A200246.P185476321665765473` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200246 has offset 1).

The definition of A200246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200246.P185476321665765473

`1-A200244(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A200246

/-- `1-A200244(n+1)` -/
def P185476321665765473.Spec : Prop :=
  ∀ n, P185476321665765473.a n = A200246 (n + 1)

theorem P185476321665765473.correct : P185476321665765473.Spec := by
  intro n
  simp only [A200246, Nat.add_sub_cancel]

end A200246

/-! ## A200246.P1331253209926768370

`A014499(n+1)%2`
-/

namespace A200246.P1331253209926768370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014499 (n + 1)) 2

end

end A200246.P1331253209926768370

namespace A200246

/-- `A014499(n+1)%2` -/
def P1331253209926768370.Spec : Prop :=
  ∀ n, P1331253209926768370.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P10336254781923146702

`A084421(n+1)%2`
-/

namespace A200246.P10336254781923146702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084421 (n + 1)) 2

end

end A200246.P10336254781923146702

namespace A200246

/-- `A084421(n+1)%2` -/
def P10336254781923146702.Spec : Prop :=
  ∀ n, P10336254781923146702.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P10939868248996032178

`A162720(n+1)%2`
-/

namespace A200246.P10939868248996032178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162720 (n + 1)) 2

end

end A200246.P10939868248996032178

namespace A200246

/-- `A162720(n+1)%2` -/
def P10939868248996032178.Spec : Prop :=
  ∀ n, P10939868248996032178.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P14459402784068797152

`A338524(n+1)%2`
-/

namespace A200246.P14459402784068797152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338524 (n + 1)) 2

end

end A200246.P14459402784068797152

namespace A200246

/-- `A338524(n+1)%2` -/
def P14459402784068797152.Spec : Prop :=
  ∀ n, P14459402784068797152.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P15743258475553233496

`and(1, A065081(n+1))`
-/

namespace A200246.P15743258475553233496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A065081 (n + 1))

end

end A200246.P15743258475553233496

namespace A200246

/-- `and(1, A065081(n+1))` -/
def P15743258475553233496.Spec : Prop :=
  ∀ n, P15743258475553233496.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P2588798403829214051

`char[A027698(n+1)-1]`
-/

namespace A200246.P2588798403829214051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027698 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A200246.P2588798403829214051

namespace A200246

/-- `char[A027698(n+1)-1]` -/
def P2588798403829214051.Spec : Prop :=
  ∀ n, (P2588798403829214051.a n : ℤ) = A200246 (n + 1)

end A200246

/-! ## A200246.P1035582955176658477

`A000035(A014499(n+1))`
-/

namespace A200246.P1035582955176658477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A014499 (n + 1)).toNat

end

end A200246.P1035582955176658477

namespace A200246

/-- `A000035(A014499(n+1))` -/
def P1035582955176658477.Spec : Prop :=
  ∀ n, P1035582955176658477.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P426860000344065475

`A000035(A162720(n+1))`
-/

namespace A200246.P426860000344065475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A162720 (n + 1)).toNat

end

end A200246.P426860000344065475

namespace A200246

/-- `A000035(A162720(n+1))` -/
def P426860000344065475.Spec : Prop :=
  ∀ n, P426860000344065475.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P6320800807456219970

`A065368(A065081(n+1)²)`
-/

namespace A200246.P6320800807456219970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065368 (A065081 (n + 1) ^ 2).toNat

end

end A200246.P6320800807456219970

namespace A200246

/-- `A065368(A065081(n+1)²)` -/
def P6320800807456219970.Spec : Prop :=
  ∀ n, P6320800807456219970.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P4076688302915231765

`A059841(A014499(n+1)+1)`
-/

namespace A200246.P4076688302915231765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A014499 (n + 1) + 1).toNat

end

end A200246.P4076688302915231765

namespace A200246

/-- `A059841(A014499(n+1)+1)` -/
def P4076688302915231765.Spec : Prop :=
  ∀ n, P4076688302915231765.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P10334918967714386918

`and(A008349(n), A014499(n+1))`
-/

namespace A200246.P10334918967714386918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A014499 (n + 1))

end

end A200246.P10334918967714386918

namespace A200246

/-- `and(A008349(n), A014499(n+1))` -/
def P10334918967714386918.Spec : Prop :=
  ∀ n, P10334918967714386918.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P3645853289572852317

`and(A008362(n), A014499(n+1))`
-/

namespace A200246.P3645853289572852317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A014499 (n + 1))

end

end A200246.P3645853289572852317

namespace A200246

/-- `and(A008362(n), A014499(n+1))` -/
def P3645853289572852317.Spec : Prop :=
  ∀ n, P3645853289572852317.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P6645890416601221898

`and(A008417(n), A014499(n+1))`
-/

namespace A200246.P6645890416601221898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A014499 (n + 1))

end

end A200246.P6645890416601221898

namespace A200246

/-- `and(A008417(n), A014499(n+1))` -/
def P6645890416601221898.Spec : Prop :=
  ∀ n, P6645890416601221898.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P9130154137113612555

`and(A008514(n), A014499(n+1))`
-/

namespace A200246.P9130154137113612555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 n) (A014499 (n + 1))

end

end A200246.P9130154137113612555

namespace A200246

/-- `and(A008514(n), A014499(n+1))` -/
def P9130154137113612555.Spec : Prop :=
  ∀ n, P9130154137113612555.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P6759527087183540173

`and(A014499(n+1), A016760(n))`
-/

namespace A200246.P6759527087183540173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014499 (n + 1)) (A016760 n)

end

end A200246.P6759527087183540173

namespace A200246

/-- `and(A014499(n+1), A016760(n))` -/
def P6759527087183540173.Spec : Prop :=
  ∀ n, P6759527087183540173.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P8752089682257131639

`and(A014499(n+1), A016820(n))`
-/

namespace A200246.P8752089682257131639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014499 (n + 1)) (A016820 n)

end

end A200246.P8752089682257131639

namespace A200246

/-- `and(A014499(n+1), A016820(n))` -/
def P8752089682257131639.Spec : Prop :=
  ∀ n, P8752089682257131639.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P3203411769636469853

`and(A001361(n+1), A014499(n+1))`
-/

namespace A200246.P3203411769636469853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001361 (n + 1)) (A014499 (n + 1))

end

end A200246.P3203411769636469853

namespace A200246

/-- `and(A001361(n+1), A014499(n+1))` -/
def P3203411769636469853.Spec : Prop :=
  ∀ n, P3203411769636469853.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P17629388431359008420

`and(A006687(n+1), A014499(n+1))`
-/

namespace A200246.P17629388431359008420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006687 (n + 1)) (A014499 (n + 1))

end

end A200246.P17629388431359008420

namespace A200246

/-- `and(A006687(n+1), A014499(n+1))` -/
def P17629388431359008420.Spec : Prop :=
  ∀ n, P17629388431359008420.a n = A200246 (n + 1)

end A200246

/-! ## A200246.P9887328190540378608

`and(A014499(n+1), A282997(n+1))`
-/

namespace A200246.P9887328190540378608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014499 (n + 1)) (A282997 (n + 1))

end

end A200246.P9887328190540378608

namespace A200246

/-- `and(A014499(n+1), A282997(n+1))` -/
def P9887328190540378608.Spec : Prop :=
  ∀ n, P9887328190540378608.a n = A200246 (n + 1)

end A200246

/-!
# A200247: Partial sums of A200246.

The programs for A200247, the canonical program `A200247.P10788717506110287263` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200247 has offset 1).

The definition of A200247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200247.P10788717506110287263

`∑[A200246(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A200247

/-- `∑[A200246(n+1)]` -/
def P10788717506110287263.Spec : Prop :=
  ∀ n, P10788717506110287263.a n = A200247 (n + 1)

theorem P10788717506110287263.correct : P10788717506110287263.Spec := by
  intro n
  simp only [A200247, Nat.add_sub_cancel]

end A200247

/-! ## A200247.P18055139445195559263

`∑[1-A200244(n+1)]`
-/

namespace A200247.P18055139445195559263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A200244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P18055139445195559263

namespace A200247

/-- `∑[1-A200244(n+1)]` -/
def P18055139445195559263.Spec : Prop :=
  ∀ n, P18055139445195559263.a n = A200247 (n + 1)

end A200247

/-! ## A200247.P18099193357445041668

`∑[A014499(n+1)%2]`
-/

namespace A200247.P18099193357445041668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014499 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P18099193357445041668

namespace A200247

/-- `∑[A014499(n+1)%2]` -/
def P18099193357445041668.Spec : Prop :=
  ∀ n, P18099193357445041668.a n = A200247 (n + 1)

end A200247

/-! ## A200247.P14009234827321109475

`1-A200245(n+1)+n`
-/

namespace A200247.P14009234827321109475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A200245 (n + 1) + (n : ℤ)

end

end A200247.P14009234827321109475

namespace A200247

/-- `1-A200245(n+1)+n` -/
def P14009234827321109475.Spec : Prop :=
  ∀ n, P14009234827321109475.a n = A200247 (n + 1)

end A200247

/-! ## A200247.P8424192854014686724

`∑[char[A027698(n+1)-1]]`
-/

namespace A200247.P8424192854014686724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027698 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P8424192854014686724

namespace A200247

/-- `∑[char[A027698(n+1)-1]]` -/
def P8424192854014686724.Spec : Prop :=
  ∀ n, (P8424192854014686724.a n : ℤ) = A200247 (n + 1)

end A200247

/-! ## A200247.P2641753961853214812

`(A130911(n+1)+n+1)/2`
-/

namespace A200247.P2641753961853214812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130911 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A200247.P2641753961853214812

namespace A200247

/-- `(A130911(n+1)+n+1)/2` -/
def P2641753961853214812.Spec : Prop :=
  ∀ n, P2641753961853214812.a n = (A200247 (n + 1) : ℚ)

end A200247

/-! ## A200247.P2684189762155534966

`∑[A059841(A014499(n+1)+1)]`
-/

namespace A200247.P2684189762155534966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A014499 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P2684189762155534966

namespace A200247

/-- `∑[A059841(A014499(n+1)+1)]` -/
def P2684189762155534966.Spec : Prop :=
  ∀ n, P2684189762155534966.a n = A200247 (n + 1)

end A200247

/-! ## A200247.P10379337675701710733

`A200245(n+1)+A130911(n+1)`
-/

namespace A200247.P10379337675701710733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200245 (n + 1) + A130911 (n + 1)

end

end A200247.P10379337675701710733

namespace A200247

/-- `A200245(n+1)+A130911(n+1)` -/
def P10379337675701710733.Spec : Prop :=
  ∀ n, P10379337675701710733.a n = A200247 (n + 1)

end A200247

/-! ## A200247.P16826534836674175855

`∑[A007814(A014499(n+1)²+1)]`
-/

namespace A200247.P16826534836674175855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A014499 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P16826534836674175855

namespace A200247

/-- `∑[A007814(A014499(n+1)²+1)]` -/
def P16826534836674175855.Spec : Prop :=
  ∀ n, P16826534836674175855.a n = A200247 (n + 1)

end A200247

/-! ## A200247.P11466141544648767342

`∑[1-A010060(A091931(n+1))]`
-/

namespace A200247.P11466141544648767342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 (A091931 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P11466141544648767342

namespace A200247

/-- `∑[1-A010060(A091931(n+1))]` -/
def P11466141544648767342.Spec : Prop :=
  ∀ n, P11466141544648767342.a n = A200247 (n + 1)

end A200247

/-! ## A200247.P10403098953345778122

`∑[A010059(A091931(n+1))]`
-/

namespace A200247.P10403098953345778122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A091931 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P10403098953345778122

namespace A200247

/-- `∑[A010059(A091931(n+1))]` -/
def P10403098953345778122.Spec : Prop :=
  ∀ n, P10403098953345778122.a n = A200247 (n + 1)

end A200247

/-! ## A200247.P2184585636229946889

`∑[A010060(A000040(n+1))]`
-/

namespace A200247.P2184585636229946889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P2184585636229946889

namespace A200247

/-- `∑[A010060(A000040(n+1))]` -/
def P2184585636229946889.Spec : Prop :=
  ∀ n, P2184585636229946889.a n = A200247 (n + 1)

end A200247

/-! ## A200247.P4700182636299099693

`∑[A010060(A088146(n+1))]`
-/

namespace A200247.P4700182636299099693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A088146 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P4700182636299099693

namespace A200247

/-- `∑[A010060(A088146(n+1))]` -/
def P4700182636299099693.Spec : Prop :=
  ∀ n, P4700182636299099693.a n = A200247 (n + 1)

end A200247

/-! ## A200247.P3629011837398160821

`∑[A010060(A008578(n+2))]`
-/

namespace A200247.P3629011837398160821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P3629011837398160821

namespace A200247

/-- `∑[A010060(A008578(n+2))]` -/
def P3629011837398160821.Spec : Prop :=
  ∀ n, P3629011837398160821.a n = A200247 (n + 1)

end A200247

/-! ## A200247.P8728191818914755525

`∑[A010060(record[A006530(n+2)])]`
-/

namespace A200247.P8728191818914755525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P8728191818914755525

namespace A200247

/-- `∑[A010060(record[A006530(n+2)])]` -/
def P8728191818914755525.Spec : Prop :=
  ∀ n, P8728191818914755525.a n = A200247 (n + 1)

end A200247

/-! ## A200247.P6731107332777767218

`∑[A010060(record[A020639(n+2)])]`
-/

namespace A200247.P6731107332777767218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P6731107332777767218

namespace A200247

/-- `∑[A010060(record[A020639(n+2)])]` -/
def P6731107332777767218.Spec : Prop :=
  ∀ n, P6731107332777767218.a n = A200247 (n + 1)

end A200247

/-! ## A200247.P6237871789082574380

`∑[A010060(A039915(n+1)+1)]`
-/

namespace A200247.P6237871789082574380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A039915 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P6237871789082574380

namespace A200247

/-- `∑[A010060(A039915(n+1)+1)]` -/
def P6237871789082574380.Spec : Prop :=
  ∀ n, P6237871789082574380.a n = A200247 (n + 1)

end A200247

/-! ## A200247.P16618352625380024290

`∑[A010060(A040976(n+1)+2)]`
-/

namespace A200247.P16618352625380024290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A040976 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P16618352625380024290

namespace A200247

/-- `∑[A010060(A040976(n+1)+2)]` -/
def P16618352625380024290.Spec : Prop :=
  ∀ n, P16618352625380024290.a n = A200247 (n + 1)

end A200247

/-! ## A200247.P15521794483700489543

`∑[A010060(record[A000010(n+1)+1])]`
-/

namespace A200247.P15521794483700489543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P15521794483700489543

namespace A200247

/-- `∑[A010060(record[A000010(n+1)+1])]` -/
def P15521794483700489543.Spec : Prop :=
  ∀ n, P15521794483700489543.a n = A200247 (n + 1)

end A200247

/-! ## A200247.P8992448960518697277

`∑[A010060(eq[1, A001222(n+1)]+1)]`
-/

namespace A200247.P8992448960518697277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P8992448960518697277

namespace A200247

/-- `∑[A010060(eq[1, A001222(n+1)]+1)]` -/
def P8992448960518697277.Spec : Prop :=
  ∀ n, P8992448960518697277.a n = A200247 (n + 1)

end A200247

/-!
# A200248: The number of (simultaneously) fixed and isolated points in the digraph representation of all functions f:{1,2,...,n}->{1,2,...,n}.

The programs for A200248, there is no canonical definition to state claims against.
-/

/-! ## A200248.P17860808323352138652

`lcm(n, A350079(∑[n]))`
-/

namespace A200248.P17860808323352138652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A350079 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A200248.P17860808323352138652

/-! ## A200248.P7215075429924225409

`n*A350078(A002620(n))`
-/

namespace A200248.P7215075429924225409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A350078 (A002620 n).toNat

end

end A200248.P7215075429924225409

/-! ## A200248.P17351623831599700873

`n*A060281(A000124(floor(n-atan(n))))`
-/

namespace A200248.P17351623831599700873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A060281 (A000124 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat).toNat

end

end A200248.P17351623831599700873

/-! ## A200248.P13627527982045843426

`A225723(A212342(n))-A000007(n)`
-/

namespace A200248.P13627527982045843426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225723 (A212342 n).toNat - A000007 n

end

end A200248.P13627527982045843426

/-! ## A200248.P13987738303433999777

`A350079(A000217(n))+A010815(A347677(n+1))`
-/

namespace A200248.P13987738303433999777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350079 (A000217 n).toNat + A010815 (A347677 (n + 1)).toNat

end

end A200248.P13987738303433999777

/-!
# A200249: Number of 0..5 arrays x(0..n-1) of n elements with each no smaller than the sum of its previous elements modulo 6.

The programs for A200249, the canonical program `A200249.P11150527418396109885` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200249 has offset 1).

The definition of A200249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200249.P5860785450958350311

`ogf((6+3x)/(1-3x-2x^2))`
-/

namespace A200249.P5860785450958350311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 3] [1, -3, -2] n

end

end A200249.P5860785450958350311

namespace A200249

/-- `ogf((6+3x)/(1-3x-2x^2))` -/
def P5860785450958350311.Spec : Prop :=
  ∀ n, P5860785450958350311.a n = A200249 (n + 1)

end A200249

/-! ## A200249.P11150527418396109885

`2*a(n-2)+3*a(n-1)` with `a(0)=6, a(1)=21`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A200249

/-- `2*a(n-2)+3*a(n-1)` -/
def P11150527418396109885.Spec : Prop :=
  ∀ n, (P11150527418396109885.a n : ℤ) = A200249 (n + 1)

theorem P11150527418396109885.correct : P11150527418396109885.Spec := by
  intro n
  simp only [A200249, Nat.add_sub_cancel]

end A200249

/-! ## A200249.P5373839420985152878

`3*A007484(n)`
-/

namespace A200249.P5373839420985152878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007484 n

end

end A200249.P5373839420985152878

namespace A200249

/-- `3*A007484(n)` -/
def P5373839420985152878.Spec : Prop :=
  ∀ n, P5373839420985152878.a n = A200249 (n + 1)

end A200249

/-! ## A200249.P14558429210352853626

`Δ[3*A371301(n)]`
-/

namespace A200249.P14558429210352853626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A371301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200249.P14558429210352853626

namespace A200249

/-- `Δ[3*A371301(n)]` -/
def P14558429210352853626.Spec : Prop :=
  ∀ n, P14558429210352853626.a n = A200249 (n + 1)

end A200249

/-! ## A200249.P15563627047754146317

`3*A007481(Δ[n²])`
-/

namespace A200249.P15563627047754146317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007481 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A200249.P15563627047754146317

namespace A200249

/-- `3*A007481(Δ[n²])` -/
def P15563627047754146317.Spec : Prop :=
  ∀ n, P15563627047754146317.a n = A200249 (n + 1)

end A200249

/-! ## A200249.P10529145800931384921

`Δ[A180143(n+1)/2]`
-/

namespace A200249.P10529145800931384921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180143 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200249.P10529145800931384921

namespace A200249

/-- `Δ[A180143(n+1)/2]` -/
def P10529145800931384921.Spec : Prop :=
  ∀ n, P10529145800931384921.a n = (A200249 (n + 1) : ℚ)

end A200249

/-! ## A200249.P6397122612404645899

`3/2*A055099(n+1)`
-/

namespace A200249.P6397122612404645899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A055099 (n + 1) : ℚ)

end

end A200249.P6397122612404645899

namespace A200249

/-- `3/2*A055099(n+1)` -/
def P6397122612404645899.Spec : Prop :=
  ∀ n, P6397122612404645899.a n = (A200249 (n + 1) : ℚ)

end A200249

/-! ## A200249.P5595325286309061217

`lcm(A007484(n), A174971(n))`
-/

namespace A200249.P5595325286309061217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007484 n) (A174971 n)

end

end A200249.P5595325286309061217

namespace A200249

/-- `lcm(A007484(n), A174971(n))` -/
def P5595325286309061217.Spec : Prop :=
  ∀ n, (P5595325286309061217.a n : ℤ) = A200249 (n + 1)

end A200249

/-! ## A200249.P17240852911795122189

`A007482(n)+Δ[A007484(n)]`
-/

namespace A200249.P17240852911795122189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n + (f1 (n + 1) - f1 n)

end

end A200249.P17240852911795122189

namespace A200249

/-- `A007482(n)+Δ[A007484(n)]` -/
def P17240852911795122189.Spec : Prop :=
  ∀ n, P17240852911795122189.a n = A200249 (n + 1)

end A200249

/-! ## A200249.P7348131150585484398

`Δ[A180144(n)+A180143(n)]`
-/

namespace A200249.P7348131150585484398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180144 n + A180143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200249.P7348131150585484398

namespace A200249

/-- `Δ[A180144(n)+A180143(n)]` -/
def P7348131150585484398.Spec : Prop :=
  ∀ n, P7348131150585484398.a n = A200249 (n + 1)

end A200249

/-! ## A200249.P15457132577503093016

`A055099(n+1)+A007484(n)`
-/

namespace A200249.P15457132577503093016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 (n + 1) + A007484 n

end

end A200249.P15457132577503093016

namespace A200249

/-- `A055099(n+1)+A007484(n)` -/
def P15457132577503093016.Spec : Prop :=
  ∀ n, P15457132577503093016.a n = A200249 (n + 1)

end A200249

/-! ## A200249.P14562653293312284179

`A055099(n)+A007483(n+1)`
-/

namespace A200249.P14562653293312284179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 n + A007483 (n + 1)

end

end A200249.P14562653293312284179

namespace A200249

/-- `A055099(n)+A007483(n+1)` -/
def P14562653293312284179.Spec : Prop :=
  ∀ n, P14562653293312284179.a n = A200249 (n + 1)

end A200249

/-! ## A200249.P17783078645604510215

`A104934(n+2)-A007484(n)`
-/

namespace A200249.P17783078645604510215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 (n + 2) - A007484 n

end

end A200249.P17783078645604510215

namespace A200249

/-- `A104934(n+2)-A007484(n)` -/
def P17783078645604510215.Spec : Prop :=
  ∀ n, P17783078645604510215.a n = A200249 (n + 1)

end A200249

/-! ## A200249.P6008166696336343588

`Δ[2*A007483(n)]-A206776(n)`
-/

namespace A200249.P6008166696336343588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A206776 n

end

end A200249.P6008166696336343588

namespace A200249

/-- `Δ[2*A007483(n)]-A206776(n)` -/
def P6008166696336343588.Spec : Prop :=
  ∀ n, P6008166696336343588.a n = A200249 (n + 1)

end A200249

/-! ## A200249.P4105530571505448484

`A246313(n+2)-A189604(n+1)`
-/

namespace A200249.P4105530571505448484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246313 (n + 2) - A189604 (n + 1)

end

end A200249.P4105530571505448484

namespace A200249

/-- `A246313(n+2)-A189604(n+1)` -/
def P4105530571505448484.Spec : Prop :=
  ∀ n, P4105530571505448484.a n = A200249 (n + 1)

end A200249

/-! ## A200249.P6931022376223440563

`A055099(n)+A007455(2*n+3)`
-/

namespace A200249.P6931022376223440563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 n + A007455 (2 * n + 3)

end

end A200249.P6931022376223440563

namespace A200249

/-- `A055099(n)+A007455(2*n+3)` -/
def P6931022376223440563.Spec : Prop :=
  ∀ n, P6931022376223440563.a n = A200249 (n + 1)

end A200249

/-! ## A200249.P5085433648846824159

`A007481(2*n+3)-A055099(n)`
-/

namespace A200249.P5085433648846824159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007481 (2 * n + 3) - A055099 n

end

end A200249.P5085433648846824159

namespace A200249

/-- `A007481(2*n+3)-A055099(n)` -/
def P5085433648846824159.Spec : Prop :=
  ∀ n, P5085433648846824159.a n = A200249 (n + 1)

end A200249

/-! ## A200249.P14689407167476189264

`A055099(n+1)+A007481(2*n+1)`
-/

namespace A200249.P14689407167476189264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 (n + 1) + A007481 (2 * n + 1)

end

end A200249.P14689407167476189264

namespace A200249

/-- `A055099(n+1)+A007481(2*n+1)` -/
def P14689407167476189264.Spec : Prop :=
  ∀ n, P14689407167476189264.a n = A200249 (n + 1)

end A200249

/-! ## A200249.P11270671054398317717

`(A007484(n+1)+A007483(n+1))/2`
-/

namespace A200249.P11270671054398317717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007484 (n + 1) + A007483 (n + 1) : ℚ) / 2

end

end A200249.P11270671054398317717

namespace A200249

/-- `(A007484(n+1)+A007483(n+1))/2` -/
def P11270671054398317717.Spec : Prop :=
  ∀ n, P11270671054398317717.a n = (A200249 (n + 1) : ℚ)

end A200249

/-! ## A200249.P4027092921567500073

`A007483(n+1)+A104934(n+1)/2`
-/

namespace A200249.P4027092921567500073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007483 (n + 1) : ℚ) + (A104934 (n + 1) : ℚ) / 2

end

end A200249.P4027092921567500073

namespace A200249

/-- `A007483(n+1)+A104934(n+1)/2` -/
def P4027092921567500073.Spec : Prop :=
  ∀ n, P4027092921567500073.a n = (A200249 (n + 1) : ℚ)

end A200249

/-!
# A200250: Number of 0..7 arrays x(0..n-1) of n elements with each no smaller than the sum of its previous elements modulo 8.

The programs for A200250, there is no canonical definition to state claims against.
-/

/-! ## A200250.P15653508916622200192

`A200251(A055999(n+4))`
-/

namespace A200250.P15653508916622200192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A055999 (n + 4)).toNat

end

end A200250.P15653508916622200192

/-! ## A200250.P2883596103556345084

`A200251(A027379(n+5)-3)`
-/

namespace A200250.P2883596103556345084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A027379 (n + 5) - 3).toNat

end

end A200250.P2883596103556345084

/-! ## A200250.P6732318492861816559

`A200251(A034856(n+6)-4)`
-/

namespace A200250.P6732318492861816559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A034856 (n + 6) - 4).toNat

end

end A200250.P6732318492861816559

/-! ## A200250.P15494726278725065756

`A200251(A000096(n+6)-5)`
-/

namespace A200250.P15494726278725065756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A000096 (n + 6) - 5).toNat

end

end A200250.P15494726278725065756

/-! ## A200250.P10241398686107938774

`A200251(A000124(n+7)-7)`
-/

namespace A200250.P10241398686107938774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A000124 (n + 7) - 7).toNat

end

end A200250.P10241398686107938774

/-! ## A200250.P4454094530385606305

`A200251(eq[7, A004736(n+1)]+1)`
-/

namespace A200250.P4454094530385606305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A200250.P4454094530385606305

/-! ## A200250.P18244338298176094085

`A200251(A000217(n+6)+n+1)`
-/

namespace A200250.P18244338298176094085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A200250.P18244338298176094085

/-!
# A200251: T(n,k)=Number of 0..k arrays x(0..n-1) of n elements with each no smaller than the sum of its previous elements modulo (k+1).

The programs for A200251, there is no canonical definition to state claims against.
-/

/-! ## A200251.P10317380975458608279

`A200469(n+1)+A185284(A000593(n+1))`
-/

namespace A200251.P10317380975458608279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (n + 1) + A185284 (A000593 (n + 1)).toNat

end

end A200251.P10317380975458608279

/-! ## A200251.P5874040850234085434

`A200469(n+1)+A133010(A321738(n+1))`
-/

namespace A200251.P5874040850234085434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (n + 1) + A133010 (A321738 (n + 1)).toNat

end

end A200251.P5874040850234085434

/-! ## A200251.P1879619671560010870

`A324870(A185267(n+1))+A200469(n+1)`
-/

namespace A200251.P1879619671560010870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (A185267 (n + 1)).toNat + A200469 (n + 1)

end

end A200251.P1879619671560010870

/-! ## A200251.P3096918000839182256

`A361854(A173675(n+4))+A200469(n+1)`
-/

namespace A200251.P3096918000839182256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361854 (A173675 (n + 4)).toNat + A200469 (n + 1)

end

end A200251.P3096918000839182256

/-!
# A200252: Number of 0..n arrays x(0..2) of 3 elements with each no smaller than the sum of its previous elements modulo (n+1).

The programs for A200252, the canonical program `A200252.P17049552927583807876` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200252 has offset 1).

The definition of A200252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200252.P17049552927583807876

`∑[∑[lcm(2, n+1)+1]+1]+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A200252

/-- `∑[∑[lcm(2, n+1)+1]+1]+1` -/
def P17049552927583807876.Spec : Prop :=
  ∀ n, (P17049552927583807876.a n : ℤ) = A200252 (n + 1)

theorem P17049552927583807876.correct : P17049552927583807876.Spec := by
  intro n
  simp only [A200252, Nat.add_sub_cancel]

end A200252

/-! ## A200252.P1239765899995433799

`(n/2+1)*ceil((n+3)²/2)`
-/

namespace A200252.P1239765899995433799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (⌈((n + 3) ^ 2 : ℚ) / 2⌉ : ℚ)

end

end A200252.P1239765899995433799

namespace A200252

/-- `(n/2+1)*ceil((n+3)²/2)` -/
def P1239765899995433799.Spec : Prop :=
  ∀ n, P1239765899995433799.a n = (A200252 (n + 1) : ℚ)

end A200252

/-! ## A200252.P960365866373505008

`A005997(n+1)+(n+2)²`
-/

namespace A200252.P960365866373505008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005997 (n + 1) + ((n + 2) ^ 2 : ℤ)

end

end A200252.P960365866373505008

namespace A200252

/-- `A005997(n+1)+(n+2)²` -/
def P960365866373505008.Spec : Prop :=
  ∀ n, P960365866373505008.a n = A200252 (n + 1)

end A200252

/-! ## A200252.P6130037469375445244

`∑[A309805(n+1)]+(n+2)²`
-/

namespace A200252.P6130037469375445244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 2) ^ 2 : ℤ)

end

end A200252.P6130037469375445244

namespace A200252

/-- `∑[A309805(n+1)]+(n+2)²` -/
def P6130037469375445244.Spec : Prop :=
  ∀ n, P6130037469375445244.a n = A200252 (n + 1)

end A200252

/-! ## A200252.P12671336834359506191

`A005996(n+1)+∑[n+2]+1`
-/

namespace A200252.P12671336834359506191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005996 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A200252.P12671336834359506191

namespace A200252

/-- `A005996(n+1)+∑[n+2]+1` -/
def P12671336834359506191.Spec : Prop :=
  ∀ n, P12671336834359506191.a n = A200252 (n + 1)

end A200252

/-! ## A200252.P7114226993374168713

`∑[n+4]+A005998(n+1)+n²`
-/

namespace A200252.P7114226993374168713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A005998 (n + 1) + (n ^ 2 : ℤ))

end

end A200252.P7114226993374168713

namespace A200252

/-- `∑[n+4]+A005998(n+1)+n²` -/
def P7114226993374168713.Spec : Prop :=
  ∀ n, P7114226993374168713.a n = A200252 (n + 1)

end A200252

/-! ## A200252.P15334095229829554247

`A199771(n+2)`
-/

namespace A200252.P15334095229829554247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199771 (n + 2)

end

end A200252.P15334095229829554247

namespace A200252

/-- `A199771(n+2)` -/
def P15334095229829554247.Spec : Prop :=
  ∀ n, P15334095229829554247.a n = A200252 (n + 1)

end A200252

/-! ## A200252.P485033542547053235

`(A138179(n+2)+n+2)/2`
-/

namespace A200252.P485033542547053235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138179 (n + 2) + (n + 2 : ℤ) : ℚ) / 2

end

end A200252.P485033542547053235

namespace A200252

/-- `(A138179(n+2)+n+2)/2` -/
def P485033542547053235.Spec : Prop :=
  ∀ n, P485033542547053235.a n = (A200252 (n + 1) : ℚ)

end A200252

/-! ## A200252.P12831772032366360848

`A005993(n)+A000292(n+2)`
-/

namespace A200252.P12831772032366360848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n + A000292 (n + 2)

end

end A200252.P12831772032366360848

namespace A200252

/-- `A005993(n)+A000292(n+2)` -/
def P12831772032366360848.Spec : Prop :=
  ∀ n, P12831772032366360848.a n = A200252 (n + 1)

end A200252

/-! ## A200252.P8187136448285264843

`A213779(n+2)-A002623(n)`
-/

namespace A200252.P8187136448285264843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213779 (n + 2) - A002623 n

end

end A200252.P8187136448285264843

namespace A200252

/-- `A213779(n+2)-A002623(n)` -/
def P8187136448285264843.Spec : Prop :=
  ∀ n, P8187136448285264843.a n = A200252 (n + 1)

end A200252

/-! ## A200252.P11534260893739948687

`A294172(n+2)-A006918(n)`
-/

namespace A200252.P11534260893739948687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294172 (n + 2) - A006918 n

end

end A200252.P11534260893739948687

namespace A200252

/-- `A294172(n+2)-A006918(n)` -/
def P11534260893739948687.Spec : Prop :=
  ∀ n, P11534260893739948687.a n = A200252 (n + 1)

end A200252

/-! ## A200252.P17590684353504358475

`A246695(n+1)+A093353(n+1)`
-/

namespace A200252.P17590684353504358475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246695 (n + 1) + A093353 (n + 1)

end

end A200252.P17590684353504358475

namespace A200252

/-- `A246695(n+1)+A093353(n+1)` -/
def P17590684353504358475.Spec : Prop :=
  ∀ n, P17590684353504358475.a n = A200252 (n + 1)

end A200252

/-! ## A200252.P15563645439440801839

`A049779(n+2)+A002623(n+1)`
-/

namespace A200252.P15563645439440801839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049779 (n + 2) + A002623 (n + 1)

end

end A200252.P15563645439440801839

namespace A200252

/-- `A049779(n+2)+A002623(n+1)` -/
def P15563645439440801839.Spec : Prop :=
  ∀ n, P15563645439440801839.a n = A200252 (n + 1)

end A200252

/-! ## A200252.P11330895016489850513

`A111710(n+2)+A002717(n+1)`
-/

namespace A200252.P11330895016489850513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111710 (n + 2) + A002717 (n + 1)

end

end A200252.P11330895016489850513

namespace A200252

/-- `A111710(n+2)+A002717(n+1)` -/
def P11330895016489850513.Spec : Prop :=
  ∀ n, P11330895016489850513.a n = A200252 (n + 1)

end A200252

/-! ## A200252.P11515693462524811327

`A254749(n+2)+A212967(n+1)`
-/

namespace A200252.P11515693462524811327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254749 (n + 2) + A212967 (n + 1)

end

end A200252.P11515693462524811327

namespace A200252

/-- `A254749(n+2)+A212967(n+1)` -/
def P11515693462524811327.Spec : Prop :=
  ∀ n, P11515693462524811327.a n = A200252 (n + 1)

end A200252

/-! ## A200252.P10562801737420162961

`A003451(n+6)+A000292(n+1)`
-/

namespace A200252.P10562801737420162961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003451 (n + 6) + A000292 (n + 1)

end

end A200252.P10562801737420162961

namespace A200252

/-- `A003451(n+6)+A000292(n+1)` -/
def P10562801737420162961.Spec : Prop :=
  ∀ n, P10562801737420162961.a n = A200252 (n + 1)

end A200252

/-! ## A200252.P15461321265970903811

`A000292(n+2)+A109622(n)+n`
-/

namespace A200252.P15461321265970903811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 2) + (A109622 n + (n : ℤ))

end

end A200252.P15461321265970903811

namespace A200252

/-- `A000292(n+2)+A109622(n)+n` -/
def P15461321265970903811.Spec : Prop :=
  ∀ n, P15461321265970903811.a n = A200252 (n + 1)

end A200252

/-! ## A200252.P4771489616494222541

`A002623(n+1)+A005993(n)+A002623(n)`
-/

namespace A200252.P4771489616494222541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (n + 1) + (A005993 n + A002623 n)

end

end A200252.P4771489616494222541

namespace A200252

/-- `A002623(n+1)+A005993(n)+A002623(n)` -/
def P4771489616494222541.Spec : Prop :=
  ∀ n, P4771489616494222541.a n = A200252 (n + 1)

end A200252

/-! ## A200252.P2955825348968443940

`A000292(n+1)+A008805(n)+A002623(n+1)`
-/

namespace A200252.P2955825348968443940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A008805 n + A002623 (n + 1))

end

end A200252.P2955825348968443940

namespace A200252

/-- `A000292(n+1)+A008805(n)+A002623(n+1)` -/
def P2955825348968443940.Spec : Prop :=
  ∀ n, P2955825348968443940.a n = A200252 (n + 1)

end A200252

/-! ## A200252.P3514334561837579434

`A168380(n+2)+A005993(n)-A027656(n+1)`
-/

namespace A200252.P3514334561837579434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (n + 2) + (A005993 n - A027656 (n + 1))

end

end A200252.P3514334561837579434

namespace A200252

/-- `A168380(n+2)+A005993(n)-A027656(n+1)` -/
def P3514334561837579434.Spec : Prop :=
  ∀ n, P3514334561837579434.a n = A200252 (n + 1)

end A200252

/-!
# A200253: Number of 0..n arrays x(0..3) of 4 elements with each no smaller than the sum of its previous elements modulo (n+1).

The programs for A200253, there is no canonical definition to state claims against.
-/

/-! ## A200253.P11213349130761409636

`round(A200254(n+1)²/A200255(n+1))`
-/

namespace A200253.P11213349130761409636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A200254 (n + 1) ^ 2 : ℚ) / (A200255 (n + 1) : ℚ))

end

end A200253.P11213349130761409636

/-! ## A200253.P14619716042829073631

`A200251(A167614(n+2)+1)`
-/

namespace A200253.P14619716042829073631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A167614 (n + 2) + 1).toNat

end

end A200253.P14619716042829073631

/-! ## A200253.P4105648305087311697

`A200251(A000217(n+3)+4)`
-/

namespace A200253.P4105648305087311697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A000217 (n + 3) + 4).toNat

end

end A200253.P4105648305087311697

/-! ## A200253.P6163932527748932421

`A200668(A052905(n)+9)`
-/

namespace A200253.P6163932527748932421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (A052905 n + 9).toNat

end

end A200253.P6163932527748932421

/-! ## A200253.P8373417066574703758

`A200668(A055999(n)+10)`
-/

namespace A200253.P8373417066574703758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (A055999 n + 10).toNat

end

end A200253.P8373417066574703758

/-! ## A200253.P4650440068531233215

`A200668(A167614(n+2)+1)`
-/

namespace A200253.P4650440068531233215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (A167614 (n + 2) + 1).toNat

end

end A200253.P4650440068531233215

/-! ## A200253.P3294787792524959712

`A200668(A166136(n+2)-2)`
-/

namespace A200253.P3294787792524959712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (A166136 (n + 2) - 2).toNat

end

end A200253.P3294787792524959712

/-! ## A200253.P11038624022771384666

`A200668(A000096(n+2)+5)`
-/

namespace A200253.P11038624022771384666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (A000096 (n + 2) + 5).toNat

end

end A200253.P11038624022771384666

/-! ## A200253.P136929113519373111

`A200668(A000217(n+3)+4)`
-/

namespace A200253.P136929113519373111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (A000217 (n + 3) + 4).toNat

end

end A200253.P136929113519373111

/-! ## A200253.P747797639749886599

`A200668(Δ[A264443(n)-n²])`
-/

namespace A200253.P747797639749886599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (f1 (n + 1) - f1 n).toNat

end

end A200253.P747797639749886599

/-!
# A200254: Number of 0..n arrays x(0..4) of 5 elements with each no smaller than the sum of its previous elements modulo (n+1).

The programs for A200254, there is no canonical definition to state claims against.
-/

/-! ## A200254.P12278538327763565422

`A200251(A167499(n+3))`
-/

namespace A200254.P12278538327763565422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A167499 (n + 3)).toNat

end

end A200254.P12278538327763565422

/-! ## A200254.P5182486155262601326

`A200251(A155212(n)+13)`
-/

namespace A200254.P5182486155262601326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A155212 n + 13).toNat

end

end A200254.P5182486155262601326

/-! ## A200254.P6611447229757174254

`A200251(A056000(n)+15)`
-/

namespace A200254.P6611447229757174254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A056000 n + 15).toNat

end

end A200254.P6611447229757174254

/-! ## A200254.P11917302345899071331

`A200251(A000217(n+4)+5)`
-/

namespace A200254.P11917302345899071331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A000217 (n + 4) + 5).toNat

end

end A200254.P11917302345899071331

/-! ## A200254.P5474769813987087139

`A200251(Δ[A034857(n+1)]+8)`
-/

namespace A200254.P5474769813987087139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (f1 (n + 1) - f1 n + 8).toNat

end

end A200254.P5474769813987087139

/-! ## A200254.P6720108000070990997

`A200251(A000124(n+5)-(n+1))`
-/

namespace A200254.P6720108000070990997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A200254.P6720108000070990997

/-!
# A200255: Number of 0..n arrays x(0..5) of 6 elements with each no smaller than the sum of its previous elements modulo (n+1).

The programs for A200255, there is no canonical definition to state claims against.
-/

/-! ## A200255.P6563299756291762143

`A200251(A167614(n+4)+3)`
-/

namespace A200255.P6563299756291762143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A167614 (n + 4) + 3).toNat

end

end A200255.P6563299756291762143

/-! ## A200255.P13323146930604026375

`A200251(A000124(n+5)+5)`
-/

namespace A200255.P13323146930604026375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A000124 (n + 5) + 5).toNat

end

end A200255.P13323146930604026375

/-! ## A200255.P9089953951484572554

`A200251(A000217(n+5)+6)`
-/

namespace A200255.P9089953951484572554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A000217 (n + 5) + 6).toNat

end

end A200255.P9089953951484572554

/-! ## A200255.P3117386265775215207

`A200251(A027379(n+3)+9)`
-/

namespace A200255.P3117386265775215207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A027379 (n + 3) + 9).toNat

end

end A200255.P3117386265775215207

/-! ## A200255.P11568834701706555812

`A200251(A046691(n+3)+10)`
-/

namespace A200255.P11568834701706555812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A046691 (n + 3) + 10).toNat

end

end A200255.P11568834701706555812

/-!
# A200256: Number of 0..n arrays x(0..6) of 7 elements with each no smaller than the sum of its previous elements modulo (n+1).

The programs for A200256, there is no canonical definition to state claims against.
-/

/-! ## A200256.P8491565429227420442

`A200251(A000217(n+6)+7)`
-/

namespace A200256.P8491565429227420442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A000217 (n + 6) + 7).toNat

end

end A200256.P8491565429227420442

/-! ## A200256.P16041947802111051858

`A200251(A046691(n+4)+11)`
-/

namespace A200256.P16041947802111051858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A046691 (n + 4) + 11).toNat

end

end A200256.P16041947802111051858

/-! ## A200256.P15473819089565046318

`A200251(A023545(n+4)-A111396(n+2))`
-/

namespace A200256.P15473819089565046318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A023545 (n + 4) - A111396 (n + 2)).toNat

end

end A200256.P15473819089565046318

/-! ## A200256.P4451664390507624132

`A200251(A027379(n+6)-A004280(n+4))`
-/

namespace A200256.P4451664390507624132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A027379 (n + 6) - A004280 (n + 4)).toNat

end

end A200256.P4451664390507624132

/-! ## A200256.P4697236827895673538

`A200251(A000096(n+7)-A004280(n+5))`
-/

namespace A200256.P4697236827895673538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (A000096 (n + 7) - A004280 (n + 5)).toNat

end

end A200256.P4697236827895673538

/-!
# A200258: a(n) = Fibonacci(8n+7) mod Fibonacci(8n+1).

The programs for A200258, the canonical program `A200258.P11049990008866925627` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200258 has offset 1).

The definition of A200258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200258.P11049990008866925627

`32*A049668(n+1)+4*A049668(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A200258

/-- `32*A049668(n+1)+4*A049668(n)` -/
def P11049990008866925627.Spec : Prop :=
  ∀ n, P11049990008866925627.a n = A200258 (n + 1)

theorem P11049990008866925627.correct : P11049990008866925627.Spec := by
  intro n
  simp only [A200258, Nat.add_sub_cancel]

end A200258

/-! ## A200258.P7333301020855970047

`A022087(8*n+6)`
-/

namespace A200258.P7333301020855970047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 (8 * n + 6)

end

end A200258.P7333301020855970047

namespace A200258

/-- `A022087(8*n+6)` -/
def P7333301020855970047.Spec : Prop :=
  ∀ n, P7333301020855970047.a n = A200258 (n + 1)

end A200258

/-! ## A200258.P3785359554895112270

`2*A006355(record[xor(7, n)])`
-/

namespace A200258.P3785359554895112270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006355 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A200258.P3785359554895112270

namespace A200258

/-- `2*A006355(record[xor(7, n)])` -/
def P3785359554895112270.Spec : Prop :=
  ∀ n, P3785359554895112270.a n = A200258 (n + 1)

end A200258

/-! ## A200258.P10091386866033821367

`4*A033890(2*n+1)`
-/

namespace A200258.P10091386866033821367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033890 (2 * n + 1)

end

end A200258.P10091386866033821367

namespace A200258

/-- `4*A033890(2*n+1)` -/
def P10091386866033821367.Spec : Prop :=
  ∀ n, P10091386866033821367.a n = A200258 (n + 1)

end A200258

/-! ## A200258.P3188973238937958380

`2*A111282(4*(n+1))`
-/

namespace A200258.P3188973238937958380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111282 (4 * (n + 1))

end

end A200258.P3188973238937958380

namespace A200258

/-- `2*A111282(4*(n+1))` -/
def P3188973238937958380.Spec : Prop :=
  ∀ n, P3188973238937958380.a n = A200258 (n + 1)

end A200258

/-! ## A200258.P14385939449679411119

`4*A001906(4*n+3)`
-/

namespace A200258.P14385939449679411119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001906 (4 * n + 3)

end

end A200258.P14385939449679411119

namespace A200258

/-- `4*A001906(4*n+3)` -/
def P14385939449679411119.Spec : Prop :=
  ∀ n, P14385939449679411119.a n = A200258 (n + 1)

end A200258

/-! ## A200258.P15114942643972296448

`2*A062114(8*n+6)`
-/

namespace A200258.P15114942643972296448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062114 (8 * n + 6)

end

end A200258.P15114942643972296448

namespace A200258

/-- `2*A062114(8*n+6)` -/
def P15114942643972296448.Spec : Prop :=
  ∀ n, P15114942643972296448.a n = A200258 (n + 1)

end A200258

/-! ## A200258.P4968013020506932085

`4*A000045(8*n+6)`
-/

namespace A200258.P4968013020506932085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (8 * n + 6)

end

end A200258.P4968013020506932085

namespace A200258

/-- `4*A000045(8*n+6)` -/
def P4968013020506932085.Spec : Prop :=
  ∀ n, P4968013020506932085.a n = A200258 (n + 1)

end A200258

/-! ## A200258.P13476273889707889952

`A131328(A004770(n+1))`
-/

namespace A200258.P13476273889707889952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131328 (A004770 (n + 1)).toNat

end

end A200258.P13476273889707889952

namespace A200258

/-- `A131328(A004770(n+1))` -/
def P13476273889707889952.Spec : Prop :=
  ∀ n, P13476273889707889952.a n = A200258 (n + 1)

end A200258

/-! ## A200258.P16915800772512538834

`2*A006355(A004771(n))`
-/

namespace A200258.P16915800772512538834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006355 (A004771 n).toNat

end

end A200258.P16915800772512538834

namespace A200258

/-- `2*A006355(A004771(n))` -/
def P16915800772512538834.Spec : Prop :=
  ∀ n, P16915800772512538834.a n = A200258 (n + 1)

end A200258

/-!
# A200259: Numbers k such that k-th prime has an even digit sum.

The programs for A200259, the canonical program `A200259.P8572923408309876952` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200259 has offset 1).

The definition of A200259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4925 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200259.P18175576597172496398

`filter[n+1, A200261(#)]`
-/

namespace A200259.P18175576597172496398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A200261 (f1 j) = 1) n)

end

end A200259.P18175576597172496398

namespace A200259

/-- `filter[n+1, A200261(#)]` -/
def P18175576597172496398.Spec : Prop :=
  ∀ n, (P18175576597172496398.a n : ℤ) = A200259 (n + 1)

end A200259

/-! ## A200259.P9634502836224344351

`eq[1, A200261(n+1)]+1`
-/

namespace A200259.P9634502836224344351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A200259.P9634502836224344351

namespace A200259

/-- `eq[1, A200261(n+1)]+1` -/
def P9634502836224344351.Spec : Prop :=
  ∀ n, (P9634502836224344351.a n : ℤ) = A200259 (n + 1)

end A200259

/-! ## A200259.P13666231537141214545

`eq[1, A200263(n+1)+1]+1`
-/

namespace A200259.P13666231537141214545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200263 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A200259.P13666231537141214545

namespace A200259

/-- `eq[1, A200263(n+1)+1]+1` -/
def P13666231537141214545.Spec : Prop :=
  ∀ n, (P13666231537141214545.a n : ℤ) = A200259 (n + 1)

end A200259

/-! ## A200259.P8572923408309876952

`lt[0, val(A007605(n+1), 2)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A200259

/-- `lt[0, val(A007605(n+1), 2)]+1` -/
def P8572923408309876952.Spec : Prop :=
  ∀ n, (P8572923408309876952.a n : ℤ) = A200259 (n + 1)

theorem P8572923408309876952.correct : P8572923408309876952.Spec := by
  intro n
  simp only [A200259, Nat.add_sub_cancel]

end A200259

/-! ## A200259.P3865919464433019505

`record[n*(1-A041000(n+1)%2)+1]`
-/

namespace A200259.P3865919464433019505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - Int.tmod (A041000 (n + 1)) 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200259.P3865919464433019505

namespace A200259

/-- `record[n*(1-A041000(n+1)%2)+1]` -/
def P3865919464433019505.Spec : Prop :=
  ∀ n, P3865919464433019505.a n = A200259 (n + 1)

end A200259

/-! ## A200259.P10701686145885036698

`eq[2, A040001(A007605(n+1))]+1`
-/

namespace A200259.P10701686145885036698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A007605 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A200259.P10701686145885036698

namespace A200259

/-- `eq[2, A040001(A007605(n+1))]+1` -/
def P10701686145885036698.Spec : Prop :=
  ∀ n, (P10701686145885036698.a n : ℤ) = A200259 (n + 1)

end A200259

/-! ## A200259.P13068970512209331274

`record[n*A000290(A007605(n+1)+1)%2+1]`
-/

namespace A200259.P13068970512209331274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A000290 (A007605 (n + 1) + 1).toNat) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200259.P13068970512209331274

namespace A200259

/-- `record[n*A000290(A007605(n+1)+1)%2+1]` -/
def P13068970512209331274.Spec : Prop :=
  ∀ n, P13068970512209331274.a n = A200259 (n + 1)

end A200259

/-! ## A200259.P6454103752080074440

`A000720(A119449(n+1))`
-/

namespace A200259.P6454103752080074440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A119449 (n + 1)).toNat

end

end A200259.P6454103752080074440

namespace A200259

/-- `A000720(A119449(n+1))` -/
def P6454103752080074440.Spec : Prop :=
  ∀ n, P6454103752080074440.a n = A200259 (n + 1)

end A200259

/-! ## A200259.P3239078653861438568

`A000720(p?[A054683(n+1)])`
-/

namespace A200259.P3239078653861438568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A200259.P3239078653861438568

namespace A200259

/-- `A000720(p?[A054683(n+1)])` -/
def P3239078653861438568.Spec : Prop :=
  ∀ n, P3239078653861438568.a n = A200259 (n + 1)

end A200259

/-! ## A200259.P5335595831042536934

`A049084(A119449(2*(n+1)-(n+1)))`
-/

namespace A200259.P5335595831042536934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A119449 (2 * (n + 1) - (n + 1))).toNat

end

end A200259.P5335595831042536934

namespace A200259

/-- `A049084(A119449(2*(n+1)-(n+1)))` -/
def P5335595831042536934.Spec : Prop :=
  ∀ n, P5335595831042536934.a n = A200259 (n + 1)

end A200259

/-! ## A200259.P3026209296092274369

`record[n*A007953(A006093(n+1))%2+1]`
-/

namespace A200259.P3026209296092274369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A007953 (A006093 (n + 1)).toNat) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200259.P3026209296092274369

namespace A200259

/-- `record[n*A007953(A006093(n+1))%2+1]` -/
def P3026209296092274369.Spec : Prop :=
  ∀ n, P3026209296092274369.a n = A200259 (n + 1)

end A200259

/-! ## A200259.P1367189205110148808

`record[n*A196564(record[A285699(n+1)])%2+1]`
-/

namespace A200259.P1367189205110148808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A196564 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200259.P1367189205110148808

namespace A200259

/-- `record[n*A196564(record[A285699(n+1)])%2+1]` -/
def P1367189205110148808.Spec : Prop :=
  ∀ n, P1367189205110148808.a n = A200259 (n + 1)

end A200259

/-!
# A200260: Numbers k such that k-th prime has an odd digit sum.

The programs for A200260, the canonical program `A200260.P581452882919251261` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200260 has offset 1).

The definition of A200260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200260.P581452882919251261

`comp[A200259(n+1)-1]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A200260

/-- `comp[A200259(n+1)-1]+1` -/
def P581452882919251261.Spec : Prop :=
  ∀ n, (P581452882919251261.a n : ℤ) = A200260 (n + 1)

theorem P581452882919251261.correct : P581452882919251261.Spec := by
  intro n
  simp only [A200260, Nat.add_sub_cancel]

end A200260

/-! ## A200260.P17851199647983645328

`filter[n+1, A200263(#)]`
-/

namespace A200260.P17851199647983645328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A200263 (f1 j) = 1) n)

end

end A200260.P17851199647983645328

namespace A200260

/-- `filter[n+1, A200263(#)]` -/
def P17851199647983645328.Spec : Prop :=
  ∀ n, (P17851199647983645328.a n : ℤ) = A200260 (n + 1)

end A200260

/-! ## A200260.P4982602515377981313

`eq[1, A200263(n+1)]+1`
-/

namespace A200260.P4982602515377981313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A200260.P4982602515377981313

namespace A200260

/-- `eq[1, A200263(n+1)]+1` -/
def P4982602515377981313.Spec : Prop :=
  ∀ n, (P4982602515377981313.a n : ℤ) = A200260 (n + 1)

end A200260

/-! ## A200260.P15525694609963574004

`lt[A200261(n+1), 1]+1`
-/

namespace A200260.P15525694609963574004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200261 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A200260.P15525694609963574004

namespace A200260

/-- `lt[A200261(n+1), 1]+1` -/
def P15525694609963574004.Spec : Prop :=
  ∀ n, (P15525694609963574004.a n : ℤ) = A200260 (n + 1)

end A200260

/-! ## A200260.P16022622923138024005

`eq[1, Δ[A200264(n+1)]]+2`
-/

namespace A200260.P16022622923138024005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A200260.P16022622923138024005

namespace A200260

/-- `eq[1, Δ[A200264(n+1)]]+2` -/
def P16022622923138024005.Spec : Prop :=
  ∀ n, (P16022622923138024005.a n : ℤ) = A200260 (n + 1)

end A200260

/-! ## A200260.P9745107032141005361

`eq[1, A007605(n+1)%2]+1`
-/

namespace A200260.P9745107032141005361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007605 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A200260.P9745107032141005361

namespace A200260

/-- `eq[1, A007605(n+1)%2]+1` -/
def P9745107032141005361.Spec : Prop :=
  ∀ n, (P9745107032141005361.a n : ℤ) = A200260 (n + 1)

end A200260

/-! ## A200260.P4950645854681120547

`lt[0, A041000(n+1)%2]+1`
-/

namespace A200260.P4950645854681120547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041000 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A200260.P4950645854681120547

namespace A200260

/-- `lt[0, A041000(n+1)%2]+1` -/
def P4950645854681120547.Spec : Prop :=
  ∀ n, (P4950645854681120547.a n : ℤ) = A200260 (n + 1)

end A200260

/-! ## A200260.P15057306574857728949

`eq[1, and(1, A104638(n+1))]+1`
-/

namespace A200260.P15057306574857728949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A104638 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A200260.P15057306574857728949

namespace A200260

/-- `eq[1, and(1, A104638(n+1))]+1` -/
def P15057306574857728949.Spec : Prop :=
  ∀ n, (P15057306574857728949.a n : ℤ) = A200260 (n + 1)

end A200260

/-! ## A200260.P16675351251108850226

`eq[1, and(1, A122622(n+1))]+1`
-/

namespace A200260.P16675351251108850226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A122622 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A200260.P16675351251108850226

namespace A200260

/-- `eq[1, and(1, A122622(n+1))]+1` -/
def P16675351251108850226.Spec : Prop :=
  ∀ n, (P16675351251108850226.a n : ℤ) = A200260 (n + 1)

end A200260

/-! ## A200260.P6542114363041396239

`eq[1, A040001(A007605(n+1))]+1`
-/

namespace A200260.P6542114363041396239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A007605 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A200260.P6542114363041396239

namespace A200260

/-- `eq[1, A040001(A007605(n+1))]+1` -/
def P6542114363041396239.Spec : Prop :=
  ∀ n, (P6542114363041396239.a n : ℤ) = A200260 (n + 1)

end A200260

/-! ## A200260.P7055180528316133646

`lt[1, A040265(A007605(n+1)+3)]+1`
-/

namespace A200260.P7055180528316133646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040265 (A007605 (n + 1) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A200260.P7055180528316133646

namespace A200260

/-- `lt[1, A040265(A007605(n+1)+3)]+1` -/
def P7055180528316133646.Spec : Prop :=
  ∀ n, (P7055180528316133646.a n : ℤ) = A200260 (n + 1)

end A200260

/-! ## A200260.P12367661226232260180

`lt[A000290(A007605(n+1)+1)%2, 1]+1`
-/

namespace A200260.P12367661226232260180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A007605 (n + 1) + 1).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A200260.P12367661226232260180

namespace A200260

/-- `lt[A000290(A007605(n+1)+1)%2, 1]+1` -/
def P12367661226232260180.Spec : Prop :=
  ∀ n, (P12367661226232260180.a n : ℤ) = A200260 (n + 1)

end A200260

/-! ## A200260.P4369869488746743426

`A000720(A119450(n+1))`
-/

namespace A200260.P4369869488746743426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A119450 (n + 1)).toNat

end

end A200260.P4369869488746743426

namespace A200260

/-- `A000720(A119450(n+1))` -/
def P4369869488746743426.Spec : Prop :=
  ∀ n, P4369869488746743426.a n = A200260 (n + 1)

end A200260

/-! ## A200260.P8146074469829430813

`A000720(p?[A054683(n+1)+1])`
-/

namespace A200260.P8146074469829430813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A200260.P8146074469829430813

namespace A200260

/-- `A000720(p?[A054683(n+1)+1])` -/
def P8146074469829430813.Spec : Prop :=
  ∀ n, P8146074469829430813.a n = A200260 (n + 1)

end A200260

/-! ## A200260.P7206718182860006363

`A204892(A119450(n+1)-2)`
-/

namespace A200260.P7206718182860006363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A119450 (n + 1) - 2).toNat

end

end A200260.P7206718182860006363

namespace A200260

/-- `A204892(A119450(n+1)-2)` -/
def P7206718182860006363.Spec : Prop :=
  ∀ n, P7206718182860006363.a n = A200260 (n + 1)

end A200260

/-! ## A200260.P7289363221404792980

`eq[1, A179081(eq[1, A210442(n)])]`
-/

namespace A200260.P7289363221404792980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A200260.P7289363221404792980

namespace A200260

/-- `eq[1, A179081(eq[1, A210442(n)])]` -/
def P7289363221404792980.Spec : Prop :=
  ∀ n, (P7289363221404792980.a n : ℤ) = A200260 (n + 1)

end A200260

/-! ## A200260.P8727126322369475063

`eq[1, A179081(eq[1, A211110(n)])]`
-/

namespace A200260.P8727126322369475063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A200260.P8727126322369475063

namespace A200260

/-- `eq[1, A179081(eq[1, A211110(n)])]` -/
def P8727126322369475063.Spec : Prop :=
  ∀ n, (P8727126322369475063.a n : ℤ) = A200260 (n + 1)

end A200260

/-! ## A200260.P4934507668320228153

`eq[1, A179081(eq[1, A284289(n)])]`
-/

namespace A200260.P4934507668320228153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A200260.P4934507668320228153

namespace A200260

/-- `eq[1, A179081(eq[1, A284289(n)])]` -/
def P4934507668320228153.Spec : Prop :=
  ∀ n, (P4934507668320228153.a n : ℤ) = A200260 (n + 1)

end A200260

/-! ## A200260.P2899719954673824724

`A000720(p?[n*gcd(2, A007953(n))])`
-/

namespace A200260.P2899719954673824724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd 2 (A007953 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A200260.P2899719954673824724

namespace A200260

/-- `A000720(p?[n*gcd(2, A007953(n))])` -/
def P2899719954673824724.Spec : Prop :=
  ∀ n, P2899719954673824724.a n = A200260 (n + 1)

end A200260

/-! ## A200260.P12607930817402814123

`A049084(A119450(2*n+1-n))`
-/

namespace A200260.P12607930817402814123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A119450 (2 * n + 1 - n)).toNat

end

end A200260.P12607930817402814123

namespace A200260

/-- `A049084(A119450(2*n+1-n))` -/
def P12607930817402814123.Spec : Prop :=
  ∀ n, P12607930817402814123.a n = A200260 (n + 1)

end A200260

/-!
# A200261: a(n) = 1 iff n-th prime has an even digit sum.

The programs for A200261, the canonical program `A200261.P2236305596718294823` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200261 has offset 1).

The definition of A200261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200261.P10827644157789475824

`1-A200263(n+1)`
-/

namespace A200261.P10827644157789475824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A200263 (n + 1)

end

end A200261.P10827644157789475824

namespace A200261

/-- `1-A200263(n+1)` -/
def P10827644157789475824.Spec : Prop :=
  ∀ n, P10827644157789475824.a n = A200261 (n + 1)

end A200261

/-! ## A200261.P12037594012392944438

`log2(gcd(2, A007605(n+1)))`
-/

namespace A200261.P12037594012392944438
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A007605 (n + 1)) : ℝ)

end

end A200261.P12037594012392944438

namespace A200261

/-- `log2(gcd(2, A007605(n+1)))` -/
def P12037594012392944438.Spec : Prop :=
  ∀ n, P12037594012392944438.a n = (A200261 (n + 1) : ℝ)

end A200261

/-! ## A200261.P15159878994249482605

`char[A200259(n+1)-1]`
-/

namespace A200261.P15159878994249482605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200259 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A200261.P15159878994249482605

namespace A200261

/-- `char[A200259(n+1)-1]` -/
def P15159878994249482605.Spec : Prop :=
  ∀ n, (P15159878994249482605.a n : ℤ) = A200261 (n + 1)

end A200261

/-! ## A200261.P12290849904527652442

`(A041000(n+1)+1)%2`
-/

namespace A200261.P12290849904527652442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041000 (n + 1) + 1) 2

end

end A200261.P12290849904527652442

namespace A200261

/-- `(A041000(n+1)+1)%2` -/
def P12290849904527652442.Spec : Prop :=
  ∀ n, P12290849904527652442.a n = A200261 (n + 1)

end A200261

/-! ## A200261.P3246684123221070133

`and(1, A031345(n+1)+1)`
-/

namespace A200261.P3246684123221070133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A031345 (n + 1) + 1)

end

end A200261.P3246684123221070133

namespace A200261

/-- `and(1, A031345(n+1)+1)` -/
def P3246684123221070133.Spec : Prop :=
  ∀ n, P3246684123221070133.a n = A200261 (n + 1)

end A200261

/-! ## A200261.P8442406901045426216

`and(1, A042939(n+1)+1)`
-/

namespace A200261.P8442406901045426216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A042939 (n + 1) + 1)

end

end A200261.P8442406901045426216

namespace A200261

/-- `and(1, A042939(n+1)+1)` -/
def P8442406901045426216.Spec : Prop :=
  ∀ n, P8442406901045426216.a n = A200261 (n + 1)

end A200261

/-! ## A200261.P7507238601078657490

`and(1, A104638(n+1)+1)`
-/

namespace A200261.P7507238601078657490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A104638 (n + 1) + 1)

end

end A200261.P7507238601078657490

namespace A200261

/-- `and(1, A104638(n+1)+1)` -/
def P7507238601078657490.Spec : Prop :=
  ∀ n, P7507238601078657490.a n = A200261 (n + 1)

end A200261

/-! ## A200261.P8726492818788948395

`and(1, A122622(n+1)+1)`
-/

namespace A200261.P8726492818788948395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A122622 (n + 1) + 1)

end

end A200261.P8726492818788948395

namespace A200261

/-- `and(1, A122622(n+1)+1)` -/
def P8726492818788948395.Spec : Prop :=
  ∀ n, P8726492818788948395.a n = A200261 (n + 1)

end A200261

/-! ## A200261.P14683562825206059215

`and(1, A185107(n+1)+1)`
-/

namespace A200261.P14683562825206059215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A185107 (n + 1) + 1)

end

end A200261.P14683562825206059215

namespace A200261

/-- `and(1, A185107(n+1)+1)` -/
def P14683562825206059215.Spec : Prop :=
  ∀ n, P14683562825206059215.a n = A200261 (n + 1)

end A200261

/-! ## A200261.P2236305596718294823

`A059841(A007605(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A200261

/-- `A059841(A007605(n+1))` -/
def P2236305596718294823.Spec : Prop :=
  ∀ n, P2236305596718294823.a n = A200261 (n + 1)

theorem P2236305596718294823.correct : P2236305596718294823.Spec := by
  intro n
  simp only [A200261, Nat.add_sub_cancel]

end A200261

/-! ## A200261.P8458482710725179084

`A059841(A042939(n+1))`
-/

namespace A200261.P8458482710725179084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A042939 (n + 1)).toNat

end

end A200261.P8458482710725179084

namespace A200261

/-- `A059841(A042939(n+1))` -/
def P8458482710725179084.Spec : Prop :=
  ∀ n, P8458482710725179084.a n = A200261 (n + 1)

end A200261

/-! ## A200261.P11304675477907670271

`A059841(A104260(n+1))`
-/

namespace A200261.P11304675477907670271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A104260 (n + 1)).toNat

end

end A200261.P11304675477907670271

namespace A200261

/-- `A059841(A104260(n+1))` -/
def P11304675477907670271.Spec : Prop :=
  ∀ n, P11304675477907670271.a n = A200261 (n + 1)

end A200261

/-! ## A200261.P12555509036132723866

`A059841(A111309(n+1))`
-/

namespace A200261.P12555509036132723866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A111309 (n + 1)).toNat

end

end A200261.P12555509036132723866

namespace A200261

/-- `A059841(A111309(n+1))` -/
def P12555509036132723866.Spec : Prop :=
  ∀ n, P12555509036132723866.a n = A200261 (n + 1)

end A200261

/-! ## A200261.P6810140287148611432

`A059841(A346512(n+1))`
-/

namespace A200261.P6810140287148611432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A346512 (n + 1)).toNat

end

end A200261.P6810140287148611432

namespace A200261

/-- `A059841(A346512(n+1))` -/
def P6810140287148611432.Spec : Prop :=
  ∀ n, P6810140287148611432.a n = A200261 (n + 1)

end A200261

/-! ## A200261.P1911323556880203197

`A059841(A376714(n+1))`
-/

namespace A200261.P1911323556880203197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A376714 (n + 1)).toNat

end

end A200261.P1911323556880203197

namespace A200261

/-- `A059841(A376714(n+1))` -/
def P1911323556880203197.Spec : Prop :=
  ∀ n, P1911323556880203197.a n = A200261 (n + 1)

end A200261

/-! ## A200261.P6064414399662911942

`A144607(A301378(n+1))`
-/

namespace A200261.P6064414399662911942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144607 (A301378 (n + 1)).toNat

end

end A200261.P6064414399662911942

namespace A200261

/-- `A144607(A301378(n+1))` -/
def P6064414399662911942.Spec : Prop :=
  ∀ n, P6064414399662911942.a n = A200261 (n + 1)

end A200261

/-! ## A200261.P15880777208027582355

`and(1, ∑{digits}[record[A000010(n+1)], #])`
-/

namespace A200261.P15880777208027582355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A200261.P15880777208027582355

namespace A200261

/-- `and(1, ∑{digits}[record[A000010(n+1)], #])` -/
def P15880777208027582355.Spec : Prop :=
  ∀ n, (P15880777208027582355.a n : ℤ) = A200261 (n + 1)

end A200261

/-! ## A200261.P5515398577899589584

`A179081(A006093(n+1))`
-/

namespace A200261.P5515398577899589584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A006093 (n + 1)).toNat

end

end A200261.P5515398577899589584

namespace A200261

/-- `A179081(A006093(n+1))` -/
def P5515398577899589584.Spec : Prop :=
  ∀ n, P5515398577899589584.a n = A200261 (n + 1)

end A200261

/-! ## A200261.P8610569339306673162

`A179081(A039915(n+1))`
-/

namespace A200261.P8610569339306673162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A039915 (n + 1)).toNat

end

end A200261.P8610569339306673162

namespace A200261

/-- `A179081(A039915(n+1))` -/
def P8610569339306673162.Spec : Prop :=
  ∀ n, P8610569339306673162.a n = A200261 (n + 1)

end A200261

/-! ## A200261.P12778376166042123949

`A266246(A065073(n+1))`
-/

namespace A200261.P12778376166042123949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266246 (A065073 (n + 1)).toNat

end

end A200261.P12778376166042123949

namespace A200261

/-- `A266246(A065073(n+1))` -/
def P12778376166042123949.Spec : Prop :=
  ∀ n, P12778376166042123949.a n = A200261 (n + 1)

end A200261

/-!
# A200262: Partial sums of A200261.

The programs for A200262, the canonical program `A200262.P13695405948688906386` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200262 has offset 1).

The definition of A200262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200262.P13695405948688906386

`∑[A200261(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A200262

/-- `∑[A200261(n+1)]` -/
def P13695405948688906386.Spec : Prop :=
  ∀ n, P13695405948688906386.a n = A200262 (n + 1)

theorem P13695405948688906386.correct : P13695405948688906386.Spec := by
  intro n
  simp only [A200262, Nat.add_sub_cancel]

end A200262

/-! ## A200262.P2978515046506706879

`∑[1-A200263(n+1)]`
-/

namespace A200262.P2978515046506706879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A200263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P2978515046506706879

namespace A200262

/-- `∑[1-A200263(n+1)]` -/
def P2978515046506706879.Spec : Prop :=
  ∀ n, P2978515046506706879.a n = A200262 (n + 1)

end A200262

/-! ## A200262.P4864064244818986340

`1-A200264(n+1)+n`
-/

namespace A200262.P4864064244818986340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A200264 (n + 1) + (n : ℤ)

end

end A200262.P4864064244818986340

namespace A200262

/-- `1-A200264(n+1)+n` -/
def P4864064244818986340.Spec : Prop :=
  ∀ n, P4864064244818986340.a n = A200262 (n + 1)

end A200262

/-! ## A200262.P9665776685185163294

`∑[(A007605(n+1)+1)%2]`
-/

namespace A200262.P9665776685185163294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007605 (n + 1) + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P9665776685185163294

namespace A200262

/-- `∑[(A007605(n+1)+1)%2]` -/
def P9665776685185163294.Spec : Prop :=
  ∀ n, P9665776685185163294.a n = A200262 (n + 1)

end A200262

/-! ## A200262.P8164599725570157530

`∑[1-A041000(n+1)%2]`
-/

namespace A200262.P8164599725570157530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A041000 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P8164599725570157530

namespace A200262

/-- `∑[1-A041000(n+1)%2]` -/
def P8164599725570157530.Spec : Prop :=
  ∀ n, P8164599725570157530.a n = A200262 (n + 1)

end A200262

/-! ## A200262.P9533572519416471861

`(A199339(n+1)+n+1)/2`
-/

namespace A200262.P9533572519416471861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199339 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A200262.P9533572519416471861

namespace A200262

/-- `(A199339(n+1)+n+1)/2` -/
def P9533572519416471861.Spec : Prop :=
  ∀ n, P9533572519416471861.a n = (A200262 (n + 1) : ℚ)

end A200262

/-! ## A200262.P11973678206433939935

`∑[A059841(A007605(n+1))]`
-/

namespace A200262.P11973678206433939935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A007605 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P11973678206433939935

namespace A200262

/-- `∑[A059841(A007605(n+1))]` -/
def P11973678206433939935.Spec : Prop :=
  ∀ n, P11973678206433939935.a n = A200262 (n + 1)

end A200262

/-! ## A200262.P16157709311167811792

`∑[A341996(2*A007605(n+1))]`
-/

namespace A200262.P16157709311167811792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (2 * A007605 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P16157709311167811792

namespace A200262

/-- `∑[A341996(2*A007605(n+1))]` -/
def P16157709311167811792.Spec : Prop :=
  ∀ n, P16157709311167811792.a n = A200262 (n + 1)

end A200262

/-! ## A200262.P309619963770613107

`A200264(n+1)+A199339(n+1)`
-/

namespace A200262.P309619963770613107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200264 (n + 1) + A199339 (n + 1)

end

end A200262.P309619963770613107

namespace A200262

/-- `A200264(n+1)+A199339(n+1)` -/
def P309619963770613107.Spec : Prop :=
  ∀ n, P309619963770613107.a n = A200262 (n + 1)

end A200262

/-! ## A200262.P3789284990096676999

`∑[∑{digits}[record[A000010(n+1)], #]%2]`
-/

namespace A200262.P3789284990096676999
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P3789284990096676999

namespace A200262

/-- `∑[∑{digits}[record[A000010(n+1)], #]%2]` -/
def P3789284990096676999.Spec : Prop :=
  ∀ n, (P3789284990096676999.a n : ℤ) = A200262 (n + 1)

end A200262

/-! ## A200262.P8177228266391876491

`∑[1-A179081(A028905(n+1))]`
-/

namespace A200262.P8177228266391876491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A179081 (A028905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P8177228266391876491

namespace A200262

/-- `∑[1-A179081(A028905(n+1))]` -/
def P8177228266391876491.Spec : Prop :=
  ∀ n, P8177228266391876491.a n = A200262 (n + 1)

end A200262

/-! ## A200262.P11269754250247383779

`∑[A179081(A006093(n+1))]`
-/

namespace A200262.P11269754250247383779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P11269754250247383779

namespace A200262

/-- `∑[A179081(A006093(n+1))]` -/
def P11269754250247383779.Spec : Prop :=
  ∀ n, P11269754250247383779.a n = A200262 (n + 1)

end A200262

/-! ## A200262.P8063340567058095720

`∑[A179081(A039915(n+1))]`
-/

namespace A200262.P8063340567058095720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A039915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P8063340567058095720

namespace A200262

/-- `∑[A179081(A039915(n+1))]` -/
def P8063340567058095720.Spec : Prop :=
  ∀ n, P8063340567058095720.a n = A200262 (n + 1)

end A200262

/-! ## A200262.P99944815501614486

`∑[A179081(record[A000010(n+1)])]`
-/

namespace A200262.P99944815501614486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P99944815501614486

namespace A200262

/-- `∑[A179081(record[A000010(n+1)])]` -/
def P99944815501614486.Spec : Prop :=
  ∀ n, P99944815501614486.a n = A200262 (n + 1)

end A200262

/-! ## A200262.P140329421394844050

`∑[A179081(A028906(n+1)+1)]`
-/

namespace A200262.P140329421394844050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A028906 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P140329421394844050

namespace A200262

/-- `∑[A179081(A028906(n+1)+1)]` -/
def P140329421394844050.Spec : Prop :=
  ∀ n, P140329421394844050.a n = A200262 (n + 1)

end A200262

/-! ## A200262.P6561969977890875793

`∑[1-A179081(A000040(n+1))]`
-/

namespace A200262.P6561969977890875793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A179081 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P6561969977890875793

namespace A200262

/-- `∑[1-A179081(A000040(n+1))]` -/
def P6561969977890875793.Spec : Prop :=
  ∀ n, P6561969977890875793.a n = A200262 (n + 1)

end A200262

/-! ## A200262.P12419149604337325942

`∑[1-A179081(A004087(n+1))]`
-/

namespace A200262.P12419149604337325942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A179081 (A004087 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P12419149604337325942

namespace A200262

/-- `∑[1-A179081(A004087(n+1))]` -/
def P12419149604337325942.Spec : Prop :=
  ∀ n, P12419149604337325942.a n = A200262 (n + 1)

end A200262

/-! ## A200262.P2666061545800575226

`∑[1-A179081(A171014(n+1))]`
-/

namespace A200262.P2666061545800575226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A179081 (A171014 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P2666061545800575226

namespace A200262

/-- `∑[1-A179081(A171014(n+1))]` -/
def P2666061545800575226.Spec : Prop :=
  ∀ n, P2666061545800575226.a n = A200262 (n + 1)

end A200262

/-! ## A200262.P2811851361613587317

`∑[1-A179081(A101989(n+1))]`
-/

namespace A200262.P2811851361613587317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A179081 (A101989 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P2811851361613587317

namespace A200262

/-- `∑[1-A179081(A101989(n+1))]` -/
def P2811851361613587317.Spec : Prop :=
  ∀ n, P2811851361613587317.a n = A200262 (n + 1)

end A200262

/-! ## A200262.P13612767002733768336

`∑[A179081(A039790(n+1))]`
-/

namespace A200262.P13612767002733768336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A039790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P13612767002733768336

namespace A200262

/-- `∑[A179081(A039790(n+1))]` -/
def P13612767002733768336.Spec : Prop :=
  ∀ n, P13612767002733768336.a n = A200262 (n + 1)

end A200262

/-!
# A200263: a(n) = 1 iff n-th prime has an odd digit sum.

The programs for A200263, the canonical program `A200263.P276379876242031562` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200263 has offset 1).

The definition of A200263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200263.P276379876242031562

`1-A200261(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A200263

/-- `1-A200261(n+1)` -/
def P276379876242031562.Spec : Prop :=
  ∀ n, P276379876242031562.a n = A200263 (n + 1)

theorem P276379876242031562.correct : P276379876242031562.Spec := by
  intro n
  simp only [A200263, Nat.add_sub_cancel]

end A200263

/-! ## A200263.P5145314893891547223

`A007605(n+1)%2`
-/

namespace A200263.P5145314893891547223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007605 (n + 1)) 2

end

end A200263.P5145314893891547223

namespace A200263

/-- `A007605(n+1)%2` -/
def P5145314893891547223.Spec : Prop :=
  ∀ n, P5145314893891547223.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P3676624013775107568

`A031216(n+1)%2`
-/

namespace A200263.P3676624013775107568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031216 (n + 1)) 2

end

end A200263.P3676624013775107568

namespace A200263

/-- `A031216(n+1)%2` -/
def P3676624013775107568.Spec : Prop :=
  ∀ n, P3676624013775107568.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P12878992953547598554

`A031345(n+1)%2`
-/

namespace A200263.P12878992953547598554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031345 (n + 1)) 2

end

end A200263.P12878992953547598554

namespace A200263

/-- `A031345(n+1)%2` -/
def P12878992953547598554.Spec : Prop :=
  ∀ n, P12878992953547598554.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P18364876849368857954

`A041000(n+1)%2`
-/

namespace A200263.P18364876849368857954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041000 (n + 1)) 2

end

end A200263.P18364876849368857954

namespace A200263

/-- `A041000(n+1)%2` -/
def P18364876849368857954.Spec : Prop :=
  ∀ n, P18364876849368857954.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P17202963043429936304

`A042939(n+1)%2`
-/

namespace A200263.P17202963043429936304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042939 (n + 1)) 2

end

end A200263.P17202963043429936304

namespace A200263

/-- `A042939(n+1)%2` -/
def P17202963043429936304.Spec : Prop :=
  ∀ n, P17202963043429936304.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P12752565372031074675

`A104260(n+1)%2`
-/

namespace A200263.P12752565372031074675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104260 (n + 1)) 2

end

end A200263.P12752565372031074675

namespace A200263

/-- `A104260(n+1)%2` -/
def P12752565372031074675.Spec : Prop :=
  ∀ n, P12752565372031074675.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P13415506317638792827

`A104638(n+1)%2`
-/

namespace A200263.P13415506317638792827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104638 (n + 1)) 2

end

end A200263.P13415506317638792827

namespace A200263

/-- `A104638(n+1)%2` -/
def P13415506317638792827.Spec : Prop :=
  ∀ n, P13415506317638792827.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P6587467830805979268

`A111309(n+1)%2`
-/

namespace A200263.P6587467830805979268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111309 (n + 1)) 2

end

end A200263.P6587467830805979268

namespace A200263

/-- `A111309(n+1)%2` -/
def P6587467830805979268.Spec : Prop :=
  ∀ n, P6587467830805979268.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P7583288802128670167

`A122622(n+1)%2`
-/

namespace A200263.P7583288802128670167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122622 (n + 1)) 2

end

end A200263.P7583288802128670167

namespace A200263

/-- `A122622(n+1)%2` -/
def P7583288802128670167.Spec : Prop :=
  ∀ n, P7583288802128670167.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P328604406259259035

`A346512(n+1)%2`
-/

namespace A200263.P328604406259259035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346512 (n + 1)) 2

end

end A200263.P328604406259259035

namespace A200263

/-- `A346512(n+1)%2` -/
def P328604406259259035.Spec : Prop :=
  ∀ n, P328604406259259035.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P17514245898202684508

`A376714(n+1)%2`
-/

namespace A200263.P17514245898202684508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376714 (n + 1)) 2

end

end A200263.P17514245898202684508

namespace A200263

/-- `A376714(n+1)%2` -/
def P17514245898202684508.Spec : Prop :=
  ∀ n, P17514245898202684508.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P4183850370428656148

`A380192(n+1)%2`
-/

namespace A200263.P4183850370428656148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380192 (n + 1)) 2

end

end A200263.P4183850370428656148

namespace A200263

/-- `A380192(n+1)%2` -/
def P4183850370428656148.Spec : Prop :=
  ∀ n, P4183850370428656148.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P9428262209487409208

`and(1, A185107(n+1))`
-/

namespace A200263.P9428262209487409208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A185107 (n + 1))

end

end A200263.P9428262209487409208

namespace A200263

/-- `and(1, A185107(n+1))` -/
def P9428262209487409208.Spec : Prop :=
  ∀ n, P9428262209487409208.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P12231604127991407089

`∑{digits}[A000040(n+1), #]%2`
-/

namespace A200263.P12231604127991407089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum % 2

end

end A200263.P12231604127991407089

namespace A200263

/-- `∑{digits}[A000040(n+1), #]%2` -/
def P12231604127991407089.Spec : Prop :=
  ∀ n, (P12231604127991407089.a n : ℤ) = A200263 (n + 1)

end A200263

/-! ## A200263.P1708140071509575368

`A000035(A007605(n+1))`
-/

namespace A200263.P1708140071509575368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007605 (n + 1)).toNat

end

end A200263.P1708140071509575368

namespace A200263

/-- `A000035(A007605(n+1))` -/
def P1708140071509575368.Spec : Prop :=
  ∀ n, P1708140071509575368.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P915548728443944635

`A000035(A041000(n+1))`
-/

namespace A200263.P915548728443944635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A041000 (n + 1)).toNat

end

end A200263.P915548728443944635

namespace A200263

/-- `A000035(A041000(n+1))` -/
def P915548728443944635.Spec : Prop :=
  ∀ n, P915548728443944635.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P13615916968612216214

`A000035(A042939(n+1))`
-/

namespace A200263.P13615916968612216214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A042939 (n + 1)).toNat

end

end A200263.P13615916968612216214

namespace A200263

/-- `A000035(A042939(n+1))` -/
def P13615916968612216214.Spec : Prop :=
  ∀ n, P13615916968612216214.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P7367807017679425889

`A000035(A104260(n+1))`
-/

namespace A200263.P7367807017679425889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A104260 (n + 1)).toNat

end

end A200263.P7367807017679425889

namespace A200263

/-- `A000035(A104260(n+1))` -/
def P7367807017679425889.Spec : Prop :=
  ∀ n, P7367807017679425889.a n = A200263 (n + 1)

end A200263

/-! ## A200263.P15565519046982855987

`A000035(A111309(n+1))`
-/

namespace A200263.P15565519046982855987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A111309 (n + 1)).toNat

end

end A200263.P15565519046982855987

namespace A200263

/-- `A000035(A111309(n+1))` -/
def P15565519046982855987.Spec : Prop :=
  ∀ n, P15565519046982855987.a n = A200263 (n + 1)

end A200263

/-!
# A200264: Partial sums of A200263.

The programs for A200264, the canonical program `A200264.P706216200826901243` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200264 has offset 1).

The definition of A200264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200264.P706216200826901243

`∑[A200263(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A200264

/-- `∑[A200263(n+1)]` -/
def P706216200826901243.Spec : Prop :=
  ∀ n, P706216200826901243.a n = A200264 (n + 1)

theorem P706216200826901243.correct : P706216200826901243.Spec := by
  intro n
  simp only [A200264, Nat.add_sub_cancel]

end A200264

/-! ## A200264.P7117746057286374329

`∑[1-A200261(n+1)]`
-/

namespace A200264.P7117746057286374329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A200261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P7117746057286374329

namespace A200264

/-- `∑[1-A200261(n+1)]` -/
def P7117746057286374329.Spec : Prop :=
  ∀ n, P7117746057286374329.a n = A200264 (n + 1)

end A200264

/-! ## A200264.P4231744925232089504

`∑[A007605(n+1)%2]`
-/

namespace A200264.P4231744925232089504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007605 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P4231744925232089504

namespace A200264

/-- `∑[A007605(n+1)%2]` -/
def P4231744925232089504.Spec : Prop :=
  ∀ n, P4231744925232089504.a n = A200264 (n + 1)

end A200264

/-! ## A200264.P12051835763057073874

`∑[A031216(n+1)%2]`
-/

namespace A200264.P12051835763057073874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031216 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P12051835763057073874

namespace A200264

/-- `∑[A031216(n+1)%2]` -/
def P12051835763057073874.Spec : Prop :=
  ∀ n, P12051835763057073874.a n = A200264 (n + 1)

end A200264

/-! ## A200264.P3591404137560400647

`∑[A041000(n+1)%2]`
-/

namespace A200264.P3591404137560400647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041000 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P3591404137560400647

namespace A200264

/-- `∑[A041000(n+1)%2]` -/
def P3591404137560400647.Spec : Prop :=
  ∀ n, P3591404137560400647.a n = A200264 (n + 1)

end A200264

/-! ## A200264.P12771348298086376292

`∑[A122622(n+1)%2]`
-/

namespace A200264.P12771348298086376292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122622 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P12771348298086376292

namespace A200264

/-- `∑[A122622(n+1)%2]` -/
def P12771348298086376292.Spec : Prop :=
  ∀ n, P12771348298086376292.a n = A200264 (n + 1)

end A200264

/-! ## A200264.P12982580097861402956

`1-A200262(n+1)+n`
-/

namespace A200264.P12982580097861402956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A200262 (n + 1) + (n : ℤ)

end

end A200264.P12982580097861402956

namespace A200264

/-- `1-A200262(n+1)+n` -/
def P12982580097861402956.Spec : Prop :=
  ∀ n, P12982580097861402956.a n = A200264 (n + 1)

end A200264

/-! ## A200264.P11980631534478152196

`∑[∑{digits}[A000040(n+1), #]%2]`
-/

namespace A200264.P11980631534478152196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P11980631534478152196

namespace A200264

/-- `∑[∑{digits}[A000040(n+1), #]%2]` -/
def P11980631534478152196.Spec : Prop :=
  ∀ n, (P11980631534478152196.a n : ℤ) = A200264 (n + 1)

end A200264

/-! ## A200264.P17762036259112352222

`(n+1-A199339(n+1))/2`
-/

namespace A200264.P17762036259112352222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A199339 (n + 1) : ℚ) / 2

end

end A200264.P17762036259112352222

namespace A200264

/-- `(n+1-A199339(n+1))/2` -/
def P17762036259112352222.Spec : Prop :=
  ∀ n, P17762036259112352222.a n = (A200264 (n + 1) : ℚ)

end A200264

/-! ## A200264.P2430444085267471981

`∑[∑{digits}[A006093(n+1)+1, #]%2]`
-/

namespace A200264.P2430444085267471981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P2430444085267471981

namespace A200264

/-- `∑[∑{digits}[A006093(n+1)+1, #]%2]` -/
def P2430444085267471981.Spec : Prop :=
  ∀ n, (P2430444085267471981.a n : ℤ) = A200264 (n + 1)

end A200264

/-! ## A200264.P732558194233317082

`∑[A059841(A007605(n+1)+1)]`
-/

namespace A200264.P732558194233317082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A007605 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P732558194233317082

namespace A200264

/-- `∑[A059841(A007605(n+1)+1)]` -/
def P732558194233317082.Spec : Prop :=
  ∀ n, P732558194233317082.a n = A200264 (n + 1)

end A200264

/-! ## A200264.P17996697481699003347

`∑[∑{digits}[record[A006530(n+2)], #]%2]`
-/

namespace A200264.P17996697481699003347
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P17996697481699003347

namespace A200264

/-- `∑[∑{digits}[record[A006530(n+2)], #]%2]` -/
def P17996697481699003347.Spec : Prop :=
  ∀ n, (P17996697481699003347.a n : ℤ) = A200264 (n + 1)

end A200264

/-! ## A200264.P1522182362538246265

`1-∑[∑{digits}[record[A000010(n+1)], #]%2]+n`
-/

namespace A200264.P1522182362538246265
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ)

end

end A200264.P1522182362538246265

namespace A200264

/-- `1-∑[∑{digits}[record[A000010(n+1)], #]%2]+n` -/
def P1522182362538246265.Spec : Prop :=
  ∀ n, P1522182362538246265.a n = A200264 (n + 1)

end A200264

/-! ## A200264.P5307202574050436974

`∑[∑{digits}[eq[1, A001222(n+1)]+1, #]%2]`
-/

namespace A200264.P5307202574050436974
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P5307202574050436974

namespace A200264

/-- `∑[∑{digits}[eq[1, A001222(n+1)]+1, #]%2]` -/
def P5307202574050436974.Spec : Prop :=
  ∀ n, (P5307202574050436974.a n : ℤ) = A200264 (n + 1)

end A200264

/-! ## A200264.P10779819998388830303

`∑[A179081(A028905(n+1))]`
-/

namespace A200264.P10779819998388830303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A028905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P10779819998388830303

namespace A200264

/-- `∑[A179081(A028905(n+1))]` -/
def P10779819998388830303.Spec : Prop :=
  ∀ n, P10779819998388830303.a n = A200264 (n + 1)

end A200264

/-! ## A200264.P10736186580580361961

`∑[A179081(A000040(n+1))]`
-/

namespace A200264.P10736186580580361961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P10736186580580361961

namespace A200264

/-- `∑[A179081(A000040(n+1))]` -/
def P10736186580580361961.Spec : Prop :=
  ∀ n, P10736186580580361961.a n = A200264 (n + 1)

end A200264

/-! ## A200264.P6501356087100288812

`∑[A179081(A004087(n+1))]`
-/

namespace A200264.P6501356087100288812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A004087 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P6501356087100288812

namespace A200264

/-- `∑[A179081(A004087(n+1))]` -/
def P6501356087100288812.Spec : Prop :=
  ∀ n, P6501356087100288812.a n = A200264 (n + 1)

end A200264

/-! ## A200264.P2562907083907513442

`∑[A179081(A028906(n+1))]`
-/

namespace A200264.P2562907083907513442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A028906 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P2562907083907513442

namespace A200264

/-- `∑[A179081(A028906(n+1))]` -/
def P2562907083907513442.Spec : Prop :=
  ∀ n, P2562907083907513442.a n = A200264 (n + 1)

end A200264

/-! ## A200264.P10038455532199813753

`∑[A179081(A171014(n+1))]`
-/

namespace A200264.P10038455532199813753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A171014 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P10038455532199813753

namespace A200264

/-- `∑[A179081(A171014(n+1))]` -/
def P10038455532199813753.Spec : Prop :=
  ∀ n, P10038455532199813753.a n = A200264 (n + 1)

end A200264

/-! ## A200264.P6348968806895393911

`∑[A179081(A101989(n+1))]`
-/

namespace A200264.P6348968806895393911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A101989 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P6348968806895393911

namespace A200264

/-- `∑[A179081(A101989(n+1))]` -/
def P6348968806895393911.Spec : Prop :=
  ∀ n, P6348968806895393911.a n = A200264 (n + 1)

end A200264

/-!
# A200266: Number of 0..2 arrays x(0..n+1) of n+2 elements with zero n-1st differences.

The programs for A200266, there is no canonical definition to state claims against.
-/

/-! ## A200266.P12051015763746843020

`A200272(∑[n+2])`
-/

namespace A200266.P12051015763746843020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200266.P12051015763746843020

/-! ## A200266.P10458605395299390500

`or(1, A200272(A000096(n+1)))`
-/

namespace A200266.P10458605395299390500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A200272 (A000096 (n + 1)).toNat)

end

end A200266.P10458605395299390500

/-! ## A200266.P14973483218413842084

`or(1, A200272(A055998(n)+2))`
-/

namespace A200266.P14973483218413842084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A200272 (A055998 n + 2).toNat)

end

end A200266.P14973483218413842084

/-! ## A200266.P10395617554708728033

`∑{d}[A200272(A000096(n+1)), A000010(#)]`
-/

namespace A200266.P10395617554708728033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A000096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A200266.P10395617554708728033

/-! ## A200266.P6739479741807980657

`char[A128915(n)]*A200272(A000096(n+1))`
-/

namespace A200266.P6739479741807980657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128915 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A200272 (A000096 (n + 1)).toNat

end

end A200266.P6739479741807980657

/-!
# A200267: Number of 0..3 arrays x(0..n+1) of n+2 elements with zero n-1st differences.

The programs for A200267, there is no canonical definition to state claims against.
-/

/-! ## A200267.P6799728623077758018

`A200272(∑[n+3]+1)`
-/

namespace A200267.P6799728623077758018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200267.P6799728623077758018

/-! ## A200267.P8140554059707521294

`A200272(Δ[A008778(n)])+char[22]`
-/

namespace A200267.P8140554059707521294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200267.P8140554059707521294

/-! ## A200267.P13033114765506652950

`A200272(Δ[A008778(n)])%A000045(n+4)`
-/

namespace A200267.P13033114765506652950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200272 (f1 (n + 1) - f1 n).toNat) (A000045 (n + 4))

end

end A200267.P13033114765506652950

/-! ## A200267.P4348679284454301870

`A014963(6*(n+1))*A200272(Δ[A008778(n)])`
-/

namespace A200267.P4348679284454301870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A200272 (f1 (n + 1) - f1 n).toNat

end

end A200267.P4348679284454301870

/-! ## A200267.P15551020461407348333

`A008683(n+1)²!*A200272(Δ[A008778(n)])`
-/

namespace A200267.P15551020461407348333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) * A200272 (f1 (n + 1) - f1 n).toNat

end

end A200267.P15551020461407348333

/-!
# A200268: Number of 0..4 arrays x(0..n+1) of n+2 elements with zero n-1st differences.

The programs for A200268, there is no canonical definition to state claims against.
-/

/-! ## A200268.P11273688159844632668

`A200272(∑[n+4]+3)`
-/

namespace A200268.P11273688159844632668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A200268.P11273688159844632668

/-! ## A200268.P5830845132321092914

`or(1, A200272(A141214(n+1)))`
-/

namespace A200268.P5830845132321092914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A200272 (A141214 (n + 1)).toNat)

end

end A200268.P5830845132321092914

/-! ## A200268.P15502176750940394325

`or(1, A200272(A055998(n+2)))`
-/

namespace A200268.P15502176750940394325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A200272 (A055998 (n + 2)).toNat)

end

end A200268.P15502176750940394325

/-! ## A200268.P14340828068195066536

`or(1, A200272(A000217(n+4)-3))`
-/

namespace A200268.P14340828068195066536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A200272 (A000217 (n + 4) - 3).toNat)

end

end A200268.P14340828068195066536

/-! ## A200268.P12378415703327689522

`A200272(A141214(n+1))%A000045(n+5)`
-/

namespace A200268.P12378415703327689522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200272 (A141214 (n + 1)).toNat) (A000045 (n + 5))

end

end A200268.P12378415703327689522

/-!
# A200269: Number of 0..5 arrays x(0..n+1) of n+2 elements with zero n-1st differences.

The programs for A200269, there is no canonical definition to state claims against.
-/

/-! ## A200269.P9437382257985843142

`A200272(∑[n+5]+6)`
-/

namespace A200269.P9437382257985843142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A200269.P9437382257985843142

/-! ## A200269.P2730119608225629725

`A200272(A000217(n+5)-4)+char[25]`
-/

namespace A200269.P2730119608225629725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A000217 (n + 5) - 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200269.P2730119608225629725

/-! ## A200269.P12046891805786774380

`A200272(A000217(n+5)-4)%A000045(n+6)`
-/

namespace A200269.P12046891805786774380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200272 (A000217 (n + 5) - 4).toNat) (A000045 (n + 6))

end

end A200269.P12046891805786774380

/-! ## A200269.P13635518062378784345

`A007318(C(2, n))*A200272(A000217(n+5)-4)`
-/

namespace A200269.P13635518062378784345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A200272 (A000217 (n + 5) - 4).toNat

end

end A200269.P13635518062378784345

/-! ## A200269.P2684459423779974067

`A200272(A000217(n+5)-4)/A007318(C(n, 2))`
-/

namespace A200269.P2684459423779974067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200272 (A000217 (n + 5) - 4).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A200269.P2684459423779974067

/-!
# A200270: Number of 0..6 arrays x(0..n+1) of n+2 elements with zero (n-1)th differences.

The programs for A200270, there is no canonical definition to state claims against.
-/

/-! ## A200270.P17155637441891403311

`A200272(∑[n+6]+10)`
-/

namespace A200270.P17155637441891403311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A200270.P17155637441891403311

/-! ## A200270.P9016497681820839370

`or(1, A200272(A052905(n+3)))`
-/

namespace A200270.P9016497681820839370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A200272 (A052905 (n + 3)).toNat)

end

end A200270.P9016497681820839370

/-! ## A200270.P13292015326661316207

`∑{d}[A200272(A052905(n+3)), A000010(#)]`
-/

namespace A200270.P13292015326661316207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A052905 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A200270.P13292015326661316207

/-! ## A200270.P13109807733303943366

`A200272(A052905(n+3))%A000244(n+1)`
-/

namespace A200270.P13109807733303943366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200272 (A052905 (n + 3)).toNat) (A000244 (n + 1))

end

end A200270.P13109807733303943366

/-! ## A200270.P7517695646610497205

`A007318(C(n, 2))*A200272(A052905(n+3))`
-/

namespace A200270.P7517695646610497205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A200272 (A052905 (n + 3)).toNat

end

end A200270.P7517695646610497205

/-!
# A200271: Number of 0..7 arrays x(0..n+1) of n+2 elements with zero n-1st differences.

The programs for A200271, there is no canonical definition to state claims against.
-/

/-! ## A200271.P9446833228806510139

`A200272(A055999(n+4))`
-/

namespace A200271.P9446833228806510139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A055999 (n + 4)).toNat

end

end A200271.P9446833228806510139

/-! ## A200271.P1100526142231230192

`A200272(eq[4, A219347(n)])`
-/

namespace A200271.P1100526142231230192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200271.P1100526142231230192

/-! ## A200271.P9882727172645461138

`A200272(eq[6, A193592(n)])`
-/

namespace A200271.P9882727172645461138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200271.P9882727172645461138

/-! ## A200271.P4022965143993478301

`A200272(Δ[A023551(n+2)])`
-/

namespace A200271.P4022965143993478301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (f1 (n + 1) - f1 n).toNat

end

end A200271.P4022965143993478301

/-! ## A200271.P5859401334622344429

`A200272(A052905(n+4)-1)`
-/

namespace A200271.P5859401334622344429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A052905 (n + 4) - 1).toNat

end

end A200271.P5859401334622344429

/-!
# A200272: T(n,k) is the number of 0..k arrays x(0..n+1) of n+2 elements with zero n-1st differences.

The programs for A200272, there is no canonical definition to state claims against.
-/

/-! ## A200272.P15191971884298004516

`A200329(n+1)+A107279(A098851(n+1))`
-/

namespace A200272.P15191971884298004516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (n + 1) + A107279 (A098851 (n + 1)).toNat

end

end A200272.P15191971884298004516

/-! ## A200272.P3374115679098915416

`A200370(n+1)+A107279(A098851(n+1))`
-/

namespace A200272.P3374115679098915416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1) + A107279 (A098851 (n + 1)).toNat

end

end A200272.P3374115679098915416

/-! ## A200272.P12783003140094448238

`A200443(n+1)+A107279(A098851(n+1))`
-/

namespace A200272.P12783003140094448238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (n + 1) + A107279 (A098851 (n + 1)).toNat

end

end A200272.P12783003140094448238

/-! ## A200272.P13347085132519066966

`A200443(∑[A152969(A257493(n))])`
-/

namespace A200272.P13347085132519066966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152969 (A257493 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A200272.P13347085132519066966

/-! ## A200272.P6180483106169386473

`A256505(A316623(n))+A200370(n+1)`
-/

namespace A200272.P6180483106169386473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256505 (A316623 n).toNat + A200370 (n + 1)

end

end A200272.P6180483106169386473

/-!
# A200273: Number of 0..n arrays x(0..5) of 6 elements with zero 3rd differences.

The programs for A200273, there is no canonical definition to state claims against.
-/

/-! ## A200273.P14154926167649171188

`A200272(∑[n+3]+7)`
-/

namespace A200273.P14154926167649171188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A200273.P14154926167649171188

/-! ## A200273.P12994388868878872901

`record[A200272(A133263(n)+2)]`
-/

namespace A200273.P12994388868878872901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A133263 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200273.P12994388868878872901

/-! ## A200273.P16461659797904310209

`or(char[1], A200272(A000096(n+2)+5))`
-/

namespace A200273.P16461659797904310209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A200272 (A000096 (n + 2) + 5).toNat)

end

end A200273.P16461659797904310209

/-! ## A200273.P9840643915438631923

`A355432(2*n+5)+A200272(A055999(n)+10)`
-/

namespace A200273.P9840643915438631923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (2 * n + 5) + A200272 (A055999 n + 10).toNat

end

end A200273.P9840643915438631923

/-! ## A200273.P13723466946039604453

`A007318(and(1, -n))*A200272(A000096(n+2)+5)`
-/

namespace A200273.P13723466946039604453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A200272 (A000096 (n + 2) + 5).toNat

end

end A200273.P13723466946039604453

/-!
# A200274: Number of 0..n arrays x(0..6) of 7 elements with zero 4th differences.

The programs for A200274, there is no canonical definition to state claims against.
-/

/-! ## A200274.P16409101334156957413

`A200272(∑[n+4]+11)`
-/

namespace A200274.P16409101334156957413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A200274.P16409101334156957413

/-! ## A200274.P11713542210197397427

`A200272(A056000(n)+15)+A000007(3*(n+1))`
-/

namespace A200274.P11713542210197397427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A056000 n + 15).toNat + A000007 (3 * (n + 1))

end

end A200274.P11713542210197397427

/-!
# A200275: Number of 0..n arrays x(0..7) of 8 elements with zero 5th differences.

The programs for A200275, there is no canonical definition to state claims against.
-/

/-! ## A200275.P217024622969588262

`A200272(A166136(n+4))`
-/

namespace A200275.P217024622969588262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A166136 (n + 4)).toNat

end

end A200275.P217024622969588262

/-! ## A200275.P4236153001362233181

`A200272(A056115(n)+21)`
-/

namespace A200275.P4236153001362233181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A056115 n + 21).toNat

end

end A200275.P4236153001362233181

/-! ## A200275.P5861758957873036154

`A200272(Δ[A264443(n)]+10)`
-/

namespace A200275.P5861758957873036154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (f1 (n + 1) - f1 n + 10).toNat

end

end A200275.P5861758957873036154

/-! ## A200275.P5215186553237653360

`record[A200272(A027379(n)+9)]`
-/

namespace A200275.P5215186553237653360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A027379 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200275.P5215186553237653360

/-! ## A200275.P11535238222508483334

`A200272(A167499(n+4)+1)`
-/

namespace A200275.P11535238222508483334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A167499 (n + 4) + 1).toNat

end

end A200275.P11535238222508483334

/-!
# A200276: Number of 0..n arrays x(0..8) of 9 elements with zero 6th differences.

The programs for A200276, there is no canonical definition to state claims against.
-/

/-! ## A200276.P16100050740067506688

`A200272(A167487(n+5))`
-/

namespace A200276.P16100050740067506688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A167487 (n + 5)).toNat

end

end A200276.P16100050740067506688

/-! ## A200276.P4834598069365613092

`A200272(A056119(n)+28)`
-/

namespace A200276.P4834598069365613092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A056119 n + 28).toNat

end

end A200276.P4834598069365613092

/-! ## A200276.P12613931392472181107

`A200272(A167499(n+5)+2)`
-/

namespace A200276.P12613931392472181107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A167499 (n + 5) + 2).toNat

end

end A200276.P12613931392472181107

/-! ## A200276.P15596484187416647701

`A200272(A000124(n+6)+6)`
-/

namespace A200276.P15596484187416647701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A000124 (n + 6) + 6).toNat

end

end A200276.P15596484187416647701

/-! ## A200276.P11561597455361979380

`A200272(A000096(n+5)+8)`
-/

namespace A200276.P11561597455361979380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A000096 (n + 5) + 8).toNat

end

end A200276.P11561597455361979380

