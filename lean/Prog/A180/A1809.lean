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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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

/-!
# A180900: Number of sequences of n integers p(i) i=0..n-1 with 0 <= p(i) <= 4*i and |p(i) - p(i-1)| <= 4.

The programs for A180900, there is no canonical definition to state claims against.
-/

/-! ## A180900.P13018031050592615510

`A180906(A155212(n)+5)`
-/

namespace A180900.P13018031050592615510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A155212 n + 5).toNat

end

end A180900.P13018031050592615510

/-! ## A180900.P15370249487163296549

`A180906(eq[3, A193592(n)])`
-/

namespace A180900.P15370249487163296549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180900.P15370249487163296549

/-! ## A180900.P9137521780760207256

`A180906(A052905(n+1)+2)`
-/

namespace A180900.P9137521780760207256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A052905 (n + 1) + 2).toNat

end

end A180900.P9137521780760207256

/-! ## A180900.P1904814586419102439

`A180906(eq[4, A057728(n+1)])`
-/

namespace A180900.P1904814586419102439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180900.P1904814586419102439

/-! ## A180900.P3416915987457370463

`A180906(eq[2, A185782(n+1)-2])`
-/

namespace A180900.P3416915987457370463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180900.P3416915987457370463

/-! ## A180900.P455730060933917435

`A180906(eq[2, A185782(n+1)/2])`
-/

namespace A180900.P455730060933917435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185782 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A180900.P455730060933917435

/-! ## A180900.P12573709413874514618

`A180906(A000096(n+2)+n+2)`
-/

namespace A180900.P12573709413874514618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A000096 (n + 2) + (n + 2 : ℤ)).toNat

end

end A180900.P12573709413874514618

/-! ## A180900.P5987802996072435929

`record[A180906(n+7)/A180906(n+11)]`
-/

namespace A180900.P5987802996072435929
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180906 (n + 7) : ℚ) / (A180906 (n + 11) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180900.P5987802996072435929

/-! ## A180900.P6809539907546716214

`record[root(A180906(n+11), A180906(n+15))]`
-/

namespace A180900.P6809539907546716214
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A180906 (n + 11) : ℝ) ^ (1 / (A180906 (n + 15) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180900.P6809539907546716214

/-! ## A180900.P8466604633433548377

`A180906(A167614(n+1)+A005408(n))`
-/

namespace A180900.P8466604633433548377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A167614 (n + 1) + A005408 n).toNat

end

end A180900.P8466604633433548377

/-!
# A180901: Number of sequences of n integers p(i) i=0..n-1 with 0<=p(i)<=5*i and |p(i)-p(i-1)|<=5.

The programs for A180901, there is no canonical definition to state claims against.
-/

/-! ## A180901.P13032214925947677076

`A180906(Δ[A264443(n)])`
-/

namespace A180901.P13032214925947677076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (f1 (n + 1) - f1 n).toNat

end

end A180901.P13032214925947677076

/-! ## A180901.P4639900931599475889

`A180906(eq[4, A193592(n)])`
-/

namespace A180901.P4639900931599475889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180901.P4639900931599475889

/-! ## A180901.P6705837984457585409

`A180906(A052905(n+2)+1)`
-/

namespace A180901.P6705837984457585409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A052905 (n + 2) + 1).toNat

end

end A180901.P6705837984457585409

/-! ## A180901.P8481148275313446954

`record[A180906(n+11)/A180906(n+16)]`
-/

namespace A180901.P8481148275313446954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180906 (n + 11) : ℚ) / (A180906 (n + 16) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180901.P8481148275313446954

/-! ## A180901.P2605540783398042748

`A180906(A264443(n+1)-A264443(n))`
-/

namespace A180901.P2605540783398042748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A264443 (n + 1) - A264443 n).toNat

end

end A180901.P2605540783398042748

/-! ## A180901.P12930771558905306381

`A180906(A005408(n)+A055999(n)+10)`
-/

namespace A180901.P12930771558905306381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A005408 n + (A055999 n + 10)).toNat

end

end A180901.P12930771558905306381

/-! ## A180901.P13977166394193692008

`A180906(A180486(n+1)+A167614(n+1))`
-/

namespace A180901.P13977166394193692008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A180486 (n + 1) + A167614 (n + 1)).toNat

end

end A180901.P13977166394193692008

/-! ## A180901.P601049947501324950

`A180906(A005408(n)+A000096(n+2)+5)`
-/

namespace A180901.P601049947501324950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A005408 n + (A000096 (n + 2) + 5)).toNat

end

end A180901.P601049947501324950

/-!
# A180902: Number of sequences of n integers p(i) i=0..n-1 with 0<=p(i)<=6*i and |p(i)-p(i-1)|<=6.

The programs for A180902, there is no canonical definition to state claims against.
-/

/-! ## A180902.P16273062926280043195

`A180906(A052905(n+3))`
-/

namespace A180902.P16273062926280043195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A052905 (n + 3)).toNat

end

end A180902.P16273062926280043195

/-! ## A180902.P4324541709152707283

`A180906(eq[3, A219347(n)])`
-/

namespace A180902.P4324541709152707283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180902.P4324541709152707283

/-! ## A180902.P8416776860604874050

`A180906(A055999(n+3)+1)`
-/

namespace A180902.P8416776860604874050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A055999 (n + 3) + 1).toNat

end

end A180902.P8416776860604874050

/-! ## A180902.P3217834163735214985

`A180906(A046691(n+4)-1)`
-/

namespace A180902.P3217834163735214985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A046691 (n + 4) - 1).toNat

end

end A180902.P3217834163735214985

/-! ## A180902.P18304483322988082443

`A180906(Δ[A264443(n+1)]-1)`
-/

namespace A180902.P18304483322988082443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (f1 (n + 1) - f1 n - 1).toNat

end

end A180902.P18304483322988082443

/-! ## A180902.P11038047409889990732

`A180906(A000217(n+5)+n+1)`
-/

namespace A180902.P11038047409889990732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A180902.P11038047409889990732

/-!
# A180903: Number of sequences of n integers p(i) i=0..n-1 with 0<=p(i)<=7*i and |p(i)-p(i-1)|<=7.

The programs for A180903, there is no canonical definition to state claims against.
-/

/-! ## A180903.P13104729273278770504

`A180906(A055999(n+4))`
-/

namespace A180903.P13104729273278770504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A055999 (n + 4)).toNat

end

end A180903.P13104729273278770504

/-! ## A180903.P9396902464748573846

`A180906(eq[4, A219347(n)])`
-/

namespace A180903.P9396902464748573846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180903.P9396902464748573846

/-! ## A180903.P1287687670116592716

`A180906(A052905(n+4)-1)`
-/

namespace A180903.P1287687670116592716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A052905 (n + 4) - 1).toNat

end

end A180903.P1287687670116592716

/-! ## A180903.P15311191946716302594

`A180906(A000096(n+6)-5)`
-/

namespace A180903.P15311191946716302594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A000096 (n + 6) - 5).toNat

end

end A180903.P15311191946716302594

/-! ## A180903.P11659979220808083870

`A180906(A000124(n+7)-7)`
-/

namespace A180903.P11659979220808083870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A000124 (n + 7) - 7).toNat

end

end A180903.P11659979220808083870

/-! ## A180903.P8857103320361740548

`A180906(eq[7, A004736(n+1)]+1)`
-/

namespace A180903.P8857103320361740548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A180903.P8857103320361740548

/-!
# A180904: Number of sequences of n integers p(i) i=0..n-1 with 0<=p(i)<=8*i and |p(i)-p(i-1)|<=8.

The programs for A180904, there is no canonical definition to state claims against.
-/

/-! ## A180904.P8740637377133418803

`A180906(eq[5, A219347(n)])`
-/

namespace A180904.P8740637377133418803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180904.P8740637377133418803

/-! ## A180904.P14278251653991071988

`A180906(eq[7, A193592(n)])`
-/

namespace A180904.P14278251653991071988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180904.P14278251653991071988

/-! ## A180904.P7632771221737089375

`A180906(A051936(n+8)+2)`
-/

namespace A180904.P7632771221737089375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A051936 (n + 8) + 2).toNat

end

end A180904.P7632771221737089375

/-! ## A180904.P9140516046328343526

`A180906(eq[12, A185782(n+1)])`
-/

namespace A180904.P9140516046328343526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180904.P9140516046328343526

/-! ## A180904.P12929944281044952442

`A180906(eq[64, A057728(n+1)])`
-/

namespace A180904.P12929944281044952442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180904.P12929944281044952442

/-!
# A180905: Number of sequences of n integers p(i) i=0..n-1 with 0<=p(i)<=9*i and |p(i)-p(i-1)|<=9.

The programs for A180905, there is no canonical definition to state claims against.
-/

/-! ## A180905.P16222728037371807315

`A180906(eq[6, A219347(n)])`
-/

namespace A180905.P16222728037371807315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180905.P16222728037371807315

/-! ## A180905.P8407274507818124554

`A180906(eq[8, A193592(n)])`
-/

namespace A180905.P8407274507818124554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180905.P8407274507818124554

/-! ## A180905.P18226575099374095630

`A180906(A133263(n+8)+n-1)`
-/

namespace A180905.P18226575099374095630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A133263 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A180905.P18226575099374095630

/-!
# A180906: T(n,k)=number of sequences of n integers p(i) i=0..n-1 0<=p(i)<=k*i and |p(i+1)-p(i)|<=k.

The programs for A180906, there is no canonical definition to state claims against.
-/

/-! ## A180906.P13153854008004846700

`A156251(A193842(n))-A025468(n)`
-/

namespace A180906.P13153854008004846700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A193842 n).toNat - A025468 n

end

end A180906.P13153854008004846700

/-! ## A180906.P13660361461466617293

`A225638(4*A351761(n))+A049617(A049600(n))`
-/

namespace A180906.P13660361461466617293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225638 (4 * A351761 n).toNat + A049617 (A049600 n).toNat

end

end A180906.P13660361461466617293

/-! ## A180906.P15278600674816253555

`A094708(A193842(n)+3)`
-/

namespace A180906.P15278600674816253555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094708 (A193842 n + 3).toNat

end

end A180906.P15278600674816253555

/-! ## A180906.P17608568370993742876

`and(p?[A287640(n)], A153277(n+1))`
-/

namespace A180906.P17608568370993742876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A153277 (n + 1))

end

end A180906.P17608568370993742876

/-! ## A180906.P3882621779642867915

`A070939(A364345(n)^A103438(n))`
-/

namespace A180906.P3882621779642867915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A364345 n : ℚ) ^ (A103438 n : ℤ))).toNat

end

end A180906.P3882621779642867915

/-!
# A180907: Number of sequences of n integers p(i) i=0..n-1 with 0<=p(i)<=2*i and -2

The programs for A180907, there is no canonical definition to state claims against.
-/

/-! ## A180907.P2151846173005939258

`A180915(∑[n+2])`
-/

namespace A180907.P2151846173005939258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180907.P2151846173005939258

/-! ## A180907.P3375614912590483174

`record[A180915(A000096(A020986(n)))]`
-/

namespace A180907.P3375614912590483174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A000096 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180907.P3375614912590483174

/-! ## A180907.P18362745886877914283

`record[A180915(A000096(A134478(n)))]`
-/

namespace A180907.P18362745886877914283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A000096 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180907.P18362745886877914283

/-! ## A180907.P9154276203330414137

`record[A180915(A000096(A324347(n)))]`
-/

namespace A180907.P9154276203330414137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A000096 (A324347 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180907.P9154276203330414137

/-! ## A180907.P2393928340591428558

`record[A180915(A000096(A328396(n)))]`
-/

namespace A180907.P2393928340591428558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A000096 (A328396 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180907.P2393928340591428558

/-! ## A180907.P15245165377064101704

`record[A180915(A000096(A344180(n)))]`
-/

namespace A180907.P15245165377064101704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180907.P15245165377064101704

/-! ## A180907.P15812783686063389186

`record[A180915(A000096(A010766(n+1)))]`
-/

namespace A180907.P15812783686063389186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A000096 (A010766 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180907.P15812783686063389186

/-!
# A180908: Number of sequences of n integers p(i) i=0..n-1 with 0<=p(i)<=3*i and -3

The programs for A180908, there is no canonical definition to state claims against.
-/

/-! ## A180908.P8035732710364058984

`A180915(∑[n+3]+1)`
-/

namespace A180908.P8035732710364058984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180908.P8035732710364058984

/-! ## A180908.P11807209389440815334

`lcm((-1)^n, A180915(A034856(n+2)))`
-/

namespace A180908.P11807209389440815334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A180915 (A034856 (n + 2)).toNat)

end

end A180908.P11807209389440815334

/-! ## A180908.P9905317965936878136

`a(C(2, n+2))*A180915(A052905(n)+3)` with `a(0)=1`
-/

namespace A180908.P9905317965936878136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (Nat.choose 2 (n + 2)) * A180915 (A052905 n + 3).toNat

end

end A180908.P9905317965936878136

/-! ## A180908.P6096582220371562081

`record[A180915(A034856(A328396(n)))]`
-/

namespace A180908.P6096582220371562081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A034856 (A328396 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180908.P6096582220371562081

/-! ## A180908.P7836536299934065901

`A180915(A052905(n)+3)%A164110(n)`
-/

namespace A180908.P7836536299934065901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180915 (A052905 n + 3).toNat) (A164110 n)

end

end A180908.P7836536299934065901

/-! ## A180908.P1543350280560162214

`or(A000007(n), A180915(A034856(n+2)))`
-/

namespace A180908.P1543350280560162214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A180915 (A034856 (n + 2)).toNat)

end

end A180908.P1543350280560162214

/-! ## A180908.P8777442591890320084

`A180915(A034856(n+2))%A069837(n+1)`
-/

namespace A180908.P8777442591890320084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180915 (A034856 (n + 2)).toNat) (A069837 (n + 1))

end

end A180908.P8777442591890320084

/-! ## A180908.P14336392138501333758

`A007318(C(2, n))*A180915(A034856(n+2))`
-/

namespace A180908.P14336392138501333758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A180915 (A034856 (n + 2)).toNat

end

end A180908.P14336392138501333758

/-!
# A180909: Number of sequences of n integers p(i) i=0..n-1 with 0<=p(i)<=4*i and -4

The programs for A180909, there is no canonical definition to state claims against.
-/

/-! ## A180909.P4929980254666025816

`A180915(A027379(n+2))`
-/

namespace A180909.P4929980254666025816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A027379 (n + 2)).toNat

end

end A180909.P4929980254666025816

/-! ## A180909.P6241792868530387839

`A180915(A055998(n+2))`
-/

namespace A180909.P6241792868530387839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A055998 (n + 2)).toNat

end

end A180909.P6241792868530387839

/-! ## A180909.P15787813724512828326

`A180915(A155212(n)+5)`
-/

namespace A180909.P15787813724512828326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A155212 n + 5).toNat

end

end A180909.P15787813724512828326

/-! ## A180909.P2858911138484962404

`A180915(eq[3, A193592(n)])`
-/

namespace A180909.P2858911138484962404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180909.P2858911138484962404

/-! ## A180909.P10033106932397423845

`A180915(A052905(n+1)+2)`
-/

namespace A180909.P10033106932397423845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A052905 (n + 1) + 2).toNat

end

end A180909.P10033106932397423845

/-! ## A180909.P8548400125991303783

`A180915(eq[2, A057728(n+1)-2])`
-/

namespace A180909.P8548400125991303783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180909.P8548400125991303783

/-! ## A180909.P9959324003268839980

`A180915(eq[2, A185782(n+1)-2])`
-/

namespace A180909.P9959324003268839980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180909.P9959324003268839980

/-! ## A180909.P423021809477111447

`A180915(eq[2, A057728(n+1)/2])`
-/

namespace A180909.P423021809477111447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057728 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A180909.P423021809477111447

/-! ## A180909.P5547015996265988287

`A180915(eq[2, A185782(n+1)/2])`
-/

namespace A180909.P5547015996265988287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185782 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A180909.P5547015996265988287

/-! ## A180909.P14184226249336787089

`A180915(A167499(n)+A016777(n))`
-/

namespace A180909.P14184226249336787089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A167499 n + A016777 n).toNat

end

end A180909.P14184226249336787089

/-!
# A180910: Number of sequences of n integers p(i) i=0..n-1 with 0<=p(i)<=5*i and -5

The programs for A180910, there is no canonical definition to state claims against.
-/

/-! ## A180910.P4473974823496378124

`A180915(A046691(n+3))`
-/

namespace A180910.P4473974823496378124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A046691 (n + 3)).toNat

end

end A180910.P4473974823496378124

/-! ## A180910.P15657233822255080079

`A180915(eq[4, A193592(n)])`
-/

namespace A180910.P15657233822255080079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180910.P15657233822255080079

/-! ## A180910.P3692499608900387951

`A180915(Δ[A023545(n+1)])`
-/

namespace A180910.P3692499608900387951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (f1 (n + 1) - f1 n).toNat

end

end A180910.P3692499608900387951

/-! ## A180910.P8109304952654036462

`A180915(A055999(n+2)+2)`
-/

namespace A180910.P8109304952654036462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A055999 (n + 2) + 2).toNat

end

end A180910.P8109304952654036462

/-! ## A180910.P5200055471218775508

`A180915(A056000(n+1)+6)`
-/

namespace A180910.P5200055471218775508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A056000 (n + 1) + 6).toNat

end

end A180910.P5200055471218775508

/-! ## A180910.P10143954874700762284

`A180915(A000124(n+5)-5)`
-/

namespace A180910.P10143954874700762284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A000124 (n + 5) - 5).toNat

end

end A180910.P10143954874700762284

/-! ## A180910.P12720052823382375760

`A180915(eq[4, A025581(n)]+1)`
-/

namespace A180910.P12720052823382375760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A180910.P12720052823382375760

/-! ## A180910.P11655602213830002421

`A180915(A027379(n+2)+n+4)`
-/

namespace A180910.P11655602213830002421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A027379 (n + 2) + (n + 4 : ℤ)).toNat

end

end A180910.P11655602213830002421

/-!
# A180911: Number of sequences of n integers p(i) i=0..n-1 with 0<=p(i)<=6*i and -6

The programs for A180911, there is no canonical definition to state claims against.
-/

/-! ## A180911.P10235500718311143744

`A180915(A052905(n+3))`
-/

namespace A180911.P10235500718311143744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A052905 (n + 3)).toNat

end

end A180911.P10235500718311143744

/-! ## A180911.P1141110729205751576

`A180915(eq[3, A219347(n)])`
-/

namespace A180911.P1141110729205751576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180911.P1141110729205751576

/-! ## A180911.P15173952418086940522

`A180915(A055998(n+4)-2)`
-/

namespace A180911.P15173952418086940522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A055998 (n + 4) - 2).toNat

end

end A180911.P15173952418086940522

/-! ## A180911.P5259172155372713077

`A180915(A000217(n+6)-5)`
-/

namespace A180911.P5259172155372713077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A000217 (n + 6) - 5).toNat

end

end A180911.P5259172155372713077

/-! ## A180911.P612018557597884944

`A180915(A000124(n+6)-6)`
-/

namespace A180911.P612018557597884944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A000124 (n + 6) - 6).toNat

end

end A180911.P612018557597884944

/-! ## A180911.P9656773700209724727

