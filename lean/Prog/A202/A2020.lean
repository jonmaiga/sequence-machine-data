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
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C001
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A202000: Number of -2..2 circular arrays x(0..n+1) of n+2 elements with zero sums of x(i) and x(i)*x((i+1) mod (n+2)).

The programs for A202000, there is no canonical definition to state claims against.
-/

/-! ## A202000.P4822774299647289323

`A202006(∑[n+2])`
-/

namespace A202000.P4822774299647289323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202000.P4822774299647289323

/-! ## A202000.P15276303549686678149

`or(1, A202006(A055998(n)+2))`
-/

namespace A202000.P15276303549686678149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202006 (A055998 n + 2).toNat)

end

end A202000.P15276303549686678149

/-! ## A202000.P3101956524786640863

`record[A202006(A000096(A133310(n)))]`
-/

namespace A202000.P3101956524786640863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202000.P3101956524786640863

/-! ## A202000.P17726761319482640008

`record[A202006(A000096(A002260(n+1)))]`
-/

namespace A202000.P17726761319482640008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202000.P17726761319482640008

/-! ## A202000.P4753082525568059107

`record[A202006(A000096(A004736(n+1)))]`
-/

namespace A202000.P4753082525568059107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202000.P4753082525568059107

/-!
# A202001: Number of -3..3 circular arrays x(0..n+1) of n+2 elements with zero sums of x(i) and x(i)*x((i+1) mod (n+2)).

The programs for A202001, there is no canonical definition to state claims against.
-/

/-! ## A202001.P10751970436154832379

`A202006(∑[n+3]+1)`
-/

namespace A202001.P10751970436154832379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202001.P10751970436154832379

/-! ## A202001.P17459277541107707960

`or(1, A202006(Δ[A027965(n+2)]))`
-/

namespace A202001.P17459277541107707960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202006 (f1 (n + 1) - f1 n).toNat)

end

end A202001.P17459277541107707960

/-! ## A202001.P4531091429748669589

`or(1, A202006(A000124(n+3)-3))`
-/

namespace A202001.P4531091429748669589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202006 (A000124 (n + 3) - 3).toNat)

end

end A202001.P4531091429748669589

/-! ## A202001.P2290771744455951363

`record[A202006(n+1)/A202006(n+4)]`
-/

namespace A202001.P2290771744455951363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202006 (n + 1) : ℚ) / (A202006 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202001.P2290771744455951363

/-! ## A202001.P3070116242376125018

`gcd(A000038(n), A202006(A000124(n+3)-3))`
-/

namespace A202001.P3070116242376125018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A202006 (A000124 (n + 3) - 3).toNat)

end

end A202001.P3070116242376125018

/-!
# A202002: Number of -4..4 circular arrays x(0..n+1) of n+2 elements with zero sums of x(i) and x(i)*x((i+1) mod (n+2)).

The programs for A202002, there is no canonical definition to state claims against.
-/

/-! ## A202002.P12652120012658432581

`A202006(∑[n+3]+n+4)`
-/

namespace A202002.P12652120012658432581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A202002.P12652120012658432581

/-! ## A202002.P15121252753542958763

`record[A202006(A019304(n))]`
-/

namespace A202002.P15121252753542958763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202002.P15121252753542958763

/-! ## A202002.P1382749496551380164

`or(1, A202006(A155212(n)+5))`
-/

namespace A202002.P1382749496551380164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202006 (A155212 n + 5).toNat)

end

end A202002.P1382749496551380164

/-! ## A202002.P9776594643536979018

`A202006(A155212(n)+5)+A000007(n+1)`
-/

namespace A202002.P9776594643536979018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A155212 n + 5).toNat + A000007 (n + 1)

end

end A202002.P9776594643536979018

/-! ## A202002.P1937908112536446467

`A014963(A008458(n))*A202006(A155212(n)+5)`
-/

namespace A202002.P1937908112536446467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A202006 (A155212 n + 5).toNat

end

end A202002.P1937908112536446467

/-!
# A202003: Number of -5..5 circular arrays x(0..n+1) of n+2 elements with zero sums of x(i) and x(i)*x((i+1) mod (n+2)).

The programs for A202003, there is no canonical definition to state claims against.
-/

/-! ## A202003.P8091529016895851792

`A202006(A046691(n+3))`
-/

namespace A202003.P8091529016895851792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A046691 (n + 3)).toNat

end

end A202003.P8091529016895851792

/-! ## A202003.P805385099840896009

`A202006(Δ[A023545(n+1)])`
-/

namespace A202003.P805385099840896009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (f1 (n + 1) - f1 n).toNat

end

end A202003.P805385099840896009

/-! ## A202003.P9784369560235361239

`A202006(A055999(n+2)+2)`
-/

namespace A202003.P9784369560235361239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A055999 (n + 2) + 2).toNat

end

end A202003.P9784369560235361239

/-! ## A202003.P7932897588207707647

`A202006(A055998(n+3)-1)`
-/

namespace A202003.P7932897588207707647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A055998 (n + 3) - 1).toNat

end

end A202003.P7932897588207707647

/-! ## A202003.P3997714552080523993

`A202006(A000124(n+5)-5)`
-/

namespace A202003.P3997714552080523993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A000124 (n + 5) - 5).toNat

end

end A202003.P3997714552080523993

/-!
# A202004: Number of -6..6 circular arrays x(0..n+1) of n+2 elements with zero sums of x(i) and x(i)*x((i+1) mod (n+2)).

The programs for A202004, there is no canonical definition to state claims against.
-/

/-! ## A202004.P450421096795144906

`A202006(A052905(n+3))`
-/

namespace A202004.P450421096795144906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A052905 (n + 3)).toNat

end

end A202004.P450421096795144906

/-! ## A202004.P12342672490498143231

`A202006(eq[3, A219347(n)])`
-/

namespace A202004.P12342672490498143231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202004.P12342672490498143231

/-! ## A202004.P17086998507065137795

`A202006(A000217(n+6)-5)`
-/

namespace A202004.P17086998507065137795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A000217 (n + 6) - 5).toNat

end

end A202004.P17086998507065137795

/-! ## A202004.P8634535464621646948

`A202006(A000124(n+6)-6)`
-/

namespace A202004.P8634535464621646948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A000124 (n + 6) - 6).toNat

end

end A202004.P8634535464621646948

/-! ## A202004.P15992393077219321738

`A202006(A133263(n+6)-7)`
-/

namespace A202004.P15992393077219321738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A133263 (n + 6) - 7).toNat

end

end A202004.P15992393077219321738

/-!
# A202005: Number of -7..7 circular arrays x(0..n+1) of n+2 elements with zero sums of x(i) and x(i)*x((i+1) mod (n+2)).

The programs for A202005, there is no canonical definition to state claims against.
-/

/-! ## A202005.P9506216190567032095

`A202006(A055999(n+4))`
-/

namespace A202005.P9506216190567032095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A055999 (n + 4)).toNat

end

end A202005.P9506216190567032095

/-! ## A202005.P9850869355984557257

`A202006(eq[4, A219347(n)])`
-/

namespace A202005.P9850869355984557257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202005.P9850869355984557257

/-! ## A202005.P11529134587880228363

`A202006(eq[6, A193592(n)])`
-/

namespace A202005.P11529134587880228363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202005.P11529134587880228363

/-! ## A202005.P2280114218409643597

`A202006(Δ[A023551(n+2)])`
-/

namespace A202005.P2280114218409643597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (f1 (n + 1) - f1 n).toNat

end

end A202005.P2280114218409643597

/-! ## A202005.P1787306080906096360

`A202006(A005408(n)+A161680(n+6)+6)`
-/

namespace A202005.P1787306080906096360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A005408 n + (A161680 (n + 6) + 6)).toNat

end

end A202005.P1787306080906096360

/-!
# A202007: Number of -n..n circular arrays x(0..4) of 5 elements with zero sums of x(i) and x(i)*x((i+1) mod 5).

The programs for A202007, there is no canonical definition to state claims against.
-/

/-! ## A202007.P70381614185360276

`A202006(∑[n+2]+4)`
-/

namespace A202007.P70381614185360276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202007.P70381614185360276

/-! ## A202007.P14565647146029601376

`or(1, A202006(A167614(n+1)))`
-/

namespace A202007.P14565647146029601376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202006 (A167614 (n + 1)).toNat)

end

end A202007.P14565647146029601376

/-! ## A202007.P7719920766264010759

`A202006(A167614(n+1))+A185284(n)`
-/

namespace A202007.P7719920766264010759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A167614 (n + 1)).toNat + A185284 n

end

end A202007.P7719920766264010759

/-! ## A202007.P15504240146218438649

`A202006(A167614(n+1))%A139616(n)`
-/

namespace A202007.P15504240146218438649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202006 (A167614 (n + 1)).toNat) (A139616 n)

end

end A202007.P15504240146218438649

/-! ## A202007.P8214475253165687836

`A202006(A167614(n+1))+A034550(n+1)`
-/

namespace A202007.P8214475253165687836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A167614 (n + 1)).toNat + A034550 (n + 1)

end

end A202007.P8214475253165687836

/-!
# A202008: Number of -n..n circular arrays x(0..5) of 6 elements with zero sums of x(i) and x(i)*x((i+1) mod 6).

The programs for A202008, there is no canonical definition to state claims against.
-/

/-! ## A202008.P4553990660396016228

`A202006(A141214(n)+7)`
-/

namespace A202008.P4553990660396016228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A141214 n + 7).toNat

end

end A202008.P4553990660396016228

/-! ## A202008.P12913690331573929010

`A202006(A052905(n)+9)`
-/

namespace A202008.P12913690331573929010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A052905 n + 9).toNat

end

end A202008.P12913690331573929010

/-! ## A202008.P3095507034668667947

`A202006(A055999(n)+10)`
-/

namespace A202008.P3095507034668667947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A055999 n + 10).toNat

end

end A202008.P3095507034668667947

/-! ## A202008.P10249090707836332848

`A202006(A167614(n+2)+1)`
-/

namespace A202008.P10249090707836332848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A167614 (n + 2) + 1).toNat

end

end A202008.P10249090707836332848

/-! ## A202008.P13449149392386375634

`A202006(A167499(n+2)-1)`
-/

namespace A202008.P13449149392386375634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A167499 (n + 2) - 1).toNat

end

end A202008.P13449149392386375634

/-!
# A202009: Number of -n..n circular arrays x(0..6) of 7 elements with zero sums of x(i) and x(i)*x((i+1) mod 7).

The programs for A202009, there is no canonical definition to state claims against.
-/

/-! ## A202009.P6843604450629285305

`A202006(A167499(n+3))`
-/

namespace A202009.P6843604450629285305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A167499 (n + 3)).toNat

end

end A202009.P6843604450629285305

/-! ## A202009.P16073729441676874033

`A202006(A167614(n+3)+2)`
-/

namespace A202009.P16073729441676874033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A167614 (n + 3) + 2).toNat

end

end A202009.P16073729441676874033

/-! ## A202009.P18084289371257758138

`A202006(A000124(n+4)+4)`
-/

namespace A202009.P18084289371257758138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A000124 (n + 4) + 4).toNat

end

end A202009.P18084289371257758138

/-! ## A202009.P18312493401374809732

`A202006(A000217(n+4)+5)`
-/

namespace A202009.P18312493401374809732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A000217 (n + 4) + 5).toNat

end

end A202009.P18312493401374809732

/-! ## A202009.P18096348360330362254

`record[A202006(n+15)/A202006(n+11)]`
-/

namespace A202009.P18096348360330362254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202006 (n + 15) : ℚ) / (A202006 (n + 11) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202009.P18096348360330362254

/-!
# A202010: Number of -n..n circular arrays x(0..7) of 8 elements with zero sums of x(i) and x(i)*x((i+1) mod 8).

The programs for A202010, there is no canonical definition to state claims against.
-/

/-! ## A202010.P14771143386030759303

`A202006(A166136(n+4))`
-/

namespace A202010.P14771143386030759303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A166136 (n + 4)).toNat

end

end A202010.P14771143386030759303

/-! ## A202010.P1044355941802855371

`A202006(A000124(n+5)+5)`
-/

namespace A202010.P1044355941802855371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A000124 (n + 5) + 5).toNat

end

end A202010.P1044355941802855371

/-! ## A202010.P10264995785806964344

`A202006(A000217(n+5)+6)`
-/

namespace A202010.P10264995785806964344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A000217 (n + 5) + 6).toNat

end

end A202010.P10264995785806964344

/-! ## A202010.P11341707305552671328

`A202006(A161680(n+6)+6)`
-/

namespace A202010.P11341707305552671328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A161680 (n + 6) + 6).toNat

end

end A202010.P11341707305552671328

/-! ## A202010.P10467301703342465259

`A202006(A000096(n+5)-(n-1))`
-/

namespace A202010.P10467301703342465259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A202010.P10467301703342465259

/-!
# A202011: Number of -n..n circular arrays x(0..8) of 9 elements with zero sums of x(i) and x(i)*x((i+1) mod 9).

The programs for A202011, there is no canonical definition to state claims against.
-/

/-! ## A202011.P15673236534564191662

`A202006(A167614(n+5)+4)`
-/

namespace A202011.P15673236534564191662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A167614 (n + 5) + 4).toNat

end

end A202011.P15673236534564191662

/-! ## A202011.P4118506018696084065

`A202006(A000217(n+6)+7)`
-/

namespace A202011.P4118506018696084065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A000217 (n + 6) + 7).toNat

end

end A202011.P4118506018696084065

/-! ## A202011.P58253476655892391

`A202006(A133263(n+7)+A001489(n+2))`
-/

namespace A202011.P58253476655892391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A133263 (n + 7) + A001489 (n + 2)).toNat

end

end A202011.P58253476655892391

/-! ## A202011.P7347825335370057473

`A202006(A052905(n+12)-A017233(n+9))`
-/

namespace A202011.P7347825335370057473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A052905 (n + 12) - A017233 (n + 9)).toNat

end

end A202011.P7347825335370057473

/-!
# A202012: Expansion of (1-x+x^2)/((1-x)(1-x-x^2-x^3)).

The programs for A202012, the canonical program `A202012.P14857273798622555547` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202012 has offset 0).

The definition of A202012 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2)/(1-2x+x^4))` (program `A202012.P14857273798622555547`, by `A202012.P14857273798622555547.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202012.P14857273798622555547

`ogf((1-x+x^2)/(1-2x+x^4))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202012

/-- `ogf((1-x+x^2)/(1-2x+x^4))` -/
def P14857273798622555547.Spec : Prop :=
  ∀ n, P14857273798622555547.a n = A202012 n

theorem P14857273798622555547.correct : P14857273798622555547.Spec := by
  intro n
  simp only [A202012]

end A202012

/-! ## A202012.P1634431596730563340

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A202012.P1634431596730563340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 6] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A202012.P1634431596730563340

namespace A202012

/-- `2*a(n-1)-a(n-4)` -/
def P1634431596730563340.Spec : Prop :=
  ∀ n, P1634431596730563340.a n = A202012 n

end A202012

/-! ## A202012.P3855903646851354168

`a(n-1)+a(n-1)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A202012.P3855903646851354168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 6] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 4))

end

end A202012.P3855903646851354168

namespace A202012

/-- `a(n-1)+a(n-1)-a(n-4)` -/
def P3855903646851354168.Spec : Prop :=
  ∀ n, P3855903646851354168.a n = A202012 n

end A202012

/-! ## A202012.P10939826191969449845

`∑[a(n-1)-(a(n-4)-a(n-1))]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A202012.P10939826191969449845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 3] fun n f1 =>
  f1 (n - 1) - (f1 (n - 4) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202012.P10939826191969449845

namespace A202012

/-- `∑[a(n-1)-(a(n-4)-a(n-1))]` -/
def P10939826191969449845.Spec : Prop :=
  ∀ n, P10939826191969449845.a n = A202012 n

end A202012

/-! ## A202012.P7828650740641293734

`∑[A081172(n+1)]`
-/

namespace A202012.P7828650740641293734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202012.P7828650740641293734

namespace A202012

/-- `∑[A081172(n+1)]` -/
def P7828650740641293734.Spec : Prop :=
  ∀ n, P7828650740641293734.a n = A202012 n

end A202012

/-! ## A202012.P2641119053869885417

`A214899(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A202012.P2641119053869885417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A214899 n + a (n - 2)

end

end A202012.P2641119053869885417

namespace A202012

/-- `A214899(n)+a(n-2)` -/
def P2641119053869885417.Spec : Prop :=
  ∀ n, P2641119053869885417.a n = A202012 n

end A202012

/-! ## A202012.P5496712745258251204

`A008937(n)+A001590(n+1)`
-/

namespace A202012.P5496712745258251204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n + A001590 (n + 1)

end

end A202012.P5496712745258251204

namespace A202012

/-- `A008937(n)+A001590(n+1)` -/
def P5496712745258251204.Spec : Prop :=
  ∀ n, P5496712745258251204.a n = A202012 n

end A202012

/-! ## A202012.P7725040680092604178

`A354784(n)+A248098(n+1)`
-/

namespace A202012.P7725040680092604178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 n + A248098 (n + 1)

end

end A202012.P7725040680092604178

namespace A202012

/-- `A354784(n)+A248098(n+1)` -/
def P7725040680092604178.Spec : Prop :=
  ∀ n, P7725040680092604178.a n = A202012 n

end A202012

/-! ## A202012.P12484668996509217259

`A213967(n+1)-A001590(n)`
-/

namespace A202012.P12484668996509217259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213967 (n + 1) - A001590 n

end

end A202012.P12484668996509217259

namespace A202012

/-- `A213967(n+1)-A001590(n)` -/
def P12484668996509217259.Spec : Prop :=
  ∀ n, P12484668996509217259.a n = A202012 n

end A202012

/-! ## A202012.P6063339772057164317

`A248098(n+2)-A000073(n)`
-/

namespace A202012.P6063339772057164317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248098 (n + 2) - A000073 n

end

end A202012.P6063339772057164317

namespace A202012

/-- `A248098(n+2)-A000073(n)` -/
def P6063339772057164317.Spec : Prop :=
  ∀ n, P6063339772057164317.a n = A202012 n

end A202012

/-! ## A202012.P15222429362422904733

`∑[A001590(n+1)+A000073(n)]`
-/

namespace A202012.P15222429362422904733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) + A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202012.P15222429362422904733

namespace A202012

/-- `∑[A001590(n+1)+A000073(n)]` -/
def P15222429362422904733.Spec : Prop :=
  ∀ n, P15222429362422904733.a n = A202012 n

end A202012

/-! ## A202012.P13269549499734808723

`A000073(n+2)+∑[A000073(n)]`
-/

namespace A202012.P13269549499734808723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202012.P13269549499734808723

namespace A202012

/-- `A000073(n+2)+∑[A000073(n)]` -/
def P13269549499734808723.Spec : Prop :=
  ∀ n, P13269549499734808723.a n = A202012 n

end A202012

/-! ## A202012.P12541812457104277544

`A008937(n)+Δ[A000073(n+1)]`
-/

namespace A202012.P12541812457104277544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n + (f1 (n + 1) - f1 n)

end

end A202012.P12541812457104277544

namespace A202012

/-- `A008937(n)+Δ[A000073(n+1)]` -/
def P12541812457104277544.Spec : Prop :=
  ∀ n, P12541812457104277544.a n = A202012 n

end A202012

/-! ## A202012.P1037090392795325412

`∑[A141036(n)]-(A001590(n)+1)`
-/

namespace A202012.P1037090392795325412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A001590 n + 1)

end

end A202012.P1037090392795325412

namespace A202012

/-- `∑[A141036(n)]-(A001590(n)+1)` -/
def P1037090392795325412.Spec : Prop :=
  ∀ n, P1037090392795325412.a n = A202012 n

end A202012

/-! ## A202012.P17829396791112669710

`∑[A214727(n)-2*A001590(n)]`
-/

namespace A202012.P17829396791112669710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - 2 * A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202012.P17829396791112669710

namespace A202012

/-- `∑[A214727(n)-2*A001590(n)]` -/
def P17829396791112669710.Spec : Prop :=
  ∀ n, P17829396791112669710.a n = A202012 n

end A202012

/-! ## A202012.P18093758805728897435

`A008937(n+1)-A000073(n+1)`
-/

namespace A202012.P18093758805728897435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 1) - A000073 (n + 1)

end

end A202012.P18093758805728897435

namespace A202012

/-- `A008937(n+1)-A000073(n+1)` -/
def P18093758805728897435.Spec : Prop :=
  ∀ n, P18093758805728897435.a n = A202012 n

end A202012

/-! ## A202012.P15581747987649596679

`A248098(n+1)+2*A000073(n)`
-/

namespace A202012.P15581747987649596679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248098 (n + 1) + 2 * A000073 n

end

end A202012.P15581747987649596679

namespace A202012

/-- `A248098(n+1)+2*A000073(n)` -/
def P15581747987649596679.Spec : Prop :=
  ∀ n, P15581747987649596679.a n = A202012 n

end A202012

/-! ## A202012.P508361913426182985

`A000213(n+1)+(A000213(n)-1)/2`
-/

namespace A202012.P508361913426182985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 (n + 1) : ℚ) + (A000213 n - 1 : ℚ) / 2

end

end A202012.P508361913426182985

namespace A202012

/-- `A000213(n+1)+(A000213(n)-1)/2` -/
def P508361913426182985.Spec : Prop :=
  ∀ n, P508361913426182985.a n = (A202012 n : ℚ)

end A202012

/-! ## A202012.P6256637248020048198

`∑[A001590(n+1)+Δ[A000213(n)/2]]`
-/

namespace A202012.P6256637248020048198
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001590 (n + 1) : ℚ) + (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202012.P6256637248020048198

namespace A202012

/-- `∑[A001590(n+1)+Δ[A000213(n)/2]]` -/
def P6256637248020048198.Spec : Prop :=
  ∀ n, P6256637248020048198.a n = (A202012 n : ℚ)

end A202012

/-! ## A202012.P10184174030220604979

`A248098(n+2)+A081172(n)-A000213(n)`
-/

namespace A202012.P10184174030220604979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248098 (n + 2) + (A081172 n - A000213 n)

end

end A202012.P10184174030220604979

namespace A202012

/-- `A248098(n+2)+A081172(n)-A000213(n)` -/
def P10184174030220604979.Spec : Prop :=
  ∀ n, P10184174030220604979.a n = A202012 n

end A202012

/-!
# A202013: The number of functions f:{1,2,...,n}->{1,2,...,n} that have an odd number of odd length cycles and no even length cycles.

The programs for A202013, there is no canonical definition to state claims against.
-/

/-! ## A202013.P5803762450835958085

`A116956(n)-A060435(n)`
-/

namespace A202013.P5803762450835958085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116956 n - A060435 n

end

end A202013.P5803762450835958085

/-! ## A202013.P3926789004150386055

`A116956(n)-A246609(∑[n]+2)`
-/

namespace A202013.P3926789004150386055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116956 n - A246609 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202013.P3926789004150386055

/-! ## A202013.P8718057892009853335

`lcm(n, A116956(n)-A246609(A133263(n)))`
-/

namespace A202013.P8718057892009853335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A116956 n - A246609 (A133263 n).toNat)

end

end A202013.P8718057892009853335

/-! ## A202013.P10281659349565250318

`A116956(n)-(A246609(A133263(n))+A000007(n))`
-/

namespace A202013.P10281659349565250318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116956 n - (A246609 (A133263 n).toNat + A000007 n)

end

end A202013.P10281659349565250318

/-! ## A202013.P4714656388553965621

`A116956(n)-(A246609(A133263(n))+A151934(n))`
-/

namespace A202013.P4714656388553965621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116956 n - (A246609 (A133263 n).toNat + A151934 n)

end

end A202013.P4714656388553965621

/-!
# A202014: Smallest m such that A063882(m) = n.

The programs for A202014, the canonical program `A202014.P8622893897429034250` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202014 has offset 1).

The definition of A202014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202014.P8622893897429034250

`record[Δ[(n+1)*A063882(n+1)]]-n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202014

/-- `record[Δ[(n+1)*A063882(n+1)]]-n` -/
def P8622893897429034250.Spec : Prop :=
  ∀ n, P8622893897429034250.a n = A202014 (n + 1)

theorem P8622893897429034250.correct : P8622893897429034250.Spec := by
  intro n
  simp only [A202014, Nat.add_sub_cancel]

end A202014

/-! ## A202014.P801022817994047748

`A008619(eq[2, A000034(A285758(n+1))])`
-/

namespace A202014.P801022817994047748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A285758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202014.P801022817994047748

namespace A202014

/-- `A008619(eq[2, A000034(A285758(n+1))])` -/
def P801022817994047748.Spec : Prop :=
  ∀ n, P801022817994047748.a n = A202014 (n + 1)

end A202014

/-! ## A202014.P14257736009568770395

`record[A000035(A285758(n+1))*A008619(n)]`
-/

namespace A202014.P14257736009568770395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A285758 (n + 1)).toNat * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202014.P14257736009568770395

namespace A202014

/-- `record[A000035(A285758(n+1))*A008619(n)]` -/
def P14257736009568770395.Spec : Prop :=
  ∀ n, P14257736009568770395.a n = A202014 (n + 1)

end A202014

/-! ## A202014.P12409251514030594111

`record[A000035(A285758(n+1))*A003602(n+1)]`
-/

namespace A202014.P12409251514030594111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A285758 (n + 1)).toNat * A003602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202014.P12409251514030594111

namespace A202014

/-- `record[A000035(A285758(n+1))*A003602(n+1)]` -/
def P12409251514030594111.Spec : Prop :=
  ∀ n, P12409251514030594111.a n = A202014 (n + 1)

end A202014

/-! ## A202014.P6001305783318905479

`record[A000035(A285758(n+1))*(A004526(n)+1)]`
-/

namespace A202014.P6001305783318905479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A285758 (n + 1)).toNat * (A004526 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202014.P6001305783318905479

namespace A202014

/-- `record[A000035(A285758(n+1))*(A004526(n)+1)]` -/
def P6001305783318905479.Spec : Prop :=
  ∀ n, P6001305783318905479.a n = A202014 (n + 1)

end A202014

/-! ## A202014.P7821756521925235471

`A132157(n)+a(n-1)` with `a(0)=1`
-/

namespace A202014.P7821756521925235471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132157 n + a (n - 1)

end

end A202014.P7821756521925235471

namespace A202014

/-- `A132157(n)+a(n-1)` -/
def P7821756521925235471.Spec : Prop :=
  ∀ n, P7821756521925235471.a n = A202014 (n + 1)

end A202014

/-! ## A202014.P7256752522857221606

`∑[A132157(A000038(n)+n)]`
-/

namespace A202014.P7256752522857221606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132157 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202014.P7256752522857221606

namespace A202014

/-- `∑[A132157(A000038(n)+n)]` -/
def P7256752522857221606.Spec : Prop :=
  ∀ n, P7256752522857221606.a n = A202014 (n + 1)

end A202014

/-! ## A202014.P17201946675236867089

`∑[A132157(or(n, A000038(n)))]`
-/

namespace A202014.P17201946675236867089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132157 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202014.P17201946675236867089

namespace A202014

/-- `∑[A132157(or(n, A000038(n)))]` -/
def P17201946675236867089.Spec : Prop :=
  ∀ n, P17201946675236867089.a n = A202014 (n + 1)

end A202014

/-! ## A202014.P3083108152679531998

`∑[A132157(n+1)]+1-A132157(n+1)`
-/

namespace A202014.P3083108152679531998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A132157 (n + 1))

end

end A202014.P3083108152679531998

namespace A202014

/-- `∑[A132157(n+1)]+1-A132157(n+1)` -/
def P3083108152679531998.Spec : Prop :=
  ∀ n, P3083108152679531998.a n = A202014 (n + 1)

end A202014

/-! ## A202014.P1466497109449942935

`∑[A132157(A143182(A034856(n+1)))]`
-/

namespace A202014.P1466497109449942935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132157 (A143182 (A034856 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202014.P1466497109449942935

namespace A202014

/-- `∑[A132157(A143182(A034856(n+1)))]` -/
def P1466497109449942935.Spec : Prop :=
  ∀ n, P1466497109449942935.a n = A202014 (n + 1)

end A202014

/-!
# A202016: Numbers occurring only once in A063882.

The programs for A202016, there is no canonical definition to state claims against.
-/

/-! ## A202016.P16025596910330083386

`eq[1, A132157(n+1)]+1`
-/

namespace A202016.P16025596910330083386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132157 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A202016.P16025596910330083386

/-! ## A202016.P8852686095548900408

`eq[2, sqrt(a(A132157(n)))]` with `a(0)=0, a(1)=4`
-/

namespace A202016.P8852686095548900408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  Real.sqrt (f2 (A132157 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A202016.P8852686095548900408

/-! ## A202016.P11178363406324144244

`eq[1, A132157(A028310(n))]`
-/

namespace A202016.P11178363406324144244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132157 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202016.P11178363406324144244

/-!
# A202018: a(n) = n^2 + n + 41.

The programs for A202018, the canonical program `A202018.P5130107977223247330` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202018 has offset 0).

The definition of A202018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+41` (program `A202018.P5130107977223247330`, by `A202018.P5130107977223247330.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202018.P5130107977223247330

`n²+n+41`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202018

/-- `n²+n+41` -/
def P5130107977223247330.Spec : Prop :=
  ∀ n, (P5130107977223247330.a n : ℤ) = A202018 n

theorem P5130107977223247330.correct : P5130107977223247330.Spec := by
  intro n
  simp only [A202018]

end A202018

/-! ## A202018.P12781186557395341287

`∑[a(n-1)+2]` with `a(0)=41, a(1)=2`
-/

namespace A202018.P12781186557395341287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [41, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202018.P12781186557395341287

namespace A202018

/-- `∑[a(n-1)+2]` -/
def P12781186557395341287.Spec : Prop :=
  ∀ n, (P12781186557395341287.a n : ℤ) = A202018 n

end A202018

/-! ## A202018.P16377397995464364533

`2*(a(n-1)/2+n)` with `a(0)=41`
-/

namespace A202018.P16377397995464364533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [41] fun n a =>
  2 * (a (n - 1) / 2 + (n : ℚ))

end

end A202018.P16377397995464364533

namespace A202018

/-- `2*(a(n-1)/2+n)` -/
def P16377397995464364533.Spec : Prop :=
  ∀ n, P16377397995464364533.a n = (A202018 n : ℚ)

theorem P16377397995464364533.correct : P16377397995464364533.Spec := by
  intro n
  induction n with
  | zero => simp [A202018, A202018.P16377397995464364533.a, A202018.P5130107977223247330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A202018, Nat.add_sub_cancel, A202018.P16377397995464364533.a, A202018.P5130107977223247330.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A202018

/-! ## A202018.P12101072093276694971

`abs(41-(n-A005563(n)))`
-/

namespace A202018.P12101072093276694971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |41 - ((n : ℤ) - A005563 n)|

end

end A202018.P12101072093276694971

namespace A202018

/-- `abs(41-(n-A005563(n)))` -/
def P12101072093276694971.Spec : Prop :=
  ∀ n, P12101072093276694971.a n = A202018 n

end A202018

/-! ## A202018.P14579499041954767476

`∪[A005846(n+1), A145292(n+1)]`
-/

namespace A202018.P14579499041954767476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A202018.P14579499041954767476

namespace A202018

/-- `∪[A005846(n+1), A145292(n+1)]` -/
def P14579499041954767476.Spec : Prop :=
  ∀ n, (P14579499041954767476.a n : ℤ) = A202018 n

end A202018

/-! ## A202018.P9609036591967489846

`A342253(n+5)`
-/

namespace A202018.P9609036591967489846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342253 (n + 5)

end

end A202018.P9609036591967489846

namespace A202018

/-- `A342253(n+5)` -/
def P9609036591967489846.Spec : Prop :=
  ∀ n, P9609036591967489846.a n = A202018 n

end A202018

/-! ## A202018.P16079472253033092766

`record[A118124(n)]`
-/

namespace A202018.P16079472253033092766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202018.P16079472253033092766

namespace A202018

/-- `record[A118124(n)]` -/
def P16079472253033092766.Spec : Prop :=
  ∀ n, P16079472253033092766.a n = A202018 n

end A202018

/-! ## A202018.P3709915919408389639

`A118124(A165157(n))`
-/

namespace A202018.P3709915919408389639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118124 (A165157 n).toNat

end

end A202018.P3709915919408389639

namespace A202018

/-- `A118124(A165157(n))` -/
def P3709915919408389639.Spec : Prop :=
  ∀ n, P3709915919408389639.a n = A202018 n

end A202018

/-! ## A202018.P13568626277893454289

`A118124(A131179(n))`
-/

namespace A202018.P13568626277893454289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118124 (A131179 n).toNat

end

end A202018.P13568626277893454289

namespace A202018

/-- `A118124(A131179(n))` -/
def P13568626277893454289.Spec : Prop :=
  ∀ n, P13568626277893454289.a n = A202018 n

end A202018

/-! ## A202018.P8283264726031029377

`A118124(∑[n])`
-/

namespace A202018.P8283264726031029377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118124 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202018.P8283264726031029377

namespace A202018

/-- `A118124(∑[n])` -/
def P8283264726031029377.Spec : Prop :=
  ∀ n, P8283264726031029377.a n = A202018 n

end A202018

/-! ## A202018.P16180821261870335786

`A005408(∑[n]+20)`
-/

namespace A202018.P16180821261870335786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j + 20)

end

end A202018.P16180821261870335786

namespace A202018

/-- `A005408(∑[n]+20)` -/
def P16180821261870335786.Spec : Prop :=
  ∀ n, P16180821261870335786.a n = A202018 n

end A202018

/-! ## A202018.P8177945688322336263

`A201471(A000217(n)+22)`
-/

namespace A202018.P8177945688322336263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201471 (A000217 n + 22).toNat

end

end A202018.P8177945688322336263

namespace A202018

/-- `A201471(A000217(n)+22)` -/
def P8177945688322336263.Spec : Prop :=
  ∀ n, P8177945688322336263.a n = A202018 n

end A202018

/-!
# A202019: Triangle by rows, related to the numbers of binary trees of height less than n, derived from the Mandelbrot set.

The programs for A202019, there is no canonical definition to state claims against.
-/

/-! ## A202019.P7963884251295234057

`A309049(eq[1, A000265(A002024(n+1))])`
-/

namespace A202019.P7963884251295234057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202019.P7963884251295234057

/-!
# A202020: Number of 4-colored Motzkin paths of length n with no peaks at level 1.

The programs for A202020, there is no canonical definition to state claims against.
-/

/-! ## A202020.P13900287121119597479

`Δ[A165546(n+1)]%A259354(2*n+5)`
-/

namespace A202020.P13900287121119597479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A259354 (2 * n + 5))

end

end A202020.P13900287121119597479

/-! ## A202020.P291485905178911370

`A248180(A267367(n)+A068539(n))`
-/

namespace A202020.P291485905178911370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A267367 n + A068539 n).toNat

end

end A202020.P291485905178911370

/-!
# A202023: Triangle T(n,k), read by rows, given by (1, 0, 1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (0, 1, -1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A202023, the canonical program `A202023.P375326961338251319` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202023 has offset 0).

The definition of A202023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202023.P375326961338251319

`C(row(n), 2*col(n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202023

/-- `C(row(n), 2*col(n))` -/
def P375326961338251319.Spec : Prop :=
  ∀ n, (P375326961338251319.a n : ℤ) = A202023 n

theorem P375326961338251319.correct : P375326961338251319.Spec := by
  intro n
  simp only [A202023]

end A202023

/-! ## A202023.P15355354079965990131

`2*T(n-1,k)+T(n-2,k-1)-T(n-2,k)` with `a(0)=1, a(1)=1`
-/

namespace A202023.P15355354079965990131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * SequenceMachineLib.triUp a n + SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triUp2 a n

end

end A202023.P15355354079965990131

namespace A202023

/-- `2*T(n-1,k)+T(n-2,k-1)-T(n-2,k)` -/
def P15355354079965990131.Spec : Prop :=
  ∀ n, P15355354079965990131.a n = A202023 n

end A202023

/-! ## A202023.P13237295766979010631

`C(A003056(n), A056944(n))`
-/

namespace A202023.P13237295766979010631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A056944 n).toNat

end

end A202023.P13237295766979010631

namespace A202023

/-- `C(A003056(n), A056944(n))` -/
def P13237295766979010631.Spec : Prop :=
  ∀ n, (P13237295766979010631.a n : ℤ) = A202023 n

end A202023

/-! ## A202023.P4488580195119245969

`C(A003056(n), 2*A002262(n))`
-/

namespace A202023.P4488580195119245969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (2 * A002262 n).toNat

end

end A202023.P4488580195119245969

namespace A202023

/-- `C(A003056(n), 2*A002262(n))` -/
def P4488580195119245969.Spec : Prop :=
  ∀ n, (P4488580195119245969.a n : ℤ) = A202023 n

end A202023

/-! ## A202023.P442913335450220925

`C(A003056(n), log2(A059268(n)²))`
-/

namespace A202023.P442913335450220925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n ^ 2 : ℝ))).toNat

end

end A202023.P442913335450220925

namespace A202023

/-- `C(A003056(n), log2(A059268(n)²))` -/
def P442913335450220925.Spec : Prop :=
  ∀ n, (P442913335450220925.a n : ℤ) = A202023 n

end A202023

/-! ## A202023.P515214074931140279

`C(A003056(n), A158405(n+1)-1)`
-/

namespace A202023.P515214074931140279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A158405 (n + 1) - 1).toNat

end

end A202023.P515214074931140279

namespace A202023

/-- `C(A003056(n), A158405(n+1)-1)` -/
def P515214074931140279.Spec : Prop :=
  ∀ n, (P515214074931140279.a n : ℤ) = A202023 n

end A202023

/-! ## A202023.P16788417380639377330

`A080159(n)/A000108(A002262(n))`
-/

namespace A202023.P16788417380639377330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080159 n : ℚ) / (A000108 (A002262 n).toNat : ℚ)

end

end A202023.P16788417380639377330

namespace A202023

/-- `A080159(n)/A000108(A002262(n))` -/
def P16788417380639377330.Spec : Prop :=
  ∀ n, P16788417380639377330.a n = (A202023 n : ℚ)

end A202023

/-! ## A202023.P15866480347121096524

`C(A003056(n), A005843(A002262(n)))`
-/

namespace A202023.P15866480347121096524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A005843 (A002262 n).toNat).toNat

end

end A202023.P15866480347121096524

namespace A202023

/-- `C(A003056(n), A005843(A002262(n)))` -/
def P15866480347121096524.Spec : Prop :=
  ∀ n, (P15866480347121096524.a n : ℤ) = A202023 n

end A202023

/-! ## A202023.P2215371715706825416

`C(A003056(n), A005843(A057554(2*n+1)))`
-/

namespace A202023.P2215371715706825416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A005843 (A057554 (2 * n + 1)).toNat).toNat

end

end A202023.P2215371715706825416

namespace A202023

/-- `C(A003056(n), A005843(A057554(2*n+1)))` -/
def P2215371715706825416.Spec : Prop :=
  ∀ n, (P2215371715706825416.a n : ℤ) = A202023 n

end A202023

/-! ## A202023.P846520236453059143

`A098158(A061579(n))`
-/

namespace A202023.P846520236453059143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 (A061579 n).toNat

end

end A202023.P846520236453059143

namespace A202023

/-- `A098158(A061579(n))` -/
def P846520236453059143.Spec : Prop :=
  ∀ n, P846520236453059143.a n = A202023 n

end A202023

/-! ## A202023.P17064994633574564355

`A098158(A114327(n)+n)`
-/

namespace A202023.P17064994633574564355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 (A114327 n + (n : ℤ)).toNat

end

end A202023.P17064994633574564355

namespace A202023

/-- `A098158(A114327(n)+n)` -/
def P17064994633574564355.Spec : Prop :=
  ∀ n, P17064994633574564355.a n = A202023 n

end A202023

/-! ## A202023.P1807189139760382830

`A098158(A038722(n+1)-1)`
-/

namespace A202023.P1807189139760382830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 (A038722 (n + 1) - 1).toNat

end

end A202023.P1807189139760382830

namespace A202023

/-- `A098158(A038722(n+1)-1)` -/
def P1807189139760382830.Spec : Prop :=
  ∀ n, P1807189139760382830.a n = A202023 n

end A202023

/-! ## A202023.P11631351713489302948

`A098158(A002024(n+1)²-(n+1))`
-/

namespace A202023.P11631351713489302948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A202023.P11631351713489302948

namespace A202023

/-- `A098158(A002024(n+1)²-(n+1))` -/
def P11631351713489302948.Spec : Prop :=
  ∀ n, P11631351713489302948.a n = A202023 n

end A202023

/-! ## A202023.P9931026288665496236

`C(A003056(n), val(A175840(n)², 2))`
-/

namespace A202023.P9931026288665496236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (SequenceMachineLib.valuation (A175840 n ^ 2).toNat 2)

end

end A202023.P9931026288665496236

namespace A202023

/-- `C(A003056(n), val(A175840(n)², 2))` -/
def P9931026288665496236.Spec : Prop :=
  ∀ n, (P9931026288665496236.a n : ℤ) = A202023 n

end A202023

/-! ## A202023.P9178548569041567292

`A152815(A093995(n+1)+2*n)`
-/

namespace A202023.P9178548569041567292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 (A093995 (n + 1) + (2 * n : ℤ)).toNat

end

end A202023.P9178548569041567292

namespace A202023