`A180915(Δ[Δ[A006504(n+1)]])`
-/

namespace A180911.P9656773700209724727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (f1 (n + 1) - f1 n).toNat

end

end A180911.P9656773700209724727

/-! ## A180911.P8500717198838777563

`A180915(Δ[A023551(n+1)]+1)`
-/

namespace A180911.P8500717198838777563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (f1 (n + 1) - f1 n + 1).toNat

end

end A180911.P8500717198838777563

/-! ## A180911.P10102746687127753767

`A180915(Δ[A023545(n+2)]-1)`
-/

namespace A180911.P10102746687127753767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (f1 (n + 1) - f1 n - 1).toNat

end

end A180911.P10102746687127753767

/-! ## A180911.P8444205572385008673

`A180915(A167499(n+3)+2*n+1)`
-/

namespace A180911.P8444205572385008673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A167499 (n + 3) + (2 * n + 1 : ℤ)).toNat

end

end A180911.P8444205572385008673

/-! ## A180911.P6606896745060292586

`A180915(eq[16, A059268(n)]+2*(n+1))`
-/

namespace A180911.P6606896745060292586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 * (n + 1))

end

end A180911.P6606896745060292586

/-!
# A180912: Number of sequences of n integers p(i) i=0..n-1 with 0<=p(i)<=7*i and -7

The programs for A180912, there is no canonical definition to state claims against.
-/

/-! ## A180912.P7328620587760384956

`A180915(A055999(n+4))`
-/

namespace A180912.P7328620587760384956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A055999 (n + 4)).toNat

end

end A180912.P7328620587760384956

/-! ## A180912.P11858159898607967810

`A180915(eq[4, A219347(n)])`
-/

namespace A180912.P11858159898607967810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180912.P11858159898607967810

/-! ## A180912.P5255098735969152400

`A180915(Δ[A023551(n+2)])`
-/

namespace A180912.P5255098735969152400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (f1 (n + 1) - f1 n).toNat

end

end A180912.P5255098735969152400

/-! ## A180912.P2418216023808226429

`A180915(A155212(n+3)+2)`
-/

namespace A180912.P2418216023808226429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A155212 (n + 3) + 2).toNat

end

end A180912.P2418216023808226429

/-! ## A180912.P6774552339110049082

`A180915(A052905(n+4)-1)`
-/

namespace A180912.P6774552339110049082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A052905 (n + 4) - 1).toNat

end

end A180912.P6774552339110049082

/-! ## A180912.P5311436970821096023

`A180915(A000124(n+7)-7)`
-/

namespace A180912.P5311436970821096023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A000124 (n + 7) - 7).toNat

end

end A180912.P5311436970821096023

/-! ## A180912.P13947616662330017884

`A180915(A000217(n+6)+n+1)`
-/

namespace A180912.P13947616662330017884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A180912.P13947616662330017884

/-!
# A180913: Number of sequences of n integers p(i) i=0..n-1 with 0<=p(i)<=8*i and -8

The programs for A180913, there is no canonical definition to state claims against.
-/

/-! ## A180913.P7543253477618025842

`A180915(eq[5, A219347(n)])`
-/

namespace A180913.P7543253477618025842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180913.P7543253477618025842

/-! ## A180913.P2054986196687658142

`A180915(eq[7, A193592(n)])`
-/

namespace A180913.P2054986196687658142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180913.P2054986196687658142

/-! ## A180913.P18367946905376127474

`A180915(eq[12, A185782(n+1)])`
-/

namespace A180913.P18367946905376127474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180913.P18367946905376127474

/-! ## A180913.P1600585891430674402

`A180915(eq[64, A057728(n+1)])`
-/

namespace A180913.P1600585891430674402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180913.P1600585891430674402

/-! ## A180913.P16503279740779435370

`A180915(A000217(n+7)+n+1)`
-/

namespace A180913.P16503279740779435370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A180913.P16503279740779435370

/-!
# A180914: Number of sequences of n integers p(i) i=0..n-1 with 0<=p(i)<=9*i and -9

The programs for A180914, there is no canonical definition to state claims against.
-/

/-! ## A180914.P15257742878534909781

`A180915(eq[6, A219347(n)])`
-/

namespace A180914.P15257742878534909781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180914.P15257742878534909781

/-! ## A180914.P4030760884225269307

`A180915(eq[8, A193592(n)])`
-/

namespace A180914.P4030760884225269307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180914.P4030760884225269307

/-! ## A180914.P4145599036567759921

`A180915(A055999(n+6)-2)`
-/

namespace A180914.P4145599036567759921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A055999 (n + 6) - 2).toNat

end

end A180914.P4145599036567759921

/-! ## A180914.P977190181136145640

`A180915(A027379(n+7)-5)`
-/

namespace A180914.P977190181136145640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (A027379 (n + 7) - 5).toNat

end

end A180914.P977190181136145640

/-! ## A180914.P14373080786369800431

`A180915(eq[14, A185782(n+1)])`
-/

namespace A180914.P14373080786369800431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180914.P14373080786369800431

/-!
# A180915: T(n,k)=number of sequences of n integers p(i) i=0..n-1 0<=p(i)<=k*i and -k

The programs for A180915, there is no canonical definition to state claims against.
-/

/-! ## A180915.P4513633010555962693

`A336573(comp[∑[n]])%A336576(n+1)`
-/

namespace A180915.P4513633010555962693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336573 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A336576 (n + 1))

end

end A180915.P4513633010555962693

/-! ## A180915.P2905174160202729685

`A336573(comp[C(n, 2)]%A247027(n+1))`
-/

namespace A180915.P2905174160202729685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336573 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A247027 (n + 1))).toNat

end

end A180915.P2905174160202729685

/-! ## A180915.P8664837148730470633

`A336573(lt[A307280(n+1), A062190(n)])`
-/

namespace A180915.P8664837148730470633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336573 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A180915.P8664837148730470633

/-! ## A180915.P2755710672429519054

`A336573(lt[A198954(n), A307280(n+1)])`
-/

namespace A180915.P2755710672429519054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336573 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A180915.P2755710672429519054

/-! ## A180915.P2856271019824528086

`A308590(A156914(n))`
-/

namespace A180915.P2856271019824528086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308590 (A156914 n).toNat

end

end A180915.P2856271019824528086

/-!
# A180917: Numbers that are not the sum of three positive heptagonal numbers.

The programs for A180917, there is no canonical definition to state claims against.
-/

/-! ## A180917.P18424396759857579084

`eq[char[A117105(n+1)], A151933(n)]`
-/

namespace A180917.P18424396759857579084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117105 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A180917.P18424396759857579084

/-! ## A180917.P2761482267057947990

`lt[A309772(n+1), A309749(A309714(2*n+1))]`
-/

namespace A180917.P2761482267057947990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309749 (A309714 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180917.P2761482267057947990

/-! ## A180917.P1456724764615015667

`eq[A055640(A043307(n+1)), A056556(n)]`
-/

namespace A180917.P1456724764615015667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A043307 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180917.P1456724764615015667

/-! ## A180917.P11931468053917099515

`lt[A114213(2*(n+2)), A113738(3*n)]`
-/

namespace A180917.P11931468053917099515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114213 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113738 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180917.P11931468053917099515

/-! ## A180917.P11196307234259423957

`lt[A141809(A183091(n+1)), A023888(n+1)]`
-/

namespace A180917.P11196307234259423957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141809 (A183091 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180917.P11196307234259423957

/-!
# A180918: 'DPE(n,k)' triangle read by rows. DPE(n,k) is the number of k-double-palindromes of n up to cyclic equivalence.

The programs for A180918, the canonical program `A180918.P14651875171913315953` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180918 has offset 1).

The definition of A180918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180918.P14651875171913315953

`A119963(A080036(n))-A010054(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A180918

/-- `A119963(A080036(n))-A010054(n)` -/
def P14651875171913315953.Spec : Prop :=
  ∀ n, P14651875171913315953.a n = A180918 (n + 1)

theorem P14651875171913315953.correct : P14651875171913315953.Spec := by
  intro n
  simp only [A180918, Nat.add_sub_cancel]

end A180918

/-! ## A180918.P3674818157133877748

`A119963(A080036(n))%A122366(n)`
-/

namespace A180918.P3674818157133877748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119963 (A080036 n).toNat) (A122366 n)

end

end A180918.P3674818157133877748

namespace A180918

/-- `A119963(A080036(n))%A122366(n)` -/
def P3674818157133877748.Spec : Prop :=
  ∀ n, P3674818157133877748.a n = A180918 (n + 1)

end A180918

/-! ## A180918.P758562315151776200

`A119963(∑[A035214(n)])-A010054(n)`
-/

namespace A180918.P758562315151776200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A010054 n

end

end A180918.P758562315151776200

namespace A180918

/-- `A119963(∑[A035214(n)])-A010054(n)` -/
def P758562315151776200.Spec : Prop :=
  ∀ n, P758562315151776200.a n = A180918 (n + 1)

end A180918

/-! ## A180918.P7688456244928654639

`A119963(∑[A035214(n)])%A074909(n)`
-/

namespace A180918.P7688456244928654639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A074909 n)

end

end A180918.P7688456244928654639

namespace A180918

/-- `A119963(∑[A035214(n)])%A074909(n)` -/
def P7688456244928654639.Spec : Prop :=
  ∀ n, P7688456244928654639.a n = A180918 (n + 1)

end A180918

/-! ## A180918.P10093371457216415281

`A119963(A014132(n+1))-A010054(n)`
-/

namespace A180918.P10093371457216415281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (A014132 (n + 1)).toNat - A010054 n

end

end A180918.P10093371457216415281

namespace A180918

/-- `A119963(A014132(n+1))-A010054(n)` -/
def P10093371457216415281.Spec : Prop :=
  ∀ n, P10093371457216415281.a n = A180918 (n + 1)

end A180918

/-! ## A180918.P18220248099692891462

`A119963(A014132(n+1))%A008949(n)`
-/

namespace A180918.P18220248099692891462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119963 (A014132 (n + 1)).toNat) (A008949 n)

end

end A180918.P18220248099692891462

namespace A180918

/-- `A119963(A014132(n+1))%A008949(n)` -/
def P18220248099692891462.Spec : Prop :=
  ∀ n, P18220248099692891462.a n = A180918 (n + 1)

end A180918

/-!
# A180919: a(n) = n^2 + 731*n + 1.

The programs for A180919, the canonical program `A180919.P8167481529624446525` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180919 has offset 0).

The definition of A180919 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+731*n+1` (program `A180919.P8167481529624446525`, by `A180919.P8167481529624446525.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180919.P8167481529624446525

`n²+731*n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A180919

/-- `n²+731*n+1` -/
def P8167481529624446525.Spec : Prop :=
  ∀ n, (P8167481529624446525.a n : ℤ) = A180919 n

theorem P8167481529624446525.correct : P8167481529624446525.Spec := by
  intro n
  simp only [A180919]

end A180919

/-! ## A180919.P13909589029409590376

`∑[a(n-1)+2]` with `a(0)=1, a(1)=732`
-/

namespace A180919.P13909589029409590376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 732] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180919.P13909589029409590376

namespace A180919

/-- `∑[a(n-1)+2]` -/
def P13909589029409590376.Spec : Prop :=
  ∀ n, (P13909589029409590376.a n : ℤ) = A180919 n

end A180919

/-!
# A180920: Numbers k such that the sum of the cubes of the k consecutive integers starting from k is a square.

The programs for A180920, there is no canonical definition to state claims against.
-/

/-! ## A180920.P14317158867473418215

`2*A159683(n+1)+1`
-/

namespace A180920.P14317158867473418215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159683 (n + 1) + 1

end

end A180920.P14317158867473418215

/-! ## A180920.P4967142750037326260

`∑[A273053(2*n+1)]+1`
-/

namespace A180920.P4967142750037326260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273053 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A180920.P4967142750037326260

/-! ## A180920.P14226720207046907177

`∑[4*A001090(2*n)]+1`
-/

namespace A180920.P14226720207046907177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001090 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A180920.P14226720207046907177

/-! ## A180920.P17118761376303209264

`A322780(4*n)+a(n-1)` with `a(0)=1`
-/

namespace A180920.P17118761376303209264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322780 (4 * n) + a (n - 1)

end

end A180920.P17118761376303209264

/-! ## A180920.P1700088342446886410

`A273053(n+1+n)+a(n-1)` with `a(0)=1`
-/

namespace A180920.P1700088342446886410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273053 (n + 1 + n) + a (n - 1)

end

end A180920.P1700088342446886410

/-! ## A180920.P13591530165955436586

`∑[A322780(A008574(n))]`
-/

namespace A180920.P13591530165955436586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180920.P13591530165955436586

/-! ## A180920.P17661948354735561668

`∑[A322780(A004277(2*n))]`
-/

namespace A180920.P17661948354735561668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (A004277 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180920.P17661948354735561668

/-! ## A180920.P16723483839822125594

`∑[A322780(A004273(2*n)+1)]`
-/

namespace A180920.P16723483839822125594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (A004273 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180920.P16723483839822125594

/-! ## A180920.P6526305920918559359

`∑[A322780(A019425(2*n+1))]`
-/

namespace A180920.P6526305920918559359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (A019425 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180920.P6526305920918559359

/-! ## A180920.P6183258337074307814

`A070997(n)²-A159683(n+1)`
-/

namespace A180920.P6183258337074307814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n ^ 2 - A159683 (n + 1)

end

end A180920.P6183258337074307814

/-!
# A180921: a(n) is the square root of the sum of the cubes of the b(n) consecutive integers starting from b(n), where b(n) = A180920.

The programs for A180921, there is no canonical definition to state claims against.
-/

/-! ## A180921.P17555710878248962416

`Δ[A037270(A001090(n))]`
-/

namespace A180921.P17555710878248962416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 (A001090 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180921.P17555710878248962416

/-!
# A180922: Smallest n-digit number that is divisible by exactly 3 primes (counted with multiplicity).

The programs for A180922, there is no canonical definition to state claims against.
-/

/-! ## A180922.P2595843039825530776

`A144433(10^n)+char[2^n]`
-/

namespace A180922.P2595843039825530776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144433 (10 ^ n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A180922.P2595843039825530776

/-!
# A180923: Numbers n such that 111*n + 1 is prime.

The programs for A180923, the canonical program `A180923.P9167318157465148194` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180923 has offset 1).

The definition of A180923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180923.P384018869021249064

`eq[1, A001222(3*37*n+1)]`
-/

namespace A180923.P384018869021249064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (37 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180923.P384018869021249064

namespace A180923

/-- `eq[1, A001222(3*37*n+1)]` -/
def P384018869021249064.Spec : Prop :=
  ∀ n, (P384018869021249064.a n : ℤ) = A180923 (n + 1)

end A180923

/-! ## A180923.P16936133934886020275

`eq[2, A000005(3*37*n+1)]`
-/

namespace A180923.P16936133934886020275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (37 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180923.P16936133934886020275

namespace A180923

/-- `eq[2, A000005(3*37*n+1)]` -/
def P16936133934886020275.Spec : Prop :=
  ∀ n, (P16936133934886020275.a n : ℤ) = A180923 (n + 1)

end A180923

/-! ## A180923.P9167318157465148194

`eq[3*37*n+1, A001414(3*37*n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180923

/-- `eq[3*37*n+1, A001414(3*37*n+1)]` -/
def P9167318157465148194.Spec : Prop :=
  ∀ n, (P9167318157465148194.a n : ℤ) = A180923 (n + 1)

theorem P9167318157465148194.correct : P9167318157465148194.Spec := by
  intro n
  simp only [A180923, Nat.add_sub_cancel]

end A180923

/-! ## A180923.P8841558347497577146

`eq[2, A000005(A177769(n+1)+1)]+1`
-/

namespace A180923.P8841558347497577146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A177769 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180923.P8841558347497577146

namespace A180923

/-- `eq[2, A000005(A177769(n+1)+1)]+1` -/
def P8841558347497577146.Spec : Prop :=
  ∀ n, (P8841558347497577146.a n : ℤ) = A180923 (n + 1)

end A180923

/-! ## A180923.P7646725859944431590

`eq[4, A000005(A016777(37*n))²]`
-/

namespace A180923.P7646725859944431590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016777 (37 * n)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180923.P7646725859944431590

namespace A180923

/-- `eq[4, A000005(A016777(37*n))²]` -/
def P7646725859944431590.Spec : Prop :=
  ∀ n, (P7646725859944431590.a n : ℤ) = A180923 (n + 1)

end A180923

/-!
# A180925: Natural numbers with palindromic number of divisors.

The programs for A180925, there is no canonical definition to state claims against.
-/

/-! ## A180925.P10351588734616937579

`record[(n+1)*A136522(A000005(n+1))]`
-/

namespace A180925.P10351588734616937579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A136522 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180925.P10351588734616937579

/-! ## A180925.P17430890501343573688

`record[n+1-A120647(A320111(2*(n+1)))]`
-/

namespace A180925.P17430890501343573688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A120647 (A320111 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180925.P17430890501343573688

/-! ## A180925.P10956234413598596141

`record[n+1-A001403(A045778(n+1))]`
-/

namespace A180925.P10956234413598596141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001403 (A045778 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180925.P10956234413598596141

/-! ## A180925.P11772724741497449103

`record[A290976(3*A000005(n+1))+n+1]`
-/

namespace A180925.P11772724741497449103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290976 (3 * A000005 (n + 1)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180925.P11772724741497449103

/-! ## A180925.P4793631060726470813

`comp[Δ[A119877(A053767(n))]]`
-/

namespace A180925.P4793631060726470813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119877 (A053767 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A180925.P4793631060726470813

/-! ## A180925.P1393518175087781336

`comp[A334952(2*(n+1))%A334953(n+1)]`
-/

namespace A180925.P1393518175087781336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334952 (2 * (n + 1))) (A334953 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A180925.P1393518175087781336

/-! ## A180925.P6742933242642072911

`comp[64-A125710(n)]`
-/

namespace A180925.P6742933242642072911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 - A125710 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A180925.P6742933242642072911

/-! ## A180925.P319710447202348410

`comp[64-A269489(n+1)]`
-/

namespace A180925.P319710447202348410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 - A269489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A180925.P319710447202348410

/-!
# A180926: Numbers k such that 6*k and 10*k are triangular numbers.

The programs for A180926, the canonical program `A180926.P9455490141906592486` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180926 has offset 1).

The definition of A180926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180926.P5343011447092847852

`A159683(n+1)/16`
-/

namespace A180926.P5343011447092847852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159683 (n + 1) : ℚ) / 16

end

end A180926.P5343011447092847852

namespace A180926

/-- `A159683(n+1)/16` -/
def P5343011447092847852.Spec : Prop :=
  ∀ n, P5343011447092847852.a n = (A180926 (n + 1) : ℚ)

end A180926

/-! ## A180926.P9455490141906592486

`(62*a(n-1)+1+sqrt((48*a(n-1)+1)*(80*a(n-1)+1)))/2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A180926

/-- `(62*a(n-1)+1+sqrt((48*a(n-1)+1)*(80*a(n-1)+1)))/2` -/
def P9455490141906592486.Spec : Prop :=
  ∀ n, P9455490141906592486.a n = (A180926 (n + 1) : ℝ)

end A180926

/-! ## A180926.P9728280962719042951

`(62*a(n-1)+1+((48*a(n-1)+1)*(80*a(n-1)+1))^(1/2))/2` with `a(0)=0`
-/

namespace A180926.P9728280962719042951
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (62 * a (n - 1) + (1 + ((48 * a (n - 1) + 1) * (80 * a (n - 1) + 1)) ^ ((1 : ℚ) / 2 : ℝ))) / 2

end

end A180926.P9728280962719042951

namespace A180926

/-- `(62*a(n-1)+1+((48*a(n-1)+1)*(80*a(n-1)+1))^(1/2))/2` -/
def P9728280962719042951.Spec : Prop :=
  ∀ n, P9728280962719042951.a n = (A180926 (n + 1) : ℝ)

end A180926

/-! ## A180926.P17375882393417310655

`62*a(n-1)-a(n-2)+1` with `a(0)=0, a(1)=1, a(2)=63`
-/

namespace A180926.P17375882393417310655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 63] fun n a =>
  62 * a (n - 1) - a (n - 2) + 1

end

end A180926.P17375882393417310655

namespace A180926

/-- `62*a(n-1)-a(n-2)+1` -/
def P17375882393417310655.Spec : Prop :=
  ∀ n, P17375882393417310655.a n = A180926 (n + 1)

end A180926

/-! ## A180926.P11257434556022193110

`∑[A042859(comp[2*(n+1)])]-1`
-/

namespace A180926.P11257434556022193110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042859 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A180926.P11257434556022193110

namespace A180926

/-- `∑[A042859(comp[2*(n+1)])]-1` -/
def P11257434556022193110.Spec : Prop :=
  ∀ n, P11257434556022193110.a n = A180926 (n + 1)

end A180926

/-! ## A180926.P11160230979386159360

`∑[A001090(A005843(n))/8]`
-/

namespace A180926.P11160230979386159360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001090 (A005843 n).toNat : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180926.P11160230979386159360

namespace A180926

/-- `∑[A001090(A005843(n))/8]` -/
def P11160230979386159360.Spec : Prop :=
  ∀ n, P11160230979386159360.a n = (A180926 (n + 1) : ℚ)

end A180926

/-! ## A180926.P603089734817774416

`floor(A070997(n)²/48)`
-/

namespace A180926.P603089734817774416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070997 n ^ 2 : ℚ) / 48⌋

end

end A180926.P603089734817774416

namespace A180926

/-- `floor(A070997(n)²/48)` -/
def P603089734817774416.Spec : Prop :=
  ∀ n, P603089734817774416.a n = A180926 (n + 1)

end A180926

/-! ## A180926.P703633853789759736

`∑[∑[A302329(n)]-A302329(n)]`
-/

namespace A180926.P703633853789759736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302329 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A302329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180926.P703633853789759736

namespace A180926

/-- `∑[∑[A302329(n)]-A302329(n)]` -/
def P703633853789759736.Spec : Prop :=
  ∀ n, P703633853789759736.a n = A180926 (n + 1)

end A180926

/-! ## A180926.P13848334207346706246

`∑[∑[A042859(2*n)]-A042859(2*n)]`
-/

namespace A180926.P13848334207346706246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042859 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A042859 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180926.P13848334207346706246

namespace A180926

/-- `∑[∑[A042859(2*n)]-A042859(2*n)]` -/
def P13848334207346706246.Spec : Prop :=
  ∀ n, P13848334207346706246.a n = A180926 (n + 1)

end A180926

/-!
# A180927: Largest n-digit number that is divisible by exactly 3 primes (counted with multiplicity).

The programs for A180927, there is no canonical definition to state claims against.
-/

/-! ## A180927.P12072281707264354390

`A000027(A004643(2*(n+1))-A094587(n+4))`
-/

namespace A180927.P12072281707264354390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A004643 (2 * (n + 1)) - A094587 (n + 4)).toNat

end

end A180927.P12072281707264354390

/-!
# A180929: Numbers whose sum of divisors is a pentagonal number.

The programs for A180929, there is no canonical definition to state claims against.
-/

/-! ## A180929.P9990083250400785174

`eq[1, A203568(A000203(n+1))]+1`
-/

namespace A180929.P9990083250400785174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203568 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180929.P9990083250400785174

/-!
# A180930: Numbers whose sum of divisors is a hexagonal number.

The programs for A180930, there is no canonical definition to state claims against.
-/

/-! ## A180930.P6604747126364115772

`eq[0, A188316(A000203(n+1))]+1`
-/

namespace A180930.P6604747126364115772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188316 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180930.P6604747126364115772

/-! ## A180930.P7416859203167765640

`eq[2, A210798(A000203(n+1)+1)]+1`
-/

namespace A180930.P7416859203167765640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210798 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180930.P7416859203167765640

/-! ## A180930.P11104319217450865676

`eq[A057427(n), A113445(A039653(n))]`
-/

namespace A180930.P11104319217450865676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113445 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180930.P11104319217450865676

/-! ## A180930.P13943156257136588884

`eq[A000038(n), A255935(A039653(n))]`
-/

namespace A180930.P13943156257136588884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255935 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180930.P13943156257136588884

/-! ## A180930.P10949445990737258935

`eq[A159856(A039653(n)), A294619(n)]`
-/

namespace A180930.P10949445990737258935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159856 (A039653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180930.P10949445990737258935

/-!
# A180931: Primes p such that their product for the successive prime plus one added to one is a prime: p(i)*[p(i+1)+1]+1 gives a prime.

The programs for A180931, there is no canonical definition to state claims against.
-/

/-! ## A180931.P17152629752036348052

`A078587(floor(sqrt(A180932(n+1))))`
-/

namespace A180931.P17152629752036348052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (Int.sqrt (A180932 (n + 1))).toNat

end

end A180931.P17152629752036348052

/-! ## A180931.P11149851246703959426

`A078587(round(sqrt(A180932(n+1))))`
-/

namespace A180931.P11149851246703959426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (SequenceMachineLib.roundAway (Real.sqrt (A180932 (n + 1) : ℝ))).toNat

end

end A180931.P11149851246703959426

/-!
# A180932: Primes of the form pq + p + 1 where p < q are adjacent primes.

The programs for A180932, there is no canonical definition to state claims against.
-/

/-! ## A180932.P1403480471729302188

`A341528(A180931(n+1))+1`
-/

namespace A180932.P1403480471729302188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341528 (A180931 (n + 1)).toNat + 1

end

end A180932.P1403480471729302188

/-! ## A180932.P4475946235088846310

`p?[A286624(n+1)]`
-/

namespace A180932.P4475946235088846310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180932.P4475946235088846310

/-! ## A180932.P15482904894978711824

`p?[A123134(n+1)+1]`
-/

namespace A180932.P15482904894978711824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180932.P15482904894978711824

/-! ## A180932.P16405323384125027123

`p?[A341528(A000040(n+1))+1]`
-/

namespace A180932.P16405323384125027123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341528 (A000040 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180932.P16405323384125027123

/-! ## A180932.P12731873471612981108

`p?[A023523(n+1)+A008578(n+1)]`
-/

namespace A180932.P12731873471612981108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1) + A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180932.P12731873471612981108

/-!
# A180934: Numbers m such that m^k has m divisors for some k >= 1.

The programs for A180934, there is no canonical definition to state claims against.
-/

/-! ## A180934.P11265223208657884969

`lt[A318504(n+1), A354579(2*n+3)]+1`
-/

namespace A180934.P11265223208657884969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A180934.P11265223208657884969

/-! ## A180934.P70927360774300083

`eq[∑{p}[A009545(n), #], A053214(n)]`
-/

namespace A180934.P70927360774300083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A180934.P70927360774300083

/-! ## A180934.P5841005262207090117

`eq[char[A323730(n)], A178334(3*n+2)]`
-/

namespace A180934.P5841005262207090117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323730 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A180934.P5841005262207090117

/-! ## A180934.P14522368704343270926

`A235868(n+1)+A025465(A035040(n))`
-/

namespace A180934.P14522368704343270926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235868 (n + 1) + A025465 (A035040 n).toNat

end

end A180934.P14522368704343270926

/-! ## A180934.P18440191207740852710

`A235868(n+1)+A102683(A001405(n))`
-/

namespace A180934.P18440191207740852710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235868 (n + 1) + A102683 (A001405 n).toNat

end

end A180934.P18440191207740852710

/-!
# A180935: A180934(n)^a(n) has A180934(n) divisors.

The programs for A180935, there is no canonical definition to state claims against.
-/

/-! ## A180935.P14772132707476400768

`A249151(lt[A359625(n+1), A040156(n)])`
-/

namespace A180935.P14772132707476400768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A180935.P14772132707476400768

/-! ## A180935.P15658689333537661969

`A006093(A329895(n+1)%A052334(n+1))`
-/

namespace A180935.P15658689333537661969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (Int.tmod (A329895 (n + 1)) (A052334 (n + 1))).toNat

end

end A180935.P15658689333537661969

/-! ## A180935.P11273635830817608046

`A000010(A235050(n+1)%A113336(n+3))`
-/

namespace A180935.P11273635830817608046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod (A235050 (n + 1)) (A113336 (n + 3))).toNat

end

end A180935.P11273635830817608046

/-! ## A180935.P12794454301016564959

`A002322(A235050(n+1))%A135791(n+5)`
-/

namespace A180935.P12794454301016564959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002322 (A235050 (n + 1)).toNat) (A135791 (n + 5))

end

end A180935.P12794454301016564959

/-! ## A180935.P3252743121158118393

`A074919(lt[A062584(n), A111347(2*n+1)])`
-/

namespace A180935.P3252743121158118393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111347 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074919 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A180935.P3252743121158118393

/-!
# A180936: a(n) is a power of its number of divisors.

The programs for A180936, there is no canonical definition to state claims against.
-/

/-! ## A180936.P10651259152307647599

`A317533(A000203(n+1))^A059884(n+1)`
-/

namespace A180936.P10651259152307647599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317533 (A000203 (n + 1)).toNat : ℚ) ^ (A059884 (n + 1) : ℤ)

end

end A180936.P10651259152307647599

/-!
# A180938: Smallest k such that k*n has an even number of 1's in its base-2 expansion.

The programs for A180938, there is no canonical definition to state claims against.
-/

/-! ## A180938.P8238139941489251309

`A360981(n+1)/(n+1)`
-/

namespace A180938.P8238139941489251309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360981 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A180938.P8238139941489251309

/-! ## A180938.P2060090875926424047

`A351836(n+1)^Δ[A115384(n)]`
-/

namespace A180938.P2060090875926424047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351836 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A180938.P2060090875926424047

/-! ## A180938.P18034410963789222295

`gcd(Δ[A159481(n)], A351836(n+1))`
-/

namespace A180938.P18034410963789222295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A351836 (n + 1))

end

end A180938.P18034410963789222295

/-! ## A180938.P6527174958532573560

`A351836(n+1)^A277808(2*n+3)`
-/

namespace A180938.P6527174958532573560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351836 (n + 1) : ℚ) ^ (A277808 (2 * n + 3) : ℤ)