/-- `A152815(A093995(n+1)+2*n)` -/
def P9178548569041567292.Spec : Prop :=
  ∀ n, P9178548569041567292.a n = A202023 n

end A202023

/-! ## A202023.P5349021631520642752

`A152815(A093995(n+1)+n+n)`
-/

namespace A202023.P5349021631520642752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 (A093995 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A202023.P5349021631520642752

namespace A202023

/-- `A152815(A093995(n+1)+n+n)` -/
def P5349021631520642752.Spec : Prop :=
  ∀ n, P5349021631520642752.a n = A202023 n

end A202023

/-! ## A202023.P7269821227355401125

`A178112(A002024(n+1)+A016825(n)-1)`
-/

namespace A202023.P7269821227355401125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178112 (A002024 (n + 1) + (A016825 n - 1)).toNat

end

end A202023.P7269821227355401125

namespace A202023

/-- `A178112(A002024(n+1)+A016825(n)-1)` -/
def P7269821227355401125.Spec : Prop :=
  ∀ n, P7269821227355401125.a n = A202023 n

end A202023

/-! ## A202023.P4213937978604898795

`A178112(A007401(n+1)+A016789(n)-1)`
-/

namespace A202023.P4213937978604898795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178112 (A007401 (n + 1) + (A016789 n - 1)).toNat

end

end A202023.P4213937978604898795

namespace A202023

/-- `A178112(A007401(n+1)+A016789(n)-1)` -/
def P4213937978604898795.Spec : Prop :=
  ∀ n, P4213937978604898795.a n = A202023 n

end A202023

/-! ## A202023.P9224017589662687234

`A124645(2*A061885(n))`
-/

namespace A202023.P9224017589662687234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124645 (2 * A061885 n).toNat

end

end A202023.P9224017589662687234

namespace A202023

/-- `A124645(2*A061885(n))` -/
def P9224017589662687234.Spec : Prop :=
  ∀ n, P9224017589662687234.a n = A202023 n

end A202023

/-! ## A202023.P799801477507514295

`A103633(2*(A057944(n)+n))`
-/

namespace A202023.P799801477507514295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 (2 * (A057944 n + (n : ℤ))).toNat

end

end A202023.P799801477507514295

namespace A202023

/-- `A103633(2*(A057944(n)+n))` -/
def P799801477507514295.Spec : Prop :=
  ∀ n, P799801477507514295.a n = A202023 n

end A202023

/-!
# A202026: Number of n X n zero-sum -1..1 arrays with rows and columns lexicographically nondecreasing.

The programs for A202026, there is no canonical definition to state claims against.
-/

/-! ## A202026.P3579946144047391471

`A202033(∑[4*n]+1)`
-/

namespace A202026.P3579946144047391471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202026.P3579946144047391471

/-! ## A202026.P1447848427169887111

`record[A202033(Δ[A235355(n)])]`
-/

namespace A202026.P1447848427169887111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202026.P1447848427169887111

/-! ## A202026.P605506579596985551

`A202033(A001844(n))+char[11]`
-/

namespace A202026.P605506579596985551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202026.P605506579596985551

/-!
# A202027: Number of n X 2 zero-sum -1..1 arrays with rows and columns lexicographically nondecreasing.

The programs for A202027, there is no canonical definition to state claims against.
-/

/-! ## A202027.P11699341806072716430

`A202033(∑[n+1]+2)`
-/

namespace A202027.P11699341806072716430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202027.P11699341806072716430

/-! ## A202027.P3690778106808178435

`record[A202033(Δ[A003453(n+5)]+2)]`
-/

namespace A202027.P3690778106808178435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202027.P3690778106808178435

/-! ## A202027.P12129063868478851536

`A202033(A133263(n+1))%A202029(n+1)`
-/

namespace A202027.P12129063868478851536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202033 (A133263 (n + 1)).toNat) (A202029 (n + 1))

end

end A202027.P12129063868478851536

/-! ## A202027.P10246128408308927491

`record[A202033(abs(A201163(n)))]`
-/

namespace A202027.P10246128408308927491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202027.P10246128408308927491

/-! ## A202027.P4126453663399204095

`A000027(A202033(∑[n+2]))`
-/

namespace A202027.P4126453663399204095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A202033 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A202027.P4126453663399204095

/-!
# A202028: Number of nX3 zero-sum -1..1 arrays with rows and columns lexicographically nondecreasing.

The programs for A202028, there is no canonical definition to state claims against.
-/

/-! ## A202028.P15240126488845289002

`A202033(∑[n+2]+4)`
-/

namespace A202028.P15240126488845289002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202028.P15240126488845289002

/-! ## A202028.P10857471010818120958

`lcm(A033999(n), A202033(A167614(n+1)))`
-/

namespace A202028.P10857471010818120958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A202033 (A167614 (n + 1)).toNat)

end

end A202028.P10857471010818120958

/-! ## A202028.P15470020533892299721

`A202033(A167614(n+1))%A156570(n+1)`
-/

namespace A202028.P15470020533892299721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202033 (A167614 (n + 1)).toNat) (A156570 (n + 1))

end

end A202028.P15470020533892299721

/-! ## A202028.P10399313433474235057

`or(A024360(n+1), A202033(A167614(n+1)))`
-/

namespace A202028.P10399313433474235057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024360 (n + 1)) (A202033 (A167614 (n + 1)).toNat)

end

end A202028.P10399313433474235057

/-! ## A202028.P7492649377517569368

`or(A070203(n+1), A202033(A167614(n+1)))`
-/

namespace A202028.P7492649377517569368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070203 (n + 1)) (A202033 (A167614 (n + 1)).toNat)

end

end A202028.P7492649377517569368

/-!
# A202029: Number of nX4 zero-sum -1..1 arrays with rows and columns lexicographically nondecreasing.

The programs for A202029, there is no canonical definition to state claims against.
-/

/-! ## A202029.P9669053725926623756

`A202033(A374004(n+1))`
-/

namespace A202029.P9669053725926623756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (A374004 (n + 1)).toNat

end

end A202029.P9669053725926623756

/-! ## A202029.P9220616466636615686

`A202033(A052905(n)+9)`
-/

namespace A202029.P9220616466636615686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (A052905 n + 9).toNat

end

end A202029.P9220616466636615686

/-! ## A202029.P9803164907237857553

`A202033(A055999(n)+10)`
-/

namespace A202029.P9803164907237857553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (A055999 n + 10).toNat

end

end A202029.P9803164907237857553

/-! ## A202029.P5413510526022162850

`A202033(A167614(n+2)+1)`
-/

namespace A202029.P5413510526022162850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (A167614 (n + 2) + 1).toNat

end

end A202029.P5413510526022162850

/-! ## A202029.P1152950982323921818

`A202033(A166136(n+2)-2)`
-/

namespace A202029.P1152950982323921818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (A166136 (n + 2) - 2).toNat

end

end A202029.P1152950982323921818

/-!
# A202030: Number of nX5 zero-sum -1..1 arrays with rows and columns lexicographically nondecreasing.

The programs for A202030, there is no canonical definition to state claims against.
-/

/-! ## A202030.P15430040796088587300

`A202033(A374005(n+1))`
-/

namespace A202030.P15430040796088587300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (A374005 (n + 1)).toNat

end

end A202030.P15430040796088587300

/-! ## A202030.P1343360528694023867

`A202033(A167499(n+3))`
-/

namespace A202030.P1343360528694023867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (A167499 (n + 3)).toNat

end

end A202030.P1343360528694023867

/-! ## A202030.P6639931743150424224

`A202033(A155212(n)+13)`
-/

namespace A202030.P6639931743150424224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (A155212 n + 13).toNat

end

end A202030.P6639931743150424224

/-! ## A202030.P3595092042522858623

`A202033(A056000(n)+15)`
-/

namespace A202030.P3595092042522858623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (A056000 n + 15).toNat

end

end A202030.P3595092042522858623

/-! ## A202030.P316051542142080009

`A202033(eq[7, A066657(n)])`
-/

namespace A202030.P316051542142080009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202030.P316051542142080009

/-!
# A202031: Number of nX6 zero-sum -1..1 arrays with rows and columns lexicographically nondecreasing.

The programs for A202031, there is no canonical definition to state claims against.
-/

/-! ## A202031.P927722906634482036

`A202033(A374007(n+1))`
-/

namespace A202031.P927722906634482036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (A374007 (n + 1)).toNat

end

end A202031.P927722906634482036

/-! ## A202031.P8299042431304986776

`A202033(eq[7, A131818(n+1)])`
-/

namespace A202031.P8299042431304986776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202031.P8299042431304986776

/-! ## A202031.P9261875269962757707

`A202033(A052905(n+3))`
-/

namespace A202031.P9261875269962757707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (A052905 (n + 3)).toNat

end

end A202031.P9261875269962757707

/-! ## A202031.P11685783651948548993

`A202033(eq[3, A219347(n)])`
-/

namespace A202031.P11685783651948548993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202031.P11685783651948548993

/-! ## A202031.P16809786234544405257

`A202033(eq[5, A193592(n)])`
-/

namespace A202031.P16809786234544405257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202031.P16809786234544405257

/-!
# A202032: Number of nX7 zero-sum -1..1 arrays with rows and columns lexicographically nondecreasing.

The programs for A202032, there is no canonical definition to state claims against.
-/

/-! ## A202032.P17041762801140118944

`A202033(A374008(n+1))`
-/

namespace A202032.P17041762801140118944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (A374008 (n + 1)).toNat

end

end A202032.P17041762801140118944

/-! ## A202032.P3821712821760075532

`A202033(A167487(n+5))`
-/

namespace A202032.P3821712821760075532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (A167487 (n + 5)).toNat

end

end A202032.P3821712821760075532

/-! ## A202032.P1988831349558594052

`A202033(eq[11, A066657(n)])`
-/

namespace A202032.P1988831349558594052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202032.P1988831349558594052

/-! ## A202032.P6890999655992137799

`A202033(A166136(n+5)+1)`
-/

namespace A202032.P6890999655992137799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (A166136 (n + 5) + 1).toNat

end

end A202032.P6890999655992137799

/-! ## A202032.P9623653888176755935

`A202033(A167614(n+5)+4)`
-/

namespace A202032.P9623653888176755935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202033 (A167614 (n + 5) + 4).toNat

end

end A202032.P9623653888176755935

/-!
# A202033: T(n,k)=Number of nXk zero-sum -1..1 arrays with rows and columns lexicographically nondecreasing.

The programs for A202033, there is no canonical definition to state claims against.
-/

/-! ## A202033.P15615684109737260988

`A194303(A022171(n)*A194303(n+1))`
-/

namespace A202033.P15615684109737260988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194303 (A022171 n * A194303 (n + 1)).toNat

end

end A202033.P15615684109737260988

/-!
# A202034: Number of distinct prime residues of k^n (mod n), k=0..n-1.

The programs for A202034, there is no canonical definition to state claims against.
-/

/-! ## A202034.P9302156055611255433

`A156061(n+1)-A133162(A164161(n))`
-/

namespace A202034.P9302156055611255433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (n + 1) - A133162 (A164161 n).toNat

end

end A202034.P9302156055611255433

/-! ## A202034.P11455609423091093305

`A225395(n+1)-A175409(A175394(n))`
-/

namespace A202034.P11455609423091093305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225395 (n + 1) - A175409 (A175394 n).toNat

end

end A202034.P11455609423091093305

/-! ## A202034.P10060144560554046335

`A187834(n+1)%A290103(A077168(n))`
-/

namespace A202034.P10060144560554046335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187834 (n + 1)) (A290103 (A077168 n).toNat)

end

end A202034.P10060144560554046335

/-! ## A202034.P2475280461402180703

`A299707(A000079(n))%A147610(n+2)`
-/

namespace A202034.P2475280461402180703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299707 (A000079 n).toNat) (A147610 (n + 2))

end

end A202034.P2475280461402180703

/-! ## A202034.P13042303276635484949

`A000120(A316473(n+1))%(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A202034.P13042303276635484949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A316473 (n + 1)).toNat) (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)

end

end A202034.P13042303276635484949

/-!
# A202036: Smallest prime residue of x^n (mod n) for x=0..n-1, or 0 if no such prime exists.

The programs for A202036, there is no canonical definition to state claims against.
-/

/-! ## A202036.P13329639680164914422

`A059126(A055515(n+1))%A007913(n+1)`
-/

namespace A202036.P13329639680164914422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059126 (A055515 (n + 1)).toNat) (A007913 (n + 1))

end

end A202036.P13329639680164914422

/-! ## A202036.P5517418244632966660

`A118136(A118106(n+1))%A118123(A118122(n+1))`
-/

namespace A202036.P5517418244632966660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118136 (A118106 (n + 1)).toNat) (A118123 (A118122 (n + 1)).toNat)

end

end A202036.P5517418244632966660

/-! ## A202036.P14687556958580494393

`A004197(A285947(and(n+1, ∑{d}[n+1, #%(n+1)])+4))`
-/

namespace A202036.P14687556958580494393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A285947 (Nat.land (n + 1) (∑ d ∈ Nat.divisors (f1 n), d % (n + 1)) + 4)).toNat

end

end A202036.P14687556958580494393

/-! ## A202036.P9974061360872119226

`A000203(A000043(2*n+1))%A213809(2*n+5)`
-/

namespace A202036.P9974061360872119226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A000043 (2 * n + 1)).toNat) (A213809 (2 * n + 5))

end

end A202036.P9974061360872119226

/-! ## A202036.P16269338609807995218

`A085304(n^(n%2)+1)%(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A202036.P16269338609807995218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085304 (n ^ (n % 2) + 1)) (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ)))

end

end A202036.P16269338609807995218

/-!
# A202037: Number of unlabeled 6-trees on n nodes.

The programs for A202037, there is no canonical definition to state claims against.
-/

/-! ## A202037.P11087443376604254301

`A322754(A077168(n)+1)`
-/

namespace A202037.P11087443376604254301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322754 (A077168 n + 1).toNat

end

end A202037.P11087443376604254301

/-! ## A202037.P6994962636544430527

`A322754(A248502(n+1))`
-/

namespace A202037.P6994962636544430527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322754 (A248502 (n + 1)).toNat

end

end A202037.P6994962636544430527

/-! ## A202037.P9422977643526046005

`A322754(A250039(n+1))`
-/

namespace A202037.P9422977643526046005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322754 (A250039 (n + 1)).toNat

end

end A202037.P9422977643526046005

/-! ## A202037.P3793259551419749785

`A004183(A322754(n+2))`
-/

namespace A202037.P3793259551419749785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A322754 (n + 2)).toNat

end

end A202037.P3793259551419749785

/-! ## A202037.P5477014647716060653

`A322754(A032950(n+2))`
-/

namespace A202037.P5477014647716060653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322754 (A032950 (n + 2)).toNat

end

end A202037.P5477014647716060653

/-!
# A202038: Hafnian of a +/ -1 array.

The programs for A202038, there is no canonical definition to state claims against.
-/

/-! ## A202038.P10939425004970812113

`A012259(n)*A087960(n)`
-/

namespace A202038.P10939425004970812113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012259 n * A087960 n

end

end A202038.P10939425004970812113

/-! ## A202038.P10666896157042059207

`∏[A033999(n)]*A012259(n)`
-/

namespace A202038.P10666896157042059207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A012259 n

end

end A202038.P10666896157042059207

/-! ## A202038.P10655479008127827253

`(2-A084101(n))*A012259(n)`
-/

namespace A202038.P10655479008127827253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A084101 n) * A012259 n

end

end A202038.P10655479008127827253

/-! ## A202038.P14575999691006314097

`A012259(n)*A046980(2*n+1)`
-/

namespace A202038.P14575999691006314097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012259 n * A046980 (2 * n + 1)

end

end A202038.P14575999691006314097

/-! ## A202038.P4962148156842700858

`∏[A309873((n+2)²+1)]*A012259(n)`
-/

namespace A202038.P4962148156842700858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 ((n + 2) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A012259 n

end

end A202038.P4962148156842700858

/-! ## A202038.P17010586988969932018

`A012259(A291179(n+1))/A087960(n)`
-/

namespace A202038.P17010586988969932018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012259 (A291179 (n + 1)).toNat : ℚ) / (A087960 n : ℚ)

end

end A202038.P17010586988969932018

/-!
# A202039: Triangle T(n,m) = coefficient of x^n in expansion of (1/2-1/2*(1-8*x)^1/4)^m = sum(n>=m, T(n,m) x^n), n>=1, m>=1.

The programs for A202039, the canonical program `A202039.P5594732448034194821` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202039 has offset 1).

The definition of A202039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3741 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202039.P5594732448034194821

`A049213(n+1)/2^(C(comp[∑[n]]-n, 2)-(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202039

/-- `A049213(n+1)/2^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P5594732448034194821.Spec : Prop :=
  ∀ n, P5594732448034194821.a n = (A202039 (n + 1) : ℚ)

end A202039

/-! ## A202039.P12348433866165233325

`A049213(n+1)/A130321(n)`
-/

namespace A202039.P12348433866165233325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049213 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A202039.P12348433866165233325

namespace A202039

/-- `A049213(n+1)/A130321(n)` -/
def P12348433866165233325.Spec : Prop :=
  ∀ n, P12348433866165233325.a n = (A202039 (n + 1) : ℚ)

end A202039

/-! ## A202039.P8242707408818307057

`A049213(n+1)/sqrt(A262616(n))`
-/

namespace A202039.P8242707408818307057
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A049213 (n + 1) : ℝ) / Real.sqrt (A262616 n : ℝ)

end

end A202039.P8242707408818307057

namespace A202039

/-- `A049213(n+1)/sqrt(A262616(n))` -/
def P8242707408818307057.Spec : Prop :=
  ∀ n, P8242707408818307057.a n = (A202039 (n + 1) : ℝ)

end A202039

/-! ## A202039.P11028536951808431551

`A049213(n+1)/A000079(A025581(n))`
-/

namespace A202039.P11028536951808431551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049213 (n + 1) : ℚ) / (A000079 (A025581 n).toNat : ℚ)

end

end A202039.P11028536951808431551

namespace A202039

/-- `A049213(n+1)/A000079(A025581(n))` -/
def P11028536951808431551.Spec : Prop :=
  ∀ n, P11028536951808431551.a n = (A202039 (n + 1) : ℚ)

end A202039

/-! ## A202039.P6217591714320503622

`A049213(n+1)/A016116(A099375(n))`
-/

namespace A202039.P6217591714320503622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049213 (n + 1) : ℚ) / (A016116 (A099375 n).toNat : ℚ)

end

end A202039.P6217591714320503622

namespace A202039

/-- `A049213(n+1)/A016116(A099375(n))` -/
def P6217591714320503622.Spec : Prop :=
  ∀ n, P6217591714320503622.a n = (A202039 (n + 1) : ℚ)

end A202039

/-! ## A202039.P9128664819039596939

`A049213(n+1)/A059268(A061579(n))`
-/

namespace A202039.P9128664819039596939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049213 (n + 1) : ℚ) / (A059268 (A061579 n).toNat : ℚ)

end

end A202039.P9128664819039596939

namespace A202039

/-- `A049213(n+1)/A059268(A061579(n))` -/
def P9128664819039596939.Spec : Prop :=
  ∀ n, P9128664819039596939.a n = (A202039 (n + 1) : ℚ)

end A202039

/-! ## A202039.P4581103477097112058

`A049213(n+1)/A011782(A004736(n+1))`
-/

namespace A202039.P4581103477097112058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049213 (n + 1) : ℚ) / (A011782 (A004736 (n + 1)).toNat : ℚ)

end

end A202039.P4581103477097112058

namespace A202039

/-- `A049213(n+1)/A011782(A004736(n+1))` -/
def P4581103477097112058.Spec : Prop :=
  ∀ n, P4581103477097112058.a n = (A202039 (n + 1) : ℚ)

end A202039

/-!
# A202040: Number of zero-sum n X n -1..1 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A202040, there is no canonical definition to state claims against.
-/

/-! ## A202040.P9498191998325772373

`A202047(∑[4*n]+1)`
-/

namespace A202040.P9498191998325772373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202040.P9498191998325772373

/-!
# A202041: Number of zero-sum nX2 -1..1 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A202041, there is no canonical definition to state claims against.
-/

/-! ## A202041.P16088917246754192386

`A202047(∑[n+1]+2)`
-/

namespace A202041.P16088917246754192386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202041.P16088917246754192386

/-! ## A202041.P13426481566429853928

`record[A010054(n)*A202047(n+2)]`
-/

namespace A202041.P13426481566429853928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A202047 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202041.P13426481566429853928

/-! ## A202041.P9285257495247027682

`record[A103452(n)*A202047(n+3)]`
-/

namespace A202041.P9285257495247027682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A202047 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202041.P9285257495247027682

/-! ## A202041.P13254814594528959372

`record[A202047(n+3)/A281000(n)]`
-/

namespace A202041.P13254814594528959372
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202047 (n + 3) : ℚ) / (A281000 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202041.P13254814594528959372

/-! ## A202041.P13726798792356311855

`record[A202047(n+3)/A202039(n+1)]`
-/

namespace A202041.P13726798792356311855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202047 (n + 3) : ℚ) / (A202039 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202041.P13726798792356311855

/-!
# A202042: Number of zero-sum nX3 -1..1 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A202042, there is no canonical definition to state claims against.
-/

/-! ## A202042.P7526201114365153114

`A202047(∑[n+2]+4)`
-/

namespace A202042.P7526201114365153114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202042.P7526201114365153114

/-! ## A202042.P6654967939116476452

`or(1, A202047(A167614(n+1)))`
-/

namespace A202042.P6654967939116476452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202047 (A167614 (n + 1)).toNat)

end

end A202042.P6654967939116476452

/-! ## A202042.P4140814692168192128

`A202047(A167614(n+1))+A025466(n)`
-/

namespace A202042.P4140814692168192128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (A167614 (n + 1)).toNat + A025466 n

end

end A202042.P4140814692168192128

/-! ## A202042.P17535644924780738328

`A202047(A167614(n+1))+A046784(n)`
-/

namespace A202042.P17535644924780738328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (A167614 (n + 1)).toNat + A046784 n

end

end A202042.P17535644924780738328

/-! ## A202042.P17202778399486741112

`A202047(A167614(n+1))+A046786(n)`
-/

namespace A202042.P17202778399486741112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (A167614 (n + 1)).toNat + A046786 n

end

end A202042.P17202778399486741112

/-!
# A202043: Number of zero-sum nX4 -1..1 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A202043, there is no canonical definition to state claims against.
-/

/-! ## A202043.P15587741824991110903

`A202047(A374004(n+1))`
-/

namespace A202043.P15587741824991110903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (A374004 (n + 1)).toNat

end

end A202043.P15587741824991110903

/-! ## A202043.P3116120179277953389

`A202047(A141214(n)+7)`
-/

namespace A202043.P3116120179277953389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (A141214 n + 7).toNat

end

end A202043.P3116120179277953389

/-! ## A202043.P2469033247960546698

`A202047(A052905(n)+9)`
-/

namespace A202043.P2469033247960546698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (A052905 n + 9).toNat

end

end A202043.P2469033247960546698

/-! ## A202043.P1762261667803339282

`A202047(A055999(n)+10)`
-/

namespace A202043.P1762261667803339282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (A055999 n + 10).toNat

end

end A202043.P1762261667803339282

/-! ## A202043.P10027637000614328033

`A202047(eq[5, A066657(n)])`
-/

namespace A202043.P10027637000614328033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202043.P10027637000614328033

/-!
# A202044: Number of zero-sum nX5 -1..1 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A202044, there is no canonical definition to state claims against.
-/

/-! ## A202044.P1681545328954735670

`A202047(A374005(n+1))`
-/

namespace A202044.P1681545328954735670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (A374005 (n + 1)).toNat

end

end A202044.P1681545328954735670

/-! ## A202044.P17109643109774658879

`A202047(A167499(n+3))`
-/

namespace A202044.P17109643109774658879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (A167499 (n + 3)).toNat

end

end A202044.P17109643109774658879

/-! ## A202044.P3816760415622159551

`A202047(A155212(n)+13)`
-/

namespace A202044.P3816760415622159551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (A155212 n + 13).toNat

end

end A202044.P3816760415622159551

/-! ## A202044.P17283098677934767005

`A202047(A056000(n)+15)`
-/

namespace A202044.P17283098677934767005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (A056000 n + 15).toNat

end

end A202044.P17283098677934767005

/-! ## A202044.P15009479187918884295

`A202047(eq[7, A066657(n)])`
-/

namespace A202044.P15009479187918884295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202044.P15009479187918884295

/-!
# A202045: Number of zero-sum nX6 -1..1 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A202045, there is no canonical definition to state claims against.
-/

/-! ## A202045.P16777124550097561608

`A202047(A374007(n+1))`
-/

namespace A202045.P16777124550097561608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (A374007 (n + 1)).toNat

end

end A202045.P16777124550097561608

/-! ## A202045.P148339393166835861

`A202047(A166136(n+4))`
-/

namespace A202045.P148339393166835861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (A166136 (n + 4)).toNat

end

end A202045.P148339393166835861

/-! ## A202045.P15244062366968850918

`A202047(A056115(n)+21)`
-/

namespace A202045.P15244062366968850918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (A056115 n + 21).toNat

end

end A202045.P15244062366968850918

/-! ## A202045.P17681657378348340083

`A202047(Δ[A264443(n)]+10)`
-/

namespace A202045.P17681657378348340083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (f1 (n + 1) - f1 n + 10).toNat

end

end A202045.P17681657378348340083

/-!
# A202046: Number of zero-sum nX7 -1..1 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A202046, there is no canonical definition to state claims against.
-/

/-! ## A202046.P13577754429076324980

`A202047(A374008(n+1))`
-/

namespace A202046.P13577754429076324980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202047 (A374008 (n + 1)).toNat

end

end A202046.P13577754429076324980

/-!
# A202047: T(n,k)=Number of zero-sum nXk -1..1 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A202047, there is no canonical definition to state claims against.
-/

/-! ## A202047.P7160138765457302648

`∑{d}[A034298(A339490(n+1)), A339490(#)]`
-/

namespace A202047.P7160138765457302648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (A339490 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A339490 d

end

end A202047.P7160138765457302648

/-! ## A202047.P7471702483033879408

`A008619(A183362(n+1)^A077728(n+1))`
-/

namespace A202047.P7471702483033879408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A183362 (n + 1) : ℚ) ^ (A077728 (n + 1) : ℤ))).toNat

end

end A202047.P7471702483033879408

/-! ## A202047.P733695724044504448

`A008619(A183362(n+1)^A137795(n+1))`
-/

namespace A202047.P733695724044504448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A183362 (n + 1) : ℚ) ^ (A137795 (n + 1) : ℤ))).toNat