end

end A180938.P6527174958532573560

/-! ## A180938.P5365549197792386509

`A351836(n+1)^A164555(A178757(n+1))`
-/

namespace A180938.P5365549197792386509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351836 (n + 1) : ℚ) ^ (A164555 (A178757 (n + 1)).toNat : ℤ)

end

end A180938.P5365549197792386509

/-! ## A180938.P15295984208036313541

`gcd(A334173(n+1), A351836(A000265(n+1)))`
-/

namespace A180938.P15295984208036313541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A334173 (n + 1)) (A351836 (A000265 (n + 1)).toNat)

end

end A180938.P15295984208036313541

/-! ## A180938.P10222816909978999694

`C(A351836(n+1), A001222(A178757(2*n+3)))`
-/

namespace A180938.P10222816909978999694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A351836 (n + 1)).toNat (A001222 (A178757 (2 * n + 3)).toNat).toNat

end

end A180938.P10222816909978999694

/-! ## A180938.P12656647053046959135

`floor(root(A351836(n+1), A351835(n+1)))`
-/

namespace A180938.P12656647053046959135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A351836 (n + 1) : ℝ) ^ (1 / (A351835 (n + 1) : ℝ))⌋

end

end A180938.P12656647053046959135

/-!
# A180944: Primes such that their product with the successive prime plus the next successive prime plus 1 is a prime.

The programs for A180944, there is no canonical definition to state claims against.
-/

/-! ## A180944.P1133631802433590128

`A051698(floor(sqrt(A180945(n+1))))`
-/

namespace A180944.P1133631802433590128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (Int.sqrt (A180945 (n + 1))).toNat

end

end A180944.P1133631802433590128

/-! ## A180944.P11480989575600124677

`A136548(floor(sqrt(A180945(n+1))))`
-/

namespace A180944.P11480989575600124677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (Int.sqrt (A180945 (n + 1))).toNat

end

end A180944.P11480989575600124677

/-! ## A180944.P17047351649458106749

`A136548(ceil(sqrt(A180945(n+1))))`
-/

namespace A180944.P17047351649458106749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 ⌈Real.sqrt (A180945 (n + 1) : ℝ)⌉.toNat

end

end A180944.P17047351649458106749

/-! ## A180944.P10528212984173122988

`A136548(round(sqrt(A180945(n+1))))`
-/

namespace A180944.P10528212984173122988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (SequenceMachineLib.roundAway (Real.sqrt (A180945 (n + 1) : ℝ))).toNat

end

end A180944.P10528212984173122988

/-! ## A180944.P3941997983918762691

`A051698(round(sqrt(A180945(n+1)))-1)`
-/

namespace A180944.P3941997983918762691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (SequenceMachineLib.roundAway (Real.sqrt (A180945 (n + 1) : ℝ)) - 1).toNat

end

end A180944.P3941997983918762691

/-!
# A180945: Primes of the form prime(i)*prime(i+1) + prime(i+2) + 1.

The programs for A180945, there is no canonical definition to state claims against.
-/

/-! ## A180945.P14717847243056207683

`p?[A292926(n+1)+1]`
-/

namespace A180945.P14717847243056207683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292926 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180945.P14717847243056207683

/-! ## A180945.P11350986617988085065

`p?[A023523(n+1)+A000040(n+2)]`
-/

namespace A180945.P11350986617988085065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180945.P11350986617988085065

/-! ## A180945.P2058495312635276461

`p?[A006094(n+1)+A000040(n+3)+1]`
-/

namespace A180945.P2058495312635276461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A000040 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180945.P2058495312635276461

/-! ## A180945.P4281214597922860785

`p?[A023515(n+1)+A000040(n+2)+2]`
-/

namespace A180945.P4281214597922860785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1) + (A000040 (n + 2) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180945.P4281214597922860785

/-! ## A180945.P3298579935239142622

`p?[A063041(A000040(n+1))+A000040(n+2)]`
-/

namespace A180945.P3298579935239142622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (A000040 (n + 1)).toNat + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180945.P3298579935239142622

/-!
# A180946: Primes p such that p(i)*p(i+1)+p(i+2)+p(i+3) is a prime.

The programs for A180946, there is no canonical definition to state claims against.
-/

/-! ## A180946.P12878862560837027247

`A136548(floor(sqrt(A180947(n+1))))`
-/

namespace A180946.P12878862560837027247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (Int.sqrt (A180947 (n + 1))).toNat

end

end A180946.P12878862560837027247

/-! ## A180946.P10546271968994185202

`p?[lt[A324209(n+1), A324180(n+1)]]`
-/

namespace A180946.P10546271968994185202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324209 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324180 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A180946.P10546271968994185202

/-! ## A180946.P623931238942032798

`p?[A092942(n)*A129407(n)]`
-/

namespace A180946.P623931238942032798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n * A129407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180946.P623931238942032798

/-! ## A180946.P6033571122284171076

`p?[A194978(record[A194962(n+4)])]`
-/

namespace A180946.P6033571122284171076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194962 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194978 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180946.P6033571122284171076

/-!
# A180947: Primes of the form p(i)*p(i+1)+p(i+2)+p(i+3) where p(i) is a prime.

The programs for A180947, there is no canonical definition to state claims against.
-/

/-! ## A180947.P2025069524973807084

`p?[A037165(n+1)+A034963(n+1)]`
-/

namespace A180947.P2025069524973807084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1) + A034963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180947.P2025069524973807084

/-! ## A180947.P3097586627837374484

`p?[A006094(n+1)+A001043(n+3)]`
-/

namespace A180947.P3097586627837374484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A001043 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180947.P3097586627837374484

/-! ## A180947.P13637634310110938111

`p?[A011974(n+4)+A006094(n+1)]`
-/

namespace A180947.P13637634310110938111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 4) + A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180947.P13637634310110938111

/-! ## A180947.P17408561171255439533

`p?[A164653(n+5)+A006094(n+1)]`
-/

namespace A180947.P17408561171255439533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 5) + A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180947.P17408561171255439533

/-! ## A180947.P5315334338397465176

`p?[A001043(n+3)+A000040(n+1)*A000040(n+2)]`
-/

namespace A180947.P5315334338397465176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 3) + A000040 (n + 1) * A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180947.P5315334338397465176

/-!
# A180948: Smallest of seven (7) consecutive primes whose sum is a prime.

The programs for A180948, the canonical program `A180948.P43109043055312899` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180948 has offset 1).

The definition of A180948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1794 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180948.P43109043055312899

`A065091(lt[∑{e}[A127334(n+1), #], 2])`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A180948

/-- `A065091(lt[∑{e}[A127334(n+1), #], 2])` -/
def P43109043055312899.Spec : Prop :=
  ∀ n, P43109043055312899.a n = A180948 (n + 1)

theorem P43109043055312899.correct : P43109043055312899.Spec := by
  intro n
  simp only [A180948, Nat.add_sub_cancel]

end A180948

/-! ## A180948.P13820776103994040396

`p?[A000040(n+1)*A001222(A127334(n+1))]`
-/

namespace A180948.P13820776103994040396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A127334 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180948.P13820776103994040396

namespace A180948

/-- `p?[A000040(n+1)*A001222(A127334(n+1))]` -/
def P13820776103994040396.Spec : Prop :=
  ∀ n, P13820776103994040396.a n = A180948 (n + 1)

end A180948

/-! ## A180948.P13327170681987196292

`p?[A001222(A127334(n+1))*A008578(n+2)]`
-/

namespace A180948.P13327170681987196292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A127334 (n + 1)).toNat * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180948.P13327170681987196292

namespace A180948

/-- `p?[A001222(A127334(n+1))*A008578(n+2)]` -/
def P13327170681987196292.Spec : Prop :=
  ∀ n, P13327170681987196292.a n = A180948 (n + 1)

end A180948

/-! ## A180948.P12394733704129324916

`p?[(A040976(n+1)+2)*A001222(A127334(n+1))]`
-/

namespace A180948.P12394733704129324916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A001222 (A127334 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180948.P12394733704129324916

namespace A180948

/-- `p?[(A040976(n+1)+2)*A001222(A127334(n+1))]` -/
def P12394733704129324916.Spec : Prop :=
  ∀ n, P12394733704129324916.a n = A180948 (n + 1)

end A180948

/-! ## A180948.P8325170122556729371

`p?[A001222(A127334(n+1))*A160656(n+1)]`
-/

namespace A180948.P8325170122556729371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A127334 (n + 1)).toNat * A160656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180948.P8325170122556729371

namespace A180948

/-- `p?[A001222(A127334(n+1))*A160656(n+1)]` -/
def P8325170122556729371.Spec : Prop :=
  ∀ n, P8325170122556729371.a n = A180948 (n + 1)

end A180948

/-!
# A180950: Smallest prime such that the sum of successive 11 primes is a prime.

The programs for A180950, the canonical program `A180950.P1869690007245267391` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180950 has offset 1).

The definition of A180950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180950.P1869690007245267391

`p?[A000040(n+1)*A001222(A127338(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A180950

/-- `p?[A000040(n+1)*A001222(A127338(n+1))]` -/
def P1869690007245267391.Spec : Prop :=
  ∀ n, P1869690007245267391.a n = A180950 (n + 1)

theorem P1869690007245267391.correct : P1869690007245267391.Spec := by
  intro n
  simp only [A180950, Nat.add_sub_cancel]

end A180950

/-! ## A180950.P12703247655229168642

`p?[A001222(A127338(n+1))*A008578(n+2)]`
-/

namespace A180950.P12703247655229168642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A127338 (n + 1)).toNat * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180950.P12703247655229168642

namespace A180950

/-- `p?[A001222(A127338(n+1))*A008578(n+2)]` -/
def P12703247655229168642.Spec : Prop :=
  ∀ n, P12703247655229168642.a n = A180950 (n + 1)

end A180950

/-! ## A180950.P13984496820663863226

`p?[A001222(A127338(n+1))*A160656(n+1)]`
-/

namespace A180950.P13984496820663863226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A127338 (n + 1)).toNat * A160656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180950.P13984496820663863226

namespace A180950

/-- `p?[A001222(A127338(n+1))*A160656(n+1)]` -/
def P13984496820663863226.Spec : Prop :=
  ∀ n, P13984496820663863226.a n = A180950 (n + 1)

end A180950

/-! ## A180950.P3874637246080692745

`A000040(eq[A058177(n), A316342(n)])`
-/

namespace A180950.P3874637246080692745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A180950.P3874637246080692745

namespace A180950

/-- `A000040(eq[A058177(n), A316342(n)])` -/
def P3874637246080692745.Spec : Prop :=
  ∀ n, P3874637246080692745.a n = A180950 (n + 1)

end A180950

/-! ## A180950.P9755072459177646149

`A341661(lt[A341664(n+1), A341646(2*n+1)])`
-/

namespace A180950.P9755072459177646149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341646 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341661 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A180950.P9755072459177646149

namespace A180950

/-- `A341661(lt[A341664(n+1), A341646(2*n+1)])` -/
def P9755072459177646149.Spec : Prop :=
  ∀ n, P9755072459177646149.a n = A180950 (n + 1)

end A180950

/-!
# A180951: Primes such that p(i)+p(i+1)+p(i+2) is a prime when all addends are taken modulo 10.

The programs for A180951, there is no canonical definition to state claims against.
-/

/-! ## A180951.P13130401671257426644

`record[A000040(A084905(A088243(n+1)))]`
-/

namespace A180951.P13130401671257426644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A084905 (A088243 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180951.P13130401671257426644

/-! ## A180951.P90613158181146617

`p?[(n+4)*A014963(A146081(n)-97)]`
-/

namespace A180951.P90613158181146617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A014963 (A146081 n - 97).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180951.P90613158181146617

/-! ## A180951.P10439049528496214009

`p?[(n+4)*A014963(A139613(n)-A008586(n))]`
-/

namespace A180951.P10439049528496214009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A014963 (A139613 n - A008586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180951.P10439049528496214009

/-! ## A180951.P18064815614980894734

`∩[A020626(n+1), A028803(n+1)]`
-/

namespace A180951.P18064815614980894734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180951.P18064815614980894734

/-! ## A180951.P7050112174438080349

`∩[A020626(n+1), A028788(n+1)]`
-/

namespace A180951.P7050112174438080349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180951.P7050112174438080349

/-!
# A180952: Primes such that p(i)+p(i+1)+p(i+2) is a prime when all addends are taken modulo 100.

The programs for A180952, there is no canonical definition to state claims against.
-/

/-! ## A180952.P9503331788779279969

`A052126(97*A073681(n+1))`
-/

namespace A180952.P9503331788779279969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (97 * A073681 (n + 1)).toNat

end

end A180952.P9503331788779279969

/-! ## A180952.P16811130840391944575

`A052126(lcm(97, A073681(n+1)))`
-/

namespace A180952.P16811130840391944575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (Int.lcm 97 (A073681 (n + 1)))

end

end A180952.P16811130840391944575

/-! ## A180952.P5822034891942764702

`record[A073681(n+1)-A184955(n)]`
-/

namespace A180952.P5822034891942764702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1) - A184955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180952.P5822034891942764702

/-! ## A180952.P4873300664740816198

`record[A006530(A110923(A072225(n+1)))]`
-/

namespace A180952.P4873300664740816198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A110923 (A072225 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180952.P4873300664740816198

/-! ## A180952.P16416352237148529709

`A073681(n+1)-A184955(A064429(n))`
-/

namespace A180952.P16416352237148529709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1) - A184955 (A064429 n).toNat

end

end A180952.P16416352237148529709

/-!
# A180953: The number of terms of the form 2^i*5^j (A003592) less than or equal to 10^n.

The programs for A180953, the canonical program `A180953.P18395862336695284303` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180953 has offset 0).

The definition of A180953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4793 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180953.P18395862336695284303

`∑[A123384(n)+comp[A066343(n+1)]]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A180953

/-- `∑[A123384(n)+comp[A066343(n+1)]]` -/
def P18395862336695284303.Spec : Prop :=
  ∀ n, P18395862336695284303.a n = A180953 n

theorem P18395862336695284303.correct : P18395862336695284303.Spec := by
  intro n
  simp only [A180953]

end A180953

/-! ## A180953.P16649342934282716189

`eq[A022332(n+1), A022333(n+1)]+1`
-/

namespace A180953.P16649342934282716189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A180953.P16649342934282716189

namespace A180953

/-- `eq[A022332(n+1), A022333(n+1)]+1` -/
def P16649342934282716189.Spec : Prop :=
  ∀ n, (P16649342934282716189.a n : ℤ) = A180953 n

end A180953

/-! ## A180953.P1450776574030524320

`∑[A314841(n)+A021913(A000512(n+1))]`
-/

namespace A180953.P1450776574030524320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + A021913 (A000512 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180953.P1450776574030524320

namespace A180953

/-- `∑[A314841(n)+A021913(A000512(n+1))]` -/
def P1450776574030524320.Spec : Prop :=
  ∀ n, P1450776574030524320.a n = A180953 n

end A180953

/-! ## A180953.P10020575100738464206

`A003056(A160747(n))+A000217(n)`
-/

namespace A180953.P10020575100738464206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A160747 n).toNat + A000217 n

end

end A180953.P10020575100738464206

namespace A180953

/-- `A003056(A160747(n))+A000217(n)` -/
def P10020575100738464206.Spec : Prop :=
  ∀ n, P10020575100738464206.a n = A180953 n

end A180953

/-!
# A180955: Triangle read by rows T(n,k) = numerators of A180955/A180956.

The programs for A180955, the canonical program `A180955.P4740219006034679306` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180955 has offset 0).

The definition of A180955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180955.P10068097572363543316