end

end A202047.P733695724044504448

/-! ## A202047.P16809194974507899846

`A008619(A183362(n+1)^A264441(n+1))`
-/

namespace A202047.P16809194974507899846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A183362 (n + 1) : ℚ) ^ (A264441 (n + 1) : ℤ))).toNat

end

end A202047.P16809194974507899846

/-!
# A202048: Number of (n+2) X 6 binary arrays avoiding patterns 001 and 110 in rows and columns.

The programs for A202048, there is no canonical definition to state claims against.
-/

/-! ## A202048.P12132184290430806547

`A202052(∑[n+3]+7)`
-/

namespace A202048.P12132184290430806547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202052 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A202048.P12132184290430806547

/-! ## A202048.P9930312456363275599

`A202052(A052905(n)+9)%A202051(n+1)`
-/

namespace A202048.P9930312456363275599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202052 (A052905 n + 9).toNat) (A202051 (n + 1))

end

end A202048.P9930312456363275599

/-!
# A202049: Number of (n+2) X 7 binary arrays avoiding patterns 001 and 110 in rows and columns.

The programs for A202049, there is no canonical definition to state claims against.
-/

/-! ## A202049.P13246055476590823048

`A202052(A167499(n+3))`
-/

namespace A202049.P13246055476590823048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202052 (A167499 (n + 3)).toNat

end

end A202049.P13246055476590823048

/-! ## A202049.P3657443724951761667

`A202052(A155212(n)+13)`
-/

namespace A202049.P3657443724951761667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202052 (A155212 n + 13).toNat

end

end A202049.P3657443724951761667

/-! ## A202049.P8723644293960181134

`A202052(A056000(n)+15)`
-/

namespace A202049.P8723644293960181134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202052 (A056000 n + 15).toNat

end

end A202049.P8723644293960181134

/-! ## A202049.P5886340957127562959

`A202052(A000096(n+3)+6)`
-/

namespace A202049.P5886340957127562959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202052 (A000096 (n + 3) + 6).toNat

end

end A202049.P5886340957127562959

/-! ## A202049.P1835852638173518483

`A202052(A000217(n+4)+5)`
-/

namespace A202049.P1835852638173518483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202052 (A000217 (n + 4) + 5).toNat

end

end A202049.P1835852638173518483

/-!
# A202050: Number of (n+2) X 8 binary arrays avoiding patterns 001 and 110 in rows and columns.

The programs for A202050, there is no canonical definition to state claims against.
-/

/-! ## A202050.P15677050350210123412

`A202052(A056115(n)+21)`
-/

namespace A202050.P15677050350210123412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202052 (A056115 n + 21).toNat

end

end A202050.P15677050350210123412

/-! ## A202050.P13189892323279215093

`A202052(A167499(n+4)+1)`
-/

namespace A202050.P13189892323279215093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202052 (A167499 (n + 4) + 1).toNat

end

end A202050.P13189892323279215093

/-! ## A202050.P5763496025517171221

`A202052(A000124(n+5)+5)`
-/

namespace A202050.P5763496025517171221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202052 (A000124 (n + 5) + 5).toNat

end

end A202050.P5763496025517171221

/-! ## A202050.P13832824900078939988

`A202052(A000217(n+5)+6)`
-/

namespace A202050.P13832824900078939988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202052 (A000217 (n + 5) + 6).toNat

end

end A202050.P13832824900078939988

/-! ## A202050.P18444143051147950547

`A202052(A034856(n+4)+8)`
-/

namespace A202050.P18444143051147950547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202052 (A034856 (n + 4) + 8).toNat

end

end A202050.P18444143051147950547

/-!
# A202051: Number of (n+2) X 9 binary arrays avoiding patterns 001 and 110 in rows and columns.

The programs for A202051, there is no canonical definition to state claims against.
-/

/-! ## A202051.P12858187849422976091

`A202052(A056119(n)+28)`
-/

namespace A202051.P12858187849422976091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202052 (A056119 n + 28).toNat

end

end A202051.P12858187849422976091

/-! ## A202051.P11504281055412262556

`A202052(A133263(n+6)+5)`
-/

namespace A202051.P11504281055412262556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202052 (A133263 (n + 6) + 5).toNat

end

end A202051.P11504281055412262556

/-! ## A202051.P1723540263124185411

`A202052(A000124(n+6)+6)`
-/

namespace A202051.P1723540263124185411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202052 (A000124 (n + 6) + 6).toNat

end

end A202051.P1723540263124185411

/-! ## A202051.P17259026605194731858

`A202052(A000217(n+6)+7)`
-/

namespace A202051.P17259026605194731858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202052 (A000217 (n + 6) + 7).toNat

end

end A202051.P17259026605194731858

/-! ## A202051.P5646741333716603048

`A202052(A027379(n+4)+10)`
-/

namespace A202051.P5646741333716603048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202052 (A027379 (n + 4) + 10).toNat

end

end A202051.P5646741333716603048

/-!
# A202053: Class number of sqrt(n).

The programs for A202053, there is no canonical definition to state claims against.
-/

/-! ## A202053.P7821228659945153127

`gcd(A046080(n+1)+1, A287764(A330742(n+1)))`
-/

namespace A202053.P7821228659945153127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046080 (n + 1) + 1) (A287764 (A330742 (n + 1)).toNat)

end

end A202053.P7821228659945153127

/-! ## A202053.P14462095052245297553

`gcd(A086669(n+1), A171377(n))`
-/

namespace A202053.P14462095052245297553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086669 (n + 1)) (A171377 n)

end

end A202053.P14462095052245297553

/-! ## A202053.P11140461623715487983

`gcd(A002956(n+1), A286361(n+1))`
-/

namespace A202053.P11140461623715487983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002956 (n + 1)) (A286361 (n + 1))

end

end A202053.P11140461623715487983

/-! ## A202053.P12248729972200275716

`gcd(A048266(A259649(n+2)), A349431(n+1))`
-/

namespace A202053.P12248729972200275716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048266 (A259649 (n + 2)).toNat) (A349431 (n + 1))

end

end A202053.P12248729972200275716

/-! ## A202053.P8483919998628455562

`gcd(A038548(n+1), A046691(A212110(3*(n+1))))`
-/

namespace A202053.P8483919998628455562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038548 (n + 1)) (A046691 (A212110 (3 * (n + 1))).toNat)

end

end A202053.P8483919998628455562

/-!
# A202056: Smallest d such that Mordell's elliptic curve x^3-y^2=d (for positive d) has an integral point in the quadratic extension sqrt(A202057(n)).

The programs for A202056, there is no canonical definition to state claims against.
-/

/-! ## A202056.P10797251941023499052

`A202054(n+1)^3-A202055(n+1)²`
-/

namespace A202056.P10797251941023499052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202054 (n + 1) ^ 3 - A202055 (n + 1) ^ 2

end

end A202056.P10797251941023499052

/-!
# A202057: Numbers which are not perfect squares and such that all prime divisors are congruent to 1 or 2 mod 4.

The programs for A202057, the canonical program `A202057.P9210268420412961846` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202057 has offset 1).

The definition of A202057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9932 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202057.P9210268420412961846

`filter[A072437(n+1), A049240(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A202057

/-- `filter[A072437(n+1), A049240(#)]` -/
def P9210268420412961846.Spec : Prop :=
  ∀ n, P9210268420412961846.a n = A202057 (n + 1)

theorem P9210268420412961846.correct : P9210268420412961846.Spec := by
  intro n
  simp only [A202057, Nat.add_sub_cancel]

end A202057

/-! ## A202057.P8461122811012624291

`∩[A000415(n+1), A072437(n+1)]`
-/

namespace A202057.P8461122811012624291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202057.P8461122811012624291

namespace A202057

/-- `∩[A000415(n+1), A072437(n+1)]` -/
def P8461122811012624291.Spec : Prop :=
  ∀ n, (P8461122811012624291.a n : ℤ) = A202057 (n + 1)

end A202057

/-! ## A202057.P14657775467030463175

`∩[A072437(n+1), A092206(n+1)]`
-/

namespace A202057.P14657775467030463175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202057.P14657775467030463175

namespace A202057

/-- `∩[A072437(n+1), A092206(n+1)]` -/
def P14657775467030463175.Spec : Prop :=
  ∀ n, (P14657775467030463175.a n : ℤ) = A202057 (n + 1)

end A202057

/-! ## A202057.P17049713562936990063

`∩[A000037(n+1), A072437(n+1)]`
-/

namespace A202057.P17049713562936990063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202057.P17049713562936990063

namespace A202057

/-- `∩[A000037(n+1), A072437(n+1)]` -/
def P17049713562936990063.Spec : Prop :=
  ∀ n, (P17049713562936990063.a n : ℤ) = A202057 (n + 1)

end A202057

/-! ## A202057.P1356709318419314068

`record[A072436(comp[n²])]`
-/

namespace A202057.P1356709318419314068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202057.P1356709318419314068

namespace A202057

/-- `record[A072436(comp[n²])]` -/
def P1356709318419314068.Spec : Prop :=
  ∀ n, P1356709318419314068.a n = A202057 (n + 1)

end A202057

/-! ## A202057.P16451138135537568957

`eq[char[n²], A260728(n)]`
-/

namespace A202057.P16451138135537568957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A202057.P16451138135537568957

namespace A202057

/-- `eq[char[n²], A260728(n)]` -/
def P16451138135537568957.Spec : Prop :=
  ∀ n, (P16451138135537568957.a n : ℤ) = A202057 (n + 1)

end A202057

/-! ## A202057.P10176221349835052992

`eq[A001842(n)², A002448(n)]`
-/

namespace A202057.P10176221349835052992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202057.P10176221349835052992

namespace A202057

/-- `eq[A001842(n)², A002448(n)]` -/
def P10176221349835052992.Spec : Prop :=
  ∀ n, (P10176221349835052992.a n : ℤ) = A202057 (n + 1)

end A202057

/-! ## A202057.P6951916219126029534

`eq[A260728(n)², A010052(n)]`
-/

namespace A202057.P6951916219126029534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202057.P6951916219126029534

namespace A202057

/-- `eq[A260728(n)², A010052(n)]` -/
def P6951916219126029534.Spec : Prop :=
  ∀ n, (P6951916219126029534.a n : ℤ) = A202057 (n + 1)

end A202057

/-! ## A202057.P11512097867530625587

`filter[A072437(n+1), A267594(#)]`
-/

namespace A202057.P11512097867530625587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A202057.P11512097867530625587

namespace A202057

/-- `filter[A072437(n+1), A267594(#)]` -/
def P11512097867530625587.Spec : Prop :=
  ∀ n, P11512097867530625587.a n = A202057 (n + 1)

end A202057

/-! ## A202057.P18313551688488128656

`filter[A072437(n+1), A267635(#)]`
-/

namespace A202057.P18313551688488128656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A202057.P18313551688488128656

namespace A202057

/-- `filter[A072437(n+1), A267635(#)]` -/
def P18313551688488128656.Spec : Prop :=
  ∀ n, P18313551688488128656.a n = A202057 (n + 1)

end A202057

/-! ## A202057.P12575907071705822108

`eq[2*A001842(n), A010052(n)]`
-/

namespace A202057.P12575907071705822108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202057.P12575907071705822108

namespace A202057

/-- `eq[2*A001842(n), A010052(n)]` -/
def P12575907071705822108.Spec : Prop :=
  ∀ n, (P12575907071705822108.a n : ℤ) = A202057 (n + 1)

end A202057

/-! ## A202057.P15310283083535652114

`eq[A010052(n+1), A260728(n+1)]+1`
-/

namespace A202057.P15310283083535652114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A202057.P15310283083535652114

namespace A202057

/-- `eq[A010052(n+1), A260728(n+1)]+1` -/
def P15310283083535652114.Spec : Prop :=
  ∀ n, (P15310283083535652114.a n : ℤ) = A202057 (n + 1)

end A202057

/-! ## A202057.P3076316360410014073

`eq[A000122(n), A000217(A001842(n))]`
-/

namespace A202057.P3076316360410014073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202057.P3076316360410014073

namespace A202057

/-- `eq[A000122(n), A000217(A001842(n))]` -/
def P3076316360410014073.Spec : Prop :=
  ∀ n, (P3076316360410014073.a n : ℤ) = A202057 (n + 1)

end A202057

/-! ## A202057.P6279674478943294850

`eq[1, A000122(A001842(n)+A000122(n))]`
-/

namespace A202057.P6279674478943294850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A001842 n + A000122 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202057.P6279674478943294850

namespace A202057

/-- `eq[1, A000122(A001842(n)+A000122(n))]` -/
def P6279674478943294850.Spec : Prop :=
  ∀ n, (P6279674478943294850.a n : ℤ) = A202057 (n + 1)

end A202057

/-! ## A202057.P17924144365786513876

`eq[A001842(A010052(n)+n), A010052(n)]`
-/

namespace A202057.P17924144365786513876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A010052 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202057.P17924144365786513876

namespace A202057

/-- `eq[A001842(A010052(n)+n), A010052(n)]` -/
def P17924144365786513876.Spec : Prop :=
  ∀ n, (P17924144365786513876.a n : ℤ) = A202057 (n + 1)

end A202057

/-! ## A202057.P386928775434994580

`eq[A001842(n), A010052(n-A001842(n))]`
-/

namespace A202057.P386928775434994580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n : ℤ) - A001842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202057.P386928775434994580

namespace A202057

/-- `eq[A001842(n), A010052(n-A001842(n))]` -/
def P386928775434994580.Spec : Prop :=
  ∀ n, (P386928775434994580.a n : ℤ) = A202057 (n + 1)

end A202057

/-! ## A202057.P3993860249494588806

`eq[A000122(n)*A000700(n), A001842(n)]`
-/

namespace A202057.P3993860249494588806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n * A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202057.P3993860249494588806

namespace A202057

/-- `eq[A000122(n)*A000700(n), A001842(n)]` -/
def P3993860249494588806.Spec : Prop :=
  ∀ n, (P3993860249494588806.a n : ℤ) = A202057 (n + 1)

end A202057

/-! ## A202057.P9894150385072790155

`eq[A000122(n)*A001938(n), A001842(n)]`
-/

namespace A202057.P9894150385072790155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n * A001938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202057.P9894150385072790155

namespace A202057

/-- `eq[A000122(n)*A001938(n), A001842(n)]` -/
def P9894150385072790155.Spec : Prop :=
  ∀ n, (P9894150385072790155.a n : ℤ) = A202057 (n + 1)

end A202057

/-!
# A202058: Number of ascent sequences avoiding the pattern 000.

The programs for A202058, there is no canonical definition to state claims against.
-/

/-! ## A202058.P4435728465248156032

`A294220(∑[n+3])`
-/

namespace A202058.P4435728465248156032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294220 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202058.P4435728465248156032

/-! ## A202058.P15988920420360737382

`A294219(A133263(n))+1`
-/

namespace A202058.P15988920420360737382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294219 (A133263 n).toNat + 1

end

end A202058.P15988920420360737382

/-! ## A202058.P15718139877395359229

`A001462(A321735(n))`
-/

namespace A202058.P15718139877395359229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A321735 n).toNat