`A001790(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A180955.P10068097572363543316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A180955.P10068097572363543316

namespace A180955

/-- `A001790(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P10068097572363543316.Spec : Prop :=
  ∀ n, P10068097572363543316.a n = A180955 n

end A180955

/-! ## A180955.P3879221465818512836

`A001790(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A180955.P3879221465818512836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A180955.P3879221465818512836

namespace A180955

/-- `A001790(C(comp[∑[n]]-n, 2)-n-1)` -/
def P3879221465818512836.Spec : Prop :=
  ∀ n, P3879221465818512836.a n = A180955 n

end A180955

/-! ## A180955.P16197426511685305296

`A273167(C(C(comp[∑[n]]-n, 2)-n, 2))`
-/

namespace A180955.P16197426511685305296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273167 (Nat.choose ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat 2)

end

end A180955.P16197426511685305296

namespace A180955

/-- `A273167(C(C(comp[∑[n]]-n, 2)-n, 2))` -/
def P16197426511685305296.Spec : Prop :=
  ∀ n, P16197426511685305296.a n = A180955 n

end A180955

/-! ## A180955.P2469054730873919011

`A273169(C(C(comp[∑[n]]-n, 2)-n, 2))`
-/

namespace A180955.P2469054730873919011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273169 (Nat.choose ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat 2)

end

end A180955.P2469054730873919011

namespace A180955

/-- `A273169(C(C(comp[∑[n]]-n, 2)-n, 2))` -/
def P2469054730873919011.Spec : Prop :=
  ∀ n, P2469054730873919011.a n = A180955 n

end A180955

/-! ## A180955.P17864759505520864545

`A036069(2*(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A180955.P17864759505520864545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036069 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A180955.P17864759505520864545

namespace A180955

/-- `A036069(2*(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P17864759505520864545.Spec : Prop :=
  ∀ n, P17864759505520864545.a n = A180955 n

end A180955

/-! ## A180955.P2095952184565848455

`A163590(2*(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A180955.P2095952184565848455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A180955.P2095952184565848455

namespace A180955

/-- `A163590(2*(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P2095952184565848455.Spec : Prop :=
  ∀ n, P2095952184565848455.a n = A180955 n

end A180955

/-! ## A180955.P4740219006034679306

`A001790(A025581(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A180955

/-- `A001790(A025581(n))` -/
def P4740219006034679306.Spec : Prop :=
  ∀ n, P4740219006034679306.a n = A180955 n

theorem P4740219006034679306.correct : P4740219006034679306.Spec := by
  intro n
  simp only [A180955]

end A180955

/-! ## A180955.P12174791107534175678

`A001790(A004736(n+1)-1)`
-/

namespace A180955.P12174791107534175678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (A004736 (n + 1) - 1).toNat

end

end A180955.P12174791107534175678

namespace A180955

/-- `A001790(A004736(n+1)-1)` -/
def P12174791107534175678.Spec : Prop :=
  ∀ n, P12174791107534175678.a n = A180955 n

end A180955

/-! ## A180955.P13107820649890267214

`sqrt(A038534(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A180955.P13107820649890267214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038534 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) : ℝ)

end

end A180955.P13107820649890267214

namespace A180955

/-- `sqrt(A038534(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P13107820649890267214.Spec : Prop :=
  ∀ n, P13107820649890267214.a n = (A180955 n : ℝ)

end A180955

/-! ## A180955.P14432568185161397438

`A319861(2*A025581(n)²)`
-/

namespace A180955.P14432568185161397438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319861 (2 * A025581 n ^ 2).toNat

end

end A180955.P14432568185161397438

namespace A180955

/-- `A319861(2*A025581(n)²)` -/
def P14432568185161397438.Spec : Prop :=
  ∀ n, P14432568185161397438.a n = A180955 n

end A180955

/-! ## A180955.P3137715944780355499

`gcd(A106187(n), A173424(n))`
-/

namespace A180955.P3137715944780355499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106187 n) (A173424 n)

end

end A180955.P3137715944780355499

namespace A180955

/-- `gcd(A106187(n), A173424(n))` -/
def P3137715944780355499.Spec : Prop :=
  ∀ n, (P3137715944780355499.a n : ℤ) = A180955 n

end A180955

/-! ## A180955.P5448577919861243539

`gcd(A106268(n), A119239(n+1))`
-/

namespace A180955.P5448577919861243539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106268 n) (A119239 (n + 1))

end

end A180955.P5448577919861243539

namespace A180955

/-- `gcd(A106268(n), A119239(n+1))` -/
def P5448577919861243539.Spec : Prop :=
  ∀ n, (P5448577919861243539.a n : ℤ) = A180955 n

end A180955

/-! ## A180955.P17275259516601969013

`A299149(2^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A180955.P17275259516601969013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat

end

end A180955.P17275259516601969013

namespace A180955

/-- `A299149(2^(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P17275259516601969013.Spec : Prop :=
  ∀ n, P17275259516601969013.a n = A180955 n

end A180955

/-! ## A180955.P13672744412463026590

`A318313(A054582(n))`
-/

namespace A180955.P13672744412463026590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318313 (A054582 n).toNat

end

end A180955.P13672744412463026590

namespace A180955

/-- `A318313(A054582(n))` -/
def P13672744412463026590.Spec : Prop :=
  ∀ n, P13672744412463026590.a n = A180955 n

end A180955

/-! ## A180955.P2601425554527068033

`A318313(A257797(n+1))`
-/

namespace A180955.P2601425554527068033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318313 (A257797 (n + 1)).toNat

end

end A180955.P2601425554527068033

namespace A180955

/-- `A318313(A257797(n+1))` -/
def P2601425554527068033.Spec : Prop :=
  ∀ n, P2601425554527068033.a n = A180955 n

end A180955

/-! ## A180955.P13883871575648356013

`gcd(A112336(n), A323499(n+2))`
-/

namespace A180955.P13883871575648356013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112336 n) (A323499 (n + 2))

end

end A180955.P13883871575648356013

namespace A180955

/-- `gcd(A112336(n), A323499(n+2))` -/
def P13883871575648356013.Spec : Prop :=
  ∀ n, (P13883871575648356013.a n : ℤ) = A180955 n

end A180955

/-! ## A180955.P7245290569754123496

`A046643(2^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A180955.P7245290569754123496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat

end

end A180955.P7245290569754123496

namespace A180955

/-- `A046643(2^(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P7245290569754123496.Spec : Prop :=
  ∀ n, P7245290569754123496.a n = A180955 n

end A180955

/-! ## A180955.P8695297815741980676

`A046643(A130321(n))`
-/

namespace A180955.P8695297815741980676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A130321 n).toNat

end

end A180955.P8695297815741980676

namespace A180955

/-- `A046643(A130321(n))` -/
def P8695297815741980676.Spec : Prop :=
  ∀ n, P8695297815741980676.a n = A180955 n

end A180955

/-!
# A180956: Triangle read by rows T(n,k) = denominators of A180955/A180956.

The programs for A180956, the canonical program `A180956.P15729601768828744606` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180956 has offset 0).

The definition of A180956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180956.P9471291258908356063

`A046161(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A180956.P9471291258908356063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A180956.P9471291258908356063

namespace A180956

/-- `A046161(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P9471291258908356063.Spec : Prop :=
  ∀ n, P9471291258908356063.a n = A180956 n

end A180956

/-! ## A180956.P3975992289403109633

`A046161(C(comp[∑[n]]-n, 2)-1-n)`
-/

namespace A180956.P3975992289403109633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - 1 - (n : ℤ)).toNat

end

end A180956.P3975992289403109633

namespace A180956

/-- `A046161(C(comp[∑[n]]-n, 2)-1-n)` -/
def P3975992289403109633.Spec : Prop :=
  ∀ n, P3975992289403109633.a n = A180956 n

end A180956

/-! ## A180956.P3657743338276687396

`A144816(C(C(comp[∑[n]]-n, 2)-n, 2))`
-/

namespace A180956.P3657743338276687396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144816 (Nat.choose ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat 2)

end

end A180956.P3657743338276687396

namespace A180956

/-- `A144816(C(C(comp[∑[n]]-n, 2)-n, 2))` -/
def P3657743338276687396.Spec : Prop :=
  ∀ n, P3657743338276687396.a n = A180956 n

end A180956

/-! ## A180956.P18183288652748222103

`A004731(∑[2*n]%(comp[∑[n]]+1)+1)`
-/

namespace A180956.P18183288652748222103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1)

end

end A180956.P18183288652748222103

namespace A180956

/-- `A004731(∑[2*n]%(comp[∑[n]]+1)+1)` -/
def P18183288652748222103.Spec : Prop :=
  ∀ n, P18183288652748222103.a n = A180956 n

end A180956

/-! ## A180956.P6103014151842011815

`A060818(∑[char[∑[n]]]²-comp[comp[∑[n]]+n])`
-/

namespace A180956.P6103014151842011815
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A180956.P6103014151842011815

namespace A180956

/-- `A060818(∑[char[∑[n]]]²-comp[comp[∑[n]]+n])` -/
def P6103014151842011815.Spec : Prop :=
  ∀ n, P6103014151842011815.a n = A180956 n

end A180956

/-! ## A180956.P17102563092796981238

`A004730(2*(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A180956.P17102563092796981238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A180956.P17102563092796981238

namespace A180956

/-- `A004730(2*(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P17102563092796981238.Spec : Prop :=
  ∀ n, P17102563092796981238.a n = A180956 n

end A180956

/-! ## A180956.P15131681970805026468

`A004732(2*(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A180956.P15131681970805026468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004732 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A180956.P15131681970805026468

namespace A180956

/-- `A004732(2*(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P15131681970805026468.Spec : Prop :=
  ∀ n, P15131681970805026468.a n = A180956 n

end A180956

/-! ## A180956.P15729601768828744606

`A046161(A025581(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A180956

/-- `A046161(A025581(n))` -/
def P15729601768828744606.Spec : Prop :=
  ∀ n, P15729601768828744606.a n = A180956 n

theorem P15729601768828744606.correct : P15729601768828744606.Spec := by
  intro n
  simp only [A180956]

end A180956

/-! ## A180956.P14558427851611958502

`A004731(A099375(n))`
-/

namespace A180956.P14558427851611958502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (A099375 n).toNat

end

end A180956.P14558427851611958502

namespace A180956

/-- `A004731(A099375(n))` -/
def P14558427851611958502.Spec : Prop :=
  ∀ n, P14558427851611958502.a n = A180956 n

end A180956

/-! ## A180956.P16010829380984688083

`A046161(A004736(n+1)-1)`
-/

namespace A180956.P16010829380984688083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (A004736 (n + 1) - 1).toNat

end

end A180956.P16010829380984688083

namespace A180956

/-- `A046161(A004736(n+1)-1)` -/
def P16010829380984688083.Spec : Prop :=
  ∀ n, P16010829380984688083.a n = A180956 n

end A180956

/-! ## A180956.P6880770677232360266

`sqrt(A056982(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A180956.P6880770677232360266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056982 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) : ℝ)

end

end A180956.P6880770677232360266

namespace A180956

/-- `sqrt(A056982(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P6880770677232360266.Spec : Prop :=
  ∀ n, P6880770677232360266.a n = (A180956 n : ℝ)

end A180956

/-! ## A180956.P13516645027054864390

`A008317(A131782(n+1))`
-/

namespace A180956.P13516645027054864390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008317 (A131782 (n + 1)).toNat

end

end A180956.P13516645027054864390

namespace A180956

/-- `A008317(A131782(n+1))` -/
def P13516645027054864390.Spec : Prop :=
  ∀ n, P13516645027054864390.a n = A180956 n

end A180956

/-! ## A180956.P12226898329897559858

`A130479(2*(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A180956.P12226898329897559858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130479 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A180956.P12226898329897559858

namespace A180956

/-- `A130479(2*(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P12226898329897559858.Spec : Prop :=
  ∀ n, P12226898329897559858.a n = A180956 n

end A180956

/-! ## A180956.P5114351787827179907

`A130479(2*A025581(n))`
-/

namespace A180956.P5114351787827179907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130479 (2 * A025581 n).toNat

end

end A180956.P5114351787827179907

namespace A180956

/-- `A130479(2*A025581(n))` -/
def P5114351787827179907.Spec : Prop :=
  ∀ n, P5114351787827179907.a n = A180956 n

end A180956

/-! ## A180956.P11891967822897825838

`A326303(A095832(n+1))`
-/

namespace A180956.P11891967822897825838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326303 (A095832 (n + 1)).toNat

end

end A180956.P11891967822897825838

namespace A180956

/-- `A326303(A095832(n+1))` -/
def P11891967822897825838.Spec : Prop :=
  ∀ n, P11891967822897825838.a n = A180956 n

end A180956

/-! ## A180956.P5754357141068179711

`A326303(A004736(n+1)²-A004736(n+1))`
-/

namespace A180956.P5754357141068179711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326303 (A004736 (n + 1) ^ 2 - A004736 (n + 1)).toNat

end

end A180956.P5754357141068179711

namespace A180956

/-- `A326303(A004736(n+1)²-A004736(n+1))` -/
def P5754357141068179711.Spec : Prop :=
  ∀ n, P5754357141068179711.a n = A180956 n

end A180956

/-! ## A180956.P5578991595679627622

`A317832(A130321(n))`
-/

namespace A180956.P5578991595679627622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317832 (A130321 n).toNat

end

end A180956.P5578991595679627622

namespace A180956

/-- `A317832(A130321(n))` -/
def P5578991595679627622.Spec : Prop :=
  ∀ n, P5578991595679627622.a n = A180956 n

end A180956

/-! ## A180956.P3879347882653855514

`A318314(A008836(n+1)²*A130321(n))`
-/

namespace A180956.P3879347882653855514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318314 (A008836 (n + 1) ^ 2 * A130321 n).toNat

end

end A180956.P3879347882653855514

namespace A180956

/-- `A318314(A008836(n+1)²*A130321(n))` -/
def P3879347882653855514.Spec : Prop :=
  ∀ n, P3879347882653855514.a n = A180956 n

end A180956

/-! ## A180956.P5641320518422000285

`A318314(A130321(n)/A008836(n+1)²)`
-/

namespace A180956.P5641320518422000285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318314 (SequenceMachineLib.roundAway ((A130321 n : ℚ) / (A008836 (n + 1) ^ 2 : ℚ))).toNat

end

end A180956.P5641320518422000285

namespace A180956

/-- `A318314(A130321(n)/A008836(n+1)²)` -/
def P5641320518422000285.Spec : Prop :=
  ∀ n, P5641320518422000285.a n = A180956 n

end A180956

/-! ## A180956.P13379638695733314368

`A318454(A054582(n))`
-/

namespace A180956.P13379638695733314368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318454 (A054582 n).toNat

end

end A180956.P13379638695733314368

namespace A180956

/-- `A318454(A054582(n))` -/
def P13379638695733314368.Spec : Prop :=
  ∀ n, P13379638695733314368.a n = A180956 n

end A180956

/-!
# A180958: Diagonal sums of generalized Narayana triangle A180957.

The programs for A180958, the canonical program `A180958.P11115631614330140298` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180958 has offset 0).

The definition of A180958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180958.P11115631614330140298

`(-1)^n*A077913(2*n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180958

/-- `(-1)^n*A077913(2*n)` -/
def P11115631614330140298.Spec : Prop :=
  ∀ n, P11115631614330140298.a n = A180958 n

theorem P11115631614330140298.correct : P11115631614330140298.Spec := by
  intro n
  simp only [A180958]

end A180958

/-! ## A180958.P12504041447761052814

`A077913(2*n)/A033999(n)`
-/

namespace A180958.P12504041447761052814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077913 (2 * n) : ℚ) / (A033999 n : ℚ)

end

end A180958.P12504041447761052814

namespace A180958

/-- `A077913(2*n)/A033999(n)` -/
def P12504041447761052814.Spec : Prop :=
  ∀ n, P12504041447761052814.a n = (A180958 n : ℚ)

end A180958

/-! ## A180958.P3395678251337594824

`A077913(2*n)*A165326(n+1)`
-/

namespace A180958.P3395678251337594824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077913 (2 * n) * A165326 (n + 1)

end

end A180958.P3395678251337594824

namespace A180958

/-- `A077913(2*n)*A165326(n+1)` -/
def P3395678251337594824.Spec : Prop :=
  ∀ n, P3395678251337594824.a n = A180958 n

end A180958

/-! ## A180958.P4899580753084435918

`A077913(2*n)/(A004442(n)-n)`
-/

namespace A180958.P4899580753084435918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077913 (2 * n) : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A180958.P4899580753084435918

namespace A180958

/-- `A077913(2*n)/(A004442(n)-n)` -/
def P4899580753084435918.Spec : Prop :=
  ∀ n, P4899580753084435918.a n = (A180958 n : ℚ)

end A180958

/-! ## A180958.P9208948835457578627

`∑[A078019(2*n)]*A033999(n)`
-/

namespace A180958.P9208948835457578627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078019 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A180958.P9208948835457578627

namespace A180958

/-- `∑[A078019(2*n)]*A033999(n)` -/
def P9208948835457578627.Spec : Prop :=
  ∀ n, P9208948835457578627.a n = A180958 n

end A180958

/-! ## A180958.P10162278132330917286

`∑[A078019(2*n)]*A034947(2*n+1)`
-/

namespace A180958.P10162278132330917286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078019 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A034947 (2 * n + 1)

end

end A180958.P10162278132330917286

namespace A180958

/-- `∑[A078019(2*n)]*A034947(2*n+1)` -/
def P10162278132330917286.Spec : Prop :=
  ∀ n, P10162278132330917286.a n = A180958 n

end A180958

/-! ## A180958.P17641878932476187890

`∑[A050935(4*(n+1))]*A034947(2*n+1)`
-/

namespace A180958.P17641878932476187890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A034947 (2 * n + 1)

end

end A180958.P17641878932476187890

namespace A180958

/-- `∑[A050935(4*(n+1))]*A034947(2*n+1)` -/
def P17641878932476187890.Spec : Prop :=
  ∀ n, P17641878932476187890.a n = A180958 n

end A180958

/-! ## A180958.P17724299006383403471

`∑[A176971(4*(n+1))]*A163806(3*n+4)`
-/

namespace A180958.P17724299006383403471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A163806 (3 * n + 4)

end

end A180958.P17724299006383403471

namespace A180958

/-- `∑[A176971(4*(n+1))]*A163806(3*n+4)` -/
def P17724299006383403471.Spec : Prop :=
  ∀ n, P17724299006383403471.a n = A180958 n

end A180958

/-!
# A180959: Generalized Narayana triangle for secant.

The programs for A180959, there is no canonical definition to state claims against.
-/

/-! ## A180959.P15734351233457446702

`A000196(A088925(n)*A131235(n))`
-/

namespace A180959.P15734351233457446702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A088925 n * A131235 n).toNat

end

end A180959.P15734351233457446702

/-! ## A180959.P5846945600980768791

`A000196(A100862(n)*A131235(n))`
-/

namespace A180959.P5846945600980768791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A100862 n * A131235 n).toNat

end

end A180959.P5846945600980768791

/-! ## A180959.P14084455897382837763

`A000196(A107105(n)*A131235(n))`
-/

namespace A180959.P14084455897382837763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A107105 n * A131235 n).toNat

end

end A180959.P14084455897382837763

/-! ## A180959.P17050430250483892770

`A002260(A144464(n)*A181144(n))`
-/

namespace A180959.P17050430250483892770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A144464 n * A181144 n).toNat

end

end A180959.P17050430250483892770

/-! ## A180959.P14566692558030424029

`A137735(A088925(n)*A131235(n))`
-/

namespace A180959.P14566692558030424029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A088925 n * A131235 n).toNat

end

end A180959.P14566692558030424029

/-!
# A180960: A generalized Narayana triangle for sec(x)^2.

The programs for A180960, there is no canonical definition to state claims against.
-/

/-! ## A180960.P17662339979670803063

`A002487(A000203(A152654(n))²)`
-/

namespace A180960.P17662339979670803063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A000203 (A152654 n).toNat ^ 2).toNat

end

end A180960.P17662339979670803063

/-! ## A180960.P10633412445939575884

`A326460(A326474(n))+A008459(n)`
-/

namespace A180960.P10633412445939575884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326460 (A326474 n).toNat + A008459 n

end

end A180960.P10633412445939575884

/-! ## A180960.P9308311877666425904

`A086645(n)-A338796(A086645(n))`
-/

namespace A180960.P9308311877666425904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 n - A338796 (A086645 n).toNat

end

end A180960.P9308311877666425904

/-! ## A180960.P16259702765888266202

`A084563(A001263(n+1))-A007318(n)`
-/

namespace A180960.P16259702765888266202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084563 (A001263 (n + 1)).toNat - A007318 n

end

end A180960.P16259702765888266202

/-!
# A180962: Number of linear extensions for Young-Fibonacci lattices of increasing rank.

The programs for A180962, there is no canonical definition to state claims against.
-/

/-! ## A180962.P13182858622601571879

`A019489(a(n-1)/2+1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A180962.P13182858622601571879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A019489 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / 2 + 1)).toNat

end

end A180962.P13182858622601571879

/-!
# A180963: Numbers divisible by 3 with an odd number of 1s in their base 2 representation.

The programs for A180963, the canonical program `A180963.P13220022959502926567` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180963 has offset 1).

The definition of A180963 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036556, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A180963.P13220022959502926567

`3*A036556(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A180963

/-- `3*A036556(n+1)` -/
def P13220022959502926567.Spec : Prop :=
  ∀ n, P13220022959502926567.a n = A180963 (n + 1)

theorem P13220022959502926567.correct : P13220022959502926567.Spec := by
  intro n
  simp only [A180963, Nat.add_sub_cancel]

end A180963

/-! ## A180963.P1744578865397182828

`3*eq[1, A293162(n)]`
-/

namespace A180963.P1744578865397182828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180963.P1744578865397182828

namespace A180963

/-- `3*eq[1, A293162(n)]` -/
def P1744578865397182828.Spec : Prop :=
  ∀ n, (P1744578865397182828.a n : ℤ) = A180963 (n + 1)

end A180963

/-! ## A180963.P14214112635982327336

`3*eq[2, A026492(n)]`
-/

namespace A180963.P14214112635982327336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180963.P14214112635982327336

namespace A180963

/-- `3*eq[2, A026492(n)]` -/
def P14214112635982327336.Spec : Prop :=
  ∀ n, (P14214112635982327336.a n : ℤ) = A180963 (n + 1)

end A180963

/-! ## A180963.P2554614483133450211

`A008486(A036556(n+1))`
-/

namespace A180963.P2554614483133450211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A036556 (n + 1)).toNat

end

end A180963.P2554614483133450211

namespace A180963

/-- `A008486(A036556(n+1))` -/
def P2554614483133450211.Spec : Prop :=
  ∀ n, P2554614483133450211.a n = A180963 (n + 1)

end A180963

/-! ## A180963.P7809189297021754039

`3*eq[A010059(n), A295890(n)]`
-/

namespace A180963.P7809189297021754039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295890 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180963.P7809189297021754039

namespace A180963

/-- `3*eq[A010059(n), A295890(n)]` -/
def P7809189297021754039.Spec : Prop :=
  ∀ n, (P7809189297021754039.a n : ℤ) = A180963 (n + 1)

end A180963

/-! ## A180963.P7481778676862777855

`∩[A125495(n+1), A008486(n)]`
-/

namespace A180963.P7481778676862777855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180963.P7481778676862777855

namespace A180963

/-- `∩[A125495(n+1), A008486(n)]` -/
def P7481778676862777855.Spec : Prop :=
  ∀ n, (P7481778676862777855.a n : ℤ) = A180963 (n + 1)

end A180963

/-! ## A180963.P13671788295136948764

`∩[A125495(n+1), A008585(n)]`
-/

namespace A180963.P13671788295136948764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180963.P13671788295136948764

namespace A180963

/-- `∩[A125495(n+1), A008585(n)]` -/
def P13671788295136948764.Spec : Prop :=
  ∀ n, (P13671788295136948764.a n : ℤ) = A180963 (n + 1)

end A180963

/-! ## A180963.P3615562455509651558

`∩[A229937(n+1), A008585(n)]`
-/

namespace A180963.P3615562455509651558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180963.P3615562455509651558

namespace A180963

/-- `∩[A229937(n+1), A008585(n)]` -/
def P3615562455509651558.Spec : Prop :=
  ∀ n, (P3615562455509651558.a n : ℤ) = A180963 (n + 1)

end A180963

/-! ## A180963.P1289770431829211215

`A008585(A036556(n+1)+n)-A008585(n)`
-/

namespace A180963.P1289770431829211215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A036556 (n + 1) + (n : ℤ)).toNat - A008585 n

end

end A180963.P1289770431829211215

namespace A180963

/-- `A008585(A036556(n+1)+n)-A008585(n)` -/
def P1289770431829211215.Spec : Prop :=
  ∀ n, P1289770431829211215.a n = A180963 (n + 1)

end A180963

/-! ## A180963.P11643971887889539950

`∩[A008486(n), A075930(n)]`
-/

namespace A180963.P11643971887889539950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075930 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180963.P11643971887889539950

namespace A180963

/-- `∩[A008486(n), A075930(n)]` -/
def P11643971887889539950.Spec : Prop :=
  ∀ n, (P11643971887889539950.a n : ℤ) = A180963 (n + 1)

end A180963

/-! ## A180963.P17256575849721759920

`∩[A008585(n), A075930(n)]`
-/

namespace A180963.P17256575849721759920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075930 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180963.P17256575849721759920

namespace A180963

/-- `∩[A008585(n), A075930(n)]` -/
def P17256575849721759920.Spec : Prop :=
  ∀ n, (P17256575849721759920.a n : ℤ) = A180963 (n + 1)

end A180963

/-! ## A180963.P376558856002577385

`∩[A204502(n+1), A075930(n)]`
-/

namespace A180963.P376558856002577385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075930 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180963.P376558856002577385

namespace A180963

/-- `∩[A204502(n+1), A075930(n)]` -/
def P376558856002577385.Spec : Prop :=
  ∀ n, (P376558856002577385.a n : ℤ) = A180963 (n + 1)

end A180963

/-! ## A180963.P10698313418631778667

`∩[A231404(n+1), A075930(n)]`
-/

namespace A180963.P10698313418631778667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075930 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180963.P10698313418631778667

namespace A180963

/-- `∩[A231404(n+1), A075930(n)]` -/
def P10698313418631778667.Spec : Prop :=
  ∀ n, (P10698313418631778667.a n : ℤ) = A180963 (n + 1)

end A180963

/-! ## A180963.P10602698626987043642

`∩[A000069(n+1), A008585(n)]`
-/

namespace A180963.P10602698626987043642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180963.P10602698626987043642

namespace A180963

/-- `∩[A000069(n+1), A008585(n)]` -/
def P10602698626987043642.Spec : Prop :=
  ∀ n, (P10602698626987043642.a n : ℤ) = A180963 (n + 1)

end A180963

/-! ## A180963.P17385823230536796360

`filter[3*n, A010060(#)]`
-/

namespace A180963.P17385823230536796360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j) = 1) n)

end

end A180963.P17385823230536796360

namespace A180963

/-- `filter[3*n, A010060(#)]` -/
def P17385823230536796360.Spec : Prop :=
  ∀ n, (P17385823230536796360.a n : ℤ) = A180963 (n + 1)

end A180963

/-! ## A180963.P875310833837805083

`eq[A010060(n), A087088(n+1)]`
-/

namespace A180963.P875310833837805083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180963.P875310833837805083

namespace A180963

/-- `eq[A010060(n), A087088(n+1)]` -/
def P875310833837805083.Spec : Prop :=
  ∀ n, (P875310833837805083.a n : ℤ) = A180963 (n + 1)

end A180963

/-! ## A180963.P15348779279338158150

`eq[A010060(n), A010882(n)]`
-/

namespace A180963.P15348779279338158150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180963.P15348779279338158150

namespace A180963

/-- `eq[A010060(n), A010882(n)]` -/
def P15348779279338158150.Spec : Prop :=
  ∀ n, (P15348779279338158150.a n : ℤ) = A180963 (n + 1)

end A180963

/-! ## A180963.P10321358222193811988

`eq[A010060(n), A069705(n)]`
-/

namespace A180963.P10321358222193811988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180963.P10321358222193811988

namespace A180963

/-- `eq[A010060(n), A069705(n)]` -/
def P10321358222193811988.Spec : Prop :=
  ∀ n, (P10321358222193811988.a n : ℤ) = A180963 (n + 1)

end A180963

/-! ## A180963.P6867383147747736782

`eq[A010060(n), A070403(n)]`
-/

namespace A180963.P6867383147747736782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070403 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180963.P6867383147747736782

namespace A180963

/-- `eq[A010060(n), A070403(n)]` -/
def P6867383147747736782.Spec : Prop :=
  ∀ n, (P6867383147747736782.a n : ℤ) = A180963 (n + 1)

end A180963

/-! ## A180963.P1401878391304815703

`eq[A010060(n), A070421(n)]`
-/

namespace A180963.P1401878391304815703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070421 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180963.P1401878391304815703

namespace A180963

/-- `eq[A010060(n), A070421(n)]` -/
def P1401878391304815703.Spec : Prop :=
  ∀ n, (P1401878391304815703.a n : ℤ) = A180963 (n + 1)

end A180963

/-!
# A180964: a(0)=1; for n>0, a(n) = 1 + 3*A117571(n-1).

The programs for A180964, the canonical program `A180964.P17580972691152517115` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180964 has offset 0).

The definition of A180964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180964.P5225271086408376373

`3*n-2*cos(2*π*(n+1)/3)`
-/

namespace A180964.P5225271086408376373
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 * n : ℝ) - 2 * Real.cos (2 * (Real.pi * ((n + 1 : ℚ) / 3 : ℝ)))

end

end A180964.P5225271086408376373

namespace A180964

/-- `3*n-2*cos(2*π*(n+1)/3)` -/
def P5225271086408376373.Spec : Prop :=
  ∀ n, P5225271086408376373.a n = (A180964 n : ℝ)

end A180964

/-! ## A180964.P17580972691152517115

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=4, a(3)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A180964

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P17580972691152517115.Spec : Prop :=
  ∀ n, P17580972691152517115.a n = A180964 n

theorem P17580972691152517115.correct : P17580972691152517115.Spec := by
  intro n
  simp only [A180964]

end A180964

/-! ## A180964.P8815770201664655050

`3*n+A061347(n+1)`
-/

namespace A180964.P8815770201664655050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A061347 (n + 1)

end

end A180964.P8815770201664655050

namespace A180964

/-- `3*n+A061347(n+1)` -/
def P8815770201664655050.Spec : Prop :=
  ∀ n, P8815770201664655050.a n = A180964 n

end A180964

/-! ## A180964.P16849842754357006810

`9+a(n-3)` with `a(0)=1, a(1)=4, a(2)=4`
-/

namespace A180964.P16849842754357006810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4] fun n a =>
  9 + a (n - 3)

end

end A180964.P16849842754357006810

namespace A180964

/-- `9+a(n-3)` -/
def P16849842754357006810.Spec : Prop :=
  ∀ n, (P16849842754357006810.a n : ℤ) = A180964 n

end A180964