end

end A202058.P15718139877395359229

/-!
# A202059: Number of ascent sequences avoiding the pattern 100.

The programs for A202059, there is no canonical definition to state claims against.
-/

/-! ## A202059.P9089860704277761222

`A132085(Δ[Δ[A003101(n)]])`
-/

namespace A202059.P9089860704277761222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (f1 (n + 1) - f1 n).toNat

end

end A202059.P9089860704277761222

/-! ## A202059.P17483767004231626597

`A132085(Δ[Δ[A026898(n)]])`
-/

namespace A202059.P17483767004231626597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (f1 (n + 1) - f1 n).toNat

end

end A202059.P17483767004231626597

/-! ## A202059.P356090525851371286

`A122993(n)+A025428(A000142(n))`
-/

namespace A202059.P356090525851371286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122993 n + A025428 (A000142 n).toNat

end

end A202059.P356090525851371286

/-! ## A202059.P9500471201574856503

`A257520(n)+A008615(A128732(n))`
-/

namespace A202059.P9500471201574856503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n + A008615 (A128732 n).toNat

end

end A202059.P9500471201574856503

/-!
# A202060: Number of ascent sequences avoiding the pattern 110.

The programs for A202060, there is no canonical definition to state claims against.
-/

/-! ## A202060.P2015736654616650417

`A183202(A000096(n))-char[9]`
-/

namespace A202060.P2015736654616650417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183202 (A000096 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202060.P2015736654616650417

/-! ## A202060.P9612710500716108276

`xor(A035041(n), A183202(A000096(n)))`
-/

namespace A202060.P9612710500716108276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035041 n) (A183202 (A000096 n).toNat)

end

end A202060.P9612710500716108276

/-! ## A202060.P9073468033735615047

`xor(A036640(n), A183202(A000096(n)))`
-/

namespace A202060.P9073468033735615047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036640 n) (A183202 (A000096 n).toNat)

end

end A202060.P9073468033735615047

/-! ## A202060.P2184786897414533303

`xor(A102683(n), A183202(A000096(n)))`
-/

namespace A202060.P2184786897414533303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102683 n) (A183202 (A000096 n).toNat)

end

end A202060.P2184786897414533303

/-! ## A202060.P16061761740079784188

`xor(A183202(A000096(n)), A326526(n))`
-/

namespace A202060.P16061761740079784188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A183202 (A000096 n).toNat) (A326526 n)

end

end A202060.P16061761740079784188

/-!
# A202061: Number of ascent sequences avoiding the pattern 120.

The programs for A202061, there is no canonical definition to state claims against.
-/

/-! ## A202061.P16370902691314055654

`A308329(n)+A102679(A062161(n))`
-/

namespace A202061.P16370902691314055654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308329 n + A102679 (A062161 n).toNat

end

end A202061.P16370902691314055654

/-! ## A202061.P4288572615076714889

`A308329(n)+A185284(A000124(n))`
-/

namespace A202061.P4288572615076714889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308329 n + A185284 (A000124 n).toNat

end

end A202061.P4288572615076714889

/-! ## A202061.P10967791608340150461

`A308329(n)+A055641(A181768(n))`
-/

namespace A202061.P10967791608340150461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308329 n + A055641 (A181768 n).toNat

end

end A202061.P10967791608340150461

/-! ## A202061.P1737869783408127254

`A308329(n)-A178798(A073776(n))`
-/

namespace A202061.P1737869783408127254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308329 n - A178798 (A073776 n).toNat

end

end A202061.P1737869783408127254

/-!
# A202062: Number of ascent sequences avoiding the pattern 201.

The programs for A202062, there is no canonical definition to state claims against.
-/

/-! ## A202062.P10558493267297471003

`xor(A185236((3-n)²), A279559(n))`
-/

namespace A202062.P10558493267297471003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185236 ((3 - (n : ℤ)) ^ 2).toNat) (A279559 n)

end

end A202062.P10558493267297471003

/-! ## A202062.P15017882177015032875

`A279558(n)+A025442(A279571(n))`
-/

namespace A202062.P15017882177015032875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279558 n + A025442 (A279571 n).toNat

end

end A202062.P15017882177015032875

/-! ## A202062.P7254705073524085456

`A279559(n)-A029905(A025597(n))`
-/

namespace A202062.P7254705073524085456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279559 n - A029905 (A025597 n).toNat

end

end A202062.P7254705073524085456

/-! ## A202062.P1805407975124007311

`A279559(n)-A086017(A001791(n))`
-/

namespace A202062.P1805407975124007311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279559 n - A086017 (A001791 n).toNat

end

end A202062.P1805407975124007311

/-!
# A202063: Position of first appearance of n-th prime in A071216.

The programs for A202063, there is no canonical definition to state claims against.
-/

/-! ## A202063.P16722907865083366640

`A187026(n+1)%A216876(n)`
-/

namespace A202063.P16722907865083366640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187026 (n + 1)) (A216876 n)

end

end A202063.P16722907865083366640

/-! ## A202063.P10860244939200751328

`gcd(val(A000040(n+1), 5), A187026(n+1))`
-/

namespace A202063.P10860244939200751328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 5 : ℤ) (A187026 (n + 1))

end

end A202063.P10860244939200751328

/-! ## A202063.P15533587997705234594

`A000720(A188815(n+1))`
-/

namespace A202063.P15533587997705234594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A188815 (n + 1)).toNat

end

end A202063.P15533587997705234594

/-! ## A202063.P9546333522479679282

`∑{d}[A188815(n+1), A061395(#)]`
-/

namespace A202063.P9546333522479679282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A202063.P9546333522479679282

/-! ## A202063.P16134122984246240914

`A000720(A254862(A000040(n+1)))`
-/

namespace A202063.P16134122984246240914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A254862 (A000040 (n + 1)).toNat).toNat

end

end A202063.P16134122984246240914

/-! ## A202063.P10093048176405912182

`A061395(or(A005713(n), A188815(n+1)))`
-/

namespace A202063.P10093048176405912182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor (A005713 n) (A188815 (n + 1))).toNat

end

end A202063.P10093048176405912182

/-! ## A202063.P12363449594594082825

`A061395(or(A005171(n+1), A188815(n+1)))`
-/

namespace A202063.P12363449594594082825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor (A005171 (n + 1)) (A188815 (n + 1))).toNat

end

end A202063.P12363449594594082825

/-! ## A202063.P1036846202431208109

`A061395(2*A188815(n+1))`
-/

namespace A202063.P1036846202431208109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A188815 (n + 1)).toNat

end

end A202063.P1036846202431208109

/-!
# A202064: Triangle T(n,k), read by rows, given by (2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (0, 1/2, -1/2, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A202064, the canonical program `A202064.P6300683690905921182` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202064 has offset 0).

The definition of A202064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202064.P6300683690905921182

`2*T(n-1,k)+T(n-2,k-1)-T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202064

/-- `2*T(n-1,k)+T(n-2,k-1)-T(n-2,k)` -/
def P6300683690905921182.Spec : Prop :=
  ∀ n, P6300683690905921182.a n = A202064 n

theorem P6300683690905921182.correct : P6300683690905921182.Spec := by
  intro n
  simp only [A202064]

end A202064

/-! ## A202064.P1302514063727556609

`C(row(n)+1, 2*col(n)+1)`
-/

namespace A202064.P1302514063727556609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + 1) (2 * SequenceMachineLib.triCol n + 1)

end

end A202064.P1302514063727556609

namespace A202064

/-- `C(row(n)+1, 2*col(n)+1)` -/
def P1302514063727556609.Spec : Prop :=
  ∀ n, (P1302514063727556609.a n : ℤ) = A202064 n

end A202064

/-! ## A202064.P14120757008248379833

`C(row(n)+1, col(n)+1+col(n))`
-/

namespace A202064.P14120757008248379833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1 + SequenceMachineLib.triCol n)

end

end A202064.P14120757008248379833

namespace A202064

/-- `C(row(n)+1, col(n)+1+col(n))` -/
def P14120757008248379833.Spec : Prop :=
  ∀ n, (P14120757008248379833.a n : ℤ) = A202064 n

end A202064

/-! ## A202064.P6534125915648985503

`A229032(n)/A152716(n)`
-/

namespace A202064.P6534125915648985503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229032 n : ℚ) / (A152716 n : ℚ)

end

end A202064.P6534125915648985503

namespace A202064

/-- `A229032(n)/A152716(n)` -/
def P6534125915648985503.Spec : Prop :=
  ∀ n, P6534125915648985503.a n = (A202064 n : ℚ)

end A202064

/-! ## A202064.P13506852422566520139

`C(∑[A010054(n)], A143453(n))`
-/

namespace A202064.P13506852422566520139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A143453 n).toNat

end

end A202064.P13506852422566520139

namespace A202064

/-- `C(∑[A010054(n)], A143453(n))` -/
def P13506852422566520139.Spec : Prop :=
  ∀ n, (P13506852422566520139.a n : ℤ) = A202064 n

end A202064

/-! ## A202064.P18161165733883482011

`C(∑[A010054(n)], A158405(n+1))`
-/

namespace A202064.P18161165733883482011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A158405 (n + 1)).toNat

end

end A202064.P18161165733883482011

namespace A202064

/-- `C(∑[A010054(n)], A158405(n+1))` -/
def P18161165733883482011.Spec : Prop :=
  ∀ n, (P18161165733883482011.a n : ℤ) = A202064 n

end A202064

/-! ## A202064.P9795168067572320442

`C(A002024(n+1), A158405(n+1))`
-/

namespace A202064.P9795168067572320442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1)).toNat (A158405 (n + 1)).toNat

end

end A202064.P9795168067572320442

namespace A202064

/-- `C(A002024(n+1), A158405(n+1))` -/
def P9795168067572320442.Spec : Prop :=
  ∀ n, (P9795168067572320442.a n : ℤ) = A202064 n

end A202064

/-! ## A202064.P11821388225726224071

`C(A003056(n)+1, A158405(n+1))`
-/

namespace A202064.P11821388225726224071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n + 1).toNat (A158405 (n + 1)).toNat

end

end A202064.P11821388225726224071

namespace A202064

/-- `C(A003056(n)+1, A158405(n+1))` -/
def P11821388225726224071.Spec : Prop :=
  ∀ n, (P11821388225726224071.a n : ℤ) = A202064 n

end A202064

/-! ## A202064.P18433587916135257188

`C(A003056(n)+1, A005408(A002262(n)))`
-/

namespace A202064.P18433587916135257188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n + 1).toNat (A005408 (A002262 n).toNat).toNat

end

end A202064.P18433587916135257188

namespace A202064

/-- `C(A003056(n)+1, A005408(A002262(n)))` -/
def P18433587916135257188.Spec : Prop :=
  ∀ n, (P18433587916135257188.a n : ℤ) = A202064 n

end A202064

/-! ## A202064.P13633331312780555763

`Δ[A102363(A053616(n)+n)]`
-/

namespace A202064.P13633331312780555763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (A053616 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202064.P13633331312780555763

namespace A202064

/-- `Δ[A102363(A053616(n)+n)]` -/
def P13633331312780555763.Spec : Prop :=
  ∀ n, P13633331312780555763.a n = A202064 n

end A202064

/-! ## A202064.P16721869538651080513

`A119900(A061579(n))`
-/

namespace A202064.P16721869538651080513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119900 (A061579 n).toNat

end

end A202064.P16721869538651080513

namespace A202064

/-- `A119900(A061579(n))` -/
def P16721869538651080513.Spec : Prop :=
  ∀ n, P16721869538651080513.a n = A202064 n

end A202064

/-! ## A202064.P5762312491100915503

`A131047(A064789(n+1))`
-/

namespace A202064.P5762312491100915503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131047 (A064789 (n + 1)).toNat

end

end A202064.P5762312491100915503

namespace A202064

/-- `A131047(A064789(n+1))` -/
def P5762312491100915503.Spec : Prop :=
  ∀ n, P5762312491100915503.a n = A202064 n

end A202064

/-! ## A202064.P12643390190761775758

`A119900(A114327(n)+n)`
-/

namespace A202064.P12643390190761775758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119900 (A114327 n + (n : ℤ)).toNat

end

end A202064.P12643390190761775758

namespace A202064

/-- `A119900(A114327(n)+n)` -/
def P12643390190761775758.Spec : Prop :=
  ∀ n, P12643390190761775758.a n = A202064 n

end A202064

/-! ## A202064.P18427749592766285959

`A119900(A038722(n+1)-1)`
-/

namespace A202064.P18427749592766285959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119900 (A038722 (n + 1) - 1).toNat

end

end A202064.P18427749592766285959

namespace A202064

/-- `A119900(A038722(n+1)-1)` -/
def P18427749592766285959.Spec : Prop :=
  ∀ n, P18427749592766285959.a n = A202064 n

end A202064

/-! ## A202064.P292711490626433356

`A119900(A278818(n)-1)`
-/

namespace A202064.P292711490626433356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119900 (A278818 n - 1).toNat

end

end A202064.P292711490626433356

namespace A202064

/-- `A119900(A278818(n)-1)` -/
def P292711490626433356.Spec : Prop :=
  ∀ n, P292711490626433356.a n = A202064 n

end A202064

/-! ## A202064.P5298380236818888118

`A152815(eq[0, A051159(n)])`
-/

namespace A202064.P5298380236818888118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202064.P5298380236818888118

namespace A202064

/-- `A152815(eq[0, A051159(n)])` -/
def P5298380236818888118.Spec : Prop :=
  ∀ n, P5298380236818888118.a n = A202064 n

end A202064

/-! ## A202064.P11085990396299917876

`A152815(eq[0, A155997(n)])`
-/

namespace A202064.P11085990396299917876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202064.P11085990396299917876

namespace A202064

/-- `A152815(eq[0, A155997(n)])` -/
def P11085990396299917876.Spec : Prop :=
  ∀ n, P11085990396299917876.a n = A202064 n

end A202064

/-!
# A202065: The number of simple labeled graphs on 2n nodes whose connected components are even length cycles.

The programs for A202065, there is no canonical definition to state claims against.
-/

/-! ## A202065.P5418718779755709874

`A001147(n)/A000079(n)*A088991(n)`
-/

namespace A202065.P5418718779755709874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 n : ℚ) / (A000079 n : ℚ) * (A088991 n : ℚ)

end

end A202065.P5418718779755709874

/-! ## A202065.P12990450647949319884

`A001147(n)*A152148(∑[n])`
-/

namespace A202065.P12990450647949319884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n * A152148 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202065.P12990450647949319884

/-! ## A202065.P15924841635922609703

`∏[abs(1-2*n)]*A152148(A000217(n))`
-/

namespace A202065.P15924841635922609703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A152148 (A000217 n).toNat

end

end A202065.P15924841635922609703

/-!
# A202066: Mass of oriented maximal Wicks forms of genus n, multiplied by 6.

The programs for A202066, there is no canonical definition to state claims against.
-/

/-! ## A202066.P3573970541331363562

`A348794(n+1)/(2*n+1)`
-/

namespace A202066.P3573970541331363562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348794 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A202066.P3573970541331363562

/-! ## A202066.P8779866439821487760

`lcm(A000108(n), A202067(n+1))`
-/

namespace A202066.P8779866439821487760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000108 n) (A202067 (n + 1))

end

end A202066.P8779866439821487760

/-!
# A202067: Numerator of mass of oriented maximal Wicks forms of genus n.

The programs for A202067, there is no canonical definition to state claims against.
-/

/-! ## A202067.P8721774588823118221

`lcm(6, A202066(n+1))/6`
-/

namespace A202067.P8721774588823118221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 6 (A202066 (n + 1)) : ℚ) / 6

end

end A202067.P8721774588823118221

/-!
# A202068: Denominator of mass of oriented maximal Wicks forms of genus n.

The programs for A202068, there is no canonical definition to state claims against.
-/

/-! ## A202068.P17221362586429754231

`gcd(6, A382114(n))`
-/

namespace A202068.P17221362586429754231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A382114 n)

end

end A202068.P17221362586429754231

/-! ## A202068.P7429394328644447307

`6/A089128(A159989(n))`
-/

namespace A202068.P7429394328644447307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (A089128 (A159989 n).toNat : ℚ)

end

end A202068.P7429394328644447307

/-! ## A202068.P4295806426034368756

`6/A089128(A246466(n))`
-/

namespace A202068.P4295806426034368756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (A089128 (A246466 n).toNat : ℚ)

end

end A202068.P4295806426034368756

/-! ## A202068.P17476965328072870286

`A089128(A159989(n)²+5)`
-/

namespace A202068.P17476965328072870286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089128 (A159989 n ^ 2 + 5).toNat

end

end A202068.P17476965328072870286

/-! ## A202068.P7994946267828586443

`A089128((1-A159989(n)²)²)`
-/

namespace A202068.P7994946267828586443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089128 ((1 - A159989 n ^ 2) ^ 2).toNat

end

end A202068.P7994946267828586443

/-! ## A202068.P10956875120117610730

`lcm(6, A050476(n))/A050476(n)`
-/

namespace A202068.P10956875120117610730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 6 (A050476 n) : ℚ) / (A050476 n : ℚ)

end

end A202068.P10956875120117610730

/-! ## A202068.P4674927638164058470

`lcm(A000984(n), A008588(n+1))/A000984(n)`
-/

namespace A202068.P4674927638164058470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000984 n) (A008588 (n + 1)) : ℚ) / (A000984 n : ℚ)

end

end A202068.P4674927638164058470

/-!
# A202069: Number of arrays of n+2 integers in -1..1 with sum zero and the sum of every adjacent pair being odd.

The programs for A202069, the canonical program `A202069.P6160588622101873828` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202069 has offset 1).

The definition of A202069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202069.P10907818108547405826

`A008619(A008619(n+3))*A329686(n+3)`
-/

namespace A202069.P10907818108547405826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 (n + 3)).toNat * A329686 (n + 3)

end

end A202069.P10907818108547405826

namespace A202069

/-- `A008619(A008619(n+3))*A329686(n+3)` -/
def P10907818108547405826.Spec : Prop :=
  ∀ n, P10907818108547405826.a n = A202069 (n + 1)

end A202069

/-! ## A202069.P9983661987341624869

`A110654(A110654(n)+3)*A329686(n+3)`
-/

namespace A202069.P9983661987341624869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 n + 3).toNat * A329686 (n + 3)

end

end A202069.P9983661987341624869

namespace A202069

/-- `A110654(A110654(n)+3)*A329686(n+3)` -/
def P9983661987341624869.Spec : Prop :=
  ∀ n, P9983661987341624869.a n = A202069 (n + 1)

end A202069

/-! ## A202069.P6160588622101873828

`A126869(A008619(n+1))+A126869(A008619(n)+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202069

/-- `A126869(A008619(n+1))+A126869(A008619(n)+1)` -/
def P6160588622101873828.Spec : Prop :=
  ∀ n, P6160588622101873828.a n = A202069 (n + 1)

theorem P6160588622101873828.correct : P6160588622101873828.Spec := by
  intro n
  simp only [A202069, Nat.add_sub_cancel]

end A202069

/-! ## A202069.P18288793042253140377

`A202076(∑[n+1])`
-/

namespace A202069.P18288793042253140377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202069.P18288793042253140377

namespace A202069

/-- `A202076(∑[n+1])` -/
def P18288793042253140377.Spec : Prop :=
  ∀ n, P18288793042253140377.a n = A202069 (n + 1)

end A202069

/-! ## A202069.P2697603719248425202

`lcm(2, A202076(A000217(n+1)))`
-/

namespace A202069.P2697603719248425202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202076 (A000217 (n + 1)).toNat)

end

end A202069.P2697603719248425202

namespace A202069

/-- `lcm(2, A202076(A000217(n+1)))` -/
def P2697603719248425202.Spec : Prop :=
  ∀ n, (P2697603719248425202.a n : ℤ) = A202069 (n + 1)

end A202069

/-! ## A202069.P2250354360844549331

`A202076(A000217(n+1))+A063524(2*n)`
-/

namespace A202069.P2250354360844549331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A000217 (n + 1)).toNat + A063524 (2 * n)

end

end A202069.P2250354360844549331

namespace A202069

/-- `A202076(A000217(n+1))+A063524(2*n)` -/
def P2250354360844549331.Spec : Prop :=
  ∀ n, P2250354360844549331.a n = A202069 (n + 1)

end A202069

/-! ## A202069.P15646461102357330093

`A000034(2*n)*A202076(A000217(n+1))`
-/

namespace A202069.P15646461102357330093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A202076 (A000217 (n + 1)).toNat

end

end A202069.P15646461102357330093

namespace A202069

/-- `A000034(2*n)*A202076(A000217(n+1))` -/
def P15646461102357330093.Spec : Prop :=
  ∀ n, P15646461102357330093.a n = A202069 (n + 1)

end A202069

/-! ## A202069.P2564981139687646069

`A202962(∑[n+1])`
-/