/-! ## A180964.P6823129805949838962

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=0, a(3)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A180964.P6823129805949838962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 0, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180964.P6823129805949838962

namespace A180964

/-- `∑[floor(a(n-3))]` -/
def P6823129805949838962.Spec : Prop :=
  ∀ n, (P6823129805949838962.a n : ℤ) = A180964 n

end A180964

/-! ## A180964.P11631859241732747050

`∑[a(n-3)%7]` with `a(0)=1, a(1)=3, a(2)=0, a(3)=6`
-/

namespace A180964.P11631859241732747050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 0, 6] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180964.P11631859241732747050

namespace A180964

/-- `∑[a(n-3)%7]` -/
def P11631859241732747050.Spec : Prop :=
  ∀ n, (P11631859241732747050.a n : ℤ) = A180964 n

end A180964

/-! ## A180964.P3156662543236330554

`3*((n+1)²%3+n)-2`
-/

namespace A180964.P3156662543236330554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * ((n + 1) ^ 2 % 3 + n) : ℕ) : ℤ) - 2

end

end A180964.P3156662543236330554

namespace A180964

/-- `3*((n+1)²%3+n)-2` -/
def P3156662543236330554.Spec : Prop :=
  ∀ n, P3156662543236330554.a n = A180964 n

end A180964

/-! ## A180964.P14901729411477762471

`3*(n-char[3*n-1])+1`
-/

namespace A180964.P14901729411477762471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) + 1

end

end A180964.P14901729411477762471

namespace A180964

/-- `3*(n-char[3*n-1])+1` -/
def P14901729411477762471.Spec : Prop :=
  ∀ n, P14901729411477762471.a n = A180964 n

end A180964

/-! ## A180964.P18366931569315662694

`∑[4-4/(a(n-1)-2)]` with `a(0)=1, a(1)=3`
-/

namespace A180964.P18366931569315662694
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 - 4 / (f1 (n - 1) - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180964.P18366931569315662694

namespace A180964

/-- `∑[4-4/(a(n-1)-2)]` -/
def P18366931569315662694.Spec : Prop :=
  ∀ n, P18366931569315662694.a n = (A180964 n : ℚ)

end A180964

/-! ## A180964.P11643100044399153470

`floor(a(n-1)-3*(n%3-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A180964.P11643100044399153470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 3 * (((n % 3 : ℕ) : ℤ) - 2)

end

end A180964.P11643100044399153470

namespace A180964

/-- `floor(a(n-1)-3*(n%3-2))` -/
def P11643100044399153470.Spec : Prop :=
  ∀ n, P11643100044399153470.a n = A180964 n

end A180964

/-! ## A180964.P4839537738949333667

`∑[(1-a(n-2))*(a(n-1)-3)]` with `a(0)=1, a(1)=3`
-/

namespace A180964.P4839537738949333667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (1 - f1 (n - 2)) * (f1 (n - 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180964.P4839537738949333667

namespace A180964

/-- `∑[(1-a(n-2))*(a(n-1)-3)]` -/
def P4839537738949333667.Spec : Prop :=
  ∀ n, P4839537738949333667.a n = A180964 n

end A180964

/-! ## A180964.P15103254108990718151

`∑[gcd(a(n-2)², a(n-1))-3]` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A180964.P15103254108990718151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n f1 =>
  (Int.gcd (f1 (n - 2) ^ 2) (f1 (n - 1)) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180964.P15103254108990718151

namespace A180964

/-- `∑[gcd(a(n-2)², a(n-1))-3]` -/
def P15103254108990718151.Spec : Prop :=
  ∀ n, P15103254108990718151.a n = A180964 n

end A180964

/-! ## A180964.P9841644663417434076

`A016777(n-Δ[A002264(n)])`
-/

namespace A180964.P9841644663417434076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A180964.P9841644663417434076

namespace A180964

/-- `A016777(n-Δ[A002264(n)])` -/
def P9841644663417434076.Spec : Prop :=
  ∀ n, P9841644663417434076.a n = A180964 n

end A180964

/-! ## A180964.P16259964959603959542

`A016777(n-Δ[A008620(n)])`
-/

namespace A180964.P16259964959603959542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A180964.P16259964959603959542

namespace A180964

/-- `A016777(n-Δ[A008620(n)])` -/
def P16259964959603959542.Spec : Prop :=
  ∀ n, P16259964959603959542.a n = A180964 n

end A180964

/-! ## A180964.P14877002235579822900

`A016777(2*n-A130481(n))`
-/

namespace A180964.P14877002235579822900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 ((2 * n : ℤ) - A130481 n).toNat

end

end A180964.P14877002235579822900

namespace A180964

/-- `A016777(2*n-A130481(n))` -/
def P14877002235579822900.Spec : Prop :=
  ∀ n, P14877002235579822900.a n = A180964 n

end A180964

/-! ## A180964.P1831093223251583571

`A016777(A047261(n+1)-(n+2))`
-/

namespace A180964.P1831093223251583571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A047261 (n + 1) - (n + 2 : ℤ)).toNat

end

end A180964.P1831093223251583571

namespace A180964

/-- `A016777(A047261(n+1)-(n+2))` -/
def P1831093223251583571.Spec : Prop :=
  ∀ n, P1831093223251583571.a n = A180964 n

end A180964

/-! ## A180964.P1005566755073494734

`A087444(A322042(n+2))`
-/

namespace A180964.P1005566755073494734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087444 (A322042 (n + 2)).toNat

end

end A180964.P1005566755073494734

namespace A180964

/-- `A087444(A322042(n+2))` -/
def P1005566755073494734.Spec : Prop :=
  ∀ n, P1005566755073494734.a n = A180964 n

end A180964

/-! ## A180964.P3257033311594526353

`A028837(A335129(n+4))`
-/

namespace A180964.P3257033311594526353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (A335129 (n + 4)).toNat

end

end A180964.P3257033311594526353

namespace A180964

/-- `A028837(A335129(n+4))` -/
def P3257033311594526353.Spec : Prop :=
  ∀ n, P3257033311594526353.a n = A180964 n

end A180964

/-!
# A180965: Number of tatami tilings of a 2 X n grid (with monomers allowed).

The programs for A180965, the canonical program `A180965.P16803082517109548837` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180965 has offset 0).

The definition of A180965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180965.P16803082517109548837

`2*a(n-1)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=13`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A180965

/-- `2*a(n-1)+2*a(n-3)-a(n-4)` -/
def P16803082517109548837.Spec : Prop :=
  ∀ n, P16803082517109548837.a n = A180965 n

theorem P16803082517109548837.correct : P16803082517109548837.Spec := by
  intro n
  simp only [A180965]

end A180965

/-! ## A180965.P3268461979225010507

`Δ[Δ[Δ[A319172(n)/2]]]`
-/

namespace A180965.P3268461979225010507
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319172 n : ℚ) / 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180965.P3268461979225010507

namespace A180965

/-- `Δ[Δ[Δ[A319172(n)/2]]]` -/
def P3268461979225010507.Spec : Prop :=
  ∀ n, P3268461979225010507.a n = (A180965 n : ℚ)

end A180965

/-!
# A180966: Hankel transform of A123164.

The programs for A180966, the canonical program `A180966.P3116222987791957600` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180966 has offset 0).

The definition of A180966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180966.P3116222987791957600

`2^(n*(n-1)/2)*A007070(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180966

/-- `2^(n*(n-1)/2)*A007070(n)` -/
def P3116222987791957600.Spec : Prop :=
  ∀ n, P3116222987791957600.a n = (A180966 n : ℝ)

end A180966

/-! ## A180966.P10822240215471530257

`∑[A007052(n)]*∏[ceil(2^(n-1))]`
-/

namespace A180966.P10822240215471530257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A180966.P10822240215471530257

namespace A180966

/-- `∑[A007052(n)]*∏[ceil(2^(n-1))]` -/
def P10822240215471530257.Spec : Prop :=
  ∀ n, P10822240215471530257.a n = A180966 n

end A180966

/-! ## A180966.P3993680232330957957

`Δ[A006012(n)]*∏[ceil(2^(n-1))]`
-/

namespace A180966.P3993680232330957957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A180966.P3993680232330957957

namespace A180966

/-- `Δ[A006012(n)]*∏[ceil(2^(n-1))]` -/
def P3993680232330957957.Spec : Prop :=
  ∀ n, P3993680232330957957.a n = A180966 n

end A180966

/-! ## A180966.P17853493257488730750

`∏[ceil(2^(n-1))]*A204089(n+1)`
-/

namespace A180966.P17853493257488730750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A204089 (n + 1)

end

end A180966.P17853493257488730750

namespace A180966

/-- `∏[ceil(2^(n-1))]*A204089(n+1)` -/
def P17853493257488730750.Spec : Prop :=
  ∀ n, P17853493257488730750.a n = A180966 n

end A180966

/-! ## A180966.P3255499866016285734

`∏[ceil(2^(n-1))]*A068912(2*n)`
-/

namespace A180966.P3255499866016285734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A068912 (2 * n)

end

end A180966.P3255499866016285734

namespace A180966

/-- `∏[ceil(2^(n-1))]*A068912(2*n)` -/
def P3255499866016285734.Spec : Prop :=
  ∀ n, P3255499866016285734.a n = A180966 n

end A180966

/-!
# A180967: Number of n-game win/loss series that contain at least one dead game.

The programs for A180967, the canonical program `A180967.P14884180377159508952` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180967 has offset 1).

The definition of A180967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180967.P9301279997696224159

`4*A294175(n)`
-/

namespace A180967.P9301279997696224159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A294175 n

end

end A180967.P9301279997696224159

namespace A180967

/-- `4*A294175(n)` -/
def P9301279997696224159.Spec : Prop :=
  ∀ n, P9301279997696224159.a n = A180967 (n + 1)

end A180967

/-! ## A180967.P14884180377159508952

`4*(A117186(n)-2^n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A180967

/-- `4*(A117186(n)-2^n)` -/
def P14884180377159508952.Spec : Prop :=
  ∀ n, P14884180377159508952.a n = A180967 (n + 1)

theorem P14884180377159508952.correct : P14884180377159508952.Spec := by
  intro n
  simp only [A180967, Nat.add_sub_cancel]

end A180967

/-! ## A180967.P9750994238615531568

`4*(2^(n+1)-A248574(n+1))`
-/

namespace A180967.P9750994238615531568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((2 ^ (n + 1) : ℤ) - A248574 (n + 1))

end

end A180967.P9750994238615531568

namespace A180967

/-- `4*(2^(n+1)-A248574(n+1))` -/
def P9750994238615531568.Spec : Prop :=
  ∀ n, P9750994238615531568.a n = A180967 (n + 1)

end A180967

/-! ## A180967.P3987172643919013848

`4*(A027306(n)-A001405(n))`
-/

namespace A180967.P3987172643919013848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A027306 n - A001405 n)

end

end A180967.P3987172643919013848

namespace A180967

/-- `4*(A027306(n)-A001405(n))` -/
def P3987172643919013848.Spec : Prop :=
  ∀ n, P3987172643919013848.a n = A180967 (n + 1)

end A180967

/-! ## A180967.P10766708018327308012

`4*(A045621(n)-A058622(n))`
-/

namespace A180967.P10766708018327308012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A045621 n - A058622 n)

end

end A180967.P10766708018327308012

namespace A180967

/-- `4*(A045621(n)-A058622(n))` -/
def P10766708018327308012.Spec : Prop :=
  ∀ n, P10766708018327308012.a n = A180967 (n + 1)

end A180967

/-! ## A180967.P7158667881218567356

`A202736(n+1)-A063886(n+1)`
-/

namespace A180967.P7158667881218567356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202736 (n + 1) - A063886 (n + 1)

end

end A180967.P7158667881218567356

namespace A180967

/-- `A202736(n+1)-A063886(n+1)` -/
def P7158667881218567356.Spec : Prop :=
  ∀ n, P7158667881218567356.a n = A180967 (n + 1)

end A180967

/-! ## A180967.P7657155227379790358

`A307768(n+1)-A126869(n+1)`
-/

namespace A180967.P7657155227379790358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307768 (n + 1) - A126869 (n + 1)

end

end A180967.P7657155227379790358

namespace A180967

/-- `A307768(n+1)-A126869(n+1)` -/
def P7657155227379790358.Spec : Prop :=
  ∀ n, P7657155227379790358.a n = A180967 (n + 1)

end A180967

/-! ## A180967.P1137790664348820040

`A000079(n+1)-2*A128014(n+1)`
-/

namespace A180967.P1137790664348820040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - 2 * A128014 (n + 1)

end

end A180967.P1137790664348820040

namespace A180967

/-- `A000079(n+1)-2*A128014(n+1)` -/
def P1137790664348820040.Spec : Prop :=
  ∀ n, P1137790664348820040.a n = A180967 (n + 1)

end A180967

/-! ## A180967.P12894518506232680259

`2*(A011782(n+1)-A128014(n+1))`
-/

namespace A180967.P12894518506232680259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 (n + 1) - A128014 (n + 1))

end

end A180967.P12894518506232680259

namespace A180967

/-- `2*(A011782(n+1)-A128014(n+1))` -/
def P12894518506232680259.Spec : Prop :=
  ∀ n, P12894518506232680259.a n = A180967 (n + 1)

end A180967

/-! ## A180967.P10040033774004917915

`2*(A058622(n+1)-A210736(n+1))`
-/

namespace A180967.P10040033774004917915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A058622 (n + 1) - A210736 (n + 1))

end

end A180967.P10040033774004917915

namespace A180967

/-- `2*(A058622(n+1)-A210736(n+1))` -/
def P10040033774004917915.Spec : Prop :=
  ∀ n, P10040033774004917915.a n = A180967 (n + 1)

end A180967

/-! ## A180967.P4636888418898451130

`2*(A045674(2*n+1)-A128014(n+1))`
-/

namespace A180967.P4636888418898451130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045674 (2 * n + 1) - A128014 (n + 1))

end

end A180967.P4636888418898451130

namespace A180967

/-- `2*(A045674(2*n+1)-A128014(n+1))` -/
def P4636888418898451130.Spec : Prop :=
  ∀ n, P4636888418898451130.a n = A180967 (n + 1)

end A180967

/-! ## A180967.P18083671477209068457

`A000079(n+1)-A081668(n+1)*A081668(n)`
-/

namespace A180967.P18083671477209068457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A081668 (n + 1) * A081668 n

end

end A180967.P18083671477209068457

namespace A180967

/-- `A000079(n+1)-A081668(n+1)*A081668(n)` -/
def P18083671477209068457.Spec : Prop :=
  ∀ n, P18083671477209068457.a n = A180967 (n + 1)

end A180967

/-! ## A180967.P8048272631574282986

`4*(A014314(n)-A100071(n))`
-/

namespace A180967.P8048272631574282986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A014314 n - A100071 n)

end

end A180967.P8048272631574282986

namespace A180967

/-- `4*(A014314(n)-A100071(n))` -/
def P8048272631574282986.Spec : Prop :=
  ∀ n, P8048272631574282986.a n = A180967 (n + 1)

end A180967

/-! ## A180967.P16781790981412402999

`2*(A153335(n+2)-A102699(n+1))`
-/

namespace A180967.P16781790981412402999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153335 (n + 2) - A102699 (n + 1))

end

end A180967.P16781790981412402999

namespace A180967

/-- `2*(A153335(n+2)-A102699(n+1))` -/
def P16781790981412402999.Spec : Prop :=
  ∀ n, P16781790981412402999.a n = A180967 (n + 1)

end A180967

/-! ## A180967.P17276864788151520290

`A000079(n+1)-A249308(n+1)/A000079(n)`
-/

namespace A180967.P17276864788151520290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) : ℚ) - (A249308 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A180967.P17276864788151520290

namespace A180967

/-- `A000079(n+1)-A249308(n+1)/A000079(n)` -/
def P17276864788151520290.Spec : Prop :=
  ∀ n, P17276864788151520290.a n = (A180967 (n + 1) : ℚ)

end A180967

/-!
# A180969: Array read by antidiagonals: a(k,n) = natural numbers each repeated 2^k times.

The programs for A180969, the canonical program `A180969.P1907241806408354921` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180969 has offset 0).

The definition of A180969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180969.P1907241806408354921

`floor(A003986(n)/A059268(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A180969

/-- `floor(A003986(n)/A059268(n))` -/
def P1907241806408354921.Spec : Prop :=
  ∀ n, P1907241806408354921.a n = A180969 n

theorem P1907241806408354921.correct : P1907241806408354921.Spec := by
  intro n
  simp only [A180969]

end A180969

/-! ## A180969.P6725659724061371829

`floor(A003987(n)/A059268(n))`
-/

namespace A180969.P6725659724061371829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003987 n : ℚ) / (A059268 n : ℚ)⌋

end

end A180969.P6725659724061371829

namespace A180969

/-- `floor(A003987(n)/A059268(n))` -/
def P6725659724061371829.Spec : Prop :=
  ∀ n, P6725659724061371829.a n = A180969 n

end A180969

/-! ## A180969.P14086476352213748115

`floor(A025581(n)/A059268(n))`
-/

namespace A180969.P14086476352213748115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025581 n : ℚ) / (A059268 n : ℚ)⌋

end

end A180969.P14086476352213748115

namespace A180969

/-- `floor(A025581(n)/A059268(n))` -/
def P14086476352213748115.Spec : Prop :=
  ∀ n, P14086476352213748115.a n = A180969 n

end A180969

/-! ## A180969.P3474608935363848844

`floor(A099026(n)/A059268(n))`
-/

namespace A180969.P3474608935363848844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099026 n : ℚ) / (A059268 n : ℚ)⌋

end

end A180969.P3474608935363848844

namespace A180969

/-- `floor(A099026(n)/A059268(n))` -/
def P3474608935363848844.Spec : Prop :=
  ∀ n, P3474608935363848844.a n = A180969 n

end A180969

/-! ## A180969.P8649167265880542954

`floor(A025581(n)/A145111(n))`
-/

namespace A180969.P8649167265880542954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025581 n : ℚ) / (A145111 n : ℚ)⌋

end

end A180969.P8649167265880542954

namespace A180969

/-- `floor(A025581(n)/A145111(n))` -/
def P8649167265880542954.Spec : Prop :=
  ∀ n, P8649167265880542954.a n = A180969 n

end A180969

/-! ## A180969.P3221606668264875945

`floor(log2(A130321(n))/A059268(n))`
-/

namespace A180969.P3221606668264875945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A130321 n : ℝ) / (A059268 n : ℝ)⌋

end

end A180969.P3221606668264875945

namespace A180969

/-- `floor(log2(A130321(n))/A059268(n))` -/
def P3221606668264875945.Spec : Prop :=
  ∀ n, P3221606668264875945.a n = A180969 n

end A180969

/-! ## A180969.P10273683876369724942

`floor(A025581(n)/A000079(A002262(n)))`
-/

namespace A180969.P10273683876369724942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025581 n : ℚ) / (A000079 (A002262 n).toNat : ℚ)⌋

end

end A180969.P10273683876369724942

namespace A180969

/-- `floor(A025581(n)/A000079(A002262(n)))` -/
def P10273683876369724942.Spec : Prop :=
  ∀ n, P10273683876369724942.a n = A180969 n

end A180969

/-! ## A180969.P9041849489132286659

`floor(A002262(A061579(n))/A145111(n))`
-/