namespace A202069.P2564981139687646069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202069.P2564981139687646069

namespace A202069

/-- `A202962(∑[n+1])` -/
def P2564981139687646069.Spec : Prop :=
  ∀ n, P2564981139687646069.a n = A202069 (n + 1)

end A202069

/-!
# A202070: Number of arrays of n+2 integers in -2..2 with sum zero and the sum of every adjacent pair being odd.

The programs for A202070, there is no canonical definition to state claims against.
-/

/-! ## A202070.P14561499619215460440

`A202076(∑[n+2])`
-/

namespace A202070.P14561499619215460440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202070.P14561499619215460440

/-! ## A202070.P1815429685305730479

`lcm(2, A202076(A000096(n+1)))`
-/

namespace A202070.P1815429685305730479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202076 (A000096 (n + 1)).toNat)

end

end A202070.P1815429685305730479

/-! ## A202070.P8895771935468652434

`A115362(n)*A202076(A000096(n+1))`
-/

namespace A202070.P8895771935468652434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 n * A202076 (A000096 (n + 1)).toNat

end

end A202070.P8895771935468652434

/-! ## A202070.P11265385078637086607

`A020985(n)²*A202076(A000096(n+1))`
-/

namespace A202070.P11265385078637086607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A202076 (A000096 (n + 1)).toNat

end

end A202070.P11265385078637086607

/-! ## A202070.P3247763804223433442

`A202076(A000096(n+1))%A005009(n)²`
-/

namespace A202070.P3247763804223433442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202076 (A000096 (n + 1)).toNat) (A005009 n ^ 2)

end

end A202070.P3247763804223433442

/-! ## A202070.P7042853981367604349

`gcd(A000038(n)², A202076(A000096(n+1)))`
-/

namespace A202070.P7042853981367604349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n ^ 2) (A202076 (A000096 (n + 1)).toNat)

end

end A202070.P7042853981367604349

/-! ## A202070.P12080121015066470102

`A008683(A005117(n+1))²*A202076(A000096(n+1))`
-/

namespace A202070.P12080121015066470102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (n + 1)).toNat ^ 2 * A202076 (A000096 (n + 1)).toNat

end

end A202070.P12080121015066470102

/-!
# A202071: Number of arrays of n+2 integers in -3..3 with sum zero and the sum of every adjacent pair being odd.

The programs for A202071, there is no canonical definition to state claims against.
-/

/-! ## A202071.P15535264867578905126

`A202076(∑[n+3]+1)`
-/

namespace A202071.P15535264867578905126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202071.P15535264867578905126

/-! ## A202071.P10994579606112220995

`lcm(2, A202076(Δ[A008778(n)]))`
-/

namespace A202071.P10994579606112220995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202076 (f1 (n + 1) - f1 n).toNat)

end

end A202071.P10994579606112220995

/-! ## A202071.P17178881621733577167

`A202076(Δ[A008778(n)])%A228874(n)`
-/

namespace A202071.P17178881621733577167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202076 (f1 (n + 1) - f1 n).toNat) (A228874 n)

end

end A202071.P17178881621733577167

/-! ## A202071.P1090131643338454380

`A202076(A052905(n)+3)*A348039(n+1)`
-/

namespace A202071.P1090131643338454380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A052905 n + 3).toNat * A348039 (n + 1)

end

end A202071.P1090131643338454380

/-! ## A202071.P9550778697791830168

`A001221(A102168(n+1))*A202076(A034856(n+2))`
-/

namespace A202071.P9550778697791830168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A102168 (n + 1)).toNat * A202076 (A034856 (n + 2)).toNat

end

end A202071.P9550778697791830168

/-!
# A202072: Number of arrays of n+2 integers in -4..4 with sum zero and the sum of every adjacent pair being odd.

The programs for A202072, there is no canonical definition to state claims against.
-/

/-! ## A202072.P3539421820416805935

`A202076(A027379(n+2))`
-/

namespace A202072.P3539421820416805935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A027379 (n + 2)).toNat

end

end A202072.P3539421820416805935

/-! ## A202072.P455119962173010382

`A202076(A055998(n+2))`
-/

namespace A202072.P455119962173010382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A055998 (n + 2)).toNat

end

end A202072.P455119962173010382

/-! ## A202072.P1719532683818932909

`A202076(A155212(n)+5)`
-/

namespace A202072.P1719532683818932909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A155212 n + 5).toNat

end

end A202072.P1719532683818932909

/-! ## A202072.P9384204511201568944

`A202076(Δ[A034857(n+1)])`
-/

namespace A202072.P9384204511201568944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (f1 (n + 1) - f1 n).toNat

end

end A202072.P9384204511201568944

/-! ## A202072.P10845071924613657859

`A202076(A052905(n+1)+2)`
-/

namespace A202072.P10845071924613657859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A052905 (n + 1) + 2).toNat

end

end A202072.P10845071924613657859

/-! ## A202072.P910007476983382615

`A202076(Δ[A008778(n+1)]-1)`
-/

namespace A202072.P910007476983382615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (f1 (n + 1) - f1 n - 1).toNat

end

end A202072.P910007476983382615

/-! ## A202072.P17050602088192075152

`A202076(A167614(n+1)+A005408(n))`
-/

namespace A202072.P17050602088192075152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A167614 (n + 1) + A005408 n).toNat

end

end A202072.P17050602088192075152

/-! ## A202072.P211880874354382684

`A202076(A167614(n+1)+A016825(n)/2)`
-/

namespace A202072.P211880874354382684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (SequenceMachineLib.roundAway ((A167614 (n + 1) : ℚ) + (A016825 n : ℚ) / 2)).toNat

end

end A202072.P211880874354382684

/-!
# A202073: Number of arrays of n+2 integers in -5..5 with sum zero and the sum of every adjacent pair being odd.

The programs for A202073, there is no canonical definition to state claims against.
-/

/-! ## A202073.P5749657720094903215

`A202076(Δ[A264443(n)])`
-/

namespace A202073.P5749657720094903215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (f1 (n + 1) - f1 n).toNat

end

end A202073.P5749657720094903215

/-! ## A202073.P2373055440476232276

`A202076(A046691(n+3))`
-/

namespace A202073.P2373055440476232276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A046691 (n + 3)).toNat

end

end A202073.P2373055440476232276

/-! ## A202073.P10002167159032556903

`A202076(Δ[A023545(n+1)])`
-/

namespace A202073.P10002167159032556903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (f1 (n + 1) - f1 n).toNat

end

end A202073.P10002167159032556903

/-! ## A202073.P9995450189945573507

`A202076(Δ[A111396(n)]-1)`
-/

namespace A202073.P9995450189945573507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (f1 (n + 1) - f1 n - 1).toNat

end

end A202073.P9995450189945573507

/-! ## A202073.P1553689946349755971

`A202076(A000217(n+5)-4)`
-/

namespace A202073.P1553689946349755971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A000217 (n + 5) - 4).toNat

end

end A202073.P1553689946349755971

/-! ## A202073.P14822804780314725141

`A202076(Δ[A034857(n+2)]-1)`
-/

namespace A202073.P14822804780314725141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (f1 (n + 1) - f1 n - 1).toNat

end

end A202073.P14822804780314725141

/-! ## A202073.P8338983487338940419

`A202076(A264443(n+1)-A264443(n))`
-/

namespace A202073.P8338983487338940419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A264443 (n + 1) - A264443 n).toNat

end

end A202073.P8338983487338940419

/-!
# A202074: Number of arrays of n+2 integers in -6..6 with sum zero and the sum of every adjacent pair being odd.

The programs for A202074, there is no canonical definition to state claims against.
-/

/-! ## A202074.P11884714302265756590

`A202076(A052905(n+3))`
-/

namespace A202074.P11884714302265756590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A052905 (n + 3)).toNat

end

end A202074.P11884714302265756590

/-! ## A202074.P13501503551228382712

`A202076(A055999(n+3)+1)`
-/

namespace A202074.P13501503551228382712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A055999 (n + 3) + 1).toNat

end

end A202074.P13501503551228382712

/-! ## A202074.P7189153558490452335

`A202076(A055998(n+4)-2)`
-/

namespace A202074.P7189153558490452335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A055998 (n + 4) - 2).toNat

end

end A202074.P7189153558490452335

/-! ## A202074.P6839584768635072700

`A202076(A034856(n+5)-3)`
-/

namespace A202074.P6839584768635072700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A034856 (n + 5) - 3).toNat

end

end A202074.P6839584768635072700

/-! ## A202074.P14685223012828748859

`A202076(A000124(n+6)-6)`
-/

namespace A202074.P14685223012828748859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A000124 (n + 6) - 6).toNat

end

end A202074.P14685223012828748859

/-! ## A202074.P7236670520248901489

`A202076(Δ[A264443(n+1)]-1)`
-/

namespace A202074.P7236670520248901489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (f1 (n + 1) - f1 n - 1).toNat

end

end A202074.P7236670520248901489

/-! ## A202074.P13199146369537246842

`A202076(Δ[A023545(n+2)]-1)`
-/

namespace A202074.P13199146369537246842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (f1 (n + 1) - f1 n - 1).toNat

end

end A202074.P13199146369537246842

/-! ## A202074.P10694413092002805692

`A202076(Δ[A111396(n+1)]-2)`
-/

namespace A202074.P10694413092002805692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (f1 (n + 1) - f1 n - 2).toNat

end

end A202074.P10694413092002805692

/-! ## A202074.P2006464167346684153

`A202076(A167614(n+1)+A016825(n+2))`
-/

namespace A202074.P2006464167346684153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A167614 (n + 1) + A016825 (n + 2)).toNat

end

end A202074.P2006464167346684153

/-! ## A202074.P3110124868166258368

`A202076(A167614(n+1)+A130824(n+3))`
-/

namespace A202074.P3110124868166258368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A167614 (n + 1) + A130824 (n + 3)).toNat

end

end A202074.P3110124868166258368

/-!
# A202075: Number of arrays of n+2 integers in -7..7 with sum zero and the sum of every adjacent pair being odd.

The programs for A202075, there is no canonical definition to state claims against.
-/

/-! ## A202075.P2593297648503758167

`A202076(A055999(n+4))`
-/

namespace A202075.P2593297648503758167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A055999 (n + 4)).toNat

end

end A202075.P2593297648503758167

/-! ## A202075.P16957446980401437642

`A202076(A034856(n+6)-4)`
-/

namespace A202075.P16957446980401437642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A034856 (n + 6) - 4).toNat

end

end A202075.P16957446980401437642

/-! ## A202075.P9418656810177797105

`A202076(A000124(n+7)-7)`
-/

namespace A202075.P9418656810177797105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A000124 (n + 7) - 7).toNat

end

end A202075.P9418656810177797105

/-! ## A202075.P7707656891835118128

`A202076(A133263(n+3)+A016825(n+3))`
-/

namespace A202075.P7707656891835118128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A133263 (n + 3) + A016825 (n + 3)).toNat

end

end A202075.P7707656891835118128

/-! ## A202075.P7220771971763314048

`A202076(A161680(n+10)-A004273(n+12))`
-/

namespace A202075.P7220771971763314048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A161680 (n + 10) - A004273 (n + 12)).toNat

end

end A202075.P7220771971763314048

/-!
# A202077: Number of arrays of 5 integers in -n..n with sum zero and the sum of every adjacent pair being odd.

The programs for A202077, there is no canonical definition to state claims against.
-/

/-! ## A202077.P13387806773445754244

`A202076(∑[n+2]+4)`
-/

namespace A202077.P13387806773445754244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202077.P13387806773445754244

/-! ## A202077.P14058255581058828128

`lcm(2, A202076(A167614(n+1)))`
-/

namespace A202077.P14058255581058828128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202076 (A167614 (n + 1)).toNat)

end

end A202077.P14058255581058828128

/-! ## A202077.P9601289416223446430

`A202076(A167614(n+1))%A017236(n)`
-/

namespace A202077.P9601289416223446430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202076 (A167614 (n + 1)).toNat) (A017236 n)

end

end A202077.P9601289416223446430

/-! ## A202077.P7785360226501078823

`or(A000038(n), A202076(A167614(n+1)))`
-/

namespace A202077.P7785360226501078823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A202076 (A167614 (n + 1)).toNat)

end

end A202077.P7785360226501078823

/-! ## A202077.P2003575176464320116

`A033999(n)²*A202076(A167614(n+1))`
-/

namespace A202077.P2003575176464320116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A202076 (A167614 (n + 1)).toNat

end

end A202077.P2003575176464320116

/-! ## A202077.P12729674077342837958

`A300909(A000040(n+1))²*A202076(A167614(n+1))`
-/

namespace A202077.P12729674077342837958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300909 (A000040 (n + 1)).toNat ^ 2 * A202076 (A167614 (n + 1)).toNat

end

end A202077.P12729674077342837958

/-! ## A202077.P16075112935405135535

`A300909(A055231(n+1))²*A202076(A167614(n+1))`
-/

namespace A202077.P16075112935405135535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300909 (A055231 (n + 1)).toNat ^ 2 * A202076 (A167614 (n + 1)).toNat

end

end A202077.P16075112935405135535

/-!
# A202078: Number of arrays of 7 integers in -n..n with sum zero and the sum of every adjacent pair being odd.

The programs for A202078, there is no canonical definition to state claims against.
-/

/-! ## A202078.P9039428952977112586

`A202076(A167499(n+3))`
-/

namespace A202078.P9039428952977112586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A167499 (n + 3)).toNat

end

end A202078.P9039428952977112586

/-! ## A202078.P17463932656053615583

`A202076(A155212(n)+13)`
-/

namespace A202078.P17463932656053615583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A155212 n + 13).toNat

end

end A202078.P17463932656053615583

/-! ## A202078.P13107596241946333873

`A202076(A167614(n+3)+2)`
-/

namespace A202078.P13107596241946333873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A167614 (n + 3) + 2).toNat

end

end A202078.P13107596241946333873

/-! ## A202078.P1672452277738580307

`A202076(A000124(n+4)+4)`
-/

namespace A202078.P1672452277738580307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A000124 (n + 4) + 4).toNat

end

end A202078.P1672452277738580307

/-! ## A202078.P6517544321812087671

`A202076(A000217(n+4)+5)`
-/

namespace A202078.P6517544321812087671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A000217 (n + 4) + 5).toNat

end

end A202078.P6517544321812087671

/-! ## A202078.P9456030423312626511

`A202076(A046691(n+2)+9)`
-/

namespace A202078.P9456030423312626511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A046691 (n + 2) + 9).toNat

end

end A202078.P9456030423312626511

/-!
# A202079: Number of arrays of 8 integers in -n..n with sum zero and the sum of every adjacent pair being odd.

The programs for A202079, there is no canonical definition to state claims against.
-/

/-! ## A202079.P7821232091085971252

`A202076(A167614(n+4)+3)`
-/

namespace A202079.P7821232091085971252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A167614 (n + 4) + 3).toNat

end

end A202079.P7821232091085971252

/-! ## A202079.P15056557445831993033

`A202076(A000124(n+5)+5)`
-/

namespace A202079.P15056557445831993033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A000124 (n + 5) + 5).toNat

end

end A202079.P15056557445831993033

/-! ## A202079.P2029419401433246100

`A202076(A000217(n+5)+6)`
-/

namespace A202079.P2029419401433246100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A000217 (n + 5) + 6).toNat

end

end A202079.P2029419401433246100

/-! ## A202079.P4249433052410440191

`A202076(7-A080956(n+6))`
-/

namespace A202079.P4249433052410440191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (7 - A080956 (n + 6)).toNat

end

end A202079.P4249433052410440191

/-! ## A202079.P16492267367319965428

`A202076(A133263(n+1)+A016825(n+4))`
-/

namespace A202079.P16492267367319965428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A133263 (n + 1) + A016825 (n + 4)).toNat

end

end A202079.P16492267367319965428

/-! ## A202079.P4129668737565937567

`A202076(A002620(n+2)+A002620(n+9))`
-/

namespace A202079.P4129668737565937567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A202079.P4129668737565937567

/-!
# A202080: Number of arrays of 9 integers in -n..n with sum zero and the sum of every adjacent pair being odd.

The programs for A202080, there is no canonical definition to state claims against.
-/

/-! ## A202080.P210831124843508901

`A202076(A167487(n+5))`
-/

namespace A202080.P210831124843508901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A167487 (n + 5)).toNat

end

end A202080.P210831124843508901

/-! ## A202080.P5124209002092839498

`A202076(A167499(n+5)+2)`
-/

namespace A202080.P5124209002092839498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A167499 (n + 5) + 2).toNat

end

end A202080.P5124209002092839498

/-! ## A202080.P2502095778300742105

`A202076(A167614(n+5)+4)`
-/

namespace A202080.P2502095778300742105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A167614 (n + 5) + 4).toNat

end

end A202080.P2502095778300742105

/-! ## A202080.P8982279816985146859

`A202076(A000124(n+6)+6)`
-/

namespace A202080.P8982279816985146859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A000124 (n + 6) + 6).toNat

end

end A202080.P8982279816985146859

/-! ## A202080.P8859266409280748871

`A202076(A000217(n+6)+7)`
-/

namespace A202080.P8859266409280748871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A000217 (n + 6) + 7).toNat

end

end A202080.P8859266409280748871

/-! ## A202080.P1031535965347912401

`A202076(A046691(n+4)+11)`
-/

namespace A202080.P1031535965347912401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202076 (A046691 (n + 4) + 11).toNat

end

end A202080.P1031535965347912401

/-!
# A202081: The number of simple labeled graphs on n nodes whose connected components are cycles, stars, wheels, or paths.

The programs for A202081, there is no canonical definition to state claims against.
-/

/-! ## A202081.P343242106807222397

`A218970(n)+A123108(A127785(n))`
-/

namespace A202081.P343242106807222397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 n + A123108 (A127785 n).toNat

end

end A202081.P343242106807222397

/-! ## A202081.P8428718208513284753

`A070556(n+1)+A004525(A127785(n))`
-/

namespace A202081.P8428718208513284753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (n + 1) + A004525 (A127785 n).toNat

end

end A202081.P8428718208513284753

/-!
# A202083: Primes of the form 16n^2 + 121.

The programs for A202083, there is no canonical definition to state claims against.
-/

/-! ## A202083.P4094244156469293146

`p?[4*((2*n)²+31)-3]`
-/

namespace A202083.P4094244156469293146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * ((2 * n) ^ 2 + 31) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A202083.P4094244156469293146

/-!
# A202084: Class number of sqrt(-n).

The programs for A202084, there is no canonical definition to state claims against.
-/

/-! ## A202084.P5286583089048530723

`A058305(A204993(n+1))`
-/

namespace A202084.P5286583089048530723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A204993 (n + 1)).toNat

end

end A202084.P5286583089048530723

/-! ## A202084.P8944399713351677743