namespace A180969.P9041849489132286659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002262 (A061579 n).toNat : ℚ) / (A145111 n : ℚ)⌋

end

end A180969.P9041849489132286659

namespace A180969

/-- `floor(A002262(A061579(n))/A145111(n))` -/
def P9041849489132286659.Spec : Prop :=
  ∀ n, P9041849489132286659.a n = A180969 n

end A180969

/-! ## A180969.P14373492176134970167

`floor((A087735(n+1)-1)/A059268(n))`
-/

namespace A180969.P14373492176134970167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087735 (n + 1) - 1 : ℚ) / (A059268 n : ℚ)⌋

end

end A180969.P14373492176134970167

namespace A180969

/-- `floor((A087735(n+1)-1)/A059268(n))` -/
def P14373492176134970167.Spec : Prop :=
  ∀ n, P14373492176134970167.a n = A180969 n

end A180969

/-! ## A180969.P16391816661159740643

`floor(A025581(n)/A143808(n))`
-/

namespace A180969.P16391816661159740643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025581 n : ℚ) / (A143808 n : ℚ)⌋

end

end A180969.P16391816661159740643

namespace A180969

/-- `floor(A025581(n)/A143808(n))` -/
def P16391816661159740643.Spec : Prop :=
  ∀ n, P16391816661159740643.a n = A180969 n

end A180969

/-!
# A180972: Numbers n such that 8^9 + n^2 is a square.

The programs for A180972, there is no canonical definition to state claims against.
-/

/-! ## A180972.P10351317152021510186

`A130328(eq[24, A051162(n)])`
-/

namespace A180972.P10351317152021510186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180972.P10351317152021510186

/-! ## A180972.P9957979147961036337

`A173787(eq[25, A051162(n)])`
-/

namespace A180972.P9957979147961036337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180972.P9957979147961036337

/-! ## A180972.P17478291000643079528

`A173787(eq[25, A134478(n)])`
-/

namespace A180972.P17478291000643079528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180972.P17478291000643079528

/-! ## A180972.P4214190760171857640

`A173787(eq[14, A209278(n+1)])`
-/

namespace A180972.P4214190760171857640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180972.P4214190760171857640

/-! ## A180972.P15826790238082085456

`A130328(eq[25, A094727(n+1)])`
-/

namespace A180972.P15826790238082085456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180972.P15826790238082085456

/-!
# A180975: Array of the "egg-drop" numbers, read by downwards antidiagonals.

The programs for A180975, there is no canonical definition to state claims against.
-/

/-! ## A180975.P1934158001746422259

`A131251(A061579(n))`
-/

namespace A180975.P1934158001746422259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131251 (A061579 n).toNat

end

end A180975.P1934158001746422259

/-! ## A180975.P16183336945907104227

`A131248(n)+A026729(comp[∑[n-1]])`
-/

namespace A180975.P16183336945907104227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131248 n + A026729 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A180975.P16183336945907104227

/-! ## A180975.P1851314062783904323

`A004070(A007401(n+1))+A004070(n)-1`
-/

namespace A180975.P1851314062783904323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A007401 (n + 1)).toNat + (A004070 n - 1)

end

end A180975.P1851314062783904323

/-! ## A180975.P5707825720270995059

`A004070(eq[0, A103451(n)])-1`
-/

namespace A180975.P5707825720270995059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A180975.P5707825720270995059

/-! ## A180975.P8117115662201932739

`A004070(eq[0, A158821(n)])-1`
-/

namespace A180975.P8117115662201932739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A180975.P8117115662201932739

/-! ## A180975.P15102060132661957996

`A004070(lt[1, A004070(n)])-1`
-/

namespace A180975.P15102060132661957996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A180975.P15102060132661957996

/-! ## A180975.P16659345794733235894

`A004070(eq[2, 2%A007318(n)²])-1`
-/

namespace A180975.P16659345794733235894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A007318 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A180975.P16659345794733235894

/-! ## A180975.P1146738402483028441

`A054124(lt[1, A054124(n)])-1`
-/

namespace A180975.P1146738402483028441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A180975.P1146738402483028441

/-! ## A180975.P2302447322245565306

`A000720(p?[A008578(A054124(n))])`
-/

namespace A180975.P2302447322245565306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A054124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180975.P2302447322245565306

/-! ## A180975.P16356736816085515079

`A061395(p?[A008578(A054124(n))])`
-/

namespace A180975.P16356736816085515079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A054124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180975.P16356736816085515079

/-! ## A180975.P1872282025225395478

`A065770(p?[A008578(A054124(n))])`
-/

namespace A180975.P1872282025225395478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A054124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180975.P1872282025225395478

/-! ## A180975.P16684715599831263457

`A003963(p?[A008578(A054124(n))])`
-/

namespace A180975.P16684715599831263457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A054124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180975.P16684715599831263457

/-! ## A180975.P13853177954267891232

`A055396(p?[A008578(A054124(n))])`
-/

namespace A180975.P13853177954267891232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A054124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180975.P13853177954267891232

/-! ## A180975.P1417844540277239588

`A230980(p?[A008578(A054124(n))])`
-/

namespace A180975.P1417844540277239588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A054124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180975.P1417844540277239588

/-! ## A180975.P10838094551499703699

`A241917(p?[A008578(A054124(n))])`
-/

namespace A180975.P10838094551499703699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A054124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180975.P10838094551499703699

/-! ## A180975.P17260324531047060779

`A258851(p?[A008578(A054124(n))])`
-/

namespace A180975.P17260324531047060779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A054124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180975.P17260324531047060779

/-!
# A180976: Number of n X n binary matrices with floor(n^2/2) 1's and rows and columns in lexicographically strictly increasing order.

The programs for A180976, there is no canonical definition to state claims against.
-/

/-! ## A180976.P1228931777926301569

`A180977(∑[4*n]+1)`
-/

namespace A180976.P1228931777926301569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180977 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180976.P1228931777926301569

/-! ## A180976.P9797040346614234004

`A055801(n)*A180977(A001844(n))`
-/

namespace A180976.P9797040346614234004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 n * A180977 (A001844 n).toNat

end

end A180976.P9797040346614234004

/-! ## A180976.P8834640826890329738

`A136522(n)*A180977(A001844(n))`
-/

namespace A180976.P8834640826890329738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n * A180977 (A001844 n).toNat

end

end A180976.P8834640826890329738

/-! ## A180976.P3176996691004760297

`or(A073253(n), A180977(A001844(n)))`
-/

namespace A180976.P3176996691004760297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073253 n) (A180977 (A001844 n).toNat)

end

end A180976.P3176996691004760297

/-! ## A180976.P4348700499264890017

`A180989(n+1)+A180977(A001844(n))`
-/

namespace A180976.P4348700499264890017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (n + 1) + A180977 (A001844 n).toNat

end

end A180976.P4348700499264890017

/-!
# A180977: T(n,k)=number of nXk binary matrices with floor((n*k)/2) 1's and rows and columns in lexicographically strictly increasing order.

The programs for A180977, there is no canonical definition to state claims against.
-/

/-! ## A180977.P3169871545734725247

`A053602(A091467(n+1))^A091453(A091441(n+1))`
-/

namespace A180977.P3169871545734725247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053602 (A091467 (n + 1)).toNat : ℚ) ^ (A091453 (A091441 (n + 1)).toNat : ℤ)

end

end A180977.P3169871545734725247

/-! ## A180977.P873555133596826773

`A054911(A180984(n+1))`
-/

namespace A180977.P873555133596826773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054911 (A180984 (n + 1)).toNat

end

end A180977.P873555133596826773

/-! ## A180977.P8439574247488879439

`A365970(n)%A284278(A099571(n))`
-/

namespace A180977.P8439574247488879439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365970 n) (A284278 (A099571 n).toNat)

end

end A180977.P8439574247488879439

/-! ## A180977.P4090211682728874289

`A122203(C(A007318(n), A068063(n)))`
-/

namespace A180977.P4090211682728874289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 (Nat.choose (A007318 n).toNat (A068063 n).toNat)

end

end A180977.P4090211682728874289

/-! ## A180977.P14984074837912617897

`A089840(C(A007318(n), A325678(n)))`
-/

namespace A180977.P14984074837912617897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 (Nat.choose (A007318 n).toNat (A325678 n).toNat)

end

end A180977.P14984074837912617897

/-!
# A180978: Number of n X n binary matrices with floor(n^2/2) 1's and rows and columns in lexicographically nondecreasing order.

The programs for A180978, there is no canonical definition to state claims against.
-/

/-! ## A180978.P2355331837810617529

`A180979(∑[4*n]+1)`
-/

namespace A180978.P2355331837810617529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180979 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180978.P2355331837810617529

/-! ## A180978.P16592368929121950460

`or(char[1], A180979(A001844(n)))`
-/

namespace A180978.P16592368929121950460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A180979 (A001844 n).toNat)

end

end A180978.P16592368929121950460

/-! ## A180978.P7788851650406789132

`record[gcd(A049581(n), A180979(n+1))]`
-/

namespace A180978.P7788851650406789132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A180979 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180978.P7788851650406789132

/-! ## A180978.P1064564251627271723

`A180979(A001844(n))+A059995(n)`
-/

namespace A180978.P1064564251627271723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180979 (A001844 n).toNat + A059995 n

end

end A180978.P1064564251627271723

/-! ## A180978.P5943868826773337339

`A180979(A001844(n))*A219924(n)`
-/

namespace A180978.P5943868826773337339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180979 (A001844 n).toNat * A219924 n

end

end A180978.P5943868826773337339

/-!
# A180979: T(n,k)=number of nXk binary matrices with floor((n*k)/2) 1's and rows and columns in lexicographically nondecreasing order.

The programs for A180979, there is no canonical definition to state claims against.
-/

/-! ## A180979.P11632412870830317779

`val((8*A007318(n))!, 5)`
-/

namespace A180979.P11632412870830317779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (8 * A007318 n).toNat) 5

end

end A180979.P11632412870830317779

/-! ## A180979.P1782627788118886429

`A072768(A173918(n))`
-/

namespace A180979.P1782627788118886429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072768 (A173918 n).toNat

end

end A180979.P1782627788118886429

/-! ## A180979.P11649323382298845700

`A161358(A146987(n))`
-/

namespace A180979.P11649323382298845700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (A146987 n).toNat

end

end A180979.P11649323382298845700

/-! ## A180979.P12921836675281634289

`A151714(A168288(n))`
-/

namespace A180979.P12921836675281634289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 (A168288 n).toNat

end

end A180979.P12921836675281634289

/-! ## A180979.P13408067898475165017

`A187200(A152654(n))`
-/

namespace A180979.P13408067898475165017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187200 (A152654 n).toNat

end

end A180979.P13408067898475165017

/-!
# A180980: T(n,k) is the number of n X k binary matrices with floor((n*k)/2) 1's and rows in lexicographically nondecreasing order and columns in lexicographically nonincreasing order.

The programs for A180980, there is no canonical definition to state claims against.
-/

/-! ## A180980.P13920684690450221975

`A067059(eq[0, A103451(n)])`
-/

namespace A180980.P13920684690450221975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180980.P13920684690450221975

/-! ## A180980.P3637796169003102811

`A067059(eq[0, A103452(n)])`
-/

namespace A180980.P3637796169003102811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180980.P3637796169003102811

/-! ## A180980.P16079868237386739402

`A067059(lt[2, A113413(n)])`
-/

namespace A180980.P16079868237386739402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A180980.P16079868237386739402

/-! ## A180980.P1909304261686738122

`A067059(lt[1, A001263(n+1)])`
-/

namespace A180980.P1909304261686738122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A180980.P1909304261686738122

/-! ## A180980.P9759929555742979416

`A067059(lt[3, A201277(n+1)])`
-/

namespace A180980.P9759929555742979416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A180980.P9759929555742979416

/-! ## A180980.P13998748366493553566

`A067059(record[n%A007318(n)²])`
-/

namespace A180980.P13998748366493553566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A007318 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A180980.P13998748366493553566

/-! ## A180980.P18398853366068375022

`A067059(2*A014132(n+1)-n)`
-/

namespace A180980.P18398853366068375022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A180980.P18398853366068375022

/-! ## A180980.P7783606901015895928

`A067059(lt[n, 2*A188181(n+1)])`
-/

namespace A180980.P7783606901015895928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A180980.P7783606901015895928

/-! ## A180980.P16272415204989386491

`A067059(lt[n/2, A188181(n+1)])`
-/

namespace A180980.P16272415204989386491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A180980.P16272415204989386491

/-! ## A180980.P8278825623394331381

`A067059(A014132(A014132(n+1)))`
-/

namespace A180980.P8278825623394331381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (A014132 (A014132 (n + 1)).toNat).toNat

end

end A180980.P8278825623394331381

/-! ## A180980.P430732103179966330

`A201503(n+1)/A000034(A003990(n+1))`
-/

namespace A180980.P430732103179966330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201503 (n + 1) : ℚ) / (A000034 (A003990 (n + 1)).toNat : ℚ)

end

end A180980.P430732103179966330

/-! ## A180980.P11770698082281795105

`A201503(n+1)/A000034(A003991(n+1))`
-/

namespace A180980.P11770698082281795105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201503 (n + 1) : ℚ) / (A000034 (A003991 (n + 1)).toNat : ℚ)

end

end A180980.P11770698082281795105

/-! ## A180980.P14209161518645788471

`A201503(n+1)/A000034(A199408(n+1))`
-/

namespace A180980.P14209161518645788471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201503 (n + 1) : ℚ) / (A000034 (A199408 (n + 1)).toNat : ℚ)

end

end A180980.P14209161518645788471

/-! ## A180980.P2594200720644800696

`A201503(n+1)/A000034(A342905(n+1))`
-/

namespace A180980.P2594200720644800696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201503 (n + 1) : ℚ) / (A000034 (A342905 (n + 1)).toNat : ℚ)

end

end A180980.P2594200720644800696

/-! ## A180980.P2954289167884020680

`A067059(eq[0, floor(1/A304942(n))])`
-/

namespace A180980.P2954289167884020680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A304942 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180980.P2954289167884020680

/-! ## A180980.P1205317717874955415

`A201503(n+1)/A183642(n+1)%3`
-/

namespace A180980.P1205317717874955415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201503 (n + 1) : ℚ) / (Int.tmod (A183642 (n + 1)) 3 : ℚ)

end

end A180980.P1205317717874955415

/-!
# A180981: T(n,k)=number of nXk binary matrices with floor((n*k)/2) 1's and rows in lexicographically nonincreasing order and columns in lexicographically strictly increasing order.

The programs for A180981, there is no canonical definition to state claims against.
-/

/-! ## A180981.P18147085447499737389

`ceil(A052249(n)%A109100(n+1)/2)`
-/

namespace A180981.P18147085447499737389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (A052249 n) (A109100 (n + 1)) : ℚ) / 2⌉

end

end A180981.P18147085447499737389

/-! ## A180981.P2942168204247023224

`A062108(A052249(n)%A109100(n+1))`
-/

namespace A180981.P2942168204247023224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (Int.tmod (A052249 n) (A109100 (n + 1))).toNat

end

end A180981.P2942168204247023224

/-! ## A180981.P15668342678610544573

`A062108(A052249(n))%A046691(A242971(n))`
-/

namespace A180981.P15668342678610544573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062108 (A052249 n).toNat) (A046691 (A242971 n).toNat)

end

end A180981.P15668342678610544573

/-! ## A180981.P2691539669754774276

`A062108(A052249(n))+A008683(A340624(n+1))`
-/

namespace A180981.P2691539669754774276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A052249 n).toNat + A008683 (A340624 (n + 1)).toNat

end

end A180981.P2691539669754774276

/-! ## A180981.P1920324584349619318

`A268318(A293053(n+1))`
-/

namespace A180981.P1920324584349619318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268318 (A293053 (n + 1)).toNat

end

end A180981.P1920324584349619318

/-!
# A180982: Number of n X n binary matrices with floor(n^2/2) 1's and rows in lexicographically nondecreasing order and columns in strictly increasing order.

The programs for A180982, there is no canonical definition to state claims against.
-/

/-! ## A180982.P10874798074426839027

`A180983(∑[4*n]+1)`
-/

namespace A180982.P10874798074426839027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180983 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180982.P10874798074426839027

/-! ## A180982.P8555920738003656195

`A180983(A001844(n))+A143288(n)`
-/

namespace A180982.P8555920738003656195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180983 (A001844 n).toNat + A143288 n

end

end A180982.P8555920738003656195

/-! ## A180982.P2660355350163933081

`A248327(n)+A180983(A001844(n))`
-/

namespace A180982.P2660355350163933081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 n + A180983 (A001844 n).toNat

end

end A180982.P2660355350163933081

/-! ## A180982.P13571636718454517791

`A014963(4*n+10)*A180983(A001844(n))`
-/

namespace A180982.P13571636718454517791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 10) * A180983 (A001844 n).toNat

end

end A180982.P13571636718454517791

/-! ## A180982.P4415423054906680395

`gcd(7, A000005(n+2))*A180983(A001844(n))`
-/

namespace A180982.P4415423054906680395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 7 (A000005 (n + 2)) : ℤ) * A180983 (A001844 n).toNat

end

end A180982.P4415423054906680395

/-!
# A180983: T(n,k)=number of nXk binary matrices with floor((n*k)/2) 1's and rows in lexicographically nondecreasing order and columns in strictly increasing order.

The programs for A180983, there is no canonical definition to state claims against.
-/

/-! ## A180983.P9602951497705900649

`or(A000035(A007053(n)), A116088(n))`
-/

namespace A180983.P9602951497705900649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A007053 n).toNat) (A116088 n)

end

end A180983.P9602951497705900649

/-! ## A180983.P7611249495581759872

`A116088(n)+A010815(A000045(n+4))`
-/

namespace A180983.P7611249495581759872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116088 n + A010815 (A000045 (n + 4)).toNat

end

end A180983.P7611249495581759872

/-! ## A180983.P93183086102550183

`A116088(n)^A116088(A243015(n+1))`
-/

namespace A180983.P93183086102550183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116088 n : ℚ) ^ (A116088 (A243015 (n + 1)).toNat : ℤ)

end

end A180983.P93183086102550183

/-! ## A180983.P15222083944909891811

`gcd(A033782(A322827(n+3)), A109970(n))`
-/

namespace A180983.P15222083944909891811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033782 (A322827 (n + 3)).toNat) (A109970 n)

end

end A180983.P15222083944909891811

/-! ## A180983.P14281196715799344928

`A305435(A004119(n))+A121314(n)`
-/

namespace A180983.P14281196715799344928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305435 (A004119 n).toNat + A121314 n

end

end A180983.P14281196715799344928

/-!
# A180985: Array T(n,k) = number of n X k binary matrices with rows and columns in lexicographically nondecreasing order.

The programs for A180985, there is no canonical definition to state claims against.
-/

/-! ## A180985.P12040890573527114122

`A171699(eq[0, A103451(n)])`
-/

namespace A180985.P12040890573527114122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180985.P12040890573527114122

/-! ## A180985.P2601123117910272778

`A171699(eq[0, A103452(n)])`
-/

namespace A180985.P2601123117910272778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180985.P2601123117910272778

/-! ## A180985.P1205616878844599454

`A171699(eq[0, A145677(n)])`
-/

namespace A180985.P1205616878844599454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180985.P1205616878844599454

/-! ## A180985.P13961661291690157025

`A171699(eq[0, A158821(n)])`
-/

namespace A180985.P13961661291690157025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180985.P13961661291690157025

/-! ## A180985.P4875818366494018982

`A171699(lt[0, A185651(n)])`
-/

namespace A180985.P4875818366494018982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A180985.P4875818366494018982

/-!
# A180987: T(n,k)=number of nXk binary matrices with rows in lexicographically nonincreasing order and columns in lexicographically strictly increasing order.

The programs for A180987, the canonical program `A180987.P1087486024587690451` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180987 has offset 1).

The definition of A180987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180987.P16042798177991053958

`A026729(lt[2, A321601(n)])`
-/

namespace A180987.P16042798177991053958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A180987.P16042798177991053958

namespace A180987

/-- `A026729(lt[2, A321601(n)])` -/
def P16042798177991053958.Spec : Prop :=
  ∀ n, P16042798177991053958.a n = A180987 (n + 1)

end A180987

/-! ## A180987.P1087486024587690451

`A030528(eq[0, A145677(n)]+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A180987

/-- `A030528(eq[0, A145677(n)]+1)` -/
def P1087486024587690451.Spec : Prop :=
  ∀ n, P1087486024587690451.a n = A180987 (n + 1)

theorem P1087486024587690451.correct : P1087486024587690451.Spec := by
  intro n
  simp only [A180987, Nat.add_sub_cancel]

end A180987

/-! ## A180987.P7130849530306236808

`A030528(lt[1, A007318(n)]+1)`
-/

namespace A180987.P7130849530306236808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A180987.P7130849530306236808

namespace A180987

/-- `A030528(lt[1, A007318(n)]+1)` -/
def P7130849530306236808.Spec : Prop :=
  ∀ n, P7130849530306236808.a n = A180987 (n + 1)

end A180987

/-! ## A180987.P2127654977281161096

`A026729(lt[2, A002262(n+1)])`
-/

namespace A180987.P2127654977281161096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A180987.P2127654977281161096

namespace A180987

/-- `A026729(lt[2, A002262(n+1)])` -/
def P2127654977281161096.Spec : Prop :=
  ∀ n, P2127654977281161096.a n = A180987 (n + 1)

end A180987

/-! ## A180987.P955350685262829865

`A030528(lt[2, A002260(n+1)])`
-/

namespace A180987.P955350685262829865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A180987.P955350685262829865

namespace A180987

/-- `A030528(lt[2, A002260(n+1)])` -/
def P955350685262829865.Spec : Prop :=
  ∀ n, P955350685262829865.a n = A180987 (n + 1)

end A180987

/-! ## A180987.P12588233952569529953

`A026729(lt[2, A002262(n)]-1)`
-/

namespace A180987.P12588233952569529953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A180987.P12588233952569529953

namespace A180987

/-- `A026729(lt[2, A002262(n)]-1)` -/
def P12588233952569529953.Spec : Prop :=
  ∀ n, P12588233952569529953.a n = A180987 (n + 1)

end A180987

/-! ## A180987.P12565718065922996604

`A026729(eq[2, 2%A004070(n)])`
-/

namespace A180987.P12565718065922996604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A004070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180987.P12565718065922996604

namespace A180987

/-- `A026729(eq[2, 2%A004070(n)])` -/
def P12565718065922996604.Spec : Prop :=
  ∀ n, P12565718065922996604.a n = A180987 (n + 1)

end A180987

/-! ## A180987.P6768349543275532927

`A169803(A003057(n+2)²-n)`
-/

namespace A180987.P6768349543275532927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 (A003057 (n + 2) ^ 2 - (n : ℤ)).toNat

end

end A180987.P6768349543275532927

namespace A180987

/-- `A169803(A003057(n+2)²-n)` -/
def P6768349543275532927.Spec : Prop :=
  ∀ n, P6768349543275532927.a n = A180987 (n + 1)

end A180987

/-! ## A180987.P7316595266424520673

`A026729(lt[3, A057555(2*n+3)])`
-/

namespace A180987.P7316595266424520673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A180987.P7316595266424520673

namespace A180987

/-- `A026729(lt[3, A057555(2*n+3)])` -/
def P7316595266424520673.Spec : Prop :=
  ∀ n, P7316595266424520673.a n = A180987 (n + 1)

end A180987

/-! ## A180987.P8439904360238188856

`C(A002262(n)+2, A004736(n+1))`
-/

namespace A180987.P8439904360238188856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n + 2).toNat (A004736 (n + 1)).toNat

end

end A180987.P8439904360238188856

namespace A180987

/-- `C(A002262(n)+2, A004736(n+1))` -/
def P8439904360238188856.Spec : Prop :=
  ∀ n, (P8439904360238188856.a n : ℤ) = A180987 (n + 1)

end A180987

/-! ## A180987.P1897567110571211548

`A030528(n+1)+A030528(comp[∑[n]])`
-/

namespace A180987.P1897567110571211548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1) + A030528 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A180987.P1897567110571211548

namespace A180987

/-- `A030528(n+1)+A030528(comp[∑[n]])` -/
def P1897567110571211548.Spec : Prop :=
  ∀ n, P1897567110571211548.a n = A180987 (n + 1)

end A180987

/-! ## A180987.P17791569768102605532

`C(log2(A059268(n))+2, A004736(n+1))`
-/

namespace A180987.P17791569768102605532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 2)).toNat (A004736 (n + 1)).toNat

end

end A180987.P17791569768102605532

namespace A180987

/-- `C(log2(A059268(n))+2, A004736(n+1))` -/
def P17791569768102605532.Spec : Prop :=
  ∀ n, (P17791569768102605532.a n : ℤ) = A180987 (n + 1)

end A180987

/-! ## A180987.P6255038370000869973

`C(A002260(n+1)+1, A004736(n+1))`
-/

namespace A180987.P6255038370000869973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1) + 1).toNat (A004736 (n + 1)).toNat

end

end A180987.P6255038370000869973

namespace A180987

/-- `C(A002260(n+1)+1, A004736(n+1))` -/
def P6255038370000869973.Spec : Prop :=
  ∀ n, (P6255038370000869973.a n : ℤ) = A180987 (n + 1)

end A180987

/-! ## A180987.P3350415924414668601

`C(sqrt(A133819(n+1))+1, A004736(n+1))`
-/

namespace A180987.P3350415924414668601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ) + 1)).toNat (A004736 (n + 1)).toNat

end

end A180987.P3350415924414668601

namespace A180987

/-- `C(sqrt(A133819(n+1))+1, A004736(n+1))` -/
def P3350415924414668601.Spec : Prop :=
  ∀ n, (P3350415924414668601.a n : ℤ) = A180987 (n + 1)

end A180987

/-! ## A180987.P3224969887465920375

`C(A002260(n+1)+1, log2(A090988(n+1)))`
-/

namespace A180987.P3224969887465920375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1) + 1).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) : ℝ))).toNat

end

end A180987.P3224969887465920375

namespace A180987

/-- `C(A002260(n+1)+1, log2(A090988(n+1)))` -/
def P3224969887465920375.Spec : Prop :=
  ∀ n, (P3224969887465920375.a n : ℤ) = A180987 (n + 1)

end A180987

/-! ## A180987.P7916346943632597834

`C(A057555(2*n+1)+1, A057555(2*(n+1)))`
-/

namespace A180987.P7916346943632597834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057555 (2 * n + 1) + 1).toNat (A057555 (2 * (n + 1))).toNat

end

end A180987.P7916346943632597834

namespace A180987

/-- `C(A057555(2*n+1)+1, A057555(2*(n+1)))` -/
def P7916346943632597834.Spec : Prop :=
  ∀ n, (P7916346943632597834.a n : ℤ) = A180987 (n + 1)

end A180987

/-! ## A180987.P14477820561485786305

`C(A020725(A002260(n+1)), A004736(n+1))`
-/

namespace A180987.P14477820561485786305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020725 (A002260 (n + 1)).toNat).toNat (A004736 (n + 1)).toNat

end

end A180987.P14477820561485786305

namespace A180987

/-- `C(A020725(A002260(n+1)), A004736(n+1))` -/
def P14477820561485786305.Spec : Prop :=
  ∀ n, (P14477820561485786305.a n : ℤ) = A180987 (n + 1)

end A180987

/-! ## A180987.P15971355729687814149

`C(A025581(A061579(n))+2, A004736(n+1))`
-/

namespace A180987.P15971355729687814149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 (A061579 n).toNat + 2).toNat (A004736 (n + 1)).toNat

end

end A180987.P15971355729687814149

namespace A180987

/-- `C(A025581(A061579(n))+2, A004736(n+1))` -/
def P15971355729687814149.Spec : Prop :=
  ∀ n, (P15971355729687814149.a n : ℤ) = A180987 (n + 1)

end A180987

/-! ## A180987.P1406145525686348935

`C(A002260(n+1)+1, A002260(A038722(n+1)))`
-/

namespace A180987.P1406145525686348935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1) + 1).toNat (A002260 (A038722 (n + 1)).toNat).toNat

end

end A180987.P1406145525686348935

namespace A180987

/-- `C(A002260(n+1)+1, A002260(A038722(n+1)))` -/
def P1406145525686348935.Spec : Prop :=
  ∀ n, (P1406145525686348935.a n : ℤ) = A180987 (n + 1)

end A180987

/-! ## A180987.P3449745802478818578

`C(A026100(A026098(n+1))+1, A004736(n+1))`
-/

namespace A180987.P3449745802478818578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A026100 (A026098 (n + 1)).toNat + 1).toNat (A004736 (n + 1)).toNat

end

end A180987.P3449745802478818578

namespace A180987

/-- `C(A026100(A026098(n+1))+1, A004736(n+1))` -/
def P3449745802478818578.Spec : Prop :=
  ∀ n, (P3449745802478818578.a n : ℤ) = A180987 (n + 1)

end A180987

/-!
# A180989: T(n,k)=number of nXk binary matrices with rows and then columns in strictly increasing order as binary numbers.

The programs for A180989, there is no canonical definition to state claims against.
-/

/-! ## A180989.P18350269776991295239

`A001982(A071946(n))%A071946(A242784(n))`
-/

namespace A180989.P18350269776991295239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001982 (A071946 n).toNat) (A071946 (A242784 n).toNat)

end

end A180989.P18350269776991295239

/-! ## A180989.P17042109925814306093

`A107293(C(A288942(n), A002262(2*n+3)))`
-/

namespace A180989.P17042109925814306093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107293 (Nat.choose (A288942 n).toNat (A002262 (2 * n + 3)).toNat)

end

end A180989.P17042109925814306093

/-! ## A180989.P15674575695275984207

`val(A202714(n+1), 42)²`
-/

namespace A180989.P15674575695275984207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A202714 (n + 1)).toNat 42 ^ 2

end

end A180989.P15674575695275984207

/-! ## A180989.P9979174755777969124

`A070204(∑[∑{e}[n, #]!²+6]+1)`
-/

namespace A180989.P9979174755777969124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) ^ 2 + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070204 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180989.P9979174755777969124

/-! ## A180989.P15219148026302070935

`A070108(A196841(n))`
-/

namespace A180989.P15219148026302070935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070108 (A196841 n).toNat

end

end A180989.P15219148026302070935

/-!
# A180990: Number of (n+1)xn binary matrices with rows and then columns in strictly increasing order as binary numbers.

The programs for A180990, there is no canonical definition to state claims against.
-/

/-! ## A180990.P12218200155766334532

`A180989(2*(n+1)²+1)`
-/

namespace A180990.P12218200155766334532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (2 * (n + 1) ^ 2 + 1)

end

end A180990.P12218200155766334532

/-!
# A180991: Number of (n+2)xn binary matrices with rows and then columns in strictly increasing order as binary numbers.

The programs for A180991, there is no canonical definition to state claims against.
-/

/-! ## A180991.P13278449037061165979

`A180989(A090288(n)+4)`
-/

namespace A180991.P13278449037061165979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (A090288 n + 4).toNat

end

end A180991.P13278449037061165979

/-! ## A180991.P11523963408729927439

`A180989(A001844(n+1)+1)`
-/

namespace A180991.P11523963408729927439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (A001844 (n + 1) + 1).toNat

end

end A180991.P11523963408729927439

/-! ## A180991.P588684456513811771

`A180989(A099776(n+1)+1)`
-/

namespace A180991.P588684456513811771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (A099776 (n + 1) + 1).toNat

end

end A180991.P588684456513811771

/-! ## A180991.P12339724716365728652

`A180989(A046092(n+1)+2)`
-/

namespace A180991.P12339724716365728652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (A046092 (n + 1) + 2).toNat

end

end A180991.P12339724716365728652

/-! ## A180991.P10496206100783692082

`A180989(A142463(n+1)+3)`
-/

namespace A180991.P10496206100783692082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (A142463 (n + 1) + 3).toNat

end

end A180991.P10496206100783692082

/-!
# A180992: Number of (n+3)xn binary matrices with rows and then columns in strictly increasing order as binary numbers.

The programs for A180992, there is no canonical definition to state claims against.
-/

/-! ## A180992.P2519194851158534694

`A180989((n+1)²+(n+3)²)`
-/

namespace A180992.P2519194851158534694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A180992.P2519194851158534694

/-!
# A180993: Number of (n+4)xn binary matrices with rows and then columns in strictly increasing order as binary numbers.

The programs for A180993, there is no canonical definition to state claims against.
-/

/-! ## A180993.P2350750912387197980

`A180989(A001844(n+2)+2)`
-/

namespace A180993.P2350750912387197980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (A001844 (n + 2) + 2).toNat

end

end A180993.P2350750912387197980

/-! ## A180993.P897165917453249191

`A180989(A099776(n+2)+2)`
-/

namespace A180993.P897165917453249191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (A099776 (n + 2) + 2).toNat

end

end A180993.P897165917453249191

/-! ## A180993.P1615884494269397480

`A180989(A046092(n+2)+3)`
-/

namespace A180993.P1615884494269397480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (A046092 (n + 2) + 3).toNat

end

end A180993.P1615884494269397480

/-! ## A180993.P645919866451067752

`A180989(A145066(n+3)-A145066(n+1))`
-/

namespace A180993.P645919866451067752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (A145066 (n + 3) - A145066 (n + 1)).toNat

end

end A180993.P645919866451067752

/-! ## A180993.P5142189918526909723

`A180989(A167614(2*n+3)+A034326(n+2))`
-/

namespace A180993.P5142189918526909723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (A167614 (2 * n + 3) + A034326 (n + 2)).toNat

end

end A180993.P5142189918526909723

/-!
# A180994: Number of (n+5)xn binary matrices with rows and then columns in strictly increasing order as binary numbers.

The programs for A180994, there is no canonical definition to state claims against.
-/

/-! ## A180994.P68608424158025769

`A180989(A047838(2*(n+3))+4)`
-/

namespace A180994.P68608424158025769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (A047838 (2 * (n + 3)) + 4).toNat

end

end A180994.P68608424158025769

/-!
# A180995: T(n,k)=number of nXk binary matrices with rows and columns each in strictly increasing order as binary numbers and all numbers unique.

The programs for A180995, there is no canonical definition to state claims against.
-/

/-! ## A180995.P11373092849141021313

`C(A341021(A028263(n)), 2)`
-/

namespace A180995.P11373092849141021313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A341021 ((A028263 n).toNat + 20)).toNat 2

end

end A180995.P11373092849141021313

/-!
# A180996: Number of n X n binary matrices with rows and columns each in strictly increasing order as binary numbers and no 1 neighboring another 1.

The programs for A180996, there is no canonical definition to state claims against.
-/

/-! ## A180996.P16207375079013256430

`A180997(∑[4*n]+1)`
-/

namespace A180996.P16207375079013256430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180997 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180996.P16207375079013256430

/-! ## A180996.P16669639095653534835

`A180998(n+1)+A180998(round(acot(n)+n))`
-/

namespace A180996.P16669639095653534835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180998 (n + 1) + A180998 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A180996.P16669639095653534835

/-! ## A180996.P15640522042259244121

`A180998(n+1)+A180998(round(sqrt(n²+1)))`
-/

namespace A180996.P15640522042259244121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180998 (n + 1) + A180998 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A180996.P15640522042259244121

/-! ## A180996.P327829531567072869

`lcm(A020985(n), A180997(A001844(n)))`
-/

namespace A180996.P327829531567072869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A180997 (A001844 n).toNat)

end

end A180996.P327829531567072869

/-! ## A180996.P5863011750576752785

`A033999(n)²*A180997(A001844(n))`
-/

namespace A180996.P5863011750576752785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A180997 (A001844 n).toNat

end

end A180996.P5863011750576752785

/-!
# A180998: Number of (n+1)xn binary matrices with rows and columns each in strictly increasing order as binary numbers and no 1 neighboring another 1.

The programs for A180998, there is no canonical definition to state claims against.
-/

/-! ## A180998.P16704575012701521305

`A180997(2*(n+1)²)`
-/

namespace A180998.P16704575012701521305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180997 (2 * (n + 1) ^ 2)

end

end A180998.P16704575012701521305

/-! ## A180998.P7965704573076580434

`abs(record[Δ[A180997(3*(n+1))]])`
-/

namespace A180998.P7965704573076580434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180997 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A180998.P7965704573076580434

/-! ## A180998.P10563323210667606030

`A180996(n+1)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A180998.P10563323210667606030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A180996 (n + 1) - a (n - 1)

end

end A180998.P10563323210667606030

/-! ## A180998.P4277787965918247370

`abs(a(n-1)-A180997(A001844(n)))` with `a(0)=1`
-/

namespace A180998.P4277787965918247370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A180997 (A001844 n).toNat|

end

end A180998.P4277787965918247370

/-! ## A180998.P12354042850066446623

`abs(record[A180997(2*(n+1))-A180997(2*n+1)])`
-/

namespace A180998.P12354042850066446623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180997 (2 * (n + 1)) - A180997 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A180998.P12354042850066446623

/-!
# A180999: Number of n X n binary matrices with rows and columns each in strictly increasing order as binary numbers and each row and column having an odd number of 1s.

The programs for A180999, there is no canonical definition to state claims against.
-/

/-! ## A180999.P2980472840975454300

`A181000(∑[4*n]+1)`
-/

namespace A180999.P2980472840975454300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181000 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180999.P2980472840975454300

/-! ## A180999.P7204700008377629061

`A181000(A001844(n))+char[10]`
-/

namespace A180999.P7204700008377629061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181000 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A180999.P7204700008377629061

/-! ## A180999.P12557920124315373098

`A062760(n+1)*A181000(n²+(n+1)²)`
-/

namespace A180999.P12557920124315373098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (n + 1) * A181000 (n ^ 2 + (n + 1) ^ 2)

end

end A180999.P12557920124315373098

/-! ## A180999.P533536940177201892

`gcd(A181000(3*n+2), A181000(n²+(n+1)²))`
-/

namespace A180999.P533536940177201892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181000 (3 * n + 2)) (A181000 (n ^ 2 + (n + 1) ^ 2))

end

end A180999.P533536940177201892

/-! ## A180999.P2032627715765463876

`or(A000007(n), A181000(A001844(n)))`
-/

namespace A180999.P2032627715765463876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A181000 (A001844 n).toNat)

end

end A180999.P2032627715765463876