`A191411((n+1)/∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A202084.P8944399713351677743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191411 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ))).toNat

end

end A202084.P8944399713351677743

/-! ## A202084.P14936471091727014237

`A191411(Δ[A069891(n)])`
-/

namespace A202084.P14936471091727014237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191411 (f1 (n + 1) - f1 n).toNat

end

end A202084.P14936471091727014237

/-! ## A202084.P5369614766078513888

`A191411(A007913(n+1))`
-/

namespace A202084.P5369614766078513888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191411 (A007913 (n + 1)).toNat

end

end A202084.P5369614766078513888

/-! ## A202084.P16992247479936759104

`A191411(sqrt(A055491(n+1)))`
-/

namespace A202084.P16992247479936759104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191411 (SequenceMachineLib.roundAway (Real.sqrt (A055491 (n + 1) : ℝ))).toNat

end

end A202084.P16992247479936759104

/-! ## A202084.P9254775191172620486

`A191411(∏{p}[A055491(n+1), #])`
-/

namespace A202084.P9254775191172620486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191411 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A202084.P9254775191172620486

/-! ## A202084.P6922868799605623340

`A191411(1-A326128(n+1)+n)`
-/

namespace A202084.P6922868799605623340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191411 (1 - A326128 (n + 1) + (n : ℤ)).toNat

end

end A202084.P6922868799605623340

/-! ## A202084.P6922724875276592916

`A191411((n+1)/A008833(n+1))`
-/

namespace A202084.P6922724875276592916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191411 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A202084.P6922724875276592916

/-! ## A202084.P15324864408589246706

`A191411(A053143(n+1)/(n+1))`
-/

namespace A202084.P15324864408589246706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191411 (SequenceMachineLib.roundAway ((A053143 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A202084.P15324864408589246706

/-! ## A202084.P10840750101753111723

`∑{d}[n+1, A065803(#)*A191411((n+1)/#)]`
-/

namespace A202084.P10840750101753111723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065803 d * A191411 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A202084.P10840750101753111723

/-! ## A202084.P12733052537931342866

`A191411(A069891(n+1)-A069891(n))`
-/

namespace A202084.P12733052537931342866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191411 (A069891 (n + 1) - A069891 n).toNat

end

end A202084.P12733052537931342866

/-! ## A202084.P4086541074254012112

`A191411(A078615(n+1)/A066990(n+1))`
-/

namespace A202084.P4086541074254012112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191411 (SequenceMachineLib.roundAway ((A078615 (n + 1) : ℚ) / (A066990 (n + 1) : ℚ))).toNat

end

end A202084.P4086541074254012112

/-! ## A202084.P1505427769103197347

`A191411(gcd(A003967(n+1), A007947(n+1)))`
-/

namespace A202084.P1505427769103197347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191411 (Int.gcd (A003967 (n + 1)) (A007947 (n + 1)))

end

end A202084.P1505427769103197347

/-! ## A202084.P13153750159969843778

`A191411(gcd(A055491(n+1), A066990(n+1)))`
-/

namespace A202084.P13153750159969843778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191411 (Int.gcd (A055491 (n + 1)) (A066990 (n + 1)))

end

end A202084.P13153750159969843778

/-!
# A202085: Number of partitions of 5n such that cn(1,5) = cn(4,5) = cn(2,5) = cn(3,5) <= cn(0,5).

The programs for A202085, there is no canonical definition to state claims against.
-/

/-! ## A202085.P12505254385666775023

`A046776(n+1)+A202086(n+1)`
-/

namespace A202085.P12505254385666775023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046776 (n + 1) + A202086 (n + 1)

end

end A202085.P12505254385666775023

/-! ## A202085.P16747129986450840027

`A036882(n+1)-A036891(n+1)`
-/

namespace A202085.P16747129986450840027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036882 (n + 1) - A036891 (n + 1)

end

end A202085.P16747129986450840027

/-! ## A202085.P7222774649744953584

`record[A046775(n)]-A202088(n+1)`
-/

namespace A202085.P7222774649744953584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A202088 (n + 1)

end

end A202085.P7222774649744953584

/-! ## A202085.P1735244628826790836

`A202192(n+1)-A202088(n+1)`
-/

namespace A202085.P1735244628826790836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202192 (n + 1) - A202088 (n + 1)

end

end A202085.P1735244628826790836

/-! ## A202085.P2123134926233293119

`A046776(n+1)+record[A046775(n)]-A202087(n+1)`
-/

namespace A202085.P2123134926233293119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046776 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A202087 (n + 1))

end

end A202085.P2123134926233293119

/-!
# A202086: Number of partitions of 5n such that cn(1,5) = cn(4,5) = cn(2,5) = cn(3,5) < cn(0,5).

The programs for A202086, there is no canonical definition to state claims against.
-/

/-! ## A202086.P11499588062244592433

`A036887(n+1)-A036895(n+1)`
-/

namespace A202086.P11499588062244592433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036887 (n + 1) - A036895 (n + 1)

end

end A202086.P11499588062244592433

/-! ## A202086.P10033563444080895023

`A202085(n+1)-A046776(n+1)`
-/

namespace A202086.P10033563444080895023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202085 (n + 1) - A046776 (n + 1)

end

end A202086.P10033563444080895023

/-! ## A202086.P3821647342319753399

`record[A046775(n)]-A202087(n+1)`
-/

namespace A202086.P3821647342319753399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A202087 (n + 1)

end

end A202086.P3821647342319753399

/-! ## A202086.P7524452419161183817

`A202192(n+1)-A202087(n+1)`
-/

namespace A202086.P7524452419161183817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202192 (n + 1) - A202087 (n + 1)

end

end A202086.P7524452419161183817

/-! ## A202086.P9868688334916584954

`record[A046775(n)]-A202088(n+1)-A046776(n+1)`
-/

namespace A202086.P9868688334916584954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A202088 (n + 1) - A046776 (n + 1)

end

end A202086.P9868688334916584954

/-!
# A202087: Number of partitions of 5n such that cn(0,5) <= cn(1,5) = cn(4,5) = cn(2,5) = cn(3,5).

The programs for A202087, there is no canonical definition to state claims against.
-/

/-! ## A202087.P12665828439876489979

`A046776(n)+A202088(n)`
-/

namespace A202087.P12665828439876489979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046776 n + A202088 n

end

end A202087.P12665828439876489979

/-! ## A202087.P6501539804731809757

`A046776(n)+A202192(n)-A202085(A028310(n))`
-/

namespace A202087.P6501539804731809757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046776 n + (A202192 n - A202085 (A028310 n).toNat)

end

end A202087.P6501539804731809757

/-! ## A202087.P2256784784151293592

`A046776(n)+A046775(5*n)-A202085(A028310(n))`
-/

namespace A202087.P2256784784151293592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046776 n + (A046775 (5 * n) - A202085 (A028310 n).toNat)

end

end A202087.P2256784784151293592

/-! ## A202087.P11984235225131899806

`A046776(n)+A202192(n)-A202085(A000007(n)+n)`
-/

namespace A202087.P11984235225131899806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046776 n + (A202192 n - A202085 (A000007 n + (n : ℤ)).toNat)

end

end A202087.P11984235225131899806

/-! ## A202087.P1658623891484166265

`A046776(n)+A000006(A149242(n))-A290759(n)`
-/

namespace A202087.P1658623891484166265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046776 n + (A000006 (A149242 n).toNat - A290759 n)

end

end A202087.P1658623891484166265

/-!
# A202088: Number of partitions of 5n such that cn(0,5) < cn(1,5) = cn(4,5) = cn(2,5) = cn(3,5).

The programs for A202088, there is no canonical definition to state claims against.
-/

/-! ## A202088.P17463904352068591369

`A202087(n)-A046776(n)`
-/

namespace A202088.P17463904352068591369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202087 n - A046776 n

end

end A202088.P17463904352068591369

/-! ## A202088.P2276449457514553312

`A202192(n)-A202085(round(sqrt(n²+1)))`
-/

namespace A202088.P2276449457514553312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202192 n - A202085 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A202088.P2276449457514553312

/-! ## A202088.P3076384263863709216

`A046775(5*n)-A202085(A028310(n))`
-/

namespace A202088.P3076384263863709216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046775 (5 * n) - A202085 (A028310 n).toNat

end

end A202088.P3076384263863709216

/-! ## A202088.P13681584789320892429

`A000041(n)+A046787(n)-A202085(A028310(n))`
-/

namespace A202088.P13681584789320892429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A046787 n - A202085 (A028310 n).toNat)

end

end A202088.P13681584789320892429

/-! ## A202088.P5945091625729428620

`A000065(n)+A046787(n)+1-A202085(A028310(n))`
-/

namespace A202088.P5945091625729428620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (A046787 n + 1) - A202085 (A028310 n).toNat

end

end A202088.P5945091625729428620

/-!
# A202089: Numbers n such that n^2 and (n+1)^2 have same digit sum.

The programs for A202089, the canonical program `A202089.P7430434944876183357` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202089 has offset 1).

The definition of A202089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202089.P6901213028584672346

`eq[0, A240752(n+1)]`
-/

namespace A202089.P6901213028584672346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202089.P6901213028584672346

namespace A202089

/-- `eq[0, A240752(n+1)]` -/
def P6901213028584672346.Spec : Prop :=
  ∀ n, (P6901213028584672346.a n : ℤ) = A202089 (n + 1)

end A202089

/-! ## A202089.P7430434944876183357

`eq[A004159(n+1), A004159(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A202089

/-- `eq[A004159(n+1), A004159(n)]` -/
def P7430434944876183357.Spec : Prop :=
  ∀ n, (P7430434944876183357.a n : ℤ) = A202089 (n + 1)

theorem P7430434944876183357.correct : P7430434944876183357.Spec := by
  intro n
  simp only [A202089, Nat.add_sub_cancel]

end A202089

/-! ## A202089.P12238851008514264949

`lt[A240752(n+1)², A057427(n)]`
-/

namespace A202089.P12238851008514264949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A202089.P12238851008514264949

namespace A202089

/-- `lt[A240752(n+1)², A057427(n)]` -/
def P12238851008514264949.Spec : Prop :=
  ∀ n, (P12238851008514264949.a n : ℤ) = A202089 (n + 1)

end A202089

/-! ## A202089.P1904184732274890446

`lt[A240752(n+1)², A294619(n)]`
-/

namespace A202089.P1904184732274890446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A202089.P1904184732274890446

namespace A202089

/-- `lt[A240752(n+1)², A294619(n)]` -/
def P1904184732274890446.Spec : Prop :=
  ∀ n, (P1904184732274890446.a n : ℤ) = A202089 (n + 1)

end A202089

/-! ## A202089.P14590082678532891273

`lt[A054977(n), acot(A240752(n+1))]`
-/

namespace A202089.P14590082678532891273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A240752 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A202089.P14590082678532891273

namespace A202089

/-- `lt[A054977(n), acot(A240752(n+1))]` -/
def P14590082678532891273.Spec : Prop :=
  ∀ n, (P14590082678532891273.a n : ℤ) = A202089 (n + 1)

end A202089

/-! ## A202089.P11918574395124934704

`lt[A000217(A240752(n+1)²+1), 3]`
-/

namespace A202089.P11918574395124934704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A240752 (n + 1) ^ 2 + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A202089.P11918574395124934704

namespace A202089

/-- `lt[A000217(A240752(n+1)²+1), 3]` -/
def P11918574395124934704.Spec : Prop :=
  ∀ n, (P11918574395124934704.a n : ℤ) = A202089 (n + 1)

end A202089

/-!
# A202090: a(n) = Fibonacci(n) - p, where p is the largest prime < Fibonacci(n).

The programs for A202090, the canonical program `A202090.P4126079562617871700` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202090 has offset 5).

The definition of A202090 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A202090.P4126079562617871700

`A049711(A000045(n+5))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A202090

/-- `A049711(A000045(n+5))` -/
def P4126079562617871700.Spec : Prop :=
  ∀ n, P4126079562617871700.a n = A202090 (n + 5)

theorem P4126079562617871700.correct : P4126079562617871700.Spec := by
  intro n
  simp only [A202090, Nat.add_sub_cancel]

end A202090

/-! ## A202090.P9019129732076440086

`A020701(n+1)-A180422(n+5)`
-/

namespace A202090.P9019129732076440086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (n + 1) - A180422 (n + 5)

end

end A202090.P9019129732076440086

namespace A202090

/-- `A020701(n+1)-A180422(n+5)` -/
def P9019129732076440086.Spec : Prop :=
  ∀ n, P9019129732076440086.a n = A202090 (n + 5)

end A202090

/-! ## A202090.P2411056713601235182

`A000045(n+5)-A180422(n+5)`
-/

namespace A202090.P2411056713601235182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 5) - A180422 (n + 5)

end

end A202090.P2411056713601235182

namespace A202090

/-- `A000045(n+5)-A180422(n+5)` -/
def P2411056713601235182.Spec : Prop :=
  ∀ n, P2411056713601235182.a n = A202090 (n + 5)

end A202090

/-! ## A202090.P7704357695277838633

`A020706(n+1)-(A180422(n+5)+1)`
-/

namespace A202090.P7704357695277838633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 (n + 1) - (A180422 (n + 5) + 1)

end

end A202090.P7704357695277838633

namespace A202090

/-- `A020706(n+1)-(A180422(n+5)+1)` -/
def P7704357695277838633.Spec : Prop :=
  ∀ n, P7704357695277838633.a n = A202090 (n + 5)

end A202090

/-! ## A202090.P14879724183117152477

`A000045(A020710(n))%A180422(n+5)`
-/

namespace A202090.P14879724183117152477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A020710 n).toNat) (A180422 (n + 5))

end

end A202090.P14879724183117152477

namespace A202090

/-- `A000045(A020710(n))%A180422(n+5)` -/
def P14879724183117152477.Spec : Prop :=
  ∀ n, P14879724183117152477.a n = A202090 (n + 5)

end A202090

/-! ## A202090.P3922996783344645539

`Δ[A000071(n+6)]-A180422(n+5)`
-/

namespace A202090.P3922996783344645539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A180422 (n + 5)

end

end A202090.P3922996783344645539

namespace A202090

/-- `Δ[A000071(n+6)]-A180422(n+5)` -/
def P3922996783344645539.Spec : Prop :=
  ∀ n, P3922996783344645539.a n = A202090 (n + 5)

end A202090

/-!
# A202091: Number of partitions of 5n such that cn(1,5) = cn(4,5) and cn(2,5) = cn(3,5).

The programs for A202091, there is no canonical definition to state claims against.
-/

/-! ## A202091.P17149813199298447881

`∑[A326669(A058295(n+1))]`
-/

namespace A202091.P17149813199298447881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326669 (A058295 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202091.P17149813199298447881

/-! ## A202091.P4610627098590665195

`∑[A331935(A085945(n+1))]`
-/

namespace A202091.P4610627098590665195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (A085945 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202091.P4610627098590665195

/-!
# A202092: Number of (n+2) X (n+2) binary arrays avoiding patterns 001 and 011 in rows and columns.

The programs for A202092, there is no canonical definition to state claims against.
-/

/-! ## A202092.P12411749861645120589

`A250425(n+2)`
-/

namespace A202092.P12411749861645120589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250425 (n + 2)

end

end A202092.P12411749861645120589

/-! ## A202092.P4708747828310926101

`A202100((n+1)²+n²)`
-/

namespace A202092.P4708747828310926101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202100 ((n + 1) ^ 2 + n ^ 2)

end

end A202092.P4708747828310926101

/-! ## A202092.P9805307457127512739

`A250432((n+1)²+(n+2)²)`
-/

namespace A202092.P9805307457127512739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250432 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A202092.P9805307457127512739

/-! ## A202092.P15398895337522271562

`lcm(2, A202100(A001844(n)))`
-/

namespace A202092.P15398895337522271562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202100 (A001844 n).toNat)

end

end A202092.P15398895337522271562

/-! ## A202092.P14284854180951353035

`record[A003982(n)*A202100(n+1)]`
-/

namespace A202092.P14284854180951353035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A202100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202092.P14284854180951353035

/-!
# A202093: Number of (n+2) X 3 binary arrays avoiding patterns 001 and 011 in rows and columns.

The programs for A202093, the canonical program `A202093.P17617771732918613506` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202093 has offset 1).

The definition of A202093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202093.P17617771732918613506

`A250426(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A202093

/-- `A250426(n+2)` -/
def P17617771732918613506.Spec : Prop :=
  ∀ n, P17617771732918613506.a n = A202093 (n + 1)

theorem P17617771732918613506.correct : P17617771732918613506.Spec := by
  intro n
  simp only [A202093, Nat.add_sub_cancel]

end A202093

/-! ## A202093.P15556374304598335302

`A008805(n+3)*A008805(n+4)*A002620(n+5)`
-/

namespace A202093.P15556374304598335302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (n + 3) * A008805 (n + 4) * A002620 (n + 5)

end

end A202093.P15556374304598335302

namespace A202093

/-- `A008805(n+3)*A008805(n+4)*A002620(n+5)` -/
def P15556374304598335302.Spec : Prop :=
  ∀ n, P15556374304598335302.a n = A202093 (n + 1)

theorem P15556374304598335302.correct : P15556374304598335302.Spec := by
  intro n
  simp only [A202093, Nat.add_sub_cancel, A202093.P15556374304598335302.a, A202093.P17617771732918613506.a, A002620, A002620.P9002536657626793813.a, A008805, A008805.P1560584299711762519.a, A250426, A250426.P3029081105641093597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A202093

/-! ## A202093.P8856886603247763601

`(A008805(n+2)+A008805(n+3))*A008805(n+3)*A008805(n+4)`
-/

namespace A202093.P8856886603247763601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008805 (n + 2) + A008805 (n + 3)) * (A008805 (n + 3) * A008805 (n + 4))

end

end A202093.P8856886603247763601

namespace A202093

/-- `(A008805(n+2)+A008805(n+3))*A008805(n+3)*A008805(n+4)` -/
def P8856886603247763601.Spec : Prop :=
  ∀ n, P8856886603247763601.a n = A202093 (n + 1)

end A202093

/-! ## A202093.P5886379034964050955

`record[A250426(A008619(A092486(n)))]`
-/

namespace A202093.P5886379034964050955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250426 (A008619 (A092486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202093.P5886379034964050955

namespace A202093

/-- `record[A250426(A008619(A092486(n)))]` -/
def P5886379034964050955.Spec : Prop :=
  ∀ n, P5886379034964050955.a n = A202093 (n + 1)

end A202093

/-! ## A202093.P1282279165841893528

`record[A250426(A291769(A008619(n)))]`
-/

namespace A202093.P1282279165841893528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250426 (A291769 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202093.P1282279165841893528

namespace A202093

/-- `record[A250426(A291769(A008619(n)))]` -/
def P1282279165841893528.Spec : Prop :=
  ∀ n, P1282279165841893528.a n = A202093 (n + 1)

end A202093

/-! ## A202093.P3334687631620017170

`record[A250426(A132749(A000124(n)))]`
-/

namespace A202093.P3334687631620017170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250426 (A132749 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202093.P3334687631620017170

namespace A202093

/-- `record[A250426(A132749(A000124(n)))]` -/
def P3334687631620017170.Spec : Prop :=
  ∀ n, P3334687631620017170.a n = A202093 (n + 1)

end A202093

/-!
# A202094: Number of (n+2) X 4 binary arrays avoiding patterns 001 and 011 in rows and columns.

The programs for A202094, the canonical program `A202094.P3198667217819748171` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202094 has offset 1).

The definition of A202094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202094.P8215188536670026043

`A202095(n+1)²/A202096(n+1)`
-/

namespace A202094.P8215188536670026043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202095 (n + 1) ^ 2 : ℚ) / (A202096 (n + 1) : ℚ)

end

end A202094.P8215188536670026043

namespace A202094

/-- `A202095(n+1)²/A202096(n+1)` -/
def P8215188536670026043.Spec : Prop :=
  ∀ n, P8215188536670026043.a n = (A202094 (n + 1) : ℚ)

end A202094

/-! ## A202094.P16696413666226744086

`A250427(n+2)`
-/

namespace A202094.P16696413666226744086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250427 (n + 2)

end

end A202094.P16696413666226744086

namespace A202094

/-- `A250427(n+2)` -/
def P16696413666226744086.Spec : Prop :=
  ∀ n, P16696413666226744086.a n = A202094 (n + 1)

end A202094

/-! ## A202094.P4314094631264935833

`A250428(n+2)²/A250429(n+2)`
-/

namespace A202094.P4314094631264935833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250428 (n + 2) ^ 2 : ℚ) / (A250429 (n + 2) : ℚ)

end

end A202094.P4314094631264935833

namespace A202094

/-- `A250428(n+2)²/A250429(n+2)` -/
def P4314094631264935833.Spec : Prop :=
  ∀ n, P4314094631264935833.a n = (A202094 (n + 1) : ℚ)

end A202094

/-! ## A202094.P13435203744787459575

`A250437(n+2)²/A250438(n+2)`
-/

namespace A202094.P13435203744787459575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250437 (n + 2) ^ 2 : ℚ) / (A250438 (n + 2) : ℚ)

end

end A202094.P13435203744787459575

namespace A202094

/-- `A250437(n+2)²/A250438(n+2)` -/
def P13435203744787459575.Spec : Prop :=
  ∀ n, P13435203744787459575.a n = (A202094 (n + 1) : ℚ)

end A202094

/-! ## A202094.P17041070535010007621

`A202095(n+1)*A202095(n+1)/A250429(n+2)`
-/

namespace A202094.P17041070535010007621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202095 (n + 1) * A202095 (n + 1) : ℚ) / (A250429 (n + 2) : ℚ)

end

end A202094.P17041070535010007621

namespace A202094

/-- `A202095(n+1)*A202095(n+1)/A250429(n+2)` -/
def P17041070535010007621.Spec : Prop :=
  ∀ n, P17041070535010007621.a n = (A202094 (n + 1) : ℚ)

end A202094

/-! ## A202094.P3198667217819748171

`(A038163(n+3)-A038163(n))²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202094

/-- `(A038163(n+3)-A038163(n))²` -/
def P3198667217819748171.Spec : Prop :=
  ∀ n, P3198667217819748171.a n = A202094 (n + 1)

theorem P3198667217819748171.correct : P3198667217819748171.Spec := by
  intro n
  simp only [A202094, Nat.add_sub_cancel]

end A202094

/-! ## A202094.P2861251181990363625

`(A333616(n+2)*A333616(n+3))²`
-/

namespace A202094.P2861251181990363625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A333616 (n + 2) * A333616 (n + 3)) ^ 2

end

end A202094.P2861251181990363625

namespace A202094

/-- `(A333616(n+2)*A333616(n+3))²` -/
def P2861251181990363625.Spec : Prop :=
  ∀ n, P2861251181990363625.a n = A202094 (n + 1)

end A202094

/-! ## A202094.P16225562481461319074

`(A008805(n+4)*A008805(n+3))²`
-/

namespace A202094.P16225562481461319074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008805 (n + 4) * A008805 (n + 3)) ^ 2

end

end A202094.P16225562481461319074

namespace A202094

/-- `(A008805(n+4)*A008805(n+3))²` -/
def P16225562481461319074.Spec : Prop :=
  ∀ n, P16225562481461319074.a n = A202094 (n + 1)

end A202094

/-! ## A202094.P11904121127145989082

`(A302647(n+6)/2)²`
-/

namespace A202094.P11904121127145989082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A302647 (n + 6) : ℚ) / 2) ^ 2

end

end A202094.P11904121127145989082

namespace A202094

/-- `(A302647(n+6)/2)²` -/
def P11904121127145989082.Spec : Prop :=
  ∀ n, P11904121127145989082.a n = (A202094 (n + 1) : ℚ)

end A202094

/-! ## A202094.P7331827819001812655

`record[A250427(A008619(A133265(n)))]`
-/

namespace A202094.P7331827819001812655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250427 (A008619 (A133265 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202094.P7331827819001812655

namespace A202094

/-- `record[A250427(A008619(A133265(n)))]` -/
def P7331827819001812655.Spec : Prop :=
  ∀ n, P7331827819001812655.a n = A202094 (n + 1)

end A202094

/-!
# A202095: Number of (n+2)X5 binary arrays avoiding patterns 001 and 011 in rows and columns.

The programs for A202095, the canonical program `A202095.P12678363989807783651` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202095 has offset 1).

The definition of A202095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202095.P12678363989807783651

`A250428(n+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A202095

/-- `A250428(n+2)` -/
def P12678363989807783651.Spec : Prop :=
  ∀ n, P12678363989807783651.a n = A202095 (n + 1)

theorem P12678363989807783651.correct : P12678363989807783651.Spec := by
  intro n
  simp only [A202095, Nat.add_sub_cancel]

end A202095

/-! ## A202095.P4306150953795756980

`sqrt(A250427(n+2)*A250429(n+2))`
-/

namespace A202095.P4306150953795756980
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250427 (n + 2) * A250429 (n + 2) : ℝ)

end

end A202095.P4306150953795756980

namespace A202095

/-- `sqrt(A250427(n+2)*A250429(n+2))` -/
def P4306150953795756980.Spec : Prop :=
  ∀ n, P4306150953795756980.a n = (A202095 (n + 1) : ℝ)

end A202095

/-! ## A202095.P18263183483605736100

`A250426(n+2)/A250427(n+2)*A250437(n+2)`
-/

namespace A202095.P18263183483605736100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250426 (n + 2) : ℚ) / (A250427 (n + 2) : ℚ) * (A250437 (n + 2) : ℚ)

end

end A202095.P18263183483605736100

namespace A202095

/-- `A250426(n+2)/A250427(n+2)*A250437(n+2)` -/
def P18263183483605736100.Spec : Prop :=
  ∀ n, P18263183483605736100.a n = (A202095 (n + 1) : ℚ)

end A202095

/-! ## A202095.P16883192417775881797

`record[A250428(A124808(A008611(n)))]`
-/

namespace A202095.P16883192417775881797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250428 (A124808 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202095.P16883192417775881797

namespace A202095

/-- `record[A250428(A124808(A008611(n)))]` -/
def P16883192417775881797.Spec : Prop :=
  ∀ n, P16883192417775881797.a n = A202095 (n + 1)

end A202095

/-! ## A202095.P10724827303963935885

`record[A250428(A080513(A052938(n)))]`
-/

namespace A202095.P10724827303963935885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250428 (A080513 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202095.P10724827303963935885

namespace A202095

/-- `record[A250428(A080513(A052938(n)))]` -/
def P10724827303963935885.Spec : Prop :=
  ∀ n, P10724827303963935885.a n = A202095 (n + 1)

end A202095

/-! ## A202095.P1723604686435122465

`record[A250428(A080513(A028242(n)))]`
-/

namespace A202095.P1723604686435122465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250428 (A080513 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202095.P1723604686435122465

namespace A202095

/-- `record[A250428(A080513(A028242(n)))]` -/
def P1723604686435122465.Spec : Prop :=
  ∀ n, P1723604686435122465.a n = A202095 (n + 1)

end A202095

/-! ## A202095.P14994253841521647007

`record[A250428(A001281(A092533(n)))]`
-/

namespace A202095.P14994253841521647007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250428 (A001281 (A092533 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202095.P14994253841521647007

namespace A202095

/-- `record[A250428(A001281(A092533(n)))]` -/
def P14994253841521647007.Spec : Prop :=
  ∀ n, P14994253841521647007.a n = A202095 (n + 1)

end A202095

/-! ## A202095.P3224980048583871836

`record[A250428(A126759(A126759(n)))]`
-/

namespace A202095.P3224980048583871836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250428 (A126759 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202095.P3224980048583871836

namespace A202095

/-- `record[A250428(A126759(A126759(n)))]` -/
def P3224980048583871836.Spec : Prop :=
  ∀ n, P3224980048583871836.a n = A202095 (n + 1)

end A202095

/-!
# A202096: Number of (n+2) X 6 binary arrays avoiding patterns 001 and 011 in rows and columns.

The programs for A202096, the canonical program `A202096.P16574343800052593515` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202096 has offset 1).

The definition of A202096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202096.P945925079484145208

`A202095(n+1)²/A202094(n+1)`
-/

namespace A202096.P945925079484145208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202095 (n + 1) ^ 2 : ℚ) / (A202094 (n + 1) : ℚ)

end

end A202096.P945925079484145208

namespace A202096

/-- `A202095(n+1)²/A202094(n+1)` -/
def P945925079484145208.Spec : Prop :=
  ∀ n, P945925079484145208.a n = (A202096 (n + 1) : ℚ)

end A202096

/-! ## A202096.P11548179611246248357

`A202097(n+1)²/A202098(n+1)`
-/

namespace A202096.P11548179611246248357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202097 (n + 1) ^ 2 : ℚ) / (A202098 (n + 1) : ℚ)

end

end A202096.P11548179611246248357

namespace A202096

/-- `A202097(n+1)²/A202098(n+1)` -/
def P11548179611246248357.Spec : Prop :=
  ∀ n, P11548179611246248357.a n = (A202096 (n + 1) : ℚ)

end A202096

/-! ## A202096.P16574343800052593515

`A001249(A008619(n+1))*A001249(A008619(n)+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202096

/-- `A001249(A008619(n+1))*A001249(A008619(n)+1)` -/
def P16574343800052593515.Spec : Prop :=
  ∀ n, P16574343800052593515.a n = A202096 (n + 1)

theorem P16574343800052593515.correct : P16574343800052593515.Spec := by
  intro n
  simp only [A202096, Nat.add_sub_cancel]

end A202096

/-! ## A202096.P18342827195934436036

`A250429(n+2)`
-/

namespace A202096.P18342827195934436036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250429 (n + 2)

end

end A202096.P18342827195934436036

namespace A202096

/-- `A250429(n+2)` -/
def P18342827195934436036.Spec : Prop :=
  ∀ n, P18342827195934436036.a n = A202096 (n + 1)

end A202096

/-! ## A202096.P16813555167561529326

`A202095(n+1)²/A250427(n+2)`
-/

namespace A202096.P16813555167561529326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202095 (n + 1) ^ 2 : ℚ) / (A250427 (n + 2) : ℚ)

end

end A202096.P16813555167561529326

namespace A202096

/-- `A202095(n+1)²/A250427(n+2)` -/
def P16813555167561529326.Spec : Prop :=
  ∀ n, P16813555167561529326.a n = (A202096 (n + 1) : ℚ)

end A202096

/-! ## A202096.P3306154829488311005

`A250428(n+2)²/A250427(n+2)`
-/

namespace A202096.P3306154829488311005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250428 (n + 2) ^ 2 : ℚ) / (A250427 (n + 2) : ℚ)

end

end A202096.P3306154829488311005

namespace A202096

/-- `A250428(n+2)²/A250427(n+2)` -/
def P3306154829488311005.Spec : Prop :=
  ∀ n, P3306154829488311005.a n = (A202096 (n + 1) : ℚ)

end A202096

/-! ## A202096.P10571143297483803600

`A250430(n+2)²/A250431(n+2)`
-/

namespace A202096.P10571143297483803600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250430 (n + 2) ^ 2 : ℚ) / (A250431 (n + 2) : ℚ)

end

end A202096.P10571143297483803600

namespace A202096

/-- `A250430(n+2)²/A250431(n+2)` -/
def P10571143297483803600.Spec : Prop :=
  ∀ n, P10571143297483803600.a n = (A202096 (n + 1) : ℚ)

end A202096

/-! ## A202096.P14765996724845349407

`A202097(n+1)*A202097(n+1)/A250431(n+2)`
-/

namespace A202096.P14765996724845349407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202097 (n + 1) * A202097 (n + 1) : ℚ) / (A250431 (n + 2) : ℚ)

end

end A202096.P14765996724845349407

namespace A202096

/-- `A202097(n+1)*A202097(n+1)/A250431(n+2)` -/
def P14765996724845349407.Spec : Prop :=
  ∀ n, P14765996724845349407.a n = (A202096 (n + 1) : ℚ)

end A202096

/-! ## A202096.P11071756252668829554

`A250428(n+2)/A202094(n+1)*A250428(n+2)`
-/

namespace A202096.P11071756252668829554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250428 (n + 2) : ℚ) / (A202094 (n + 1) : ℚ) * (A250428 (n + 2) : ℚ)

end

end A202096.P11071756252668829554

namespace A202096

/-- `A250428(n+2)/A202094(n+1)*A250428(n+2)` -/
def P11071756252668829554.Spec : Prop :=
  ∀ n, P11071756252668829554.a n = (A202096 (n + 1) : ℚ)

end A202096

/-! ## A202096.P15243267818488543352

`(A058187(n+3)*A058187(n+4))²`
-/

namespace A202096.P15243267818488543352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A058187 (n + 3) * A058187 (n + 4)) ^ 2

end

end A202096.P15243267818488543352

namespace A202096

/-- `(A058187(n+3)*A058187(n+4))²` -/
def P15243267818488543352.Spec : Prop :=
  ∀ n, P15243267818488543352.a n = A202096 (n + 1)

end A202096

/-! ## A202096.P12102951126807511882

`record[A250429(A014682(A007843(n)))]`
-/

namespace A202096.P12102951126807511882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250429 (A014682 (A007843 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202096.P12102951126807511882

namespace A202096

/-- `record[A250429(A014682(A007843(n)))]` -/
def P12102951126807511882.Spec : Prop :=
  ∀ n, P12102951126807511882.a n = A202096 (n + 1)

end A202096

/-! ## A202096.P1475328434648721901

`A251969(n+2)²/A250440(n+2)`
-/

namespace A202096.P1475328434648721901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251969 (n + 2) ^ 2 : ℚ) / (A250440 (n + 2) : ℚ)

end

end A202096.P1475328434648721901

namespace A202096

/-- `A251969(n+2)²/A250440(n+2)` -/
def P1475328434648721901.Spec : Prop :=
  ∀ n, P1475328434648721901.a n = (A202096 (n + 1) : ℚ)

end A202096

/-!
# A202097: Number of (n+2) X 7 binary arrays avoiding patterns 001 and 011 in rows and columns.

The programs for A202097, the canonical program `A202097.P9792887605728792110` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202097 has offset 1).

The definition of A202097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202097.P9792887605728792110

`sqrt(A202096(n+1)*A202098(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A202097

/-- `sqrt(A202096(n+1)*A202098(n+1))` -/
def P9792887605728792110.Spec : Prop :=
  ∀ n, P9792887605728792110.a n = (A202097 (n + 1) : ℝ)

end A202097

/-! ## A202097.P6058799485074184551

`A250430(n+2)`
-/

namespace A202097.P6058799485074184551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250430 (n + 2)

end

end A202097.P6058799485074184551

namespace A202097

/-- `A250430(n+2)` -/
def P6058799485074184551.Spec : Prop :=
  ∀ n, P6058799485074184551.a n = A202097 (n + 1)

end A202097

/-! ## A202097.P8455849540601892238

`sqrt(A250429(n+2)*A250431(n+2))`
-/

namespace A202097.P8455849540601892238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250429 (n + 2) * A250431 (n + 2) : ℝ)

end

end A202097.P8455849540601892238

namespace A202097

/-- `sqrt(A250429(n+2)*A250431(n+2))` -/
def P8455849540601892238.Spec : Prop :=
  ∀ n, P8455849540601892238.a n = (A202097 (n + 1) : ℝ)

end A202097

/-! ## A202097.P7837971903401568176

`record[A250430(A324346(A324346(n)))]`
-/

namespace A202097.P7837971903401568176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250430 (A324346 (A324346 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202097.P7837971903401568176

namespace A202097

/-- `record[A250430(A324346(A324346(n)))]` -/
def P7837971903401568176.Spec : Prop :=
  ∀ n, P7837971903401568176.a n = A202097 (n + 1)

end A202097

/-! ## A202097.P5124555237224031918

`A250428(n+2)/A250438(n+2)*A250439(n+2)`
-/

namespace A202097.P5124555237224031918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250428 (n + 2) : ℚ) / (A250438 (n + 2) : ℚ) * (A250439 (n + 2) : ℚ)

end

end A202097.P5124555237224031918

namespace A202097

/-- `A250428(n+2)/A250438(n+2)*A250439(n+2)` -/
def P5124555237224031918.Spec : Prop :=
  ∀ n, P5124555237224031918.a n = (A202097 (n + 1) : ℚ)

end A202097

/-! ## A202097.P4627786425917138423

`record[A250430(A133310(abs(1-n)))]`
-/

namespace A202097.P4627786425917138423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250430 (A133310 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202097.P4627786425917138423

namespace A202097

/-- `record[A250430(A133310(abs(1-n)))]` -/
def P4627786425917138423.Spec : Prop :=
  ∀ n, P4627786425917138423.a n = A202097 (n + 1)

end A202097

/-! ## A202097.P17064344183766828665

`record[A250430(A080513(abs(1-n)))]`
-/

namespace A202097.P17064344183766828665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250430 (A080513 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202097.P17064344183766828665

namespace A202097

/-- `record[A250430(A080513(abs(1-n)))]` -/
def P17064344183766828665.Spec : Prop :=
  ∀ n, P17064344183766828665.a n = A202097 (n + 1)

end A202097

/-! ## A202097.P12001528559573118128

`record[A250430(A109785(or(1, n)))]`
-/

namespace A202097.P12001528559573118128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250430 (A109785 (Nat.lor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202097.P12001528559573118128

namespace A202097

/-- `record[A250430(A109785(or(1, n)))]` -/
def P12001528559573118128.Spec : Prop :=
  ∀ n, P12001528559573118128.a n = A202097 (n + 1)

end A202097

/-! ## A202097.P12530261149239594273

`record[A250430(A109785(xor(1, n)))]`
-/

namespace A202097.P12530261149239594273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250430 (A109785 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202097.P12530261149239594273

namespace A202097

/-- `record[A250430(A109785(xor(1, n)))]` -/
def P12530261149239594273.Spec : Prop :=
  ∀ n, P12530261149239594273.a n = A202097 (n + 1)

end A202097

/-!
# A202098: Number of (n+2) X 8 binary arrays avoiding patterns 001 and 011 in rows and columns.

The programs for A202098, the canonical program `A202098.P4128263867690976448` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202098 has offset 1).

The definition of A202098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202098.P16600875595077506897

`A202097(n+1)²/A202096(n+1)`
-/

namespace A202098.P16600875595077506897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202097 (n + 1) ^ 2 : ℚ) / (A202096 (n + 1) : ℚ)

end

end A202098.P16600875595077506897

namespace A202098

/-- `A202097(n+1)²/A202096(n+1)` -/
def P16600875595077506897.Spec : Prop :=
  ∀ n, P16600875595077506897.a n = (A202098 (n + 1) : ℚ)

end A202098

/-! ## A202098.P13529257981869011298

`A250431(n+2)`
-/

namespace A202098.P13529257981869011298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250431 (n + 2)

end

end A202098.P13529257981869011298

namespace A202098

/-- `A250431(n+2)` -/
def P13529257981869011298.Spec : Prop :=
  ∀ n, P13529257981869011298.a n = A202098 (n + 1)

end A202098

/-! ## A202098.P14909310333749890070

`A250430(n+2)²/A250429(n+2)`
-/

namespace A202098.P14909310333749890070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250430 (n + 2) ^ 2 : ℚ) / (A250429 (n + 2) : ℚ)

end

end A202098.P14909310333749890070

namespace A202098

/-- `A250430(n+2)²/A250429(n+2)` -/
def P14909310333749890070.Spec : Prop :=
  ∀ n, P14909310333749890070.a n = (A202098 (n + 1) : ℚ)

end A202098

/-! ## A202098.P6772326998826648165

`A202097(n+1)*A202097(n+1)/A250429(n+2)`
-/

namespace A202098.P6772326998826648165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202097 (n + 1) * A202097 (n + 1) : ℚ) / (A250429 (n + 2) : ℚ)

end

end A202098.P6772326998826648165

namespace A202098

/-- `A202097(n+1)*A202097(n+1)/A250429(n+2)` -/
def P6772326998826648165.Spec : Prop :=
  ∀ n, P6772326998826648165.a n = (A202098 (n + 1) : ℚ)

end A202098

/-! ## A202098.P17763010052359964236

`A250427(n+2)/A250438(n+2)*A250440(n+2)`
-/

namespace A202098.P17763010052359964236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250427 (n + 2) : ℚ) / (A250438 (n + 2) : ℚ) * (A250440 (n + 2) : ℚ)

end

end A202098.P17763010052359964236

namespace A202098

/-- `A250427(n+2)/A250438(n+2)*A250440(n+2)` -/
def P17763010052359964236.Spec : Prop :=
  ∀ n, P17763010052359964236.a n = (A202098 (n + 1) : ℚ)

end A202098

/-! ## A202098.P4128263867690976448

`A331575(n+11)²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A202098

/-- `A331575(n+11)²` -/
def P4128263867690976448.Spec : Prop :=
  ∀ n, P4128263867690976448.a n = A202098 (n + 1)

theorem P4128263867690976448.correct : P4128263867690976448.Spec := by
  intro n
  simp only [A202098, Nat.add_sub_cancel]

end A202098

/-! ## A202098.P3612516535648817865

`record[A250431(A126759(A008619(n)))]`
-/

namespace A202098.P3612516535648817865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250431 (A126759 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202098.P3612516535648817865

namespace A202098

/-- `record[A250431(A126759(A008619(n)))]` -/
def P3612516535648817865.Spec : Prop :=
  ∀ n, P3612516535648817865.a n = A202098 (n + 1)

end A202098

/-! ## A202098.P2408296021273064201

`record[A250431(A126759(A126759(n)))]`
-/

namespace A202098.P2408296021273064201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250431 (A126759 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202098.P2408296021273064201

namespace A202098

/-- `record[A250431(A126759(A126759(n)))]` -/
def P2408296021273064201.Spec : Prop :=
  ∀ n, P2408296021273064201.a n = A202098 (n + 1)

end A202098

/-! ## A202098.P14277057710362440191

`record[A250431(A002024(A162753(n)))]`
-/

namespace A202098.P14277057710362440191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250431 (A002024 (A162753 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202098.P14277057710362440191

namespace A202098

/-- `record[A250431(A002024(A162753(n)))]` -/
def P14277057710362440191.Spec : Prop :=
  ∀ n, P14277057710362440191.a n = A202098 (n + 1)

end A202098

/-!
# A202099: Number of (n+2) X 9 binary arrays avoiding patterns 001 and 011 in rows and columns.

The programs for A202099, there is no canonical definition to state claims against.
-/

/-! ## A202099.P7775266967956097421

`A250432(A374009(n+2))`
-/

namespace A202099.P7775266967956097421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250432 (A374009 (n + 2)).toNat

end

end A202099.P7775266967956097421

/-! ## A202099.P14807080451215866307

`A250432(A167614(n+8)+A024000(n+5))`
-/

namespace A202099.P14807080451215866307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250432 (A167614 (n + 8) + A024000 (n + 5)).toNat

end

end A202099.P14807080451215866307

/-! ## A202099.P15490843572819254654

`A250432(A055998(n+8)+2*A024000(n+5))`
-/

namespace A202099.P15490843572819254654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250432 (A055998 (n + 8) + 2 * A024000 (n + 5)).toNat

end

end A202099.P15490843572819254654

/-! ## A202099.P2654061580148985340

`A250432(A055999(n+6)-1)`
-/

namespace A202099.P2654061580148985340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250432 (A055999 (n + 6) - 1).toNat

end

end A202099.P2654061580148985340

/-! ## A202099.P15111676835388260720

`A250432(A000096(n+7)+n+3)`
-/

namespace A202099.P15111676835388260720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250432 (A000096 (n + 7) + (n + 3 : ℤ)).toNat

end

end A202099.P15111676835388260720

